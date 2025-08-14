import Application from 'ember-strict-application-resolver';
import EmberRouter from '@ember/routing/router';

class Router extends EmberRouter {
  location = 'history';
  rootURL = '/';
}

Router.map(function () {
  // hello there
});

export class App extends Application {
  modules = {
    './router': Router,
    './templates/application': <template>hello there</template>,
  };
}
