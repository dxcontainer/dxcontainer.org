import { defineConfig } from "vitepress";

// https://vitepress.dev/reference/site-config
export default defineConfig({
	title: "DxContainer",
	description: "Developer Workspace in a Container",
	themeConfig: {
		// https://vitepress.dev/reference/default-theme-config
		nav: [
			{ text: "Home", link: "/" },
			{ text: "Images", link: "https://github.com/dxcontainer/images" },
			{ text: "Features", link: "https://github.com/dxcontainer/features" },
			{ text: "Packages", link: "https://search.nixos.org" },
			{ text: "Extensions", link: "https://open-vsx.org" },
		],

		editLink: {
			pattern:
				"https://github.com/dxcontainer/dxcontainer.org/edit/main/docs/:path",
			text: "Edit this page on GitHub",
		},

		logo: {
			src: "/dxcontainer-logo.svg",
			width: 24,
			height: 24,
		},

		socialLinks: [{ icon: "github", link: "https://github.com/dxcontainer" }],

		footer: {
			copyright: `Copyright &copy; ${new Date().getUTCFullYear()} The DxContainer Authors, All rights reserved.`,
		},
	},
});
