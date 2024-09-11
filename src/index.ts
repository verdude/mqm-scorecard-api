import { constructApp } from "./app";

const app = constructApp();

app.listen(8081, () => {
  console.log(`App listening on port 8081`);
});
