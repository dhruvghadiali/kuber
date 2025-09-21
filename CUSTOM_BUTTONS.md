# Custom Elevated Button System

This project includes a flexible custom elevated button system that supports different variants like success, warning, error, etc.

## Features

- **Multiple Button Variants**: Primary, Secondary, Success, Warning, Error, Info
- **Different Sizes**: Small, Medium, Large
- **Loading States**: Built-in loading spinner support
- **Full Width Option**: Buttons can expand to full container width
- **Disabled State**: Proper disabled styling
- **Theme Integration**: Automatically adapts to light/dark themes

## Usage

### Basic Usage

```dart
import 'package:your_app/core/theme/theme.dart';

// Using the CustomElevatedButton widget directly
CustomElevatedButton(
  onPressed: () {
    // Handle button press
  },
  variant: ButtonVariant.success,
  child: const Text('Success Button'),
)
```

### Using Extension Methods (Recommended)

```dart
// Success button
ElevatedButtonVariants.success(
  onPressed: () {
    print('Success button pressed');
  },
  child: const Text('Save Changes'),
)

// Warning button
ElevatedButtonVariants.warning(
  onPressed: () {
    print('Warning button pressed');
  },
  child: const Text('Delete Item'),
)

// Error button
ElevatedButtonVariants.error(
  onPressed: () {
    print('Error button pressed');
  },
  child: const Text('Cancel Action'),
)
```

### Button Variants

1. **Primary** - Main action buttons (Blue/Indigo)
2. **Secondary** - Secondary actions (Green/Emerald)  
3. **Success** - Successful actions (Green)
4. **Warning** - Caution actions (Orange/Amber)
5. **Error** - Destructive actions (Red)
6. **Info** - Informational actions (Blue)

### Button Sizes

```dart
ElevatedButtonVariants.primary(
  onPressed: () {},
  size: ButtonSize.small,    // Small button
  child: const Text('Small'),
)

ElevatedButtonVariants.primary(
  onPressed: () {},
  size: ButtonSize.medium,   // Default size
  child: const Text('Medium'),
)

ElevatedButtonVariants.primary(
  onPressed: () {},
  size: ButtonSize.large,    // Large button
  child: const Text('Large'),
)
```

### Loading State

```dart
ElevatedButtonVariants.primary(
  onPressed: isLoading ? null : () {
    // Handle press
  },
  isLoading: isLoading,
  child: const Text('Save'),
)
```

### Full Width Button

```dart
ElevatedButtonVariants.success(
  onPressed: () {},
  isFullWidth: true,
  child: const Text('Full Width Button'),
)
```

## Colors Used

The button variants use the following colors from `AppColors`:

- **Primary**: `AppColors.primary` (Indigo #6366F1)
- **Secondary**: `AppColors.secondary` (Emerald #10B981)
- **Success**: `AppColors.success` (Green #10B981)
- **Warning**: `AppColors.warning` (Amber #F59E0B)
- **Error**: `AppColors.error` (Red #EF4444)
- **Info**: `AppColors.info` (Blue #3B82F6)

## Customization

To customize the button appearance, you can modify the colors in `lib/core/theme/app_colors.dart` or extend the `CustomElevatedButton` widget to add new variants.

### Adding New Variants

1. Add a new enum value to `ButtonVariant`
2. Update the `_getButtonColors` method in `CustomElevatedButton`
3. Optionally add a new extension method in `ElevatedButtonVariants`

## Demo

Run the app and navigate to the "Custom Button Variants" screen to see all button types in action.

## File Structure

```
lib/
├── core/
│   ├── theme/
│   │   ├── app_colors.dart          # Color definitions
│   │   ├── app_color_scheme.dart    # Material 3 color schemes
│   │   ├── app_theme.dart           # Main theme configuration
│   │   └── theme.dart               # Theme exports
│   └── widgets/
│       └── custom_elevated_button.dart  # Custom button implementation
└── screens/
    └── button_demo_screen.dart      # Demo screen showing all variants
```