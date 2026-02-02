import 'package:flutter/material.dart';
import 'package:gui_creation_helper/src/constants/constants_colors.dart';

// ================================
// SIZES
// ================================

final double windowSizeWidthStd = 1200;
final double windowSizeHeightStd = 1000;

final double windowSizeWidthMin = 800;
final double windowSizeHeightMin = 800;

final double widgetSizeWidthMainWidget = 2000;
final double widgetSizeHeightMainWidget = 800;

final double widgetSizeWidthPrettyImportant = 600;
final double widgetSizeHeightPrettyImportant = 600;

final double panelSizeWidthSmall = 200;
final double panelSizeHeigthSmall = 200;

final double panelSizeWidthStd = 300;
final double panelSizeHeigthStd = 300;

final double panelSizeWidthLarge = 500;
final double panelSizeHeigthLarge = 500;

final double panelSizeWidthHuge = 1400;
final double panelSizeHeigthHuge = 1400;

final double panelSizeHeigthLikeInfinite = 5000;

final double buttonSizeWidthStd = 200;
final double buttonSizeHeigthStd = 40;

final double buttonSizeWidthLarge = 300;
final double buttonSizeHeigthLarge = 60;

final double buttonSizeWidthHuge = 400;
final double buttonSizeHeigthHuge = 80;

final double buttonSizeWidthMonster = 600;
final double buttonSizeHeigthMonster = 200;


// ================================
// CONSTRAINTS
// ================================

final BoxConstraints boxConstraintsMainWidgetStd = BoxConstraints(
  maxWidth: buttonSizeWidthStd,
  maxHeight: buttonSizeHeigthStd,
);

final BoxConstraints boxConstraintsButtonStd = BoxConstraints(
  minWidth: buttonSizeWidthStd,
  maxWidth: buttonSizeWidthStd,
  minHeight: buttonSizeHeigthStd,
  maxHeight: buttonSizeHeigthStd,
);

final BoxConstraints boxConstraintsButtonLarge = BoxConstraints(
  minWidth: buttonSizeWidthLarge,
  maxWidth: buttonSizeWidthLarge,
  minHeight: buttonSizeHeigthLarge,
  maxHeight: buttonSizeHeigthLarge,
);

final BoxConstraints boxConstraintsButtonHuge = BoxConstraints(
  minWidth: buttonSizeWidthHuge,
  maxWidth: buttonSizeWidthHuge,
  minHeight: buttonSizeHeigthHuge,
  maxHeight: buttonSizeHeigthHuge,
);

final BoxConstraints boxConstraintsButtonMonster = BoxConstraints(
  minWidth: buttonSizeWidthMonster,
  maxWidth: buttonSizeWidthMonster,
  minHeight: buttonSizeHeigthMonster,
  maxHeight: buttonSizeHeigthMonster,
);

final BoxConstraints boxConstraintsPanelStd = BoxConstraints(
  minWidth: panelSizeWidthSmall,
  maxWidth: panelSizeWidthStd,
  minHeight: panelSizeHeigthSmall,
  maxHeight: panelSizeHeigthSmall,
);

final BoxConstraints boxConstraintsPanelLarge = BoxConstraints(
  minWidth: panelSizeWidthSmall,
  maxWidth: panelSizeWidthLarge,
  minHeight: panelSizeHeigthSmall,
  maxHeight: panelSizeHeigthLarge,
);

final BoxConstraints boxConstraintsPanelHuge = BoxConstraints(
  minWidth: panelSizeWidthSmall,
  maxWidth: panelSizeWidthHuge,
  minHeight: panelSizeHeigthSmall,
  maxHeight: panelSizeHeigthLarge + 200,
);

final BoxConstraints boxConstraintsPanelForOutput = BoxConstraints(
  minWidth: 500,
  maxWidth: 1200,
  minHeight: panelSizeHeigthSmall,
  maxHeight: panelSizeHeigthHuge,
);

final BoxConstraints boxConstraintsPanelForOutputSameWidth = BoxConstraints(
  minWidth: panelSizeWidthHuge,
  maxWidth: panelSizeWidthHuge,
  minHeight: panelSizeHeigthStd,
  maxHeight: panelSizeHeigthLikeInfinite,
);


// ================================
// DECORATIONS
// ================================

final boxDecoStd = BoxDecoration(border: Border.all(color: colBoxBorderStd));
