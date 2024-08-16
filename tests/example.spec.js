import { test, expect } from "@playwright/test";

test("Visual Test", async ({ page }) => {
	// await page.goto("http://localhost:3000");
	await page.goto("");
	//
	await expect(page).toHaveScreenshot({
		animations: "disabled",
		fullPage: true,
		scale: "css",
		threshold: 0.1,
	});
});
