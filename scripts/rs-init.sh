#!/bin/bash
mongosh <<EOF
var config = {
    "_id": "rs00",
    "members": [
        {
            "_id": 1,
            "host": "rs00:27017",
        },
        {
            "_id": 2,
            "host": "rs01:27018",
        },
        {
            "_id": 3,
            "host": "rs02:27019",
        }
    ]
};
rs.initiate(config, { force: true });
rs.status();
EOF