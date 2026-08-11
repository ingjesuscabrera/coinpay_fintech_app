---
name: Coinpay Digital Finance
colors:
  surface: '#f8f9ff'
  surface-dim: '#cbdbf5'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eff4ff'
  surface-container: '#e5eeff'
  surface-container-high: '#dce9ff'
  surface-container-highest: '#d3e4fe'
  on-surface: '#0b1c30'
  on-surface-variant: '#44474d'
  inverse-surface: '#213145'
  inverse-on-surface: '#eaf1ff'
  outline: '#75777e'
  outline-variant: '#c5c6cd'
  surface-tint: '#515f78'
  primary: '#000000'
  on-primary: '#ffffff'
  primary-container: '#0d1c32'
  on-primary-container: '#76849f'
  inverse-primary: '#b9c7e4'
  secondary: '#00677e'
  on-secondary: '#ffffff'
  secondary-container: '#00d2fd'
  on-secondary-container: '#005669'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#191c1e'
  on-tertiary-container: '#818486'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#d6e3ff'
  primary-fixed-dim: '#b9c7e4'
  on-primary-fixed: '#0d1c32'
  on-primary-fixed-variant: '#39475f'
  secondary-fixed: '#b4ebff'
  secondary-fixed-dim: '#3cd7ff'
  on-secondary-fixed: '#001f27'
  on-secondary-fixed-variant: '#004e5f'
  tertiary-fixed: '#e0e3e5'
  tertiary-fixed-dim: '#c4c7c9'
  on-tertiary-fixed: '#191c1e'
  on-tertiary-fixed-variant: '#444749'
  background: '#f8f9ff'
  on-background: '#0b1c30'
  surface-variant: '#d3e4fe'
typography:
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.02em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 26px
    fontWeight: '700'
    lineHeight: 32px
    letterSpacing: -0.02em
  headline-md:
    fontFamily: Inter
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
  body-lg:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-caps:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.05em
  numeric-display:
    fontFamily: Inter
    fontSize: 36px
    fontWeight: '700'
    lineHeight: 44px
    letterSpacing: -0.01em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 4px
  margin-mobile: 20px
  gutter: 16px
  stack-sm: 8px
  stack-md: 16px
  stack-lg: 24px
  container-padding: 16px
---

## Brand & Style

The design system is anchored in the **Corporate / Modern** aesthetic, specifically tailored for the high-stakes environment of fintech. It balances the "Old Money" reliability of deep indigo tones with the "New Money" energy of vibrant cyan accents. 

The personality is **authoritative yet accessible**. It avoids the aggressive brutalism of web3 or the sterile nature of legacy banking, opting instead for a "High-Trust Minimalist" approach. The user should feel that their assets are secure (evoked by the deep navy) and that the technology is state-of-the-art (evoked by the electric teal).

Key principles include:
- **Clarity over Decoration:** Every visual element must serve a functional purpose in data visualization or transaction flow.
- **Precision:** Perfect alignment and consistent spacing to reflect institutional accuracy.
- **Soft Professionalism:** Using generous border radii and subtle elevations to make the financial interface feel approachable and less intimidating.

## Colors

The palette is strategically weighted to provide a "Deep Canvas" experience.

- **Primary (#0A192F):** Used for navigation bars, primary headings, and high-level containers. It provides the "anchor" for trust.
- **Secondary/Action (#00D4FF):** A vibrant electric teal reserved strictly for interactive elements (CTA buttons, active toggle states, and progress indicators). 
- **Neutral/Background (#F8FAFC):** A cool-toned white used for the main application background to reduce eye strain and maintain a clean look.
- **Semantic Colors:** Success (Green) and Error (Red) are used with moderate saturation to ensure financial alerts are unmistakable without causing unnecessary alarm.

## Typography

This design system utilizes **Inter** exclusively to leverage its exceptional legibility in data-dense environments. 

- **Hierarchy:** Use `headline-lg` for account balances and page titles. For numeric data, ensure the weight is consistent (700) to maintain "visual mass."
- **Labels:** Use `label-caps` for secondary information like "Transaction Date" or "Account Number" to create a clear structural distinction from live data.
- **Readability:** Maintain a tight letter-spacing on large headings to keep the UI feeling compact and modern, while keeping body text at zero tracking for maximum legibility.

## Layout & Spacing

The layout follows a **Fluid Grid** model optimized for mobile-first financial interactions. 

- **Grid:** A 4-column grid for mobile with 20px outer margins. Elements should snap to an 8px base unit rhythm.
- **Vertical Rhythm:** Use `stack-md` (16px) for the majority of vertical gaps between cards. Use `stack-lg` (24px) to separate logical sections (e.g., separating "Quick Actions" from "Recent Transactions").
- **Safe Areas:** Ensure all bottom-fixed buttons (like "Send Money") respect the device's home indicator safe area plus an additional 16px of padding.

## Elevation & Depth

This design system utilizes **Tonal Layers** combined with **Ambient Shadows** to define the stack.

- **Level 0 (Background):** #F8FAFC. The lowest layer.
- **Level 1 (Cards):** Pure White (#FFFFFF) with a very soft, diffused shadow (Hex: #0A192F at 4% opacity, Y: 4px, Blur: 12px). These are the primary containers for data.
- **Level 2 (Modals/Overlays):** Pure White (#FFFFFF) with a more pronounced shadow (Hex: #0A192F at 8% opacity, Y: 8px, Blur: 24px).
- **Interactive Depth:** Upon press/active state, buttons should lose their shadow and translate 1px downward to simulate physical tactile feedback.

## Shapes

The shape language is **Rounded**, conveying a modern, friendly, and soft-tech feel. 

- **Standard Containers:** Use `rounded-lg` (16px) for all main data cards and input fields.
- **Buttons:** Use `rounded-xl` (24px or fully pill-shaped) to differentiate interactive triggers from static containers.
- **Small Elements:** Icons and badges use `rounded-sm` (4px) to maintain a sharp, precise look within limited real estate.

## Components

### Buttons
- **Primary:** Background #00D4FF, Text #0A192F (High contrast), 16px height-padding, Rounded-XL.
- **Secondary:** Background Transparent, Border 2px #0A192F, Text #0A192F.

### Cards
- White background, 16px border radius, 16px internal padding.
- For financial charts, use a "ghost" grid line in #E2E8F0 and the teal accent for the data line.

### Input Fields
- Background #F1F5F9, 12px border radius, 16px horizontal padding.
- Focused state: 2px border in #00D4FF.

### Chips/Badges
- For transaction status (e.g., "Pending"), use a low-opacity version of the semantic color (e.g., 10% Green) with 100% Green text.

### List Items
- 72px minimum height for touch targets. 
- Left-aligned icon or avatar, center-aligned title/subtitle, and right-aligned numeric value (bold).

### Navigation
- Bottom bar with a blur effect (Glassmorphism Lite) using a 20px backdrop blur to allow content to peek through while maintaining legibility of the nav icons.