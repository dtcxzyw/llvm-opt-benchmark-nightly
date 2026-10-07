Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.03?download=true
inline.NumInlined: 7491
inline.NumDeleted: 2575
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_boolRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr:bb.a
          to label %.thread39 unwind label %bb.m, !dbg !32446

bb.m:                                             ; preds = %bb.o, %.thread, %bb.n, %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !32449
  unreachable, !dbg !32449

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(56) %i.f) #43
          to label %.thread39 unwind label %bb.m, !dbg !32447

.thread39:                                        ; preds = %bb.n, %bb.l, %.thread21
  %.sroa.05.126 = phi i1 [ true, %.thread21 ], [ false, %bb.l ], [ true, %bb.n ]
  %.pn.pn25 = phi { ptr, i32 } [ %i.y, %.thread21 ], [ %i.an, %bb.l ], [ %lpad.phi, %bb.n ] ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !dbg !32450, !alias.scope !32399, !noundef !3817
  %i.aq = icmp eq ptr %i.ap, null, !dbg !32450
  br i1 %i.aq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit, label %bb.o, !dbg !32450

bb.o:                                             ; preds = %.thread39
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.m, !dbg !32451

bb.p:                                             ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit
  %.pn.pn.pn19 = phi { ptr, i32 } [ %.pn.pn.pn20, %.thread ], [ %.pn.pn25, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit ]
  resume { ptr, i32 } %.pn.pn.pn19, !dbg !32449

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit
  %.pn.pn.pn20 = phi { ptr, i32 } [ %.pn.pn25, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit ], [ %lpad.loopexit43, %.thread.loopexit ], [ %lpad.loopexit.split-lp44, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.h) #43
          to label %bb.p unwind label %bb.m, !dbg !32419
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32452 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !32652
  %.val = load ptr, ptr %1, align 8, !dbg !32653, !nonnull !3817, !noundef !3817
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !32653
  %.val77 = load ptr, ptr %i.m, align 8, !dbg !32653, !nonnull !3817, !align !3993, !noundef !3817
  %i.n = getelementptr inbounds nuw i8, ptr %.val77, i64 64, !dbg !32654
  %i.o = load ptr, ptr %i.n, align 8, !dbg !32654, !invariant.load !3817, !nonnull !3817
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val) #46, !dbg !32655
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #46, !dbg !32656
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32591), !dbg !32657
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !32658
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !32658 ; 4 uses
  br label %.lr.ph.i, !dbg !32659

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !32660 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !32661, !alias.scope !32591, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !32661
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !32661, !alias.scope !32591, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !32662
  %i.u = load ptr, ptr %i.t, align 8, !dbg !32662, !invariant.load !3817, !noalias !32591, !nonnull !3817
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #46
          to label %.noexc unwind label %.thread.loopexit, !dbg !32663, !inline_history !1024

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !32664
  %i.x = load ptr, ptr %i.w, align 8, !dbg !32664, !invariant.load !3817, !noalias !32591, !nonnull !3817
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #46
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !32665, !inline_history !1024

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !32666 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !32667 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !32668
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !32659

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !32669

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !32670
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !32671

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !32672
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph170 unwind label %bb.d, !dbg !32673

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph170:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !32605

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph170, %bb.m
  %.sroa.0.0168 = phi i64 [ 0, %.lr.ph170 ], [ %i.bi, %bb.m ]
  %.sroa.034.0167 = phi ptr [ %1, %.lr.ph170 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0167, i64 16, !dbg !32674 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0167, align 8, !dbg !32675, !nonnull !3817, !noundef !3817
  %i.ag = getelementptr i8, ptr %.sroa.034.0167, i64 8, !dbg !32675
  %.sroa.034.0.val76 = load ptr, ptr %i.ag, align 8, !dbg !32675, !nonnull !3817, !align !3993, !noundef !3817
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val76, i64 32, !dbg !32676
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !32676, !invariant.load !3817, !nonnull !3817
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !32677 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !32676 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !32676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32596
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !32678
  %i.an = load ptr, ptr %i.am, align 8, !dbg !32678, !invariant.load !3817, !nonnull !3817
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !32679

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !32680, !noundef !3817
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !32681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32596
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !32682, !prof !3923

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #40
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !32683

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !32684 ; 2 uses
  %.val80 = load ptr, ptr %i.aq, align 8, !dbg !32684, !noundef !3817 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !32684 ; 2 uses
  %.val81 = load i64, ptr %i.ar, align 8, !dbg !32684, !noundef !3817 ; 3 uses
  %i.as = icmp ult i64 %.val81, 2, !dbg !32685
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !32685

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val82.pre = load ptr, ptr %i.aq, align 8, !dbg !32686
  %.val83.pre = load i64, ptr %i.ar, align 8, !dbg !32686
  br label %._crit_edge, !dbg !32686

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val83 = phi i64 [ %.val83.pre, %._crit_edge.loopexit ], [ %.val81, %bb.j ], !dbg !32686 ; 2 uses
  %.val82 = phi ptr [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !32686 ; 2 uses
  %.val79 = load i32, ptr %.val82, align 4, !dbg !32687, !noundef !3817 ; 2 uses
  %.not.i91 = icmp ne i64 %.val83, 0, !dbg !32688
  call void @llvm.assume(i1 %.not.i91), !dbg !32688
  %i.at = getelementptr [4 x i8], ptr %.val82, i64 %.val83, !dbg !32689
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !32689 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i32, ptr %i.au, align 4, !dbg !32690, !noundef !3817
  %i.aw = sub nuw nsw i32 %i.av, %.val79, !dbg !32691
  %i.ax = sext i32 %i.aw to i64, !dbg !32692
  %i.ay = icmp eq i32 %.val79, 0, !dbg !32693
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !32693

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !32694
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !32695, !nonnull !3817, !noundef !3817
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !32695
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !32695, !nonnull !3817, !align !3993, !noundef !3817
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !32695
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !32695, !invariant.load !3817, !nonnull !3817
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !32696

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !32697
  %i.bh = zext i1 %i.bg to i64, !dbg !32698
  br label %bb.m, !dbg !32698

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !32699
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0168, !dbg !32700 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !32701
  br i1 %i.bj, label %._crit_edge171, label %bb.e, !dbg !32605

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0166 = phi ptr [ %i.bl, %bb.r ], [ %.val80, %bb.j ] ; 3 uses
  %.sroa.6.0165 = phi i64 [ %i.bk, %bb.r ], [ %.val81, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0166) ]
  %i.bk = add i64 %.sroa.6.0165, -1, !dbg !32702
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0166, i64 4, !dbg !32703 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !32704, !alias.scope !32606, !noundef !3817
  %i.bn = load i32, ptr %.sroa.099.0166, align 4, !dbg !32705, !alias.scope !32606, !noundef !3817
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !32706       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32609), !dbg !32707
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !32708
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !32709

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !32710, !alias.scope !32609, !noalias !32610, !noundef !3817 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !32711
  call void @llvm.assume(i1 %.not.i92), !dbg !32711
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !32712, !alias.scope !32609, !noalias !32610, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !32713
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !32713 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !32714
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !32715, !noalias !32611, !noundef !3817
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !32716 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !32716
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !32716
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !32717

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !32718, !range !3988, !alias.scope !32612, !noalias !32610, !noundef !3817
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !32719
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !32719

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !32720

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !32721, !alias.scope !32612, !noalias !32610
  br label %bb.r, !dbg !32720

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32722
  store i64 2, ptr %i.bz, align 8, !dbg !32722
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !32722
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !32722
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !32722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @187, i64 12), i64 60, i1 false), !dbg !32722
  store i8 42, ptr %0, align 8, !dbg !32722
  br label %bb.s, !dbg !32723

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !32721
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !32724
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !32725, !noalias !32610
  %i.cc = add i64 %i.bq, 1, !dbg !32726
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !32726, !alias.scope !32612, !noalias !32610
  %i.cd = icmp ult i64 %.sroa.6.0165, 3, !dbg !32685
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !32685

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.t, !dbg !32727

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !32728

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !32727
  unreachable, !dbg !32727

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.d, !dbg !32729

._crit_edge171:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !32730
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !32730

bb.v:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !32731
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listlB3k_Es_0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !32732

bb.w:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !32733
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlBU_E0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !32734

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32635
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !32735
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !32735, !nonnull !3817, !noundef !3817
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !32736
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !32736, !noundef !3817
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !32635

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !32737

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !32738, !range !4315, !noundef !3817 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !32738
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !32739
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !32739 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !32739
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !32739 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !32740

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !32741
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !32742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !32741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32743
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !32742
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !32742
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !32742
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !32742
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !32742
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !32742
  store i8 42, ptr %0, align 8, !dbg !32742
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !32737

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !32743
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !32737

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !32737
  br label %bb.ad, !dbg !32744

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !32745 ; 2 uses
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !32745 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !32746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !32746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !32747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !32748, !noalias !32638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !32747
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !32749

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !32737
  br label %bb.s, !dbg !32723

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !32750
  unreachable, !dbg !32750

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !32647
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !32751
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !32751, !nonnull !3817, !noundef !3817
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !32752
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !32752, !noundef !3817
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !32647

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !32753
  br label %bb.s, !dbg !32723

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !32764
  %i.de = load ptr, ptr %i.k, align 8, !dbg !32768, !alias.scope !32650, !noundef !3817
  %i.df = icmp eq ptr %i.de, null, !dbg !32768
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit, label %bb.ar, !dbg !32768

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit unwind label %.thread.loopexit.split-lp, !dbg !32769

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !32765
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !32669
  br label %bb.an, !dbg !32766

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit154, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.thread123 unwind label %bb.af, !dbg !32764

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !32770, !alias.scope !32651, !noundef !3817
  %i.dh = icmp eq ptr %i.dg, null, !dbg !32770
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98, label %bb.as, !dbg !32770

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 unwind label %bb.af, !dbg !32771

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !32750

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 ], [ %lpad.loopexit157, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.at unwind label %bb.af, !dbg !32669
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !32772 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !32972
  %.val84 = load ptr, ptr %1, align 8, !dbg !32973, !nonnull !3817, !noundef !3817
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !32973
  %.val85 = load ptr, ptr %i.m, align 8, !dbg !32973, !nonnull !3817, !align !3993, !noundef !3817
  %i.n = getelementptr inbounds nuw i8, ptr %.val85, i64 64, !dbg !32974
  %i.o = load ptr, ptr %i.n, align 8, !dbg !32974, !invariant.load !3817, !nonnull !3817
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val84) #46, !dbg !32975
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #46, !dbg !32976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32911), !dbg !32977
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !32978
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !32978 ; 4 uses
  br label %.lr.ph.i, !dbg !32979

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !32980 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !32981, !alias.scope !32911, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !32981
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !32981, !alias.scope !32911, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !32982
  %i.u = load ptr, ptr %i.t, align 8, !dbg !32982, !invariant.load !3817, !noalias !32911, !nonnull !3817
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #46
          to label %.noexc unwind label %.thread.loopexit, !dbg !32983, !inline_history !1042

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !32984
  %i.x = load ptr, ptr %i.w, align 8, !dbg !32984, !invariant.load !3817, !noalias !32911, !nonnull !3817
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #46
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !32985, !inline_history !1042

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !32986 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !32987 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !32988
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !32979

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !32989

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !32990
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !32991

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !32992
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph170 unwind label %bb.d, !dbg !32993

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph170:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !32925

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph170, %bb.m
  %.sroa.0.0168 = phi i64 [ 0, %.lr.ph170 ], [ %i.bi, %bb.m ]
  %.sroa.034.0167 = phi ptr [ %1, %.lr.ph170 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0167, i64 16, !dbg !32994 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0167, align 8, !dbg !32995, !nonnull !3817, !noundef !3817
  %i.ag = getelementptr i8, ptr %.sroa.034.0167, i64 8, !dbg !32995
  %.sroa.034.0.val83 = load ptr, ptr %i.ag, align 8, !dbg !32995, !nonnull !3817, !align !3993, !noundef !3817
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val83, i64 32, !dbg !32996
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !32996, !invariant.load !3817, !nonnull !3817
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !32997 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !32996 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !32996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !32916
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !32998
  %i.an = load ptr, ptr %i.am, align 8, !dbg !32998, !invariant.load !3817, !nonnull !3817
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !32999

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !33000, !noundef !3817
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !33001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !32916
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !33002, !prof !3923

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #40
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33003

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !33004 ; 2 uses
  %.val77 = load ptr, ptr %i.aq, align 8, !dbg !33004, !noundef !3817 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !33004 ; 2 uses
  %.val78 = load i64, ptr %i.ar, align 8, !dbg !33004, !noundef !3817 ; 3 uses
  %i.as = icmp ult i64 %.val78, 2, !dbg !33005
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !33005

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val79.pre = load ptr, ptr %i.aq, align 8, !dbg !33006
  %.val80.pre = load i64, ptr %i.ar, align 8, !dbg !33006
  br label %._crit_edge, !dbg !33006

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val80 = phi i64 [ %.val80.pre, %._crit_edge.loopexit ], [ %.val78, %bb.j ], !dbg !33006 ; 2 uses
  %.val79 = phi ptr [ %.val79.pre, %._crit_edge.loopexit ], [ %.val77, %bb.j ], !dbg !33006 ; 2 uses
  %.val76 = load i32, ptr %.val79, align 4, !dbg !33007, !noundef !3817 ; 2 uses
  %.not.i91 = icmp ne i64 %.val80, 0, !dbg !33008
  call void @llvm.assume(i1 %.not.i91), !dbg !33008
  %i.at = getelementptr [4 x i8], ptr %.val79, i64 %.val80, !dbg !33009
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !33009 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i32, ptr %i.au, align 4, !dbg !33010, !noundef !3817
  %i.aw = sub nuw nsw i32 %i.av, %.val76, !dbg !33011
  %i.ax = sext i32 %i.aw to i64, !dbg !33012
  %i.ay = icmp eq i32 %.val76, 0, !dbg !33013
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !33013

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !33014
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !33015, !nonnull !3817, !noundef !3817
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !33015
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !33015, !nonnull !3817, !align !3993, !noundef !3817
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !33015
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !33015, !invariant.load !3817, !nonnull !3817
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !33016

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !33017
  %i.bh = zext i1 %i.bg to i64, !dbg !33018
  br label %bb.m, !dbg !33018

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !33019
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0168, !dbg !33020 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !33021
  br i1 %i.bj, label %._crit_edge171, label %bb.e, !dbg !32925

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0166 = phi ptr [ %i.bl, %bb.r ], [ %.val77, %bb.j ] ; 3 uses
  %.sroa.6.0165 = phi i64 [ %i.bk, %bb.r ], [ %.val78, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0166) ]
  %i.bk = add i64 %.sroa.6.0165, -1, !dbg !33022
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0166, i64 4, !dbg !33023 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !33024, !alias.scope !32926, !noundef !3817
  %i.bn = load i32, ptr %.sroa.099.0166, align 4, !dbg !33025, !alias.scope !32926, !noundef !3817
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !33026       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32929), !dbg !33027
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !33028
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !33029

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !33030, !alias.scope !32929, !noalias !32930, !noundef !3817 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !33031
  call void @llvm.assume(i1 %.not.i92), !dbg !33031
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !33032, !alias.scope !32929, !noalias !32930, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !33033
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !33033 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !33034
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !33035, !noalias !32931, !noundef !3817
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !33036 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !33036
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !33036
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !33037

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !33038, !range !3988, !alias.scope !32932, !noalias !32930, !noundef !3817
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !33039
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !33039

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !33040

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !33041, !alias.scope !32932, !noalias !32930
  br label %bb.r, !dbg !33040

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33042
  store i64 2, ptr %i.bz, align 8, !dbg !33042
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33042
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !33042
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !33042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @187, i64 12), i64 60, i1 false), !dbg !33042
  store i8 42, ptr %0, align 8, !dbg !33042
  br label %bb.s, !dbg !33043

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !33041
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !33044
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !33045, !noalias !32930
  %i.cc = add i64 %i.bq, 1, !dbg !33046
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !33046, !alias.scope !32932, !noalias !32930
  %i.cd = icmp ult i64 %.sroa.6.0165, 3, !dbg !33005
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !33005

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.t, !dbg !33047

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !33048

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !33047
  unreachable, !dbg !33047

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.d, !dbg !33049

._crit_edge171:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !33050
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !33050

bb.v:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !33051
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCINvNtNtB10_7compute11concatenate16concatenate_listlBU_Es_0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33052

bb.w:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !33053
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRB1c_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlB3C_E0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33054

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !32955
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !33055
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !33055, !nonnull !3817, !noundef !3817
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !33056
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !33056, !noundef !3817
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !32955

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !33057

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !33058, !range !4315, !noundef !3817 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !33058
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !33059
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !33059 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !33059
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !33059 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !33060

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !33061
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !33061
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33063
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33062
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !33062
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33062
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !33062
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33062
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !33062
  store i8 42, ptr %0, align 8, !dbg !33062
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33057

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33063
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33057

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33057
  br label %bb.ad, !dbg !33064

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !33065 ; 2 uses
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !33065 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !33066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !33066
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33068, !noalias !32958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !33067
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !33069

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33057
  br label %bb.s, !dbg !33043

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !33070
  unreachable, !dbg !33070

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !32967
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !33071
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !33071, !nonnull !3817, !noundef !3817
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !33072
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !33072, !noundef !3817
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !32967

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr:bb.a
_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !33084
  %i.de = load ptr, ptr %i.k, align 8, !dbg !33088, !alias.scope !32970, !noundef !3817
  %i.df = icmp eq ptr %i.de, null, !dbg !33088
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit, label %bb.ar, !dbg !33088

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit unwind label %.thread.loopexit.split-lp, !dbg !33089

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !33085
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !32989
  br label %bb.an, !dbg !33086

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit154, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.thread123 unwind label %bb.af, !dbg !33084

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !33090, !alias.scope !32971, !noundef !3817
  %i.dh = icmp eq ptr %i.dg, null, !dbg !33090
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98, label %bb.as, !dbg !33090

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 unwind label %bb.af, !dbg !33091

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !33070

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 ], [ %lpad.loopexit157, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.at unwind label %bb.af, !dbg !32989
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33092 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !33295
  %.val85 = load ptr, ptr %1, align 8, !dbg !33296, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %.val.i = load ptr, ptr %.val85, align 8, !dbg !33297, !nonnull !3817, !noundef !3817
  %i.m = getelementptr i8, ptr %.val85, i64 8, !dbg !33297
  %.val1.i = load ptr, ptr %i.m, align 8, !dbg !33297, !nonnull !3817, !align !3993, !noundef !3817
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 64, !dbg !33298
  %i.o = load ptr, ptr %i.n, align 8, !dbg !33298, !invariant.load !3817, !nonnull !3817
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val.i) #46, !dbg !33299
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #46, !dbg !33300
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33234), !dbg !33301
  %.idx.i = shl nuw nsw i64 %2, 3, !dbg !33302
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !33302 ; 4 uses
  br label %.lr.ph.i, !dbg !33303

.lr.ph.i:                                         ; preds = %bb.a, %.noexc86
  %.sroa.0.010.i = phi i64 [ %i.z, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.02.09.i = phi i64 [ %i.aa, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.06.08.i = phi ptr [ %i.r, %.noexc86 ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8, !dbg !33304 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !dbg !33305, !alias.scope !33234, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val.i, align 8, !dbg !33306, !noalias !33234, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.0.val.i, i64 8, !dbg !33306
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !33306, !noalias !33234, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !33307
  %i.u = load ptr, ptr %i.t, align 8, !dbg !33307, !invariant.load !3817, !noalias !33234, !nonnull !3817
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.val.i.i) #46
          to label %.noexc unwind label %.thread.loopexit, !dbg !33308, !inline_history !1061

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 88, !dbg !33309
  %i.x = load ptr, ptr %i.w, align 8, !dbg !33309, !invariant.load !3817, !noalias !33234, !nonnull !3817
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.val.i.i) #46
          to label %.noexc86 unwind label %.thread.loopexit, !dbg !33310, !inline_history !1061

.noexc86:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.010.i, !dbg !33311 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.09.i, !dbg !33312 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !33313
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !33303

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !33314

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit157 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !33315
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !33316

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !33317
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph170 unwind label %bb.d, !dbg !33318

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph170:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !33248

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph170, %bb.m
  %.sroa.0.0168 = phi i64 [ 0, %.lr.ph170 ], [ %i.bi, %bb.m ]
  %.sroa.034.0167 = phi ptr [ %1, %.lr.ph170 ], [ %i.af, %bb.m ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0167, i64 8, !dbg !33319 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0167, align 8, !dbg !33320, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %.val.i87 = load ptr, ptr %.sroa.034.0.val, align 8, !dbg !33321, !nonnull !3817, !noundef !3817
  %i.ag = getelementptr i8, ptr %.sroa.034.0.val, i64 8, !dbg !33321
  %.val1.i88 = load ptr, ptr %i.ag, align 8, !dbg !33321, !nonnull !3817, !align !3993, !noundef !3817
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i88, i64 32, !dbg !33322
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !33322, !invariant.load !3817, !nonnull !3817
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.val.i87)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !33323 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !33322 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !33322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33239
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !33324
  %i.an = load ptr, ptr %i.am, align 8, !dbg !33324, !invariant.load !3817, !nonnull !3817
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !33325

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !33326, !noundef !3817
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !33327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33239
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !33328, !prof !3923

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #40
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33329

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !33330 ; 2 uses
  %.val77 = load ptr, ptr %i.aq, align 8, !dbg !33330, !noundef !3817 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !33330 ; 2 uses
  %.val78 = load i64, ptr %i.ar, align 8, !dbg !33330, !noundef !3817 ; 3 uses
  %i.as = icmp ult i64 %.val78, 2, !dbg !33331
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !33331

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val79.pre = load ptr, ptr %i.aq, align 8, !dbg !33332
  %.val80.pre = load i64, ptr %i.ar, align 8, !dbg !33332
  br label %._crit_edge, !dbg !33332

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val80 = phi i64 [ %.val80.pre, %._crit_edge.loopexit ], [ %.val78, %bb.j ], !dbg !33332 ; 2 uses
  %.val79 = phi ptr [ %.val79.pre, %._crit_edge.loopexit ], [ %.val77, %bb.j ], !dbg !33332 ; 2 uses
  %.val76 = load i32, ptr %.val79, align 4, !dbg !33333, !noundef !3817 ; 2 uses
  %.not.i91 = icmp ne i64 %.val80, 0, !dbg !33334
  call void @llvm.assume(i1 %.not.i91), !dbg !33334
  %i.at = getelementptr [4 x i8], ptr %.val79, i64 %.val80, !dbg !33335
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !33335 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i32, ptr %i.au, align 4, !dbg !33336, !noundef !3817
  %i.aw = sub nuw nsw i32 %i.av, %.val76, !dbg !33337
  %i.ax = sext i32 %i.aw to i64, !dbg !33338
  %i.ay = icmp eq i32 %.val76, 0, !dbg !33339
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !33339

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !33340
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !33341, !nonnull !3817, !noundef !3817
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !33341
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !33341, !nonnull !3817, !align !3993, !noundef !3817
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !33341
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !33341, !invariant.load !3817, !nonnull !3817
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !33342

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !33343
  %i.bh = zext i1 %i.bg to i64, !dbg !33344
  br label %bb.m, !dbg !33344

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !33345
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0168, !dbg !33346 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !33347
  br i1 %i.bj, label %._crit_edge171, label %bb.e, !dbg !33248

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0166 = phi ptr [ %i.bl, %bb.r ], [ %.val77, %bb.j ] ; 3 uses
  %.sroa.6.0165 = phi i64 [ %i.bk, %bb.r ], [ %.val78, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0166) ]
  %i.bk = add i64 %.sroa.6.0165, -1, !dbg !33348
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0166, i64 4, !dbg !33349 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !33350, !alias.scope !33249, !noundef !3817
  %i.bn = load i32, ptr %.sroa.099.0166, align 4, !dbg !33351, !alias.scope !33249, !noundef !3817
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !33352       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33252), !dbg !33353
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !33354
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !33355

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !33356, !alias.scope !33252, !noalias !33253, !noundef !3817 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !33357
  call void @llvm.assume(i1 %.not.i92), !dbg !33357
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !33358, !alias.scope !33252, !noalias !33253, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !33359
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !33359 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !33360
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !33361, !noalias !33254, !noundef !3817
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !33362 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !33362
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !33362
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !33363

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !33364, !range !3988, !alias.scope !33255, !noalias !33253, !noundef !3817
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !33365
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !33365

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !33366

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !33367, !alias.scope !33255, !noalias !33253
  br label %bb.r, !dbg !33366

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33368
  store i64 2, ptr %i.bz, align 8, !dbg !33368
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33368
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !33368
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !33368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @187, i64 12), i64 60, i1 false), !dbg !33368
  store i8 42, ptr %0, align 8, !dbg !33368
  br label %bb.s, !dbg !33369

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !33367
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !33370
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !33371, !noalias !33253
  %i.cc = add i64 %i.bq, 1, !dbg !33372
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !33372, !alias.scope !33255, !noalias !33253
  %i.cd = icmp ult i64 %.sroa.6.0165, 3, !dbg !33331
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !33331

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.t, !dbg !33373

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !33374

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !33373
  unreachable, !dbg !33373

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.d, !dbg !33375

._crit_edge171:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !33376
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !33376

bb.v:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !33377
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterRINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listlB3k_Es_0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33378

bb.w:                                             ; preds = %._crit_edge171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !33379
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlB3C_E0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33380

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !33278
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !33381
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !33381, !nonnull !3817, !noundef !3817
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !33382
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !33382, !noundef !3817
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !33278

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !33383

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !33384, !range !4315, !noundef !3817 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !33384
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !33385
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !33385 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !33385
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !33385 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !33386

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !33387
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !33387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33389
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33388
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !33388
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33388
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !33388
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33388
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !33388
  store i8 42, ptr %0, align 8, !dbg !33388
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33383

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33389
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33383

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33383
  br label %bb.ad, !dbg !33390

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !33391 ; 2 uses
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !33391 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !33392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !33392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33393
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33394, !noalias !33281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !33393
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !33395

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33383
  br label %bb.s, !dbg !33369

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !33396
  unreachable, !dbg !33396

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !33290
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !33397
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !33397, !nonnull !3817, !noundef !3817
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !33398
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !33398, !noundef !3817
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !33290

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !33410
  %i.de = load ptr, ptr %i.k, align 8, !dbg !33414, !alias.scope !33293, !noundef !3817
  %i.df = icmp eq ptr %i.de, null, !dbg !33414
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit, label %bb.ar, !dbg !33414

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit unwind label %.thread.loopexit.split-lp, !dbg !33415

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !33411
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !33314
  br label %bb.an, !dbg !33412

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit154, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.thread123 unwind label %bb.af, !dbg !33410

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !33416, !alias.scope !33294, !noundef !3817
  %i.dh = icmp eq ptr %i.dg, null, !dbg !33416
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98, label %bb.as, !dbg !33416

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 unwind label %bb.af, !dbg !33417

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !33396

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit98 ], [ %lpad.loopexit157, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.at unwind label %bb.af, !dbg !33314
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33418 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !33602
  %.val78 = load ptr, ptr %1, align 8, !dbg !33603, !nonnull !3817, !noundef !3817
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !33603
  %.val79 = load ptr, ptr %i.m, align 8, !dbg !33603, !nonnull !3817, !align !3993, !noundef !3817
  %i.n = getelementptr inbounds nuw i8, ptr %.val79, i64 64, !dbg !33604
  %i.o = load ptr, ptr %i.n, align 8, !dbg !33604, !invariant.load !3817, !nonnull !3817
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val78) #46, !dbg !33605
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #46, !dbg !33606
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33543), !dbg !33607
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !33608
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !33608 ; 4 uses
  br label %.lr.ph.i, !dbg !33609

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !33610 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !33611, !alias.scope !33543, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !33611
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !33611, !alias.scope !33543, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !33612
  %i.u = load ptr, ptr %i.t, align 8, !dbg !33612, !invariant.load !3817, !noalias !33543, !nonnull !3817
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #46
          to label %.noexc unwind label %.thread.loopexit, !dbg !33613, !inline_history !1024

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !33614
  %i.x = load ptr, ptr %i.w, align 8, !dbg !33614, !invariant.load !3817, !noalias !33543, !nonnull !3817
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #46
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !33615, !inline_history !1024

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !33616 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !33617 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !33618
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !33609

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !33619

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !33620
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !33621

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !33622
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !33623

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !33559

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph161, %bb.m
  %.sroa.0.0159 = phi i64 [ 0, %.lr.ph161 ], [ %i.bh, %bb.m ]
  %.sroa.034.0158 = phi ptr [ %1, %.lr.ph161 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 16, !dbg !33624 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !33625, !nonnull !3817, !noundef !3817
  %i.ag = getelementptr i8, ptr %.sroa.034.0158, i64 8, !dbg !33625
  %.sroa.034.0.val77 = load ptr, ptr %i.ag, align 8, !dbg !33625, !nonnull !3817, !align !3993, !noundef !3817
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val77, i64 32, !dbg !33626
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !33626, !invariant.load !3817, !nonnull !3817
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !33627 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !33626 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !33626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33548
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !33628
  %i.an = load ptr, ptr %i.am, align 8, !dbg !33628, !invariant.load !3817, !nonnull !3817
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !33629

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !33630, !noundef !3817
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !33631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33548
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !33632, !prof !3923

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #40
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33633

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !33634 ; 2 uses
  %.val82 = load ptr, ptr %i.aq, align 8, !dbg !33634, !noundef !3817 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !33634 ; 2 uses
  %.val83 = load i64, ptr %i.ar, align 8, !dbg !33634, !noundef !3817 ; 3 uses
  %i.as = icmp ult i64 %.val83, 2, !dbg !33635
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !33635

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !33636, !alias.scope !33557, !noalias !33558
  br label %.lr.ph, !dbg !33637

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val84.pre = load ptr, ptr %i.aq, align 8, !dbg !33638
  %.val85.pre = load i64, ptr %i.ar, align 8, !dbg !33638
  br label %._crit_edge, !dbg !33638

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !33638 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !33638 ; 2 uses
  %.val76 = load i64, ptr %.val84, align 8, !dbg !33639, !noundef !3817 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !33640
  call void @llvm.assume(i1 %.not.i91), !dbg !33640
  %i.at = getelementptr [8 x i8], ptr %.val84, i64 %.val85, !dbg !33641
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !33641 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i64, ptr %i.au, align 8, !dbg !33642, !noundef !3817
  %i.aw = sub nuw nsw i64 %i.av, %.val76, !dbg !33643
  %i.ax = icmp eq i64 %.val76, 0, !dbg !33644
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !33644

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !33645
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !33646, !nonnull !3817, !noundef !3817
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !33646
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !33646, !nonnull !3817, !align !3993, !noundef !3817
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !33646
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !33646, !invariant.load !3817, !nonnull !3817
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !33647

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !33648
  %i.bg = zext i1 %i.bf to i64, !dbg !33649
  br label %bb.m, !dbg !33649

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !33650
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !33651 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !33652
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !33559

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !33636 ; 4 uses
  %.sroa.0100.0157 = phi ptr [ %i.bl, %bb.o ], [ %.val82, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0156 = phi i64 [ %i.bk, %bb.o ], [ %.val83, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0157) ]
  %i.bk = add i64 %.sroa.6.0156, -1, !dbg !33653
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0157, i64 8, !dbg !33654 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !33655, !alias.scope !33560, !noundef !3817
  %i.bn = load i64, ptr %.sroa.0100.0157, align 8, !dbg !33656, !alias.scope !33560, !noundef !3817
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !33657
  call void @llvm.experimental.noalias.scope.decl(metadata !33557), !dbg !33658
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !33659, !alias.scope !33557, !noalias !33558, !nonnull !3817 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !33659
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !33659
  %i.bs = load i64, ptr %i.br, align 8, !dbg !33660, !noalias !33563, !noundef !3817
  %i.bt = load i64, ptr %i.j, align 8, !dbg !33661, !range !3988, !alias.scope !33564, !noalias !33558, !noundef !3817
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !33637
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !33637

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !33662

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !33663, !alias.scope !33564, !noalias !33558
  br label %bb.o, !dbg !33662

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !33663
  %i.bw = add i64 %i.bo, %i.bs, !dbg !33664
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !33665
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !33666, !noalias !33558
  %i.by = add i64 %i.bj, 1, !dbg !33667           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !33667, !alias.scope !33564, !noalias !33558
  %i.bz = icmp ult i64 %.sroa.6.0156, 3, !dbg !33635
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !33635

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.q, !dbg !33668

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !33669

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !33668
  unreachable, !dbg !33668

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.d, !dbg !33670

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !33671
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !33671

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !33672
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listxB3k_Es_0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33673

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !33674
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxBU_E0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33675

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !33584
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !33676
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !33676, !nonnull !3817, !noundef !3817
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !33677
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !33677, !noundef !3817
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !33584

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !33678

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !33679, !range !4315, !noundef !3817 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !33679
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !33680
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !33680 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !33680
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !33680 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !33681

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !33682
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !33682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33684
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33683
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !33683
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33683
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !33683
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33683
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !33683
  store i8 42, ptr %0, align 8, !dbg !33683
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33678

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33684
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33678

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33678
  br label %bb.aa, !dbg !33685

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !33686 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !33686 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !33687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !33687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33689, !noalias !33587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !33688
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !33690

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33678
  br label %bb.p, !dbg !33691

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !33692
  unreachable, !dbg !33692

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !33597
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !33693
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !33693, !nonnull !3817, !noundef !3817
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !33694
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !33694, !noundef !3817
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !33597

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !33695

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !33696, !range !4315, !noundef !3817 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !33696
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !33697
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !33697 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !33697
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !33697 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !33698

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !33699
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !33699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !33701
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33700
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !33700
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33700
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !33700
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33700
end_hunk_3
begin_hunk_4_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !33706
  %i.da = load ptr, ptr %i.k, align 8, !dbg !33710, !alias.scope !33600, !noundef !3817
  %i.db = icmp eq ptr %i.da, null, !dbg !33710
  br i1 %i.db, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit, label %bb.ao, !dbg !33710

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit unwind label %.thread.loopexit.split-lp, !dbg !33711

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !33707
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !33619
  br label %bb.ak, !dbg !33708

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ae, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.cs, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit147, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.thread119 unwind label %bb.ac, !dbg !33706

.thread119:                                       ; preds = %bb.am, %.loopexit.split-lp, %bb.q, %bb.d
  %.pn72124 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ac, %bb.d ], [ %i.cz, %bb.am ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1123 = phi i1 [ true, %bb.q ], [ true, %bb.d ], [ false, %bb.am ], [ true, %.loopexit.split-lp ]
  %i.dc = load ptr, ptr %i.k, align 8, !dbg !33712, !alias.scope !33601, !noundef !3817
  %i.dd = icmp eq ptr %i.dc, null, !dbg !33712
  br i1 %i.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99, label %bb.ap, !dbg !33712

bb.ap:                                            ; preds = %.thread119
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99 unwind label %bb.ac, !dbg !33713

bb.aq:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99
  %.pn74117 = phi { ptr, i32 } [ %.pn74118, %.thread ], [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99 ]
  resume { ptr, i32 } %.pn74117, !dbg !33692

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99
  %.pn74118 = phi { ptr, i32 } [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99 ], [ %lpad.loopexit150, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.aq unwind label %bb.ac, !dbg !33619
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !33714 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !33898
  %.val78 = load ptr, ptr %1, align 8, !dbg !33899, !nonnull !3817, !noundef !3817
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !33899
  %.val79 = load ptr, ptr %i.m, align 8, !dbg !33899, !nonnull !3817, !align !3993, !noundef !3817
  %i.n = getelementptr inbounds nuw i8, ptr %.val79, i64 64, !dbg !33900
  %i.o = load ptr, ptr %i.n, align 8, !dbg !33900, !invariant.load !3817, !nonnull !3817
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val78) #46, !dbg !33901
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #46, !dbg !33902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33839), !dbg !33903
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !33904
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !33904 ; 4 uses
  br label %.lr.ph.i, !dbg !33905

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !33906 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !33907, !alias.scope !33839, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !33907
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !33907, !alias.scope !33839, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !33908
  %i.u = load ptr, ptr %i.t, align 8, !dbg !33908, !invariant.load !3817, !noalias !33839, !nonnull !3817
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #46
          to label %.noexc unwind label %.thread.loopexit, !dbg !33909, !inline_history !1042

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !33910
  %i.x = load ptr, ptr %i.w, align 8, !dbg !33910, !invariant.load !3817, !noalias !33839, !nonnull !3817
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #46
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !33911, !inline_history !1042

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !33912 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !33913 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !33914
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !33905

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !33915

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !33916
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !33917

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !33918
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !33919

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !33855

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph161, %bb.m
  %.sroa.0.0159 = phi i64 [ 0, %.lr.ph161 ], [ %i.bh, %bb.m ]
  %.sroa.034.0158 = phi ptr [ %1, %.lr.ph161 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 16, !dbg !33920 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !33921, !nonnull !3817, !noundef !3817
  %i.ag = getelementptr i8, ptr %.sroa.034.0158, i64 8, !dbg !33921
  %.sroa.034.0.val77 = load ptr, ptr %i.ag, align 8, !dbg !33921, !nonnull !3817, !align !3993, !noundef !3817
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val77, i64 32, !dbg !33922
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !33922, !invariant.load !3817, !nonnull !3817
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !33923 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !33922 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !33922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !33844
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !33924
  %i.an = load ptr, ptr %i.am, align 8, !dbg !33924, !invariant.load !3817, !nonnull !3817
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !33925

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !33926, !noundef !3817
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !33927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !33844
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !33928, !prof !3923

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #40
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33929

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !33930 ; 2 uses
  %.val82 = load ptr, ptr %i.aq, align 8, !dbg !33930, !noundef !3817 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !33930 ; 2 uses
  %.val83 = load i64, ptr %i.ar, align 8, !dbg !33930, !noundef !3817 ; 3 uses
  %i.as = icmp ult i64 %.val83, 2, !dbg !33931
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !33931

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !33932, !alias.scope !33853, !noalias !33854
  br label %.lr.ph, !dbg !33933

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val84.pre = load ptr, ptr %i.aq, align 8, !dbg !33934
  %.val85.pre = load i64, ptr %i.ar, align 8, !dbg !33934
  br label %._crit_edge, !dbg !33934

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !33934 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !33934 ; 2 uses
  %.val76 = load i64, ptr %.val84, align 8, !dbg !33935, !noundef !3817 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !33936
  call void @llvm.assume(i1 %.not.i91), !dbg !33936
  %i.at = getelementptr [8 x i8], ptr %.val84, i64 %.val85, !dbg !33937
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !33937 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i64, ptr %i.au, align 8, !dbg !33938, !noundef !3817
  %i.aw = sub nuw nsw i64 %i.av, %.val76, !dbg !33939
  %i.ax = icmp eq i64 %.val76, 0, !dbg !33940
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !33940

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !33941
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !33942, !nonnull !3817, !noundef !3817
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !33942
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !33942, !nonnull !3817, !align !3993, !noundef !3817
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !33942
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !33942, !invariant.load !3817, !nonnull !3817
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !33943

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !33944
  %i.bg = zext i1 %i.bf to i64, !dbg !33945
  br label %bb.m, !dbg !33945

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !33946
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !33947 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !33948
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !33855

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !33932 ; 4 uses
  %.sroa.0100.0157 = phi ptr [ %i.bl, %bb.o ], [ %.val82, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0156 = phi i64 [ %i.bk, %bb.o ], [ %.val83, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0157) ]
  %i.bk = add i64 %.sroa.6.0156, -1, !dbg !33949
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0157, i64 8, !dbg !33950 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !33951, !alias.scope !33856, !noundef !3817
  %i.bn = load i64, ptr %.sroa.0100.0157, align 8, !dbg !33952, !alias.scope !33856, !noundef !3817
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !33953
  call void @llvm.experimental.noalias.scope.decl(metadata !33853), !dbg !33954
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !33955, !alias.scope !33853, !noalias !33854, !nonnull !3817 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !33955
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !33955
  %i.bs = load i64, ptr %i.br, align 8, !dbg !33956, !noalias !33859, !noundef !3817
  %i.bt = load i64, ptr %i.j, align 8, !dbg !33957, !range !3988, !alias.scope !33860, !noalias !33854, !noundef !3817
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !33933
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !33933

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !33958

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !33959, !alias.scope !33860, !noalias !33854
  br label %bb.o, !dbg !33958

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !33959
  %i.bw = add i64 %i.bo, %i.bs, !dbg !33960
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !33961
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !33962, !noalias !33854
  %i.by = add i64 %i.bj, 1, !dbg !33963           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !33963, !alias.scope !33860, !noalias !33854
  %i.bz = icmp ult i64 %.sroa.6.0156, 3, !dbg !33931
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !33931

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.q, !dbg !33964

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !33965

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !33964
  unreachable, !dbg !33964

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.d, !dbg !33966

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !33967
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !33967

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !33968
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCINvNtNtB10_7compute11concatenate16concatenate_listxBU_Es_0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33969

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !33970
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRB1c_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxB3C_E0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33971

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !33880
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !33972
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !33972, !nonnull !3817, !noundef !3817
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !33973
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !33973, !noundef !3817
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !33880

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !33974

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !33975, !range !4315, !noundef !3817 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !33975
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !33976
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !33976 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !33976
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !33976 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !33977

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !33978
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !33978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33980
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33979
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !33979
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33979
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !33979
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33979
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !33979
  store i8 42, ptr %0, align 8, !dbg !33979
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33974

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !33980
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !33974

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33974
  br label %bb.aa, !dbg !33981

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !33982 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !33982 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !33983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !33983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !33984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !33985, !noalias !33883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !33984
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !33986

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !33974
  br label %bb.p, !dbg !33987

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !33988
  unreachable, !dbg !33988

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !33893
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !33989
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !33989, !nonnull !3817, !noundef !3817
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !33990
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !33990, !noundef !3817
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !33893

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !33991

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !33992, !range !4315, !noundef !3817 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !33992
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !33993
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !33993 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !33993
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !33993 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !33994

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !33995
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !33996
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !33995
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !33997
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !33996
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !33996
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !33996
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !33996
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !33996
end_hunk_4
begin_hunk_5_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr:bb.a
  br i1 %i.db, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit, label %bb.ao, !dbg !34006

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit unwind label %.thread.loopexit.split-lp, !dbg !34007

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !34003
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !33915
  br label %bb.ak, !dbg !34004

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ae, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.cs, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit147, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.j) #43
          to label %.thread119 unwind label %bb.ac, !dbg !34002

.thread119:                                       ; preds = %bb.am, %.loopexit.split-lp, %bb.q, %bb.d
  %.pn72124 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ac, %bb.d ], [ %i.cz, %bb.am ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1123 = phi i1 [ true, %bb.q ], [ true, %bb.d ], [ false, %bb.am ], [ true, %.loopexit.split-lp ]
  %i.dc = load ptr, ptr %i.k, align 8, !dbg !34008, !alias.scope !33897, !noundef !3817
  %i.dd = icmp eq ptr %i.dc, null, !dbg !34008
  br i1 %i.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99, label %bb.ap, !dbg !34008

bb.ap:                                            ; preds = %.thread119
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99 unwind label %bb.ac, !dbg !34009

bb.aq:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99
  %.pn74117 = phi { ptr, i32 } [ %.pn74118, %.thread ], [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99 ]
  resume { ptr, i32 } %.pn74117, !dbg !33988

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99
  %.pn74118 = phi { ptr, i32 } [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99 ], [ %lpad.loopexit150, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.l) #43
          to label %bb.aq unwind label %bb.ac, !dbg !33915
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !34010 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !34197
  %.val85 = load ptr, ptr %1, align 8, !dbg !34198, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %.val.i = load ptr, ptr %.val85, align 8, !dbg !34199, !nonnull !3817, !noundef !3817
  %i.m = getelementptr i8, ptr %.val85, i64 8, !dbg !34199
  %.val1.i = load ptr, ptr %i.m, align 8, !dbg !34199, !nonnull !3817, !align !3993, !noundef !3817
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 64, !dbg !34200
  %i.o = load ptr, ptr %i.n, align 8, !dbg !34200, !invariant.load !3817, !nonnull !3817
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val.i) #46, !dbg !34201
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #46, !dbg !34202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34138), !dbg !34203
  %.idx.i = shl nuw nsw i64 %2, 3, !dbg !34204
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !34204 ; 4 uses
  br label %.lr.ph.i, !dbg !34205

.lr.ph.i:                                         ; preds = %bb.a, %.noexc86
  %.sroa.0.010.i = phi i64 [ %i.z, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.02.09.i = phi i64 [ %i.aa, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.06.08.i = phi ptr [ %i.r, %.noexc86 ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8, !dbg !34206 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !dbg !34207, !alias.scope !34138, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val.i, align 8, !dbg !34208, !noalias !34138, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.0.val.i, i64 8, !dbg !34208
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !34208, !noalias !34138, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !34209
  %i.u = load ptr, ptr %i.t, align 8, !dbg !34209, !invariant.load !3817, !noalias !34138, !nonnull !3817
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.val.i.i) #46
          to label %.noexc unwind label %.thread.loopexit, !dbg !34210, !inline_history !1061

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 88, !dbg !34211
  %i.x = load ptr, ptr %i.w, align 8, !dbg !34211, !invariant.load !3817, !noalias !34138, !nonnull !3817
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.val.i.i) #46
          to label %.noexc86 unwind label %.thread.loopexit, !dbg !34212, !inline_history !1061

.noexc86:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.010.i, !dbg !34213 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.09.i, !dbg !34214 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !34215
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !34205

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECskY9G75ZWc4U_11polars_expr.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !34216

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !34217
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !34218

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !34219
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !34220

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !34154

.loopexit:                                        ; preds = %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ah, %bb.ag, %bb.t, %bb.y, %bb.x, %bb.s, %bb.h
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph161, %bb.m
  %.sroa.0.0159 = phi i64 [ 0, %.lr.ph161 ], [ %i.bh, %bb.m ]
  %.sroa.034.0158 = phi ptr [ %1, %.lr.ph161 ], [ %i.af, %bb.m ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 8, !dbg !34221 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !34222, !nonnull !3817, !align !3993, !noundef !3817 ; 2 uses
  %.val.i87 = load ptr, ptr %.sroa.034.0.val, align 8, !dbg !34223, !nonnull !3817, !noundef !3817
  %i.ag = getelementptr i8, ptr %.sroa.034.0.val, i64 8, !dbg !34223
  %.val1.i88 = load ptr, ptr %i.ag, align 8, !dbg !34223, !nonnull !3817, !align !3993, !noundef !3817
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i88, i64 32, !dbg !34224
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !34224, !invariant.load !3817, !nonnull !3817
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.val.i87)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !34225 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !34224 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !34224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !34143
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !34226
  %i.an = load ptr, ptr %i.am, align 8, !dbg !34226, !invariant.load !3817, !nonnull !3817
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !34227

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !34228, !noundef !3817
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !34229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !34143
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !34230, !prof !3923

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #40
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !34231

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !34232 ; 2 uses
  %.val79 = load ptr, ptr %i.aq, align 8, !dbg !34232, !noundef !3817 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !34232 ; 2 uses
  %.val80 = load i64, ptr %i.ar, align 8, !dbg !34232, !noundef !3817 ; 3 uses
  %i.as = icmp ult i64 %.val80, 2, !dbg !34233
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !34233

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !34234, !alias.scope !34152, !noalias !34153
  br label %.lr.ph, !dbg !34235

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val81.pre = load ptr, ptr %i.aq, align 8, !dbg !34236
  %.val82.pre = load i64, ptr %i.ar, align 8, !dbg !34236
  br label %._crit_edge, !dbg !34236

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val82 = phi i64 [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !34236 ; 2 uses
  %.val81 = phi ptr [ %.val81.pre, %._crit_edge.loopexit ], [ %.val79, %bb.j ], !dbg !34236 ; 2 uses
  %.val76 = load i64, ptr %.val81, align 8, !dbg !34237, !noundef !3817 ; 2 uses
  %.not.i91 = icmp ne i64 %.val82, 0, !dbg !34238
  call void @llvm.assume(i1 %.not.i91), !dbg !34238
  %i.at = getelementptr [8 x i8], ptr %.val81, i64 %.val82, !dbg !34239
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !34239 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = load i64, ptr %i.au, align 8, !dbg !34240, !noundef !3817
  %i.aw = sub nuw nsw i64 %i.av, %.val76, !dbg !34241
  %i.ax = icmp eq i64 %.val76, 0, !dbg !34242
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !34242

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !34243
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !34244, !nonnull !3817, !noundef !3817
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !34244
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !34244, !nonnull !3817, !align !3993, !noundef !3817
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !34244
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !34244, !invariant.load !3817, !nonnull !3817
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !34245

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !34246
  %i.bg = zext i1 %i.bf to i64, !dbg !34247
  br label %bb.m, !dbg !34247

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !34248
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !34249 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !34250
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !34154

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !34234 ; 4 uses
  %.sroa.0100.0157 = phi ptr [ %i.bl, %bb.o ], [ %.val79, %.lr.ph.preheader ] ; 3 uses
  %.sroa.6.0156 = phi i64 [ %i.bk, %bb.o ], [ %.val80, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0157) ]
  %i.bk = add i64 %.sroa.6.0156, -1, !dbg !34251
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0157, i64 8, !dbg !34252 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !34253, !alias.scope !34155, !noundef !3817
  %i.bn = load i64, ptr %.sroa.0100.0157, align 8, !dbg !34254, !alias.scope !34155, !noundef !3817
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !34255
  call void @llvm.experimental.noalias.scope.decl(metadata !34152), !dbg !34256
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !34257, !alias.scope !34152, !noalias !34153, !nonnull !3817 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !34257
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !34257
  %i.bs = load i64, ptr %i.br, align 8, !dbg !34258, !noalias !34158, !noundef !3817
  %i.bt = load i64, ptr %i.j, align 8, !dbg !34259, !range !3988, !alias.scope !34159, !noalias !34153, !noundef !3817
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !34235
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !34235

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !34260

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !34261, !alias.scope !34159, !noalias !34153
  br label %bb.o, !dbg !34260

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !34261
  %i.bw = add i64 %i.bo, %i.bs, !dbg !34262
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !34263
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !34264, !noalias !34153
  %i.by = add i64 %i.bj, 1, !dbg !34265           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !34265, !alias.scope !34159, !noalias !34153
  %i.bz = icmp ult i64 %.sroa.6.0156, 3, !dbg !34233
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !34233

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.q, !dbg !34266

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !34267

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !34266
  unreachable, !dbg !34266

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.d, !dbg !34268

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !34269
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !34269

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !34270
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterRINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listxB3k_Es_0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !34271

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !34272
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxB3C_E0EE9from_iterCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !34273

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !34179
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !34274
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !34274, !nonnull !3817, !noundef !3817
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !34275
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !34275, !noundef !3817
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !34179

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !34276

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !34277, !range !4315, !noundef !3817 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !34277
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !34278
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !34278 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !34278
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !34278 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !34279

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !34280
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !34281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !34280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !34282
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34281
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !34281
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34281
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !34281
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !34281
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !34281
  store i8 42, ptr %0, align 8, !dbg !34281
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !34276

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !34282
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !34276

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !34276
  br label %bb.aa, !dbg !34283

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !34284 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !34284 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !34285
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !34285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !34286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !34287, !noalias !34182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !34286
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !34288

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !34276
  br label %bb.p, !dbg !34289

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #42, !dbg !34290
  unreachable, !dbg !34290

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !34192
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !34291
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !34291, !nonnull !3817, !noundef !3817
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !34292
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !34292, !noundef !3817
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !34192

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.i) #43
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !34293

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !34294, !range !4315, !noundef !3817 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !34294
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !34295
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !34295 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !34295
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !34295 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !34296

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !34297
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !34298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !34297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !34299
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34298
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !34298
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34298
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !34298
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !34298
end_hunk_5
begin_hunk_6_@_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtB9_3rng6RngExt12random_rangejINtNtNtCscgRAwXFJnXP_4core3ops5range14RangeInclusivejEECskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.75.0.ph = phi i64 [ %i.bh, %bb.h ], [ %i.cs, %bb.k ], [ %i.z, %bb.d ], [ %i.ay, %bb.g ]
  ret i64 %.sroa.75.0.ph, !dbg !92376

bb.m:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @114, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #40, !dbg !92377
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !92378 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [40 x i8], align 8                ; 10 uses
  %i.r = alloca [32 x i8], align 1                ; 5 uses
  %i.s = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !92735
  call void @_RNvXst_NtCscgRAwXFJnXP_4core5arrayAhj20_NtNtB7_7default7Default7defaultCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.s), !dbg !92736
  %.val = load ptr, ptr %1, align 8, !dbg !92737, !alias.scope !92664, !noalias !92665, !nonnull !3817, !noundef !3817 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !92738 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92669), !dbg !92739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !92740, !noalias !92670
  %i.u = load i32, ptr %i.t, align 4, !dbg !92740, !alias.scope !92669, !noalias !92674, !noundef !3817
  %i.v = zext i32 %i.u to i64, !dbg !92741
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.b, !dbg !92742

bb.b:                                             ; preds = %bb.s, %bb.a
  %.sroa.0.026.i.i = phi i64 [ 0, %bb.a ], [ %i.cp, %bb.s ] ; 3 uses
  %.sroa.06.025.i.i = phi i64 [ %i.v, %bb.a ], [ %i.ce, %bb.s ] ; 2 uses
  %i.ar = icmp ugt i64 %.sroa.06.025.i.i, 63, !dbg !92743
  br i1 %i.ar, label %bb.c, label %bb.e, !dbg !92743

.loopexit.i.i:                                    ; preds = %bb.s, %bb.o
  %.sroa.06.1.i.i = phi i64 [ %.sroa.06.3.i.i, %bb.o ], [ %i.ce, %bb.s ], !dbg !92744 ; 2 uses
  %i.as = icmp ugt i64 %.sroa.06.1.i.i, 4294967295, !dbg !92745
  br i1 %i.as, label %.split.i.i.i, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !92745

.split.i.i.i:                                     ; preds = %.loopexit.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @137, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #40, !dbg !92746, !noalias !92680
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.at = load i64, ptr %i.x, align 4, !dbg !92747, !alias.scope !92681, !noalias !92682
  %i.au = icmp ugt i64 %i.at, 1023, !dbg !92748
  br i1 %i.au, label %bb.d, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, !dbg !92748, !prof !3850

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.w) #44, !dbg !92749, !noalias !92690
  br label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, !dbg !92749

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i: ; preds = %bb.d, %bb.c
  call void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.w, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.t), !dbg !92750, !noalias !92680
  br label %bb.e, !dbg !92751

bb.e:                                             ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i, %bb.b
  %.sroa.06.2.i.i = phi i64 [ 0, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i ], [ %.sroa.06.025.i.i, %bb.b ], !dbg !92744 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !92752, !noalias !92691
  %i.av = sub nuw nsw i64 32, %.sroa.0.026.i.i, !dbg !92753
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.0.026.i.i, !dbg !92754
  store ptr %i.aw, ptr %i.z, align 8, !dbg !92755, !alias.scope !92692, !noalias !92693
  store i64 %i.av, ptr %i.aa, align 8, !dbg !92755, !alias.scope !92692, !noalias !92693
  store ptr %i.y, ptr %i.q, align 8, !dbg !92755, !alias.scope !92692, !noalias !92693
  store i64 0, ptr %i.ab, align 8, !dbg !92755, !alias.scope !92692, !noalias !92693
  store i64 4, ptr %i.ac, align 8, !dbg !92755, !alias.scope !92692, !noalias !92693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !92756, !noalias !92691
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.06.2.i.i, !dbg !92757
  store ptr %i.ax, ptr %i.p, align 8, !dbg !92758, !noalias !92691
  store ptr %i.w, ptr %i.ad, align 8, !dbg !92758, !noalias !92691
  store ptr %i.q, ptr %i.o, align 8, !dbg !92759, !alias.scope !92695, !noalias !92696
  store ptr %i.p, ptr %i.ae, align 8, !dbg !92759, !alias.scope !92695, !noalias !92696
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !dbg !92759, !alias.scope !92695, !noalias !92696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !92760, !noalias !92691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !92760, !noalias !92691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !92761, !noalias !92697
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o), !dbg !92762, !noalias !92699
  %i.ay = load i64, ptr %i.j, align 8, !dbg !92763, !noalias !92697, !noundef !3817
  %i.az = load i64, ptr %i.ag, align 8, !dbg !92764, !range !4011, !noalias !92697, !noundef !3817
  %i.ba = load i64, ptr %i.ah, align 8, !dbg !92764, !noalias !92697 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !92765, !noalias !92697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !92766, !noalias !92697
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae), !dbg !92767, !noalias !92699
  %i.bb = load i64, ptr %i.i, align 8, !dbg !92768, !noalias !92697, !noundef !3817
  %i.bc = load i64, ptr %i.ai, align 8, !dbg !92769, !range !4011, !noalias !92697, !noundef !3817 ; 2 uses
  %i.bd = load i64, ptr %i.aj, align 8, !dbg !92769, !noalias !92697 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !92770, !noalias !92697
  %i.be = trunc nuw i64 %i.az to i1, !dbg !92771
  %i.bf = trunc nuw i64 %i.bc to i1, !dbg !92771  ; 2 uses
  br i1 %i.be, label %bb.f, label %bb.g, !dbg !92771

bb.f:                                             ; preds = %bb.e
  br i1 %i.bf, label %bb.h, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !92771

bb.g:                                             ; preds = %bb.e
  %.13.i.i.i = select i1 %i.bf, i64 %i.bd, i64 undef, !dbg !92772
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !92772

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.i14.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ba), !dbg !92773
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i, !dbg !92774

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.05.0.i.i.i = phi i64 [ 1, %bb.h ], [ %i.bc, %bb.g ], [ 1, %bb.f ], !dbg !92775 ; 2 uses
  %.sroa.7.0.i.i.i = phi i64 [ %.sroa.0.0.i14.i.i.i, %bb.h ], [ %.13.i.i.i, %bb.g ], [ %i.ba, %bb.f ], !dbg !92775 ; 4 uses
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ay), !dbg !92776 ; 2 uses
  store i64 %.sroa.05.0.i.i.i, ptr %i.m, align 8, !dbg !92777, !noalias !92691
  store i64 %.sroa.7.0.i.i.i, ptr %i.ak, align 8, !dbg !92777, !noalias !92691
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.al, align 8, !dbg !92778, !noalias !92691
  store i64 1, ptr %i.l, align 8, !dbg !92778, !noalias !92691
  %i.bg = trunc nuw i64 %.sroa.05.0.i.i.i to i1, !dbg !92779
  %i.bh = icmp eq i64 %.sroa.7.0.i.i.i, %.sroa.0.0.i.i.i.i
  %or.cond.i.i = select i1 %i.bg, i1 %i.bh, i1 false, !dbg !92779, !prof !3960
  br i1 %or.cond.i.i, label %bb.j, label %bb.i, !dbg !92779, !prof !3960

bb.i:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #45, !dbg !92780, !noalias !92680
  unreachable, !dbg !92780

bb.j:                                             ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !92760, !noalias !92691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !92760, !noalias !92691
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !92781, !noalias !92691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !dbg !92781, !noalias !92691
  call void @llvm.experimental.noalias.scope.decl(metadata !92701), !dbg !92781, !noalias !92680
  call void @llvm.experimental.noalias.scope.decl(metadata !92702), !dbg !92782, !noalias !92680
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !92703, !noalias !92691, !nonnull !3817, !align !3993 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16 ; 2 uses
  %.val13.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !92703, !noalias !92691, !nonnull !3817, !align !3993 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i, i64 8
  br label %bb.k, !dbg !92783

bb.k:                                             ; preds = %._crit_edge.i.i.i.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !92784, !noalias !92705
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !dbg !92785, !noalias !92706
  %i.bm = load i64, ptr %i.am, align 8, !dbg !92786, !range !4011, !noalias !92705, !noundef !3817
  %i.bn = load i64, ptr %i.an, align 8, !dbg !92786, !noalias !92705 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !92787, !noalias !92705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !92788, !noalias !92705
  call void @_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator9size_hintCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ao), !dbg !92789, !noalias !92706
  %i.bo = load i64, ptr %i.ap, align 8, !dbg !92790, !range !4011, !noalias !92705, !noundef !3817
  %i.bp = load i64, ptr %i.aq, align 8, !dbg !92790, !noalias !92705 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !92791, !noalias !92705
  %i.bq = trunc nuw i64 %i.bm to i1, !dbg !92792
  %i.br = trunc nuw i64 %i.bo to i1, !dbg !92793  ; 2 uses
  br i1 %i.bq, label %bb.l, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !92792

bb.l:                                             ; preds = %bb.k
  br i1 %i.br, label %bb.m, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i, !dbg !92792

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.i14.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bn), !dbg !92794
  br label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i, !dbg !92795

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %bb.k
  br i1 %i.br, label %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.preheader.i.i.i.i, !dbg !92796

_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %bb.m, %bb.l
  %.sroa.0.0.i.i19.i.i = phi i64 [ %i.bn, %bb.l ], [ %.sroa.0.0.i14.i.i.i.i.i, %bb.m ], [ %i.bp, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], !dbg !92797 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.i.i19.i.i, 0, !dbg !92798
  br i1 %.not.i.i.i.i, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.preheader.i.i.i.i, !dbg !92799

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.preheader.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  %.sroa.0.026.i.i.i.i = phi i64 [ %.sroa.0.0.i.i19.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i ], [ -1, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  %i.bs = phi i1 [ true, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i ], [ false, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ]
  br label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !92800

._crit_edge.i.i.i.i:                              ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i
  br i1 %i.bs, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i, label %bb.k, !dbg !92801

_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i: ; preds = %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.preheader.i.i.i.i
  %.sroa.01.023.i.i.i.i = phi i64 [ %i.bt, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i ], [ 0, %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.preheader.i.i.i.i ]
  %i.bt = add nuw i64 %.sroa.01.023.i.i.i.i, 1, !dbg !92802 ; 2 uses
  %i.bu = load i64, ptr %i.bi, align 8, !dbg !92803, !alias.scope !92708, !noalias !92680, !noundef !3817 ; 2 uses
  %i.bv = load i64, ptr %i.bj, align 8, !dbg !92804, !alias.scope !92708, !noalias !92680, !noundef !3817 ; 4 uses
  %.not.i.i.i.i.i.i = icmp ule i64 %i.bv, %i.bu, !dbg !92800
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i), !dbg !92800, !noalias !92680
  %i.bw = load ptr, ptr %i.bk, align 8, !dbg !92803, !alias.scope !92708, !noalias !92680, !nonnull !3817, !noundef !3817 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv, !dbg !92805
  %i.by = sub nuw i64 %i.bu, %i.bv, !dbg !92806
  store ptr %i.bx, ptr %i.bk, align 8, !dbg !92807, !alias.scope !92708, !noalias !92680
  store i64 %i.by, ptr %i.bi, align 8, !dbg !92807, !alias.scope !92708, !noalias !92680
  %i.bz = load ptr, ptr %.val13.i.i.i.i, align 8, !dbg !92808, !alias.scope !92710, !noalias !92680, !nonnull !3817, !noundef !3817 ; 3 uses
  %i.ca = load ptr, ptr %i.bl, align 8, !dbg !92809, !alias.scope !92710, !noalias !92680, !nonnull !3817, !noundef !3817
  %i.cb = icmp ne ptr %i.bz, %i.ca, !dbg !92810
  call void @llvm.assume(i1 %i.cb), !dbg !92811, !noalias !92680
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4, !dbg !92812
  store ptr %i.cc, ptr %.val13.i.i.i.i, align 8, !dbg !92813, !alias.scope !92710, !noalias !92680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !92814, !noalias !92711
  %i.cd = load i32, ptr %i.bz, align 4, !dbg !92814, !noalias !92714, !noundef !3817
  store i32 %i.cd, ptr %i.f, align 4, !dbg !92815, !noalias !92711
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull %i.bw, i64 noundef %i.bv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128), !dbg !92816, !noalias !92714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !92817, !noalias !92711
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bt, %.sroa.0.026.i.i.i.i, !dbg !92798
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr.exit.i.i.i.i, !dbg !92799

_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i: ; preds = %._crit_edge.i.i.i.i, %_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !92781, !noalias !92691
  %i.ce = add i64 %.sroa.7.0.i.i.i, %.sroa.06.2.i.i, !dbg !92818 ; 4 uses
  %i.cf = load ptr, ptr %i.p, align 8, !dbg !92819, !noalias !92691, !nonnull !3817, !noundef !3817 ; 3 uses
  %i.cg = load ptr, ptr %i.ad, align 8, !dbg !92820, !noalias !92691, !nonnull !3817, !noundef !3817
  %i.ch = icmp eq ptr %i.cf, %i.cg, !dbg !92821
  br i1 %i.ch, label %bb.s, label %bb.n, !dbg !92822

bb.n:                                             ; preds = %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 4, !dbg !92823
  store ptr %i.ci, ptr %i.p, align 8, !dbg !92824, !noalias !92691
  %i.cj = load ptr, ptr %i.q, align 8, !dbg !92825, !noalias !92691, !nonnull !3817, !noundef !3817
  %i.ck = load i64, ptr %i.ab, align 8, !dbg !92825, !noalias !92691, !noundef !3817 ; 5 uses
  %.not.i.i = icmp eq i64 %i.ck, 0, !dbg !92826
  br i1 %.not.i.i, label %bb.o, label %bb.p, !dbg !92826

bb.o:                                             ; preds = %bb.q, %bb.n
  %.sroa.06.3.i.i = phi i64 [ %i.cn, %bb.q ], [ %i.ce, %bb.n ], !dbg !92827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !92828, !noalias !92691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !92829, !noalias !92691
  br label %.loopexit.i.i, !dbg !92830

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !92831, !noalias !92691
  %i.cl = load i32, ptr %i.cf, align 4, !dbg !92831, !noalias !92680, !noundef !3817
  store i32 %i.cl, ptr %i.n, align 4, !dbg !92832, !noalias !92691
  %i.cm = icmp ult i64 %i.ck, 5
  br i1 %i.cm, label %bb.q, label %bb.r, !dbg !92833, !prof !3960

bb.q:                                             ; preds = %bb.p
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull %i.cj, i64 noundef %i.ck, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182), !dbg !92834, !noalias !92680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !92835, !noalias !92691
  %i.cn = add i64 %i.ce, 1, !dbg !92836
  br label %bb.o, !dbg !92837

bb.r:                                             ; preds = %bb.p
  call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ck, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #40, !dbg !92838, !noalias !92680
  unreachable

bb.s:                                             ; preds = %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr.exit.i.i
  %i.co = shl i64 %.sroa.7.0.i.i.i, 2, !dbg !92839
  %i.cp = add i64 %i.co, %.sroa.0.026.i.i, !dbg !92840 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !92828, !noalias !92691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !92829, !noalias !92691
  %i.cq = icmp ult i64 %i.cp, 32, !dbg !92742
  br i1 %i.cq, label %bb.b, label %.loopexit.i.i, !dbg !92742

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit: ; preds = %.loopexit.i.i
  %i.cr = trunc nuw i64 %.sroa.06.1.i.i to i32, !dbg !92841
  store i32 %i.cr, ptr %i.t, align 4, !dbg !92842, !alias.scope !92669, !noalias !92674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !92843, !noalias !92670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !92844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.r, ptr noundef nonnull align 1 dereferenceable(32) %i.s, i64 32, i1 false), !dbg !92845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !92846, !noalias !92718
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !noalias !92718
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !92847
  %i.ct = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !92848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !92849, !noalias !92723
  store ptr %i.r, ptr %i.b, align 8, !dbg !92850, !alias.scope !92724, !noalias !92725
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !92850
  store i64 32, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !92850, !alias.scope !92724, !noalias !92725
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !92850
  store ptr %i.cs, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !92850, !alias.scope !92724, !noalias !92725
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !92850
  store i64 0, ptr %.sroa.64.0..sroa_idx.i, align 8, !dbg !92850, !alias.scope !92724, !noalias !92725
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !92850
  store i64 8, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !92850, !alias.scope !92724, !noalias !92725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !92851, !noalias !92718
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !dbg !92852, !noalias !92726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92853, !noalias !92723
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.cw = load i64, ptr %i.cu, align 8, !dbg !92854, !alias.scope !92727, !noalias !92728, !noundef !3817 ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !dbg !92855, !alias.scope !92727, !noalias !92728, !noundef !3817
  %i.cy = icmp ult i64 %i.cw, %i.cx, !dbg !92854
  br i1 %i.cy, label %.lr.ph.i, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !92854

.lr.ph.i:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.t, !dbg !92854

bb.t:                                             ; preds = %bb.t, %.lr.ph.i
  %i.da = phi i64 [ %i.cw, %.lr.ph.i ], [ %i.dh, %bb.t ] ; 3 uses
  %i.db = add nuw i64 %i.da, 1, !dbg !92856
  store i64 %i.db, ptr %i.cu, align 8, !dbg !92856, !alias.scope !92727, !noalias !92728
  %.val.i.i = load ptr, ptr %i.d, align 8, !dbg !92857, !alias.scope !92727, !noalias !92728, !nonnull !3817, !noundef !3817
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.da, !dbg !92858
  %i.dd = call { ptr, i64 } @_RNvXs1q_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cz, i64 noundef %i.da), !dbg !92859, !noalias !92730 ; 2 uses
  %i.de = extractvalue { ptr, i64 } %i.dd, 0, !dbg !92860 ; 2 uses
  %i.df = extractvalue { ptr, i64 } %i.dd, 1, !dbg !92860
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ], !noalias !92731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !92861, !noalias !92718
  %i.dg = call noundef i64 @_RNvXsR_NtCscgRAwXFJnXP_4core5arrayAhj8_NtNtB7_7default7Default7defaultCskY9G75ZWc4U_11polars_expr(), !dbg !92862, !noalias !92726
  store i64 %i.dg, ptr %i.c, align 8, !dbg !92862, !noalias !92718
  call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull %i.c, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8), !dbg !92863, !noalias !92726
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !dbg !92864, !noalias !92718
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.dc, align 8, !dbg !92865, !noalias !92726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !92866, !noalias !92718
  %i.dh = load i64, ptr %i.cu, align 8, !dbg !92854, !alias.scope !92727, !noalias !92728, !noundef !3817 ; 2 uses
  %i.di = load i64, ptr %i.cv, align 8, !dbg !92855, !alias.scope !92727, !noalias !92728, !noundef !3817
  %i.dj = icmp ult i64 %i.dh, %i.di, !dbg !92854
  br i1 %i.dj, label %bb.t, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit, !dbg !92854

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit: ; preds = %bb.t, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !92867, !noalias !92718
  %.sroa.0.0.copyload13.i = load i64, ptr %i.e, align 8, !dbg !92868, !noalias !92732 ; 2 uses
  %.sroa.3.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !92868
  %.sroa.3.0.copyload15.i = load i64, ptr %.sroa.3.0..sroa_idx14.i, align 8, !dbg !92868, !noalias !92732 ; 2 uses
  %.sroa.4.0..sroa_idx17.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !92868
  %.sroa.4.0.copyload18.i = load i64, ptr %.sroa.4.0..sroa_idx17.i, align 8, !dbg !92868, !noalias !92732 ; 2 uses
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !92868
  %.sroa.5.0.copyload21.i = load i64, ptr %.sroa.5.0..sroa_idx20.i, align 8, !dbg !92868, !noalias !92732 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !92869, !noalias !92718
  %i.dk = icmp eq i64 %.sroa.0.0.copyload13.i, 0, !dbg !92870
  %i.dl = icmp eq i64 %.sroa.3.0.copyload15.i, 0
  %or.cond.i = select i1 %i.dk, i1 %i.dl, i1 false, !dbg !92871
  %i.dm = icmp eq i64 %.sroa.4.0.copyload18.i, 0
  %or.cond22.i = select i1 %or.cond.i, i1 %i.dm, i1 false, !dbg !92871
  %i.dn = icmp eq i64 %.sroa.5.0.copyload21.i, 0
  %or.cond23.i = select i1 %or.cond22.i, i1 %i.dn, i1 false, !dbg !92871 ; 4 uses
  %..sroa.0.0.copyload13.i = select i1 %or.cond23.i, i64 -2152535657050944081, i64 %.sroa.0.0.copyload13.i, !dbg !92872
  %..sroa.3.0.copyload15.i = select i1 %or.cond23.i, i64 7960286522194355700, i64 %.sroa.3.0.copyload15.i, !dbg !92872
  %..sroa.4.0.copyload18.i = select i1 %or.cond23.i, i64 487617019471545679, i64 %.sroa.4.0.copyload18.i, !dbg !92872
  %..sroa.5.0.copyload21.i = select i1 %or.cond23.i, i64 -537132696929009172, i64 %.sroa.5.0.copyload21.i, !dbg !92872
  store i64 %..sroa.0.0.copyload13.i, ptr %0, align 8, !dbg !92873, !noalias !92734
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !92873
  store i64 %..sroa.3.0.copyload15.i, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !92873, !noalias !92734
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !92873
  store i64 %..sroa.4.0.copyload18.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !92873, !noalias !92734
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !92873
  store i64 %..sroa.5.0.copyload21.i, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !92873, !noalias !92734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !92874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !92875
  ret void, !dbg !92876
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYSTmxEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB4_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !92877 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort13par_mergesortTmxENCINvYSBQ_INtB4_16ParallelSliceMutBQ_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a), !dbg !92878
  ret void, !dbg !92879
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYSTmxEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB4_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB4_NCINvNtB1j_8arg_sort9sort_implxE0E00ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !92880 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  call void @_RINvNtNtCse67t6KqNqGQ_5rayon5slice4sort13par_mergesortTmxENCINvYSBQ_INtB4_16ParallelSliceMutBQ_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchBQ_NCINvNtB1Q_8arg_sort9sort_implxE0E00E0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !dbg !92881
  ret void, !dbg !92882
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listNtNtCs2mZqlW55729_12polars_utils7float164pf16Kb0_E0CskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, i64 %.48.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !92883 {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !92903
  store i64 %.48.val, ptr %i.b, align 8, !dbg !92904
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !92905
  store ptr %i.b, ptr %i.a, align 8, !dbg !92905
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !92905
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !92905
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !92905
  store ptr %1, ptr %i.d, align 8, !dbg !92905
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !92905
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !92905
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @121, ptr noundef nonnull %i.a), !dbg !92906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !92907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !92907
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !92908
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122), !dbg !92909
  store i64 4, ptr %0, align 8, !dbg !92908, !alias.scope !92902
  ret void, !dbg !92910
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listNtNtCs2mZqlW55729_12polars_utils7float164pf16Kb0_Es_0CskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !92911 {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
end_hunk_6
begin_hunk_7_@llvm.vector.reduce.add.v4i16
!92332 = !DILocation(line: 2511, column: 13, scope: !92182, inlinedAt: !92183)
!92333 = !DILocation(line: 189, column: 20, scope: !92184, inlinedAt: !92180)
!92334 = !DILocation(line: 78, column: 19, scope: !92188, inlinedAt: !92197)
!92335 = !DILocation(line: 79, column: 27, scope: !92188, inlinedAt: !92197)
!92336 = !DILocation(line: 2511, column: 13, scope: !92198, inlinedAt: !92199)
!92337 = !DILocation(line: 2030, column: 14, scope: !92126, inlinedAt: !92202)
!92338 = !DILocation(line: 2511, column: 13, scope: !92198, inlinedAt: !92203)
!92339 = !DILocation(line: 83, column: 17, scope: !92204, inlinedAt: !92197)
!92340 = !DILocation(line: 85, column: 9, scope: !92205, inlinedAt: !92197)
!92341 = !DILocation(line: 86, column: 9, scope: !92205, inlinedAt: !92197)
!92342 = !DILocation(line: 87, column: 9, scope: !92205, inlinedAt: !92197)
!92343 = !DILocation(line: 88, column: 9, scope: !92205, inlinedAt: !92197)
!92344 = !DILocation(line: 90, column: 9, scope: !92205, inlinedAt: !92197)
!92345 = !DILocation(line: 2030, column: 14, scope: !92126, inlinedAt: !92207)
!92346 = !DILocation(line: 92, column: 9, scope: !92205, inlinedAt: !92197)
!92347 = !DILocation(line: 29, column: 27, scope: !92208, inlinedAt: !92209)
!92348 = !DILocation(line: 29, column: 36, scope: !92208, inlinedAt: !92209)
!92349 = !DILocation(line: 30, column: 18, scope: !92210, inlinedAt: !92209)
!92350 = !DILocation(line: 24, column: 35, scope: !92210, inlinedAt: !92209)
!92351 = !DILocation(line: 2548, column: 13, scope: !92176, inlinedAt: !92214)
!92352 = !DILocation(line: 198, column: 20, scope: !92212, inlinedAt: !92180)
!92353 = !DILocation(line: 2511, column: 13, scope: !92198, inlinedAt: !92220)
!92354 = !DILocation(line: 2030, column: 14, scope: !92126, inlinedAt: !92222)
!92355 = !DILocation(line: 2511, column: 13, scope: !92198, inlinedAt: !92223)
!92356 = !DILocation(line: 83, column: 17, scope: !92204, inlinedAt: !92219)
!92357 = !DILocation(line: 85, column: 9, scope: !92205, inlinedAt: !92219)
!92358 = !DILocation(line: 86, column: 9, scope: !92205, inlinedAt: !92219)
!92359 = !DILocation(line: 87, column: 9, scope: !92205, inlinedAt: !92219)
!92360 = !DILocation(line: 88, column: 9, scope: !92205, inlinedAt: !92219)
!92361 = !DILocation(line: 90, column: 9, scope: !92205, inlinedAt: !92219)
!92362 = !DILocation(line: 2030, column: 14, scope: !92126, inlinedAt: !92233)
!92363 = !DILocation(line: 92, column: 9, scope: !92205, inlinedAt: !92219)
!92364 = !DILocation(line: 29, column: 27, scope: !92208, inlinedAt: !92234)
!92365 = !DILocation(line: 30, column: 18, scope: !92235, inlinedAt: !92234)
!92366 = !DILocation(line: 24, column: 35, scope: !92235, inlinedAt: !92234)
!92367 = !DILocation(line: 823, column: 37, scope: !92236, inlinedAt: !92238)
!92368 = !DILocation(line: 203, column: 31, scope: !92239, inlinedAt: !92180)
!92369 = !DILocation(line: 203, column: 21, scope: !92239, inlinedAt: !92180)
!92370 = !DILocation(line: 198, column: 17, scope: !92212, inlinedAt: !92180)
!92371 = !DILocation(line: 0, scope: !92184, inlinedAt: !92180)
!92372 = !DILocation(line: 2511, column: 13, scope: !92182, inlinedAt: !92240)
!92373 = !DILocation(line: 207, column: 13, scope: !92177, inlinedAt: !92180)
!92374 = !DILocation(line: 1233, column: 17, scope: !92244, inlinedAt: !92245)
!92375 = !DILocation(line: 1233, column: 23, scope: !92246, inlinedAt: !92245)
!92376 = !DILocation(line: 166, column: 6, scope: !92077)
!92377 = !DILocation(line: 164, column: 9, scope: !92077)
!92378 = distinct !DISubprogram(name: "from_rng<rand::rngs::small::SmallRng, rand::rngs::thread::ThreadRng>", linkageName: "_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs5small8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng8from_rngNtNtB7_6thread9ThreadRngECskY9G75ZWc4U_11polars_expr", scope: !92663, file: !92661, line: 147, type: !3818, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92379 = distinct !{!92379, i1 false, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes"}
!92380 = distinct !{!92380, !92379, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 0"}
!92381 = distinct !{!92381, !92379, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 1"}
!92382 = distinct !DILexicalBlock(scope: !92378, file: !92661, line: 148, column: 9)
!92383 = distinct !DISubprogram(name: "get<rand_core::block::BlockRng<rand::rngs::thread::ReseedingCore>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtCs53V80GKKPEw_9rand_core5block8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreEE3getCskY9G75ZWc4U_11polars_expr", scope: !3914, file: !3912, line: 2443, type: !3818, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92384 = distinct !DISubprogram(name: "try_fill_bytes", linkageName: "_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes", scope: !92668, file: !92666, line: 232, type: !3818, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92385 = distinct !DISubprogram(name: "fill_bytes<rand::rngs::thread::ThreadRng>", linkageName: "_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCskY9G75ZWc4U_11polars_expr", scope: !4567, file: !4565, line: 84, type: !3879, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92386 = distinct !DILocation(line: 149, column: 13, scope: !92382)
!92387 = distinct !DILocation(line: 85, column: 20, scope: !92385, inlinedAt: !92386)
!92388 = distinct !DILocation(line: 235, column: 43, scope: !92384, inlinedAt: !92387)
!92389 = distinct !{!92389, i1 false, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCskY9G75ZWc4U_11polars_expr"}
!92390 = distinct !{!92390, !92389, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCskY9G75ZWc4U_11polars_expr: argument 0"}
!92391 = distinct !DILexicalBlock(scope: !92384, file: !92666, line: 235, column: 9)
!92392 = distinct !{!92392, i1 false, !"_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCskY9G75ZWc4U_11polars_expr"}
!92393 = distinct !{!92393, !92392, !"_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng10fill_bytesCskY9G75ZWc4U_11polars_expr: argument 0"}
!92394 = distinct !DISubprogram(name: "index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE5indexCskY9G75ZWc4U_11polars_expr", scope: !92673, file: !92671, line: 174, type: !3818, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92395 = distinct !DISubprogram(name: "fill_bytes<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCskY9G75ZWc4U_11polars_expr", scope: !92673, file: !92671, line: 275, type: !3818, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92396 = distinct !DILexicalBlock(scope: !92395, file: !92671, line: 276, column: 9)
!92397 = distinct !DILocation(line: 236, column: 13, scope: !92391, inlinedAt: !92387)
!92398 = distinct !DILocation(line: 277, column: 30, scope: !92396, inlinedAt: !92397)
!92399 = distinct !{!92399, i1 false, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes"}
!92400 = distinct !{!92400, !92399, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng14try_fill_bytes: argument 0"}
!92401 = distinct !{!92401, !92389, !"_RNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytesCskY9G75ZWc4U_11polars_expr: argument 1"}
!92402 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsjINtB9_7TryFrommE8try_from", scope: !92675, file: !3845, line: 252, type: !3818, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92403 = distinct !DISubprogram(name: "try_into<u32, usize>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertmINtB5_7TryIntojE8try_intoCskY9G75ZWc4U_11polars_expr", scope: !3849, file: !3848, line: 818, type: !3818, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92404 = distinct !DISubprogram(name: "into_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10into_usize", scope: !92679, file: !92676, line: 40, type: !3818, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92405 = distinct !DILocation(line: 175, column: 25, scope: !92394, inlinedAt: !92398)
!92406 = distinct !DILocation(line: 41, column: 18, scope: !92404, inlinedAt: !92405)
!92407 = distinct !DILocation(line: 819, column: 9, scope: !92403, inlinedAt: !92406)
!92408 = distinct !DILexicalBlock(scope: !92396, file: !92671, line: 277, column: 9)
!92409 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsmINtB9_7TryFromjE8try_from", scope: !4568, file: !3845, line: 294, type: !3818, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92410 = distinct !DISubprogram(name: "try_into<usize, u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertjINtB5_7TryIntomE8try_intoCskY9G75ZWc4U_11polars_expr", scope: !3849, file: !3848, line: 818, type: !3818, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92411 = distinct !DISubprogram(name: "from_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10from_usize", scope: !92679, file: !92676, line: 36, type: !3818, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92412 = distinct !DISubprogram(name: "set_index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE9set_indexCskY9G75ZWc4U_11polars_expr", scope: !92673, file: !92671, line: 179, type: !3818, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92413 = distinct !DILocation(line: 306, column: 14, scope: !92408, inlinedAt: !92397)
!92414 = distinct !DILocation(line: 181, column: 27, scope: !92412, inlinedAt: !92413)
!92415 = distinct !DILocation(line: 37, column: 17, scope: !92411, inlinedAt: !92414)
!92416 = distinct !DILocation(line: 819, column: 9, scope: !92410, inlinedAt: !92415)
!92417 = distinct !DILocation(line: 37, column: 28, scope: !92411, inlinedAt: !92414)
!92418 = distinct !{!92418, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate"}
!92419 = distinct !{!92419, !92418, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 0"}
!92420 = distinct !{!92420, !92418, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 1"}
!92421 = distinct !DISubprogram(name: "get_block_pos", linkageName: "_RNvXs1_NtCsejN9i34LGCw_8chacha208variantsNtB5_6LegacyNtB5_7Variant13get_block_pos", scope: !92686, file: !92683, line: 69, type: !3818, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92422 = distinct !DISubprogram(name: "get_block_pos<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMs1_CsejN9i34LGCw_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE13get_block_posCskY9G75ZWc4U_11polars_expr", scope: !92688, file: !92687, line: 279, type: !3818, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92423 = distinct !DISubprogram(name: "generate", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate", scope: !92689, file: !92666, line: 52, type: !3818, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92424 = distinct !DILocation(line: 280, column: 27, scope: !92408, inlinedAt: !92397)
!92425 = distinct !DILocation(line: 53, column: 23, scope: !92423, inlinedAt: !92424)
!92426 = distinct !DILocation(line: 280, column: 9, scope: !92422, inlinedAt: !92425)
!92427 = distinct !DILexicalBlock(scope: !92408, file: !92671, line: 284, column: 13)
!92428 = distinct !DISubprogram(name: "index_mut<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !4077, file: !3883, line: 579, type: !3818, scopeLine: 579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92429 = distinct !DISubprogram(name: "index_mut<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB8_3ops5index8IndexMutINtNtBK_5range9RangeFromjEE9index_mutCskY9G75ZWc4U_11polars_expr", scope: !4248, file: !3883, line: 30, type: !3818, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92430 = distinct !DILocation(line: 285, column: 34, scope: !92427, inlinedAt: !92397)
!92431 = distinct !DILocation(line: 31, column: 15, scope: !92429, inlinedAt: !92430)
!92432 = distinct !DISubprogram(name: "get_offset_len_mut_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index28get_offset_len_mut_noubcheckhECskY9G75ZWc4U_11polars_expr", scope: !3885, file: !3883, line: 94, type: !3818, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92433 = distinct !DILexicalBlock(scope: !92432, file: !3883, line: 99, column: 5)
!92434 = distinct !DILexicalBlock(scope: !92428, file: !3883, line: 585, column: 13)
!92435 = distinct !DILocation(line: 586, column: 19, scope: !92434, inlinedAt: !92431)
!92436 = distinct !{!92436, i1 false, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCskY9G75ZWc4U_11polars_expr"}
!92437 = distinct !{!92437, !92436, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCskY9G75ZWc4U_11polars_expr: argument 0"}
!92438 = distinct !{!92438, !92436, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCskY9G75ZWc4U_11polars_expr: argument 1"}
!92439 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1x_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthE3newCskY9G75ZWc4U_11polars_expr", scope: !92694, file: !4034, line: 2028, type: !3818, scopeLine: 2028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92440 = distinct !DILexicalBlock(scope: !92439, file: !4034, line: 2029, column: 9)
!92441 = distinct !DILexicalBlock(scope: !92440, file: !4034, line: 2030, column: 9)
!92442 = distinct !DILexicalBlock(scope: !92441, file: !4034, line: 2032, column: 9)
!92443 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 1290, type: !3879, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92444 = distinct !DILocation(line: 285, column: 47, scope: !92427, inlinedAt: !92397)
!92445 = distinct !DILocation(line: 1292, column: 9, scope: !92443, inlinedAt: !92444)
!92446 = distinct !DILexicalBlock(scope: !92427, file: !92671, line: 285, column: 13)
!92447 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckmECskY9G75ZWc4U_11polars_expr", scope: !3885, file: !3883, line: 82, type: !3818, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92448 = distinct !DILexicalBlock(scope: !92447, file: !3883, line: 87, column: 5)
!92449 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSmE5indexCskY9G75ZWc4U_11polars_expr", scope: !4077, file: !3883, line: 567, type: !3818, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92450 = distinct !DILexicalBlock(scope: !92449, file: !3883, line: 573, column: 13)
!92451 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSmINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCskY9G75ZWc4U_11polars_expr", scope: !4229, file: !3883, line: 18, type: !3818, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92452 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>, 64>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAmj40_INtNtNtB7_3ops5index5IndexINtNtBH_5range9RangeFromjEE5indexCskY9G75ZWc4U_11polars_expr", scope: !4230, file: !4074, line: 389, type: !3818, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92453 = distinct !DILocation(line: 286, column: 39, scope: !92446, inlinedAt: !92397)
!92454 = distinct !DILocation(line: 390, column: 9, scope: !92452, inlinedAt: !92453)
!92455 = distinct !DILocation(line: 19, column: 15, scope: !92451, inlinedAt: !92454)
!92456 = distinct !DILocation(line: 574, column: 15, scope: !92450, inlinedAt: !92455)
!92457 = distinct !DISubprogram(name: "new<u32>", linkageName: "_RNvMs4_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_4ItermE3newCskY9G75ZWc4U_11polars_expr", scope: !4036, file: !4034, line: 96, type: !3818, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92458 = distinct !DILexicalBlock(scope: !92457, file: !4034, line: 97, column: 9)
!92459 = distinct !DILexicalBlock(scope: !92458, file: !4034, line: 98, column: 9)
!92460 = distinct !DILexicalBlock(scope: !92459, file: !4034, line: 101, column: 13)
!92461 = distinct !DISubprogram(name: "iter<u32>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSm4iterCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 1040, type: !3818, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92462 = distinct !DILocation(line: 286, column: 49, scope: !92446, inlinedAt: !92397)
!92463 = distinct !DILocation(line: 1041, column: 9, scope: !92461, inlinedAt: !92462)
!92464 = distinct !{!92464, i1 false, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECskY9G75ZWc4U_11polars_expr"}
!92465 = distinct !{!92465, !92464, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECskY9G75ZWc4U_11polars_expr: argument 0"}
!92466 = distinct !{!92466, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCskY9G75ZWc4U_11polars_expr"}
!92467 = distinct !{!92467, !92466, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCskY9G75ZWc4U_11polars_expr: argument 0"}
!92468 = distinct !{!92468, !92464, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECskY9G75ZWc4U_11polars_expr: argument 2"}
!92469 = distinct !{!92469, !92464, !"_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECskY9G75ZWc4U_11polars_expr: argument 1"}
!92470 = distinct !{!92470, !92466, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCskY9G75ZWc4U_11polars_expr: argument 2"}
!92471 = distinct !{!92471, !92466, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCskY9G75ZWc4U_11polars_expr: argument 1"}
!92472 = distinct !DISubprogram(name: "new<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E3newCskY9G75ZWc4U_11polars_expr", scope: !4109, file: !4107, line: 154, type: !3818, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92473 = distinct !DISubprogram(name: "new<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipQINtNtNtB8_5slice4iter14ChunksExactMuthEQINtBX_4ItermEE3newCskY9G75ZWc4U_11polars_expr", scope: !4110, file: !4107, line: 23, type: !3818, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92474 = distinct !DISubprogram(name: "zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RINvYQINtNtNtCscgRAwXFJnXP_4core5slice4iter14ChunksExactMuthENtNtNtNtBb_4iter6traits8iterator8Iterator3zipQINtB7_4ItermEECskY9G75ZWc4U_11polars_expr", scope: !3828, file: !3825, line: 626, type: !3818, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92475 = distinct !DILexicalBlock(scope: !92446, file: !92671, line: 286, column: 13)
!92476 = distinct !DILocation(line: 288, column: 42, scope: !92475, inlinedAt: !92397)
!92477 = distinct !DILocation(line: 631, column: 9, scope: !92474, inlinedAt: !92476)
!92478 = distinct !DILocation(line: 24, column: 9, scope: !92473, inlinedAt: !92477)
!92479 = distinct !DILexicalBlock(scope: !92475, file: !92671, line: 288, column: 13)
!92480 = distinct !{!92480, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr"}
!92481 = distinct !{!92481, !92480, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr: argument 1"}
!92482 = distinct !{!92482, !92480, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr: argument 0"}
!92483 = distinct !DISubprogram(name: "size_hint<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr", scope: !4109, file: !4107, line: 220, type: !3818, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92484 = distinct !DISubprogram(name: "size_hint<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipQINtNtNtBa_5slice4iter14ChunksExactMuthEQINtBZ_4ItermEENtNtNtB8_6traits8iterator8Iterator9size_hintCskY9G75ZWc4U_11polars_expr", scope: !4117, file: !4107, line: 89, type: !3818, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92485 = distinct !DISubprogram(name: "len<core::iter::adapters::zip::Zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>>", linkageName: "_RNvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtBU_4ItermEENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenCskY9G75ZWc4U_11polars_expr", scope: !92698, file: !3868, line: 116, type: !3818, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92486 = distinct !DILocation(line: 289, column: 37, scope: !92479, inlinedAt: !92397)
!92487 = distinct !DILocation(line: 117, column: 35, scope: !92485, inlinedAt: !92486)
!92488 = distinct !DILocation(line: 90, column: 9, scope: !92484, inlinedAt: !92487)
!92489 = distinct !DILexicalBlock(scope: !92483, file: !4107, line: 221, column: 9)
!92490 = distinct !DILexicalBlock(scope: !92489, file: !4107, line: 222, column: 9)
!92491 = distinct !DILexicalBlock(scope: !92490, file: !4107, line: 224, column: 9)
!92492 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECskY9G75ZWc4U_11polars_expr", scope: !4072, file: !4071, line: 1575, type: !3818, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92493 = distinct !DILexicalBlock(scope: !92491, file: !4107, line: 227, column: 13)
!92494 = distinct !DILocation(line: 227, column: 40, scope: !92493, inlinedAt: !92488)
!92495 = distinct !DILocation(line: 1576, column: 8, scope: !92492, inlinedAt: !92494)
!92496 = distinct !DILocation(line: 224, column: 21, scope: !92490, inlinedAt: !92488)
!92497 = distinct !DILocation(line: 1576, column: 8, scope: !92492, inlinedAt: !92496)
!92498 = distinct !DILexicalBlock(scope: !92485, file: !3868, line: 117, column: 9)
!92499 = distinct !DISubprogram(name: "eq<usize>", linkageName: "_RNvXsf_NtCscgRAwXFJnXP_4core6optionINtB5_6OptionjENtNtB7_3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !92700, file: !3865, line: 2439, type: !3818, scopeLine: 2439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92500 = distinct !DILexicalBlock(scope: !92498, file: !3895, line: 45, column: 13)
!92501 = distinct !DILocation(line: 46, column: 21, scope: !92500, inlinedAt: !92486)
!92502 = distinct !DILexicalBlock(scope: !92500, file: !3895, line: 47, column: 21)
!92503 = distinct !DISubprogram(name: "fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1Q_8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB38_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr", scope: !4117, file: !4107, line: 99, type: !3818, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92504 = distinct !DISubprogram(name: "for_each<core::iter::adapters::zip::Zip<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>>, rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtBV_4ItermEENtNtNtBa_6traits8iterator8Iterator8for_eachNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB2z_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0ECskY9G75ZWc4U_11polars_expr", scope: !3828, file: !3825, line: 877, type: !3818, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92505 = distinct !DILexicalBlock(scope: !92479, file: !92671, line: 289, column: 13)
!92506 = distinct !DILocation(line: 290, column: 20, scope: !92505, inlinedAt: !92397)
!92507 = distinct !DILocation(line: 887, column: 14, scope: !92504, inlinedAt: !92506)
!92508 = distinct !{!92508, i1 false, !"_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr"}
!92509 = distinct !{!92509, !92508, !"_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!92510 = distinct !{!92510, i1 false, !"_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr"}
!92511 = distinct !{!92511, !92510, !"_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr: argument 0"}
!92512 = distinct !DISubprogram(name: "fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEEINtB6_7ZipImplBX_B1B_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3r_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr", scope: !4109, file: !4107, line: 244, type: !3818, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92513 = distinct !DILocation(line: 103, column: 9, scope: !92503, inlinedAt: !92507)
!92514 = distinct !DISubprogram(name: "spec_fold<&mut core::slice::iter::ChunksExactMut<u8>, &mut core::slice::iter::Iter<u32>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>>", linkageName: "_RINvXsj_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipQINtNtNtBc_5slice4iter14ChunksExactMuthEQINtB11_4ItermEENtB6_8SpecFold9spec_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB3o_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0ECskY9G75ZWc4U_11polars_expr", scope: !92704, file: !4107, line: 660, type: !3818, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92515 = distinct !DILexicalBlock(scope: !92514, file: !4107, line: 664, column: 9)
!92516 = distinct !DILocation(line: 248, column: 9, scope: !92512, inlinedAt: !92513)
!92517 = distinct !{!92517, i1 false, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr"}
!92518 = distinct !{!92518, !92517, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr: argument 1"}
!92519 = distinct !{!92519, !92517, !"_RNvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipQINtNtNtBb_5slice4iter14ChunksExactMuthEQINtB10_4ItermEEINtB5_7ZipImplBW_B1A_E9size_hintCskY9G75ZWc4U_11polars_expr: argument 0"}
!92520 = distinct !DILexicalBlock(scope: !92515, file: !4107, line: 666, column: 82)
!92521 = distinct !DILocation(line: 666, column: 54, scope: !92520, inlinedAt: !92516)
!92522 = distinct !DILocation(line: 227, column: 40, scope: !92493, inlinedAt: !92521)
!92523 = distinct !DILocation(line: 1576, column: 8, scope: !92492, inlinedAt: !92522)
!92524 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !4236, file: !4071, line: 1917, type: !3818, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92525 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCskY9G75ZWc4U_11polars_expr", scope: !4234, file: !4231, line: 780, type: !3818, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92526 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !4235, file: !4231, line: 865, type: !3818, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92527 = distinct !DILexicalBlock(scope: !92515, file: !4107, line: 666, column: 13)
!92528 = distinct !DILexicalBlock(scope: !92527, file: !4107, line: 673, column: 13)
!92529 = distinct !DILocation(line: 673, column: 22, scope: !92707, inlinedAt: !92516)
!92530 = distinct !DILocation(line: 866, column: 14, scope: !92526, inlinedAt: !92529)
!92531 = distinct !DILocation(line: 781, column: 12, scope: !92525, inlinedAt: !92530)
!92532 = distinct !DISubprogram(name: "next<core::slice::iter::ChunksExactMut<u8>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter14ChunksExactMuthENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !3874, file: !3825, line: 4265, type: !3879, scopeLine: 4265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92533 = distinct !DILocation(line: 677, column: 38, scope: !92528, inlinedAt: !92516)
!92534 = distinct !DILocation(line: 4266, column: 18, scope: !92532, inlinedAt: !92533)
!92535 = distinct !DILocation(line: 2053, column: 33, scope: !961, inlinedAt: !92534)
!92536 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !3882, file: !3880, line: 886, type: !3818, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92537 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !4233, file: !4231, line: 212, type: !3818, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92538 = distinct !DILexicalBlock(scope: !92525, file: !4231, line: 782, column: 13)
!92539 = distinct !DILocation(line: 784, column: 35, scope: !92538, inlinedAt: !92530)
!92540 = distinct !DILocation(line: 214, column: 28, scope: !92537, inlinedAt: !92539)
!92541 = distinct !{!92541, i1 false, !"_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr"}
!92542 = distinct !{!92542, !92541, !"_RNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr: argument 0"}
!92543 = distinct !DILocation(line: 2196, column: 32, scope: !960, inlinedAt: !92535)
!92544 = distinct !DILocation(line: 2109, column: 40, scope: !959, inlinedAt: !92543)
!92545 = distinct !DISubprogram(name: "{closure#0}<u8>", linkageName: "_RNCNvXs1y_NtNtCscgRAwXFJnXP_4core5slice4iterINtB8_14ChunksExactMuthENtNtNtNtBc_4iter6traits8iterator8Iterator4next0CskY9G75ZWc4U_11polars_expr", scope: !92709, file: !4034, line: 2053, type: !3818, scopeLine: 2053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92546 = distinct !DILexicalBlock(scope: !92545, file: !4034, line: 2053, column: 96)
!92547 = distinct !DISubprogram(name: "and_then<(&mut [u8], &mut [u8]), &mut [u8], core::slice::iter::{impl#98}::next::{closure_env#0}<u8>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionTQShBJ_EE8and_thenBJ_NCNvXs1y_NtNtB5_5slice4iterINtB1c_14ChunksExactMuthENtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECskY9G75ZWc4U_11polars_expr", scope: !3867, file: !3865, line: 1541, type: !3818, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92548 = distinct !DILexicalBlock(scope: !92547, file: !3865, line: 1546, column: 13)
!92549 = distinct !DILocation(line: 2053, column: 71, scope: !961, inlinedAt: !92534)
!92550 = distinct !DILocation(line: 1546, column: 24, scope: !92548, inlinedAt: !92549)
!92551 = distinct !{!92551, i1 false, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr"}
!92552 = distinct !{!92552, !92551, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr: argument 0"}
!92553 = distinct !DISubprogram(name: "next<core::slice::iter::Iter<u32>>", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core4iter6traits8iteratorQINtNtNtBb_5slice4iter4ItermENtB5_8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !3874, file: !3825, line: 4265, type: !3879, scopeLine: 4265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92554 = distinct !DILocation(line: 677, column: 72, scope: !92528, inlinedAt: !92516)
!92555 = distinct !DILocation(line: 4266, column: 18, scope: !92553, inlinedAt: !92554)
!92556 = distinct !DILocation(line: 180, column: 28, scope: !1709, inlinedAt: !92555)
!92557 = distinct !DILocation(line: 185, column: 40, scope: !1709, inlinedAt: !92555)
!92558 = distinct !{!92558, i1 false, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0CskY9G75ZWc4U_11polars_expr"}
!92559 = distinct !{!92559, !92558, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0CskY9G75ZWc4U_11polars_expr: argument 0"}
!92560 = distinct !{!92560, i1 false, !"_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0CskY9G75ZWc4U_11polars_expr"}
!92561 = distinct !{!92561, !92560, !"_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0CskY9G75ZWc4U_11polars_expr: argument 0"}
!92562 = distinct !DISubprogram(name: "{closure#0}<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB7_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0CskY9G75ZWc4U_11polars_expr", scope: !92713, file: !92671, line: 290, type: !3879, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92563 = distinct !DILexicalBlock(scope: !92562, file: !92671, line: 290, column: 44)
!92564 = distinct !DISubprogram(name: "{closure#0}<(&mut [u8], &u32), rand_core::block::{impl#5}::fill_bytes::{closure_env#0}<u32, 64, rand::rngs::thread::ReseedingCore>>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callTQShRmENCNvMs3_NtCs53V80GKKPEw_9rand_core5blockINtB1u_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE10fill_bytes0E0CskY9G75ZWc4U_11polars_expr", scope: !4252, file: !3825, line: 884, type: !3879, scopeLine: 884, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92565 = distinct !DILexicalBlock(scope: !92528, file: !4107, line: 674, column: 17)
!92566 = distinct !DILocation(line: 678, column: 25, scope: !92565, inlinedAt: !92516)
!92567 = distinct !DILocation(line: 884, column: 29, scope: !92564, inlinedAt: !92566)
!92568 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 4320, type: !3818, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92569 = distinct !DILocation(line: 290, column: 50, scope: !92563, inlinedAt: !92567)
!92570 = distinct !DISubprogram(name: "next<u32>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4ItermENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !4039, file: !4038, line: 157, type: !3818, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92571 = distinct !DILexicalBlock(scope: !92505, file: !92671, line: 294, column: 43)
!92572 = distinct !DILocation(line: 294, column: 36, scope: !92571, inlinedAt: !92397)
!92573 = distinct !DILexicalBlock(scope: !92570, file: !4038, line: 161, column: 17)
!92574 = distinct !DISubprogram(name: "eq<u32>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmENtNtB9_3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr", scope: !4037, file: !3854, line: 1716, type: !3818, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92575 = distinct !DILexicalBlock(scope: !92573, file: !4038, line: 162, column: 17)
!92576 = distinct !DILocation(line: 180, column: 28, scope: !92575, inlinedAt: !92572)
!92577 = distinct !DISubprogram(name: "add<u32>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullmE3addCskY9G75ZWc4U_11polars_expr", scope: !3856, file: !3854, line: 651, type: !3818, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92578 = distinct !DILocation(line: 185, column: 40, scope: !92575, inlinedAt: !92572)
!92579 = distinct !DILexicalBlock(scope: !92571, file: !92671, line: 296, column: 17)
!92580 = distinct !DILexicalBlock(scope: !92579, file: !92671, line: 297, column: 17)
!92581 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj11checked_sub", scope: !3882, file: !3880, line: 971, type: !3818, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92582 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCskY9G75ZWc4U_11polars_expr", scope: !4076, file: !3883, line: 435, type: !3818, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92583 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range7RangeTojEINtB5_10SliceIndexShE5indexCskY9G75ZWc4U_11polars_expr", scope: !4247, file: !3883, line: 528, type: !3818, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92584 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeTo<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range7RangeTojEE5indexCskY9G75ZWc4U_11polars_expr", scope: !4229, file: !3883, line: 18, type: !3818, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92585 = distinct !DILocation(line: 299, column: 73, scope: !92580, inlinedAt: !92397)
!92586 = distinct !DILocation(line: 19, column: 15, scope: !92716, inlinedAt: !92585)
!92587 = distinct !DILocation(line: 529, column: 23, scope: !92583, inlinedAt: !92586)
!92588 = distinct !DILocation(line: 437, column: 32, scope: !92582, inlinedAt: !92587)
!92589 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 4320, type: !3818, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92590 = distinct !DILocation(line: 299, column: 30, scope: !92580, inlinedAt: !92397)
!92591 = distinct !DISubprogram(name: "from_seed", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed", scope: !92717, file: !4563, line: 86, type: !3818, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92592 = distinct !DILocation(line: 150, column: 9, scope: !92382)
!92593 = distinct !{!92593, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed"}
!92594 = distinct !{!92594, !92593, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 1"}
!92595 = distinct !{!92595, !92593, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs5smallNtB2_8SmallRngNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 0"}
!92596 = distinct !{!92596, i1 false, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed"}
!92597 = distinct !{!92597, !92596, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 1"}
!92598 = distinct !{!92598, !92596, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed: argument 0"}
!92599 = distinct !{!92599, i1 false, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECskY9G75ZWc4U_11polars_expr"}
!92600 = distinct !{!92600, !92599, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECskY9G75ZWc4U_11polars_expr: argument 1"}
!92601 = distinct !{!92601, !92599, !"_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECskY9G75ZWc4U_11polars_expr: argument 0"}
!92602 = distinct !DISubprogram(name: "read_words<u64, 4>", linkageName: "_RINvNtCs53V80GKKPEw_9rand_core5utils10read_wordsyKj4_ECskY9G75ZWc4U_11polars_expr", scope: !92720, file: !92719, line: 141, type: !3818, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92603 = distinct !DISubprogram(name: "from_seed", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB2_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed", scope: !92721, file: !4560, line: 34, type: !3818, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92604 = distinct !DILexicalBlock(scope: !92591, file: !4563, line: 90, column: 9)
!92605 = distinct !DILocation(line: 91, column: 18, scope: !92604, inlinedAt: !92592)
!92606 = distinct !DILocation(line: 35, column: 21, scope: !92603, inlinedAt: !92605)
!92607 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1o_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExacthE3newCskY9G75ZWc4U_11polars_expr", scope: !92722, file: !4034, line: 1851, type: !3818, scopeLine: 1851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92608 = distinct !DILexicalBlock(scope: !92607, file: !4034, line: 1852, column: 9)
!92609 = distinct !DILexicalBlock(scope: !92608, file: !4034, line: 1853, column: 9)
!92610 = distinct !DISubprogram(name: "chunks_exact<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh12chunks_exactCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 1242, type: !3879, scopeLine: 1242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92611 = distinct !DILexicalBlock(scope: !92602, file: !92719, line: 143, column: 5)
!92612 = distinct !DILocation(line: 144, column: 22, scope: !92611, inlinedAt: !92606)
!92613 = distinct !DILocation(line: 1244, column: 9, scope: !92610, inlinedAt: !92612)
!92614 = distinct !DILocation(line: 1855, column: 41, scope: !92609, inlinedAt: !92613)
!92615 = distinct !DILocation(line: 2053, column: 64, scope: !817, inlinedAt: !92614)
!92616 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCskY9G75ZWc4U_11polars_expr", scope: !4033, file: !4031, line: 927, type: !3818, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92617 = distinct !DISubprogram(name: "new<u64>", linkageName: "_RNvMsa_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7IterMutyE3newCskY9G75ZWc4U_11polars_expr", scope: !4507, file: !4034, line: 221, type: !3818, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92618 = distinct !DILexicalBlock(scope: !92617, file: !4034, line: 222, column: 9)
!92619 = distinct !DILexicalBlock(scope: !92618, file: !4034, line: 223, column: 9)
!92620 = distinct !DISubprogram(name: "iter_mut<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy8iter_mutCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 1060, type: !3818, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92621 = distinct !DILexicalBlock(scope: !92611, file: !92719, line: 144, column: 5)
!92622 = distinct !DILocation(line: 145, column: 29, scope: !92621, inlinedAt: !92606)
!92623 = distinct !DILocation(line: 1061, column: 9, scope: !92620, inlinedAt: !92622)
!92624 = distinct !DILocation(line: 242, column: 82, scope: !92619, inlinedAt: !92623)
!92625 = distinct !{!92625, i1 false, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECskY9G75ZWc4U_11polars_expr"}
!92626 = distinct !{!92626, !92625, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECskY9G75ZWc4U_11polars_expr: argument 1"}
!92627 = distinct !{!92627, !92625, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECskY9G75ZWc4U_11polars_expr: argument 0"}
!92628 = distinct !DISubprogram(name: "zip<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_11ChunksExacthEECskY9G75ZWc4U_11polars_expr", scope: !3828, file: !3825, line: 626, type: !3818, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92629 = distinct !DILocation(line: 145, column: 40, scope: !92621, inlinedAt: !92606)
!92630 = distinct !{!92630, i1 false, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCskY9G75ZWc4U_11polars_expr"}
!92631 = distinct !{!92631, !92630, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCskY9G75ZWc4U_11polars_expr: argument 1"}
!92632 = distinct !{!92632, !92630, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCskY9G75ZWc4U_11polars_expr: argument 0"}
!92633 = distinct !DISubprogram(name: "into_iter<core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter11ChunksExacthENtB2_12IntoIterator9into_iterCskY9G75ZWc4U_11polars_expr", scope: !4529, file: !4527, line: 322, type: !3818, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92634 = distinct !DILocation(line: 631, column: 30, scope: !92628, inlinedAt: !92629)
!92635 = distinct !DISubprogram(name: "new<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter7IterMutyEINtBW_11ChunksExacthEE3newCskY9G75ZWc4U_11polars_expr", scope: !4110, file: !4107, line: 23, type: !3818, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92636 = distinct !DILocation(line: 631, column: 9, scope: !92628, inlinedAt: !92629)
!92637 = distinct !{!92637, i1 false, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCskY9G75ZWc4U_11polars_expr"}
!92638 = distinct !{!92638, !92637, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCskY9G75ZWc4U_11polars_expr: argument 1"}
!92639 = distinct !{!92639, !92637, !"_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCskY9G75ZWc4U_11polars_expr: argument 0"}
!92640 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E4nextCskY9G75ZWc4U_11polars_expr", scope: !4569, file: !4107, line: 305, type: !3818, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92641 = distinct !DISubprogram(name: "next<core::slice::iter::IterMut<u64>, core::slice::iter::ChunksExact<u8>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB4_3ZipINtNtNtBa_5slice4iter7IterMutyEINtBY_11ChunksExacthEENtNtNtB8_6traits8iterator8Iterator4nextCskY9G75ZWc4U_11polars_expr", scope: !4117, file: !4107, line: 84, type: !3818, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92642 = distinct !DILexicalBlock(scope: !92621, file: !92719, line: 145, column: 5)
!92643 = distinct !DILocation(line: 145, column: 25, scope: !92729, inlinedAt: !92606)
!92644 = distinct !DILocation(line: 85, column: 9, scope: !92641, inlinedAt: !92643)
!92645 = distinct !DILexicalBlock(scope: !92640, file: !4107, line: 307, column: 13)
!92646 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOy3addCskY9G75ZWc4U_11polars_expr", scope: !4033, file: !4031, line: 927, type: !3818, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92647 = distinct !DISubprogram(name: "__iterator_get_unchecked<u64>", linkageName: "_RNvXs2R_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_7IterMutyENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCskY9G75ZWc4U_11polars_expr", scope: !4508, file: !4038, line: 418, type: !3879, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92648 = distinct !DILocation(line: 313, column: 30, scope: !92645, inlinedAt: !92644)
!92649 = distinct !DILocation(line: 429, column: 60, scope: !92647, inlinedAt: !92648)
!92650 = distinct !DILexicalBlock(scope: !92642, file: !92719, line: 145, column: 5)
!92651 = distinct !DISubprogram(name: "copy_from_slice<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh15copy_from_sliceCskY9G75ZWc4U_11polars_expr", scope: !3888, file: !3887, line: 4320, type: !3818, scopeLine: 4320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92652 = distinct !DILexicalBlock(scope: !92650, file: !92719, line: 146, column: 9)
!92653 = distinct !DILocation(line: 147, column: 22, scope: !92652, inlinedAt: !92606)
!92654 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB4_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed0CskY9G75ZWc4U_11polars_expr", scope: !92733, file: !4560, line: 38, type: !3879, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92655 = distinct !DILexicalBlock(scope: !92654, file: !4560, line: 38, column: 34)
!92656 = distinct !DISubprogram(name: "all<u64, rand::rngs::xoshiro256plusplus::{impl#0}::from_seed::{closure_env#0}>", linkageName: "_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteryENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvXNtNtCsci2cbTAlhZn_4rand4rngs18xoshiro256plusplusNtB1G_18Xoshiro256PlusPlusNtNtCs53V80GKKPEw_9rand_core12seedable_rng11SeedableRng9from_seed0ECskY9G75ZWc4U_11polars_expr", scope: !4039, file: !4038, line: 309, type: !3818, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92657 = distinct !DILexicalBlock(scope: !92656, file: !4038, line: 314, column: 49)
!92658 = distinct !DILexicalBlock(scope: !92603, file: !4560, line: 35, column: 9)
!92659 = distinct !DILocation(line: 38, column: 25, scope: !92658, inlinedAt: !92605)
!92660 = distinct !DILocation(line: 315, column: 25, scope: !92657, inlinedAt: !92659)
!92661 = !DIFile(filename: "src/seedable_rng.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "eb03674c5280abd989777b5facaedc75")
!92662 = !DINamespace(name: "seedable_rng", scope: !4566)
!92663 = !DINamespace(name: "SeedableRng", scope: !92662)
!92664 = !{!92380}
!92665 = !{!92381}
!92666 = !DIFile(filename: "src/rngs/thread.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "df6773183ceecd8f30e63b8ea4079038")
!92667 = !DINamespace(name: "thread", scope: !4561)
!92668 = !DINamespace(name: "{impl#5}", scope: !92667)
!92669 = !{!92390}
!92670 = !{!92393}
!92671 = !DIFile(filename: "src/block.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "05a8db703173f32a64ac37e21576a74a")
!92672 = !DINamespace(name: "block", scope: !4566)
!92673 = !DINamespace(name: "BlockRng", scope: !92672)
!92674 = !{!92401, !92400, !92393}
!92675 = !DINamespace(name: "{impl#20}", scope: !4298)
!92676 = !DIFile(filename: "src/word.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "604c84d04a2b49fce54326900523aa64")
!92677 = !DINamespace(name: "word", scope: !4566)
!92678 = !DINamespace(name: "sealed", scope: !92677)
!92679 = !DINamespace(name: "{impl#0}", scope: !92678)
!92680 = !{!92400}
!92681 = !{!92419, !92390}
!92682 = !{!92420, !92401, !92400, !92393}
!92683 = !DIFile(filename: "src/variants.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "b95ebc19fd2a8bf9e14b229a727fcb3d")
!92684 = !DINamespace(name: "chacha20", scope: null)
!92685 = !DINamespace(name: "variants", scope: !92684)
!92686 = !DINamespace(name: "{impl#3}", scope: !92685)
!92687 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "89e7403dfb892fecb85a0562600a2d06")
!92688 = !DINamespace(name: "ChaChaCore", scope: !92684)
!92689 = !DINamespace(name: "{impl#0}", scope: !92667)
!92690 = !{!92420, !92400}
!92691 = !{!92390, !92401, !92400, !92393}
!92692 = !{!92437}
!92693 = !{!92438, !92390, !92401, !92400, !92393}
!92694 = !DINamespace(name: "ChunksExactMut", scope: !4035)
!92695 = !{!92467, !92465}
!92696 = !{!92471, !92470, !92469, !92468, !92390, !92401, !92400, !92393}
!92697 = !{!92482, !92481, !92390, !92401, !92400, !92393}
!92698 = !DINamespace(name: "ExactSizeIterator", scope: !3869)
!92699 = !{!92482, !92400}
!92700 = !DINamespace(name: "{impl#17}", scope: !3866)
!92701 = !{!92509}
!92702 = !{!92511}
!92703 = !{!92511, !92509}
!92704 = !DINamespace(name: "{impl#21}", scope: !4108)
!92705 = !{!92519, !92518, !92511, !92509, !92390, !92401, !92400, !92393}
!92706 = !{!92519, !92400}
!92707 = !DILexicalBlockFile(scope: !92528, file: !4107, discriminator: 2)
!92708 = !{!92542}
!92709 = !DINamespace(name: "next", scope: !4249)
!92710 = !{!92552}
!92711 = !{!92561, !92559, !92511, !92509, !92390, !92401, !92400, !92393}
!92712 = !DINamespace(name: "{impl#5}", scope: !92672)
!92713 = !DINamespace(name: "fill_bytes", scope: !92712)
!92714 = !{!92561, !92559, !92400}
!92715 = !DILexicalBlockFile(scope: !92408, file: !4313, discriminator: 0)
!92716 = !DILexicalBlockFile(scope: !92584, file: !3883, discriminator: 2)
!92717 = !DINamespace(name: "{impl#0}", scope: !4564)
!92718 = !{!92601, !92600, !92598, !92597, !92595, !92594}
!92719 = !DIFile(filename: "src/utils.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "fbe1baa64c669dc0f9cae48f4aa2323d")
!92720 = !DINamespace(name: "utils", scope: !4566)
!92721 = !DINamespace(name: "{impl#0}", scope: !4562)
!92722 = !DINamespace(name: "ChunksExact", scope: !4035)
!92723 = !{!92627, !92626, !92601, !92598, !92597, !92595, !92594}
!92724 = !{!92632, !92631}
!92725 = !{!92627, !92601, !92598, !92597, !92595, !92594}
!92726 = !{!92601, !92598, !92595, !92594}
!92727 = !{!92638}
!92728 = !{!92639, !92601, !92598, !92597, !92595, !92594}
!92729 = !DILexicalBlockFile(scope: !92642, file: !92719, discriminator: 2)
!92730 = !{!92639, !92601, !92598, !92595, !92594}
!92731 = !{!92595, !92594}
!92732 = !{!92600, !92598, !92597, !92595, !92594}
!92733 = !DINamespace(name: "from_seed", scope: !92721)
!92734 = !{!92594}
!92735 = !DILocation(line: 148, column: 13, scope: !92378)
!92736 = !DILocation(line: 148, column: 24, scope: !92378)
!92737 = !DILocation(line: 149, column: 13, scope: !92382)
!92738 = !DILocation(line: 2447, column: 9, scope: !92383, inlinedAt: !92388)
!92739 = !DILocation(line: 236, column: 13, scope: !92391, inlinedAt: !92387)
!92740 = !DILocation(line: 175, column: 9, scope: !92394, inlinedAt: !92398)
!92741 = !DILocation(line: 253, column: 20, scope: !92402, inlinedAt: !92407)
!92742 = !DILocation(line: 278, column: 15, scope: !92408, inlinedAt: !92397)
!92743 = !DILocation(line: 279, column: 16, scope: !92408, inlinedAt: !92397)
!92744 = !DILocation(line: 0, scope: !92396, inlinedAt: !92397)
!92745 = !DILocation(line: 295, column: 20, scope: !92409, inlinedAt: !92416)
!92746 = !DILocation(line: 1233, column: 23, scope: !1705, inlinedAt: !92417)
!92747 = !DILocation(line: 70, column: 20, scope: !92421, inlinedAt: !92426)
!92748 = !DILocation(line: 53, column: 12, scope: !92423, inlinedAt: !92424)
!92749 = !DILocation(line: 54, column: 18, scope: !92423, inlinedAt: !92424)
!92750 = !DILocation(line: 56, column: 20, scope: !92423, inlinedAt: !92424)
!92751 = !DILocation(line: 279, column: 13, scope: !92408, inlinedAt: !92397)
!92752 = !DILocation(line: 285, column: 17, scope: !92427, inlinedAt: !92397)
!92753 = !DILocation(line: 585, column: 27, scope: !92428, inlinedAt: !92431)
!92754 = !DILocation(line: 101, column: 24, scope: !92433, inlinedAt: !92435)
!92755 = !DILocation(line: 2033, column: 9, scope: !92442, inlinedAt: !92445)
!92756 = !DILocation(line: 286, column: 17, scope: !92446, inlinedAt: !92397)
!92757 = !DILocation(line: 89, column: 24, scope: !92448, inlinedAt: !92456)
!92758 = !DILocation(line: 104, column: 13, scope: !92460, inlinedAt: !92463)
!92759 = !DILocation(line: 155, column: 13, scope: !92472, inlinedAt: !92478)
!92760 = !DILocation(line: 289, column: 37, scope: !92479, inlinedAt: !92397)
!92761 = !DILocation(line: 221, column: 34, scope: !92483, inlinedAt: !92488)
!92762 = !DILocation(line: 221, column: 41, scope: !92483, inlinedAt: !92488)
!92763 = !DILocation(line: 221, column: 14, scope: !92483, inlinedAt: !92488)
!92764 = !DILocation(line: 221, column: 23, scope: !92483, inlinedAt: !92488)
!92765 = !DILocation(line: 221, column: 52, scope: !92483, inlinedAt: !92488)
!92766 = !DILocation(line: 222, column: 34, scope: !92489, inlinedAt: !92488)
!92767 = !DILocation(line: 222, column: 41, scope: !92489, inlinedAt: !92488)
!92768 = !DILocation(line: 222, column: 14, scope: !92489, inlinedAt: !92488)
!92769 = !DILocation(line: 222, column: 23, scope: !92489, inlinedAt: !92488)
!92770 = !DILocation(line: 222, column: 52, scope: !92489, inlinedAt: !92488)
!92771 = !DILocation(line: 226, column: 21, scope: !92491, inlinedAt: !92488)
!92772 = !DILocation(line: 0, scope: !92491, inlinedAt: !92488)
!92773 = !DILocation(line: 1077, column: 12, scope: !286, inlinedAt: !92495)
!92774 = !DILocation(line: 227, column: 54, scope: !92491, inlinedAt: !92488)
!92775 = !DILocation(line: 0, scope: !92489, inlinedAt: !92488)
!92776 = !DILocation(line: 1077, column: 12, scope: !286, inlinedAt: !92497)
!92777 = !DILocation(line: 117, column: 21, scope: !92485, inlinedAt: !92486)
!92778 = !DILocation(line: 122, column: 27, scope: !92498, inlinedAt: !92486)
!92779 = !DILocation(line: 2442, column: 9, scope: !92499, inlinedAt: !92501)
!92780 = !DILocation(line: 51, column: 21, scope: !92502, inlinedAt: !92486)
!92781 = !DILocation(line: 103, column: 9, scope: !92503, inlinedAt: !92507)
!92782 = !DILocation(line: 248, column: 9, scope: !92512, inlinedAt: !92513)
!92783 = !DILocation(line: 665, column: 9, scope: !92515, inlinedAt: !92516)
!92784 = !DILocation(line: 221, column: 34, scope: !92483, inlinedAt: !92521)
!92785 = !DILocation(line: 221, column: 41, scope: !92483, inlinedAt: !92521)
!92786 = !DILocation(line: 221, column: 23, scope: !92483, inlinedAt: !92521)
!92787 = !DILocation(line: 221, column: 52, scope: !92483, inlinedAt: !92521)
!92788 = !DILocation(line: 222, column: 34, scope: !92489, inlinedAt: !92521)
!92789 = !DILocation(line: 222, column: 41, scope: !92489, inlinedAt: !92521)
!92790 = !DILocation(line: 222, column: 23, scope: !92489, inlinedAt: !92521)
!92791 = !DILocation(line: 222, column: 52, scope: !92489, inlinedAt: !92521)
!92792 = !DILocation(line: 226, column: 21, scope: !92491, inlinedAt: !92521)
!92793 = !DILocation(line: 666, scope: !92520, inlinedAt: !92516)
!92794 = !DILocation(line: 1077, column: 12, scope: !286, inlinedAt: !92523)
!92795 = !DILocation(line: 227, column: 54, scope: !92491, inlinedAt: !92521)
!92796 = !DILocation(line: 666, column: 40, scope: !92520, inlinedAt: !92516)
!92797 = !DILocation(line: 0, scope: !92515, inlinedAt: !92516)
!92798 = !DILocation(line: 1917, column: 50, scope: !92524, inlinedAt: !92531)
!92799 = !DILocation(line: 781, column: 12, scope: !92525, inlinedAt: !92530)
!92800 = !DILocation(line: 2193, column: 12, scope: !960, inlinedAt: !92535)
!92801 = !DILocation(line: 681, column: 17, scope: !92527, inlinedAt: !92516)
!92802 = !DILocation(line: 898, column: 17, scope: !92536, inlinedAt: !92540)
!92803 = !DILocation(line: 2053, column: 18, scope: !961, inlinedAt: !92534)
!92804 = !DILocation(line: 2053, column: 54, scope: !961, inlinedAt: !92534)
!92805 = !DILocation(line: 961, column: 18, scope: !956, inlinedAt: !92544)
!92806 = !DILocation(line: 2109, column: 50, scope: !959, inlinedAt: !92543)
!92807 = !DILocation(line: 2054, column: 13, scope: !92546, inlinedAt: !92550)
!92808 = !DILocation(line: 161, column: 27, scope: !1706, inlinedAt: !92555)
!92809 = !DILocation(line: 162, column: 34, scope: !1707, inlinedAt: !92555)
!92810 = !DILocation(line: 1717, column: 9, scope: !1708, inlinedAt: !92556)
!92811 = !DILocation(line: 180, column: 28, scope: !1709, inlinedAt: !92555)
!92812 = !DILocation(line: 659, column: 28, scope: !1710, inlinedAt: !92557)
!92813 = !DILocation(line: 185, column: 25, scope: !1709, inlinedAt: !92555)
!92814 = !DILocation(line: 290, column: 66, scope: !92563, inlinedAt: !92567)
!92815 = !DILocation(line: 290, column: 70, scope: !92563, inlinedAt: !92567)
!92816 = !DILocation(line: 4325, column: 18, scope: !92568, inlinedAt: !92569)
!92817 = !DILocation(line: 290, column: 92, scope: !92563, inlinedAt: !92567)
!92818 = !DILocation(line: 291, column: 13, scope: !92505, inlinedAt: !92397)
!92819 = !DILocation(line: 161, column: 27, scope: !92570, inlinedAt: !92572)
!92820 = !DILocation(line: 162, column: 34, scope: !92573, inlinedAt: !92572)
!92821 = !DILocation(line: 1717, column: 9, scope: !92574, inlinedAt: !92576)
!92822 = !DILocation(line: 180, column: 28, scope: !92575, inlinedAt: !92572)
!92823 = !DILocation(line: 659, column: 28, scope: !92577, inlinedAt: !92578)
!92824 = !DILocation(line: 185, column: 25, scope: !92575, inlinedAt: !92572)
!92825 = !DILocation(line: 296, column: 32, scope: !92571, inlinedAt: !92397)
!92826 = !DILocation(line: 298, column: 20, scope: !92580, inlinedAt: !92397)
!92827 = !DILocation(line: 0, scope: !92505, inlinedAt: !92397)
!92828 = !DILocation(line: 305, column: 9, scope: !92446, inlinedAt: !92397)
!92829 = !DILocation(line: 305, column: 9, scope: !92427, inlinedAt: !92397)
!92830 = !DILocation(line: 0, scope: !92715, inlinedAt: !92397)
!92831 = !DILocation(line: 299, column: 47, scope: !92580, inlinedAt: !92397)
!92832 = !DILocation(line: 299, column: 51, scope: !92580, inlinedAt: !92397)
!92833 = !DILocation(line: 977, column: 16, scope: !92581, inlinedAt: !92588)
!92834 = !DILocation(line: 4325, column: 18, scope: !92589, inlinedAt: !92590)
!92835 = !DILocation(line: 299, column: 79, scope: !92580, inlinedAt: !92397)
!92836 = !DILocation(line: 300, column: 21, scope: !92580, inlinedAt: !92397)
!92837 = !DILocation(line: 301, column: 21, scope: !92580, inlinedAt: !92397)
!92838 = !DILocation(line: 443, column: 13, scope: !92582, inlinedAt: !92587)
!92839 = !DILocation(line: 292, column: 25, scope: !92505, inlinedAt: !92397)
!92840 = !DILocation(line: 292, column: 13, scope: !92505, inlinedAt: !92397)
!92841 = !DILocation(line: 298, column: 24, scope: !92409, inlinedAt: !92416)
!92842 = !DILocation(line: 181, column: 9, scope: !92412, inlinedAt: !92413)
!92843 = !DILocation(line: 307, column: 6, scope: !92395, inlinedAt: !92397)
!92844 = !DILocation(line: 90, column: 20, scope: !92591, inlinedAt: !92592)
!92845 = !DILocation(line: 150, column: 25, scope: !92382)
!92846 = !DILocation(line: 143, column: 9, scope: !92602, inlinedAt: !92606)
!92847 = !DILocation(line: 863, column: 18, scope: !814, inlinedAt: !92615)
!92848 = !DILocation(line: 961, column: 18, scope: !92616, inlinedAt: !92624)
!92849 = !DILocation(line: 631, column: 24, scope: !92628, inlinedAt: !92629)
!92850 = !DILocation(line: 323, column: 9, scope: !92633, inlinedAt: !92634)
!92851 = !DILocation(line: 145, column: 25, scope: !92621, inlinedAt: !92606)
!92852 = !DILocation(line: 24, column: 9, scope: !92635, inlinedAt: !92636)
!92853 = !DILocation(line: 631, column: 41, scope: !92628, inlinedAt: !92629)
!92854 = !DILocation(line: 306, column: 12, scope: !92640, inlinedAt: !92644)
!92855 = !DILocation(line: 306, column: 25, scope: !92640, inlinedAt: !92644)
!92856 = !DILocation(line: 310, column: 13, scope: !92645, inlinedAt: !92644)
!92857 = !DILocation(line: 313, column: 30, scope: !92645, inlinedAt: !92644)
!92858 = !DILocation(line: 961, column: 18, scope: !92646, inlinedAt: !92649)
!92859 = !DILocation(line: 313, column: 66, scope: !92645, inlinedAt: !92644)
!92860 = !DILocation(line: 313, column: 59, scope: !92645, inlinedAt: !92644)
!92861 = !DILocation(line: 146, column: 13, scope: !92650, inlinedAt: !92606)
!92862 = !DILocation(line: 146, column: 33, scope: !92650, inlinedAt: !92606)
!92863 = !DILocation(line: 4325, column: 18, scope: !92651, inlinedAt: !92653)
!92864 = !DILocation(line: 148, column: 33, scope: !92652, inlinedAt: !92606)
!92865 = !DILocation(line: 148, column: 9, scope: !92652, inlinedAt: !92606)
!92866 = !DILocation(line: 149, column: 5, scope: !92650, inlinedAt: !92606)
!92867 = !DILocation(line: 149, column: 5, scope: !92621, inlinedAt: !92606)
!92868 = !DILocation(line: 150, column: 5, scope: !92621, inlinedAt: !92606)
!92869 = !DILocation(line: 151, column: 1, scope: !92602, inlinedAt: !92606)
!92870 = !DILocation(line: 38, column: 34, scope: !92655, inlinedAt: !92660)
!92871 = !DILocation(line: 315, column: 25, scope: !92657, inlinedAt: !92659)
!92872 = !DILocation(line: 42, column: 6, scope: !92603, inlinedAt: !92605)
!92873 = !DILocation(line: 91, column: 9, scope: !92604, inlinedAt: !92592)
!92874 = !DILocation(line: 92, column: 6, scope: !92591, inlinedAt: !92592)
!92875 = !DILocation(line: 151, column: 5, scope: !92378)
!92876 = !DILocation(line: 151, column: 6, scope: !92378)
!92877 = distinct !DISubprogram(name: "par_sort_by<[(u32, i64)], (u32, i64), polars_core::chunked_array::ops::sort::arg_sort::sort_impl::{closure_env#0}<i64>>", linkageName: "_RINvYSTmxEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB4_E11par_sort_byNCINvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort9sort_implxE0ECskY9G75ZWc4U_11polars_expr", scope: !4570, file: !4517, line: 453, type: !3818, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92878 = !DILocation(line: 457, column: 9, scope: !92877)
!92879 = !DILocation(line: 460, column: 6, scope: !92877)
!92880 = distinct !DISubprogram(name: "par_sort_by<[(u32, i64)], (u32, i64), polars_core::chunked_array::ops::sort::sort_by_branch::{closure#0}::{closure_env#0}<(u32, i64), polars_core::chunked_array::ops::sort::arg_sort::sort_impl::{closure_env#0}<i64>>>", linkageName: "_RINvYSTmxEINtNtCse67t6KqNqGQ_5rayon5slice16ParallelSliceMutB4_E11par_sort_byNCNCINvNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort14sort_by_branchB4_NCINvNtB1j_8arg_sort9sort_implxE0E00ECskY9G75ZWc4U_11polars_expr", scope: !4570, file: !4517, line: 453, type: !3818, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92881 = !DILocation(line: 457, column: 9, scope: !92880)
!92882 = !DILocation(line: 460, column: 6, scope: !92880)
!92883 = distinct !DISubprogram(name: "{closure#0}<polars_utils::float16::pf16, false>", linkageName: "_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listNtNtCs2mZqlW55729_12polars_utils7float164pf16Kb0_E0CskY9G75ZWc4U_11polars_expr", scope: !4571, file: !4417, line: 206, type: !3879, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92884 = distinct !DISubprogram(name: "len<polars_arrow::array::binview::view::View>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE3lenCskY9G75ZWc4U_11polars_expr", scope: !4125, file: !4122, line: 147, type: !3818, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92885 = distinct !DISubprogram(name: "len<[u8]>", linkageName: "_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE3lenCskY9G75ZWc4U_11polars_expr", scope: !4337, file: !4336, line: 547, type: !3818, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92886 = distinct !DILexicalBlock(scope: !92883, file: !4572, line: 114, column: 33)
!92887 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !4574, file: !4573, line: 649, type: !3818, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92888 = distinct !DILocation(line: 659, column: 19, scope: !92887, inlinedAt: !92899)
!92889 = distinct !DILocation(line: 1278, column: 21, scope: !1712, inlinedAt: !92888)
!92890 = distinct !DILocation(line: 207, column: 9, scope: !92883)
!92891 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCskY9G75ZWc4U_11polars_expr", scope: !4318, file: !3848, line: 777, type: !3818, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92892 = distinct !{!92892, i1 false, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use"}
!92893 = distinct !{!92893, !92892, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 1"}
!92894 = distinct !{!92894, !92892, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 0"}
!92895 = !DILocation(line: 210, column: 18, scope: !92883)
!92896 = !DILocation(line: 548, column: 20, scope: !92885, inlinedAt: !92895)
!92897 = !DILexicalBlockFile(scope: !92886, file: !4417, discriminator: 0)
!92898 = !DILexicalBlockFile(scope: !92883, file: !4417, discriminator: 6)
!92899 = !DILocation(line: 207, column: 9, scope: !92898)
!92900 = !DILexicalBlockFile(scope: !92883, file: !4417, discriminator: 10)
!92901 = !DILocation(line: 207, column: 9, scope: !92900)
!92902 = !{!92894, !92893}
!92903 = !DILocation(line: 210, column: 13, scope: !92883)
!92904 = !DILocation(line: 148, column: 9, scope: !92884, inlinedAt: !92896)
!92905 = !DILocation(line: 207, column: 9, scope: !92897)
!92906 = !DILocation(line: 659, column: 34, scope: !1711, inlinedAt: !92889)
!92907 = !DILocation(line: 207, column: 9, scope: !92883)
!92908 = !DILocation(line: 669, column: 9, scope: !1713, inlinedAt: !92890)
!92909 = !DILocation(line: 778, column: 9, scope: !92891, inlinedAt: !92901)
!92910 = !DILocation(line: 213, column: 6, scope: !92883)
!92911 = distinct !DISubprogram(name: "{closure#1}<polars_utils::float16::pf16, false>", linkageName: "_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listNtNtCs2mZqlW55729_12polars_utils7float164pf16Kb0_Es_0CskY9G75ZWc4U_11polars_expr", scope: !4571, file: !4417, line: 215, type: !3818, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92912 = distinct !DILexicalBlock(scope: !92911, file: !4572, line: 114, column: 33)
!92913 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !4574, file: !4573, line: 649, type: !3818, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92914 = distinct !DILocation(line: 659, column: 19, scope: !92913, inlinedAt: !92923)
!92915 = distinct !DILocation(line: 1278, column: 21, scope: !1712, inlinedAt: !92914)
!92916 = distinct !DILocation(line: 216, column: 9, scope: !92911)
!92917 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCskY9G75ZWc4U_11polars_expr", scope: !4318, file: !3848, line: 777, type: !3818, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92918 = distinct !{!92918, i1 false, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use"}
!92919 = distinct !{!92919, !92918, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 1"}
!92920 = distinct !{!92920, !92918, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 0"}
!92921 = !DILexicalBlockFile(scope: !92912, file: !4417, discriminator: 0)
!92922 = !DILexicalBlockFile(scope: !92911, file: !4417, discriminator: 6)
!92923 = !DILocation(line: 216, column: 9, scope: !92922)
!92924 = !DILexicalBlockFile(scope: !92911, file: !4417, discriminator: 10)
!92925 = !DILocation(line: 216, column: 9, scope: !92924)
!92926 = !{!92920, !92919}
!92927 = !DILocation(line: 216, column: 9, scope: !92921)
!92928 = !DILocation(line: 659, column: 34, scope: !1711, inlinedAt: !92915)
!92929 = !DILocation(line: 216, column: 9, scope: !92911)
!92930 = !DILocation(line: 669, column: 9, scope: !1713, inlinedAt: !92916)
!92931 = !DILocation(line: 778, column: 9, scope: !92917, inlinedAt: !92925)
!92932 = !DILocation(line: 222, column: 6, scope: !92911)
!92933 = distinct !DISubprogram(name: "{closure#0}<polars_utils::float16::pf16, true>", linkageName: "_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listNtNtCs2mZqlW55729_12polars_utils7float164pf16Kb1_E0CskY9G75ZWc4U_11polars_expr", scope: !4571, file: !4417, line: 206, type: !3879, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92934 = distinct !DISubprogram(name: "len<polars_arrow::array::binview::view::View>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE3lenCskY9G75ZWc4U_11polars_expr", scope: !4125, file: !4122, line: 147, type: !3818, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92935 = distinct !DISubprogram(name: "len<[u8]>", linkageName: "_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE3lenCskY9G75ZWc4U_11polars_expr", scope: !4337, file: !4336, line: 547, type: !3818, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92936 = distinct !DILexicalBlock(scope: !92933, file: !4572, line: 114, column: 33)
!92937 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !4574, file: !4573, line: 649, type: !3818, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92938 = distinct !DILocation(line: 659, column: 19, scope: !92937, inlinedAt: !92949)
!92939 = distinct !DILocation(line: 1278, column: 21, scope: !1712, inlinedAt: !92938)
!92940 = distinct !DILocation(line: 207, column: 9, scope: !92933)
!92941 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCskY9G75ZWc4U_11polars_expr", scope: !4318, file: !3848, line: 777, type: !3818, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92942 = distinct !{!92942, i1 false, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use"}
!92943 = distinct !{!92943, !92942, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 1"}
!92944 = distinct !{!92944, !92942, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 0"}
!92945 = !DILocation(line: 210, column: 18, scope: !92933)
!92946 = !DILocation(line: 548, column: 20, scope: !92935, inlinedAt: !92945)
!92947 = !DILexicalBlockFile(scope: !92936, file: !4417, discriminator: 0)
!92948 = !DILexicalBlockFile(scope: !92933, file: !4417, discriminator: 6)
!92949 = !DILocation(line: 207, column: 9, scope: !92948)
!92950 = !DILexicalBlockFile(scope: !92933, file: !4417, discriminator: 10)
!92951 = !DILocation(line: 207, column: 9, scope: !92950)
!92952 = !{!92944, !92943}
!92953 = !DILocation(line: 210, column: 13, scope: !92933)
!92954 = !DILocation(line: 148, column: 9, scope: !92934, inlinedAt: !92946)
!92955 = !DILocation(line: 207, column: 9, scope: !92947)
!92956 = !DILocation(line: 659, column: 34, scope: !1711, inlinedAt: !92939)
!92957 = !DILocation(line: 207, column: 9, scope: !92933)
!92958 = !DILocation(line: 669, column: 9, scope: !1713, inlinedAt: !92940)
!92959 = !DILocation(line: 778, column: 9, scope: !92941, inlinedAt: !92951)
!92960 = !DILocation(line: 213, column: 6, scope: !92933)
!92961 = distinct !DISubprogram(name: "{closure#1}<polars_utils::float16::pf16, true>", linkageName: "_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listNtNtCs2mZqlW55729_12polars_utils7float164pf16Kb1_Es_0CskY9G75ZWc4U_11polars_expr", scope: !4571, file: !4417, line: 215, type: !3818, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92962 = distinct !DILexicalBlock(scope: !92961, file: !4572, line: 114, column: 33)
!92963 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !4574, file: !4573, line: 649, type: !3818, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92964 = distinct !DILocation(line: 659, column: 19, scope: !92963, inlinedAt: !92973)
!92965 = distinct !DILocation(line: 1278, column: 21, scope: !1712, inlinedAt: !92964)
!92966 = distinct !DILocation(line: 216, column: 9, scope: !92961)
!92967 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCskY9G75ZWc4U_11polars_expr", scope: !4318, file: !3848, line: 777, type: !3818, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92968 = distinct !{!92968, i1 false, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use"}
!92969 = distinct !{!92969, !92968, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 1"}
!92970 = distinct !{!92970, !92968, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 0"}
!92971 = !DILexicalBlockFile(scope: !92962, file: !4417, discriminator: 0)
!92972 = !DILexicalBlockFile(scope: !92961, file: !4417, discriminator: 6)
!92973 = !DILocation(line: 216, column: 9, scope: !92972)
!92974 = !DILexicalBlockFile(scope: !92961, file: !4417, discriminator: 10)
!92975 = !DILocation(line: 216, column: 9, scope: !92974)
!92976 = !{!92970, !92969}
!92977 = !DILocation(line: 216, column: 9, scope: !92971)
!92978 = !DILocation(line: 659, column: 34, scope: !1711, inlinedAt: !92965)
!92979 = !DILocation(line: 216, column: 9, scope: !92961)
!92980 = !DILocation(line: 669, column: 9, scope: !1713, inlinedAt: !92966)
!92981 = !DILocation(line: 778, column: 9, scope: !92967, inlinedAt: !92975)
!92982 = !DILocation(line: 222, column: 6, scope: !92961)
!92983 = distinct !DISubprogram(name: "{closure#0}<i8, false>", linkageName: "_RNCINvNtNtCslFlrwjHoTci_14polars_compute4cast10binview_to30try_binview_to_fixed_size_listaKb0_E0CskY9G75ZWc4U_11polars_expr", scope: !4571, file: !4417, line: 206, type: !3879, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92984 = distinct !DISubprogram(name: "len<polars_arrow::array::binview::view::View>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE3lenCskY9G75ZWc4U_11polars_expr", scope: !4125, file: !4122, line: 147, type: !3818, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92985 = distinct !DISubprogram(name: "len<[u8]>", linkageName: "_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow5array7binviewINtB5_22BinaryViewArrayGenericShE3lenCskY9G75ZWc4U_11polars_expr", scope: !4337, file: !4336, line: 547, type: !3818, scopeLine: 547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92986 = distinct !DILexicalBlock(scope: !92983, file: !4572, line: 114, column: 33)
!92987 = distinct !DISubprogram(name: "format", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format", scope: !4574, file: !4573, line: 649, type: !3818, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92988 = distinct !DILocation(line: 659, column: 19, scope: !92987, inlinedAt: !92999)
!92989 = distinct !DILocation(line: 1278, column: 21, scope: !1712, inlinedAt: !92988)
!92990 = distinct !DILocation(line: 207, column: 9, scope: !92983)
!92991 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCskY9G75ZWc4U_11polars_expr", scope: !4318, file: !3848, line: 777, type: !3818, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !3817)
!92992 = distinct !{!92992, i1 false, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use"}
!92993 = distinct !{!92993, !92992, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 1"}
!92994 = distinct !{!92994, !92992, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 0"}
!92995 = !DILocation(line: 210, column: 18, scope: !92983)
!92996 = !DILocation(line: 548, column: 20, scope: !92985, inlinedAt: !92995)
!92997 = !DILexicalBlockFile(scope: !92986, file: !4417, discriminator: 0)
!92998 = !DILexicalBlockFile(scope: !92983, file: !4417, discriminator: 6)
!92999 = !DILocation(line: 207, column: 9, scope: !92998)
!93000 = !DILexicalBlockFile(scope: !92983, file: !4417, discriminator: 10)
!93001 = !DILocation(line: 207, column: 9, scope: !93000)
!93002 = !{!92994, !92993}
!93003 = !DILocation(line: 210, column: 13, scope: !92983)
!93004 = !DILocation(line: 148, column: 9, scope: !92984, inlinedAt: !92996)
end_hunk_7
