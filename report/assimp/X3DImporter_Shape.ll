begin_hunk_0
@.str.6 = private unnamed_addr constant [7 x i8] c"Disk2D\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Polyline2D\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Polypoint2D\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Rectangle2D\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"TriangleSet2D\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Cone\00", align 1
end_hunk_0
begin_hunk_1
@.str.24 = private unnamed_addr constant [15 x i8] c"TriangleFanSet\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"TriangleSet\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Shape\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Material\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"ImageTexture\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"TextureTransform\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"ambientIntensity\00", align 1
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.aa
  %i.bg = load ptr, ptr %10, align 8              ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.bg, ptr noundef nonnull dereferenceable(10) @.str.2, i64 10)
  %i.bh = icmp eq i32 %bcmp.i, 0
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit70

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
begin_hunk_3
          to label %bb.cd unwind label %bb.ad

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78: ; preds = %bb.aa
  %.pre129 = load ptr, ptr %10, align 8           ; 2 uses
  %bcmp.i77 = call i32 @bcmp(ptr %.pre129, ptr nonnull @.str.8, i64 %i.bf)
  %i.bq = icmp eq i32 %bcmp.i77, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80
end_hunk_3
begin_hunk_4
          to label %bb.cd unwind label %bb.ad

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78
  %bcmp.i79 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %.pre129, ptr noundef nonnull dereferenceable(11) @.str.9, i64 11)
  %i.br = icmp eq i32 %bcmp.i79, 0
  br i1 %i.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit82.thread119

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit80
end_hunk_4
begin_hunk_5

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.aa
  %i.bi = load ptr, ptr %10, align 8
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.bi, ptr noundef nonnull dereferenceable(8) @.str.27, i64 8)
  %i.bj = icmp eq i32 %bcmp.i, 0
  br i1 %i.bj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49.thread85

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_5
