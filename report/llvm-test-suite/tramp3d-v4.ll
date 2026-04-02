begin_hunk_0
@.str.73 = private unnamed_addr constant [44 x i8] c"All options exist as \22yes\22 and \22no\22 pairs.\0A\00", align 1
@.str.74 = private unnamed_addr constant [46 x i8] c"For example --pooma-info and --pooma-noinfo.\0A\00", align 1
@.str.75 = private unnamed_addr constant [64 x i8] c"The \22no\22 versions listed above imply that \22yes\22 is the default.\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"--pooma-threads\00", align 1
@.str.77 = private unnamed_addr constant [18 x i8] c"--pooma-nothreads\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"--pooma-info\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"--pooma-noinfo\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"--pooma-nocompress\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"--pooma-compress\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"--pooma-nodeferred-guardfills\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"--pooma-deferred-guardfills\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"--pooma-warn\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"--pooma-nowarn\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"--pooma-err\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"--pooma-noerr\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit
  %i.am = load ptr, ptr %3, align 8, !tbaa !14
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(15) %i.am, ptr noundef nonnull dereferenceable(15) @.str.76, i64 15)
  %i.an = icmp eq i32 %bcmp.i, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_1
begin_hunk_2
  br i1 %or.cond25.i, label %_ZN5Pooma11intArgumentEiPPciRi.exit.thread, label %bb.ap

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit
  %i.az = load ptr, ptr %3, align 8, !tbaa !14
  %bcmp.i42 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %i.az, ptr noundef nonnull dereferenceable(17) @.str.77, i64 17)
  %i.ba = icmp eq i32 %bcmp.i42, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
end_hunk_2
begin_hunk_3
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit61, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.exit
  %.pre125 = load ptr, ptr %3, align 8, !tbaa !14 ; 2 uses
  %bcmp.i58 = call i32 @bcmp(ptr %.pre125, ptr nonnull @.str.83, i64 %i.al)
  %i.bi = icmp eq i32 %bcmp.i58, 0
  br i1 %i.bi, label %bb.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit59
  %bcmp.i60 = call i32 @bcmp(ptr noundef nonnull dereferenceable(27) %.pre125, ptr noundef nonnull dereferenceable(27) @.str.83, i64 27)
  %i.bj = icmp eq i32 %bcmp.i60, 0
  %i.bk = zext i1 %i.bj to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit61

end_hunk_3
begin_hunk_4
  br label %.thread92

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit63: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit45
  %i.bm = load ptr, ptr %3, align 8, !tbaa !14
  %bcmp.i62 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %i.bm, ptr noundef nonnull dereferenceable(12) @.str.84, i64 12)
  %i.bn = icmp eq i32 %bcmp.i62, 0
  br i1 %i.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65.thread79

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit65: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47
end_hunk_4
