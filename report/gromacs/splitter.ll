inline.NumInlined: 650
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb:bb.a
  %.not77.i = icmp sgt i32 %i.nx, %i.ob
  %i.oc = trunc nsw i64 %indvars.iv285.i to i32
  br i1 %.not77.i, label %.lr.ph231.i.1, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph231.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !39
  %i.of = call i32 @llvm.smax.i32(i32 %i.ob, i32 %i.oe)
  store i32 %i.of, ptr %i.oa, align 4, !tbaa !68
  %i.og = load i32, ptr %i.nz, align 4, !tbaa !39
  %i.oh = call i32 @llvm.smin.i32(i32 %i.nx, i32 %i.og)
  store i32 %i.oh, ptr %i.nz, align 4, !tbaa !66
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  store i32 -1, ptr %i.oi, align 4, !tbaa !70
  br label %.lr.ph231.i.1

.lr.ph231.i.1:                                    ; preds = %bb.cl, %.lr.ph231.i
  %.2.i62 = phi i32 [ %.1229.i, %bb.cl ], [ %i.oc, %.lr.ph231.i ] ; 2 uses
  %indvars.iv.next286.i = add nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %i.oj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv.next286.i ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !66 ; 2 uses
  %i.ol = sext i32 %.2.i62 to i64
  %i.om = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.ol ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !68 ; 2 uses
  %.not77.i.1 = icmp sgt i32 %i.ok, %i.oo
  %i.op = trunc nsw i64 %indvars.iv.next286.i to i32
  br i1 %.not77.i.1, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph231.i.1
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !39
  %i.os = call i32 @llvm.smax.i32(i32 %i.oo, i32 %i.or)
  store i32 %i.os, ptr %i.on, align 4, !tbaa !68
  %i.ot = load i32, ptr %i.om, align 4, !tbaa !39
  %i.ou = call i32 @llvm.smin.i32(i32 %i.ok, i32 %i.ot)
  store i32 %i.ou, ptr %i.om, align 4, !tbaa !66
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i32 -1, ptr %i.ov, align 4, !tbaa !70
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph231.i.1
  %.2.i62.1 = phi i32 [ %.2.i62, %bb.cm ], [ %i.op, %.lr.ph231.i.1 ] ; 2 uses
  %indvars.iv.next286.i.1 = add nsw i64 %indvars.iv285.i, 2 ; 2 uses
  %lftr.wideiv.i63.1 = trunc i64 %indvars.iv.next286.i.1 to i32
  %exitcond288.not.i.1 = icmp eq i32 %.046.lcssa.i, %lftr.wideiv.i63.1
  br i1 %exitcond288.not.i.1, label %._crit_edge232.i, label %.lr.ph231.i, !llvm.loop !71

._crit_edge232.i:                                 ; preds = %.lr.ph231.i.prol.loopexit, %bb.cn, %.preheader180.i
  %.1.lcssa.i = phi i32 [ %.058235.i, %.preheader180.i ], [ %.2.i62.lcssa.unr, %.lr.ph231.i.prol.loopexit ], [ %.2.i62.1, %bb.cn ]
  %storemerge79.lcssa.i = phi i32 [ %storemerge79228.i, %.preheader180.i ], [ %.046.lcssa.i, %bb.cn ], [ %.046.lcssa.i, %.lr.ph231.i.prol.loopexit ]
  %i.ow = icmp eq i32 %storemerge79.lcssa.i, %.046.lcssa.i
  %i.ox = zext i1 %i.ow to i32
  %spec.select.i54 = add nsw i32 %.1.lcssa.i, %i.ox ; 2 uses
  %i.oy = icmp slt i32 %spec.select.i54, %.046.lcssa.i
  br i1 %i.oy, label %.preheader180.i, label %.preheader178.i, !llvm.loop !72

.preheader178.i:                                  ; preds = %._crit_edge232.i, %.critedge.i
  %indvars.iv306.i = phi i32 [ %indvars.iv.next307.i, %.critedge.i ], [ -1, %._crit_edge232.i ] ; 2 uses
  %indvars.iv292.i = phi i32 [ %indvars.iv.next293.i, %.critedge.i ], [ 1, %._crit_edge232.i ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.pre-phi.i, %.critedge.i ], [ 0, %._crit_edge232.i ] ; 6 uses
  %.066245.i = phi i32 [ %.167.lcssa.i, %.critedge.i ], [ %.046.lcssa.i, %._crit_edge232.i ] ; 5 uses
  %i.oz = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr i8, ptr %.sroa.0118.4.i, i64 %i.oz ; 2 uses
  %scevgep289.i = getelementptr i8, ptr %scevgep.i, i64 12
  %i.pa = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvar.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pc = add nsw i32 %.066245.i, -1
  %i.pd = sext i32 %i.pc to i64
  %i.pe = icmp slt i64 %indvar.i, %i.pd
  br i1 %i.pe, label %.lr.ph241.i, label %.preheader178..critedge_crit_edge.i

.preheader178..critedge_crit_edge.i:              ; preds = %.preheader178.i
  %.pre.i = add nuw nsw i64 %indvar.i, 1
  br label %.critedge.i

.lr.ph241.i:                                      ; preds = %.preheader178.i
  %i.pf = trunc i64 %indvar.i to i32
  %i.pg = add nuw nsw i64 %indvar.i, 1            ; 3 uses
  %i.ph = add i32 %.066245.i, %indvars.iv306.i
  %wide.trip.count308.i = zext i32 %i.ph to i64
  %.neg139 = add i32 %.066245.i, -2
  %i.pi = sext i32 %.066245.i to i64
  br label %bb.co

.preheader.i:                                     ; preds = %.critedge.i
  br i1 %.not135, label %._crit_edge250.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count317.i = zext nneg i32 %2 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph249.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check661 = icmp ult i32 %2, 32
  br i1 %min.iters.check661, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.pj = and i64 %wide.trip.count317.i, 28
  %n.vec = and i64 %wide.trip.count317.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 64
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 128
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 192
  %interleaved.vec = shufflevector <8 x i32> %vec.ind, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.pk, align 4, !tbaa !39, !noalias !62
  %interleaved.vec662 = shufflevector <8 x i32> %step.add, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec662, ptr %i.pm, align 4, !tbaa !39, !noalias !62
  %interleaved.vec663 = shufflevector <8 x i32> %step.add.2, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec663, ptr %i.po, align 4, !tbaa !39, !noalias !62
  %interleaved.vec664 = shufflevector <8 x i32> %step.add.3, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec664, ptr %i.pq, align 4, !tbaa !39, !noalias !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.pr = icmp eq i64 %index.next, %n.vec
  br i1 %i.pr, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count317.i
  br i1 %cmp.n, label %._crit_edge250.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.pj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph249.i.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec665 = and i64 %wide.trip.count317.i, 2147483644 ; 3 uses
  %i.ps = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ps, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index666 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next669, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind667 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next670, %vec.epilog.vector.body ] ; 2 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %index666
  %interleaved.vec668 = shufflevector <4 x i32> %vec.ind667, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec668, ptr %i.pt, align 4, !tbaa !39, !noalias !62
  %index.next669 = add nuw i64 %index666, 4       ; 2 uses
  %vec.ind.next670 = add <4 x i32> %vec.ind667, splat (i32 4)
  %i.pu = icmp eq i64 %index.next669, %n.vec665
  br i1 %i.pu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !77

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n671 = icmp eq i64 %n.vec665, %wide.trip.count317.i
  br i1 %cmp.n671, label %._crit_edge250.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv314.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec665, %vec.epilog.middle.block ]
  br label %.lr.ph249.i

.loopexit177.i:                                   ; preds = %.lr.ph239.preheader.i, %.preheader176.i
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond309.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count308.i
  %indvars.iv.next394 = add nsw i64 %indvars.iv393, -1
  br i1 %exitcond309.not.i, label %.critedge.i, label %bb.co, !llvm.loop !78

bb.co:                                            ; preds = %.loopexit177.i, %.lr.ph241.i
  %indvars.iv393 = phi i64 [ %indvars.iv.next394, %.loopexit177.i ], [ %i.pi, %.lr.ph241.i ] ; 3 uses
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %.loopexit177.i ], [ 0, %.lr.ph241.i ] ; 2 uses
  %i.pv = trunc i64 %indvars.iv301.i to i32
  %i.pw = add i32 %i.pf, %i.pv
  %i.px = sub i32 %.neg139, %i.pw
  %i.py = zext i32 %i.px to i64
  %i.pz = mul nuw nsw i64 %i.py, 12
  %i.qa = add nuw nsw i64 %i.pz, 12
  %i.qb = load i32, ptr %i.pb, align 4, !tbaa !70
  %i.qc = icmp eq i32 %i.qb, -1
  br i1 %i.qc, label %.preheader176.i, label %.critedge.i.loopexit.split.loop.exit555

.preheader176.i:                                  ; preds = %bb.co
  %i.qd = icmp slt i64 %i.pg, %indvars.iv393
  br i1 %i.qd, label %.lr.ph239.preheader.i, label %.loopexit177.i

.lr.ph239.preheader.i:                            ; preds = %.preheader176.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep289.i, i64 %i.qa, i1 false)
  br label %.loopexit177.i

.critedge.i.loopexit.split.loop.exit555:          ; preds = %bb.co
  %i.qe = trunc nsw i64 %indvars.iv393 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.loopexit177.i, %.critedge.i.loopexit.split.loop.exit555, %.preheader178..critedge_crit_edge.i
  %indvar.next.pre-phi.i = phi i64 [ %.pre.i, %.preheader178..critedge_crit_edge.i ], [ %i.pg, %.critedge.i.loopexit.split.loop.exit555 ], [ %i.pg, %.loopexit177.i ] ; 2 uses
  %.167.lcssa.i = phi i32 [ %.066245.i, %.preheader178..critedge_crit_edge.i ], [ %i.qe, %.critedge.i.loopexit.split.loop.exit555 ], [ %indvars.iv292.i, %.loopexit177.i ] ; 4 uses
  %i.qf = sext i32 %.167.lcssa.i to i64
  %i.qg = icmp slt i64 %indvar.next.pre-phi.i, %i.qf
  %indvars.iv.next293.i = add i32 %indvars.iv292.i, 1
  %indvars.iv.next307.i = add nsw i32 %indvars.iv306.i, -1
  br i1 %i.qg, label %.preheader178.i, label %.preheader.i, !llvm.loop !79

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false), !alias.scope !62
  %i.qh = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %bb.cp unwind label %bb.bv     ; 3 uses

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.preheader, %.lr.ph249.i
  %indvars.iv314.i = phi i64 [ %indvars.iv.next315.i, %.lr.ph249.i ], [ %indvars.iv314.i.ph, %.lr.ph249.i.preheader ] ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %indvars.iv314.i ; 2 uses
  %i.qj = trunc nuw nsw i64 %indvars.iv314.i to i32
  store i32 %i.qj, ptr %i.qi, align 4, !tbaa !54, !noalias !62
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  store i32 -1, ptr %i.qk, align 4, !tbaa !49, !noalias !62
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %indvars.iv.next315.i, %wide.trip.count317.i
  br i1 %exitcond318.not.i, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !80

bb.cp:                                            ; preds = %._crit_edge250.i
  store ptr %i.qh, ptr %0, align 8, !tbaa !34, !alias.scope !62
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 4 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !56, !alias.scope !62
  store i32 0, ptr %i.qh, align 4, !tbaa !39
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ql, ptr %i.qn, align 8, !tbaa !33, !alias.scope !62
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, i8 0, i64 24, i1 false), !alias.scope !62
  %i.qp = icmp sgt i32 %.167.lcssa.i, 0
  br i1 %i.qp, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i, label %bb.dd

_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i:    ; preds = %bb.cp
  %wide.trip.count325.i = zext nneg i32 %.167.lcssa.i to i64
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

._crit_edge265.i:                                 ; preds = %bb.cz
  %.not.i.i.i91.i = icmp eq ptr %.sroa.0103.1.lcssa.i, null
  br i1 %.not.i.i.i91.i, label %bb.dd, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge265.i
  %i.qq = ptrtoint ptr %.sroa.16.1.lcssa.i to i64
  %i.qr = sub i64 %i.qq, %i.rw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.1.lcssa.i, i64 noundef %i.qr) #21
  br label %bb.dd

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.cz, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i
  %indvars.iv322.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %indvars.iv.next323.i, %bb.cz ] ; 3 uses
  %.sroa.16.0263.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.16.1.lcssa.i, %bb.cz ] ; 2 uses
  %.sroa.10.0262.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.10.1.lcssa.i, %bb.cz ] ; 2 uses
  %.sroa.0103.0261.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.0103.1.lcssa.i, %bb.cz ] ; 4 uses
  %.not.i.i93.i = icmp eq ptr %.sroa.10.0262.i, %.sroa.0103.0261.i
  %spec.select167.i = select i1 %.not.i.i93.i, ptr %.sroa.10.0262.i, ptr %.sroa.0103.0261.i ; 2 uses
  %i.qs = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv322.i ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !66 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 4 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !68
  %.not251.i = icmp sgt i32 %i.qt, %i.qv
  br i1 %.not251.i, label %._crit_edge257.i, label %.lr.ph256.preheader.i

.lr.ph256.preheader.i:                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.qw = sext i32 %i.qt to i64
  %i.qx = trunc nuw nsw i64 %indvars.iv322.i to i32
  br label %.lr.ph256.i

.lr.ph256.i:                                      ; preds = %bb.cx, %.lr.ph256.preheader.i
  %indvars.iv319.i = phi i64 [ %i.qw, %.lr.ph256.preheader.i ], [ %indvars.iv.next320.i, %bb.cx ] ; 5 uses
  %.sroa.16.1254.i = phi ptr [ %.sroa.16.0263.i, %.lr.ph256.preheader.i ], [ %.sroa.16.3.i, %bb.cx ] ; 5 uses
  %.sroa.10.1253.i = phi ptr [ %spec.select167.i, %.lr.ph256.preheader.i ], [ %.sroa.10.3.i, %bb.cx ] ; 3 uses
  %.sroa.0103.1252.i = phi ptr [ %.sroa.0103.0261.i, %.lr.ph256.preheader.i ], [ %.sroa.0103.3.i, %bb.cx ] ; 7 uses
  %.not.i.i55 = icmp eq ptr %.sroa.10.1253.i, %.sroa.16.1254.i
  br i1 %.not.i.i55, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph256.i
  %i.qy = trunc nsw i64 %indvars.iv319.i to i32
  store i32 %i.qy, ptr %.sroa.10.1253.i, align 4, !tbaa !39
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.cs:                                            ; preds = %.lr.ph256.i
  %i.qz = ptrtoint ptr %.sroa.16.1254.i to i64
  %i.ra = ptrtoint ptr %.sroa.0103.1252.i to i64
  %i.rb = sub i64 %i.qz, %i.ra                    ; 6 uses
  %i.rc = icmp eq i64 %i.rb, 9223372036854775804
  br i1 %i.rc, label %bb.ct, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc95.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc95.i:                                       ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cs
  %i.rd = ashr exact i64 %i.rb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i58 = call i64 @llvm.umax.i64(i64 %i.rd, i64 1)
  %i.re = add nsw i64 %.sroa.speculated.i.i.i.i58, %i.rd ; 2 uses
  %i.rf = icmp ult i64 %i.re, %i.rd
  %i.rg = call i64 @llvm.umin.i64(i64 %i.re, i64 2305843009213693951)
  %i.rh = select i1 %i.rf, i64 2305843009213693951, i64 %i.rg ; 3 uses
  %.not.i.i.i94.i = icmp ne i64 %i.rh, 0
  call void @llvm.assume(i1 %.not.i.i.i94.i)
  %i.ri = shl nuw nsw i64 %i.rh, 2
  %i.rj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ri) #20
          to label %.noexc96.i unwind label %.loopexit.i59 ; 4 uses

.noexc96.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.rk = getelementptr inbounds i8, ptr %i.rj, i64 %i.rb ; 2 uses
  %i.rl = trunc nsw i64 %indvars.iv319.i to i32
  store i32 %i.rl, ptr %i.rk, align 4, !tbaa !39
  %i.rm = icmp sgt i64 %i.rb, 0
  br i1 %i.rm, label %bb.cu, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cu:                                            ; preds = %.noexc96.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rj, ptr align 4 %.sroa.0103.1252.i, i64 %i.rb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cu, %.noexc96.i
  %.not.i17.i.i.i61 = icmp eq ptr %.sroa.0103.1252.i, null
  br i1 %.not.i17.i.i.i61, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0103.1252.i, i64 noundef %i.rb) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.cv, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.rh
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.cr
  %.sroa.0103.3.i = phi ptr [ %i.rj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0103.1252.i, %bb.cr ] ; 3 uses
  %.pn168.i = phi ptr [ %i.rk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.1253.i, %bb.cr ]
  %.sroa.16.3.i = phi ptr [ %i.rn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.16.1254.i, %bb.cr ] ; 3 uses
  %i.ro = getelementptr inbounds [8 x i8], ptr %.sroa.0100.0.lcssa, i64 %indvars.iv319.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 4 ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !49, !noalias !62
  %i.rr = icmp eq i32 %i.rq, -1
  br i1 %i.rr, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL9merge_sidiiiN3gmx8ArrayRefI5t_sidEEENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef 322) #19
          to label %.noexc97.i unwind label %bb.cy

.noexc97.i:                                       ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %.sroa.10.3.i = getelementptr inbounds nuw i8, ptr %.pn168.i, i64 4 ; 2 uses
  store i32 %i.qx, ptr %i.rp, align 4, !tbaa !49, !noalias !62
  %indvars.iv.next320.i = add nsw i64 %indvars.iv319.i, 1
  %i.rs = load i32, ptr %i.qu, align 4, !tbaa !68
  %i.rt = sext i32 %i.rs to i64
  %.not.not.i = icmp slt i64 %indvars.iv319.i, %i.rt
  br i1 %.not.not.i, label %.lr.ph256.i, label %._crit_edge257.i, !llvm.loop !81

.loopexit.i59:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i60 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i56

.loopexit.split-lp.loopexit.i:                    ; preds = %._crit_edge257.i
  %lpad.loopexit173.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i56

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.ct
  %lpad.loopexit.split-lp174.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i56

bb.cy:                                            ; preds = %bb.cw
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i56

._crit_edge257.i:                                 ; preds = %bb.cx, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %.sroa.0103.1.lcssa.i = phi ptr [ %.sroa.0103.0261.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.0103.3.i, %bb.cx ] ; 7 uses
  %.sroa.10.1.lcssa.i = phi ptr [ %spec.select167.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.10.3.i, %bb.cx ] ; 2 uses
  %.sroa.16.1.lcssa.i = phi ptr [ %.sroa.16.0263.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.16.3.i, %bb.cx ] ; 3 uses
  %i.rv = ptrtoint ptr %.sroa.10.1.lcssa.i to i64
  %i.rw = ptrtoint ptr %.sroa.0103.1.lcssa.i to i64 ; 2 uses
  %i.rx = sub i64 %i.rv, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0103.1.lcssa.i, i64 %i.rx
  invoke void @_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.sroa.0103.1.lcssa.i, ptr %i.ry)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.i

bb.cz:                                            ; preds = %._crit_edge257.i
  %indvars.iv.next323.i = add nuw nsw i64 %indvars.iv322.i, 1 ; 2 uses
  %exitcond326.not.i = icmp eq i64 %indvars.iv.next323.i, %wide.trip.count325.i
  br i1 %exitcond326.not.i, label %._crit_edge265.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, !llvm.loop !82

.loopexit.split-lp.i56:                           ; preds = %bb.cy, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i59
  %.sroa.0103.2.i = phi ptr [ %.sroa.0103.3.i, %bb.cy ], [ %.sroa.0103.1252.i, %.loopexit.i59 ], [ %.sroa.0103.1.lcssa.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.0103.1252.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 3 uses
  %.sroa.16.2.i = phi ptr [ %.sroa.16.3.i, %bb.cy ], [ %.sroa.16.1254.i, %.loopexit.i59 ], [ %.sroa.16.1.lcssa.i, %.loopexit.split-lp.loopexit.i ], [ %.sroa.16.1254.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.pn.i57 = phi { ptr, i32 } [ %i.ru, %bb.cy ], [ %lpad.loopexit.i60, %.loopexit.i59 ], [ %lpad.loopexit173.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp174.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.not.i.i.i98.i = icmp eq ptr %.sroa.0103.2.i, null
  br i1 %.not.i.i.i98.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit99.i, label %bb.da

bb.da:                                            ; preds = %.loopexit.split-lp.i56
  %i.rz = ptrtoint ptr %.sroa.16.2.i to i64
  %i.sa = ptrtoint ptr %.sroa.0103.2.i to i64
end_hunk_0
