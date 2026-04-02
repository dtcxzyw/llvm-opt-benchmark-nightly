begin_hunk_0
@_ZTISt13runtime_error = external constant ptr
@.str.22 = private unnamed_addr constant [55 x i8] c"Dimension in <ElevationGrid> must be grater than zero.\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"Heights count must be equal to \22xDimension * zDimension\22 in <ElevationGrid>\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ColorRGBA\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"TextureCoordinate\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.dl
  %i.pj = load ptr, ptr %21, align 8              ; 2 uses
  %23 = load i32, ptr %i.pj, align 1
  %24 = xor i32 %23, 1869377347
  %25 = getelementptr i8, ptr %i.pj, i64 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, 114
  %29 = or i32 %24, %28
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %i.pk = icmp eq i32 %31, 0
  br i1 %i.pk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.az
  %i.dh = load ptr, ptr %20, align 8              ; 2 uses
  %22 = load i32, ptr %i.dh, align 1
  %23 = xor i32 %22, 1869377347
  %24 = getelementptr i8, ptr %i.dh, i64 4
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = xor i32 %26, 114
  %28 = or i32 %23, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %i.di = icmp eq i32 %30, 0
  br i1 %i.di, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread169

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
