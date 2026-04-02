begin_hunk_0

$_ZTSN5arrow7compute11NullOptionsE = comdat any

@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
end_hunk_0
begin_hunk_1
@.str.19 = private unnamed_addr constant [45 x i8] c"Cannot fold constants in unbound expression.\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"ReplaceFieldsWithKnownValues called on an unbound Expression\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Cannot canonicalize an unbound expression.\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"RemoveNamedRefs called on unbound expression\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"serialized Expression's batch repr had null metadata\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"serialized Expression's batch repr was not a single row - had \00", align 1
end_hunk_1
begin_hunk_2

.critedge82:                                      ; preds = %_ZN5arrow7compute11CallNotNullERKNS0_10ExpressionE.exit
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !141 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !38 ; 6 uses
  %.not.i.i92 = icmp ult i64 %i.aw, 7
end_hunk_2
begin_hunk_3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9ends_withESt17basic_string_viewIcS2_E.exit: ; preds = %.critedge82
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %15 = getelementptr inbounds i8, ptr %i.ax, i64 -7 ; 2 uses
  %16 = load i32, ptr %15, align 1
  %17 = xor i32 %16, 1701604191
  %i.ay = getelementptr i8, ptr %15, i64 3
  %18 = load i32, ptr %i.ay, align 1
  %19 = xor i32 %18, 1701733733
  %20 = or i32 %17, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %i.az = icmp eq i32 %22, 0
  br i1 %i.az, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9ends_withESt17basic_string_viewIcS2_E.exit
end_hunk_3
begin_hunk_4
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge84

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.t
  %23 = load i64, ptr %i.au, align 1
  %24 = xor i64 %23, 8247343671182844269
  %25 = getelementptr i8, ptr %i.au, i64 3
  %26 = load i64, ptr %25, align 1
  %27 = xor i64 %26, 8386676065534435173
  %28 = or i64 %24, %27
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %i.cm = icmp eq i32 %30, 0
  br i1 %i.cm, label %_ZN5arrow7compute20GetMakeStructOptionsERKNS0_10Expression4CallE.exit, label %.critedge84

_ZN5arrow7compute20GetMakeStructOptionsERKNS0_10Expression4CallE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_4
begin_hunk_5
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN5arrow7compute11CallNotNullERKNS0_10ExpressionE.exit
  %i.af = load ptr, ptr %.0.i.i38, align 8, !tbaa !33 ; 2 uses
  %1 = load i32, ptr %i.af, align 1
  %2 = xor i32 %1, 1702260329
  %3 = getelementptr i8, ptr %i.af, i64 4
  %4 = load i16, ptr %3, align 1
  %5 = zext i16 %4 to i32
  %6 = xor i32 %5, 29810
  %7 = or i32 %2, %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %i.ag = icmp eq i32 %9, 0
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_5
begin_hunk_6
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91
  %i.ap = load ptr, ptr %.0.i.i38, align 8, !tbaa !33 ; 2 uses
  %10 = load i64, ptr %i.ap, align 1
  %11 = xor i64 %10, 7306365178896215649
  %12 = getelementptr i8, ptr %i.ap, i64 8
  %13 = load i16, ptr %12, align 1
  %14 = zext i16 %13 to i64
  %15 = xor i64 %14, 25966
  %16 = or i64 %11, %15
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  %i.aq = icmp eq i32 %18, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91
  %i.ar = load ptr, ptr %.0.i.i38, align 8, !tbaa !33 ; 2 uses
  %19 = load i16, ptr %i.ar, align 1
  %20 = xor i16 %19, 28257
  %21 = getelementptr i8, ptr %i.ar, i64 2
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = xor i16 %23, 100
  %25 = or i16 %20, %24
  %26 = icmp ne i16 %25, 0
  %27 = zext i1 %26 to i32
  %i.as = icmp eq i32 %27, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
end_hunk_6
begin_hunk_7
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNK5arrow7compute10Expression4callEv.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.g = load ptr, ptr %.0.val, align 8, !tbaa !33 ; 2 uses
  %4 = load i64, ptr %i.g, align 1
  %5 = xor i64 %4, 7306365178896215649
  %6 = getelementptr i8, ptr %i.g, i64 8
  %7 = load i16, ptr %6, align 1
  %8 = zext i16 %7 to i64
  %9 = xor i64 %8, 25966
  %10 = or i64 %5, %9
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i32
  %i.h = icmp eq i32 %12, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNK5arrow7compute10Expression4callEv.exit.thread

_ZNK5arrow7compute10Expression4callEv.exit.thread: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit, %bb.a, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_7
begin_hunk_8
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZNK5arrow7compute10Expression4callEv.exit.i28.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !33, !noalias !664 ; 2 uses
  %25 = load i64, ptr %i.ce, align 1
  %26 = xor i64 %25, 7954875833152139887
  %27 = getelementptr i8, ptr %i.ce, i64 8
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i64
  %30 = xor i64 %29, 101
  %31 = or i64 %26, %30
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %i.cf = icmp eq i32 %33, 0
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZNK5arrow7compute10Expression4callEv.exit.i28.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_8
begin_hunk_9
  br i1 %i.dk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit21.i
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !33, !noalias !664 ; 2 uses
  %34 = load i32, ptr %i.dl, align 1
  %35 = xor i32 %34, 1851749225
  %36 = getelementptr i8, ptr %i.dl, i64 3
  %37 = load i32, ptr %36, align 1
  %38 = xor i32 %37, 1819047278
  %39 = or i32 %35, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %i.dm = icmp eq i32 %41, 0
  br i1 %i.dm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread.i, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i
end_hunk_9
begin_hunk_10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit137
  %i.hz = load ptr, ptr %.0.i136, align 8, !tbaa !33
  %42 = load i64, ptr %i.hz, align 1
  %43 = icmp ne i64 %42, 7235433442201006953
  %44 = zext i1 %43 to i32
  %i.ia = icmp eq i32 %44, 0
  br i1 %i.ia, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.thread216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_10
begin_hunk_11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i141: ; preds = %_ZN5arrow7compute11CallNotNullERKNS0_10ExpressionE.exit
  %i.ik = load ptr, ptr %.0.i.i, align 8, !tbaa !33, !noalias !683
  %45 = load i64, ptr %i.ik, align 1
  %46 = icmp ne i64 %45, 7235433442201006953
  %47 = zext i1 %46 to i32
  %i.il = icmp eq i32 %47, 0
  br i1 %i.il, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i143, label %.thread207

.thread207:                                       ; preds = %_ZN5arrow7compute11CallNotNullERKNS0_10ExpressionE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i141
end_hunk_11
begin_hunk_12
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !33  ; 2 uses
  %38 = load i32, ptr %i.ac, align 1
  %39 = xor i32 %38, 1702127980
  %40 = getelementptr i8, ptr %i.ac, i64 3
  %41 = load i32, ptr %40, align 1
  %42 = xor i32 %41, 1818325605
  %43 = or i32 %39, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  %i.ad = icmp eq i32 %45, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_12
begin_hunk_13
  br i1 %i.jn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread186

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %bb.cn
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !33 ; 2 uses
  %46 = load i16, ptr %i.jo, align 1
  %47 = xor i16 %46, 28261
  %48 = getelementptr i8, ptr %i.jo, i64 2
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i16
  %51 = xor i16 %50, 100
  %52 = or i16 %47, %51
  %53 = icmp ne i16 %52, 0
  %54 = zext i1 %53 to i32
  %i.jp = icmp eq i32 %54, 0
  br i1 %i.jp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread186

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread186: ; preds = %bb.cn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
end_hunk_13
begin_hunk_14
  br i1 %i.jy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread187

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137: ; preds = %bb.cp
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !33 ; 2 uses
  %55 = load i32, ptr %i.jz, align 1
  %56 = xor i32 %55, 1769238639
  %57 = getelementptr i8, ptr %i.jz, i64 3
  %58 = load i32, ptr %57, align 1
  %59 = xor i32 %58, 1936617321
  %60 = or i32 %56, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %i.ka = icmp eq i32 %62, 0
  br i1 %i.ka, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread187

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137
end_hunk_14
begin_hunk_15
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i.i.i
  %i.g = load ptr, ptr %.val1, align 8, !tbaa !33, !noalias !1012 ; 2 uses
  %12 = load i32, ptr %i.g, align 1
  %13 = xor i32 %12, 1635086693
  %14 = getelementptr i8, ptr %i.g, i64 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, 108
  %18 = or i32 %13, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %i.h = icmp eq i32 %20, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread10.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
end_hunk_15
begin_hunk_16
  br label %_ZN5arrow7compute12_GLOBAL__N_120ExtractOneFieldValueERKNS0_10ExpressionE.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.i.i.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i.i.i
  %i.ca = load ptr, ptr %.val1, align 8, !tbaa !33, !noalias !1012 ; 2 uses
  %21 = load i32, ptr %i.ca, align 1
  %22 = xor i32 %21, 1851749225
  %23 = getelementptr i8, ptr %i.ca, i64 3
  %24 = load i32, ptr %23, align 1
  %25 = xor i32 %24, 1819047278
  %26 = or i32 %22, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %i.cb = icmp eq i32 %28, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread10.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.i.i.i
end_hunk_16
begin_hunk_17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !33
  %6 = load i64, ptr %i.w, align 1
  %7 = icmp ne i64 %6, 7235433442201006953
  %8 = zext i1 %7 to i32
  %i.x = icmp eq i32 %8, 0
  br i1 %i.x, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread24

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_17
begin_hunk_18
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.critedge83
  %i.gf = load ptr, ptr %.0.i.i, align 8, !tbaa !33 ; 2 uses
  %19 = load i64, ptr %i.gf, align 1
  %20 = xor i64 %19, 7306365178896215649
  %21 = getelementptr i8, ptr %i.gf, i64 8
  %22 = load i16, ptr %21, align 1
  %23 = zext i16 %22 to i64
  %24 = xor i64 %23, 25966
  %25 = or i64 %20, %24
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  %i.gg = icmp eq i32 %27, 0
  br i1 %i.gg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread168

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_18
begin_hunk_19
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %.critedge83
  %i.ki = load ptr, ptr %.0.i.i, align 8, !tbaa !33 ; 2 uses
  %28 = load i64, ptr %i.ki, align 1
  %29 = xor i64 %28, 7954875833152139887
  %30 = getelementptr i8, ptr %i.ki, i64 8
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i64
  %33 = xor i64 %32, 101
  %34 = or i64 %29, %33
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %i.kj = icmp eq i32 %36, 0
  br i1 %i.kj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread168

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
end_hunk_19
begin_hunk_20

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !1521
  %37 = load i64, ptr %i.n, align 1
  %38 = icmp ne i64 %37, 7235433442201006953
  %39 = zext i1 %38 to i32
  %i.o = icmp eq i32 %39, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZN5arrow7compute10Comparison3GetERKNS0_10ExpressionE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !1521 ; 2 uses
  %40 = load i32, ptr %.pre.i, align 1
  %41 = xor i32 %40, 1851749225
  %42 = getelementptr i8, ptr %.pre.i, i64 3
  %43 = load i32, ptr %42, align 1
  %44 = xor i32 %43, 1819047278
  %45 = or i32 %41, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  %i.p = icmp eq i32 %47, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZN5arrow7compute10Comparison3GetERKNS0_10ExpressionE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_20
begin_hunk_21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !1521
  %48 = load i64, ptr %i.af, align 1
  %49 = icmp ne i64 %48, 7235433442201006953
  %50 = zext i1 %49 to i32
  %i.ag = icmp eq i32 %50, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !1521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !1521
  br i1 %i.ag, label %bb.d, label %bb.e
end_hunk_21
begin_hunk_22
  br label %bb.fl

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %.pre140.i = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !1521 ; 2 uses
  %51 = load i32, ptr %.pre140.i, align 1
  %52 = xor i32 %51, 1767863145
  %53 = getelementptr i8, ptr %.pre140.i, i64 4
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, 110
  %57 = or i32 %52, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %i.aj = icmp eq i32 %59, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread.i, label %_ZN5arrow7compute10Comparison3GetERKNS0_10ExpressionE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.i
end_hunk_22
begin_hunk_23

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !33
  %1 = load i32, ptr %i.i, align 1
  %2 = icmp ne i32 %1, 1953718627
  %3 = zext i1 %2 to i32
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNK5arrow7compute10Expression4callEv.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_23
