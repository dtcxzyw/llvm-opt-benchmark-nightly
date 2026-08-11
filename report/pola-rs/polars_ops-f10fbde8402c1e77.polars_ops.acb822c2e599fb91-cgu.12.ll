inline.NumInlined: 20970
inline.NumDeleted: 8375
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_boolRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops:bb.a
bb.m:                                             ; preds = %bb.o, %.thread, %bb.n, %bb.l
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !70657
  unreachable, !dbg !70657

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
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(56) %i.f) #50
          to label %.thread39 unwind label %bb.m, !dbg !70655

.thread39:                                        ; preds = %bb.n, %bb.l, %.thread21
  %.pn.pn26 = phi { ptr, i32 } [ %i.y, %.thread21 ], [ %i.an, %bb.l ], [ %lpad.phi, %bb.n ] ; 2 uses
  %.sroa.05.125 = phi i1 [ true, %.thread21 ], [ false, %bb.l ], [ true, %bb.n ]
  %i.ap = load ptr, ptr %i.g, align 8, !dbg !70658, !alias.scope !70660, !noundef !13
  %i.aq = icmp eq ptr %i.ap, null, !dbg !70658
  br i1 %i.aq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit, label %bb.o, !dbg !70658

bb.o:                                             ; preds = %.thread39
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.m, !dbg !70663

bb.p:                                             ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit
  %.pn.pn.pn19 = phi { ptr, i32 } [ %.pn.pn.pn20, %.thread ], [ %.pn.pn26, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit ]
  resume { ptr, i32 } %.pn.pn.pn19, !dbg !70657

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit
  %.pn.pn.pn20 = phi { ptr, i32 } [ %.pn.pn26, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit ], [ %lpad.loopexit43, %.thread.loopexit ], [ %lpad.loopexit.split-lp44, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.h) #50
          to label %bb.p unwind label %bb.m, !dbg !70583
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !70666 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !70667
  %.val78 = load ptr, ptr %1, align 8, !dbg !70668, !nonnull !13, !noundef !13
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !70668
  %.val79 = load ptr, ptr %i.m, align 8, !dbg !70668, !nonnull !13, !align !199, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val79, i64 64, !dbg !70669
  %i.o = load ptr, ptr %i.n, align 8, !dbg !70669, !invariant.load !13, !nonnull !13
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val78) #52, !dbg !70670
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #52, !dbg !70671
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70672), !dbg !70675
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !70677
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !70677 ; 4 uses
  br label %.lr.ph.i, !dbg !70683

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !70685 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !70687, !alias.scope !70672, !nonnull !13, !noundef !13 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !70687
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !70687, !alias.scope !70672, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !70688
  %i.u = load ptr, ptr %i.t, align 8, !dbg !70688, !invariant.load !13, !noalias !70672, !nonnull !13
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #52
          to label %.noexc unwind label %.thread.loopexit, !dbg !70689, !inline_history !70307

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !70690
  %i.x = load ptr, ptr %i.w, align 8, !dbg !70690, !invariant.load !13, !noalias !70672, !nonnull !13
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #52
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !70691, !inline_history !70307

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !70692 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !70693 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !70694
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !70683

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !70696

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit159 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !70697
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !70699

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !70700
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph172 unwind label %bb.d, !dbg !70703

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph172:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !70704

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit156 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph172, %bb.m
  %.sroa.0.0170 = phi i64 [ 0, %.lr.ph172 ], [ %i.bi, %bb.m ]
  %.sroa.034.0169 = phi ptr [ %1, %.lr.ph172 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0169, i64 16, !dbg !70712 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0169, align 8, !dbg !70715, !nonnull !13, !noundef !13
  %i.ag = getelementptr i8, ptr %.sroa.034.0169, i64 8, !dbg !70715
  %.sroa.034.0.val77 = load ptr, ptr %i.ag, align 8, !dbg !70715, !nonnull !13, !align !199, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val77, i64 32, !dbg !70717
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !70717, !invariant.load !13, !nonnull !13
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !70718 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !70717 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !70717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !70719
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !70722
  %i.an = load ptr, ptr %i.am, align 8, !dbg !70722, !invariant.load !13, !nonnull !13
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !70725

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !70726, !noundef !13
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !70736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !70719
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !70737, !prof !919

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #51
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !70738

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !70741 ; 2 uses
  %.val82 = load ptr, ptr %i.aq, align 8, !dbg !70741, !noundef !13 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !70741 ; 2 uses
  %.val83 = load i64, ptr %i.ar, align 8, !dbg !70741, !noundef !13 ; 3 uses
  %i.as = icmp ult i64 %.val83, 2, !dbg !70743
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !70743

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val84.pre = load ptr, ptr %i.aq, align 8, !dbg !70751
  %.val85.pre = load i64, ptr %i.ar, align 8, !dbg !70751
  br label %._crit_edge, !dbg !70751

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !70751 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !70751 ; 2 uses
  %.val81 = load i32, ptr %.val84, align 4, !dbg !70752, !noundef !13 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !70753
  call void @llvm.assume(i1 %.not.i91), !dbg !70753
  %i.at = getelementptr [4 x i8], ptr %.val84, i64 %.val85, !dbg !70762
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !70762
  %i.av = load i32, ptr %i.au, align 4, !dbg !70763, !noundef !13
  %i.aw = sub nuw nsw i32 %i.av, %.val81, !dbg !70764
  %i.ax = sext i32 %i.aw to i64, !dbg !70770
  %i.ay = icmp eq i32 %.val81, 0, !dbg !70772
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !70772

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !70774
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !70780, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !70780
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !70780, !nonnull !13, !align !199, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !70780
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !70780, !invariant.load !13, !nonnull !13
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !70781

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !70782
  %i.bh = zext i1 %i.bg to i64, !dbg !70783
  br label %bb.m, !dbg !70783

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !70784
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0170, !dbg !70785 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !70786
  br i1 %i.bj, label %._crit_edge173, label %bb.e, !dbg !70704

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0168 = phi ptr [ %i.bl, %bb.r ], [ %.val82, %bb.j ] ; 3 uses
  %.sroa.6.0167 = phi i64 [ %i.bk, %bb.r ], [ %.val83, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0168) ]
  %i.bk = add i64 %.sroa.6.0167, -1, !dbg !70788
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0168, i64 4, !dbg !70795 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !70800, !alias.scope !70810, !noundef !13
  %i.bn = load i32, ptr %.sroa.099.0168, align 4, !dbg !70813, !alias.scope !70810, !noundef !13
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !70814       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !70816), !dbg !70819
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !70821
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !70831

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !70834, !alias.scope !70816, !noalias !70844, !noundef !13 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !70846
  call void @llvm.assume(i1 %.not.i92), !dbg !70846
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !70850, !alias.scope !70816, !noalias !70844, !nonnull !13, !noundef !13 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !70863
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !70863 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !70864
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !70865, !noalias !70867, !noundef !13
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !70868 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !70868
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !70868
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !70880

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !70883, !range !5138, !alias.scope !70894, !noalias !70844, !noundef !13
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !70897
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !70897

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !70898

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !70899, !alias.scope !70894, !noalias !70844
  br label %bb.r, !dbg !70898

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70908
  store i64 2, ptr %i.bz, align 8, !dbg !70908
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70908
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !70908
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !70908
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @304, i64 12), i64 60, i1 false), !dbg !70908
  store i8 42, ptr %0, align 8, !dbg !70908
  br label %bb.s, !dbg !70915

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !70899
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !70917
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !70920, !noalias !70844
  %i.cc = add i64 %i.bq, 1, !dbg !70924
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !70924, !alias.scope !70894, !noalias !70844
  %i.cd = icmp ult i64 %.sroa.6.0167, 3, !dbg !70743
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !70743

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i unwind label %bb.t, !dbg !70925

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !70928

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !70925
  unreachable, !dbg !70925

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.d, !dbg !70930

._crit_edge173:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !70932
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !70932

bb.v:                                             ; preds = %._crit_edge173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !70933
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listlB3k_Es_0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !70934

bb.w:                                             ; preds = %._crit_edge173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !70946
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlBU_E0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !70947

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !70954
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !70956
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !70956, !nonnull !13, !noundef !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !70974
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !70974, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !70954

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !70975

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !70976, !range !800, !noundef !13 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !70976
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !70978
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !70978 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !70978
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !70978 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !70979

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !70980
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !70981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !70980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !70987
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !70981
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !70981
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !70981
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !70981
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !70981
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !70981
  store i8 42, ptr %0, align 8, !dbg !70981
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !70975

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !70987
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !70975

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !70975
  br label %bb.ad, !dbg !70988

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !70989 ; 2 uses
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !70989 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !70990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !70990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !70992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !70993, !noalias !70999
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !70992
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !71003

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !70975
  br label %bb.s, !dbg !70915

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !71008
  unreachable, !dbg !71008

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !71009
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !71011
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !71011, !nonnull !13, !noundef !13
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71027
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !71027, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !71009

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.i) #50
end_hunk_0
begin_hunk_1_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops:bb.a

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !71044
  %i.de = load ptr, ptr %i.k, align 8, !dbg !71048, !alias.scope !71050, !noundef !13
  %i.df = icmp eq ptr %i.de, null, !dbg !71048
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit, label %bb.ar, !dbg !71048

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit unwind label %.thread.loopexit.split-lp, !dbg !71053

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !71045
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !70696
  br label %bb.an, !dbg !71046

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit156, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.j) #50
          to label %.thread123 unwind label %bb.af, !dbg !71044

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !71056, !alias.scope !71058, !noundef !13
  %i.dh = icmp eq ptr %i.dg, null, !dbg !71056
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98, label %bb.as, !dbg !71056

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 unwind label %bb.af, !dbg !71061

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !71008

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 ], [ %lpad.loopexit159, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l) #50
          to label %bb.at unwind label %bb.af, !dbg !70696
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !71064 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !71065
  %.val86 = load ptr, ptr %1, align 8, !dbg !71066, !nonnull !13, !noundef !13
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !71066
  %.val87 = load ptr, ptr %i.m, align 8, !dbg !71066, !nonnull !13, !align !199, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val87, i64 64, !dbg !71067
  %i.o = load ptr, ptr %i.n, align 8, !dbg !71067, !invariant.load !13, !nonnull !13
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val86) #52, !dbg !71068
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #52, !dbg !71069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71070), !dbg !71073
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !71075
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !71075 ; 4 uses
  br label %.lr.ph.i, !dbg !71081

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !71083 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !71085, !alias.scope !71070, !nonnull !13, !noundef !13 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !71085
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !71085, !alias.scope !71070, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !71086
  %i.u = load ptr, ptr %i.t, align 8, !dbg !71086, !invariant.load !13, !noalias !71070, !nonnull !13
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #52
          to label %.noexc unwind label %.thread.loopexit, !dbg !71087, !inline_history !70439

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !71088
  %i.x = load ptr, ptr %i.w, align 8, !dbg !71088, !invariant.load !13, !noalias !71070, !nonnull !13
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #52
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !71089, !inline_history !70439

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !71090 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !71091 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !71092
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !71081

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !71094

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit159 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !71095
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !71097

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !71098
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph172 unwind label %bb.d, !dbg !71101

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph172:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !71102

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit156 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph172, %bb.m
  %.sroa.0.0170 = phi i64 [ 0, %.lr.ph172 ], [ %i.bi, %bb.m ]
  %.sroa.034.0169 = phi ptr [ %1, %.lr.ph172 ], [ %i.af, %bb.m ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0169, i64 16, !dbg !71110 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0169, align 8, !dbg !71113, !nonnull !13, !noundef !13
  %i.ag = getelementptr i8, ptr %.sroa.034.0169, i64 8, !dbg !71113
  %.sroa.034.0.val85 = load ptr, ptr %i.ag, align 8, !dbg !71113, !nonnull !13, !align !199, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val85, i64 32, !dbg !71115
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !71115, !invariant.load !13, !nonnull !13
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !71116 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !71115 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !71115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !71117
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !71120
  %i.an = load ptr, ptr %i.am, align 8, !dbg !71120, !invariant.load !13, !nonnull !13
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !71123

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !71124, !noundef !13
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !71134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !71117
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !71135, !prof !919

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #51
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71136

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !71139 ; 2 uses
  %.val79 = load ptr, ptr %i.aq, align 8, !dbg !71139, !noundef !13 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !71139 ; 2 uses
  %.val80 = load i64, ptr %i.ar, align 8, !dbg !71139, !noundef !13 ; 3 uses
  %i.as = icmp ult i64 %.val80, 2, !dbg !71141
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !71141

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val81.pre = load ptr, ptr %i.aq, align 8, !dbg !71147
  %.val82.pre = load i64, ptr %i.ar, align 8, !dbg !71147
  br label %._crit_edge, !dbg !71147

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val82 = phi i64 [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !71147 ; 2 uses
  %.val81 = phi ptr [ %.val81.pre, %._crit_edge.loopexit ], [ %.val79, %bb.j ], !dbg !71147 ; 2 uses
  %.val78 = load i32, ptr %.val81, align 4, !dbg !71148, !noundef !13 ; 2 uses
  %.not.i91 = icmp ne i64 %.val82, 0, !dbg !71149
  call void @llvm.assume(i1 %.not.i91), !dbg !71149
  %i.at = getelementptr [4 x i8], ptr %.val81, i64 %.val82, !dbg !71154
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !71154
  %i.av = load i32, ptr %i.au, align 4, !dbg !71155, !noundef !13
  %i.aw = sub nuw nsw i32 %i.av, %.val78, !dbg !71156
  %i.ax = sext i32 %i.aw to i64, !dbg !71158
  %i.ay = icmp eq i32 %.val78, 0, !dbg !71160
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !71160

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !71162
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !71164, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !71164
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !71164, !nonnull !13, !align !199, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !71164
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !71164, !invariant.load !13, !nonnull !13
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !71165

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !71166
  %i.bh = zext i1 %i.bg to i64, !dbg !71167
  br label %bb.m, !dbg !71167

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !71168
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0170, !dbg !71169 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !71170
  br i1 %i.bj, label %._crit_edge173, label %bb.e, !dbg !71102

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0168 = phi ptr [ %i.bl, %bb.r ], [ %.val79, %bb.j ] ; 3 uses
  %.sroa.6.0167 = phi i64 [ %i.bk, %bb.r ], [ %.val80, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0168) ]
  %i.bk = add i64 %.sroa.6.0167, -1, !dbg !71172
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0168, i64 4, !dbg !71175 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !71177, !alias.scope !71184, !noundef !13
  %i.bn = load i32, ptr %.sroa.099.0168, align 4, !dbg !71187, !alias.scope !71184, !noundef !13
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !71188       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71190), !dbg !71193
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !71195
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !71199

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !71201, !alias.scope !71190, !noalias !71205, !noundef !13 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !71207
  call void @llvm.assume(i1 %.not.i92), !dbg !71207
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !71209, !alias.scope !71190, !noalias !71205, !nonnull !13, !noundef !13 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !71214
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !71214 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !71215
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !71216, !noalias !71217, !noundef !13
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !71218 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !71218
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !71218
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !71222

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !71224, !range !5138, !alias.scope !71229, !noalias !71205, !noundef !13
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !71232
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !71232

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !71233

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !71234, !alias.scope !71229, !noalias !71205
  br label %bb.r, !dbg !71233

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !71239
  store i64 2, ptr %i.bz, align 8, !dbg !71239
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !71239
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !71239
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !71239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @304, i64 12), i64 60, i1 false), !dbg !71239
  store i8 42, ptr %0, align 8, !dbg !71239
  br label %bb.s, !dbg !71246

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !71234
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !71248
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !71250, !noalias !71205
  %i.cc = add i64 %i.bq, 1, !dbg !71252
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !71252, !alias.scope !71229, !noalias !71205
  %i.cd = icmp ult i64 %.sroa.6.0167, 3, !dbg !71141
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !71141

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i unwind label %bb.t, !dbg !71253

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !71256

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !71253
  unreachable, !dbg !71253

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.d, !dbg !71258

._crit_edge173:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !71260
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !71260

bb.v:                                             ; preds = %._crit_edge173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !71261
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCINvNtNtB10_7compute11concatenate16concatenate_listlBU_Es_0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71262

bb.w:                                             ; preds = %._crit_edge173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !71271
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRB1c_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlB3C_E0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71272

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !71279
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !71281
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !71281, !nonnull !13, !noundef !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71299
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !71299, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !71279

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !71300

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !71301, !range !800, !noundef !13 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !71301
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !71303
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !71303 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !71303
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !71303 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !71304

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !71305
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !71306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !71305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71312
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !71306
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !71306
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !71306
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !71306
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !71306
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !71306
  store i8 42, ptr %0, align 8, !dbg !71306
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71300

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71312
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71300

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !71300
  br label %bb.ad, !dbg !71313

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !71314 ; 2 uses
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !71314 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !71315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !71315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71318, !noalias !71322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !71317
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !71326

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !71300
  br label %bb.s, !dbg !71246

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !71329
  unreachable, !dbg !71329

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !71330
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !71332
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !71332, !nonnull !13, !noundef !13
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71347
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !71347, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !71330

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.i) #50
end_hunk_1
begin_hunk_2_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops:bb.a
  %i.de = load ptr, ptr %i.k, align 8, !dbg !71368, !alias.scope !71370, !noundef !13
  %i.df = icmp eq ptr %i.de, null, !dbg !71368
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit, label %bb.ar, !dbg !71368

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit unwind label %.thread.loopexit.split-lp, !dbg !71373

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !71365
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !71094
  br label %bb.an, !dbg !71366

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit156, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.j) #50
          to label %.thread123 unwind label %bb.af, !dbg !71364

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !71376, !alias.scope !71378, !noundef !13
  %i.dh = icmp eq ptr %i.dg, null, !dbg !71376
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98, label %bb.as, !dbg !71376

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 unwind label %bb.af, !dbg !71381

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !71329

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 ], [ %lpad.loopexit159, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l) #50
          to label %bb.at unwind label %bb.af, !dbg !71094
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !71384 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !71385
  %.val85 = load ptr, ptr %1, align 8, !dbg !71386, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %.val.i = load ptr, ptr %.val85, align 8, !dbg !71387, !nonnull !13, !noundef !13
  %i.m = getelementptr i8, ptr %.val85, i64 8, !dbg !71387
  %.val1.i = load ptr, ptr %i.m, align 8, !dbg !71387, !nonnull !13, !align !199, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 64, !dbg !71389
  %i.o = load ptr, ptr %i.n, align 8, !dbg !71389, !invariant.load !13, !nonnull !13
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val.i) #52, !dbg !71390
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #52, !dbg !71391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71392), !dbg !71395
  %.idx.i = shl nuw nsw i64 %2, 3, !dbg !71397
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !71397 ; 4 uses
  br label %.lr.ph.i, !dbg !71403

.lr.ph.i:                                         ; preds = %bb.a, %.noexc86
  %.sroa.0.010.i = phi i64 [ %i.z, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.02.09.i = phi i64 [ %i.aa, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.06.08.i = phi ptr [ %i.r, %.noexc86 ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8, !dbg !71405 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !dbg !71407, !alias.scope !71392, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val.i, align 8, !dbg !71408, !noalias !71392, !nonnull !13, !noundef !13 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.0.val.i, i64 8, !dbg !71408
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !71408, !noalias !71392, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !71410
  %i.u = load ptr, ptr %i.t, align 8, !dbg !71410, !invariant.load !13, !noalias !71392, !nonnull !13
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.val.i.i) #52
          to label %.noexc unwind label %.thread.loopexit, !dbg !71411, !inline_history !70575

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 88, !dbg !71412
  %i.x = load ptr, ptr %i.w, align 8, !dbg !71412, !invariant.load !13, !noalias !71392, !nonnull !13
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.val.i.i) #52
          to label %.noexc86 unwind label %.thread.loopexit, !dbg !71413, !inline_history !70575

.noexc86:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.010.i, !dbg !71414 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.09.i, !dbg !71415 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !71416
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !71403

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98: ; preds = %.thread123, %bb.as
  br i1 %.sroa.032.1127, label %.thread, label %bb.at, !dbg !71418

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit159 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ar, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !71419
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !71421

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !71422
  invoke fastcc void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetslE13with_capacityCsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph172 unwind label %bb.d, !dbg !71425

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread123

.lr.ph172:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !71426

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.k, %bb.f, %bb.e
  %lpad.loopexit156 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.aj, %bb.w, %bb.ab, %bb.aa, %bb.v, %bb.h
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.e:                                             ; preds = %.lr.ph172, %bb.m
  %.sroa.0.0170 = phi i64 [ 0, %.lr.ph172 ], [ %i.bi, %bb.m ]
  %.sroa.034.0169 = phi ptr [ %1, %.lr.ph172 ], [ %i.af, %bb.m ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0169, i64 8, !dbg !71434 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0169, align 8, !dbg !71437, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %.val.i87 = load ptr, ptr %.sroa.034.0.val, align 8, !dbg !71439, !nonnull !13, !noundef !13
  %i.ag = getelementptr i8, ptr %.sroa.034.0.val, i64 8, !dbg !71439
  %.val1.i88 = load ptr, ptr %i.ag, align 8, !dbg !71439, !nonnull !13, !align !199, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i88, i64 32, !dbg !71441
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !71441, !invariant.load !13, !nonnull !13
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.val.i87)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !71442 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !71441 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !71441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !71443
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !71446
  %i.an = load ptr, ptr %i.am, align 8, !dbg !71446, !invariant.load !13, !nonnull !13
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !71449

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !71450, !noundef !13
  %i.ap = icmp eq i128 %i.ao, -167986307344837338960852194745045691260, !dbg !71460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !71443
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !71461, !prof !919

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #51
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71462

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !71465 ; 2 uses
  %.val79 = load ptr, ptr %i.aq, align 8, !dbg !71465, !noundef !13 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !71465 ; 2 uses
  %.val80 = load i64, ptr %i.ar, align 8, !dbg !71465, !noundef !13 ; 3 uses
  %i.as = icmp ult i64 %.val80, 2, !dbg !71467
  br i1 %i.as, label %._crit_edge, label %.lr.ph, !dbg !71467

._crit_edge.loopexit:                             ; preds = %bb.r
  %.val81.pre = load ptr, ptr %i.aq, align 8, !dbg !71473
  %.val82.pre = load i64, ptr %i.ar, align 8, !dbg !71473
  br label %._crit_edge, !dbg !71473

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val82 = phi i64 [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !71473 ; 2 uses
  %.val81 = phi ptr [ %.val81.pre, %._crit_edge.loopexit ], [ %.val79, %bb.j ], !dbg !71473 ; 2 uses
  %.val78 = load i32, ptr %.val81, align 4, !dbg !71474, !noundef !13 ; 2 uses
  %.not.i91 = icmp ne i64 %.val82, 0, !dbg !71475
  call void @llvm.assume(i1 %.not.i91), !dbg !71475
  %i.at = getelementptr [4 x i8], ptr %.val81, i64 %.val82, !dbg !71480
  %i.au = getelementptr i8, ptr %i.at, i64 -4, !dbg !71480
  %i.av = load i32, ptr %i.au, align 4, !dbg !71481, !noundef !13
  %i.aw = sub nuw nsw i32 %i.av, %.val78, !dbg !71482
  %i.ax = sext i32 %i.aw to i64, !dbg !71484
  %i.ay = icmp eq i32 %.val78, 0, !dbg !71486
  br i1 %i.ay, label %bb.k, label %bb.m, !dbg !71486

bb.k:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !71488
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !71490, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !71490
  %i.bc = load ptr, ptr %i.bb, align 8, !dbg !71490, !nonnull !13, !align !199, !noundef !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48, !dbg !71490
  %i.be = load ptr, ptr %i.bd, align 8, !dbg !71490, !invariant.load !13, !nonnull !13
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull %i.ba)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !71491

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp ne i64 %i.bf, %i.ax, !dbg !71492
  %i.bh = zext i1 %i.bg to i64, !dbg !71493
  br label %bb.m, !dbg !71493

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bh, %bb.l ], [ 1, %._crit_edge ], !dbg !71494
  %i.bi = add i64 %.sroa.05.0, %.sroa.0.0170, !dbg !71495 ; 2 uses
  %i.bj = icmp eq ptr %i.af, %i.q, !dbg !71496
  br i1 %i.bj, label %._crit_edge173, label %bb.e, !dbg !71426

.lr.ph:                                           ; preds = %bb.j, %bb.r
  %.sroa.099.0168 = phi ptr [ %i.bl, %bb.r ], [ %.val79, %bb.j ] ; 3 uses
  %.sroa.6.0167 = phi i64 [ %i.bk, %bb.r ], [ %.val80, %bb.j ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.099.0168) ]
  %i.bk = add i64 %.sroa.6.0167, -1, !dbg !71498
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.099.0168, i64 4, !dbg !71501 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !dbg !71503, !alias.scope !71510, !noundef !13
  %i.bn = load i32, ptr %.sroa.099.0168, align 4, !dbg !71513, !alias.scope !71510, !noundef !13
  %i.bo = sub i32 %i.bm, %i.bn, !dbg !71514       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71516), !dbg !71519
  %i.bp = icmp sgt i32 %i.bo, -1, !dbg !71521
  br i1 %i.bp, label %bb.n, label %bb.q, !dbg !71525

bb.n:                                             ; preds = %.lr.ph
  %i.bq = load i64, ptr %i.ad, align 8, !dbg !71527, !alias.scope !71516, !noalias !71531, !noundef !13 ; 5 uses
  %.not.i92 = icmp ne i64 %i.bq, 0, !dbg !71533
  call void @llvm.assume(i1 %.not.i92), !dbg !71533
  %i.br = load ptr, ptr %i.ae, align 8, !dbg !71535, !alias.scope !71516, !noalias !71531, !nonnull !13, !noundef !13 ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.br, i64 %i.bq, !dbg !71540
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4, !dbg !71540 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ], !dbg !71541
  %.sroa.035.0.val.i = load i32, ptr %i.bt, align 4, !dbg !71542, !noalias !71543, !noundef !13
  %i.bu = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.sroa.035.0.val.i, i32 %i.bo), !dbg !71544 ; 2 uses
  %i.bv = extractvalue { i32, i1 } %i.bu, 1, !dbg !71544
  %i.bw = extractvalue { i32, i1 } %i.bu, 0, !dbg !71544
  br i1 %i.bv, label %bb.q, label %bb.o, !dbg !71548

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %i.j, align 8, !dbg !71550, !range !5138, !alias.scope !71555, !noalias !71531, !noundef !13
  %i.by = icmp eq i64 %i.bq, %i.bx, !dbg !71558
  br i1 %i.by, label %bb.p, label %bb.r, !dbg !71558

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc93 unwind label %.loopexit, !dbg !71559

.noexc93:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !71560, !alias.scope !71555, !noalias !71531
  br label %bb.r, !dbg !71559

bb.q:                                             ; preds = %bb.n, %.lr.ph
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !71565
  store i64 2, ptr %i.bz, align 8, !dbg !71565
  %.sroa.2117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !71565
  store i32 0, ptr %.sroa.2117.0..sroa_idx, align 8, !dbg !71565
  %.sroa.3118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !71565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.3118.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @304, i64 12), i64 60, i1 false), !dbg !71565
  store i8 42, ptr %0, align 8, !dbg !71565
  br label %bb.s, !dbg !71572

bb.r:                                             ; preds = %.noexc93, %bb.o
  %i.ca = phi ptr [ %i.br, %bb.o ], [ %.pre.i, %.noexc93 ], !dbg !71560
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq, !dbg !71574
  store i32 %i.bw, ptr %i.cb, align 4, !dbg !71576, !noalias !71531
  %i.cc = add i64 %i.bq, 1, !dbg !71578
  store i64 %i.cc, ptr %i.ad, align 8, !dbg !71578, !alias.scope !71555, !noalias !71531
  %i.cd = icmp ult i64 %.sroa.6.0167, 3, !dbg !71467
  br i1 %i.cd, label %._crit_edge.loopexit, label %.lr.ph, !dbg !71467

bb.s:                                             ; preds = %bb.ae, %bb.aq, %bb.q
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i unwind label %bb.t, !dbg !71579

bb.t:                                             ; preds = %bb.s
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread123 unwind label %bb.u, !dbg !71582

bb.u:                                             ; preds = %bb.t
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !71579
  unreachable, !dbg !71579

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVeclENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.d, !dbg !71584

._crit_edge173:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bi, 0, !dbg !71586
  br i1 %.not68, label %bb.v, label %bb.w, !dbg !71586

bb.v:                                             ; preds = %._crit_edge173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !71587
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterRINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listlB3k_Es_0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71588

bb.w:                                             ; preds = %._crit_edge173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !71597
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listlB3C_E0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71598

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !71605
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !71607
  %i.ch = load ptr, ptr %i.cg, align 8, !dbg !71607, !nonnull !13, !noundef !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71625
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !71625, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
          to label %bb.z unwind label %bb.y, !dbg !71605

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %.loopexit.split-lp unwind label %bb.af, !dbg !71626

bb.z:                                             ; preds = %bb.x
  %i.cl = load i64, ptr %i.f, align 8, !dbg !71627, !range !800, !noundef !13 ; 2 uses
  %.not69 = icmp eq i64 %i.cl, 18, !dbg !71627
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !71629
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !71629 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !71629
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !71629 ; 2 uses
  br i1 %.not69, label %bb.ab, label %bb.aa, !dbg !71630

bb.aa:                                            ; preds = %bb.z
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !71631
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !71632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !71631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71638
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !71632
  store i64 %i.cl, ptr %i.cq, align 8, !dbg !71632
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !71632
  store ptr %i.cn, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !71632
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !71632
  store ptr %i.cp, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !71632
  store i8 42, ptr %0, align 8, !dbg !71632
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71626

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71638
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71626

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !71626
  br label %bb.ad, !dbg !71639

bb.ad:                                            ; preds = %bb.al, %bb.ac
  %.sroa.0103.0 = phi ptr [ %i.cn, %bb.ac ], [ %i.cz, %bb.al ], !dbg !71640 ; 2 uses
  %.sroa.7104.0 = phi ptr [ %i.cp, %bb.ac ], [ %i.db, %bb.al ], !dbg !71640 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !71641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !71641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71644, !noalias !71648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !71643
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferlE8from_vecCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.am unwind label %bb.ao, !dbg !71652

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !71626
  br label %bb.s, !dbg !71572

bb.af:                                            ; preds = %bb.as, %bb.ap, %.thread, %.loopexit.split-lp, %bb.ao, %bb.ah, %bb.y
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !71655
  unreachable, !dbg !71655

bb.ag:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !71656
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !71658
  %i.ct = load ptr, ptr %i.cs, align 8, !dbg !71658, !nonnull !13, !noundef !13
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !71673
  %i.cv = load i64, ptr %i.cu, align 8, !dbg !71673, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.ai unwind label %bb.ah, !dbg !71656

bb.ah:                                            ; preds = %bb.ag
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.i) #50
end_hunk_2
begin_hunk_3_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listlRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops:bb.a
  %i.df = icmp eq ptr %i.de, null, !dbg !71694
  br i1 %i.df, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit, label %bb.ar, !dbg !71694

bb.ar:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit unwind label %.thread.loopexit.split-lp, !dbg !71699

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !71691
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !71418
  br label %bb.an, !dbg !71692

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ah, %bb.y
  %.pn.ph = phi { ptr, i32 } [ %i.ck, %bb.y ], [ %i.cw, %bb.ah ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit156, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetslEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.j) #50
          to label %.thread123 unwind label %bb.af, !dbg !71690

.thread123:                                       ; preds = %bb.ap, %.loopexit.split-lp, %bb.t, %bb.d
  %.pn72128 = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.ac, %bb.d ], [ %i.dd, %bb.ap ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1127 = phi i1 [ true, %bb.t ], [ true, %bb.d ], [ false, %bb.ap ], [ true, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %i.k, align 8, !dbg !71702, !alias.scope !71704, !noundef !13
  %i.dh = icmp eq ptr %i.dg, null, !dbg !71702
  br i1 %i.dh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98, label %bb.as, !dbg !71702

bb.as:                                            ; preds = %.thread123
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 unwind label %bb.af, !dbg !71707

bb.at:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98
  %.pn74121 = phi { ptr, i32 } [ %.pn74122, %.thread ], [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 ]
  resume { ptr, i32 } %.pn74121, !dbg !71655

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98
  %.pn74122 = phi { ptr, i32 } [ %.pn72128, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit98 ], [ %lpad.loopexit159, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l) #50
          to label %bb.at unwind label %bb.af, !dbg !71418
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !71710 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !71711
  %.val78 = load ptr, ptr %1, align 8, !dbg !71712, !nonnull !13, !noundef !13
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !71712
  %.val79 = load ptr, ptr %i.m, align 8, !dbg !71712, !nonnull !13, !align !199, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val79, i64 64, !dbg !71713
  %i.o = load ptr, ptr %i.n, align 8, !dbg !71713, !invariant.load !13, !nonnull !13
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val78) #52, !dbg !71714
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #52, !dbg !71715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71716), !dbg !71719
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !71721
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !71721 ; 4 uses
  br label %.lr.ph.i, !dbg !71727

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !71729 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !71731, !alias.scope !71716, !nonnull !13, !noundef !13 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !71731
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !71731, !alias.scope !71716, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !71732
  %i.u = load ptr, ptr %i.t, align 8, !dbg !71732, !invariant.load !13, !noalias !71716, !nonnull !13
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #52
          to label %.noexc unwind label %.thread.loopexit, !dbg !71733, !inline_history !70307

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !71734
  %i.x = load ptr, ptr %i.w, align 8, !dbg !71734, !invariant.load !13, !noalias !71716, !nonnull !13
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #52
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !71735, !inline_history !70307

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !71736 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !71737 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !71738
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !71727

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !71740

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !71741
  invoke void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !71743

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !71744
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !71747

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !71748

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
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 16, !dbg !71756 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !71759, !nonnull !13, !noundef !13
  %i.ag = getelementptr i8, ptr %.sroa.034.0158, i64 8, !dbg !71759
  %.sroa.034.0.val77 = load ptr, ptr %i.ag, align 8, !dbg !71759, !nonnull !13, !align !199, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val77, i64 32, !dbg !71761
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !71761, !invariant.load !13, !nonnull !13
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !71762 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !71761 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !71761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !71763
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !71766
  %i.an = load ptr, ptr %i.am, align 8, !dbg !71766, !invariant.load !13, !nonnull !13
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !71769

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !71770, !noundef !13
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !71780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !71763
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !71781, !prof !919

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #51
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71782

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !71785 ; 2 uses
  %.val82 = load ptr, ptr %i.aq, align 8, !dbg !71785, !noundef !13 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !71785 ; 2 uses
  %.val83 = load i64, ptr %i.ar, align 8, !dbg !71785, !noundef !13 ; 3 uses
  %i.as = icmp ult i64 %.val83, 2, !dbg !71787
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !71787

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !71794, !alias.scope !71805, !noalias !71808
  br label %.lr.ph, !dbg !71810

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val84.pre = load ptr, ptr %i.aq, align 8, !dbg !71818
  %.val85.pre = load i64, ptr %i.ar, align 8, !dbg !71818
  br label %._crit_edge, !dbg !71818

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !71818 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !71818 ; 2 uses
  %.val81 = load i64, ptr %.val84, align 8, !dbg !71819, !noundef !13 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !71820
  call void @llvm.assume(i1 %.not.i91), !dbg !71820
  %i.at = getelementptr [8 x i8], ptr %.val84, i64 %.val85, !dbg !71829
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !71829
  %i.av = load i64, ptr %i.au, align 8, !dbg !71830, !noundef !13
  %i.aw = sub nuw nsw i64 %i.av, %.val81, !dbg !71831
  %i.ax = icmp eq i64 %.val81, 0, !dbg !71835
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !71835

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !71837
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !71840, !nonnull !13, !noundef !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !71840
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !71840, !nonnull !13, !align !199, !noundef !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !71840
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !71840, !invariant.load !13, !nonnull !13
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !71841

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !71842
  %i.bg = zext i1 %i.bf to i64, !dbg !71843
  br label %bb.m, !dbg !71843

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !71844
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !71845 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !71846
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !71748

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !71794 ; 4 uses
  %.sroa.6.0157 = phi i64 [ %i.bk, %bb.o ], [ %.val83, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0100.0156 = phi ptr [ %i.bl, %bb.o ], [ %.val82, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0156) ]
  %i.bk = add i64 %.sroa.6.0157, -1, !dbg !71848
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0156, i64 8, !dbg !71855 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !71860, !alias.scope !71868, !noundef !13
  %i.bn = load i64, ptr %.sroa.0100.0156, align 8, !dbg !71871, !alias.scope !71868, !noundef !13
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !71872
  call void @llvm.experimental.noalias.scope.decl(metadata !71805), !dbg !71874
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !71875, !alias.scope !71805, !noalias !71808, !nonnull !13 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !71875
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !71875
  %i.bs = load i64, ptr %i.br, align 8, !dbg !71879, !noalias !71880, !noundef !13
  %i.bt = load i64, ptr %i.j, align 8, !dbg !71881, !range !5138, !alias.scope !71886, !noalias !71808, !noundef !13
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !71810
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !71810

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !71889

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !71890, !alias.scope !71886, !noalias !71808
  br label %bb.o, !dbg !71889

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !71890
  %i.bw = add i64 %i.bo, %i.bs, !dbg !71899
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !71903
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !71906, !noalias !71808
  %i.by = add i64 %i.bj, 1, !dbg !71910           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !71910, !alias.scope !71886, !noalias !71808
  %i.bz = icmp ult i64 %.sroa.6.0157, 3, !dbg !71787
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !71787

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i unwind label %bb.q, !dbg !71911

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !71914

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !71911
  unreachable, !dbg !71911

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.d, !dbg !71916

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !71918
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !71918

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !71919
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listxB3k_Es_0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71920

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !71929
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxBU_E0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71930

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !71937
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !71939
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !71939, !nonnull !13, !noundef !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !71957
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !71957, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !71937

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !71958

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !71959, !range !800, !noundef !13 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !71959
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !71961
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !71961 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !71961
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !71961 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !71962

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !71963
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !71964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !71963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71971
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !71964
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !71964
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !71964
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !71964
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !71964
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !71964
  store i8 42, ptr %0, align 8, !dbg !71964
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71958

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !71971
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !71958

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !71958
  br label %bb.aa, !dbg !71972

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !71973 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !71973 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !71974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !71974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !71976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !71977, !noalias !71982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !71976
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !71986

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !71958
  br label %bb.p, !dbg !71991

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !71993
  unreachable, !dbg !71993

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !71994
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !71996
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !71996, !nonnull !13, !noundef !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72011
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !72011, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !71994

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.i) #50
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !72012

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !72013, !range !800, !noundef !13 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !72013
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !72014
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !72014 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !72014
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !72014 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !72015

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !72016
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !72017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !72016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !72023
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72017
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !72017
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72017
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !72017
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !72017
  store ptr %i.cx, ptr %.sroa.351.0..sroa_idx, align 8, !dbg !72017
  store i8 42, ptr %0, align 8, !dbg !72017
end_hunk_3
begin_hunk_4_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops:bb.a
  %i.db = icmp eq ptr %i.da, null, !dbg !72032
  br i1 %i.db, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit, label %bb.ao, !dbg !72032

bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit unwind label %.thread.loopexit.split-lp, !dbg !72037

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !72029
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !71740
  br label %bb.ak, !dbg !72030

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ae, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.cs, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit147, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.j) #50
          to label %.thread119 unwind label %bb.ac, !dbg !72028

.thread119:                                       ; preds = %bb.am, %.loopexit.split-lp, %bb.q, %bb.d
  %.pn72124 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ac, %bb.d ], [ %i.cz, %bb.am ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1123 = phi i1 [ true, %bb.q ], [ true, %bb.d ], [ false, %bb.am ], [ true, %.loopexit.split-lp ]
  %i.dc = load ptr, ptr %i.k, align 8, !dbg !72040, !alias.scope !72042, !noundef !13
  %i.dd = icmp eq ptr %i.dc, null, !dbg !72040
  br i1 %i.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99, label %bb.ap, !dbg !72040

bb.ap:                                            ; preds = %.thread119
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99 unwind label %bb.ac, !dbg !72045

bb.aq:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99
  %.pn74117 = phi { ptr, i32 } [ %.pn74118, %.thread ], [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99 ]
  resume { ptr, i32 } %.pn74117, !dbg !71993

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99
  %.pn74118 = phi { ptr, i32 } [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99 ], [ %lpad.loopexit150, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l) #50
          to label %bb.aq unwind label %bb.ac, !dbg !71740
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72048 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !72049
  %.val80 = load ptr, ptr %1, align 8, !dbg !72050, !nonnull !13, !noundef !13
  %i.m = getelementptr i8, ptr %1, i64 8, !dbg !72050
  %.val81 = load ptr, ptr %i.m, align 8, !dbg !72050, !nonnull !13, !align !199, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val81, i64 64, !dbg !72051
  %i.o = load ptr, ptr %i.n, align 8, !dbg !72051, !invariant.load !13, !nonnull !13
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val80) #52, !dbg !72052
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #52, !dbg !72053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72054), !dbg !72057
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !72059
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !72059 ; 4 uses
  br label %.lr.ph.i, !dbg !72065

.lr.ph.i:                                         ; preds = %bb.a, %.noexc88
  %.sroa.0.011.i = phi i64 [ %i.z, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.02.010.i = phi i64 [ %i.aa, %.noexc88 ], [ 0, %bb.a ]
  %.sroa.06.09.i = phi ptr [ %i.r, %.noexc88 ], [ %1, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.09.i, i64 16, !dbg !72067 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.09.i, align 8, !dbg !72069, !alias.scope !72054, !nonnull !13, !noundef !13 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.09.i, i64 8, !dbg !72069
  %.sroa.06.0.val8.i = load ptr, ptr %i.s, align 8, !dbg !72069, !alias.scope !72054, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 48, !dbg !72070
  %i.u = load ptr, ptr %i.t, align 8, !dbg !72070, !invariant.load !13, !noalias !72054, !nonnull !13
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.sroa.06.0.val.i) #52
          to label %.noexc unwind label %.thread.loopexit, !dbg !72071, !inline_history !70439

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val8.i, i64 88, !dbg !72072
  %i.x = load ptr, ptr %i.w, align 8, !dbg !72072, !invariant.load !13, !noalias !72054, !nonnull !13
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.sroa.06.0.val.i) #52
          to label %.noexc88 unwind label %.thread.loopexit, !dbg !72073, !inline_history !70439

.noexc88:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.011.i, !dbg !72074 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.010.i, !dbg !72075 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !72076
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !72065

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !72078

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !72079
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !72081

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !72082
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !72085

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !72086

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
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 16, !dbg !72094 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !72097, !nonnull !13, !noundef !13
  %i.ag = getelementptr i8, ptr %.sroa.034.0158, i64 8, !dbg !72097
  %.sroa.034.0.val79 = load ptr, ptr %i.ag, align 8, !dbg !72097, !nonnull !13, !align !199, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.034.0.val79, i64 32, !dbg !72099
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !72099, !invariant.load !13, !nonnull !13
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.sroa.034.0.val)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !72100 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !72099 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !72099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72101
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !72104
  %i.an = load ptr, ptr %i.am, align 8, !dbg !72104, !invariant.load !13, !nonnull !13
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !72107

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !72108, !noundef !13
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !72118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72101
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !72119, !prof !919

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #51
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72120

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !72123 ; 2 uses
  %.val82 = load ptr, ptr %i.aq, align 8, !dbg !72123, !noundef !13 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !72123 ; 2 uses
  %.val83 = load i64, ptr %i.ar, align 8, !dbg !72123, !noundef !13 ; 3 uses
  %i.as = icmp ult i64 %.val83, 2, !dbg !72125
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !72125

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !72131, !alias.scope !72137, !noalias !72140
  br label %.lr.ph, !dbg !72142

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val84.pre = load ptr, ptr %i.aq, align 8, !dbg !72145
  %.val85.pre = load i64, ptr %i.ar, align 8, !dbg !72145
  br label %._crit_edge, !dbg !72145

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val85 = phi i64 [ %.val85.pre, %._crit_edge.loopexit ], [ %.val83, %bb.j ], !dbg !72145 ; 2 uses
  %.val84 = phi ptr [ %.val84.pre, %._crit_edge.loopexit ], [ %.val82, %bb.j ], !dbg !72145 ; 2 uses
  %.val78 = load i64, ptr %.val84, align 8, !dbg !72146, !noundef !13 ; 2 uses
  %.not.i91 = icmp ne i64 %.val85, 0, !dbg !72147
  call void @llvm.assume(i1 %.not.i91), !dbg !72147
  %i.at = getelementptr [8 x i8], ptr %.val84, i64 %.val85, !dbg !72152
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !72152
  %i.av = load i64, ptr %i.au, align 8, !dbg !72153, !noundef !13
  %i.aw = sub nuw nsw i64 %i.av, %.val78, !dbg !72154
  %i.ax = icmp eq i64 %.val78, 0, !dbg !72156
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !72156

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !72158
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !72160, !nonnull !13, !noundef !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !72160
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !72160, !nonnull !13, !align !199, !noundef !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !72160
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !72160, !invariant.load !13, !nonnull !13
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !72161

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !72162
  %i.bg = zext i1 %i.bf to i64, !dbg !72163
  br label %bb.m, !dbg !72163

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !72164
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !72165 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !72166
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !72086

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !72131 ; 4 uses
  %.sroa.6.0157 = phi i64 [ %i.bk, %bb.o ], [ %.val83, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0100.0156 = phi ptr [ %i.bl, %bb.o ], [ %.val82, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0156) ]
  %i.bk = add i64 %.sroa.6.0157, -1, !dbg !72168
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0156, i64 8, !dbg !72171 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !72173, !alias.scope !72180, !noundef !13
  %i.bn = load i64, ptr %.sroa.0100.0156, align 8, !dbg !72183, !alias.scope !72180, !noundef !13
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !72184
  call void @llvm.experimental.noalias.scope.decl(metadata !72137), !dbg !72186
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !72187, !alias.scope !72137, !noalias !72140, !nonnull !13 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !72187
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !72187
  %i.bs = load i64, ptr %i.br, align 8, !dbg !72189, !noalias !72190, !noundef !13
  %i.bt = load i64, ptr %i.j, align 8, !dbg !72191, !range !5138, !alias.scope !72194, !noalias !72140, !noundef !13
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !72142
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !72142

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !72197

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !72198, !alias.scope !72194, !noalias !72140
  br label %bb.o, !dbg !72197

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !72198
  %i.bw = add i64 %i.bo, %i.bs, !dbg !72203
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !72205
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !72207, !noalias !72140
  %i.by = add i64 %i.bj, 1, !dbg !72209           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !72209, !alias.scope !72194, !noalias !72140
  %i.bz = icmp ult i64 %.sroa.6.0157, 3, !dbg !72125
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !72125

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i unwind label %bb.q, !dbg !72210

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !72213

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !72210
  unreachable, !dbg !72210

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.d, !dbg !72215

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !72217
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !72217

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !72218
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterBU_ENCINvNtNtB10_7compute11concatenate16concatenate_listxBU_Es_0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72219

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !72228
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRB1c_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxB3C_E0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72229

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !72236
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !72238
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !72238, !nonnull !13, !noundef !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72256
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !72256, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !72236

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !72257

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !72258, !range !800, !noundef !13 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !72258
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !72260
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !72260 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !72260
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !72260 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !72261

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !72262
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !72263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !72262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !72270
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72263
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !72263
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72263
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !72263
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !72263
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !72263
  store i8 42, ptr %0, align 8, !dbg !72263
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72257

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !72270
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72257

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !72257
  br label %bb.aa, !dbg !72271

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !72272 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !72272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !72273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !72273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !72275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72276, !noalias !72280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !72275
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !72284

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !72257
  br label %bb.p, !dbg !72287

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !72289
  unreachable, !dbg !72289

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !72290
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !72292
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !72292, !nonnull !13, !noundef !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72307
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !72307, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !72290

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.i) #50
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !72308

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !72309, !range !800, !noundef !13 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !72309
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !72310
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !72310 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !72310
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !72310 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !72311

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !72312
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !72313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !72312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !72319
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72313
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !72313
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72313
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !72313
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !72313
  store ptr %i.cx, ptr %.sroa.351.0..sroa_idx, align 8, !dbg !72313
  store i8 42, ptr %0, align 8, !dbg !72313
end_hunk_4
begin_hunk_5_@_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops:bb.a
bb.ao:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops.exit
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit unwind label %.thread.loopexit.split-lp, !dbg !72333

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops.exit, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !72325
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l), !dbg !72078
  br label %bb.ak, !dbg !72326

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.ae, %bb.v
  %.pn.ph = phi { ptr, i32 } [ %i.cg, %bb.v ], [ %i.cs, %bb.ae ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit147, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.j) #50
          to label %.thread119 unwind label %bb.ac, !dbg !72324

.thread119:                                       ; preds = %bb.am, %.loopexit.split-lp, %bb.q, %bb.d
  %.pn72124 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ac, %bb.d ], [ %i.cz, %bb.am ], [ %.pn.ph, %.loopexit.split-lp ] ; 2 uses
  %.sroa.032.1123 = phi i1 [ true, %bb.q ], [ true, %bb.d ], [ false, %bb.am ], [ true, %.loopexit.split-lp ]
  %i.dc = load ptr, ptr %i.k, align 8, !dbg !72336, !alias.scope !72338, !noundef !13
  %i.dd = icmp eq ptr %i.dc, null, !dbg !72336
  br i1 %i.dd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99, label %bb.ap, !dbg !72336

bb.ap:                                            ; preds = %.thread119
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99 unwind label %bb.ac, !dbg !72341

bb.aq:                                            ; preds = %.thread, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99
  %.pn74117 = phi { ptr, i32 } [ %.pn74118, %.thread ], [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99 ]
  resume { ptr, i32 } %.pn74117, !dbg !72289

.thread:                                          ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99
  %.pn74118 = phi { ptr, i32 } [ %.pn72124, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99 ], [ %lpad.loopexit150, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(32) %i.l) #50
          to label %bb.aq unwind label %bb.ac, !dbg !72078
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate16concatenate_listxRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 1, 1152921504606846976) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !72344 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !72345
  %.val85 = load ptr, ptr %1, align 8, !dbg !72346, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %.val.i = load ptr, ptr %.val85, align 8, !dbg !72347, !nonnull !13, !noundef !13
  %i.m = getelementptr i8, ptr %.val85, i64 8, !dbg !72347
  %.val1.i = load ptr, ptr %i.m, align 8, !dbg !72347, !nonnull !13, !align !199, !noundef !13
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 64, !dbg !72349
  %i.o = load ptr, ptr %i.n, align 8, !dbg !72349, !invariant.load !13, !nonnull !13
  %i.p = tail call noundef nonnull align 8 ptr %i.o(ptr noundef nonnull %.val.i) #52, !dbg !72350
  call fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) #52, !dbg !72351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72352), !dbg !72355
  %.idx.i = shl nuw nsw i64 %2, 3, !dbg !72357
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !72357 ; 4 uses
  br label %.lr.ph.i, !dbg !72363

.lr.ph.i:                                         ; preds = %bb.a, %.noexc86
  %.sroa.0.010.i = phi i64 [ %i.z, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.02.09.i = phi i64 [ %i.aa, %.noexc86 ], [ 0, %bb.a ]
  %.sroa.06.08.i = phi ptr [ %i.r, %.noexc86 ], [ %1, %bb.a ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i, i64 8, !dbg !72365 ; 2 uses
  %.sroa.06.0.val.i = load ptr, ptr %.sroa.06.08.i, align 8, !dbg !72367, !alias.scope !72352, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %.val.i.i = load ptr, ptr %.sroa.06.0.val.i, align 8, !dbg !72368, !noalias !72352, !nonnull !13, !noundef !13 ; 2 uses
  %i.s = getelementptr i8, ptr %.sroa.06.0.val.i, i64 8, !dbg !72368
  %.val1.i.i = load ptr, ptr %i.s, align 8, !dbg !72368, !noalias !72352, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48, !dbg !72370
  %i.u = load ptr, ptr %i.t, align 8, !dbg !72370, !invariant.load !13, !noalias !72352, !nonnull !13
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %.val.i.i) #52
          to label %.noexc unwind label %.thread.loopexit, !dbg !72371, !inline_history !70575

.noexc:                                           ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 88, !dbg !72372
  %i.x = load ptr, ptr %i.w, align 8, !dbg !72372, !invariant.load !13, !noalias !72352, !nonnull !13
  %i.y = invoke noundef i64 %i.x(ptr noundef nonnull %.val.i.i) #52
          to label %.noexc86 unwind label %.thread.loopexit, !dbg !72373, !inline_history !70575

.noexc86:                                         ; preds = %.noexc
  %i.z = add i64 %i.v, %.sroa.0.010.i, !dbg !72374 ; 3 uses
  %i.aa = add i64 %i.y, %.sroa.02.09.i, !dbg !72375 ; 2 uses
  %i.ab = icmp eq ptr %i.r, %i.q, !dbg !72376
  br i1 %i.ab, label %bb.b, label %.lr.ph.i, !dbg !72363

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutable6BitmapEECsePnBjWcsLF5_10polars_ops.exit99: ; preds = %.thread119, %bb.ap
  br i1 %.sroa.032.1123, label %.thread, label %bb.aq, !dbg !72378

.thread.loopexit:                                 ; preds = %.noexc, %.lr.ph.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.ao, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %.noexc86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !72379
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate42concatenate_validities_with_len_null_countRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.z, i64 noundef %i.aa)
          to label %bb.c unwind label %.thread.loopexit.split-lp, !dbg !72381

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !72382
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %i.z)
          to label %.lr.ph161 unwind label %bb.d, !dbg !72385

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.lr.ph161:                                        ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e, !dbg !72386

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
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.034.0158, i64 8, !dbg !72394 ; 2 uses
  %.sroa.034.0.val = load ptr, ptr %.sroa.034.0158, align 8, !dbg !72397, !nonnull !13, !align !199, !noundef !13 ; 2 uses
  %.val.i87 = load ptr, ptr %.sroa.034.0.val, align 8, !dbg !72399, !nonnull !13, !noundef !13
  %i.ag = getelementptr i8, ptr %.sroa.034.0.val, i64 8, !dbg !72399
  %.val1.i88 = load ptr, ptr %i.ag, align 8, !dbg !72399, !nonnull !13, !align !199, !noundef !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i88, i64 32, !dbg !72401
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !72401, !invariant.load !13, !nonnull !13
  %i.aj = invoke { ptr, ptr } %i.ai(ptr noundef nonnull %.val.i87)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit, !dbg !72402 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0, !dbg !72401 ; 6 uses
  %i.al = extractvalue { ptr, ptr } %i.aj, 1, !dbg !72401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !72403
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !72406
  %i.an = load ptr, ptr %i.am, align 8, !dbg !72406, !invariant.load !13, !nonnull !13
  invoke void %i.an(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef %i.ak)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit, !dbg !72409

bb.g:                                             ; preds = %bb.f
  %i.ao = load i128, ptr %i.b, align 16, !dbg !72410, !noundef !13
  %i.ap = icmp eq i128 %i.ao, 128067558350413595523341224040139320593, !dbg !72420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !72403
  br i1 %i.ap, label %bb.j, label %bb.h, !dbg !72421, !prof !919

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #51
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72422

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  %i.aq = getelementptr i8, ptr %i.ak, i64 40, !dbg !72425 ; 2 uses
  %.val79 = load ptr, ptr %i.aq, align 8, !dbg !72425, !noundef !13 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 48, !dbg !72425 ; 2 uses
  %.val80 = load i64, ptr %i.ar, align 8, !dbg !72425, !noundef !13 ; 3 uses
  %i.as = icmp ult i64 %.val80, 2, !dbg !72427
  br i1 %i.as, label %._crit_edge, label %.lr.ph.preheader, !dbg !72427

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre = load i64, ptr %i.ad, align 8, !dbg !72433, !alias.scope !72439, !noalias !72442
  br label %.lr.ph, !dbg !72444

._crit_edge.loopexit:                             ; preds = %bb.o
  %.val81.pre = load ptr, ptr %i.aq, align 8, !dbg !72447
  %.val82.pre = load i64, ptr %i.ar, align 8, !dbg !72447
  br label %._crit_edge, !dbg !72447

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %.val82 = phi i64 [ %.val82.pre, %._crit_edge.loopexit ], [ %.val80, %bb.j ], !dbg !72447 ; 2 uses
  %.val81 = phi ptr [ %.val81.pre, %._crit_edge.loopexit ], [ %.val79, %bb.j ], !dbg !72447 ; 2 uses
  %.val78 = load i64, ptr %.val81, align 8, !dbg !72448, !noundef !13 ; 2 uses
  %.not.i91 = icmp ne i64 %.val82, 0, !dbg !72449
  call void @llvm.assume(i1 %.not.i91), !dbg !72449
  %i.at = getelementptr [8 x i8], ptr %.val81, i64 %.val82, !dbg !72454
  %i.au = getelementptr i8, ptr %i.at, i64 -8, !dbg !72454
  %i.av = load i64, ptr %i.au, align 8, !dbg !72455, !noundef !13
  %i.aw = sub nuw nsw i64 %i.av, %.val78, !dbg !72456
  %i.ax = icmp eq i64 %.val78, 0, !dbg !72458
  br i1 %i.ax, label %bb.k, label %bb.m, !dbg !72458

bb.k:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 56, !dbg !72460
  %i.az = load ptr, ptr %i.ay, align 8, !dbg !72462, !nonnull !13, !noundef !13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 64, !dbg !72462
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !72462, !nonnull !13, !align !199, !noundef !13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !72462
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !72462, !invariant.load !13, !nonnull !13
  %i.be = invoke noundef i64 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit, !dbg !72463

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp ne i64 %i.aw, %i.be, !dbg !72464
  %i.bg = zext i1 %i.bf to i64, !dbg !72465
  br label %bb.m, !dbg !72465

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.l ], [ 1, %._crit_edge ], !dbg !72466
  %i.bh = add i64 %.sroa.05.0, %.sroa.0.0159, !dbg !72467 ; 2 uses
  %i.bi = icmp eq ptr %i.af, %i.q, !dbg !72468
  br i1 %i.bi, label %._crit_edge162, label %bb.e, !dbg !72386

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bj = phi i64 [ %i.by, %bb.o ], [ %.pre, %.lr.ph.preheader ], !dbg !72433 ; 4 uses
  %.sroa.6.0157 = phi i64 [ %i.bk, %bb.o ], [ %.val80, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0100.0156 = phi ptr [ %i.bl, %bb.o ], [ %.val79, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0100.0156) ]
  %i.bk = add i64 %.sroa.6.0157, -1, !dbg !72470
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0100.0156, i64 8, !dbg !72473 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !72475, !alias.scope !72482, !noundef !13
  %i.bn = load i64, ptr %.sroa.0100.0156, align 8, !dbg !72485, !alias.scope !72482, !noundef !13
  %i.bo = sub i64 %i.bm, %i.bn, !dbg !72486
  call void @llvm.experimental.noalias.scope.decl(metadata !72439), !dbg !72488
  %i.bp = load ptr, ptr %i.ae, align 8, !dbg !72489, !alias.scope !72439, !noalias !72442, !nonnull !13 ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj, !dbg !72489
  %i.br = getelementptr i8, ptr %i.bq, i64 -8, !dbg !72489
  %i.bs = load i64, ptr %i.br, align 8, !dbg !72491, !noalias !72492, !noundef !13
  %i.bt = load i64, ptr %i.j, align 8, !dbg !72493, !range !5138, !alias.scope !72496, !noalias !72442, !noundef !13
  %i.bu = icmp eq i64 %i.bj, %i.bt, !dbg !72444
  br i1 %i.bu, label %bb.n, label %bb.o, !dbg !72444

bb.n:                                             ; preds = %.lr.ph
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc94 unwind label %.loopexit, !dbg !72499

.noexc94:                                         ; preds = %bb.n
  %.pre.i = load ptr, ptr %i.ae, align 8, !dbg !72500, !alias.scope !72496, !noalias !72442
  br label %bb.o, !dbg !72499

bb.o:                                             ; preds = %.lr.ph, %.noexc94
  %i.bv = phi ptr [ %i.bp, %.lr.ph ], [ %.pre.i, %.noexc94 ], !dbg !72500
  %i.bw = add i64 %i.bo, %i.bs, !dbg !72505
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bj, !dbg !72507
  store i64 %i.bw, ptr %i.bx, align 8, !dbg !72509, !noalias !72442
  %i.by = add i64 %i.bj, 1, !dbg !72511           ; 2 uses
  store i64 %i.by, ptr %i.ad, align 8, !dbg !72511, !alias.scope !72496, !noalias !72442
  %i.bz = icmp ult i64 %.sroa.6.0157, 3, !dbg !72427
  br i1 %i.bz, label %._crit_edge.loopexit, label %.lr.ph, !dbg !72427

bb.p:                                             ; preds = %bb.ab, %bb.an
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i unwind label %bb.q, !dbg !72512

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread119 unwind label %bb.r, !dbg !72515

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !72512
  unreachable, !dbg !72512

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECsePnBjWcsLF5_10polars_ops.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8774dFTUdNv_12polars_arrow6offset7OffsetsxEECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.d, !dbg !72517

._crit_edge162:                                   ; preds = %bb.m
  %.not68 = icmp eq i64 %i.bh, 0, !dbg !72519
  br i1 %.not68, label %bb.s, label %bb.t, !dbg !72519

bb.s:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !72520
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterRINtNtB6_5boxed3BoxBV_EENCINvNtNtB10_7compute11concatenate16concatenate_listxB3k_Es_0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72521

bb.t:                                             ; preds = %._crit_edge162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !72530
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEINtB2_12SpecFromIterBU_INtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterRBU_ENCINvNtNtB1h_7compute11concatenate16concatenate_listxB3C_E0EE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noundef nonnull %i.q)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72531

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !72538
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !72540
  %i.cd = load ptr, ptr %i.cc, align 8, !dbg !72540, !nonnull !13, !noundef !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !72558
  %i.cf = load i64, ptr %i.ce, align 8, !dbg !72558, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRDNtNtB6_5array5ArrayEL_ECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf)
          to label %bb.w unwind label %bb.v, !dbg !72538

bb.v:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !72559

bb.w:                                             ; preds = %bb.u
  %i.ch = load i64, ptr %i.f, align 8, !dbg !72560, !range !800, !noundef !13 ; 2 uses
  %.not69 = icmp eq i64 %i.ch, 18, !dbg !72560
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !72562
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !72562 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !72562
  %i.cl = load ptr, ptr %i.ck, align 8, !dbg !72562 ; 2 uses
  br i1 %.not69, label %bb.y, label %bb.x, !dbg !72563

bb.x:                                             ; preds = %bb.w
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !72564
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !72565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.464.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.760.0..sroa_idx, i64 48, i1 false), !dbg !72564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !72572
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72565
  store i64 %i.ch, ptr %i.cm, align 8, !dbg !72565
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72565
  store ptr %i.cj, ptr %.sroa.262.0..sroa_idx, align 8, !dbg !72565
  %.sroa.363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !72565
  store ptr %i.cl, ptr %.sroa.363.0..sroa_idx, align 8, !dbg !72565
  store i8 42, ptr %0, align 8, !dbg !72565
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72559

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !72572
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecRDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.g)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp, !dbg !72559

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !72559
  br label %bb.aa, !dbg !72573

bb.aa:                                            ; preds = %bb.ai, %bb.z
  %.sroa.0104.0 = phi ptr [ %i.cj, %bb.z ], [ %i.cv, %bb.ai ], !dbg !72574 ; 2 uses
  %.sroa.7105.0 = phi ptr [ %i.cl, %bb.z ], [ %i.cx, %bb.ai ], !dbg !72574 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !72575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !72575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !72577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !72578, !noalias !72582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !dbg !72577
  invoke void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferxE8from_vecCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.aj unwind label %bb.al, !dbg !72586

bb.ab:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !72559
  br label %bb.p, !dbg !72589

bb.ac:                                            ; preds = %bb.ap, %bb.am, %.thread, %.loopexit.split-lp, %bb.al, %bb.ae, %bb.v
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #49, !dbg !72591
  unreachable, !dbg !72591

bb.ad:                                            ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !72592
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !72594
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !72594, !nonnull !13, !noundef !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !72609
  %i.cr = load i64, ptr %i.cq, align 8, !dbg !72609, !noundef !13
  invoke fastcc void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cp, i64 noundef %i.cr)
          to label %bb.af unwind label %bb.ae, !dbg !72592

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtBL_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(24) %i.i) #50
          to label %.loopexit.split-lp unwind label %bb.ac, !dbg !72610

bb.af:                                            ; preds = %bb.ad
  %i.ct = load i64, ptr %i.h, align 8, !dbg !72611, !range !800, !noundef !13 ; 2 uses
  %.not70 = icmp eq i64 %i.ct, 18, !dbg !72611
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !72612
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !72612 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !72612
  %i.cx = load ptr, ptr %i.cw, align 8, !dbg !72612 ; 2 uses
  br i1 %.not70, label %bb.ah, label %bb.ag, !dbg !72613

bb.ag:                                            ; preds = %bb.af
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !72614
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !72615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.452.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false), !dbg !72614
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !72621
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !72615
  store i64 %i.ct, ptr %i.cy, align 8, !dbg !72615
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !72615
  store ptr %i.cv, ptr %.sroa.250.0..sroa_idx, align 8, !dbg !72615
  %.sroa.351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !72615
  store ptr %i.cx, ptr %.sroa.351.0..sroa_idx, align 8, !dbg !72615
  store i8 42, ptr %0, align 8, !dbg !72615
end_hunk_5
