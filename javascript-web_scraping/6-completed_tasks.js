#!/usr/bin/node

const request = require('request');

const url = process.argv[2];

request.get({ url, json: true }, (error, response, body) => {
  if (error) {
    console.log(error);
  } else {
    const completedTasks = {};

    for (const task of body) {
      if (task.completed) {
        if (completedTasks[task.userId] === undefined) {
          completedTasks[task.userId] = 0;
        }

        completedTasks[task.userId]++;
      }
    }

    console.log(completedTasks);
  }
});
