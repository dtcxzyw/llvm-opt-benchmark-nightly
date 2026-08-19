inline.NumInlined: 1448
inline.NumDeleted: 766
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK8rawspeed10IiqDecoder34CorrectQuadrantMultipliersCombinedENS_10ByteStreamEjj:bb.a

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ae
  %i.lw = shl nuw nsw i64 %i.lu, 5
  %i.lx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lw) #28
          to label %.noexc137 unwind label %.loopexit ; 14 uses

.noexc137:                                        ; preds = %_ZNKSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i8 0, i64 32, i1 false)
  %i.ly = add nsw i64 %i.lu, -1                   ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i, label %bb.af

bb.af:                                            ; preds = %.noexc137
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 32 ; 3 uses
  %.idx.i.i.i.i.i30.i = shl nuw nsw i64 %i.ly, 5
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.idx.i.i.i.i.i30.i
  %i.mc = add nuw nsw i64 %i.lu, 576460752303423486
  %i.md = and i64 %i.mc, 576460752303423487
  %i.me = add nuw nsw i64 %i.lu, 7
  %xtraiter = and i64 %i.me, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i31.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.i.prol

.lr.ph.i.i.i.i.i.i.i31.i.prol:                    ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i31.i.prol
  %.06.i.i.i.i.i.i.i32.i.prol = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i.i31.i.prol ], [ %i.ma, %bb.af ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i31.i.prol ], [ 0, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i.i.i.i.i32.i.prol, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.mf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.i.prol, !llvm.loop !315

.lr.ph.i.i.i.i.i.i.i31.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i31.i.prol, %bb.af
  %.06.i.i.i.i.i.i.i32.i.unr = phi ptr [ %i.ma, %bb.af ], [ %i.mf, %.lr.ph.i.i.i.i.i.i.i31.i.prol ]
  %i.mg = icmp samesign ult i64 %i.md, 7
  br i1 %i.mg, label %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i, label %.lr.ph.i.i.i.i.i.i.i31.i

.lr.ph.i.i.i.i.i.i.i31.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i31.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31.i
  %.06.i.i.i.i.i.i.i32.i = phi ptr [ %i.mo, %.lr.ph.i.i.i.i.i.i.i31.i ], [ %.06.i.i.i.i.i.i.i32.i.unr, %.lr.ph.i.i.i.i.i.i.i31.i.prol.loopexit ] ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.06.i.i.i.i.i.i.i32.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.mh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mh, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.mi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mi, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.mj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mj, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.mk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mk, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.ml = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ml, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.mm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mm, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.mn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mn, ptr noundef nonnull align 8 dereferenceable(32) %i.lx, i64 32, i1 false), !tbaa.struct !313
  %i.mo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.i, i64 256 ; 2 uses
  %.not.i.i.i.i.i.i.i33.i.7 = icmp eq ptr %i.mo, %i.mb
  br i1 %.not.i.i.i.i.i.i.i33.i.7, label %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i, label %.lr.ph.i.i.i.i.i.i.i31.i, !llvm.loop !317

._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i: ; preds = %.lr.ph.i.i.i.i.i.i.i31.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31.i, %.noexc137
  store ptr %i.lx, ptr %i.bm, align 8, !tbaa !318
  %i.mp = getelementptr inbounds nuw [32 x i8], ptr %i.lx, i64 %i.lu ; 2 uses
  store ptr %i.mp, ptr %.phi.trans.insert.i, align 8, !tbaa !319
  store ptr %i.mp, ptr %i.bq, align 8, !tbaa !320
  br label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i

_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i
  %i.mq = phi ptr [ %i.lx, %._ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit_crit_edge.i ], [ null, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i ] ; 3 uses
  %i.mr = icmp sgt i32 %i.lj, 0
  br i1 %i.mr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i
  %i.ms = load i32, ptr %6, align 8, !tbaa !298   ; 2 uses
  %i.mt = sext i32 %i.ms to i64                   ; 4 uses
  %i.mu = call i64 @llvm.smax.i64(i64 %i.mt, i64 1) ; 2 uses
  %min.iters.check570 = icmp slt i32 %i.ms, 8
  br i1 %min.iters.check570, label %scalar.ph.preheader, label %vector.memcheck568

vector.memcheck568:                               ; preds = %.lr.ph.i
  %i.mv = shl nuw nsw i64 %i.mt, 2
  %scevgep = getelementptr i8, ptr %i.lt, i64 %i.mv
  %i.mw = shl nuw nsw i64 %i.mt, 3
  %scevgep569 = getelementptr i8, ptr %i.le, i64 %i.mw
  %bound0 = icmp ult ptr %i.lt, %scevgep569
  %bound1 = icmp ult ptr %i.le, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph571

vector.ph571:                                     ; preds = %vector.memcheck568
  %n.vec572 = and i64 %i.mu, 2147483640           ; 3 uses
  br label %vector.body573

vector.body573:                                   ; preds = %vector.body573, %vector.ph571
  %index574 = phi i64 [ 0, %vector.ph571 ], [ %index.next582, %vector.body573 ] ; 4 uses
  %vec.ind575 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph571 ], [ %vec.ind.next583, %vector.body573 ] ; 3 uses
  %step.add576 = add nuw <4 x i64> %vec.ind575, splat (i64 4)
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %index574
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %index574
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %wide.vec = load <8 x i32>, ptr %i.mx, align 4, !tbaa !33, !alias.scope !321 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec577.a = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec578 = load <8 x i32>, ptr %i.mz, align 4, !tbaa !33, !alias.scope !321 ; 2 uses
  %strided.vec579 = shufflevector <8 x i32> %wide.vec578, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec580 = shufflevector <8 x i32> %wide.vec578, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %index574 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  store <4 x i32> %strided.vec, ptr %i.na, align 4, !tbaa !33, !alias.scope !324, !noalias !321
  store <4 x i32> %strided.vec579, ptr %i.nb, align 4, !tbaa !33, !alias.scope !324, !noalias !321
  %i.nc = sitofp <4 x i32> %strided.vec577.a to <4 x double>
  %i.nd = sitofp <4 x i32> %strided.vec580 to <4 x double>
  %wide.gep = getelementptr inbounds nuw [32 x i8], ptr %i.mq, <4 x i64> %vec.ind575
  %wide.gep581 = getelementptr inbounds nuw [32 x i8], ptr %i.mq, <4 x i64> %step.add576
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.nc, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !326
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.nd, <4 x ptr> align 8 %wide.gep581, <4 x i1> splat (i1 true)), !tbaa !326
  %index.next582 = add nuw i64 %index574, 8       ; 2 uses
  %vec.ind.next583 = add nuw <4 x i64> %vec.ind575, splat (i64 8)
  %i.ne = icmp eq i64 %index.next582, %n.vec572
  br i1 %i.ne, label %middle.block584, label %vector.body573, !llvm.loop !328

middle.block584:                                  ; preds = %vector.body573
  %cmp.n585 = icmp eq i64 %i.mu, %n.vec572
  br i1 %cmp.n585, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck568, %.lr.ph.i, %middle.block584
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck568 ], [ 0, %.lr.ph.i ], [ %n.vec572, %middle.block584 ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block584, %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE6resizeEm.exit.i
  invoke void @_ZN8rawspeed6SplineItE7prepareEv(ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %_ZN8rawspeed6SplineItEC2ERKSt6vectorINS_8iPoint2DESaIS3_EE.exit unwind label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i, %_ZNKSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.nf = load ptr, ptr %i.bm, align 8, !tbaa !318 ; 3 uses
  %.not.i.i.i.i108 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i108, label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ng = load ptr, ptr %i.bq, align 8, !tbaa !320
  %i.nh = ptrtoint ptr %i.ng to i64
  %i.ni = ptrtoint ptr %i.nf to i64
  %i.nj = sub i64 %i.nh, %i.ni
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nj) #27
  br label %_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN8rawspeed6SplineItE7SegmentESaIS3_EED2Ev.exit.i: ; preds = %bb.ah, %bb.ag
  %i.nk = load ptr, ptr %i.bl, align 8, !tbaa !310 ; 2 uses
  %.not.i.i.i13.i = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i13.i, label %.body, label %.body.sink.split

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv.i ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !267
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.i
  store i32 %i.nm, ptr %i.nn, align 4, !tbaa !33
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !268
  %i.nq = sitofp i32 %i.np to double
  %i.nr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %indvars.iv.i
  store double %i.nq, ptr %i.nr, align 8, !tbaa !326
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ns = icmp slt i64 %indvars.iv.next.i, %i.mt
  br i1 %i.ns, label %scalar.ph, label %._crit_edge.i, !llvm.loop !329

_ZN8rawspeed6SplineItEC2ERKSt6vectorINS_8iPoint2DESaIS3_EE.exit: ; preds = %._crit_edge.i
  %i.nt = invoke noalias noundef nonnull dereferenceable(131072) ptr @_Znwm(i64 noundef 131072) #28
          to label %.noexc114 unwind label %bb.al ; 10 uses

.noexc114:                                        ; preds = %_ZN8rawspeed6SplineItEC2ERKSt6vectorINS_8iPoint2DESaIS3_EE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(131072) %i.nt, i8 0, i64 131072, i1 false), !noalias !330
  %i.nu = load i32, ptr %i.bn, align 4, !tbaa !309, !noalias !330 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, 0
  br i1 %i.nv, label %.lr.ph35.i, label %_ZNK8rawspeed6SplineItE14calculateCurveEv.exit

.lr.ph35.i:                                       ; preds = %.noexc114
  %i.nw = load ptr, ptr %i.bm, align 8, !tbaa !318, !noalias !330
  %i.nx = load ptr, ptr %i.bl, align 8, !tbaa !310, !noalias !330 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.nu to i64
  %.pre.i110 = load i32, ptr %i.nx, align 4, !tbaa !33, !noalias !330
  br label %bb.ai

.loopexit.i:                                      ; preds = %vec.epilog.scalar.ph542, %middle.block538, %vec.epilog.middle.block565, %bb.ai
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count.i
  br i1 %exitcond40.not.i, label %_ZNK8rawspeed6SplineItE14calculateCurveEv.exit, label %bb.ai, !llvm.loop !333

bb.ai:                                            ; preds = %.loopexit.i, %.lr.ph35.i
  %i.ny = phi i32 [ %.pre.i110, %.lr.ph35.i ], [ %i.oa, %.loopexit.i ] ; 7 uses
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph35.i ], [ %indvars.iv.next38.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 3 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv.next38.i
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !33, !noalias !330 ; 4 uses
  %.not32.i = icmp sgt i32 %i.ny, %i.oa
  br i1 %.not32.i, label %.loopexit.i, label %iter.check541

iter.check541:                                    ; preds = %bb.ai
  %i.ob = getelementptr inbounds nuw [32 x i8], ptr %i.nw, i64 %indvars.iv37.i ; 4 uses
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !326, !noalias !330 ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.oe = load double, ptr %i.od, align 8, !tbaa !334, !noalias !330 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.og = load double, ptr %i.of, align 8, !tbaa !335, !noalias !330 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !336, !noalias !330 ; 3 uses
  %i.oj = sext i32 %i.ny to i64                   ; 6 uses
  %i.ok = add i32 %i.oa, 1
  %i.ol = sub i32 %i.oa, %i.ny                    ; 3 uses
  %i.om = zext i32 %i.ol to i64
  %i.on = add nuw nsw i64 %i.om, 1                ; 5 uses
  %min.iters.check520 = icmp ult i32 %i.ol, 3
  br i1 %min.iters.check520, label %vec.epilog.scalar.ph542.preheader, label %vector.main.loop.iter.check521

vector.main.loop.iter.check521:                   ; preds = %iter.check541
  %min.iters.check522 = icmp ult i32 %i.ol, 15
  br i1 %min.iters.check522, label %vec.epilog.ph545, label %vector.ph523

vector.ph523:                                     ; preds = %vector.main.loop.iter.check521
  %i.oo = and i64 %i.on, 12
  %n.vec524 = and i64 %i.on, 8589934576           ; 4 uses
  %i.op = add nsw i64 %n.vec524, %i.oj            ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.oc, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert525 = insertelement <4 x double> poison, double %i.oe, i64 0
  %broadcast.splat526 = shufflevector <4 x double> %broadcast.splatinsert525, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert527 = insertelement <4 x double> poison, double %i.og, i64 0
  %broadcast.splat528 = shufflevector <4 x double> %broadcast.splatinsert527, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert529 = insertelement <4 x double> poison, double %i.oi, i64 0
  %broadcast.splat530 = shufflevector <4 x double> %broadcast.splatinsert529, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert531 = insertelement <4 x i32> poison, i32 %i.ny, i64 0
  %broadcast.splat532 = shufflevector <4 x i32> %broadcast.splatinsert531, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert533 = insertelement <4 x i32> poison, i32 %i.ny, i64 0
  %broadcast.splat534 = shufflevector <4 x i32> %broadcast.splatinsert533, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat534, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = sub <4 x i32> splat (i32 4), %broadcast.splat532
  %invariant.op636.a = sub <4 x i32> splat (i32 8), %broadcast.splat532
  %invariant.op638 = sub <4 x i32> splat (i32 12), %broadcast.splat532
  %invariant.gep = getelementptr [2 x i8], ptr %i.nt, i64 %i.oj
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph523
  %index536 = phi i64 [ 0, %vector.ph523 ], [ %index.next537, %vector.body535 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph523 ], [ %vec.ind.next, %vector.body535 ] ; 5 uses
  %i.oq = sub <4 x i32> %vec.ind, %broadcast.splat532
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %.reass637.a = add <4 x i32> %vec.ind, %invariant.op636.a
  %.reass639 = add <4 x i32> %vec.ind, %invariant.op638
  %i.or = sitofp <4 x i32> %i.oq to <4 x double>  ; 4 uses
  %i.os = sitofp <4 x i32> %.reass to <4 x double> ; 4 uses
  %i.ot = sitofp <4 x i32> %.reass637.a to <4 x double> ; 4 uses
  %i.ou = sitofp <4 x i32> %.reass639 to <4 x double> ; 4 uses
  %i.ov = fmul nnan <4 x double> %i.or, %i.or     ; 2 uses
  %i.ow = fmul nnan <4 x double> %i.os, %i.os     ; 2 uses
  %i.ox = fmul nnan <4 x double> %i.ot, %i.ot     ; 2 uses
  %i.oy = fmul nnan <4 x double> %i.ou, %i.ou     ; 2 uses
  %i.oz = fmul <4 x double> %i.ov, %i.or
  %i.pa = fmul <4 x double> %i.ow, %i.os
  %i.pb = fmul <4 x double> %i.ox, %i.ot
  %i.pc = fmul <4 x double> %i.oy, %i.ou
  %i.pd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat526, <4 x double> %i.or, <4 x double> %broadcast.splat)
  %i.pe = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat526, <4 x double> %i.os, <4 x double> %broadcast.splat)
  %i.pf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat526, <4 x double> %i.ot, <4 x double> %broadcast.splat)
  %i.pg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat526, <4 x double> %i.ou, <4 x double> %broadcast.splat)
  %i.ph = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat528, <4 x double> %i.ov, <4 x double> %i.pd)
  %i.pi = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat528, <4 x double> %i.ow, <4 x double> %i.pe)
  %i.pj = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat528, <4 x double> %i.ox, <4 x double> %i.pf)
  %i.pk = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat528, <4 x double> %i.oy, <4 x double> %i.pg)
  %i.pl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat530, <4 x double> %i.oz, <4 x double> %i.ph) ; 2 uses
  %i.pm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat530, <4 x double> %i.pa, <4 x double> %i.pi) ; 2 uses
  %i.pn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat530, <4 x double> %i.pb, <4 x double> %i.pj) ; 2 uses
  %i.po = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat530, <4 x double> %i.pc, <4 x double> %i.pk) ; 2 uses
  %i.pp = fcmp olt <4 x double> %i.pl, zeroinitializer
  %i.pq = fcmp olt <4 x double> %i.pm, zeroinitializer
  %i.pr = fcmp olt <4 x double> %i.pn, zeroinitializer
  %i.ps = fcmp olt <4 x double> %i.po, zeroinitializer
  %i.pt = select <4 x i1> %i.pp, <4 x double> zeroinitializer, <4 x double> %i.pl ; 2 uses
  %i.pu = select <4 x i1> %i.pq, <4 x double> zeroinitializer, <4 x double> %i.pm ; 2 uses
  %i.pv = select <4 x i1> %i.pr, <4 x double> zeroinitializer, <4 x double> %i.pn ; 2 uses
  %i.pw = select <4 x i1> %i.ps, <4 x double> zeroinitializer, <4 x double> %i.po ; 2 uses
  %i.px = fcmp ogt <4 x double> %i.pt, splat (double 6.553500e+04)
  %i.py = fcmp ogt <4 x double> %i.pu, splat (double 6.553500e+04)
  %i.pz = fcmp ogt <4 x double> %i.pv, splat (double 6.553500e+04)
  %i.qa = fcmp ogt <4 x double> %i.pw, splat (double 6.553500e+04)
  %i.qb = select <4 x i1> %i.px, <4 x double> splat (double 6.553500e+04), <4 x double> %i.pt
  %i.qc = select <4 x i1> %i.py, <4 x double> splat (double 6.553500e+04), <4 x double> %i.pu
  %i.qd = select <4 x i1> %i.pz, <4 x double> splat (double 6.553500e+04), <4 x double> %i.pv
  %i.qe = select <4 x i1> %i.qa, <4 x double> splat (double 6.553500e+04), <4 x double> %i.pw
  %i.qf = fptoui <4 x double> %i.qb to <4 x i16>
  %i.qg = fptoui <4 x double> %i.qc to <4 x i16>
  %i.qh = fptoui <4 x double> %i.qd to <4 x i16>
  %i.qi = fptoui <4 x double> %i.qe to <4 x i16>
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index536 ; 4 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.qk = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %i.ql = getelementptr inbounds nuw i8, ptr %gep, i64 24
  store <4 x i16> %i.qf, ptr %gep, align 2, !tbaa !247, !noalias !330
  store <4 x i16> %i.qg, ptr %i.qj, align 2, !tbaa !247, !noalias !330
  store <4 x i16> %i.qh, ptr %i.qk, align 2, !tbaa !247, !noalias !330
  store <4 x i16> %i.qi, ptr %i.ql, align 2, !tbaa !247, !noalias !330
  %index.next537 = add nuw i64 %index536, 16      ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.qm = icmp eq i64 %index.next537, %n.vec524
  br i1 %i.qm, label %middle.block538, label %vector.body535, !llvm.loop !337

middle.block538:                                  ; preds = %vector.body535
  %cmp.n539 = icmp eq i64 %i.on, %n.vec524
  br i1 %cmp.n539, label %.loopexit.i, label %vec.epilog.iter.check543

vec.epilog.iter.check543:                         ; preds = %middle.block538
  %min.epilog.iters.check544 = icmp eq i64 %i.oo, 0
  br i1 %min.epilog.iters.check544, label %vec.epilog.scalar.ph542.preheader, label %vec.epilog.ph545, !prof !264

vec.epilog.ph545:                                 ; preds = %vector.main.loop.iter.check521, %vec.epilog.iter.check543
  %vec.epilog.resume.val540 = phi i64 [ %n.vec524, %vec.epilog.iter.check543 ], [ 0, %vector.main.loop.iter.check521 ]
  %bc.resume.val = phi i64 [ %i.op, %vec.epilog.iter.check543 ], [ %i.oj, %vector.main.loop.iter.check521 ]
  %n.vec546 = and i64 %i.on, 8589934588           ; 3 uses
  %i.qn = add nsw i64 %n.vec546, %i.oj
  %broadcast.splatinsert547.a = insertelement <4 x double> poison, double %i.oc, i64 0
  %broadcast.splat548.a = shufflevector <4 x double> %broadcast.splatinsert547.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert549.a = insertelement <4 x double> poison, double %i.oe, i64 0
  %broadcast.splat550.a = shufflevector <4 x double> %broadcast.splatinsert549.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert551.a = insertelement <4 x double> poison, double %i.og, i64 0
  %broadcast.splat552.a = shufflevector <4 x double> %broadcast.splatinsert551.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert553.a = insertelement <4 x double> poison, double %i.oi, i64 0
  %broadcast.splat554.a = shufflevector <4 x double> %broadcast.splatinsert553.a, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert555.a = insertelement <4 x i32> poison, i32 %i.ny, i64 0
  %broadcast.splat556.a = shufflevector <4 x i32> %broadcast.splatinsert555.a, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.qo = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert557 = insertelement <4 x i32> poison, i32 %i.qo, i64 0
  %broadcast.splat558 = shufflevector <4 x i32> %broadcast.splatinsert557, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction559 = add <4 x i32> %broadcast.splat558, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep640 = getelementptr [2 x i8], ptr %i.nt, i64 %i.oj
  br label %vec.epilog.vector.body560

vec.epilog.vector.body560:                        ; preds = %vec.epilog.vector.body560, %vec.epilog.ph545
  %index561 = phi i64 [ %vec.epilog.resume.val540, %vec.epilog.ph545 ], [ %index.next563, %vec.epilog.vector.body560 ] ; 2 uses
  %vec.ind562 = phi <4 x i32> [ %induction559, %vec.epilog.ph545 ], [ %vec.ind.next564, %vec.epilog.vector.body560 ] ; 2 uses
  %i.qp = sub <4 x i32> %vec.ind562, %broadcast.splat556.a
  %i.qq = sitofp <4 x i32> %i.qp to <4 x double>  ; 4 uses
  %i.qr = fmul nnan <4 x double> %i.qq, %i.qq     ; 2 uses
  %i.qs = fmul <4 x double> %i.qr, %i.qq
  %i.qt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat550.a, <4 x double> %i.qq, <4 x double> %broadcast.splat548.a)
  %i.qu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat552.a, <4 x double> %i.qr, <4 x double> %i.qt)
  %i.qv = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat554.a, <4 x double> %i.qs, <4 x double> %i.qu) ; 2 uses
  %i.qw = fcmp olt <4 x double> %i.qv, zeroinitializer
  %i.qx = select <4 x i1> %i.qw, <4 x double> zeroinitializer, <4 x double> %i.qv ; 2 uses
  %i.qy = fcmp ogt <4 x double> %i.qx, splat (double 6.553500e+04)
  %i.qz = select <4 x i1> %i.qy, <4 x double> splat (double 6.553500e+04), <4 x double> %i.qx
  %i.ra = fptoui <4 x double> %i.qz to <4 x i16>
  %gep641 = getelementptr [2 x i8], ptr %invariant.gep640, i64 %index561
  store <4 x i16> %i.ra, ptr %gep641, align 2, !tbaa !247, !noalias !330
  %index.next563 = add nuw i64 %index561, 4       ; 2 uses
  %vec.ind.next564 = add <4 x i32> %vec.ind562, splat (i32 4)
  %i.rb = icmp eq i64 %index.next563, %n.vec546
  br i1 %i.rb, label %vec.epilog.middle.block565, label %vec.epilog.vector.body560, !llvm.loop !338

vec.epilog.middle.block565:                       ; preds = %vec.epilog.vector.body560
  %cmp.n566 = icmp eq i64 %i.on, %n.vec546
  br i1 %cmp.n566, label %.loopexit.i, label %vec.epilog.scalar.ph542.preheader

vec.epilog.scalar.ph542.preheader:                ; preds = %iter.check541, %vec.epilog.iter.check543, %vec.epilog.middle.block565
  %indvars.iv.i112.ph = phi i64 [ %i.oj, %iter.check541 ], [ %i.op, %vec.epilog.iter.check543 ], [ %i.qn, %vec.epilog.middle.block565 ]
  br label %vec.epilog.scalar.ph542

vec.epilog.scalar.ph542:                          ; preds = %vec.epilog.scalar.ph542.preheader, %vec.epilog.scalar.ph542
  %indvars.iv.i112 = phi i64 [ %indvars.iv.next.i113, %vec.epilog.scalar.ph542 ], [ %indvars.iv.i112.ph, %vec.epilog.scalar.ph542.preheader ] ; 3 uses
  %i.rc = trunc i64 %indvars.iv.i112 to i32
  %i.rd = sub i32 %i.rc, %i.ny
  %i.re = sitofp i32 %i.rd to double              ; 4 uses
  %i.rf = fmul nnan double %i.re, %i.re           ; 2 uses
  %i.rg = fmul double %i.rf, %i.re
  %i.rh = call double @llvm.fmuladd.f64(double %i.oe, double %i.re, double %i.oc)
  %i.ri = call double @llvm.fmuladd.f64(double %i.og, double %i.rf, double %i.rh)
  %i.rj = call double @llvm.fmuladd.f64(double %i.oi, double %i.rg, double %i.ri) ; 2 uses
  %i.rk = fcmp olt double %i.rj, 0.000000e+00
  %.sroa.speculated28.i = select i1 %i.rk, double 0.000000e+00, double %i.rj ; 2 uses
  %i.rl = fcmp ogt double %.sroa.speculated28.i, 6.553500e+04
  %.sroa.speculated.i = select i1 %i.rl, double 6.553500e+04, double %.sroa.speculated28.i
  %i.rm = fptoui double %.sroa.speculated.i to i16
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr %i.nt, i64 %indvars.iv.i112
  store i16 %i.rm, ptr %i.rn, align 2, !tbaa !247, !noalias !330
  %indvars.iv.next.i113 = add nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i113 to i32
  %exitcond.not.i = icmp eq i32 %i.ok, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %vec.epilog.scalar.ph542, !llvm.loop !339

_ZNK8rawspeed6SplineItE14calculateCurveEv.exit:   ; preds = %.loopexit.i, %.noexc114
  %spec.select = select i1 %i.jf, i32 %2, i32 %i.kt ; 2 uses
  %i.ro = select i1 %i.kj, i32 0, i32 %3          ; 4 uses
  %i.rp = select i1 %i.kj, i32 %3, i32 %i.kr      ; 4 uses
  %i.rq = icmp slt i32 %i.jg, %spec.select
  %i.rr = icmp slt i32 %i.ro, %i.rp
  %or.cond = and i1 %i.rq, %i.rr
  br i1 %or.cond, label %.preheader.lr.ph.split, label %_ZNSt6vectorItSaItEED2Ev.exit

.preheader.lr.ph.split:                           ; preds = %_ZNK8rawspeed6SplineItE14calculateCurveEv.exit
  %i.rs = load i32, ptr %i.br, align 8, !tbaa !67 ; 5 uses
  %i.rt = zext i32 %i.ro to i64                   ; 2 uses
  %i.ru = zext nneg i32 %i.kr to i64              ; 5 uses
  %i.rv = zext nneg i32 %i.kw to i64
  %i.rw = zext nneg i32 %i.kt to i64
  %i.rx = sub i32 %i.rp, %i.ro
  %xtraiter611 = and i32 %i.rx, 3                 ; 2 uses
  %lcmp.mod612.not = icmp eq i32 %xtraiter611, 0
  %i.ry = sub i32 %i.ro, %i.rp
  %i.rz = icmp ugt i32 %i.ry, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv293 = phi i64 [ %i.jh, %.preheader.lr.ph.split ], [ %indvars.iv.next294, %._crit_edge ] ; 3 uses
  %i.sa = icmp samesign ult i64 %indvars.iv293, %i.rw
  call void @llvm.assume(i1 %i.sa)
  %i.sb = mul nuw nsw i64 %indvars.iv293, %i.rv
  %i.sc = getelementptr inbounds nuw [2 x i8], ptr %i.km, i64 %i.sb ; 5 uses
  br i1 %lcmp.mod612.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader, %.prol.preheader
  %indvars.iv290.prol = phi i64 [ %indvars.iv.next291.prol, %.prol.preheader ], [ %i.rt, %.preheader ] ; 3 uses
  %prol.iter613 = phi i32 [ %prol.iter613.next, %.prol.preheader ], [ 0, %.preheader ]
  %i.sd = icmp samesign ult i64 %indvars.iv290.prol, %i.ru
  call void @llvm.assume(i1 %i.sd)
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %i.sc, i64 %indvars.iv290.prol ; 2 uses
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !247
  %i.sg = zext i16 %i.sf to i32                   ; 2 uses
  %spec.select189191.prol = call i32 @llvm.umin.i32(i32 %i.rs, i32 %i.sg) ; 2 uses
  %spec.select189.prol = trunc nuw i32 %spec.select189191.prol to i16
  %i.sh = sub nsw i32 %i.sg, %spec.select189191.prol
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %i.nt, i64 %i.si
  %i.sk = load i16, ptr %i.sj, align 2, !tbaa !247
  %i.sl = add i16 %i.sk, %spec.select189.prol
  store i16 %i.sl, ptr %i.se, align 2, !tbaa !247
  %indvars.iv.next291.prol = add nuw nsw i64 %indvars.iv290.prol, 1 ; 2 uses
  %prol.iter613.next = add i32 %prol.iter613, 1   ; 2 uses
  %prol.iter613.cmp.not = icmp eq i32 %prol.iter613.next, %xtraiter611
  br i1 %prol.iter613.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !340

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader
  %indvars.iv290.unr = phi i64 [ %i.rt, %.preheader ], [ %indvars.iv.next291.prol, %.prol.preheader ]
  br i1 %i.rz, label %._crit_edge, label %.preheader.new

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge, %_ZNK8rawspeed6SplineItE14calculateCurveEv.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.nt, i64 noundef 131072) #27
  %i.sm = load ptr, ptr %i.bm, align 8, !tbaa !318 ; 3 uses
end_hunk_0
