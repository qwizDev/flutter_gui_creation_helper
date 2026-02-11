import 'package:flutter/material.dart';
import 'constants_sizes.dart';
import 'constants_colors.dart';

/*----------------------------------------------------------------*/
/*----------------------------------------------------------------*/
//  CONSTRAINTS
/*----------------------------------------------------------------*/
/*----------------------------------------------------------------*/

class WidgetDeco {
  static const BoxConstraints boxConstraintsMainWidgetStd = BoxConstraints(
    maxWidth: Sizes.buttonSizeWidthStd,
    maxHeight: Sizes.buttonSizeHeigthStd,
  );

  static const BoxConstraints boxConstraintsButtonStd = BoxConstraints(
    minWidth: Sizes.buttonSizeWidthStd,
    maxWidth: Sizes.buttonSizeWidthStd,
    minHeight: Sizes.buttonSizeHeigthStd,
    maxHeight: Sizes.buttonSizeHeigthStd,
  );

  static const BoxConstraints boxConstraintsButtonLarge = BoxConstraints(
    minWidth: Sizes.buttonSizeWidthLarge,
    maxWidth: Sizes.buttonSizeWidthLarge,
    minHeight: Sizes.buttonSizeHeigthLarge,
    maxHeight: Sizes.buttonSizeHeigthLarge,
  );

  static const BoxConstraints boxConstraintsButtonHuge = BoxConstraints(
    minWidth: Sizes.buttonSizeWidthHuge,
    maxWidth: Sizes.buttonSizeWidthHuge,
    minHeight: Sizes.buttonSizeHeigthHuge,
    maxHeight: Sizes.buttonSizeHeigthHuge,
  );

  static const BoxConstraints boxConstraintsButtonMonster = BoxConstraints(
    minWidth: Sizes.buttonSizeWidthMonster,
    maxWidth: Sizes.buttonSizeWidthMonster,
    minHeight: Sizes.buttonSizeHeigthMonster,
    maxHeight: Sizes.buttonSizeHeigthMonster,
  );

  static const BoxConstraints boxConstraintsPanelStd = BoxConstraints(
    minWidth: Sizes.panelSizeWidthSmall,
    maxWidth: Sizes.panelSizeWidthStd,
    minHeight: Sizes.panelSizeHeigthSmall,
    maxHeight: Sizes.panelSizeHeigthSmall,
  );

  static const BoxConstraints boxConstraintsPanelLarge = BoxConstraints(
    minWidth: Sizes.panelSizeWidthSmall,
    maxWidth: Sizes.panelSizeWidthLarge,
    minHeight: Sizes.panelSizeHeigthSmall,
    maxHeight: Sizes.panelSizeHeigthLarge,
  );

  static const BoxConstraints boxConstraintsPanelHuge = BoxConstraints(
    minWidth: Sizes.panelSizeWidthSmall,
    maxWidth: Sizes.panelSizeWidthHuge,
    minHeight: Sizes.panelSizeHeigthSmall,
    maxHeight: Sizes.panelSizeHeigthLarge + 200,
  );

  static const BoxConstraints boxConstraintsPanelForOutput = BoxConstraints(
    minWidth: 500,
    maxWidth: 1200,
    minHeight: Sizes.panelSizeHeigthSmall,
    maxHeight: Sizes.panelSizeHeigthHuge,
  );

  static const BoxConstraints boxConstraintsPanelForOutputSameWidth =
      BoxConstraints(
        minWidth: Sizes.panelSizeWidthHuge,
        maxWidth: Sizes.panelSizeWidthHuge,
        minHeight: Sizes.panelSizeHeigthStd,
        maxHeight: Sizes.panelSizeHeigthLikeInfinite,
      );

  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  //  DECORATIONS
  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/

  static final boxDecoStd = BoxDecoration(
    border: Border.all(color: colBoxBorderStd),
  );

  static BoxDecoration createBoxDeco({
    BuildContext? context,
    Color colBackground = Colors.white,
    Color colBorder = Colors.black,
    // Color colBackground = Theme.of(context).colorScheme.surface,
    // Color colBorder = Theme.of(context).colorScheme.onSurface,
    double width = 1,
  }) {
    Color resultingBackgroundColor = colBackground;
    Color resultingColBorder = colBorder;
    if (context != null) {
      resultingBackgroundColor = Theme.of(context).colorScheme.surface;
      resultingColBorder = Theme.of(context).colorScheme.onSurface;
    }

    return BoxDecoration(
      color: resultingBackgroundColor,
      border: Border.all(color: resultingColBorder, width: width),
    );
  }

  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  //  MARGIN / PADDING / AND SIMILAR
  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  static const double marginVertStd = 20;
  static const double marginVertSmall = 5;
  static const double marginVertScreenTitle = 20;
  static const double marginQuestionWidgetStd = 3 * marginVertSmall;

  static const double paddingStd = 8;
  static const double paddingPanelOnScreen = 12;
  static const double paddingBoxInPanel = 5;
  static const double paddingButtonsBetween = 3;
  static const double paddingForColorListing = 12;

  static const double iconMarginStd = 4;

  static const double radioBtnGapVerStd = 0;
  static const double radioBtnGapHorStd = 2.0;

  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  //  BUTTONS
  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  static const double buttonRadius = 4;

  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  //  BORDERS
  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  static const double borderWidthStd = 1.0;

  static final BoxBorder borderStd = BoxBorder.all(
    color: chosenBlackStd,
    width: borderWidthStd,
  );

  // // InputBorder
  // static const OutlineInputBorder borderPrimary = OutlineInputBorder(
  //   borderSide: BorderSide()
  //   borderRadius: ,
  //   gapPadding: ,
  // );

  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  //  ICONS
  /*----------------------------------------------------------------*/
  /*----------------------------------------------------------------*/
  static const double iconSizeStd = 35;
}
