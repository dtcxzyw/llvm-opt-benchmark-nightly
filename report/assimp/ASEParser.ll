begin_hunk_0
@.str.58 = private unnamed_addr constant [69 x i8] c"Encountered unexpected EOL while parsing a *MATERIAL chunk (Level 2)\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"MAP_CLASS\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"*MAP_CLASS\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"ASE: Skipping unknown map type: \00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"BITMAP\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"*BITMAP\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"ASE: Skipping invalid map entry\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"UVW_U_OFFSET\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"UVW_V_OFFSET\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  %i.au = load ptr, ptr %2, align 8               ; 2 uses
  %4 = load i32, ptr %i.au, align 1
  %5 = xor i32 %4, 1836345666
  %6 = getelementptr i8, ptr %i.au, i64 4
  %7 = load i16, ptr %6, align 1
  %8 = zext i16 %7 to i32
  %9 = xor i32 %8, 28769
  %10 = or i32 %5, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %.backedge.backedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  %i.av = load ptr, ptr %2, align 8               ; 2 uses
  %13 = load i64, ptr %i.av, align 1
  %14 = xor i64 %13, 4764927571461828430
  %15 = getelementptr i8, ptr %i.av, i64 3
  %16 = load i64, ptr %15, align 1
  %17 = xor i64 %16, 8101260231581655405
  %18 = or i64 %14, %17
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %.not151 = icmp eq i32 %20, 0
  br i1 %.not151, label %.backedge.backedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
end_hunk_1
begin_hunk_2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34
  %i.bp = load ptr, ptr %i.l, align 8
  %21 = load i32, ptr %i.bp, align 1
  %22 = icmp ne i32 %21, 1701736270
  %23 = zext i1 %22 to i32
  %i.bq = icmp eq i32 %23, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.backedge.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
