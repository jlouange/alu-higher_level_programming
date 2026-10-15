#!/usr/bin/node

const request = require('request');

const url = process.argv[2];

request.get({ url, json: true }, (error, response, body) => {
  if (error) {
    console.log(error);
  } else {
    let count = 0;

    for (const film of body.results) {
      const found = film.characters.some((character) => {
        return /\/18\/?$/.test(character);
      });

      if (found) {
        count++;
      }
    }

    console.log(count);
  }
});
