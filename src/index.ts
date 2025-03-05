require('dotenv-safe').config();


import * as client from "./client";
import { type Users } from "./client";

const post = await client.postUsers({
  body: {
    username: "users",
    email: "user@test.com",
    // id: 0,
    // created_at: undefined,
  } as Users,
});
console.log(post.data, post.status, post.error);
const { data } = await client.getUsers();
console.table(data);
