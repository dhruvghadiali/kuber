import 'package:flutter/material.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_widget.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_variant.dart';
import 'package:kuber/core/widgets/elevatedButton/elevated_button_size.dart';

class ButtonDemoScreen extends StatefulWidget {
  const ButtonDemoScreen({super.key});

  @override
  State<ButtonDemoScreen> createState() => _ButtonDemoScreenState();
}

class _ButtonDemoScreenState extends State<ButtonDemoScreen> {
  bool isLoading = false;

  void _showSnackBar(String message, ButtonVariant variant) {
    final color = _getVariantColor(variant);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Color _getVariantColor(ButtonVariant variant) {
    switch (variant) {
      case ButtonVariant.primary:
        return Colors.blue;
      case ButtonVariant.secondary:
        return Colors.green;
      case ButtonVariant.success:
        return Colors.green.shade700;
      case ButtonVariant.warning:
        return Colors.orange;
      case ButtonVariant.error:
        return Colors.red;
      case ButtonVariant.info:
        return Colors.blue.shade700;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Demo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Basic Variants Section
            const Text(
              'Button Variants',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            ElevatedButtonWidget(
              onPressed: () => _showSnackBar('Primary button pressed', ButtonVariant.primary),
              variant: ButtonVariant.primary,
              child: const Text('Primary Button'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonWidget(
              onPressed: () => _showSnackBar('Secondary button pressed', ButtonVariant.secondary),
              variant: ButtonVariant.secondary,
              child: const Text('Secondary Button'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonWidget(
              onPressed: () => _showSnackBar('Success button pressed', ButtonVariant.success),
              variant: ButtonVariant.success,
              child: const Text('Success Button'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonWidget(
              onPressed: () => _showSnackBar('Warning button pressed', ButtonVariant.warning),
              variant: ButtonVariant.warning,
              child: const Text('Warning Button'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonWidget(
              onPressed: () => _showSnackBar('Error button pressed', ButtonVariant.error),
              variant: ButtonVariant.error,
              child: const Text('Error Button'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonWidget(
              onPressed: () => _showSnackBar('Info button pressed', ButtonVariant.info),
              variant: ButtonVariant.info,
              child: const Text('Info Button'),
            ),
            
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),
            
            // Extension Methods Section
            const Text(
              'Using Extension Methods',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

              ElevatedButtonVariants.primary(
              onPressed: () => _showSnackBar('Success with extension', ButtonVariant.success),
              child: const Icon(Icons.abc, size: 50,),
              size: ButtonSize.small,
              isLoading: true
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonVariants.success(
              onPressed: () => _showSnackBar('Success with extension', ButtonVariant.success),
              child: const Icon(Icons.abc, size: 50,),
              size: ButtonSize.small,
              isLoading: false
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonVariants.warning(
              onPressed: () => _showSnackBar('Warning with extension', ButtonVariant.warning),
              child: const Text('Warning (Extension)'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonVariants.error(
              onPressed: () => _showSnackBar('Error with extension', ButtonVariant.error),
              child: const Text('Error (Extension)'),
            ),
            
            
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),
            
            // Button Sizes Section
            const Text(
              'Button Sizes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            Row(
              children: [
                Expanded(
                  child: ElevatedButtonWidget(
                    onPressed: () => _showSnackBar('Small button', ButtonVariant.primary),
                    variant: ButtonVariant.primary,
                    size: ButtonSize.small,
                    child: const Text('Small'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButtonWidget(
                    onPressed: () => _showSnackBar('Medium button', ButtonVariant.primary),
                    variant: ButtonVariant.primary,
                    size: ButtonSize.medium,
                    child: const Text('Medium'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: ElevatedButtonWidget(
                    onPressed: () => _showSnackBar('Large button', ButtonVariant.primary),
                    variant: ButtonVariant.primary,
                    size: ButtonSize.large,
                    child: const Text('Large'),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),
            
            // Loading State Section
            const Text(
              'Loading States',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            ElevatedButtonWidget(
              onPressed: () {
                setState(() {
                  isLoading = !isLoading;
                });
              },
              variant: ButtonVariant.success,
              isLoading: isLoading,
              child: Text(isLoading ? 'Loading...' : 'Toggle Loading'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonWidget(
              onPressed: null, // Disabled button
              variant: ButtonVariant.secondary,
              child: const Text('Disabled Button'),
            ),
            
            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),
            
            // Full Width Section
            const Text(
              'Full Width Buttons',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            ElevatedButtonWidget(
              onPressed: () => _showSnackBar('Full width success', ButtonVariant.success),
              variant: ButtonVariant.success,
              isFullWidth: true,
              child: const Text('Full Width Success'),
            ),
            const SizedBox(height: 12),
            
            ElevatedButtonWidget(
              onPressed: () => _showSnackBar('Full width warning', ButtonVariant.warning),
              variant: ButtonVariant.warning,
              isFullWidth: true,
              size: ButtonSize.large,
              child: const Text('Full Width Warning (Large)'),
            ),
            
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}