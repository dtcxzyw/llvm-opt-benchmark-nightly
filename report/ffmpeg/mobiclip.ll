Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mobiclip?download=true
inline.NumInlined: 100
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 24
begin_hunk_0_@predict_intra:bb.a
  %i.qr = add nuw nsw i32 %i.qn, %i.qq
  %i.qs = getelementptr inbounds i8, ptr %i.qo, i64 %i.qb ; 2 uses
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !46
  %i.qu = zext i8 %i.qt to i32
  %i.qv = add nuw nsw i32 %i.qr, %i.qu
  %i.qw = getelementptr inbounds i8, ptr %i.qs, i64 %i.qb ; 2 uses
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !46
  %i.qy = zext i8 %i.qx to i32
  %i.qz = add nuw nsw i32 %i.qv, %i.qy
  %i.ra = getelementptr inbounds i8, ptr %i.qw, i64 %i.qb ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !46
  %i.rc = zext i8 %i.rb to i32
  %i.rd = add nuw nsw i32 %i.qz, %i.rc
  %i.re = getelementptr inbounds i8, ptr %i.ra, i64 %i.qb ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !46
  %i.rg = zext i8 %i.rf to i32
  %i.rh = add nuw nsw i32 %i.rd, %i.rg            ; 3 uses
  %i.ri = getelementptr inbounds i8, ptr %i.re, i64 %i.qb ; 2 uses
  %niter911.next.7 = add nuw nsw i32 %niter911, 8 ; 2 uses
  %niter911.ncmp.7 = icmp eq i32 %niter911.next.7, %unroll_iter910
  br i1 %niter911.ncmp.7, label %block_sum.exit.unr-lcssa, label %.preheader.i, !llvm.loop !144

block_sum.exit.unr-lcssa:                         ; preds = %.preheader.i
  %lcmp.mod907.not = icmp eq i32 %xtraiter905, 0
  br i1 %lcmp.mod907.not, label %block_sum.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %block_sum.exit.unr-lcssa, %bb.k
  %.01217.i.epil.init = phi i32 [ 0, %bb.k ], [ %i.rh, %block_sum.exit.unr-lcssa ]
  %.01316.i.epil.init = phi ptr [ %i.qa, %bb.k ], [ %i.ri, %block_sum.exit.unr-lcssa ]
  %lcmp.mod909 = icmp ne i32 %xtraiter905, 0
  tail call void @llvm.assume(i1 %lcmp.mod909)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.01217.i.epil = phi i32 [ %.01217.i.epil.init, %.preheader.i.epil.preheader ], [ %i.rl, %.preheader.i.epil ]
  %.01316.i.epil = phi ptr [ %.01316.i.epil.init, %.preheader.i.epil.preheader ], [ %i.rm, %.preheader.i.epil ] ; 2 uses
  %epil.iter906 = phi i32 [ 0, %.preheader.i.epil.preheader ], [ %epil.iter906.next, %.preheader.i.epil ]
  %i.rj = load i8, ptr %.01316.i.epil, align 1, !tbaa !46
  %i.rk = zext i8 %i.rj to i32
  %i.rl = add nuw nsw i32 %.01217.i.epil, %i.rk   ; 2 uses
  %i.rm = getelementptr inbounds i8, ptr %.01316.i.epil, i64 %i.qb
  %epil.iter906.next = add i32 %epil.iter906, 1   ; 2 uses
  %epil.iter906.cmp.not = icmp eq i32 %epil.iter906.next, %xtraiter905
  br i1 %epil.iter906.cmp.not, label %block_sum.exit, label %.preheader.i.epil, !llvm.loop !145

block_sum.exit:                                   ; preds = %.preheader.i.epil, %block_sum.exit.unr-lcssa
  %.lcssa877 = phi i32 [ %i.rh, %block_sum.exit.unr-lcssa ], [ %i.rl, %.preheader.i.epil ]
  %i.rn = add nsw i32 %3, -1
  %i.ro = mul nsw i32 %i.pu, %i.rn
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds i8, ptr %i.pr, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.py ; 5 uses
  %wide.trip.count.i260 = zext nneg i32 %6 to i64 ; 3 uses
  %min.iters.check798 = icmp samesign ult i32 %6, 8
  br i1 %min.iters.check798, label %scalar.ph797.preheader, label %vector.ph799

vector.ph799:                                     ; preds = %block_sum.exit
  %n.vec800 = and i64 %wide.trip.count.i260, 24   ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %wide.load805 = load <4 x i8>, ptr %i.rr, align 1, !tbaa !46
  %wide.load806 = load <4 x i8>, ptr %i.rs, align 1, !tbaa !46
  %i.rt = zext <4 x i8> %wide.load805 to <4 x i32> ; 2 uses
  %i.ru = zext <4 x i8> %wide.load806 to <4 x i32> ; 2 uses
  %i.rv = icmp eq i64 %n.vec800, 8
  br i1 %i.rv, label %middle.block808, label %vector.body801.1

vector.body801.1:                                 ; preds = %vector.ph799
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 12
  %wide.load805.1 = load <4 x i8>, ptr %i.rw, align 1, !tbaa !46
  %wide.load806.1 = load <4 x i8>, ptr %i.rx, align 1, !tbaa !46
  %i.ry = zext <4 x i8> %wide.load805.1 to <4 x i32>
  %i.rz = zext <4 x i8> %wide.load806.1 to <4 x i32>
  %i.sa = add nuw nsw <4 x i32> %i.rt, %i.ry
  %i.sb = add nuw nsw <4 x i32> %i.ru, %i.rz
  br label %middle.block808

middle.block808:                                  ; preds = %vector.body801.1, %vector.ph799
  %.lcssa876 = phi <4 x i32> [ %i.rt, %vector.ph799 ], [ %i.sa, %vector.body801.1 ]
  %.lcssa875 = phi <4 x i32> [ %i.ru, %vector.ph799 ], [ %i.sb, %vector.body801.1 ]
  %bin.rdx809 = add nsw <4 x i32> %.lcssa875, %.lcssa876
  %i.sc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx809) ; 2 uses
  %cmp.n810 = icmp eq i64 %n.vec800, %wide.trip.count.i260
  br i1 %cmp.n810, label %block_sum.exit270, label %scalar.ph797.preheader

scalar.ph797.preheader:                           ; preds = %block_sum.exit, %middle.block808
  %indvars.iv.i265.ph = phi i64 [ 0, %block_sum.exit ], [ %n.vec800, %middle.block808 ]
  %.114.i266.ph = phi i32 [ 0, %block_sum.exit ], [ %i.sc, %middle.block808 ]
  br label %scalar.ph797

block_sum.exit270:                                ; preds = %scalar.ph797, %middle.block808
  %.lcssa = phi i32 [ %i.sc, %middle.block808 ], [ %i.sk, %scalar.ph797 ]
  %i.sd = add nuw nsw i32 %.lcssa, %.lcssa877
  %i.se = udiv i32 %i.sd, %6
  %i.sf = add nuw nsw i32 %i.se, 1
  %i.sg = lshr i32 %i.sf, 1
  br label %.critedge

scalar.ph797:                                     ; preds = %scalar.ph797.preheader, %scalar.ph797
  %indvars.iv.i265 = phi i64 [ %indvars.iv.next.i267, %scalar.ph797 ], [ %indvars.iv.i265.ph, %scalar.ph797.preheader ] ; 2 uses
  %.114.i266 = phi i32 [ %i.sk, %scalar.ph797 ], [ %.114.i266.ph, %scalar.ph797.preheader ]
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rr, i64 %indvars.iv.i265
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !46
  %i.sj = zext i8 %i.si to i32
  %i.sk = add nuw nsw i32 %.114.i266, %i.sj       ; 2 uses
  %indvars.iv.next.i267 = add nuw nsw i64 %indvars.iv.i265, 1 ; 2 uses
  %exitcond.not.i268 = icmp eq i64 %indvars.iv.next.i267, %wide.trip.count.i260
  br i1 %exitcond.not.i268, label %block_sum.exit270, label %scalar.ph797, !llvm.loop !146

bb.l:                                             ; preds = %bb.j
  br i1 %i.pn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.sl = zext nneg i32 %7 to i64                 ; 2 uses
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.sl
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !55 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.so, i64 %i.sl
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !41 ; 3 uses
  %i.sr = mul nsw i32 %i.sq, %3
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds i8, ptr %i.sn, i64 %i.ss
  %i.su = zext nneg i32 %2 to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.su
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 -1 ; 2 uses
  %i.sx = sext i32 %i.sq to i64                   ; 9 uses
  %xtraiter898 = and i32 %6, 7                    ; 3 uses
  %i.sy = icmp samesign ult i32 %6, 8
  br i1 %i.sy, label %.preheader.i271.epil.preheader, label %.new

.new:                                             ; preds = %bb.m
  %unroll_iter902 = and i32 %6, 24
  br label %.preheader.i271

.preheader.i271:                                  ; preds = %.preheader.i271, %.new
  %.01217.i273 = phi i32 [ 0, %.new ], [ %i.ud, %.preheader.i271 ]
  %.01316.i274 = phi ptr [ %i.sw, %.new ], [ %i.ue, %.preheader.i271 ] ; 2 uses
  %niter903 = phi i32 [ 0, %.new ], [ %niter903.next.7, %.preheader.i271 ]
  %i.sz = load i8, ptr %.01316.i274, align 1, !tbaa !46
  %i.ta = zext i8 %i.sz to i32
  %i.tb = add nuw nsw i32 %.01217.i273, %i.ta
  %i.tc = getelementptr inbounds i8, ptr %.01316.i274, i64 %i.sx ; 2 uses
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !46
  %i.te = zext i8 %i.td to i32
  %i.tf = add nuw nsw i32 %i.tb, %i.te
  %i.tg = getelementptr inbounds i8, ptr %i.tc, i64 %i.sx ; 2 uses
  %i.th = load i8, ptr %i.tg, align 1, !tbaa !46
  %i.ti = zext i8 %i.th to i32
  %i.tj = add nuw nsw i32 %i.tf, %i.ti
  %i.tk = getelementptr inbounds i8, ptr %i.tg, i64 %i.sx ; 2 uses
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !46
  %i.tm = zext i8 %i.tl to i32
  %i.tn = add nuw nsw i32 %i.tj, %i.tm
  %i.to = getelementptr inbounds i8, ptr %i.tk, i64 %i.sx ; 2 uses
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !46
  %i.tq = zext i8 %i.tp to i32
  %i.tr = add nuw nsw i32 %i.tn, %i.tq
  %i.ts = getelementptr inbounds i8, ptr %i.to, i64 %i.sx ; 2 uses
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !46
  %i.tu = zext i8 %i.tt to i32
  %i.tv = add nuw nsw i32 %i.tr, %i.tu
  %i.tw = getelementptr inbounds i8, ptr %i.ts, i64 %i.sx ; 2 uses
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !46
  %i.ty = zext i8 %i.tx to i32
  %i.tz = add nuw nsw i32 %i.tv, %i.ty
  %i.ua = getelementptr inbounds i8, ptr %i.tw, i64 %i.sx ; 2 uses
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !46
  %i.uc = zext i8 %i.ub to i32
  %i.ud = add nuw nsw i32 %i.tz, %i.uc            ; 3 uses
  %i.ue = getelementptr inbounds i8, ptr %i.ua, i64 %i.sx ; 2 uses
  %niter903.next.7 = add nuw nsw i32 %niter903, 8 ; 2 uses
  %niter903.ncmp.7 = icmp eq i32 %niter903.next.7, %unroll_iter902
  br i1 %niter903.ncmp.7, label %block_sum.exit280.unr-lcssa, label %.preheader.i271, !llvm.loop !144

block_sum.exit280.unr-lcssa:                      ; preds = %.preheader.i271
  %lcmp.mod899.not = icmp eq i32 %xtraiter898, 0
  br i1 %lcmp.mod899.not, label %block_sum.exit280, label %.preheader.i271.epil.preheader

.preheader.i271.epil.preheader:                   ; preds = %block_sum.exit280.unr-lcssa, %bb.m
  %.01217.i273.epil.init = phi i32 [ 0, %bb.m ], [ %i.ud, %block_sum.exit280.unr-lcssa ]
  %.01316.i274.epil.init = phi ptr [ %i.sw, %bb.m ], [ %i.ue, %block_sum.exit280.unr-lcssa ]
  %lcmp.mod901 = icmp ne i32 %xtraiter898, 0
  tail call void @llvm.assume(i1 %lcmp.mod901)
  br label %.preheader.i271.epil

.preheader.i271.epil:                             ; preds = %.preheader.i271.epil, %.preheader.i271.epil.preheader
  %.01217.i273.epil = phi i32 [ %.01217.i273.epil.init, %.preheader.i271.epil.preheader ], [ %i.uh, %.preheader.i271.epil ]
  %.01316.i274.epil = phi ptr [ %.01316.i274.epil.init, %.preheader.i271.epil.preheader ], [ %i.ui, %.preheader.i271.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.preheader.i271.epil.preheader ], [ %epil.iter.next, %.preheader.i271.epil ]
  %i.uf = load i8, ptr %.01316.i274.epil, align 1, !tbaa !46
  %i.ug = zext i8 %i.uf to i32
  %i.uh = add nuw nsw i32 %.01217.i273.epil, %i.ug ; 2 uses
  %i.ui = getelementptr inbounds i8, ptr %.01316.i274.epil, i64 %i.sx
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter898
  br i1 %epil.iter.cmp.not, label %block_sum.exit280, label %.preheader.i271.epil, !llvm.loop !147

block_sum.exit280:                                ; preds = %.preheader.i271.epil, %block_sum.exit280.unr-lcssa
  %.lcssa878 = phi i32 [ %i.ud, %block_sum.exit280.unr-lcssa ], [ %i.uh, %.preheader.i271.epil ]
  %i.uj = shl nuw nsw i32 %.lcssa878, 1
  %14 = udiv i32 %i.uj, %6
  %i.uk = add nuw nsw i32 %14, 1
  %i.ul = lshr i32 %i.uk, 1
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  br i1 %i.po, label %.preheader.i282, label %bb.am

.preheader.i282:                                  ; preds = %bb.n
  %i.um = zext nneg i32 %7 to i64                 ; 2 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.um
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !55 ; 2 uses
  %i.up = add nsw i32 %3, -1
  %i.uq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.um
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !41 ; 2 uses
  %i.ut = mul nsw i32 %i.us, %i.up
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds i8, ptr %i.uo, i64 %i.uu
  %i.uw = sext i32 %2 to i64
  %i.ux = getelementptr inbounds i8, ptr %i.uv, i64 %i.uw ; 5 uses
  %wide.trip.count.i281 = zext nneg i32 %6 to i64 ; 3 uses
  %min.iters.check = icmp samesign ult i32 %6, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i282
  %n.vec = and i64 %wide.trip.count.i281, 24      ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %wide.load = load <4 x i8>, ptr %i.ux, align 1, !tbaa !46
  %wide.load796 = load <4 x i8>, ptr %i.uy, align 1, !tbaa !46
  %i.uz = zext <4 x i8> %wide.load to <4 x i32>   ; 2 uses
  %i.va = zext <4 x i8> %wide.load796 to <4 x i32> ; 2 uses
  %i.vb = icmp eq i64 %n.vec, 8
  br i1 %i.vb, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 12
  %wide.load.1 = load <4 x i8>, ptr %i.vc, align 1, !tbaa !46
  %wide.load796.1 = load <4 x i8>, ptr %i.vd, align 1, !tbaa !46
  %i.ve = zext <4 x i8> %wide.load.1 to <4 x i32>
  %i.vf = zext <4 x i8> %wide.load796.1 to <4 x i32>
  %i.vg = add nuw nsw <4 x i32> %i.uz, %i.ve
  %i.vh = add nuw nsw <4 x i32> %i.va, %i.vf
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %.lcssa881 = phi <4 x i32> [ %i.uz, %vector.ph ], [ %i.vg, %vector.body.1 ]
  %.lcssa880 = phi <4 x i32> [ %i.va, %vector.ph ], [ %i.vh, %vector.body.1 ]
  %bin.rdx = add nsw <4 x i32> %.lcssa880, %.lcssa881
  %i.vi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i281
  br i1 %cmp.n, label %block_sum.exit291, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i282, %middle.block
  %indvars.iv.i286.ph = phi i64 [ 0, %.preheader.i282 ], [ %n.vec, %middle.block ]
  %.114.i287.ph = phi i32 [ 0, %.preheader.i282 ], [ %i.vi, %middle.block ]
  br label %scalar.ph

block_sum.exit291:                                ; preds = %scalar.ph, %middle.block
  %.lcssa794 = phi i32 [ %i.vi, %middle.block ], [ %i.vp, %scalar.ph ]
  %i.vj = shl nuw nsw i32 %.lcssa794, 1
  %15 = udiv i32 %i.vj, %6
  %i.vk = add nuw nsw i32 %15, 1
  %i.vl = lshr i32 %i.vk, 1
  br label %.critedge

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i286 = phi i64 [ %indvars.iv.next.i288, %scalar.ph ], [ %indvars.iv.i286.ph, %scalar.ph.preheader ] ; 2 uses
  %.114.i287 = phi i32 [ %i.vp, %scalar.ph ], [ %.114.i287.ph, %scalar.ph.preheader ]
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ux, i64 %indvars.iv.i286
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !46
  %i.vo = zext i8 %i.vn to i32
  %i.vp = add nuw nsw i32 %.114.i287, %i.vo       ; 2 uses
  %indvars.iv.next.i288 = add nuw nsw i64 %indvars.iv.i286, 1 ; 2 uses
  %exitcond.not.i289 = icmp eq i64 %indvars.iv.next.i288, %wide.trip.count.i281
  br i1 %exitcond.not.i289, label %block_sum.exit291, label %scalar.ph, !llvm.loop !148

.critedge:                                        ; preds = %..critedge_crit_edge, %block_sum.exit270, %block_sum.exit291, %block_sum.exit280
  %i.vq = phi i32 [ %.pre733, %..critedge_crit_edge ], [ %i.pu, %block_sum.exit270 ], [ %i.us, %block_sum.exit291 ], [ %i.sq, %block_sum.exit280 ] ; 2 uses
  %i.vr = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.pr, %block_sum.exit270 ], [ %i.uo, %block_sum.exit291 ], [ %i.sn, %block_sum.exit280 ]
  %.0234 = phi i32 [ 128, %..critedge_crit_edge ], [ %i.sg, %block_sum.exit270 ], [ %i.vl, %block_sum.exit291 ], [ %i.ul, %block_sum.exit280 ]
  %i.vs = mul nsw i32 %i.vq, %3
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds i8, ptr %i.vr, i64 %i.vt
  %i.vv = sext i32 %2 to i64
  %i.vw = getelementptr inbounds i8, ptr %i.vu, i64 %i.vv ; 2 uses
  %i.vx = trunc i32 %.0234 to i8                  ; 9 uses
  %i.vy = zext nneg i32 %6 to i64                 ; 9 uses
  %i.vz = sext i32 %i.vq to i64                   ; 9 uses
  %xtraiter912 = and i32 %6, 7                    ; 3 uses
  %i.wa = icmp samesign ult i32 %6, 8
  br i1 %i.wa, label %.epil.preheader, label %.critedge.new

.critedge.new:                                    ; preds = %.critedge
  %unroll_iter916 = and i32 %6, 24
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.critedge.new
  %.079.i = phi ptr [ %i.vw, %.critedge.new ], [ %i.wi, %bb.o ] ; 2 uses
  %niter917 = phi i32 [ 0, %.critedge.new ], [ %niter917.next.7, %bb.o ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.079.i, i8 %i.vx, i64 %i.vy, i1 false)
  %i.wb = getelementptr inbounds i8, ptr %.079.i, i64 %i.vz ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wb, i8 %i.vx, i64 %i.vy, i1 false)
  %i.wc = getelementptr inbounds i8, ptr %i.wb, i64 %i.vz ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wc, i8 %i.vx, i64 %i.vy, i1 false)
  %i.wd = getelementptr inbounds i8, ptr %i.wc, i64 %i.vz ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wd, i8 %i.vx, i64 %i.vy, i1 false)
  %i.we = getelementptr inbounds i8, ptr %i.wd, i64 %i.vz ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.we, i8 %i.vx, i64 %i.vy, i1 false)
  %i.wf = getelementptr inbounds i8, ptr %i.we, i64 %i.vz ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wf, i8 %i.vx, i64 %i.vy, i1 false)
  %i.wg = getelementptr inbounds i8, ptr %i.wf, i64 %i.vz ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wg, i8 %i.vx, i64 %i.vy, i1 false)
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 %i.vz ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.wh, i8 %i.vx, i64 %i.vy, i1 false)
  %i.wi = getelementptr inbounds i8, ptr %i.wh, i64 %i.vz ; 2 uses
  %niter917.next.7 = add nuw nsw i32 %niter917, 8 ; 2 uses
  %niter917.ncmp.7 = icmp eq i32 %niter917.next.7, %unroll_iter916
  br i1 %niter917.ncmp.7, label %block_fill.exit.loopexit873.unr-lcssa, label %bb.o, !llvm.loop !149

bb.p:                                             ; preds = %bb.a
  %i.wj = zext nneg i32 %7 to i64                 ; 2 uses
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.wj
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !55 ; 4 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wm, i64 %i.wj
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !41 ; 4 uses
  %wide.trip.count.i293 = zext nneg i32 %6 to i64
  %.sroa.5532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 4
  %.sroa.7533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.9534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 12
  %.sroa.11535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 20
  %.sroa.16537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.wp = add nsw i32 %6, -1                      ; 2 uses
  %i.wq = add nsw i32 %i.j, -1                    ; 2 uses
  %i.wr = add nsw i32 %i.g, -1                    ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.025.i294 = phi i32 [ 0, %bb.p ], [ %i.wv, %bb.r ] ; 3 uses
  %i.ws = add nsw i32 %.025.i294, %3
  %i.wt = mul nsw i32 %i.ws, %i.wo
  %i.wu = add i32 %i.wt, %2
  %i.wv = add nuw nsw i32 %.025.i294, 1           ; 3 uses
  br label %bb.s

bb.r:                                             ; preds = %pick_4.exit
  %exitcond27.not.i298 = icmp eq i32 %i.wv, %6
  br i1 %exitcond27.not.i298, label %block_fill.exit, label %bb.q, !llvm.loop !134

bb.s:                                             ; preds = %pick_4.exit, %bb.q
  %indvars.iv.i295 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i296, %pick_4.exit ] ; 2 uses
  %i.ww = trunc nuw nsw i64 %indvars.iv.i295 to i32 ; 4 uses
  %i.wx = and i32 %i.ww, 1
  %i.wy = icmp eq i32 %i.wx, 0
  br i1 %i.wy, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.wz = ashr exact i32 %i.ww, 1
  %i.xa = add nsw i32 %i.wz, %.025.i294           ; 7 uses
  %.not.i.i353 = icmp slt i32 %i.xa, %6
  br i1 %.not.i.i353, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.xb = icmp sgt i32 %i.xa, -2
  br i1 %i.xb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.xc = icmp ne i32 %i.xa, -2                   ; 2 uses
  %spec.select.i = select i1 %i.xc, i32 %i.xa, i32 -1
  %spec.select44.i = sext i1 %i.xc to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u
  %.sroa.12.0.i.i354 = phi i32 [ %i.xa, %bb.u ], [ %spec.select.i, %bb.v ], [ %i.wp, %bb.t ]
  %.sroa.7.0.i.i355 = phi i32 [ -1, %bb.u ], [ %spec.select44.i, %bb.v ], [ -1, %bb.t ]
  %i.xd = add nsw i32 %.sroa.12.0.i.i354, %3      ; 2 uses
  %i.xe = icmp slt i32 %i.xd, 0
  %..i14.i.i356 = tail call i32 @llvm.smin.i32(i32 %i.xd, i32 %i.wq)
  %.0.i15.i.i357 = select i1 %i.xe, i32 0, i32 %..i14.i.i356
  %i.xf = add nsw i32 %.sroa.7.0.i.i355, %2       ; 2 uses
  %i.xg = icmp slt i32 %i.xf, 0
  %..i.i.i358 = tail call i32 @llvm.smin.i32(i32 %i.xf, i32 %i.wr)
  %.0.i.i.i359 = select i1 %i.xg, i32 0, i32 %..i.i.i358
  %i.xh = mul nsw i32 %.0.i15.i.i357, %i.wo
  %i.xi = add nsw i32 %i.xh, %.0.i.i.i359
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %i.wl, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !46
  %i.xm = zext i8 %i.xl to i16
  %i.xn = add nsw i32 %i.xa, 1                    ; 4 uses
  %.not.i30.i = icmp slt i32 %i.xn, %6
  br i1 %.not.i30.i, label %bb.x, label %pget.exit31.i

bb.x:                                             ; preds = %bb.w
  %i.xo = icmp sgt i32 %i.xa, -3
  br i1 %i.xo, label %pget.exit31.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.xp = icmp ne i32 %i.xn, -2                   ; 2 uses
  %spec.select45.i = select i1 %i.xp, i32 %i.xn, i32 -1
  %spec.select46.i = sext i1 %i.xp to i32
  br label %pget.exit31.i

pget.exit31.i:                                    ; preds = %bb.w, %bb.y, %bb.x
  %.sroa.12.0.i23.i = phi i32 [ %i.xn, %bb.x ], [ %spec.select45.i, %bb.y ], [ %i.wp, %bb.w ]
  %.sroa.7.0.i24.i = phi i32 [ -1, %bb.x ], [ %spec.select46.i, %bb.y ], [ -1, %bb.w ]
  %i.xq = add nsw i32 %.sroa.12.0.i23.i, %3       ; 2 uses
  %i.xr = icmp slt i32 %i.xq, 0
  %..i14.i25.i = tail call i32 @llvm.smin.i32(i32 %i.xq, i32 %i.wq)
  %.0.i15.i26.i = select i1 %i.xr, i32 0, i32 %..i14.i25.i
  %i.xs = add nsw i32 %.sroa.7.0.i24.i, %2        ; 2 uses
  %i.xt = icmp slt i32 %i.xs, 0
  %..i.i27.i = tail call i32 @llvm.smin.i32(i32 %i.xs, i32 %i.wr)
  %.0.i.i28.i = select i1 %i.xt, i32 0, i32 %..i.i27.i
  %i.xu = mul nsw i32 %.0.i15.i26.i, %i.wo
  %i.xv = add nsw i32 %i.xu, %.0.i.i28.i
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds i8, ptr %i.wl, i64 %i.xw
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !46
  %i.xz = zext i8 %i.xy to i16
  %i.ya = add nuw nsw i16 %i.xm, 1
  %i.yb = add nuw nsw i16 %i.ya, %i.xz
  %i.yc = lshr i16 %i.yb, 1
  %i.yd = trunc nuw i16 %i.yc to i8
  br label %pick_4.exit

bb.z:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  store i32 %i.g, ptr %13, align 8, !tbaa !41
  store i32 %i.j, ptr %.sroa.5532.0..sroa_idx, align 4, !tbaa !41
  store i32 %2, ptr %.sroa.7533.0..sroa_idx, align 8, !tbaa !41
  store i32 %3, ptr %.sroa.9534.0..sroa_idx, align 4, !tbaa !41
  store i32 %6, ptr %.sroa.16537.0..sroa_idx, align 8, !tbaa !41
  store ptr %i.wl, ptr %.sroa.19.0..sroa_idx, align 8, !tbaa !55
  store i32 %i.wo, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !41
  store i32 -1, ptr %.sroa.11535.0..sroa_idx, align 8, !tbaa !161
  %i.ye = sdiv i32 %i.ww, 2
  %i.yf = add i32 %i.wv, %i.ye
  store i32 %i.yf, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !162
  %i.yg = tail call fastcc zeroext i8 @half_vert(ptr noundef nonnull byval(%struct.BlockXY) align 8 %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  br label %pick_4.exit

pick_4.exit:                                      ; preds = %pget.exit31.i, %bb.z
  %.0.in.i = phi i8 [ %i.yd, %pget.exit31.i ], [ %i.yg, %bb.z ]
  %i.yh = add i32 %i.wu, %i.ww
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds i8, ptr %i.wl, i64 %i.yi
  store i8 %.0.in.i, ptr %i.yj, align 1, !tbaa !46
  %indvars.iv.next.i296 = add nuw nsw i64 %indvars.iv.i295, 1 ; 2 uses
  %exitcond.not.i297 = icmp eq i64 %indvars.iv.next.i296, %wide.trip.count.i293
  br i1 %exitcond.not.i297, label %bb.r, label %bb.s, !llvm.loop !135

bb.aa:                                            ; preds = %bb.a
  %i.yk = zext nneg i32 %7 to i64                 ; 2 uses
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.yk
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !55 ; 8 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_0
