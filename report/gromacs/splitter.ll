Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/splitter?download=true
inline.NumInlined: 650
inline.NumDeleted: 351
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z11gen_sblocksP8_IO_FILEiRK22InteractionDefinitionsb:bb.a
  %.not77.i = icmp sgt i32 %i.oc, %i.og
  %i.oh = trunc nsw i64 %indvars.iv285.i to i32
  br i1 %.not77.i, label %.lr.ph231.i.1, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph231.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !12
  %i.ok = call i32 @llvm.smax.i32(i32 %i.og, i32 %i.oj)
  store i32 %i.ok, ptr %i.of, align 4, !tbaa !35
  %i.ol = load i32, ptr %i.oe, align 4, !tbaa !12
  %i.om = call i32 @llvm.smin.i32(i32 %i.oc, i32 %i.ol)
  store i32 %i.om, ptr %i.oe, align 4, !tbaa !34
  %i.on = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  store i32 -1, ptr %i.on, align 4, !tbaa !83
  br label %.lr.ph231.i.1

.lr.ph231.i.1:                                    ; preds = %bb.cn, %.lr.ph231.i
  %.2.i69 = phi i32 [ %.1229.i, %bb.cn ], [ %i.oh, %.lr.ph231.i ] ; 2 uses
  %indvars.iv.next286.i = add nsw i64 %indvars.iv285.i, 1 ; 2 uses
  %i.oo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv.next286.i ; 3 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !34 ; 2 uses
  %i.oq = sext i32 %.2.i69 to i64
  %i.or = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %i.oq ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !35 ; 2 uses
  %.not77.i.1 = icmp sgt i32 %i.op, %i.ot
  %i.ou = trunc nsw i64 %indvars.iv.next286.i to i32
  br i1 %.not77.i.1, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %.lr.ph231.i.1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !12
  %i.ox = call i32 @llvm.smax.i32(i32 %i.ot, i32 %i.ow)
  store i32 %i.ox, ptr %i.os, align 4, !tbaa !35
  %i.oy = load i32, ptr %i.or, align 4, !tbaa !12
  %i.oz = call i32 @llvm.smin.i32(i32 %i.op, i32 %i.oy)
  store i32 %i.oz, ptr %i.or, align 4, !tbaa !34
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i32 -1, ptr %i.pa, align 4, !tbaa !83
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph231.i.1
  %.2.i69.1 = phi i32 [ %.2.i69, %bb.co ], [ %i.ou, %.lr.ph231.i.1 ] ; 2 uses
  %indvars.iv.next286.i.1 = add nsw i64 %indvars.iv285.i, 2 ; 2 uses
  %lftr.wideiv.i70.1 = trunc i64 %indvars.iv.next286.i.1 to i32
  %exitcond288.not.i.1 = icmp eq i32 %.046.lcssa.i, %lftr.wideiv.i70.1
  br i1 %exitcond288.not.i.1, label %._crit_edge232.i, label %.lr.ph231.i, !llvm.loop !50

._crit_edge232.i:                                 ; preds = %.lr.ph231.i.prol.loopexit, %bb.cp, %.preheader184.i
  %.1.lcssa.i = phi i32 [ %.058235.i, %.preheader184.i ], [ %.2.i69.lcssa.unr, %.lr.ph231.i.prol.loopexit ], [ %.2.i69.1, %bb.cp ]
  %storemerge79.lcssa.i = phi i32 [ %storemerge79228.i, %.preheader184.i ], [ %.046.lcssa.i, %bb.cp ], [ %.046.lcssa.i, %.lr.ph231.i.prol.loopexit ]
  %i.pb = icmp eq i32 %storemerge79.lcssa.i, %.046.lcssa.i
  %i.pc = zext i1 %i.pb to i32
  %spec.select.i58 = add nsw i32 %.1.lcssa.i, %i.pc ; 2 uses
  %i.pd = icmp slt i32 %spec.select.i58, %.046.lcssa.i
  br i1 %i.pd, label %.preheader184.i, label %.preheader182.i, !llvm.loop !51

.preheader182.i:                                  ; preds = %._crit_edge232.i, %.critedge.i
  %indvars.iv306.i = phi i32 [ %indvars.iv.next307.i, %.critedge.i ], [ -1, %._crit_edge232.i ] ; 2 uses
  %indvars.iv292.i = phi i32 [ %indvars.iv.next293.i, %.critedge.i ], [ 1, %._crit_edge232.i ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.pre-phi.i, %.critedge.i ], [ 0, %._crit_edge232.i ] ; 6 uses
  %.067245.i = phi i32 [ %.168.lcssa.i, %.critedge.i ], [ %.046.lcssa.i, %._crit_edge232.i ] ; 5 uses
  %i.pe = mul nuw nsw i64 %indvar.i, 12
  %scevgep.i = getelementptr i8, ptr %.sroa.0118.4.i, i64 %i.pe ; 2 uses
  %scevgep289.i = getelementptr i8, ptr %scevgep.i, i64 12
  %i.pf = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvar.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = add nsw i32 %.067245.i, -1
  %i.pi = sext i32 %i.ph to i64
  %i.pj = icmp slt i64 %indvar.i, %i.pi
  br i1 %i.pj, label %.lr.ph241.i, label %.preheader182..critedge_crit_edge.i

.preheader182..critedge_crit_edge.i:              ; preds = %.preheader182.i
  %.pre.i59 = add nuw nsw i64 %indvar.i, 1
  br label %.critedge.i

.lr.ph241.i:                                      ; preds = %.preheader182.i
  %i.pk = trunc i64 %indvar.i to i32
  %i.pl = add nuw nsw i64 %indvar.i, 1            ; 3 uses
  %i.pm = add i32 %.067245.i, %indvars.iv306.i
  %wide.trip.count308.i = zext i32 %i.pm to i64
  %.neg149 = add i32 %.067245.i, -2
  %i.pn = sext i32 %.067245.i to i64
  br label %bb.cq

.preheader.i:                                     ; preds = %.critedge.i
  br i1 %.not145, label %._crit_edge250.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count317.i = zext nneg i32 %2 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph249.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check676 = icmp ult i32 %2, 32
  br i1 %min.iters.check676, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.po = and i64 %wide.trip.count317.i, 28
  %n.vec = and i64 %wide.trip.count317.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 64
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 128
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 192
  %interleaved.vec = shufflevector <8 x i32> %vec.ind, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec, ptr %i.pp, align 4, !tbaa !12, !noalias !82
  %interleaved.vec677 = shufflevector <8 x i32> %step.add, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec677, ptr %i.pr, align 4, !tbaa !12, !noalias !82
  %interleaved.vec678 = shufflevector <8 x i32> %step.add.2, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec678, ptr %i.pt, align 4, !tbaa !12, !noalias !82
  %interleaved.vec679 = shufflevector <8 x i32> %step.add.3, <8 x i32> splat (i32 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i32> %interleaved.vec679, ptr %i.pv, align 4, !tbaa !12, !noalias !82
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.pw = icmp eq i64 %index.next, %n.vec
  br i1 %i.pw, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count317.i
  br i1 %cmp.n, label %._crit_edge250.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.po, 0
  br i1 %min.epilog.iters.check, label %.lr.ph249.i.preheader, label %vec.epilog.ph, !prof !84

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec680 = and i64 %wide.trip.count317.i, 2147483644 ; 3 uses
  %i.px = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.px, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index681 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next684, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind682 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next685, %vec.epilog.vector.body ] ; 2 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %index681
  %interleaved.vec683 = shufflevector <4 x i32> %vec.ind682, <4 x i32> splat (i32 -1), <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i32> %interleaved.vec683, ptr %i.py, align 4, !tbaa !12, !noalias !82
  %index.next684 = add nuw i64 %index681, 4       ; 2 uses
  %vec.ind.next685 = add <4 x i32> %vec.ind682, splat (i32 4)
  %i.pz = icmp eq i64 %index.next684, %n.vec680
  br i1 %i.pz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !53

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n686 = icmp eq i64 %n.vec680, %wide.trip.count317.i
  br i1 %cmp.n686, label %._crit_edge250.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv314.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec680, %vec.epilog.middle.block ]
  br label %.lr.ph249.i

.loopexit181.i:                                   ; preds = %.lr.ph239.preheader.i, %.preheader180.i
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond309.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count308.i
  %indvars.iv.next404 = add nsw i64 %indvars.iv403, -1
  br i1 %exitcond309.not.i, label %.critedge.i, label %bb.cq, !llvm.loop !54

bb.cq:                                            ; preds = %.loopexit181.i, %.lr.ph241.i
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %.loopexit181.i ], [ %i.pn, %.lr.ph241.i ] ; 3 uses
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i, %.loopexit181.i ], [ 0, %.lr.ph241.i ] ; 2 uses
  %i.qa = trunc i64 %indvars.iv301.i to i32
  %i.qb = add i32 %i.pk, %i.qa
  %i.qc = sub i32 %.neg149, %i.qb
  %i.qd = zext i32 %i.qc to i64
  %i.qe = mul nuw nsw i64 %i.qd, 12
  %i.qf = add nuw nsw i64 %i.qe, 12
  %i.qg = load i32, ptr %i.pg, align 4, !tbaa !83
  %i.qh = icmp eq i32 %i.qg, -1
  br i1 %i.qh, label %.preheader180.i, label %.critedge.i.loopexit.split.loop.exit570

.preheader180.i:                                  ; preds = %bb.cq
  %i.qi = icmp slt i64 %i.pl, %indvars.iv403
  br i1 %i.qi, label %.lr.ph239.preheader.i, label %.loopexit181.i

.lr.ph239.preheader.i:                            ; preds = %.preheader180.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep289.i, i64 %i.qf, i1 false)
  br label %.loopexit181.i

.critedge.i.loopexit.split.loop.exit570:          ; preds = %bb.cq
  %i.qj = trunc nsw i64 %indvars.iv403 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.loopexit181.i, %.critedge.i.loopexit.split.loop.exit570, %.preheader182..critedge_crit_edge.i
  %indvar.next.pre-phi.i = phi i64 [ %.pre.i59, %.preheader182..critedge_crit_edge.i ], [ %i.pl, %.critedge.i.loopexit.split.loop.exit570 ], [ %i.pl, %.loopexit181.i ] ; 2 uses
  %.168.lcssa.i = phi i32 [ %.067245.i, %.preheader182..critedge_crit_edge.i ], [ %i.qj, %.critedge.i.loopexit.split.loop.exit570 ], [ %indvars.iv292.i, %.loopexit181.i ] ; 4 uses
  %i.qk = sext i32 %.168.lcssa.i to i64
  %i.ql = icmp slt i64 %indvar.next.pre-phi.i, %i.qk
  %indvars.iv.next293.i = add i32 %indvars.iv292.i, 1
  %indvars.iv.next307.i = add nsw i32 %indvars.iv306.i, -1
  br i1 %i.ql, label %.preheader182.i, label %.preheader.i, !llvm.loop !55

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 24, i1 false), !alias.scope !82
  %i.qm = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #20
          to label %bb.ct unwind label %bb.cr     ; 3 uses

bb.cr:                                            ; preds = %._crit_edge250.i
  %i.qn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qo = load ptr, ptr %0, align 8, !tbaa !17, !alias.scope !82 ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.qo, null
  br i1 %.not.i.i4.i.i.i, label %.body.i55, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !31, !alias.scope !82
  %i.qr = ptrtoint ptr %i.qq to i64
  %i.qs = ptrtoint ptr %i.qo to i64
  %i.qt = sub i64 %i.qr, %i.qs
  call void @_ZdlPvm(ptr noundef nonnull %i.qo, i64 noundef %i.qt) #21
  br label %.body.i55

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.preheader, %.lr.ph249.i
  %indvars.iv314.i = phi i64 [ %indvars.iv.next315.i, %.lr.ph249.i ], [ %indvars.iv314.i.ph, %.lr.ph249.i.preheader ] ; 3 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %indvars.iv314.i ; 2 uses
  %i.qv = trunc nuw nsw i64 %indvars.iv314.i to i32
  store i32 %i.qv, ptr %i.qu, align 4, !tbaa !81, !noalias !82
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  store i32 -1, ptr %i.qw, align 4, !tbaa !27, !noalias !82
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %indvars.iv.next315.i, %wide.trip.count317.i
  br i1 %exitcond318.not.i, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !56

bb.ct:                                            ; preds = %._crit_edge250.i
  store ptr %i.qm, ptr %0, align 8, !tbaa !17, !alias.scope !82
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qm, i64 4 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !31, !alias.scope !82
  store i32 0, ptr %i.qm, align 4, !tbaa !12
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.qx, ptr %i.qz, align 8, !tbaa !16, !alias.scope !82
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ra, i8 0, i64 24, i1 false), !alias.scope !82
  %i.rb = icmp sgt i32 %.168.lcssa.i, 0
  br i1 %i.rb, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i, label %bb.dg

_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i:    ; preds = %bb.ct
  %wide.trip.count325.i = zext nneg i32 %.168.lcssa.i to i64
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

._crit_edge265.i:                                 ; preds = %bb.dd
  %.not.i.i.i90.i = icmp eq ptr %.sroa.0102.1.lcssa.i, null
  br i1 %.not.i.i.i90.i, label %bb.dg, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge265.i
  %i.rc = ptrtoint ptr %.sroa.16.1.lcssa.i to i64
  %i.rd = sub i64 %i.rc, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.1.lcssa.i, i64 noundef %i.rd) #21
  br label %bb.dg

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %bb.dd, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i
  %indvars.iv322.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %indvars.iv.next323.i, %bb.dd ] ; 3 uses
  %.sroa.16.0263.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.16.1.lcssa.i, %bb.dd ] ; 2 uses
  %.sroa.10.0262.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.10.1.lcssa.i, %bb.dd ] ; 2 uses
  %.sroa.0102.0261.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.0102.1.lcssa.i, %bb.dd ] ; 4 uses
  %.not.i.i92.i = icmp eq ptr %.sroa.10.0262.i, %.sroa.0102.0261.i
  %spec.select171.i = select i1 %.not.i.i92.i, ptr %.sroa.10.0262.i, ptr %.sroa.0102.0261.i ; 2 uses
  %i.re = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0118.4.i, i64 %indvars.iv322.i ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !34 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 4 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !35
  %.not251.i = icmp sgt i32 %i.rf, %i.rh
  br i1 %.not251.i, label %._crit_edge257.i, label %.lr.ph256.preheader.i

.lr.ph256.preheader.i:                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %i.ri = sext i32 %i.rf to i64
  %i.rj = trunc nuw nsw i64 %indvars.iv322.i to i32
  br label %.lr.ph256.i

.lr.ph256.i:                                      ; preds = %bb.db, %.lr.ph256.preheader.i
  %indvars.iv319.i = phi i64 [ %i.ri, %.lr.ph256.preheader.i ], [ %indvars.iv.next320.i, %bb.db ] ; 5 uses
  %.sroa.16.1254.i = phi ptr [ %.sroa.16.0263.i, %.lr.ph256.preheader.i ], [ %.sroa.16.3.i, %bb.db ] ; 5 uses
  %.sroa.10.1253.i = phi ptr [ %spec.select171.i, %.lr.ph256.preheader.i ], [ %.sroa.10.3.i, %bb.db ] ; 3 uses
  %.sroa.0102.1252.i = phi ptr [ %.sroa.0102.0261.i, %.lr.ph256.preheader.i ], [ %.sroa.0102.3.i, %bb.db ] ; 7 uses
  %.not.i.i60 = icmp eq ptr %.sroa.10.1253.i, %.sroa.16.1254.i
  br i1 %.not.i.i60, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph256.i
  %i.rk = trunc nsw i64 %indvars.iv319.i to i32
  store i32 %i.rk, ptr %.sroa.10.1253.i, align 4, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

bb.cw:                                            ; preds = %.lr.ph256.i
  %i.rl = ptrtoint ptr %.sroa.16.1254.i to i64
  %i.rm = ptrtoint ptr %.sroa.0102.1252.i to i64
  %i.rn = sub i64 %i.rl, %i.rm                    ; 6 uses
  %i.ro = icmp eq i64 %i.rn, 9223372036854775804
  br i1 %i.ro, label %bb.cx, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
          to label %.noexc94.i68 unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc94.i68:                                     ; preds = %bb.cx
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cw
  %i.rp = ashr exact i64 %i.rn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.rp, i64 1)
  %i.rq = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.rp ; 2 uses
  %i.rr = icmp ult i64 %i.rq, %i.rp
  %i.rs = call i64 @llvm.umin.i64(i64 %i.rq, i64 2305843009213693951)
  %i.rt = select i1 %i.rr, i64 2305843009213693951, i64 %i.rs ; 3 uses
  %.not.i.i.i93.i64 = icmp ne i64 %i.rt, 0
  call void @llvm.assume(i1 %.not.i.i.i93.i64)
  %i.ru = shl nuw nsw i64 %i.rt, 2
  %i.rv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ru) #20
          to label %.noexc95.i unwind label %.loopexit.i65 ; 4 uses

.noexc95.i:                                       ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.rw = getelementptr inbounds i8, ptr %i.rv, i64 %i.rn ; 2 uses
  %i.rx = trunc nsw i64 %indvars.iv319.i to i32
  store i32 %i.rx, ptr %i.rw, align 4, !tbaa !12
  %i.ry = icmp sgt i64 %i.rn, 0
  br i1 %i.ry, label %bb.cy, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.cy:                                            ; preds = %.noexc95.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rv, ptr align 4 %.sroa.0102.1252.i, i64 %i.rn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cy, %.noexc95.i
  %.not.i17.i.i.i67 = icmp eq ptr %.sroa.0102.1252.i, null
  br i1 %.not.i17.i.i.i67, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0102.1252.i, i64 noundef %i.rn) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.cz, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.rt
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.cv
  %.sroa.0102.3.i = phi ptr [ %i.rv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.0102.1252.i, %bb.cv ] ; 3 uses
  %.pn172.i = phi ptr [ %i.rw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.10.1253.i, %bb.cv ]
  %.sroa.16.3.i = phi ptr [ %i.rz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i ], [ %.sroa.16.1254.i, %bb.cv ] ; 3 uses
  %i.sa = getelementptr inbounds [8 x i8], ptr %.sroa.0107.0.lcssa, i64 %indvars.iv319.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 4 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !27, !noalias !82
  %i.sd = icmp eq i32 %i.sc, -1
  br i1 %i.sd, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL9merge_sidiiiN3gmx8ArrayRefI5t_sidEEENK3$_0clEv", ptr noundef nonnull @.str.7, i32 noundef 322) #19
          to label %.noexc96.i unwind label %bb.dc

.noexc96.i:                                       ; preds = %bb.da
  unreachable

bb.db:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %.sroa.10.3.i = getelementptr inbounds nuw i8, ptr %.pn172.i, i64 4 ; 2 uses
  store i32 %i.rj, ptr %i.sb, align 4, !tbaa !27, !noalias !82
  %indvars.iv.next320.i = add nsw i64 %indvars.iv319.i, 1
  %i.se = load i32, ptr %i.rg, align 4, !tbaa !35
  %i.sf = sext i32 %i.se to i64
  %.not.not.i = icmp slt i64 %indvars.iv319.i, %i.sf
  br i1 %.not.not.i, label %.lr.ph256.i, label %._crit_edge257.i, !llvm.loop !57

.loopexit.i65:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i66 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i61

.loopexit.split-lp.loopexit.i:                    ; preds = %._crit_edge257.i
  %lpad.loopexit177.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i61

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.cx
  %lpad.loopexit.split-lp178.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i61

bb.dc:                                            ; preds = %bb.da
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i61

._crit_edge257.i:                                 ; preds = %bb.db, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i
  %.sroa.0102.1.lcssa.i = phi ptr [ %.sroa.0102.0261.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.0102.3.i, %bb.db ] ; 7 uses
  %.sroa.10.1.lcssa.i = phi ptr [ %spec.select171.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.10.3.i, %bb.db ] ; 2 uses
  %.sroa.16.1.lcssa.i = phi ptr [ %.sroa.16.0263.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ], [ %.sroa.16.3.i, %bb.db ] ; 3 uses
  %i.sh = ptrtoint ptr %.sroa.10.1.lcssa.i to i64
  %i.si = ptrtoint ptr %.sroa.0102.1.lcssa.i to i64 ; 2 uses
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = getelementptr inbounds nuw i8, ptr %.sroa.0102.1.lcssa.i, i64 %i.sj
  invoke void @_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.sroa.0102.1.lcssa.i, ptr %i.sk)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.i
end_hunk_0
