Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/linear-assignment?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@compute_assignment:bb.a
  %indvars.iv487 = phi i64 [ %indvars.iv.next488, %bb.w ], [ 1, %.lr.ph419.us.us ] ; 4 uses
  %.0267417.us.us = phi i32 [ %.1268.us.us, %bb.w ], [ -1, %.lr.ph419.us.us ]
  %.0270416.us.us = phi i32 [ %.1271.us.us, %bb.w ], [ 0, %.lr.ph419.us.us ] ; 3 uses
  %.0273415.us.us = phi i32 [ %.1274.us.us, %bb.w ], [ 2147483647, %.lr.ph419.us.us ] ; 2 uses
  %.0276414.us.us = phi i32 [ %.1277.us.us, %bb.w ], [ %i.dd, %.lr.ph419.us.us ] ; 4 uses
  %gep558 = getelementptr [4 x i8], ptr %invariant.gep557, i64 %indvars.iv487
  %i.de = load i32, ptr %gep558, align 4, !tbaa !27
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv487
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !27
  %i.dh = sub nsw i32 %i.de, %i.dg                ; 4 uses
  %i.di = icmp sgt i32 %.0273415.us.us, %i.dh
  br i1 %i.di, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dj = icmp slt i32 %.0276414.us.us, %i.dh     ; 2 uses
  %.0276..us.us = tail call i32 @llvm.smin.i32(i32 %.0276414.us.us, i32 %i.dh)
  %..0276.us.us = tail call i32 @llvm.smax.i32(i32 %.0276414.us.us, i32 %i.dh)
  %i.dk = trunc nuw nsw i64 %indvars.iv487 to i32 ; 2 uses
  %.0270..2333.us.us = select i1 %i.dj, i32 %.0270416.us.us, i32 %i.dk
  %.2333..0270.us.us = select i1 %i.dj, i32 %i.dk, i32 %.0270416.us.us
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1277.us.us = phi i32 [ %.0276..us.us, %bb.v ], [ %.0276414.us.us, %bb.u ] ; 4 uses
  %.1274.us.us = phi i32 [ %..0276.us.us, %bb.v ], [ %.0273415.us.us, %bb.u ] ; 2 uses
  %.1271.us.us = phi i32 [ %.0270..2333.us.us, %bb.v ], [ %.0270416.us.us, %bb.u ] ; 6 uses
  %.1268.us.us = phi i32 [ %.2333..0270.us.us, %bb.v ], [ %.0267417.us.us, %bb.u ] ; 3 uses
  %indvars.iv.next488 = add nuw nsw i64 %indvars.iv487, 1 ; 2 uses
  %exitcond491.not = icmp eq i64 %indvars.iv.next488, %i.i
  br i1 %exitcond491.not, label %._crit_edge420.us.us, label %bb.u, !llvm.loop !16

._crit_edge420.us.us:                             ; preds = %bb.w
  %i.dl = add nsw i32 %.0278425.us.us, 1          ; 4 uses
  %i.dm = icmp slt i32 %.1268.us.us, 0            ; 2 uses
  %spec.select356.us.us = select i1 %i.dm, i32 %.1277.us.us, i32 %.1274.us.us ; 2 uses
  %spec.select357.us.us = select i1 %i.dm, i32 %.1271.us.us, i32 %.1268.us.us ; 3 uses
  %i.dn = sext i32 %.1271.us.us to i64            ; 5 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %3, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !27 ; 3 uses
  %i.dq = icmp slt i32 %.1277.us.us, %spec.select356.us.us
  br i1 %i.dq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge420.us.us
  %i.dr = icmp sgt i32 %i.dp, -1
  br i1 %i.dr, label %.thread365.us.us, label %.thread.us.us

.thread365.us.us:                                 ; preds = %bb.x
  %i.ds = sext i32 %spec.select357.us.us to i64   ; 3 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !27 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, -1
  br i1 %i.dv, label %.thread370.us.us, label %.thread.us.us

.thread370.us.us:                                 ; preds = %.thread365.us.us
  %i.dw = add nsw i32 %.3426.us.us, 1
  %i.dx = sext i32 %.3426.us.us to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.dx
  store i32 %i.du, ptr %i.dy, align 4, !tbaa !27
  br label %.thread.us.us

bb.y:                                             ; preds = %._crit_edge420.us.us
  %.neg352.us.us = sub i32 %.1277.us.us, %spec.select356.us.us
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.dn ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !27
  %i.eb = add i32 %.neg352.us.us, %i.ea
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !27
  %i.ec = icmp sgt i32 %i.dp, -1
  br i1 %i.ec, label %bb.z, label %.thread.us.us

bb.z:                                             ; preds = %bb.y
  store i32 %i.dp, ptr %i.cw, align 4, !tbaa !27
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.z, %bb.y, %.thread370.us.us, %.thread365.us.us, %bb.x
  %.pre-phi525 = phi i64 [ %i.dn, %bb.z ], [ %i.dn, %bb.y ], [ %i.ds, %.thread370.us.us ], [ %i.ds, %.thread365.us.us ], [ %i.dn, %bb.x ]
  %.2272364.us.us = phi i32 [ %.1271.us.us, %bb.z ], [ %.1271.us.us, %bb.y ], [ %spec.select357.us.us, %.thread370.us.us ], [ %spec.select357.us.us, %.thread365.us.us ], [ %.1271.us.us, %bb.x ]
  %.1279.us.us = phi i32 [ %.0278425.us.us, %bb.z ], [ %i.dl, %bb.y ], [ %i.dl, %.thread370.us.us ], [ %i.dl, %.thread365.us.us ], [ %i.dl, %bb.x ] ; 2 uses
  %.4.us.us = phi i32 [ %.3426.us.us, %bb.z ], [ %.3426.us.us, %bb.y ], [ %i.dw, %.thread370.us.us ], [ %.3426.us.us, %.thread365.us.us ], [ %.3426.us.us, %bb.x ] ; 3 uses
  %i.ed = sext i32 %i.cx to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ed
  store i32 %.2272364.us.us, ptr %i.ee, align 4, !tbaa !27
  %i.ef = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi525
  store i32 %i.cx, ptr %i.ef, align 4, !tbaa !27
  %i.eg = icmp slt i32 %.1279.us.us, %.1
  br i1 %i.eg, label %.lr.ph419.us.us, label %._crit_edge428.split.us.us, !llvm.loop !17

._crit_edge428.split.us.us:                       ; preds = %.thread.us.us
  %i.eh = icmp sgt i32 %.4.us.us, 0
  br i1 %i.eh, label %.lr.ph419.us.us.1, label %.split.us

.lr.ph419.us.us.1:                                ; preds = %._crit_edge428.split.us.us, %.thread.us.us.1
  %.3426.us.us.1 = phi i32 [ %.4.us.us.1, %.thread.us.us.1 ], [ 0, %._crit_edge428.split.us.us ] ; 6 uses
  %.0278425.us.us.1 = phi i32 [ %.1279.us.us.1, %.thread.us.us.1 ], [ 0, %._crit_edge428.split.us.us ] ; 3 uses
  %i.ei = sext i32 %.0278425.us.us.1 to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ei ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !27 ; 3 uses
  %i.el = mul nsw i32 %i.ek, %0
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %2, i64 %i.em
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !27
  %i.ep = load i32, ptr %i.m, align 4, !tbaa !27
  %i.eq = sub nsw i32 %i.eo, %i.ep
  %invariant.gep559 = getelementptr [4 x i8], ptr %2, i64 %i.em
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %.lr.ph419.us.us.1
  %indvars.iv487.1 = phi i64 [ %indvars.iv.next488.1, %bb.ac ], [ 1, %.lr.ph419.us.us.1 ] ; 4 uses
  %.0267417.us.us.1 = phi i32 [ %.1268.us.us.1, %bb.ac ], [ -1, %.lr.ph419.us.us.1 ]
  %.0270416.us.us.1 = phi i32 [ %.1271.us.us.1, %bb.ac ], [ 0, %.lr.ph419.us.us.1 ] ; 3 uses
  %.0273415.us.us.1 = phi i32 [ %.1274.us.us.1, %bb.ac ], [ 2147483647, %.lr.ph419.us.us.1 ] ; 2 uses
  %.0276414.us.us.1 = phi i32 [ %.1277.us.us.1, %bb.ac ], [ %i.eq, %.lr.ph419.us.us.1 ] ; 4 uses
  %gep560 = getelementptr [4 x i8], ptr %invariant.gep559, i64 %indvars.iv487.1
  %i.er = load i32, ptr %gep560, align 4, !tbaa !27
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv487.1
  %i.et = load i32, ptr %i.es, align 4, !tbaa !27
  %i.eu = sub nsw i32 %i.er, %i.et                ; 4 uses
  %i.ev = icmp sgt i32 %.0273415.us.us.1, %i.eu
  br i1 %i.ev, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ew = icmp slt i32 %.0276414.us.us.1, %i.eu   ; 2 uses
  %.0276..us.us.1 = tail call i32 @llvm.smin.i32(i32 %.0276414.us.us.1, i32 %i.eu)
  %..0276.us.us.1 = tail call i32 @llvm.smax.i32(i32 %.0276414.us.us.1, i32 %i.eu)
  %i.ex = trunc nuw nsw i64 %indvars.iv487.1 to i32 ; 2 uses
  %.0270..2333.us.us.1 = select i1 %i.ew, i32 %.0270416.us.us.1, i32 %i.ex
  %.2333..0270.us.us.1 = select i1 %i.ew, i32 %i.ex, i32 %.0270416.us.us.1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1277.us.us.1 = phi i32 [ %.0276..us.us.1, %bb.ab ], [ %.0276414.us.us.1, %bb.aa ] ; 4 uses
  %.1274.us.us.1 = phi i32 [ %..0276.us.us.1, %bb.ab ], [ %.0273415.us.us.1, %bb.aa ] ; 2 uses
  %.1271.us.us.1 = phi i32 [ %.0270..2333.us.us.1, %bb.ab ], [ %.0270416.us.us.1, %bb.aa ] ; 6 uses
  %.1268.us.us.1 = phi i32 [ %.2333..0270.us.us.1, %bb.ab ], [ %.0267417.us.us.1, %bb.aa ] ; 3 uses
  %indvars.iv.next488.1 = add nuw nsw i64 %indvars.iv487.1, 1 ; 2 uses
  %exitcond491.1.not = icmp eq i64 %indvars.iv.next488.1, %i.i
  br i1 %exitcond491.1.not, label %._crit_edge420.us.us.1, label %bb.aa, !llvm.loop !16

._crit_edge420.us.us.1:                           ; preds = %bb.ac
  %i.ey = add nsw i32 %.0278425.us.us.1, 1        ; 4 uses
  %i.ez = icmp slt i32 %.1268.us.us.1, 0          ; 2 uses
  %spec.select356.us.us.1 = select i1 %i.ez, i32 %.1277.us.us.1, i32 %.1274.us.us.1 ; 2 uses
  %spec.select357.us.us.1 = select i1 %i.ez, i32 %.1271.us.us.1, i32 %.1268.us.us.1 ; 3 uses
  %i.fa = sext i32 %.1271.us.us.1 to i64          ; 5 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !27 ; 3 uses
  %i.fd = icmp slt i32 %.1277.us.us.1, %spec.select356.us.us.1
  br i1 %i.fd, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge420.us.us.1
  %i.fe = icmp sgt i32 %i.fc, -1
  br i1 %i.fe, label %.thread365.us.us.1, label %.thread.us.us.1

.thread365.us.us.1:                               ; preds = %bb.ad
  %i.ff = sext i32 %spec.select357.us.us.1 to i64 ; 3 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !27 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, -1
  br i1 %i.fi, label %.thread370.us.us.1, label %.thread.us.us.1

.thread370.us.us.1:                               ; preds = %.thread365.us.us.1
  %i.fj = add nsw i32 %.3426.us.us.1, 1
  %i.fk = sext i32 %.3426.us.us.1 to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.fk
  store i32 %i.fh, ptr %i.fl, align 4, !tbaa !27
  br label %.thread.us.us.1

bb.ae:                                            ; preds = %._crit_edge420.us.us.1
  %.neg352.us.us.1 = sub i32 %.1277.us.us.1, %spec.select356.us.us.1
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.fa ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !27
  %i.fo = add i32 %.neg352.us.us.1, %i.fn
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !27
  %i.fp = icmp sgt i32 %i.fc, -1
  br i1 %i.fp, label %bb.af, label %.thread.us.us.1

bb.af:                                            ; preds = %bb.ae
  store i32 %i.fc, ptr %i.ej, align 4, !tbaa !27
  br label %.thread.us.us.1

.thread.us.us.1:                                  ; preds = %bb.af, %bb.ae, %.thread370.us.us.1, %.thread365.us.us.1, %bb.ad
  %.pre-phi526 = phi i64 [ %i.fa, %bb.af ], [ %i.fa, %bb.ae ], [ %i.ff, %.thread370.us.us.1 ], [ %i.ff, %.thread365.us.us.1 ], [ %i.fa, %bb.ad ]
  %.2272364.us.us.1 = phi i32 [ %.1271.us.us.1, %bb.af ], [ %.1271.us.us.1, %bb.ae ], [ %spec.select357.us.us.1, %.thread370.us.us.1 ], [ %spec.select357.us.us.1, %.thread365.us.us.1 ], [ %.1271.us.us.1, %bb.ad ]
  %.1279.us.us.1 = phi i32 [ %.0278425.us.us.1, %bb.af ], [ %i.ey, %bb.ae ], [ %i.ey, %.thread370.us.us.1 ], [ %i.ey, %.thread365.us.us.1 ], [ %i.ey, %bb.ad ] ; 2 uses
  %.4.us.us.1 = phi i32 [ %.3426.us.us.1, %bb.af ], [ %.3426.us.us.1, %bb.ae ], [ %i.fj, %.thread370.us.us.1 ], [ %.3426.us.us.1, %.thread365.us.us.1 ], [ %.3426.us.us.1, %bb.ad ] ; 2 uses
  %i.fq = sext i32 %i.ek to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fq
  store i32 %.2272364.us.us.1, ptr %i.fr, align 4, !tbaa !27
  %i.fs = getelementptr inbounds [4 x i8], ptr %3, i64 %.pre-phi526
  store i32 %i.ek, ptr %i.fs, align 4, !tbaa !27
  %i.ft = icmp slt i32 %.1279.us.us.1, %.4.us.us
  br i1 %i.ft, label %.lr.ph419.us.us.1, label %.split.us, !llvm.loop !17

bb.ag:                                            ; preds = %._crit_edge411.thread, %._crit_edge411
  tail call void @free(ptr noundef %i.m) #8
  tail call void @free(ptr noundef %i.bh) #8
  br label %bb.at

.split.us:                                        ; preds = %.thread.us.us.1, %._crit_edge411.thread, %.preheader385.us.preheader, %._crit_edge428.split.us.us
  %.3.lcssa.us.1 = phi i32 [ 0, %._crit_edge428.split.us.us ], [ 0, %._crit_edge411.thread ], [ 0, %.preheader385.us.preheader ], [ %.4.us.us.1, %.thread.us.us.1 ] ; 2 uses
  %i.fu = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 12 uses
  %i.fv = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 8 uses
  %i.fw = tail call ptr @xmalloc(i64 noundef %i.j) #8 ; 16 uses
  %i.fx = icmp sgt i32 %.3.lcssa.us.1, 0
  br i1 %i.fx, label %.lr.ph458, label %._crit_edge459

.lr.ph458:                                        ; preds = %.split.us
  %5 = ptrtoaddr ptr %i.fw to i64                 ; 4 uses
  %6 = ptrtoaddr ptr %i.fv to i64                 ; 4 uses
  %7 = ptrtoaddr ptr %i.fu to i64                 ; 4 uses
  %wide.trip.count522 = zext nneg i32 %.3.lcssa.us.1 to i64
  %min.iters.check = icmp ult i32 %0, 20
  %i.fy = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.fy, -32
  %i.fz = sub i64 %7, %5
  %diff.check590 = icmp ugt i64 %i.fz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check590
  %invariant.op = sub i64 %i.a, %7
  %i.ga = sub i64 %i.n, %7
  %diff.check593 = icmp ugt i64 %i.ga, -32
  %invariant.op640 = or i1 %conflict.rdx, %diff.check593
  %i.gb = sub i64 %6, %5
  %diff.check595 = icmp ugt i64 %i.gb, -32
  %invariant.op641 = or i1 %invariant.op640, %diff.check595
  %invariant.op642 = sub i64 %i.a, %6
  %i.gc = sub i64 %i.n, %6
  %diff.check599 = icmp ugt i64 %i.gc, -32
  %invariant.op644 = sub i64 %i.a, %5
  %i.gd = sub i64 %i.n, %5
  %diff.check603 = icmp ugt i64 %i.gd, -32
  %n.vec = and i64 %i.p, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.p
  %xtraiter625 = and i64 %i.p, 1
  %lcmp.mod626.not = icmp eq i64 %xtraiter625, 0
  %i.ge = add nsw i64 %i.p, -1
  br label %.lr.ph435

.lr.ph435:                                        ; preds = %bb.as, %.lr.ph458
  %indvars.iv519 = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next520, %bb.as ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv519
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !27 ; 6 uses
  %i.gh = mul nsw i32 %i.gg, %0
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %invariant.gep561 = getelementptr [4 x i8], ptr %2, i64 %i.gi ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph435
  %i.gj = shl nsw i64 %i.gi, 2                    ; 3 uses
  %.reass = add i64 %i.gj, %invariant.op
  %diff.check591 = icmp ugt i64 %.reass, -32
  %conflict.rdx596.reass = or i1 %diff.check591, %invariant.op641
  %.reass643 = add i64 %i.gj, %invariant.op642
  %diff.check597 = icmp ugt i64 %.reass643, -32
  %conflict.rdx598 = or i1 %conflict.rdx596.reass, %diff.check597
  %conflict.rdx600 = or i1 %conflict.rdx598, %diff.check599
  %.reass645 = add i64 %i.gj, %invariant.op644
  %diff.check601 = icmp ugt i64 %.reass645, -32
  %conflict.rdx602 = or i1 %conflict.rdx600, %diff.check601
  %conflict.rdx604 = or i1 %conflict.rdx602, %diff.check603
  br i1 %conflict.rdx604, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gk = getelementptr [4 x i8], ptr %invariant.gep561, i64 %index ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  %wide.load = load <4 x i32>, ptr %i.gk, align 4, !tbaa !27
  %wide.load605 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !27
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load606 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !27
  %wide.load607 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !27
  %i.go = sub nsw <4 x i32> %wide.load, %wide.load606
  %i.gp = sub nsw <4 x i32> %wide.load605, %wide.load607
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %i.go, ptr %i.gq, align 4, !tbaa !27
  store <4 x i32> %i.gp, ptr %i.gr, align 4, !tbaa !27
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %index ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gs, align 4, !tbaa !27
  store <4 x i32> %broadcast.splat, ptr %i.gt, align 4, !tbaa !27
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %index ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <4 x i32> %vec.ind, ptr %i.gu, align 4, !tbaa !27
  store <4 x i32> %step.add, ptr %i.gv, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader384.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph435, %middle.block
  %indvars.iv492.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph435 ], [ %n.vec, %middle.block ] ; 9 uses
  br i1 %lcmp.mod626.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep562.prol = getelementptr [4 x i8], ptr %invariant.gep561, i64 %indvars.iv492.ph
  %i.gx = load i32, ptr %gep562.prol, align 4, !tbaa !27
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv492.ph
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !27
  %i.ha = sub nsw i32 %i.gx, %i.gz
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv492.ph
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !27
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv492.ph
  store i32 %i.gg, ptr %i.hc, align 4, !tbaa !27
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv492.ph
  %i.he = trunc nuw nsw i64 %indvars.iv492.ph to i32
  store i32 %i.he, ptr %i.hd, align 4, !tbaa !27
  %indvars.iv.next493.prol = or disjoint i64 %indvars.iv492.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv492.unr = phi i64 [ %indvars.iv492.ph, %scalar.ph.preheader ], [ %indvars.iv.next493.prol, %scalar.ph.prol ]
  %i.hf = icmp eq i64 %indvars.iv492.ph, %i.ge
  br i1 %i.hf, label %.preheader384.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv492 = phi i64 [ %indvars.iv.next493.1, %scalar.ph ], [ %indvars.iv492.unr, %scalar.ph.prol.loopexit ] ; 8 uses
  %gep562 = getelementptr [4 x i8], ptr %invariant.gep561, i64 %indvars.iv492
  %i.hg = load i32, ptr %gep562, align 4, !tbaa !27
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv492
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !27
  %i.hj = sub nsw i32 %i.hg, %i.hi
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv492
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !27
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv492
  store i32 %i.gg, ptr %i.hl, align 4, !tbaa !27
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv492
  %i.hn = trunc nuw nsw i64 %indvars.iv492 to i32
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !27
  %indvars.iv.next493 = add nuw nsw i64 %indvars.iv492, 1 ; 6 uses
  %gep562.1 = getelementptr [4 x i8], ptr %invariant.gep561, i64 %indvars.iv.next493
  %i.ho = load i32, ptr %gep562.1, align 4, !tbaa !27
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next493
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !27
  %i.hr = sub nsw i32 %i.ho, %i.hq
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next493
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !27
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %indvars.iv.next493
  store i32 %i.gg, ptr %i.ht, align 4, !tbaa !27
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.next493
  %i.hv = trunc nuw nsw i64 %indvars.iv.next493 to i32
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !27
  %indvars.iv.next493.1 = add nuw nsw i64 %indvars.iv492, 2 ; 2 uses
  %exitcond496.not.1 = icmp eq i64 %indvars.iv.next493.1, %i.i
  br i1 %exitcond496.not.1, label %.preheader384.preheader, label %scalar.ph, !llvm.loop !19

.preheader384.preheader:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br label %.preheader384

.loopexit380:                                     ; preds = %._crit_edge450
  br label %.preheader384, !llvm.loop !20

.preheader384:                                    ; preds = %.preheader384.preheader, %.loopexit380
  %.4335 = phi i32 [ %.7.lcssa, %.loopexit380 ], [ -1, %.preheader384.preheader ]
  %.0264 = phi i32 [ %.5263.lcssa, %.loopexit380 ], [ 0, %.preheader384.preheader ] ; 8 uses
  %i.hw = add nsw i32 %.0264, 1                   ; 3 uses
  %i.hx = sext i32 %.0264 to i64                  ; 4 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !27
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !27 ; 2 uses
  %i.id = icmp slt i32 %i.hw, %0
  br i1 %i.id, label %.lr.ph440.preheader, label %.preheader381

.lr.ph440.preheader:                              ; preds = %.preheader384
  %i.ie = add nsw i64 %i.hx, 1
  br label %.lr.ph440

.preheader381:                                    ; preds = %bb.ai, %.preheader384
  %.5336.lcssa = phi i32 [ %.4335, %.preheader384 ], [ %i.ih, %bb.ai ] ; 2 uses
  %.1259.lcssa = phi i32 [ %i.hw, %.preheader384 ], [ %.3261, %bb.ai ] ; 3 uses
  %.0251.lcssa = phi i32 [ %i.ic, %.preheader384 ], [ %.2253, %bb.ai ] ; 5 uses
  %i.if = icmp slt i32 %.0264, %.1259.lcssa
  br i1 %i.if, label %.lr.ph445, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.aj, %.preheader381
  br label %.preheader

.lr.ph440:                                        ; preds = %.lr.ph440.preheader, %bb.ai
  %indvars.iv497 = phi i64 [ %i.ie, %.lr.ph440.preheader ], [ %indvars.iv.next498, %bb.ai ] ; 2 uses
  %.0251438 = phi i32 [ %i.ic, %.lr.ph440.preheader ], [ %.2253, %bb.ai ] ; 3 uses
  %.1259436 = phi i32 [ %i.hw, %.lr.ph440.preheader ], [ %.3261, %bb.ai ] ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv497 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !27 ; 3 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !27 ; 3 uses
  %.not351 = icmp sgt i32 %i.ik, %.0251438
  br i1 %.not351, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph440
  %i.il = icmp slt i32 %i.ik, %.0251438
  %spec.select358 = select i1 %i.il, i32 %.0264, i32 %.1259436 ; 2 uses
  %i.im = sext i32 %spec.select358 to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.im ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !27
  store i32 %i.io, ptr %i.ig, align 4, !tbaa !27
  %i.ip = add nsw i32 %spec.select358, 1
  store i32 %i.ih, ptr %i.in, align 4, !tbaa !27
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph440, %bb.ah
  %.3261 = phi i32 [ %i.ip, %bb.ah ], [ %.1259436, %.lr.ph440 ] ; 2 uses
  %.2253 = phi i32 [ %i.ik, %bb.ah ], [ %.0251438, %.lr.ph440 ] ; 2 uses
  %indvars.iv.next498 = add nsw i64 %indvars.iv497, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next498 to i32
  %exitcond500.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond500.not, label %.preheader381, label %.lr.ph440, !llvm.loop !21

bb.aj:                                            ; preds = %.lr.ph445
  %indvars.iv.next502 = add nsw i64 %indvars.iv501, 1 ; 2 uses
  %lftr.wideiv504 = trunc i64 %indvars.iv.next502 to i32
  %exitcond505.not = icmp eq i32 %.1259.lcssa, %lftr.wideiv504
  br i1 %exitcond505.not, label %.preheader.preheader, label %.lr.ph445, !llvm.loop !22

.lr.ph445:                                        ; preds = %.preheader381, %bb.aj
  %indvars.iv501 = phi i64 [ %indvars.iv.next502, %bb.aj ], [ %i.hx, %.preheader381 ] ; 2 uses
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %indvars.iv501
end_hunk_0
