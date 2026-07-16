# ttery — App Store Connect metadata

Prepared from the current project. Primary language: English (U.S.).

## App Information

| Field | Value |
|---|---|
| Name | ttery |
| Subtitle | Plan your day by energy |
| Primary category | Lifestyle |
| Secondary category | Productivity |
| Bundle ID | `com.team17.Ttery` |
| SKU suggestion | `ttery-ios` |
| Version | 1.0 |
| Build | 2 |
| Supported device | iPhone; portrait orientation |
| Minimum OS | iOS 26.0 (from the project settings) |
| Price | Free — confirm your intended price in App Store Connect |

## Store Listing — English (U.S.)

### Promotional Text

Choose tasks that match your energy, build a balanced day, and let ttery gently remind you what matters next.

### Description

ttery is a simple, playful task planner that helps you choose what to do based on the energy you have.

Start each day with an energy budget. Add tasks to your market, label them as draining or energizing, and select a small set that fits your current energy. When your energy is low, ttery gives you a heads-up before you commit to a demanding task.

Use ttery to:

• Plan tasks around your energy
• Separate draining tasks from energizing activities
• Create and edit custom tasks
• Keep a focused list of up to four selected tasks
• Mark tasks complete and see your energy change
• Reset your energy daily
• Set optional recurring reminders
• Keep your task data on your device
• Check your energy and selected tasks from the Home Screen widget

ttery is designed to make everyday planning feel lighter, more intentional, and easier to start.

### Keywords

task planner,energy,productivity,routine,reminders,focus,habits,wellness

## URLs — replace placeholders before submission

These must be real, publicly accessible HTTPS pages. Do not submit the placeholder URLs.

| Field | Recommended URL | Page should contain |
|---|---|---|
| Support URL | `https://YOUR-DOMAIN.example/ttery/support` | Contact method, FAQ, troubleshooting, and current app version support |
| Marketing URL | `https://YOUR-DOMAIN.example/ttery` | Product overview, screenshots, and feature summary |
| Privacy Policy URL | `https://musanpras.github.io/Team17AMProject/privacy-policy.html` | How local task data, reminders, widgets, and any future analytics are handled |

If the app truly ships without analytics, advertising, accounts, cloud sync, or other third-party SDK data collection, App Privacy can likely be answered as: “No, we do not collect data from this app.” Re-check this if the release build adds any SDK or network service.

## Copyright

Recommended only if Team 17 is the legal rights holder:

`© 2026 Team 17`

If the rights holder is an individual or another legal entity, replace Team 17 with that exact legal name. The bundle identifier and project naming do not establish legal ownership by themselves.

## App Review Information

### Sign-in required

No. The project contains no login or account flow.

### Review notes

`No account or sign-in is required. On first launch, the app creates a local energy state and starter tasks. Use Market to select tasks, then tap Proceed to send them to the home screen. Tap a selected task to complete it. To test the low-energy warning, select a draining task whose energy cost exceeds the current energy. Custom tasks can be created from the + button in Market. Reminders and the Home Screen widget are optional and require the corresponding system permission/setup.`

### Contact

Enter the submitting team’s real first name, last name, phone number, and email address. These are for App Review and are not public store metadata.

## Recommended declarations to verify in App Store Connect

### Age rating

Likely 4+ if the submitted build has no ads, user-generated content, chat, mature themes, gambling, or unrestricted web access. Answer Apple’s questionnaire based on the actual release build; do not select “Made for Kids” unless the app and business are prepared to meet Apple’s Kids Category requirements.

### App Privacy

The inspected project stores tasks and energy state locally with SwiftData/UserDefaults and uses local notifications plus a widget App Group. No network, account, analytics, advertising, or third-party SDK usage was found in the project files inspected. If that remains true in the archive, select that no data is collected. Apple requires a privacy policy URL even when no data is collected.

### Export compliance

Answer the App Encryption Documentation questions for the archive. The project does not show custom cryptography, but Apple’s questionnaire still needs to be completed for the uploaded build.

### Content rights

Confirm that the team owns or has permission to use all custom illustrations, icons, screenshots, and other included assets. System emoji and Apple-provided system UI are not a substitute for confirming rights to any third-party artwork.

### Pricing and availability

Choose the countries/regions, price, tax category, and release timing. These cannot be derived from the source project.

### Required assets

- App icon: the project includes a 1024×1024 App Store icon asset.
- iPhone screenshots: use the generated files in `app-store-previews/`.
- App preview video: optional; no video is included in this project.

## Before submission checklist

- Enable GitHub Pages for the `main` branch and verify `https://musanpras.github.io/Team17AMProject/privacy-policy.html` loads without login.
- Confirm the legal copyright holder.
- Confirm the App Store Connect app record uses bundle ID `com.team17.Ttery`.
- Upload an archive whose marketing version/build match the App Store version record.
- Complete age rating, App Privacy, export compliance, content rights, pricing, and availability.
- Add App Review contact details and review notes.
- Test the release archive on a clean device, including reminders and widget behavior.
- Submit the privacy URL and support URL in App Store Connect and verify they load without login.
