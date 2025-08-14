import Application from 'ember-strict-application-resolver';
import EmberRouter from '@ember/routing/router';
import { properLinks } from 'ember-primitives/proper-links';

// I have to have native <a> tags.
@properLinks
class Router extends EmberRouter {
  location = 'history';
  rootURL = '/';
}

Router.map(function () {
  this.route('foo');
  this.route('bar');
});

export class App extends Application {
  modules = {
    './router': Router,
    './templates/application': <template>
      <nav>
        <a href="/">Home</a>
        |
        <a href="/foo">Foo</a>
        |
        <a href="/bar">Bar</a>
      </nav>
      <h1>Smol App</h1>
      {{outlet}}
    </template>,
    './templates/index': <template>the index</template>,
    './templates/foo': <template>foo</template>,
    './templates/bar': <template>bar</template>,
  };
}
