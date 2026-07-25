inline.NumInlined: 41205
inline.NumDeleted: 6297
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 231
begin_hunk_0_@_ZN6duckdb10ListVector27GetConsecutiveChildListInfoERNS_6VectorEmm:bb.a
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.x:                                             ; preds = %bb.v
  %i.fr = atomicrmw volatile add ptr %i.fe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.fh, %bb.w ], [ %i.fr, %bb.x ]
  %i.fs = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.fs, label %bb.y, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !88

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd) #46
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret void

bb.z:                                             ; preds = %bb.g, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.w, %bb.g ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %4) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10ListVector28GetConsecutiveChildSelVectorERNS_6VectorERNS_15SelectionVectorEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  %i.a = add i64 %3, %2                           ; 6 uses
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_12list_entry_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit unwind label %bb.p

_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit: ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !774  ; 4 uses
  %i.d = icmp ult i64 %2, %i.a
  br i1 %i.d, label %.lr.ph36, label %._crit_edge

.lr.ph36:                                         ; preds = %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit
  %i.e = load ptr, ptr %4, align 8, !tbaa !773
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !389  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !519  ; 3 uses
  %.not.i31 = icmp eq ptr %i.h, null
  br i1 %.not.i31, label %.lr.ph36.split.us, label %.lr.ph36.split

.lr.ph36.split.us:                                ; preds = %.lr.ph36
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us: ; preds = %.lr.ph36.split.us, %.loopexit.us.us
  %.02135.us.us = phi i64 [ %i.q, %.loopexit.us.us ], [ %2, %.lr.ph36.split.us ] ; 2 uses
  %.02234.us.us = phi i64 [ %.123.lcssa.us.us, %.loopexit.us.us ], [ 0, %.lr.ph36.split.us ] ; 4 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.02135.us.us ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !550  ; 5 uses
  %.not53 = icmp eq i64 %i.k, 0
  br i1 %.not53, label %.loopexit.us.us, label %.lr.ph.us.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us
  %.033.us.us = phi i64 [ %i.p, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us ], [ %.033.us.us.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.preheader ] ; 2 uses
  %.12332.us.us = phi i64 [ %i.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us ], [ %.12332.us.us.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.preheader ] ; 2 uses
  %i.l = add i64 %i.r, %.033.us.us
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.12332.us.us
  store i32 %i.m, ptr %i.n, align 4, !tbaa !3
  %i.o = add i64 %.12332.us.us, 1                 ; 2 uses
  %i.p = add nuw i64 %.033.us.us, 1               ; 2 uses
  %exitcond65.not = icmp eq i64 %i.p, %i.k
  br i1 %exitcond65.not, label %.loopexit.us.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us, !llvm.loop !2666

.loopexit.us.us:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us, %middle.block140, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us
  %.123.lcssa.us.us = phi i64 [ %.02234.us.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us ], [ %i.t, %middle.block140 ], [ %i.o, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us ]
  %i.q = add nuw i64 %.02135.us.us, 1             ; 2 uses
  %exitcond66.not = icmp eq i64 %i.q, %i.a
  br i1 %exitcond66.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us, !llvm.loop !2667

.lr.ph.us.us:                                     ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.us
  %i.r = load i64, ptr %i.i, align 8, !tbaa !552  ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !389    ; 2 uses
  %min.iters.check128 = icmp ult i64 %i.k, 8
  br i1 %min.iters.check128, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %.lr.ph.us.us
  %n.vec131 = and i64 %i.k, -8                    ; 4 uses
  %i.t = add i64 %.02234.us.us, %n.vec131         ; 2 uses
  %broadcast.splatinsert132 = insertelement <4 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat133 = shufflevector <4 x i64> %broadcast.splatinsert132, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op158 = add <4 x i64> splat (i64 4), %broadcast.splat133
  %i.u = getelementptr [4 x i8], ptr %i.s, i64 %.02234.us.us
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph129
  %index135 = phi i64 [ 0, %vector.ph129 ], [ %index.next138, %vector.body134 ] ; 2 uses
  %vec.ind136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph129 ], [ %vec.ind.next139, %vector.body134 ] ; 3 uses
  %i.v = add <4 x i64> %broadcast.splat133, %vec.ind136
  %.reass159 = add <4 x i64> %vec.ind136, %invariant.op158
  %i.w = trunc <4 x i64> %i.v to <4 x i32>
  %i.x = trunc <4 x i64> %.reass159 to <4 x i32>
  %i.y = getelementptr [4 x i8], ptr %i.u, i64 %index135 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %i.w, ptr %i.y, align 4, !tbaa !3
  store <4 x i32> %i.x, ptr %i.z, align 4, !tbaa !3
  %index.next138 = add nuw i64 %index135, 8       ; 2 uses
  %vec.ind.next139 = add nuw <4 x i64> %vec.ind136, splat (i64 8)
  %i.aa = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.aa, label %middle.block140, label %vector.body134, !llvm.loop !2668

middle.block140:                                  ; preds = %vector.body134
  %cmp.n141 = icmp eq i64 %i.k, %n.vec131
  br i1 %cmp.n141, label %.loopexit.us.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us.preheader: ; preds = %.lr.ph.us.us, %middle.block140
  %.033.us.us.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec131, %middle.block140 ]
  %.12332.us.us.ph = phi i64 [ %.02234.us.us, %.lr.ph.us.us ], [ %i.t, %middle.block140 ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %.lr.ph36.split.us, %.loopexit.us
  %.02135.us = phi i64 [ %i.am, %.loopexit.us ], [ %2, %.lr.ph36.split.us ] ; 2 uses
  %.02234.us = phi i64 [ %.123.lcssa.us, %.loopexit.us ], [ 0, %.lr.ph36.split.us ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.02135.us
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !550 ; 5 uses
  %.not52 = icmp eq i64 %i.ag, 0
  br i1 %.not52, label %.loopexit.us, label %.lr.ph.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us
  %.033.us = phi i64 [ %i.al, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ], [ %.033.us.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.preheader ] ; 2 uses
  %.12332.us = phi i64 [ %i.ak, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ], [ %.12332.us.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.preheader ] ; 2 uses
  %i.ah = add i64 %i.an, %.033.us
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.12332.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = add i64 %.12332.us, 1                   ; 2 uses
  %i.al = add nuw i64 %.033.us, 1                 ; 2 uses
  %exitcond63.not = icmp eq i64 %i.al, %i.ag
  br i1 %exitcond63.not, label %.loopexit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, !llvm.loop !2669

.loopexit.us:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us, %middle.block123, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %.123.lcssa.us = phi i64 [ %.02234.us, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ], [ %i.ap, %middle.block123 ], [ %i.ak, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us ]
  %i.am = add nuw i64 %.02135.us, 1               ; 2 uses
  %exitcond64.not = icmp eq i64 %i.am, %i.a
  br i1 %exitcond64.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !2667

.lr.ph.us:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !552 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !389   ; 2 uses
  %min.iters.check111 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check111, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %.lr.ph.us
  %n.vec114 = and i64 %i.ag, -8                   ; 4 uses
  %i.ap = add i64 %.02234.us, %n.vec114           ; 2 uses
  %broadcast.splatinsert115 = insertelement <4 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat116 = shufflevector <4 x i64> %broadcast.splatinsert115, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op156 = add <4 x i64> splat (i64 4), %broadcast.splat116
  %i.aq = getelementptr [4 x i8], ptr %i.ao, i64 %.02234.us
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph112
  %index118 = phi i64 [ 0, %vector.ph112 ], [ %index.next121, %vector.body117 ] ; 2 uses
  %vec.ind119 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph112 ], [ %vec.ind.next122, %vector.body117 ] ; 3 uses
  %i.ar = add <4 x i64> %broadcast.splat116, %vec.ind119
  %.reass157 = add <4 x i64> %vec.ind119, %invariant.op156
  %i.as = trunc <4 x i64> %i.ar to <4 x i32>
  %i.at = trunc <4 x i64> %.reass157 to <4 x i32>
  %i.au = getelementptr [4 x i8], ptr %i.aq, i64 %index118 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x i32> %i.as, ptr %i.au, align 4, !tbaa !3
  store <4 x i32> %i.at, ptr %i.av, align 4, !tbaa !3
  %index.next121 = add nuw i64 %index118, 8       ; 2 uses
  %vec.ind.next122 = add nuw <4 x i64> %vec.ind119, splat (i64 8)
  %i.aw = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.aw, label %middle.block123, label %vector.body117, !llvm.loop !2670

middle.block123:                                  ; preds = %vector.body117
  %cmp.n124 = icmp eq i64 %i.ag, %n.vec114
  br i1 %cmp.n124, label %.loopexit.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us.preheader: ; preds = %.lr.ph.us, %middle.block123
  %.033.us.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec114, %middle.block123 ]
  %.12332.us.ph = phi i64 [ %.02234.us, %.lr.ph.us ], [ %i.ap, %middle.block123 ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us

.lr.ph36.split:                                   ; preds = %.lr.ph36
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us39, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us39: ; preds = %.lr.ph36.split, %.loopexit.us45
  %.02135.us37 = phi i64 [ %5, %.loopexit.us45 ], [ %2, %.lr.ph36.split ] ; 4 uses
  %.02234.us38 = phi i64 [ %.224.us43, %.loopexit.us45 ], [ 0, %.lr.ph36.split ] ; 5 uses
  %i.ax = lshr i64 %.02135.us37, 6
  %i.ay = and i64 %.02135.us37, 63
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ax
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !108
  %i.bb = shl nuw i64 1, %i.ay
  %i.bc = and i64 %i.ba, %i.bb
  %.not.us = icmp eq i64 %i.bc, 0
  br i1 %.not.us, label %.loopexit.us45, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us44

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41
  %.033.us42 = phi i64 [ %i.bh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41 ], [ %.033.us42.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41.preheader ] ; 2 uses
  %.12332.us43 = phi i64 [ %i.bg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41 ], [ %.12332.us43.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41.preheader ] ; 2 uses
  %i.bd = add i64 %i.bl, %.033.us42
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.12332.us43
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add i64 %.12332.us43, 1                 ; 2 uses
  %i.bh = add nuw i64 %.033.us42, 1               ; 2 uses
  %exitcond61.not = icmp eq i64 %i.bh, %i.bk
  br i1 %exitcond61.not, label %.loopexit.us45, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41, !llvm.loop !2671

.loopexit.us45:                                   ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41, %middle.block106, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us44, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us39
  %.224.us43 = phi i64 [ %.02234.us38, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us39 ], [ %.02234.us38, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us44 ], [ %i.bn, %middle.block106 ], [ %i.bg, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41 ]
  %5 = add nuw i64 %.02135.us37, 1                ; 2 uses
  %exitcond62.not = icmp eq i64 %5, %i.a
  br i1 %exitcond62.not, label %._crit_edge, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us39, !llvm.loop !2667

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us44: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us39
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.02135.us37 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !550 ; 5 uses
  %.not51 = icmp eq i64 %i.bk, 0
  br i1 %.not51, label %.loopexit.us45, label %.lr.ph.us47

.lr.ph.us47:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader.us44
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !552 ; 2 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !389   ; 2 uses
  %min.iters.check94 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check94, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41.preheader, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.us47
  %n.vec97 = and i64 %i.bk, -8                    ; 4 uses
  %i.bn = add i64 %.02234.us38, %n.vec97          ; 2 uses
  %broadcast.splatinsert98 = insertelement <4 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat99 = shufflevector <4 x i64> %broadcast.splatinsert98, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op154 = add <4 x i64> splat (i64 4), %broadcast.splat99
  %i.bo = getelementptr [4 x i8], ptr %i.bm, i64 %.02234.us38
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph95
  %index101 = phi i64 [ 0, %vector.ph95 ], [ %index.next104, %vector.body100 ] ; 2 uses
  %vec.ind102 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph95 ], [ %vec.ind.next105, %vector.body100 ] ; 3 uses
  %i.bp = add <4 x i64> %broadcast.splat99, %vec.ind102
  %.reass155 = add <4 x i64> %vec.ind102, %invariant.op154
  %i.bq = trunc <4 x i64> %i.bp to <4 x i32>
  %i.br = trunc <4 x i64> %.reass155 to <4 x i32>
  %i.bs = getelementptr [4 x i8], ptr %i.bo, i64 %index101 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> %i.bq, ptr %i.bs, align 4, !tbaa !3
  store <4 x i32> %i.br, ptr %i.bt, align 4, !tbaa !3
  %index.next104 = add nuw i64 %index101, 8       ; 2 uses
  %vec.ind.next105 = add nuw <4 x i64> %vec.ind102, splat (i64 8)
  %i.bu = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.bu, label %middle.block106, label %vector.body100, !llvm.loop !2672

middle.block106:                                  ; preds = %vector.body100
  %cmp.n107 = icmp eq i64 %i.bk, %n.vec97
  br i1 %cmp.n107, label %.loopexit.us45, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41.preheader: ; preds = %.lr.ph.us47, %middle.block106
  %.033.us42.ph = phi i64 [ 0, %.lr.ph.us47 ], [ %n.vec97, %middle.block106 ]
  %.12332.us43.ph = phi i64 [ %.02234.us38, %.lr.ph.us47 ], [ %i.bn, %middle.block106 ]
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.us41

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us45, %.loopexit.us, %.loopexit.us.us, %_ZN6duckdb19UnifiedVectorFormat7GetDataINS_12list_entry_tEEEPKT_RKS0_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 4 uses
  %i.by = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 4294967297
  %i.ca = trunc i64 %i.by to i32                  ; 2 uses
  br i1 %i.bz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.bx, align 8, !tbaa !409
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cb, align 4, !tbaa !411
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !412
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #46, !inline_history !849
  %i.cf = load ptr, ptr %i.bw, align 8, !tbaa !412
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #46, !inline_history !849
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.bx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ck = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ca, %bb.f ], [ %i.ck, %bb.g ]
  %i.cl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cl, label %bb.h, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !88

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #46
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !408 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.co, align 8, !tbaa !409
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !411
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !412
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #46, !inline_history !850
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !412
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #46, !inline_history !850
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !153
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.m:                                             ; preds = %bb.k
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.cr, %bb.l ], [ %i.db, %bb.m ]
  %i.dc = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.dc, label %bb.n, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !88

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #46
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret void

bb.o:                                             ; preds = %bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.b
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %.lr.ph36.split, %.loopexit
  %.02135 = phi i64 [ %i.eg, %.loopexit ], [ %2, %.lr.ph36.split ] ; 2 uses
  %.02234 = phi i64 [ %.224, %.loopexit ], [ 0, %.lr.ph36.split ] ; 5 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.02135
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = zext i32 %i.dg to i64                   ; 3 uses
  %i.di = lshr i64 %i.dh, 6
  %i.dj = and i64 %i.dh, 63
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.di
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !108
  %i.dm = shl nuw i64 1, %i.dj
  %i.dn = and i64 %i.dl, %i.dm
  %.not = icmp eq i64 %i.dn, 0
  br i1 %.not, label %.loopexit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.dh ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !550 ; 5 uses
  %.not50 = icmp eq i64 %i.dq, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader
  %i.dr = load i64, ptr %i.do, align 8, !tbaa !552 ; 2 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !389   ; 2 uses
  %min.iters.check = icmp ult i64 %i.dq, 8
  br i1 %min.iters.check, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.preheader148, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.dq, -8                      ; 4 uses
  %i.dt = add i64 %.02234, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat
  %i.du = getelementptr [4 x i8], ptr %i.ds, i64 %.02234
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
end_hunk_0
