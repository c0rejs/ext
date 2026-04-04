import locale from "#vue/locale";

await locale.add( language => import( /* webpackChunkName: "locales/[request]" */ "./ext-8.x.x/locales/" + language + ".po" ) );

await import( /* webpackChunkName: "ext" */ "./ext-8.x.x/index.js" );
