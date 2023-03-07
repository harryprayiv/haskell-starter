{
  description = "srid/haskell-template: Nix template for Haskell projects";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    haskell-flake.url = "github:srid/haskell-flake";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    treefmt-nix.inputs.nixpkgs.follows = "nixpkgs";
    flake-root.url = "github:srid/flake-root";
    mission-control.url = "github:Platonic-Systems/mission-control";

    nixpkgs-140774-workaround.url = "github:srid/nixpkgs-140774-workaround";
    /*_____________________________*/

    haskell-nix = {
      url = "github:input-output-hk/haskell.nix";
      inputs = {
        hackage.follows = "hackage-nix";
        nixpkgs.follows = "nixpkgs";
      };
    };
    hackage-nix = {
      url = "github:input-output-hk/hackage.nix";
      flake = false;
    };
    CHaP = {
      url = "github:input-output-hk/cardano-haskell-packages?rev=d0977e13e95e43345ff527c723c4bd8512510d20";
      flake = false;
    };
    sphinxcontrib-haddock = {
      url = "github:michaelpj/sphinxcontrib-haddock";
      flake = false;
    };
    gitignore-nix = {
      url = "github:hercules-ci/gitignore.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    haskell-language-server = {
      # Pinned to a release
      url = "github:haskell/haskell-language-server?ref=1.9.0.0";
      flake = false;
    };
    pre-commit-hooks-nix = {
      url = "github:cachix/pre-commit-hooks.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    iohk-nix = {
      url = "github:input-output-hk/iohk-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    /*____________________________________________*/
    quickcheck-contractmodel = {
      url = "github:Quviq/quickcheck-contractmodel?rev=cc43f13f98c704e0d53dbdef6a98367918f8c5c1";
      flake = false;
      # sha256 = "sha256-Zb6Cd23GG1STS0Eqzis+CgEcBKP54aAjFlhJYz8BRvk=";  
    };

    ekg-forward = {
      url = "github:input-output-hk/ekg-forward?rev=297cd9db5074339a2fb2e5ae7d0780debb670c63";
      flake = false;
      # sha256 = "1zcwry3y5rmd9lgxy89wsb3k4kpffqji35dc7ghzbz603y1gy24g";
    };

    goblins = {
      url = "github:input-output-hk/goblins?rev=cde90a2b27f79187ca8310b6549331e59595e7ba";
      flake = false;
      # sha256 = "17c88rbva3iw82yg9srlxjv2ia5wjb9cyqw44hik565f5v9svnyg";
    };

    iohk-monitoring-framework = {
      url = "github:input-output-hk/iohk-monitoring-framework?rev=46f994e216a1f8b36fe4669b47b2a7011b0e153c";
      flake = false;
    };

    ouroboros-network = {
      url = "github:input-output-hk/ouroboros-network?rev=4fac197b6f0d2ff60dc3486c593b68dc00969fbf";
      flake = false;
      # sha256 = "1b43vbdsr9m3ry1kgag2p2ixpv54gw7a4vvmndxl6knqg8qbsb8b";
    };

    plutus = {
      url = "github:input-output-hk/plutus?rev=6d9ac7c2f89363d574dbc10be5c2db4b661c9a43";
      # sha256 = "1678c7fgd7sn8wfd8bpv60wqnfla3vijyb9n6x6d2d2mfiri6p9c";
    };

    purescript-bridge = {
      url = "github:input-output-hk/purescript-bridge?rev=47a1f11825a0f9445e0f98792f79172efef66c00";
      # sha256 = "0da1vn2l6iyfxcjk58qal1l4755v92zi6yppmjmqvxf1gacyf9px";
    };

    servant-purescript = {
      url = "github:input-output-hk/servant-purescript?rev=44e7cacf109f84984cd99cd3faf185d161826963";
      # sha256 = "10pb0yfp80jhb9ryn65a4rha2lxzsn2vlhcc6xphrrkf4x5lhzqc";
    };

    Win32-network = {
      url = "github:input-output-hk/Win32-network?rev=3825d3abf75f83f406c1f7161883c438dac7277d";
      flake = false;
      # sha256 = "19wahfv726fa3mqajpqdqhnl9ica3xmf68i254q45iyjcpj1psqx";
    };

    Quid2 = {
      url = "github:Quid2/flat?rev=ee59880f47ab835dbd73bea0847dab7869fc20d8";
      flake = false;
      # sha256 = "1lrzknw765pz2j97nvv9ip3l1mcpf2zr4n56hwlz0rk7wq7ls4cm";
    };

    hysterical-screams = {
      url = "github:raduom/hysterical-screams?rev=4c523469e9efd3f0d10d17da3304923b7b0e0674";
      flake = false;
      # sha256 = "0w118v4vffrsjxfmwfv8qcn2qxmxpd1gxwcjnda91qz09jnpg0vp";
    };

    quickcheck-dynamic = {
      url = "github:input-output-hk/quickcheck-dynamic?rev=c272906361471d684440f76c297e29ab760f6a1e";
      flake = false;
      # sha256 = "sha256-TioJQASNrQX6B3n2Cv43X2olyT67//CFQqcpvNW7N60=";
    };

    aeson = {
      url = "github:sevanspowell/hw-aeson?rev=b5ef03a7d7443fcd6217ed88c335f0c411a05408";
      flake = false;
      # sha256 = "1dwx90wqavdl4d0npbzbxyh2pzi9zs1qz7nvsrb3n1cm2xbv4i5z";
    };

    # cardano-haskell-packages = {
    #   url = "github:input-output-hk/cardano-haskell-packages?rev=d0977e13e95e43345ff527c723c4bd8512510d20";
    #   # sha256= "02cmf4738006x6w9ca5wdn660s8pkffawz1688ny13kxg9d7lf3f";
    # };

    cardano-node = {
      url = "github:input-output-hk/cardano-node?rev=8762a10efe3f9f97939e3cb05edaf04250456702";
      # sha256 = "102pj525ysvj27h9nb8gidxm1cmwp8vpdyfnpwm1ywz3zkpk2mjp";
    };

    cardano-addresses = {
      url = "github:/input-output-hk/cardano-addresses?rev=b7273a5d3c21f1a003595ebf1e1f79c28cd72513";
      # sha256 = "129r5kyiw10n2021bkdvnr270aiiwyq58h472d151ph0r7wpslgp";
    };

    cardano-base = {
      url = "github:/input-output-hk/cardano-base?rev=41545ba3ac6b3095966316a99883d678b5ab8da8";
      flake = false;
      # sha256 = "0icq9y3nnl42fz536da84414av36g37894qnyw4rk3qkalksqwir";
    };

    cardano-config = {
      url = "github:/input-output-hk/cardano-config?rev=1646e9167fab36c0bff82317743b96efa2d3adaa";
      flake = false;
      # sha256 = "sha256-TNbpnR7llUgBN2WY7CryMxNVupBIUH01h1hRNHoxboY=";
    };

    cardano-crypto = {
      url = "github:/input-output-hk/cardano-crypto?rev=f73079303f663e028288f9f4a9e08bcca39a923e";
      flake = false;
      # sha256 = "1n87i15x54s0cjkh3nsxs4r1x016cdw1fypwmr68936n3xxsjn6q";
    };

    cardano-ledger = {
      url = "github:/input-output-hk/cardano-ledger?rev=da3e9ae10cf9ef0b805a046c84745f06643583c2";
      flake = false;
      # sha256 = "sha256-3VUZKkLu1R43GUk9IwgsGQ55O0rnu8NrCkFX9gqA4ck=";
    };

    cardano-prelude = {
      url = "github:/input-output-hk/cardano-prelude?rev=bb4ed71ba8e587f672d06edf9d2e376f4b055555";
      flake = false;
      # sha256 = "00h10l5mmiza9819p9v5q5749nb9pzgi20vpzpy1d34zmh6gf1cj";
    };

    cardano-wallet = {
      url = "github:/input-output-hk/cardano-wallet?rev=18a931648550246695c790578d4a55ee2f10463e";
      # sha256 = "0i40hp1mdbljjcj4pn3n6zahblkb2jmpm8l4wnb36bya1pzf66fx";
    };

  };

  outputs = inputs@{ self, nixpkgs, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = nixpkgs.lib.systems.flakeExposed;
      imports = [
        inputs.CHaP
        inputs.haskell-nix
        inputs.flake-root.flakeModule
        inputs.mission-control.flakeModule
        (inputs.cardano-node.${systems}.cardano-node)
        inputs.cardano-addresses
        inputs.cardano-base
        inputs.cardano-config
        inputs.cardano-crypto
        inputs.cardano-ledger
        inputs.cardano-prelude
        inputs.cardano-wallet
      ];
      perSystem = { self', system, lib, config, pkgs, ... }: {
        # The "main" project. You can have multiple projects, but this template
        # has only one.
        haskellProjects.main = {
          imports = [
            inputs.nixpkgs-140774-workaround.haskellFlakeProjectModules.default
            inputs.quickcheck-contractmodel
            inputs.ekg-forward
            inputs.goblins
            inputs.iohk-monitoring-framework
            inputs.ouroboros-network
            inputs.plutus
            inputs.purescript-bridge
            inputs.servant-purescript
            inputs.Win32-network
            inputs.Quid2
            inputs.hysterical-screams
            inputs.quickcheck-dynamic
            inputs.aeson
          ];
          # packages.haskell-template.root = ./.;  # Auto-discovered by haskell-flake
          overrides = self: super: { };
          devShell = {
            tools = hp: {
              treefmt = config.treefmt.build.wrapper;
            } // config.treefmt.build.programs;
            hlsCheck.enable = true;
          };
        };

        # Auto formatters. This also adds a flake check to ensure that the
        # source tree was auto formatted.
        treefmt.config = {
          inherit (config.flake-root) projectRootFile;
          package = pkgs.treefmt;

          programs.ormolu.enable = true;
          programs.nixpkgs-fmt.enable = true;
          programs.cabal-fmt.enable = true;
          programs.hlint.enable = true;

          # We use fourmolu
          programs.ormolu.package = pkgs.haskellPackages.fourmolu;
          settings.formatter.ormolu = {
            options = [
              "--ghc-opt"
              "-XImportQualifiedPost"
            ];
          };
        };

        # Dev shell scripts.
        mission-control.scripts = {
          docs = {
            description = "Start Hoogle server for project dependencies";
            exec = ''
              echo http://127.0.0.1:8888
              hoogle serve -p 8888 --local
            '';
            category = "Dev Tools";
          };
          repl = {
            description = "Start the cabal repl";
            exec = ''
              cabal repl "$@"
            '';
            category = "Dev Tools";
          };
          fmt = {
            description = "Format the source tree";
            exec = "${lib.getExe config.treefmt.build.wrapper}";
            category = "Dev Tools ";
          };
          run = {
            description = "Run the project with ghcid auto-recompile";
            exec = ''
              ghcid -c "cabal repl exe:haskell-template" --warnings -T :main
            '';
            category = "Primary";
          };
        };

        # Default package.
        packages.default = self'.packages.main-haskell-template;

        # Default shell.
        devShells.default =
          config.mission-control.installToDevShell self'.devShells.main;
      };
    };
}
