Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stereosgbm?download=true
inline.NumInlined: 570
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNK2cv16SGBM3WayMainLoop18getRawMatchingCostERKNS_14BufferSGBM3WayEii:bb.a
iter.check576:                                    ; preds = %bb.h
  %wide.trip.count248 = zext nneg i32 %i.ny to i64 ; 9 uses
  %min.iters.check559 = icmp ult i32 %i.ny, 4
  br i1 %min.iters.check559, label %.lr.ph204.preheader, label %vector.memcheck547

vector.memcheck547:                               ; preds = %iter.check576
  %i.oa = shl nuw nsw i64 %wide.trip.count248, 1  ; 3 uses
  %scevgep548 = getelementptr i8, ptr %i.b, i64 %i.oa ; 2 uses
  %i.ob = shl i64 %i.ab, 1                        ; 2 uses
  %i.oc = mul i64 %i.ob, %i.nt
  %i.od = getelementptr i8, ptr %i.ad, i64 %i.oc
  %scevgep549 = getelementptr i8, ptr %i.od, i64 %i.oa
  %i.oe = mul i64 %i.ob, %i.ah
  %i.of = getelementptr i8, ptr %i.ad, i64 %i.oe
  %scevgep550 = getelementptr i8, ptr %i.of, i64 %i.oa
  %bound0551 = icmp ult ptr %i.b, %scevgep549
  %bound1552 = icmp ult ptr %i.nv, %scevgep548
  %found.conflict553 = and i1 %bound0551, %bound1552
  %bound0554 = icmp ult ptr %i.b, %scevgep550
  %bound1555 = icmp ult ptr %i.aj, %scevgep548
  %found.conflict556 = and i1 %bound0554, %bound1555
  %conflict.rdx557 = or i1 %found.conflict553, %found.conflict556
  br i1 %conflict.rdx557, label %.lr.ph204.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck547
  %min.iters.check561 = icmp ult i32 %i.ny, 16
  br i1 %min.iters.check561, label %vec.epilog.ph580, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %i.og = and i64 %wide.trip.count248, 12
  %n.vec563 = and i64 %wide.trip.count248, 2147483632 ; 4 uses
  br label %vector.body564

vector.body564:                                   ; preds = %vector.ph562, %vector.body564
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next572, %vector.body564 ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index565 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %wide.load566 = load <8 x i16>, ptr %i.oh, align 2, !tbaa !77, !alias.scope !258, !noalias !259
  %wide.load567 = load <8 x i16>, ptr %i.oi, align 2, !tbaa !77, !alias.scope !258, !noalias !259
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %index565 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %wide.load568 = load <8 x i16>, ptr %i.oj, align 2, !tbaa !77, !alias.scope !260
  %wide.load569 = load <8 x i16>, ptr %i.ok, align 2, !tbaa !77, !alias.scope !260
  %i.ol = add <8 x i16> %wide.load568, %wide.load566
  %i.om = add <8 x i16> %wide.load569, %wide.load567
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %index565 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %wide.load570 = load <8 x i16>, ptr %i.on, align 2, !tbaa !77, !alias.scope !261
  %wide.load571 = load <8 x i16>, ptr %i.oo, align 2, !tbaa !77, !alias.scope !261
  %i.op = sub <8 x i16> %i.ol, %wide.load570
  %i.oq = sub <8 x i16> %i.om, %wide.load571
  store <8 x i16> %i.op, ptr %i.oh, align 2, !tbaa !77, !alias.scope !258, !noalias !259
  store <8 x i16> %i.oq, ptr %i.oi, align 2, !tbaa !77, !alias.scope !258, !noalias !259
  %index.next572 = add nuw i64 %index565, 16      ; 2 uses
  %i.or = icmp eq i64 %index.next572, %n.vec563
  br i1 %i.or, label %middle.block573, label %vector.body564, !llvm.loop !227

middle.block573:                                  ; preds = %vector.body564
  %cmp.n574 = icmp eq i64 %n.vec563, %wide.trip.count248
  br i1 %cmp.n574, label %.loopexit, label %vec.epilog.iter.check578

vec.epilog.iter.check578:                         ; preds = %middle.block573
  %min.epilog.iters.check579 = icmp eq i64 %i.og, 0
  br i1 %min.epilog.iters.check579, label %.lr.ph204.preheader, label %vec.epilog.ph580, !prof !80

vec.epilog.ph580:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check578
  %vec.epilog.resume.val575 = phi i64 [ %n.vec563, %vec.epilog.iter.check578 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec581 = and i64 %wide.trip.count248, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body582

vec.epilog.vector.body582:                        ; preds = %vec.epilog.vector.body582, %vec.epilog.ph580
  %index583 = phi i64 [ %vec.epilog.resume.val575, %vec.epilog.ph580 ], [ %index.next587, %vec.epilog.vector.body582 ] ; 4 uses
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index583 ; 2 uses
  %wide.load584 = load <4 x i16>, ptr %i.os, align 2, !tbaa !77, !alias.scope !258, !noalias !259
  %i.ot = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %index583
  %wide.load585 = load <4 x i16>, ptr %i.ot, align 2, !tbaa !77, !alias.scope !260
  %i.ou = add <4 x i16> %wide.load585, %wide.load584
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %index583
  %wide.load586 = load <4 x i16>, ptr %i.ov, align 2, !tbaa !77, !alias.scope !261
  %i.ow = sub <4 x i16> %i.ou, %wide.load586
  store <4 x i16> %i.ow, ptr %i.os, align 2, !tbaa !77, !alias.scope !258, !noalias !259
  %index.next587 = add nuw i64 %index583, 4       ; 2 uses
  %i.ox = icmp eq i64 %index.next587, %n.vec581
  br i1 %i.ox, label %vec.epilog.middle.block588, label %vec.epilog.vector.body582, !llvm.loop !228

vec.epilog.middle.block588:                       ; preds = %vec.epilog.vector.body582
  %cmp.n589 = icmp eq i64 %n.vec581, %wide.trip.count248
  br i1 %cmp.n589, label %.loopexit, label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %iter.check576, %vector.memcheck547, %vec.epilog.iter.check578, %vec.epilog.middle.block588
  %indvars.iv245.ph = phi i64 [ 0, %iter.check576 ], [ 0, %vector.memcheck547 ], [ %n.vec563, %vec.epilog.iter.check578 ], [ %n.vec581, %vec.epilog.middle.block588 ] ; 6 uses
  %xtraiter638 = and i64 %wide.trip.count248, 1
  %lcmp.mod639.not = icmp eq i64 %xtraiter638, 0
  br i1 %lcmp.mod639.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol

.lr.ph204.prol:                                   ; preds = %.lr.ph204.preheader
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv245.ph ; 2 uses
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !77
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv245.ph
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !77
  %i.pc = add i16 %i.pb, %i.oz
  %i.pd = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %indvars.iv245.ph
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !77
  %i.pf = sub i16 %i.pc, %i.pe
  store i16 %i.pf, ptr %i.oy, align 2, !tbaa !77
  %indvars.iv.next246.prol = or disjoint i64 %indvars.iv245.ph, 1
  br label %.lr.ph204.prol.loopexit

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader
  %indvars.iv245.unr = phi i64 [ %indvars.iv245.ph, %.lr.ph204.preheader ], [ %indvars.iv.next246.prol, %.lr.ph204.prol ]
  %i.pg = add nsw i64 %wide.trip.count248, -1
  %i.ph = icmp eq i64 %indvars.iv245.ph, %i.pg
  br i1 %i.ph, label %.loopexit, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %indvars.iv245 = phi i64 [ %indvars.iv.next246.1, %.lr.ph204 ], [ %indvars.iv245.unr, %.lr.ph204.prol.loopexit ] ; 5 uses
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv245 ; 2 uses
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !77
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv245
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !77
  %i.pm = add i16 %i.pl, %i.pj
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %indvars.iv245
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !77
  %i.pp = sub i16 %i.pm, %i.po
  store i16 %i.pp, ptr %i.pi, align 2, !tbaa !77
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 3 uses
  %i.pq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next246 ; 2 uses
  %i.pr = load i16, ptr %i.pq, align 2, !tbaa !77
  %i.ps = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv.next246
  %i.pt = load i16, ptr %i.ps, align 2, !tbaa !77
  %i.pu = add i16 %i.pt, %i.pr
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %i.nv, i64 %indvars.iv.next246
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !77
  %i.px = sub i16 %i.pu, %i.pw
  store i16 %i.px, ptr %i.pq, align 2, !tbaa !77
  %indvars.iv.next246.1 = add nuw nsw i64 %indvars.iv245, 2 ; 2 uses
  %exitcond249.not.1 = icmp eq i64 %indvars.iv.next246.1, %wide.trip.count248
  br i1 %exitcond249.not.1, label %.loopexit, label %.lr.ph204, !llvm.loop !229

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.pz = load i16, ptr %i.py, align 2, !tbaa !77
  %i.qa = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !77
  %i.qc = add i16 %i.qb, %i.pz
  store i16 %i.qc, ptr %i.py, align 2, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next ; 2 uses
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !77
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv.next
  %i.qg = load i16, ptr %i.qf, align 2, !tbaa !77
  %i.qh = add i16 %i.qg, %i.qe
  store i16 %i.qh, ptr %i.qd, align 2, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.1 ; 2 uses
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !77
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv.next.1
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !77
  %i.qm = add i16 %i.ql, %i.qj
  store i16 %i.qm, ptr %i.qi, align 2, !tbaa !77
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.qn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.2 ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !tbaa !77
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv.next.2
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !77
  %i.qr = add i16 %i.qq, %i.qo
  store i16 %i.qr, ptr %i.qn, align 2, !tbaa !77
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !230

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph204.prol.loopexit, %.lr.ph204, %._crit_edge221, %._crit_edge232, %middle.block610, %vec.epilog.middle.block624, %middle.block573, %vec.epilog.middle.block588, %.preheader, %bb.h, %._crit_edge217, %.lr.ph224, %._crit_edge228, %.lr.ph235
  %i.qs = phi i64 [ %i.ab, %.lr.ph204.prol.loopexit ], [ %i.ab, %middle.block610 ], [ %i.ab, %middle.block573 ], [ %.pre289, %.lr.ph235 ], [ %i.ab, %.preheader ], [ %i.ab, %bb.h ], [ %.pre289, %._crit_edge217 ], [ %.pre289, %.lr.ph224 ], [ %.pre289, %._crit_edge228 ], [ %.pre289, %._crit_edge232 ], [ %i.ab, %vec.epilog.middle.block588 ], [ %.pre289, %._crit_edge221 ], [ %i.ab, %vec.epilog.middle.block624 ], [ %i.ab, %.lr.ph204 ], [ %i.ab, %.lr.ph ], [ %i.ab, %.lr.ph.prol.loopexit ]
  %i.qt = phi i64 [ %i.ac, %.lr.ph204.prol.loopexit ], [ %i.ac, %middle.block610 ], [ %i.ac, %middle.block573 ], [ %.pre287, %.lr.ph235 ], [ %i.ac, %.preheader ], [ %i.ac, %bb.h ], [ %.pre287, %._crit_edge217 ], [ %.pre287, %.lr.ph224 ], [ %.pre287, %._crit_edge228 ], [ %.pre287, %._crit_edge232 ], [ %i.ac, %vec.epilog.middle.block588 ], [ %.pre287, %._crit_edge221 ], [ %i.ac, %vec.epilog.middle.block624 ], [ %i.ac, %.lr.ph204 ], [ %i.ac, %.lr.ph ], [ %i.ac, %.lr.ph.prol.loopexit ]
  %i.qu = phi ptr [ %i.ad, %.lr.ph204.prol.loopexit ], [ %i.ad, %middle.block610 ], [ %i.ad, %middle.block573 ], [ %.pre285, %.lr.ph235 ], [ %i.ad, %.preheader ], [ %i.ad, %bb.h ], [ %.pre285, %._crit_edge217 ], [ %.pre285, %.lr.ph224 ], [ %.pre285, %._crit_edge228 ], [ %.pre285, %._crit_edge232 ], [ %i.ad, %vec.epilog.middle.block588 ], [ %.pre285, %._crit_edge221 ], [ %i.ad, %vec.epilog.middle.block624 ], [ %i.ad, %.lr.ph204 ], [ %i.ad, %.lr.ph ], [ %i.ad, %.lr.ph.prol.loopexit ]
  %i.qv = phi i32 [ %i.ae, %.lr.ph204.prol.loopexit ], [ %i.ae, %middle.block610 ], [ %i.ae, %middle.block573 ], [ %.pre, %.lr.ph235 ], [ %i.ae, %.preheader ], [ %i.ae, %bb.h ], [ %.pre, %._crit_edge217 ], [ %.pre, %.lr.ph224 ], [ %.pre, %._crit_edge228 ], [ %.pre, %._crit_edge232 ], [ %i.ae, %vec.epilog.middle.block588 ], [ %.pre, %._crit_edge221 ], [ %i.ae, %vec.epilog.middle.block624 ], [ %i.ae, %.lr.ph204 ], [ %i.ae, %.lr.ph ], [ %i.ae, %.lr.ph.prol.loopexit ]
  %i.qw = add i32 %storemerge237, 1
  %exitcond283.not = icmp eq i32 %storemerge237, %i.m
  br i1 %exitcond283.not, label %._crit_edge240, label %bb.b, !llvm.loop !231
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL15calcPixelCostBTERKNS_3MatES2_iiiPsPhPKhii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8, i32 noundef %9) unnamed_addr #5 {
iter.check:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 18 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !82
  %i.d = lshr i32 %i.c, 5                         ; 2 uses
  %i.e = and i32 %i.d, 127                        ; 5 uses
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %.sroa.speculated469 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) ; 6 uses
  %.sroa.speculated460 = tail call i32 @llvm.smin.i32(i32 %3, i32 0)
  %i.g = sub i32 %.sroa.speculated460, %.sroa.speculated469
  %i.h = add i32 %i.g, %i.b                       ; 2 uses
  %i.i = tail call i32 @llvm.smax.i32(i32 %8, i32 0) ; 6 uses
  %i.j = icmp eq i32 %9, -1
  %i.k = tail call i32 @llvm.smin.i32(i32 %9, i32 %i.h)
  %i.l = select i1 %i.j, i32 %i.h, i32 %i.k       ; 3 uses
  %i.m = add i32 %i.l, %.sroa.speculated469       ; 3 uses
  %i.n = add nuw i32 %i.i, %.sroa.speculated469   ; 4 uses
  %i.o = sub i32 %i.n, %4                         ; 5 uses
  %i.p = sub i32 %i.m, %3                         ; 3 uses
  %.sroa.speculated431 = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.p) ; 4 uses
  %i.q = sub i32 %.sroa.speculated431, %i.o       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !84
  %i.z = shl i32 %i.q, 1
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %6, i64 %i.aa ; 48 uses
  %i.ac = shl i32 %i.b, 1                         ; 5 uses
  %i.ad = mul i32 %i.ac, %i.f
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae ; 47 uses
  %i.ag = shl nuw nsw i32 %i.f, 1                 ; 2 uses
  %i.ah = sext i32 %i.b to i64                    ; 7 uses
  %wide.trip.count = zext nneg i32 %i.ag to i64   ; 6 uses
  %min.iters.check = icmp ne i32 %i.e, 0
  %ident.check.not = icmp eq i32 %i.b, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.p, i32 1)
  %i.aj = add i32 %4, %i.ai
  %i.ak = add nuw i32 %i.i, %.sroa.speculated469
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = shl i32 %i.al, 1
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = getelementptr i8, ptr %6, i64 %i.an
  %i.ap = and i32 %i.d, 127
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = getelementptr i8, ptr %6, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.an
  %i.au = getelementptr i8, ptr %i.at, i64 2      ; 2 uses
  %i.av = getelementptr i8, ptr %7, i64 1         ; 2 uses
  %i.aw = shl nuw nsw i64 %i.aq, 2
  %i.ax = getelementptr i8, ptr %6, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.an
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %bound0 = icmp ult ptr %i.ao, %i.av
  %bound1 = icmp ult ptr %7, %i.au
  %found.conflict = and i1 %bound0, %bound1
  %bound0638 = icmp ult ptr %i.au, %i.av
  %bound1639 = icmp ult ptr %7, %i.az
  %found.conflict640 = and i1 %bound0638, %bound1639
  %conflict.rdx = or i1 %found.conflict, %found.conflict640
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check641 = icmp samesign ult i32 %i.e, 15
  br i1 %min.iters.check641, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 480          ; 10 uses
  %i.bb = load i8, ptr %7, align 1, !tbaa !62, !alias.scope !280
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.bb, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 64 uses
  %i.bc = getelementptr i8, ptr %i.af, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.af, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bc, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.af, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bd, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.be = getelementptr i8, ptr %i.ab, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.ab, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.be, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.ab, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bf, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.bg = icmp eq i64 %n.vec, 32
  br i1 %i.bg, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bh = getelementptr i8, ptr %i.af, i64 32
  %i.bi = getelementptr i8, ptr %i.af, i64 48
  store <16 x i8> %broadcast.splat, ptr %i.bh, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bi, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store <16 x i8> %broadcast.splat, ptr %i.bj, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bk, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.bl = getelementptr i8, ptr %i.ab, i64 32
  %i.bm = getelementptr i8, ptr %i.ab, i64 48
  store <16 x i8> %broadcast.splat, ptr %i.bl, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bm, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store <16 x i8> %broadcast.splat, ptr %i.bn, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bo, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.bp = icmp eq i64 %n.vec, 64
  br i1 %i.bp, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bq = getelementptr i8, ptr %i.af, i64 64
  %i.br = getelementptr i8, ptr %i.af, i64 80
  store <16 x i8> %broadcast.splat, ptr %i.bq, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.br, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.bs = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store <16 x i8> %broadcast.splat, ptr %i.bs, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bt, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.bu = getelementptr i8, ptr %i.ab, i64 64
  %i.bv = getelementptr i8, ptr %i.ab, i64 80
  store <16 x i8> %broadcast.splat, ptr %i.bu, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bv, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store <16 x i8> %broadcast.splat, ptr %i.bw, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.bx, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.by = icmp eq i64 %n.vec, 96
  br i1 %i.by, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.bz = getelementptr i8, ptr %i.af, i64 96
  %i.ca = getelementptr i8, ptr %i.af, i64 112
  store <16 x i8> %broadcast.splat, ptr %i.bz, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.ca, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  %i.cc = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  store <16 x i8> %broadcast.splat, ptr %i.cb, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cc, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.cd = getelementptr i8, ptr %i.ab, i64 96
  %i.ce = getelementptr i8, ptr %i.ab, i64 112
  store <16 x i8> %broadcast.splat, ptr %i.cd, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.ce, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  store <16 x i8> %broadcast.splat, ptr %i.cf, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cg, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.ch = icmp eq i64 %n.vec, 128
  br i1 %i.ch, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.ci = getelementptr i8, ptr %i.af, i64 128
  %i.cj = getelementptr i8, ptr %i.af, i64 144
  store <16 x i8> %broadcast.splat, ptr %i.ci, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cj, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.ck = getelementptr inbounds nuw i8, ptr %i.af, i64 128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 144
  store <16 x i8> %broadcast.splat, ptr %i.ck, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cl, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.cm = getelementptr i8, ptr %i.ab, i64 128
  %i.cn = getelementptr i8, ptr %i.ab, i64 144
  store <16 x i8> %broadcast.splat, ptr %i.cm, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cn, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.co = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  store <16 x i8> %broadcast.splat, ptr %i.co, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cp, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.cq = icmp eq i64 %n.vec, 160
  br i1 %i.cq, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cr = getelementptr i8, ptr %i.af, i64 160
  %i.cs = getelementptr i8, ptr %i.af, i64 176
  store <16 x i8> %broadcast.splat, ptr %i.cr, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cs, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.ct = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 176
  store <16 x i8> %broadcast.splat, ptr %i.ct, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cu, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.cv = getelementptr i8, ptr %i.ab, i64 160
  %i.cw = getelementptr i8, ptr %i.ab, i64 176
  store <16 x i8> %broadcast.splat, ptr %i.cv, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cw, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  store <16 x i8> %broadcast.splat, ptr %i.cx, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.cy, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.cz = icmp eq i64 %n.vec, 192
  br i1 %i.cz, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.da = getelementptr i8, ptr %i.af, i64 192
  %i.db = getelementptr i8, ptr %i.af, i64 208
  store <16 x i8> %broadcast.splat, ptr %i.da, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.db, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.dc = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.dd = getelementptr inbounds nuw i8, ptr %i.af, i64 208
  store <16 x i8> %broadcast.splat, ptr %i.dc, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.dd, align 1, !tbaa !62, !alias.scope !281, !noalias !280
  %i.de = getelementptr i8, ptr %i.ab, i64 192
  %i.df = getelementptr i8, ptr %i.ab, i64 208
  store <16 x i8> %broadcast.splat, ptr %i.de, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.df, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  store <16 x i8> %broadcast.splat, ptr %i.dg, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  store <16 x i8> %broadcast.splat, ptr %i.dh, align 1, !tbaa !62, !alias.scope !282, !noalias !280
  %i.di = icmp eq i64 %n.vec, 224
  br i1 %i.di, label %middle.block, label %vector.body.7

end_hunk_0
begin_hunk_1_@_ZN2cvL15calcPixelCostBTERKNS_3MatES2_iiiPsPhPKhii:iter.check
  %i.lc = zext i8 %i.lb to i32
  %.neg531 = add nsw i32 %i.kq, %i.kt
  %i.ld = add nsw i32 %.neg531, %i.kz
  %i.le = add nuw nsw i32 %i.kw, %i.lc
  %i.lf = sub nsw i32 %i.ld, %i.le
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr inbounds i8, ptr %7, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !62
  %gep602 = getelementptr i8, ptr %invariant.gep601, i64 %indvars.iv571
  store i8 %i.li, ptr %gep602, align 1, !tbaa !62
  %i.lj = add nuw nsw i64 %i.jd, 5                ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.lj
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !62
  %i.lm = zext i8 %i.ll to i32
  %i.ln = add nsw i64 %i.jd, -1                   ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %i.fc, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !62
  %i.lq = zext i8 %i.lp to i32
  %i.lr = sub nsw i32 %i.lm, %i.lq
  %i.ls = shl nsw i32 %i.lr, 1
  %i.lt = getelementptr i8, ptr %gep, i64 5
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !62
  %i.lv = zext i8 %i.lu to i32
  %i.lw = getelementptr i8, ptr %gep, i64 -1
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !62
  %i.ly = zext i8 %i.lx to i32
  %i.lz = getelementptr i8, ptr %gep600, i64 5
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !62
  %i.mb = zext i8 %i.ma to i32
  %i.mc = getelementptr i8, ptr %gep600, i64 -1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !62
  %i.me = zext i8 %i.md to i32
  %.neg534 = add nsw i32 %i.ls, %i.lv
  %i.mf = add nsw i32 %.neg534, %i.mb
  %i.mg = add nuw nsw i32 %i.ly, %i.me
  %i.mh = sub nsw i32 %i.mf, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds i8, ptr %7, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !62
  %gep604 = getelementptr i8, ptr %invariant.gep603, i64 %indvars.iv571
  store i8 %i.mk, ptr %gep604, align 1, !tbaa !62
  %i.ml = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.je
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !62
  %i.mn = zext i8 %i.mm to i32
  %i.mo = getelementptr inbounds i8, ptr %i.fe, i64 %i.ji
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !62
  %i.mq = zext i8 %i.mp to i32
  %i.mr = sub nsw i32 %i.mn, %i.mq
  %i.ms = shl nsw i32 %i.mr, 1
  %gep606 = getelementptr i8, ptr %invariant.gep605, i64 %i.jd ; 6 uses
  %i.mt = getelementptr i8, ptr %gep606, i64 3
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !62
  %i.mv = zext i8 %i.mu to i32
  %i.mw = getelementptr i8, ptr %gep606, i64 -3
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !62
  %i.my = zext i8 %i.mx to i32
  %gep608 = getelementptr i8, ptr %invariant.gep607, i64 %i.jd ; 6 uses
  %i.mz = getelementptr i8, ptr %gep608, i64 3
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !62
  %i.nb = zext i8 %i.na to i32
  %i.nc = getelementptr i8, ptr %gep608, i64 -3
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !62
  %i.ne = zext i8 %i.nd to i32
  %.neg537 = add nsw i32 %i.ms, %i.mv
  %i.nf = add nsw i32 %.neg537, %i.nb
  %i.ng = add nuw nsw i32 %i.my, %i.ne
  %i.nh = sub nsw i32 %i.nf, %i.ng
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds i8, ptr %7, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !62
  %i.nl = trunc nuw nsw i64 %indvars.iv571 to i32
  %i.nm = xor i32 %i.nl, -1                       ; 2 uses
  %i.nn = add i32 %i.b, %i.nm                     ; 5 uses
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds i8, ptr %i.af, i64 %i.no
  store i8 %i.nk, ptr %i.np, align 1, !tbaa !62
  %i.nq = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.kh
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !62
  %i.ns = zext i8 %i.nr to i32
  %i.nt = getelementptr inbounds i8, ptr %i.fe, i64 %i.kl
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !62
  %i.nv = zext i8 %i.nu to i32
  %i.nw = sub nsw i32 %i.ns, %i.nv
  %i.nx = shl nsw i32 %i.nw, 1
  %i.ny = getelementptr i8, ptr %gep606, i64 4
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !62
  %i.oa = zext i8 %i.nz to i32
  %i.ob = getelementptr i8, ptr %gep606, i64 -2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !62
  %i.od = zext i8 %i.oc to i32
  %i.oe = getelementptr i8, ptr %gep608, i64 4
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !62
  %i.og = zext i8 %i.of to i32
  %i.oh = getelementptr i8, ptr %gep608, i64 -2
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !62
  %i.oj = zext i8 %i.oi to i32
  %.neg540 = add nsw i32 %i.nx, %i.oa
  %i.ok = add nsw i32 %.neg540, %i.og
  %i.ol = add nuw nsw i32 %i.od, %i.oj
  %i.om = sub nsw i32 %i.ok, %i.ol
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds i8, ptr %7, i64 %i.on
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !62
  %i.oq = add i32 %i.ac, %i.nm
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds i8, ptr %i.af, i64 %i.or
  store i8 %i.op, ptr %i.os, align 1, !tbaa !62
  %i.ot = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.lj
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !62
  %i.ov = zext i8 %i.ou to i32
  %i.ow = getelementptr inbounds i8, ptr %i.fe, i64 %i.ln
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !62
  %i.oy = zext i8 %i.ox to i32
  %i.oz = sub nsw i32 %i.ov, %i.oy
  %i.pa = shl nsw i32 %i.oz, 1
  %i.pb = getelementptr i8, ptr %gep606, i64 5
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !62
  %i.pd = zext i8 %i.pc to i32
  %i.pe = getelementptr i8, ptr %gep606, i64 -1
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !62
  %i.pg = zext i8 %i.pf to i32
  %i.ph = getelementptr i8, ptr %gep608, i64 5
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !62
  %i.pj = zext i8 %i.pi to i32
  %i.pk = getelementptr i8, ptr %gep608, i64 -1
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !62
  %i.pm = zext i8 %i.pl to i32
  %.neg543 = add nsw i32 %i.pa, %i.pd
  %i.pn = add nsw i32 %.neg543, %i.pj
  %i.po = add nuw nsw i32 %i.pg, %i.pm
  %i.pp = sub nsw i32 %i.pn, %i.po
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds i8, ptr %7, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !62
  %i.pt = add nsw i32 %i.nn, %i.ac
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds i8, ptr %i.af, i64 %i.pu
  store i8 %i.ps, ptr %i.pv, align 1, !tbaa !62
  %i.pw = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.jd
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !62
  %gep610 = getelementptr i8, ptr %invariant.gep609, i64 %indvars.iv571
  store i8 %i.px, ptr %gep610, align 1, !tbaa !62
  %i.py = add nuw nsw i64 %i.jd, 1                ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.py
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !62
  %gep612 = getelementptr i8, ptr %invariant.gep611, i64 %indvars.iv571
  store i8 %i.qa, ptr %gep612, align 1, !tbaa !62
  %i.qb = add nuw nsw i64 %i.jd, 2                ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.qb
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !62
  %gep614 = getelementptr i8, ptr %invariant.gep613, i64 %indvars.iv571
  store i8 %i.qd, ptr %gep614, align 1, !tbaa !62
  %i.qe = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.jd
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !62
  %i.qg = add nsw i32 %i.nn, %i.ge
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds i8, ptr %i.af, i64 %i.qh
  store i8 %i.qf, ptr %i.qi, align 1, !tbaa !62
  %i.qj = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.py
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !62
  %i.ql = add nsw i32 %i.nn, %i.gf
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.af, i64 %i.qm
  store i8 %i.qk, ptr %i.qn, align 1, !tbaa !62
  %i.qo = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.qb
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !62
  %i.qq = add nsw i32 %i.nn, %i.gg
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.af, i64 %i.qr
  store i8 %i.qp, ptr %i.qs, align 1, !tbaa !62
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %exitcond575.not = icmp eq i64 %indvars.iv.next572, %wide.trip.count574
  br i1 %exitcond575.not, label %.loopexit, label %bb.b, !llvm.loop !269

.loopexit:                                        ; preds = %bb.b, %bb.a, %.preheader551, %.preheader550
  %i.qt = mul nsw i32 %i.i, %i.ey
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds [2 x i8], ptr %5, i64 %i.qu
  %i.qw = mul nsw i32 %i.ez, %i.ey
  %i.qx = sext i32 %i.qw to i64
  %i.qy = shl nsw i64 %i.qx, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.qv, i8 0, i64 %i.qy, i1 false)
  %i.qz = sub i32 %i.b, %.sroa.speculated431      ; 2 uses
  %i.ra = zext i32 %i.qz to i64                   ; 5 uses
  %i.rb = sub nsw i64 0, %i.ra
  %i.rc = getelementptr inbounds i8, ptr %6, i64 %i.rb ; 5 uses
  %i.rd = mul i32 %i.ey, %.sroa.speculated469
  %i.re = add i32 %i.rd, %3
  %i.rf = sext i32 %i.re to i64                   ; 3 uses
  %i.rg = sub nsw i64 0, %i.rf
  %i.rh = getelementptr inbounds [2 x i8], ptr %5, i64 %i.rg
  %i.ri = sub nsw i32 %i.b, %i.o
  %i.rj = icmp slt i32 %i.o, %.sroa.speculated431
  %i.rk = icmp slt i32 %i.i, %i.l
  %i.rl = icmp slt i32 %3, %4
  %i.rm = sext i32 %i.qz to i64
  %i.rn = sext i32 %i.gc to i64                   ; 2 uses
  %i.ro = sext i32 %i.q to i64                    ; 2 uses
  %i.rp = sext i32 %i.ri to i64
  %i.rq = sext i32 %3 to i64                      ; 9 uses
  %i.rr = zext i32 %i.n to i64                    ; 3 uses
  %i.rs = sext i32 %i.ey to i64                   ; 4 uses
  %i.rt = sext i32 %i.m to i64                    ; 2 uses
  %invariant.gep625 = getelementptr i8, ptr %i.rc, i64 %i.ro
  %wide.trip.count587 = sext i32 %4 to i64        ; 6 uses
  %invariant.gep627 = getelementptr i8, ptr %i.rc, i64 %i.ro ; 2 uses
  %i.ru = mul nsw i64 %i.rr, %i.rs
  %i.rv = add i64 %i.ru, %i.rq
  %i.rw = sub i64 %i.rv, %i.rf
  %i.rx = shl i64 %i.rw, 1
  %scevgep = getelementptr i8, ptr %5, i64 %i.rx  ; 3 uses
  %i.ry = zext nneg i32 %i.i to i64               ; 2 uses
  %i.rz = zext nneg i32 %.sroa.speculated469 to i64 ; 2 uses
  %i.sa = add nuw nsw i64 %i.ry, %i.rz
  %i.sb = add nuw nsw i64 %i.sa, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.sb, i64 %i.rt)
  %i.sc = xor i64 %i.ry, -1
  %i.sd = add nsw i64 %smax, %i.sc
  %i.se = sub i64 %i.sd, %i.rz
  %i.sf = mul i64 %i.se, %i.rs
  %i.sg = mul nsw i64 %i.rr, %i.rs
  %i.sh = add i64 %i.sg, %wide.trip.count587
  %i.si = add i64 %i.sf, %i.sh
  %i.sj = sub i64 %i.si, %i.rf
  %i.sk = shl i64 %i.sj, 1
  %scevgep649 = getelementptr i8, ptr %5, i64 %i.sk ; 3 uses
  %i.sl = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.p)
  %smin = sext i32 %i.sl to i64                   ; 2 uses
  %i.sm = add nsw i64 %smin, %i.rq
  %i.sn = sext i32 %i.o to i64                    ; 2 uses
  %i.so = add nsw i64 %i.sn, %i.ra
  %i.sp = sub nsw i64 %i.sm, %i.so
  %scevgep650 = getelementptr i8, ptr %6, i64 %i.sp
  %i.sq = xor i32 %i.n, -1
  %i.sr = add i32 %i.b, %i.sq
  %i.ss = add nsw i64 %smin, %wide.trip.count587
  %i.st = add nsw i64 %i.sn, %i.ra
  %i.su = sub nsw i64 %i.ss, %i.st
  %scevgep652 = getelementptr i8, ptr %6, i64 %i.su
  %i.sv = sub nsw i64 %i.rq, %i.ra
  %scevgep654 = getelementptr i8, ptr %6, i64 %i.sv
  %i.sw = sub nsw i64 %wide.trip.count587, %i.ra
  %scevgep656 = getelementptr i8, ptr %6, i64 %i.sw
  %i.sx = getelementptr i8, ptr %6, i64 %i.rq
  %i.sy = getelementptr i8, ptr %i.sx, i64 %i.ae
  %i.sz = getelementptr i8, ptr %i.sy, i64 %i.aa
  %i.ta = getelementptr i8, ptr %6, i64 %wide.trip.count587
  %i.tb = getelementptr i8, ptr %i.ta, i64 %i.ae
  %i.tc = getelementptr i8, ptr %i.tb, i64 %i.aa
  %i.td = sub nsw i64 %wide.trip.count587, %i.rq  ; 3 uses
  %min.iters.check677 = icmp ult i64 %i.td, 8
  %stride.check670 = icmp slt i32 %i.ex, 0
  %n.vec679 = and i64 %i.td, -8                   ; 3 uses
  %i.te = add nsw i64 %n.vec679, %i.rq
  %cmp.n695 = icmp eq i64 %i.td, %n.vec679
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %._crit_edge563
  %indvar658 = phi i64 [ 0, %.loopexit ], [ %indvar.next659, %._crit_edge563 ] ; 2 uses
  %.0295566 = phi ptr [ %i.af, %.loopexit ], [ %i.wn, %._crit_edge563 ] ; 4 uses
  %.0296565 = phi ptr [ %i.ab, %.loopexit ], [ %i.wm, %._crit_edge563 ] ; 2 uses
  %.1564 = phi i32 [ 0, %.loopexit ], [ %i.wl, %._crit_edge563 ] ; 2 uses
  %i.tf = mul i64 %indvar658, %i.ah               ; 2 uses
  %scevgep660 = getelementptr i8, ptr %i.sz, i64 %i.tf
  %scevgep662 = getelementptr i8, ptr %i.tc, i64 %i.tf
  %.not = icmp samesign ugt i32 %.1564, %i.e
  %i.tg = select i1 %.not, i32 2, i32 0           ; 2 uses
  br i1 %i.rj, label %.lr.ph558, label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.c
  br i1 %i.rk, label %.lr.ph562.preheader, label %._crit_edge563

.lr.ph562.preheader:                              ; preds = %.preheader
  %broadcast.splatinsert686 = insertelement <8 x i32> poison, i32 %i.tg, i64 0
  %broadcast.splat687 = shufflevector <8 x i32> %broadcast.splatinsert686, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.lr.ph562

.lr.ph558:                                        ; preds = %bb.c, %bb.g
  %indvars.iv581 = phi i64 [ %indvars.iv.next582, %bb.g ], [ %i.rm, %bb.c ] ; 6 uses
  %i.th = getelementptr i8, ptr %.0295566, i64 %indvars.iv581 ; 3 uses
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !62
  %i.tj = zext i8 %i.ti to i32                    ; 6 uses
  %i.tk = icmp eq i64 %indvars.iv581, 0
  br i1 %i.tk, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph558
  %i.tl = getelementptr i8, ptr %i.th, i64 -1
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !62
  %i.tn = zext i8 %i.tm to i32
  %i.to = add nuw nsw i32 %i.tn, %i.tj
  %.zext = lshr i32 %i.to, 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph558, %bb.d
  %i.tp = phi i32 [ %.zext, %bb.d ], [ %i.tj, %.lr.ph558 ] ; 2 uses
  %i.tq = icmp slt i64 %indvars.iv581, %i.rn
  br i1 %i.tq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.tr = getelementptr i8, ptr %i.th, i64 1
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !62
  %i.tt = zext i8 %i.ts to i32
  %i.tu = add nuw nsw i32 %i.tt, %i.tj
  %.zext519 = lshr i32 %i.tu, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.tv = phi i32 [ %.zext519, %bb.f ], [ %i.tj, %bb.e ] ; 2 uses
  %.sroa.speculated399 = tail call i32 @llvm.umin.i32(i32 %i.tv, i32 %i.tp)
  %.sroa.speculated390 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated399, i32 %i.tj)
  %.sroa.speculated396 = tail call i32 @llvm.umax.i32(i32 %i.tp, i32 %i.tv)
  %.sroa.speculated385 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated396, i32 %i.tj)
  %i.tw = trunc nuw i32 %.sroa.speculated390 to i8
  %i.tx = getelementptr inbounds nuw i8, ptr %i.rc, i64 %indvars.iv581
  store i8 %i.tw, ptr %i.tx, align 1, !tbaa !62
  %i.ty = trunc nuw i32 %.sroa.speculated385 to i8
  %gep626 = getelementptr i8, ptr %invariant.gep625, i64 %indvars.iv581
  store i8 %i.ty, ptr %gep626, align 1, !tbaa !62
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %i.tz = icmp slt i64 %indvars.iv.next582, %i.rp
  br i1 %i.tz, label %.lr.ph558, label %.preheader, !llvm.loop !270

.lr.ph562:                                        ; preds = %.lr.ph562.preheader, %._crit_edge
  %indvar = phi i32 [ %indvar.next, %._crit_edge ], [ 0, %.lr.ph562.preheader ] ; 2 uses
  %indvars.iv589 = phi i64 [ %indvars.iv.next590, %._crit_edge ], [ %i.rr, %.lr.ph562.preheader ] ; 6 uses
  %i.ua = sub i32 %i.sr, %indvar
  %i.ub = sext i32 %i.ua to i64                   ; 6 uses
  %scevgep651 = getelementptr i8, ptr %scevgep650, i64 %i.ub
  %scevgep653 = getelementptr i8, ptr %scevgep652, i64 %i.ub
  %scevgep655 = getelementptr i8, ptr %scevgep654, i64 %i.ub
  %scevgep657 = getelementptr i8, ptr %scevgep656, i64 %i.ub
  %scevgep661 = getelementptr i8, ptr %scevgep660, i64 %i.ub
  %scevgep663 = getelementptr i8, ptr %scevgep662, i64 %i.ub
  %i.uc = getelementptr i8, ptr %.0296565, i64 %indvars.iv589 ; 3 uses
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !62
  %i.ue = zext i8 %i.ud to i32                    ; 9 uses
  %i.uf = icmp eq i64 %indvars.iv589, 0
  br i1 %i.uf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph562
  %i.ug = getelementptr i8, ptr %i.uc, i64 -1
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !62
  %i.ui = zext i8 %i.uh to i32
  %i.uj = add nuw nsw i32 %i.ui, %i.ue
  %.zext521 = lshr i32 %i.uj, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph562, %bb.h
  %i.uk = phi i32 [ %.zext521, %bb.h ], [ %i.ue, %.lr.ph562 ] ; 2 uses
  %i.ul = icmp slt i64 %indvars.iv589, %i.rn
  br i1 %i.ul, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.um = getelementptr i8, ptr %i.uc, i64 1
  %i.un = load i8, ptr %i.um, align 1, !tbaa !62
  %i.uo = zext i8 %i.un to i32
  %i.up = add nuw nsw i32 %i.uo, %i.ue
  %.zext523 = lshr i32 %i.up, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.uq = phi i32 [ %.zext523, %bb.j ], [ %i.ue, %bb.i ] ; 2 uses
  %.sroa.speculated366 = tail call i32 @llvm.umin.i32(i32 %i.uq, i32 %i.uk)
  %.sroa.speculated357 = tail call i32 @llvm.umin.i32(i32 %.sroa.speculated366, i32 %i.ue) ; 2 uses
  %.sroa.speculated363 = tail call i32 @llvm.umax.i32(i32 %i.uk, i32 %i.uq)
  %.sroa.speculated351 = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated363, i32 %i.ue) ; 2 uses
  br i1 %i.rl, label %.lr.ph560, label %._crit_edge

.lr.ph560:                                        ; preds = %bb.k
  %i.ur = trunc nuw nsw i64 %indvars.iv589 to i32
  %i.us = xor i32 %i.ur, -1
  %i.ut = add i32 %i.b, %i.us
  %i.uu = mul nsw i64 %indvars.iv589, %i.rs
  %i.uv = sext i32 %i.ut to i64                   ; 2 uses
  %invariant.gep629 = getelementptr [2 x i8], ptr %i.rh, i64 %i.uu ; 2 uses
  br i1 %min.iters.check677, label %scalar.ph.preheader, label %vector.memcheck648

vector.memcheck648:                               ; preds = %.lr.ph560
  %bound0664 = icmp ult ptr %scevgep, %scevgep653
  %bound1665 = icmp ult ptr %scevgep651, %scevgep649
  %found.conflict666 = and i1 %bound0664, %bound1665
  %bound0667 = icmp ult ptr %scevgep, %scevgep657
  %bound1668 = icmp ult ptr %scevgep655, %scevgep649
  %found.conflict669 = and i1 %bound0667, %bound1668
  %i.uw = or i1 %found.conflict669, %stride.check670
  %conflict.rdx671 = or i1 %found.conflict666, %i.uw
  %bound0672 = icmp ult ptr %scevgep, %scevgep663
  %bound1673 = icmp ult ptr %scevgep661, %scevgep649
  %found.conflict674 = and i1 %bound0672, %bound1673
  %conflict.rdx676 = or i1 %found.conflict674, %conflict.rdx671
  br i1 %conflict.rdx676, label %scalar.ph.preheader, label %vector.ph678

vector.ph678:                                     ; preds = %vector.memcheck648
  %broadcast.splatinsert680 = insertelement <8 x i32> poison, i32 %i.ue, i64 0
  %broadcast.splat681 = shufflevector <8 x i32> %broadcast.splatinsert680, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert682 = insertelement <8 x i32> poison, i32 %.sroa.speculated351, i64 0
  %broadcast.splat683 = shufflevector <8 x i32> %broadcast.splatinsert682, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert684 = insertelement <8 x i32> poison, i32 %.sroa.speculated357, i64 0
  %broadcast.splat685 = shufflevector <8 x i32> %broadcast.splatinsert684, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body688

end_hunk_1
