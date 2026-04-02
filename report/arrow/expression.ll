begin_hunk_0

$_ZTSN5arrow7compute11NullOptionsE = comdat any

@.str = private unnamed_addr constant [8 x i8] c"_kleene\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
end_hunk_0
begin_hunk_1
@.str.19 = private unnamed_addr constant [45 x i8] c"Cannot fold constants in unbound expression.\00", align 1
@.str.20 = private unnamed_addr constant [61 x i8] c"ReplaceFieldsWithKnownValues called on an unbound Expression\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Cannot canonicalize an unbound expression.\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"is_valid\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"RemoveNamedRefs called on unbound expression\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"serialized Expression's batch repr had null metadata\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"serialized Expression's batch repr was not a single row - had \00", align 1
end_hunk_1
begin_hunk_2

.critedge82:                                      ; preds = %_ZN5arrow7compute11CallNotNullERKNS0_10ExpressionE.exit
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !141 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !38 ; 6 uses
  %.not.i.i92 = icmp ult i64 %i.aw, 7
end_hunk_2
begin_hunk_3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9ends_withESt17basic_string_viewIcS2_E.exit: ; preds = %.critedge82
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -7
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.ay, ptr noundef nonnull dereferenceable(7) @.str, i64 7)
  %i.az = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.az, label %bb.l, label %bb.t

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9ends_withESt17basic_string_viewIcS2_E.exit
end_hunk_3
begin_hunk_4
  br i1 %i.cl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge84

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.t
  %bcmp.i.i108 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %i.au, ptr noundef nonnull dereferenceable(11) @.str.26, i64 11)
  %i.cm = icmp eq i32 %bcmp.i.i108, 0
  br i1 %i.cm, label %_ZN5arrow7compute20GetMakeStructOptionsERKNS0_10Expression4CallE.exit, label %.critedge84

_ZN5arrow7compute20GetMakeStructOptionsERKNS0_10Expression4CallE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_4
begin_hunk_5
  br i1 %i.ae, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN5arrow7compute11CallNotNullERKNS0_10ExpressionE.exit
  %i.af = load ptr, ptr %.0.i.i38, align 8, !tbaa !33
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.af, ptr noundef nonnull dereferenceable(6) @.str.6, i64 6)
  %i.ag = icmp eq i32 %bcmp.i, 0
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_5
begin_hunk_6
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91
  %i.ap = load ptr, ptr %.0.i.i38, align 8, !tbaa !33
  %bcmp.i42 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.ap, ptr noundef nonnull dereferenceable(10) @.str.8, i64 10)
  %i.aq = icmp eq i32 %bcmp.i42, 0
  br i1 %i.aq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread91
  %i.ar = load ptr, ptr %.0.i.i38, align 8, !tbaa !33
  %bcmp.i112 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.ar, ptr noundef nonnull dereferenceable(3) @.str.9, i64 3)
  %i.as = icmp eq i32 %bcmp.i112, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZNK5arrow7compute10Expression9field_refEv.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit113, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
end_hunk_6
begin_hunk_7
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZNK5arrow7compute10Expression4callEv.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.g = load ptr, ptr %.0.val, align 8, !tbaa !33
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.g, ptr noundef nonnull dereferenceable(10) @.str.8, i64 10)
  %i.h = icmp eq i32 %bcmp.i, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNK5arrow7compute10Expression4callEv.exit.thread

_ZNK5arrow7compute10Expression4callEv.exit.thread: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit, %bb.a, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_7
begin_hunk_8
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZNK5arrow7compute10Expression4callEv.exit.i28.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !33, !noalias !664
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.ce, ptr noundef nonnull dereferenceable(9) @.str.10, i64 9), !noalias !664
  %i.cf = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZNK5arrow7compute10Expression4callEv.exit.i28.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_8
begin_hunk_9
  br i1 %i.dk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit21.i
  %i.dl = load ptr, ptr %i.de, align 8, !tbaa !33, !noalias !664
  %bcmp.i22.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.dl, ptr noundef nonnull dereferenceable(7) @.str.33, i64 7), !noalias !664
  %i.dm = icmp eq i32 %bcmp.i22.i, 0
  br i1 %i.dm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread.i, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit23.i
end_hunk_9
begin_hunk_10

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit137
  %i.hz = load ptr, ptr %.0.i136, align 8, !tbaa !33
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.hz, ptr noundef nonnull dereferenceable(8) @.str.22, i64 8)
  %i.ia = icmp eq i32 %bcmp.i, 0
  br i1 %i.ia, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.thread216

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_10
begin_hunk_11

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i141: ; preds = %_ZN5arrow7compute11CallNotNullERKNS0_10ExpressionE.exit
  %i.ik = load ptr, ptr %.0.i.i, align 8, !tbaa !33, !noalias !683
  %bcmp.i.i142 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.ik, ptr noundef nonnull dereferenceable(8) @.str.22, i64 8), !noalias !683
  %i.il = icmp eq i32 %bcmp.i.i142, 0
  br i1 %i.il, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i143, label %.thread207

.thread207:                                       ; preds = %_ZN5arrow7compute11CallNotNullERKNS0_10ExpressionE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i141
end_hunk_11
begin_hunk_12
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !33
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.ac, ptr noundef nonnull dereferenceable(7) @.str.65, i64 7)
  %i.ad = icmp eq i32 %bcmp.i, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit128.thread185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_12
begin_hunk_13
  br i1 %i.jn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread186

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %bb.cn
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !33
  %bcmp.i132 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.jo, ptr noundef nonnull dereferenceable(3) @.str.68, i64 3)
  %i.jp = icmp eq i32 %bcmp.i132, 0
  br i1 %i.jp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread186

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread186: ; preds = %bb.cn, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
end_hunk_13
begin_hunk_14
  br i1 %i.jy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread187

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137: ; preds = %bb.cp
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !33
  %bcmp.i136 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.jz, ptr noundef nonnull dereferenceable(7) @.str.67, i64 7)
  %i.ka = icmp eq i32 %bcmp.i136, 0
  br i1 %i.ka, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread187

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit137
end_hunk_14
begin_hunk_15
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i.i.i
  %i.g = load ptr, ptr %.val1, align 8, !tbaa !33, !noalias !1012
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %i.g, ptr noundef nonnull dereferenceable(5) @.str.27, i64 5)
  %i.h = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread10.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
end_hunk_15
begin_hunk_16
  br label %_ZN5arrow7compute12_GLOBAL__N_120ExtractOneFieldValueERKNS0_10ExpressionE.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.i.i.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i.i.i
  %i.ca = load ptr, ptr %.val1, align 8, !tbaa !33, !noalias !1012
  %bcmp.i23.i.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %i.ca, ptr noundef nonnull dereferenceable(7) @.str.33, i64 7)
  %i.cb = icmp eq i32 %bcmp.i23.i.i.i, 0
  br i1 %i.cb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread10.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.thread.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit24.i.i.i
end_hunk_16
begin_hunk_17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !33
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.w, ptr noundef nonnull dereferenceable(8) @.str.22, i64 8)
  %i.x = icmp eq i32 %bcmp.i, 0
  br i1 %i.x, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread24

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_17
begin_hunk_18
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.critedge83
  %i.gf = load ptr, ptr %.0.i.i, align 8, !tbaa !33
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %i.gf, ptr noundef nonnull dereferenceable(10) @.str.8, i64 10)
  %i.gg = icmp eq i32 %bcmp.i, 0
  br i1 %i.gg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread168

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_18
begin_hunk_19
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEEC2IRKS2_vEEOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133: ; preds = %.critedge83
  %i.ki = load ptr, ptr %.0.i.i, align 8, !tbaa !33
  %bcmp.i132 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %i.ki, ptr noundef nonnull dereferenceable(9) @.str.10, i64 9)
  %i.kj = icmp eq i32 %bcmp.i132, 0
  br i1 %i.kj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread168

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit133
end_hunk_19
begin_hunk_20

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !1521
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.n, ptr noundef nonnull dereferenceable(8) @.str.22, i64 8), !noalias !1521
  %i.o = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZN5arrow7compute10Comparison3GetERKNS0_10ExpressionE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !1521
  %bcmp.i66.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %.pre.i, ptr noundef nonnull dereferenceable(7) @.str.33, i64 7), !noalias !1521
  %i.p = icmp eq i32 %bcmp.i66.i, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %_ZN5arrow7compute10Comparison3GetERKNS0_10ExpressionE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit67.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
end_hunk_20
begin_hunk_21

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit74.i: ; preds = %bb.c
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !1521
  %bcmp.i73.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %i.af, ptr noundef nonnull dereferenceable(8) @.str.22, i64 8), !noalias !1521
  %i.ag = icmp eq i32 %bcmp.i73.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !1521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32, !noalias !1521
  br i1 %i.ag, label %bb.d, label %bb.e
end_hunk_21
begin_hunk_22
  br label %bb.fl

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.i: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit.i
  %.pre140.i = load ptr, ptr %i.e, align 8, !tbaa !33, !noalias !1521
  %bcmp.i76.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %.pre140.i, ptr noundef nonnull dereferenceable(5) @.str.93, i64 5), !noalias !1521
  %i.aj = icmp eq i32 %bcmp.i76.i, 0
  br i1 %i.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread.i, label %_ZN5arrow7compute10Comparison3GetERKNS0_10ExpressionE.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit77.i
end_hunk_22
begin_hunk_23

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !33
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.i, ptr noundef nonnull dereferenceable(4) @.str.86, i64 4)
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNK5arrow7compute10Expression4callEv.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_23
