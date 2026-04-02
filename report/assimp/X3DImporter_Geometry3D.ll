begin_hunk_0
@_ZTISt13runtime_error = external constant ptr
@.str.22 = private unnamed_addr constant [55 x i8] c"Dimension in <ElevationGrid> must be grater than zero.\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"Heights count must be equal to \22xDimension * zDimension\22 in <ElevationGrid>\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Color\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ColorRGBA\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"TextureCoordinate\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.dl
  %i.pj = load ptr, ptr %21, align 8
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.pj, ptr noundef nonnull dereferenceable(5) @.str.24, i64 5)
  %i.pk = icmp eq i32 %bcmp.i, 0
  br i1 %i.pk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit289.thread391

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.az
  %i.dh = load ptr, ptr %20, align 8
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.dh, ptr noundef nonnull dereferenceable(5) @.str.24, i64 5)
  %i.di = icmp eq i32 %bcmp.i, 0
  br i1 %i.di, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit106.thread169

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
