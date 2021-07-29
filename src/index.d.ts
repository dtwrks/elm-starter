declare module "*/Main.elm" {
  export namespace Elm {
    namespace Main {
      export interface App {
        ports: {};
      }
      export function init(options: {
        node: HTMLElement | null;
        flags: null;
      }): Elm.Main.App;
    }
  }
}

declare module "*/Docs.elm" {
  export namespace Elm {
    namespace Docs {
      export interface App {
        ports: {};
      }
      export function init(options: {
        node: HTMLElement | null;
        flags: null;
      }): Elm.Docs.App;
    }
  }
}
