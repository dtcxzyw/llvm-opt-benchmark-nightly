Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.06?download=true
inline.NumInlined: 1365
inline.NumDeleted: 581
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1R_9generated5nodes4AttrEINtCsjpcu9PwIgok_8smallvec8SmallVecANtB2x_4Metaj1_ENCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB3Z_14SourceToDefCtx18derive_macro_calls00ENCB3S_s_0ENCB3S_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB43_:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 8, !range !6, !alias.scope !1432, !noundef !4
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit34.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1460
  store ptr %i.c, ptr %i.a, align 8, !noalias !1461
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !1462, !noundef !4 ; 2 uses
  %.promoted.i.i35.i.i.i.i.i = load i64, ptr %i.cd, align 8, !alias.scope !1462 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1463
  %i.ci = icmp ugt i64 %i.ch, 1
  %i.cj = load ptr, ptr %i.cc, align 8, !alias.scope !1463, !nonnull !4
  %.sink11.i.i.i.i36.i.i.i.i.i = select i1 %i.ci, ptr %i.cj, ptr %i.cc
  %i.ck = icmp eq i64 %.promoted.i.i35.i.i.i.i.i, %i.cf
  br i1 %i.ck, label %._crit_edge22, label %.lr.ph21

bb.v:                                             ; preds = %.lr.ph21
  %i.cl = icmp eq i64 %i.cn, %i.cf
  br i1 %i.cl, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.u, %bb.v
  %i.cm = phi i64 [ %i.cn, %bb.v ], [ %.promoted.i.i35.i.i.i.i.i, %bb.u ] ; 2 uses
  %i.cn = add i64 %i.cm, 1                        ; 3 uses
  store i64 %i.cn, ptr %i.cd, align 8, !alias.scope !1462
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i.i.i.i36.i.i.i.i.i, i64 %i.cm ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !1439, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !noundef !4
  %i.cs = call noundef align 8 ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaRTNtNtCs33K2ylI4knu_10hir_expand5attrs6AttrIdNtB2N_11MacroCallIdINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtBb_6option6OptionINtCs83ee1IJTiSq_6either6EitherB3q_NtCsileJQcQObtj_7hir_def19BuiltinDeriveImplIdEEEEQNCNCNvMs_NtNtCs8Xq8PKFYOms_3hir9semantics13source_to_defNtB6b_14SourceToDefCtx18derive_macro_calls0s_0E0INtB7_5FnMutTuB1P_EE8call_mutB6f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.cp, ptr noundef %i.cr), !noalias !1464 ; 2 uses
  %.not7.i.i37.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not7.i.i37.i.i.i.i.i, label %bb.v, label %bb.aa

._crit_edge22:                                    ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1460
  %.pr57.i.i.i.i.i = load i64, ptr %i.bz, align 8, !alias.scope !1465
  call void @llvm.experimental.noalias.scope.decl(metadata !1466)
  %i.ct = icmp eq i64 %.pr57.i.i.i.i.i, 0
  br i1 %i.ct, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %._crit_edge22
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  %i.cu = load i64, ptr %i.ce, align 8, !alias.scope !1469, !noundef !4 ; 2 uses
  %.promoted.i.i.i40.i.i.i.i.i = load i64, ptr %i.cd, align 8, !alias.scope !1469 ; 2 uses
  %i.cv = icmp eq i64 %.promoted.i.i.i40.i.i.i.i.i, %i.cu
  br i1 %i.cv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i44.i.i.i.i.i, label %.lr.ph.i.i.i41.i.i.i.i.i

.lr.ph.i.i.i41.i.i.i.i.i:                         ; preds = %bb.w
  %i.cw = load i64, ptr %i.cg, align 8, !alias.scope !1470, !noundef !4
  %i.cx = icmp ugt i64 %i.cw, 1
  %i.cy = load ptr, ptr %i.cc, align 8, !alias.scope !1470, !nonnull !4
  %.sink11.i.i.i.i42.i.i.i.i.i = select i1 %i.cx, ptr %i.cy, ptr %i.cc
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i43.i.i.i.i.i, %.lr.ph.i.i.i41.i.i.i.i.i
  %i.cz = phi i64 [ %.promoted.i.i.i40.i.i.i.i.i, %.lr.ph.i.i.i41.i.i.i.i.i ], [ %i.da, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i43.i.i.i.i.i ] ; 2 uses
  %i.da = add i64 %i.cz, 1                        ; 3 uses
  store i64 %i.da, ptr %i.cd, align 8, !alias.scope !1469
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.sink11.i.i.i.i42.i.i.i.i.i, i64 %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !noalias !1471, !noundef !4
  %i.dg = add i32 %i.df, -1                       ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4, !noalias !1471
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i45.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i43.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i45.i.i.i.i.i: ; preds = %bb.x
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.dd) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i43.i.i.i.i.i unwind label %bb.y, !noalias !1472

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i43.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i45.i.i.i.i.i, %bb.x
  %i.di = icmp eq i64 %i.da, %i.cu
  br i1 %i.di, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i44.i.i.i.i.i, label %bb.x

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10UnsafeMetaECs8Xq8PKFYOms_3hir.exit.sink.split.i.i.i.i.i45.i.i.i.i.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.cc)
          to label %.body47.i.i.i.i.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #37, !noalias !1472
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i44.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4MetaEECs8Xq8PKFYOms_3hir.exit.i.i.i43.i.i.i.i.i, %bb.w
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.cc)
          to label %bb.ad unwind label %bb.ab

bb.aa:                                            ; preds = %.lr.ph21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1460
  br label %bb.ac

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i44.i.i.i.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body47.i.i.i.i.i

.body47.i.i.i.i.i:                                ; preds = %bb.ab, %bb.y
  %eh.lpad-body48.i.i.i.i.i = phi { ptr, i32 } [ %i.dl, %bb.ab ], [ %i.dj, %bb.y ]
  store i64 0, ptr %i.bz, align 8, !alias.scope !1432
  br label %common.resume.i.i.i.i.i

bb.ac:                                            ; preds = %bb.h, %bb.aa, %bb.j
  %.sroa.0.0.i.i.i.i.i.ph = phi ptr [ %i.au, %bb.j ], [ %i.cs, %bb.aa ], [ %i.x, %bb.h ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1430
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.ph, i64 8
  %i.dn = load i32, ptr %i.dm, align 8, !alias.scope !1473, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.ph, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !1473, !nonnull !4, !noundef !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.ph, i64 24
  %i.dr = load i64, ptr %i.dq, align 8, !alias.scope !1473, !noundef !4
  %i.ds = load <2 x i32>, ptr %.sroa.0.0.i.i.i.i.i.ph, align 8, !alias.scope !1473
  store <2 x i32> %i.ds, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dn, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dp, ptr %.sroa.62.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dr, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EECs8Xq8PKFYOms_3hir.exit.i44.i.i.i.i.i, %._crit_edge22, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8IntoIterANtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4Metaj1_EEECs8Xq8PKFYOms_3hir.exit34.i.i.i.i.i
  store i64 0, ptr %i.bz, align 8, !alias.scope !1432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1430
  store i32 0, ptr %0, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainINtNtBb_6option8IntoIterReEINtNtNtBb_3str4iter5SplitB1E_EENCNCNvNtCs8Xq8PKFYOms_3hir5attrs20doc_modpath_from_str00ENtNtNtB9_6traits8iterator8Iterator4nextB2k_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !1528, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1529, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1529
  store ptr null, ptr %i.c, align 8, !alias.scope !1529
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterReEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !alias.scope !1528
  br label %bb.d

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterReEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  br label %bb.ap

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.h = load i64, ptr %i.g, align 8, !range !18, !alias.scope !1532, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.h, 2
  br i1 %.not.i.i.i, label %_RNCNCNvNtCs8Xq8PKFYOms_3hir5attrs20doc_modpath_from_str00B7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 145 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !8, !alias.scope !1535, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_RNCNCNvNtCs8Xq8PKFYOms_3hir5attrs20doc_modpath_from_str00B7_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1535, !nonnull !4, !noundef !4 ; 15 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !1535, !noundef !4 ; 30 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  %i.n = trunc nuw i64 %i.h to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.n, label %bb.p, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !range !8, !alias.scope !1537, !noundef !4
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.am, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1538 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.promoted52.i.i.i.i.i.i = load i8, ptr %i.s, align 8, !alias.scope !1537 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.t = trunc nuw i8 %.promoted52.i.i.i.i.i.i to i1 ; 2 uses
  %i.u = icmp eq i64 %.promoted.i.i.i.i.i.i, 0
  br i1 %i.u, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.peel.i.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i.i.i, label %bb.h, label %.split.i.i.i.peel.i.i.i.i.i

.split.i.i.i.peel.i.i.i.i.i:                      ; preds = %bb.g
  %i.v = icmp eq i64 %.promoted.i.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.v, label %bb.i, label %.loopexit.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted.i.i.i.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !1540, !noalias !1541, !noundef !4
  %i.y = icmp sgt i8 %i.x, -65
  br i1 %i.y, label %bb.i, label %.loopexit.i.i.i.i.i

bb.i:                                             ; preds = %bb.h, %.split.i.i.i.peel.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted.i.i.i.i.i.i ; 4 uses
  %i.aa = icmp samesign eq i64 %.promoted.i.i.i.i.i.i, %.val1.i.i.i.i.i
  br i1 %i.aa, label %.loopexit51.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.z, align 1, !noalias !1542, !noundef !4 ; 5 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.k, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.peel.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.peel.i.i.i.i.i: ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ae = and i8 %i.ab, 31
  %i.af = zext nneg i8 %i.ae to i32               ; 3 uses
  %i.ag = add nuw nsw i64 %.promoted.i.i.i.i.i.i, 1
  %i.ah = icmp samesign ne i64 %i.ag, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load i8, ptr %i.ad, align 1, !noalias !1542, !noundef !4
  %i.aj = shl nuw nsw i32 %i.af, 6
  %i.ak = and i8 %i.ai, 63
  %i.al = zext nneg i8 %i.ak to i32               ; 2 uses
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = icmp samesign ugt i8 %i.ab, -33
  br i1 %i.an, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.peel.i.i.i.i.i, label %bb.l

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.peel.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.peel.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ap = add nuw nsw i64 %.promoted.i.i.i.i.i.i, 2
  %i.aq = icmp samesign ne i64 %i.ap, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = load i8, ptr %i.ao, align 1, !noalias !1542, !noundef !4
  %i.as = shl nuw nsw i32 %i.al, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.af, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ab, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit16.i.i.i.peel.i.i.i.i.i, label %bb.l

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit16.i.i.i.peel.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.peel.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.ba = add nuw nsw i64 %.promoted.i.i.i.i.i.i, 3
  %i.bb = icmp samesign ne i64 %i.ba, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = load i8, ptr %i.az, align 1, !noalias !1542, !noundef !4
  %i.bd = shl nuw nsw i32 %i.af, 18
  %i.be = and i32 %i.bd, 1835008
  %i.bf = shl nuw nsw i32 %i.av, 6
  %i.bg = and i8 %i.bc, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh
  %i.bj = or disjoint i32 %i.bi, %i.be
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bk = zext nneg i8 %i.ab to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit16.i.i.i.peel.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.peel.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.peel.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i = phi i32 [ %i.ax, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.peel.i.i.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit16.i.i.i.peel.i.i.i.i.i ], [ %i.am, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.peel.i.i.i.i.i ], [ %i.bk, %bb.k ] ; 4 uses
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bl)
  br i1 %i.t, label %.loopexit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i, 128
  br i1 %i.bm, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i, 2048
  br i1 %i.bn, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i.i.i, 65536
  %..i.i.peel.i.i.i.i.i = select i1 %i.bo, i64 3, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !1538, !noundef !4 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !1538, !nonnull !4, !noundef !4 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !1538, !noundef !4 ; 16 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.bx = add nsw i64 %i.bv, -1                   ; 5 uses
  br i1 %i.br, label %bb.ae, label %bb.w

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.01.0.i.i.peel.i.i.i.i.i = phi i64 [ 2, %bb.n ], [ %..i.i.peel.i.i.i.i.i, %bb.o ], [ 1, %bb.m ]
  %i.by = add i64 %.sroa.01.0.i.i.peel.i.i.i.i.i, %.promoted.i.i.i.i.i.i ; 16 uses
  store i64 %i.by, ptr %i.o, align 8, !alias.scope !1543
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.by, %.val1.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.s, label %.split.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.r
  %i.ca = icmp eq i64 %i.by, %.val1.i.i.i.i.i
  br i1 %i.ca, label %bb.t, label %.loopexit.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.by
  %i.cc = load i8, ptr %i.cb, align 1, !alias.scope !1540, !noalias !1545, !noundef !4
  %i.cd = icmp sgt i8 %i.cc, -65
  br i1 %i.cd, label %bb.t, label %.loopexit.i.i.i.i.i

bb.t:                                             ; preds = %bb.s, %.split.i.i.i.i.i.i.i.i, %bb.q
  %i.ce = icmp samesign eq i64 %i.by, %.val1.i.i.i.i.i
  br i1 %i.ce, label %bb.al, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.by
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !1546, !noundef !4 ; 3 uses
  %i.ch = icmp sgt i8 %i.cg, -1
  br i1 %i.ch, label %.loopexit.i.i.i.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.ci = add nuw nsw i64 %i.by, 1
  %i.cj = icmp samesign ne i64 %i.ci, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = icmp samesign ugt i8 %i.cg, -33
  br i1 %i.ck, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.i.i.i.i.i
  %i.cl = add nuw nsw i64 %i.by, 2
  %i.cm = icmp samesign ne i64 %i.cl, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp samesign ugt i8 %i.cg, -17
  br i1 %i.cn, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit16.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit16.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.i.i.i.i.i
  %i.co = add nuw nsw i64 %i.by, 3
  %i.cp = icmp samesign ne i64 %i.co, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.cp)
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %bb.s, %.split.i.i.i.i.i.i.i.i, %bb.h, %.split.i.i.i.peel.i.i.i.i.i
  %.lcssa47.i.i.i.i.i = phi i8 [ %.promoted52.i.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i.i ], [ %.promoted52.i.i.i.i.i.i, %bb.h ], [ 1, %.split.i.i.i.i.i.i.i.i ], [ 1, %bb.s ]
  %.lcssa44.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i, %.split.i.i.i.peel.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.h ], [ %i.by, %.split.i.i.i.i.i.i.i.i ], [ %i.by, %bb.s ]
  %i.cq = xor i8 %.lcssa47.i.i.i.i.i, 1
  store i8 %i.cq, ptr %i.s, align 8, !alias.scope !1537
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef %.lcssa44.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #34, !noalias !1545
  unreachable

.loopexit51.i.i.i.i.i:                            ; preds = %bb.i
  %i.cr = xor i8 %.promoted52.i.i.i.i.i.i, 1
  store i8 %i.cr, ptr %i.s, align 8, !alias.scope !1537
  br i1 %i.t, label %bb.al, label %bb.v

bb.v:                                             ; preds = %.loopexit51.i.i.i.i.i
  store i8 1, ptr %i.p, align 2, !alias.scope !1537
  br label %bb.am

.loopexit.i.i.i.i.i.i:                            ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit16.i.i.i.i.i.i.i.i, %bb.u, %bb.l
  %.lcssa46.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i, %bb.l ], [ %i.by, %bb.u ], [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit16.i.i.i.i.i.i.i.i ], [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit14.i.i.i.i.i.i.i.i ], [ %i.by, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8Xq8PKFYOms_3hir.exit12.i.i.i.i.i.i.i.i ] ; 2 uses
  store i8 0, ptr %i.s, align 8, !alias.scope !1537
  br label %bb.al

bb.w:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !1550 ; 2 uses
  %i.cs = add i64 %.promoted.i.i.i.i.i.i.i, %i.bx ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %.val1.i.i.i.i.i
  br i1 %i.ct, label %.lr.ph.i1.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i1.i.i.i.i.i.i:                            ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !1550, !noundef !4
  %i.cw = load i64, ptr %i.o, align 8, !alias.scope !1550 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !1550 ; 2 uses
  %i.cz = sub i64 %i.bv, %i.cy
  %invariant.op = sub i64 1, %i.cw
  br label %.lr.ph.split.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.z, %bb.w
  store i64 %.val1.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !1550
  br label %bb.am

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.z, %.lr.ph.i1.i.i.i.i.i.i
  %i.da = phi i64 [ %.sink70.i.i.i.i.i.i.i, %bb.z ], [ %i.bq, %.lr.ph.i1.i.i.i.i.i.i ] ; 3 uses
  %i.db = phi i64 [ %i.dl, %bb.z ], [ %i.cs, %.lr.ph.i1.i.i.i.i.i.i ]
  %i.dc = phi i64 [ %.sink71.i.i.i.i.i.i.i, %bb.z ], [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i1.i.i.i.i.i.i ] ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.db
  %i.de = load i8, ptr %i.dd, align 1, !alias.scope !1548, !noalias !1551, !noundef !4
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = and i64 %i.dh, %i.cv
  %.not.i2.i.i.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not.i2.i.i.i.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.dj = add i64 %i.dc, %i.bv
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %..i.i3.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.da, i64 %i.cw) ; 2 uses
  %i.dk = icmp ult i64 %..i.i3.i.i.i.i.i.i, %i.bv
  br i1 %i.dk, label %.lr.ph, label %.preheader36.i.i.i.i.i.i.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i.i.i.i.i.i.i = phi i64 [ %i.eh, %bb.ad ], [ %i.eg, %bb.ac ], [ %i.dj, %bb.x ] ; 3 uses
  %.sink70.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.cz, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i.i.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !1550
  store i64 %.sink70.i.i.i.i.i.i.i, ptr %i.bp, align 8, !alias.scope !1550
  %i.dl = add i64 %.sink71.i.i.i.i.i.i.i, %i.bx   ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %.val1.i.i.i.i.i
  br i1 %i.dm, label %.lr.ph.split.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph
  %i.dn = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i109, 1 ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.bv
  br i1 %i.do, label %.lr.ph, label %.preheader36.i.i.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.i.i.preheader:             ; preds = %bb.aa, %bb.y
  %i.dp = icmp ult i64 %i.da, %i.cw
  br i1 %i.dp, label %.lr.ph111, label %.split.us.i.i.i.i.i.i.i

.lr.ph:                                           ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i.i.i.i.i.i.i109 = phi i64 [ %i.dn, %bb.aa ], [ %..i.i3.i.i.i.i.i.i, %bb.y ] ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.04.0.i.i.i.i.i.i.i109
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !1549, !noalias !1551, !noundef !4
  %i.ds = add i64 %.sroa.04.0.i.i.i.i.i.i.i109, %i.dc ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ds
  %i.dv = load i8, ptr %i.du, align 1, !alias.scope !1548, !noalias !1551, !noundef !4
  %.not21.i.i.i.i.i.i.i = icmp eq i8 %i.dr, %i.dv
  br i1 %.not21.i.i.i.i.i.i.i, label %bb.aa, label %bb.ad

.preheader36.i.i.i.i.i.i.i:                       ; preds = %bb.ab
  %i.dw = icmp ult i64 %i.da, %i.dy
  br i1 %i.dw, label %.lr.ph111, label %.split.us.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i:                          ; preds = %.preheader36.i.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i.i
  %i.dx = add i64 %i.dc, %i.bv                    ; 2 uses
  store i64 %i.dx, ptr %i.bw, align 8, !alias.scope !1550
  store i64 0, ptr %i.bp, align 8, !alias.scope !1550
  br label %bb.al

.lr.ph111:                                        ; preds = %.preheader36.i.i.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i.i.i110 = phi i64 [ %i.dy, %.preheader36.i.i.i.i.i.i.i ], [ %i.cw, %.preheader36.i.i.i.i.i.i.i.preheader ]
  %i.dy = add i64 %.sroa.2.0.i.i.i.i.i.i.i110, -1 ; 6 uses
  %i.dz = icmp ult i64 %i.dy, %i.bv
  br i1 %i.dz, label %bb.ab, label %.split32.us.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph111
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !1549, !noalias !1551, !noundef !4
  %i.ec = add i64 %i.dy, %i.dc                    ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ec
  %i.ef = load i8, ptr %i.ee, align 1, !alias.scope !1548, !noalias !1551, !noundef !4
  %.not20.i.i.i.i.i.i.i = icmp eq i8 %i.eb, %i.ef
  br i1 %.not20.i.i.i.i.i.i.i, label %.preheader36.i.i.i.i.i.i.i, label %bb.ac

.split32.us.i.i.i.i.i.i.i:                        ; preds = %.lr.ph111
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dy, i64 noundef range(i64 0, -9223372036854775808) %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #34, !noalias !1552
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.eg = add i64 %i.dc, %i.cy
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.dc, %invariant.op
  %i.eh = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i.i.i109
  br label %bb.z

bb.ae:                                            ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %.promoted.i4.i.i.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !1556 ; 3 uses
  %i.ei = add i64 %.promoted.i4.i.i.i.i.i.i, %i.bx ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %.val1.i.i.i.i.i
  br i1 %i.ej, label %.lr.ph.i7.i.i.i.i.i.i, label %._crit_edge.i5.i.i.i.i.i.i

.lr.ph.i7.i.i.i.i.i.i:                            ; preds = %bb.ae
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !1556, !noundef !4 ; 2 uses
  %i.em = load i64, ptr %i.o, align 8, !alias.scope !1556
  %.fr63.i.i.i.i.i.i = freeze i64 %i.em           ; 10 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !1556
  %umax.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i.i.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.bv) ; 2 uses
  %i.ep = add i64 %.fr63.i.i.i.i.i.i, -1          ; 2 uses
  %.first_iter.i8.i.i.i.i.i.i = icmp ult i64 %i.ep, %i.bv
  %i.eq = sub i64 1, %.fr63.i.i.i.i.i.i           ; 2 uses
  br i1 %.first_iter.i8.i.i.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.i.i.preheader:          ; preds = %.lr.ph.i7.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i113.not = icmp ult i64 %.fr63.i.i.i.i.i.i, %i.bv
  br label %.lr.ph.split.us.i.i.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader:       ; preds = %.lr.ph.i7.i.i.i.i.i.i
  %exitcond.not.i.us.i.i.i.i.i.i118.not = icmp ult i64 %.fr63.i.i.i.i.i.i, %i.bv
  %.not34.i.us.us.i.i.i.i.i.i121 = icmp eq i64 %.fr63.i.i.i.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.i.i:                 ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader, %bb.ah
  %i.er = phi i64 [ %i.fr, %bb.ah ], [ %i.ei, %.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader ]
  %i.es = phi i64 [ %.sink.i9.us.i.i.i.i.i.i, %bb.ah ], [ %.promoted.i4.i.i.i.i.i.i, %.lr.ph.split.us.i.us.i.i.i.i.i.i.preheader ] ; 7 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.er
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !1554, !noalias !1551, !noundef !4
  %i.ev = and i8 %i.eu, 63
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = shl nuw i64 1, %i.ew
  %i.ey = and i64 %i.ex, %i.el
  %.not.us.i.us.i.i.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.us.i.us.i.i.i.i.i.i, label %bb.ag, label %.preheader35.i.us.i.i.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.i.i.preheader:          ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i.i118.not, label %.lr.ph120, label %.preheader.i10.us.us.i.i.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.i.i:                    ; preds = %.lr.ph120
  %i.ez = add i64 %.sroa.04.0.us.i.us.i.i.i.i.i.i119, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i.i.i = icmp eq i64 %i.ez, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.i.i.preheader, label %.lr.ph120

.preheader.i10.us.us.i.i.i.i.i.i.preheader:       ; preds = %.preheader35.i.us.i.i.i.i.i.i, %.preheader35.i.us.i.i.i.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i.i.i.i121, label %.split.us.i12.i.i.i.i.i.i, label %.lr.ph123

.lr.ph120:                                        ; preds = %.preheader35.i.us.i.i.i.i.i.i.preheader, %.preheader35.i.us.i.i.i.i.i.i
  %.sroa.04.0.us.i.us.i.i.i.i.i.i119 = phi i64 [ %i.ez, %.preheader35.i.us.i.i.i.i.i.i ], [ %.fr63.i.i.i.i.i.i, %.preheader35.i.us.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.04.0.us.i.us.i.i.i.i.i.i119
  %i.fb = load i8, ptr %i.fa, align 1, !alias.scope !1555, !noalias !1551, !noundef !4
  %i.fc = add i64 %.sroa.04.0.us.i.us.i.i.i.i.i.i119, %i.es ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.fc
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !1554, !noalias !1551, !noundef !4
  %.not21.us.i.us.i.i.i.i.i.i = icmp eq i8 %i.fb, %i.ff
  br i1 %.not21.us.i.us.i.i.i.i.i.i, label %.preheader35.i.us.i.i.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph120
  %i.fg = add i64 %i.es, %i.eq
  %i.fh = add i64 %i.fg, %.sroa.04.0.us.i.us.i.i.i.i.i.i119
  br label %bb.ah

.preheader.i10.us.us.i.i.i.i.i.i:                 ; preds = %.lr.ph123
  %.not34.i.us.us.i.i.i.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not34.i.us.us.i.i.i.i.i.i, label %.split.us.i12.i.i.i.i.i.i, label %.lr.ph123

.lr.ph123:                                        ; preds = %.preheader.i10.us.us.i.i.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i.i.i.i122 = phi i64 [ %i.fi, %.preheader.i10.us.us.i.i.i.i.i.i ], [ %.fr63.i.i.i.i.i.i, %.preheader.i10.us.us.i.i.i.i.i.i.preheader ]
  %i.fi = add i64 %.sroa.2.0.us.i.us.us.i.i.i.i.i.i122, -1 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !1555, !noalias !1551, !noundef !4
  %i.fl = add i64 %i.fi, %i.es                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.fl
  %i.fo = load i8, ptr %i.fn, align 1, !alias.scope !1554, !noalias !1551, !noundef !4
  %.not20.us.i.us.us.i.i.i.i.i.i = icmp eq i8 %i.fk, %i.fo
  br i1 %.not20.us.i.us.us.i.i.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.i.i, label %.split.us.us.i.i.i.i.i.i

.split.us.us.i.i.i.i.i.i:                         ; preds = %.lr.ph123
  %i.fp = add i64 %i.es, %i.eo
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i.i.i.i
  %i.fq = add i64 %i.es, %i.bv
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.us.us.i.i.i.i.i.i, %bb.af
  %.sink.i9.us.i.i.i.i.i.i = phi i64 [ %i.fq, %bb.ag ], [ %i.fh, %bb.af ], [ %i.fp, %.split.us.us.i.i.i.i.i.i ] ; 3 uses
  store i64 %.sink.i9.us.i.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !1556
  %i.fr = add i64 %.sink.i9.us.i.i.i.i.i.i, %i.bx ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %.val1.i.i.i.i.i
  br i1 %i.fs, label %.lr.ph.split.us.i.us.i.i.i.i.i.i, label %._crit_edge.i5.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i.preheader, %bb.ak
  %i.ft = phi i64 [ %i.gl, %bb.ak ], [ %i.ei, %.lr.ph.split.us.i.i.i.i.i.i.i.preheader ]
  %i.fu = phi i64 [ %.sink.i9.i.i.i.i.i.i, %bb.ak ], [ %.promoted.i4.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ft
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !1554, !noalias !1551, !noundef !4
  %i.fx = and i8 %i.fw, 63
  %i.fy = zext nneg i8 %i.fx to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fz, %i.el
  %.not.us.i.i.i.i.i.i.i = icmp eq i64 %i.ga, 0
  br i1 %.not.us.i.i.i.i.i.i.i, label %bb.aj, label %.preheader35.i.i.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i113.not, label %.lr.ph115, label %.preheader.i10.i.i.i.i.i.i

.preheader35.i.i.i.i.i.i.i:                       ; preds = %.lr.ph115
  %i.gb = add i64 %.sroa.04.0.us.i.i.i.i.i.i.i114, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.gb, %umax.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.preheader.i10.i.i.i.i.i.i, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader35.i.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i.i.i114 = phi i64 [ %i.gb, %.preheader35.i.i.i.i.i.i.i ], [ %.fr63.i.i.i.i.i.i, %.preheader35.i.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.04.0.us.i.i.i.i.i.i.i114
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !1555, !noalias !1551, !noundef !4
  %i.ge = add i64 %.sroa.04.0.us.i.i.i.i.i.i.i114, %i.fu ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %.val1.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ge
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !1554, !noalias !1551, !noundef !4
  %.not21.us.i.i.i.i.i.i.i = icmp eq i8 %i.gd, %i.gh
  br i1 %.not21.us.i.i.i.i.i.i.i, label %.preheader35.i.i.i.i.i.i.i, label %bb.ai

.preheader.i10.i.i.i.i.i.i:                       ; preds = %.preheader35.i.i.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i = icmp eq i64 %.fr63.i.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i.i.i, label %.split.us.i12.i.i.i.i.i.i, label %.split32.us.i11.i.i.i.i.i.i

.split32.us.i11.i.i.i.i.i.i:                      ; preds = %.preheader.i10.i.i.i.i.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ep, i64 noundef range(i64 0, -9223372036854775808) %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #34, !noalias !1557
  unreachable

bb.ai:                                            ; preds = %.lr.ph115
  %i.gi = add i64 %i.fu, %i.eq
  %i.gj = add i64 %i.gi, %.sroa.04.0.us.i.i.i.i.i.i.i114
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i.i.i
  %i.gk = add i64 %i.fu, %i.bv
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink.i9.i.i.i.i.i.i = phi i64 [ %i.gk, %bb.aj ], [ %i.gj, %bb.ai ] ; 3 uses
  store i64 %.sink.i9.i.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !1556
  %i.gl = add i64 %.sink.i9.i.i.i.i.i.i, %i.bx    ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %.val1.i.i.i.i.i
  br i1 %i.gm, label %.lr.ph.split.us.i.i.i.i.i.i.i, label %._crit_edge.i5.i.i.i.i.i.i

._crit_edge.i5.i.i.i.i.i.i:                       ; preds = %bb.ak, %bb.ah, %bb.ae
  store i64 %.val1.i.i.i.i.i, ptr %i.bw, align 8, !alias.scope !1556
  br label %bb.am

.split.us.i12.i.i.i.i.i.i:                        ; preds = %.preheader.i10.us.us.i.i.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i.i.i, %.preheader.i10.i.i.i.i.i.i
  %.us-phi.i.i.i.i.i.i = phi i64 [ %i.fu, %.preheader.i10.i.i.i.i.i.i ], [ %i.es, %.preheader.i10.us.us.i.i.i.i.i.i ], [ %i.es, %.preheader.i10.us.us.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gn = add i64 %.us-phi.i.i.i.i.i.i, %i.bv     ; 2 uses
  store i64 %i.gn, ptr %i.bw, align 8, !alias.scope !1556
  br label %bb.al

bb.al:                                            ; preds = %.split.us.i12.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i, %.loopexit51.i.i.i.i.i, %bb.t
  %.sroa.8.0.ph.i.i.i.i.i = phi i64 [ %.val1.i.i.i.i.i, %.loopexit51.i.i.i.i.i ], [ %.lcssa46.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %i.dx, %.split.us.i.i.i.i.i.i.i ], [ %i.gn, %.split.us.i12.i.i.i.i.i.i ], [ %.val1.i.i.i.i.i, %bb.t ]
  %.sroa.4.02.ph.i.i.i.i.i = phi i64 [ %.val1.i.i.i.i.i, %.loopexit51.i.i.i.i.i ], [ %.lcssa46.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %i.dc, %.split.us.i.i.i.i.i.i.i ], [ %.us-phi.i.i.i.i.i.i, %.split.us.i12.i.i.i.i.i.i ], [ %.val1.i.i.i.i.i, %bb.t ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !1535, !noundef !4 ; 2 uses
  %i.gq = sub nuw i64 %.sroa.4.02.ph.i.i.i.i.i, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.gp
  store i64 %.sroa.8.0.ph.i.i.i.i.i, ptr %i.go, align 8, !alias.scope !1535
  br label %bb.ap

bb.am:                                            ; preds = %._crit_edge.i5.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i, %bb.v, %.preheader.i.i.i.i.i.i
  store i8 1, ptr %i.i, align 1, !alias.scope !1558
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.gt = load i8, ptr %i.gs, align 8, !range !8, !alias.scope !1558, !noundef !4
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %._crit_edge.i.i.i.i.i.i, label %bb.an

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.am
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !1558
  %.phi.trans.insert2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.pre3.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i.i.i.i, align 8, !alias.scope !1558
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !1558, !noundef !4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !1558, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.gw, %i.gy
  br i1 %.not.i.i.i.i.i.i, label %_RNCNCNvNtCs8Xq8PKFYOms_3hir5attrs20doc_modpath_from_str00B7_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i.i.i.i
  %i.gz = phi i64 [ %.pre3.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.gw, %bb.an ]
  %i.ha = phi i64 [ %.pre.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.gy, %bb.an ] ; 2 uses
  %i.hb = sub nuw i64 %i.gz, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ha
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.al, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterReEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i
  %.pn4.i.i = phi ptr [ %i.d, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterReEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i ], [ %i.gr, %bb.al ], [ %i.hc, %bb.ao ] ; 7 uses
  %.pn2.i.i = phi i64 [ %i.f, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterReEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i ], [ %i.gq, %bb.al ], [ %i.hb, %bb.ao ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  switch i64 %.pn2.i.i, label %thread-pre-split.i.i [
    i64 0, label %.lr.ph.split.i.i.i.preheader
    i64 1, label %bb.aq
  ]

.lr.ph.split.i.i.i.preheader:                     ; preds = %bb.as, %.preheader56.i.i.preheader, %.lr.ph.i.i, %bb.aq, %bb.aq, %bb.ap
  %.ph = phi i64 [ 0, %bb.aq ], [ 0, %bb.aq ], [ %.pn2.i.i, %bb.ap ], [ 0, %.lr.ph.i.i ], [ 0, %.preheader56.i.i.preheader ], [ 0, %bb.as ]
  br label %.lr.ph.split.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hd = load i8, ptr %.pn4.i.i, align 1, !alias.scope !1560, !noundef !4 ; 2 uses
  switch i8 %i.hd, label %bb.ar [
    i8 43, label %.lr.ph.split.i.i.i.preheader
    i8 45, label %.lr.ph.split.i.i.i.preheader
  ]

thread-pre-split.i.i:                             ; preds = %bb.ap
  %.pr.i.i = load i8, ptr %.pn4.i.i, align 1, !alias.scope !1560
  br label %bb.ar

bb.ar:                                            ; preds = %thread-pre-split.i.i, %bb.aq
  %i.he = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.hd, %bb.aq ]
  %cond.i.i = icmp eq i8 %i.he, 43                ; 2 uses
  %i.hf = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %.pn2.i.i, %i.hf  ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.pn4.i.i, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.hg = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.hg, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.ar
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.as
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i128, i64 1
  %i.hi = add nsw i64 %.sroa.15.1.i.i127, -1      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not52.i.i, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.ar, %.preheader56.i.i
  %.sroa.0.1.i.i128 = phi ptr [ %i.hh, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.ar ] ; 2 uses
  %.sroa.15.1.i.i127 = phi i64 [ %i.hi, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.ar ]
  %.sroa.042.0.i.i126 = phi i64 [ %i.hr, %.preheader56.i.i ], [ 0, %bb.ar ]
  %i.hj = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i126, i64 10) ; 2 uses
  %i.hk = extractvalue { i64, i1 } %i.hj, 1
  br i1 %i.hk, label %.lr.ph.split.i.i.i.preheader, label %bb.as, !prof !7

bb.as:                                            ; preds = %.preheader56.i.i.preheader
  %i.hl = extractvalue { i64, i1 } %i.hj, 0       ; 2 uses
  %i.hm = load i8, ptr %.sroa.0.1.i.i128, align 1, !alias.scope !1560, !noundef !4
  %i.hn = zext i8 %i.hm to i32
  %i.ho = add nsw i32 %i.hn, -48                  ; 2 uses
  %i.hp = icmp ugt i32 %i.ho, 9
  %i.hq = zext nneg i32 %i.ho to i64
  %i.hr = add i64 %i.hl, %i.hq                    ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %i.hl
  %or.cond.i = select i1 %i.hp, i1 true, i1 %i.hs, !prof !15
  br i1 %or.cond.i, label %.lr.ph.split.i.i.i.preheader, label %.preheader56.i.i, !prof !15

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.at
  %.sroa.0.269.i.i = phi ptr [ %i.hz, %bb.at ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.hy, %bb.at ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.ib, %bb.at ], [ 0, %.preheader.i.i ]
  %i.ht = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !1560, !noundef !4
  %i.hu = zext i8 %i.ht to i32
  %i.hv = add nsw i32 %i.hu, -48                  ; 2 uses
  %i.hw = icmp ult i32 %i.hv, 10
  br i1 %i.hw, label %bb.at, label %.lr.ph.split.i.i.i.preheader

bb.at:                                            ; preds = %.lr.ph.i.i
  %i.hx = mul i64 %.sroa.042.267.i.i, 10
  %i.hy = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.ia = zext nneg i32 %i.hv to i64
  %i.ib = add i64 %i.hx, %i.ia                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.hy, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.backedge, %.lr.ph.split.i.i.i.preheader
  %i.ic = phi i64 [ %.ph, %.lr.ph.split.i.i.i.preheader ], [ %i.ir, %.lr.ph.split.i.i.i.backedge ] ; 4 uses
  %i.id = sub nuw i64 %.pn2.i.i, %i.ic            ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.pn4.i.i, i64 %i.ic ; 2 uses
  %i.if = icmp samesign ult i64 %i.id, 16
  br i1 %i.if, label %.preheader.i.i.i.i, label %bb.au

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.id, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.au:                                            ; preds = %.lr.ph.split.i.i.i
  %i.ig = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 60, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ie, i64 noundef range(i64 0, -9223372036854775808) %i.id), !noalias !1561
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.av, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.id, %bb.av ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.av ]
  %i.ih = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.ii = insertvalue { i64, i64 } %i.ih, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.av
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.im, %bb.av ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 %.sroa.01.05.i.i.i.i
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !1562, !noalias !1563, !noundef !4
  %i.il = icmp eq i8 %i.ik, 60
  br i1 %i.il, label %._crit_edge.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i.i.i.i
  %i.im = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.im, %i.id
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.au
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.ii, %._crit_edge.i.i.i.i ], [ %i.ig, %bb.au ] ; 2 uses
  %i.in = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.io = trunc nuw i64 %i.in to i1
  br i1 %i.io, label %bb.aw, label %_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.i

bb.aw:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  %i.ip = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.iq = add i64 %i.ic, 1
  %i.ir = add i64 %i.iq, %i.ip                    ; 2 uses
  %.not12.i.i.i = icmp ugt i64 %i.ir, %.pn2.i.i   ; 2 uses
  %i.is = add i64 %i.ip, %i.ic                    ; 3 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.is, %.pn2.i.i
  br i1 %or.cond.i.not.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not12.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.i, label %.lr.ph.split.i.i.i.backedge

bb.ay:                                            ; preds = %bb.aw
  %i.it = getelementptr inbounds nuw i8, ptr %.pn4.i.i, i64 %i.is
  %lhsc.i.i = load i8, ptr %i.it, align 1, !alias.scope !1564
  %i.iu = icmp eq i8 %lhsc.i.i, 60                ; 2 uses
  %brmerge.i = or i1 %.not12.i.i.i, %i.iu
  br i1 %brmerge.i, label %_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.split.loop.exit.i, label %.lr.ph.split.i.i.i.backedge

.lr.ph.split.i.i.i.backedge:                      ; preds = %bb.ay, %bb.ax
  br label %.lr.ph.split.i.i.i

_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.split.loop.exit.i: ; preds = %bb.ay
  %.mux10.le.i = select i1 %i.iu, ptr %.pn4.i.i, ptr null
  br label %_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.i

_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.ax, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i, %_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.split.loop.exit.i
  %.sroa.5.0.i = phi i64 [ %i.is, %_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.split.loop.exit.i ], [ undef, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i ], [ undef, %bb.ax ]
  %.sroa.02.0.i = phi ptr [ %.mux10.le.i, %_RINvMNtCshzWfHUSfYae_4core3stre10split_oncecECs8Xq8PKFYOms_3hir.exit.split.loop.exit.i ], [ null, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i ], [ null, %bb.ax ] ; 2 uses
  %.not.i.i4 = icmp eq ptr %.sroa.02.0.i, null    ; 2 uses
  %.pn4.i.i5 = select i1 %.not.i.i4, ptr %.pn4.i.i, ptr %.sroa.02.0.i ; 2 uses
  %.sroa.4.0.copyload.pn.i.i = select i1 %.not.i.i4, i64 %.pn2.i.i, i64 %.sroa.5.0.i ; 3 uses
  %i.iv = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pn4.i.i5, i64 noundef %.sroa.4.0.copyload.pn.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 2) ; 2 uses
  %i.iw = add i64 %.sroa.4.0.copyload.pn.i.i, -2
  %.sroa.6.0.i.i = select i1 %i.iv, i64 %i.iw, i64 %.sroa.4.0.copyload.pn.i.i
  %.sroa.0.0.idx.i2.i = select i1 %i.iv, i64 2, i64 0
  %.sroa.0.0.i3.i = getelementptr inbounds nuw i8, ptr %.pn4.i.i5, i64 %.sroa.0.0.idx.i2.i
  %i.ix = tail call noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i3.i, i64 noundef %.sroa.6.0.i.i)
  br label %_RNCNCNvNtCs8Xq8PKFYOms_3hir5attrs20doc_modpath_from_str00B7_.exit

_RNvMsv_NtCshzWfHUSfYae_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %.preheader56.i.i, %bb.at
end_hunk_0
