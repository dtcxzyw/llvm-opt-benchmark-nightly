Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/fixed_intrin_sse42?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable
define hidden range(i32 0, 5) i32 @FLAC__fixed_compute_best_predictor_limit_residual_intrin_sse42(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
.thread474.3:
  %i.a = getelementptr i8, ptr %0, i64 -8
  %i.b = getelementptr i8, ptr %0, i64 -16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  %i.d = sext i32 %i.c to i64                     ; 5 uses
  %i.e = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 -12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = sext i32 %i.g to i64                     ; 8 uses
  %i.i = tail call i64 @llvm.abs.i64(i64 %i.h, i1 true) ; 2 uses
  %i.j = sub nsw i64 %i.h, %i.d
  %spec.select432.1 = tail call i64 @llvm.abs.i64(i64 %i.j, i1 true) ; 2 uses
  %i.k = add nuw nsw i64 %i.i, %i.e
  %i.l = load i32, ptr %i.a, align 4, !tbaa !9
  %i.m = sext i32 %i.l to i64                     ; 8 uses
  %i.n = tail call i64 @llvm.abs.i64(i64 %i.m, i1 true) ; 2 uses
  %i.o = sub nsw i64 %i.m, %i.h
  %spec.select432.2 = tail call i64 @llvm.abs.i64(i64 %i.o, i1 true) ; 2 uses
  %i.p = shl nsw i64 %i.h, 1
  %i.q = sub nsw i64 %i.m, %i.p
  %i.r = add nsw i64 %i.q, %i.d
  %spec.select433.2 = tail call i64 @llvm.abs.i64(i64 %i.r, i1 true) ; 2 uses
  %i.s = add nuw nsw i64 %i.n, %i.k
  %i.t = add nuw nsw i64 %spec.select432.2, %spec.select432.1
  %i.u = getelementptr i8, ptr %0, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %i.w = sext i32 %i.v to i64                     ; 5 uses
  %i.x = tail call i64 @llvm.abs.i64(i64 %i.w, i1 true) ; 2 uses
  %i.y = sub nsw i64 %i.w, %i.m                   ; 3 uses
  %spec.select432.3 = tail call i64 @llvm.abs.i64(i64 %i.y, i1 true) ; 2 uses
  %i.z = shl nsw i64 %i.m, 1
  %i.aa = sub nsw i64 %i.w, %i.z
  %i.ab = add nsw i64 %i.aa, %i.h
  %spec.select433.3 = tail call i64 @llvm.abs.i64(i64 %i.ab, i1 true) ; 2 uses
  %reass.add486.3 = sub nsw i64 %i.h, %i.m
  %reass.mul487.3 = mul nsw i64 %reass.add486.3, 3
  %i.ac = sub nsw i64 %i.w, %i.d
  %i.ad = add nsw i64 %i.ac, %reass.mul487.3
  %spec.select434.3 = tail call i64 @llvm.abs.i64(i64 %i.ad, i1 true) ; 2 uses
  %i.ae = sdiv i32 %1, 2                          ; 3 uses
  %i.af = add nuw nsw i64 %i.x, %i.s
  %i.ag = add nuw nsw i64 %spec.select432.3, %i.t
  %i.ah = add nuw nsw i64 %spec.select433.3, %spec.select433.2
  %i.ai = icmp sgt i32 %1, 1
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread474.3
  %i.aj = shl nsw i64 %i.h, 1
  %i.ak = add nsw i64 %i.m, %i.d
  %.neg482 = sub nsw i64 %i.aj, %i.ak
  %.neg422 = sub nsw i64 %i.h, %i.m
  %i.al = add nsw i64 %.neg422, %i.y              ; 2 uses
  %i.am = add nsw i64 %.neg482, %i.al
  %.sroa.0.0.vec.insert545 = insertelement <2 x i64> poison, i64 %i.am, i64 0
  %i.an = zext nneg i32 %i.ae to i64
  %i.ao = getelementptr [4 x i8], ptr %0, i64 %i.an ; 4 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = shl nsw i64 %i.ar, 1
  %i.at = getelementptr i8, ptr %i.ao, i64 -8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !9
  %i.av = sext i32 %i.au to i64                   ; 3 uses
  %i.aw = getelementptr i8, ptr %i.ao, i64 -16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !9
  %i.ay = sext i32 %i.ax to i64
  %i.az = add nsw i64 %i.av, %i.ay
  %.neg482.1 = sub nsw i64 %i.as, %i.az
  %.neg422.1 = sub nsw i64 %i.ar, %i.av
  %i.ba = getelementptr i8, ptr %i.ao, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !9
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = sub nsw i64 %i.bc, %i.av                ; 2 uses
  %i.be = add nsw i64 %.neg422.1, %i.bd           ; 2 uses
  %i.bf = add nsw i64 %.neg482.1, %i.be
  %.sroa.0.8.vec.insert546 = insertelement <2 x i64> %.sroa.0.0.vec.insert545, i64 %i.bf, i64 1
  %.sroa.0547.0.vec.insert = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %.sroa.0547.8.vec.insert = insertelement <2 x i64> %.sroa.0547.0.vec.insert, i64 %i.be, i64 1
  %.sroa.0549.0.vec.insert = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %.sroa.0549.8.vec.insert = insertelement <2 x i64> %.sroa.0549.0.vec.insert, i64 %i.bd, i64 1
  %.sroa.0551.0.vec.insert = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %.sroa.0551.8.vec.insert = insertelement <2 x i64> %.sroa.0551.0.vec.insert, i64 %i.bc, i64 1
  %i.bg = lshr i32 %1, 1
  %i.bh = zext nneg i32 %i.bg to i64
  %wide.trip.count = zext nneg i32 %i.ae to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bh
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %.0512 = phi <2 x i64> [ %.sroa.0.8.vec.insert546, %.lr.ph ], [ %i.by, %bb.a ]
  %.0357511 = phi <2 x i64> [ %.sroa.0547.8.vec.insert, %.lr.ph ], [ %i.bu, %bb.a ]
  %.0358510 = phi <2 x i64> [ %.sroa.0549.8.vec.insert, %.lr.ph ], [ %i.bq, %bb.a ]
  %.0359509 = phi <2 x i64> [ %.sroa.0551.8.vec.insert, %.lr.ph ], [ %.sroa.0.8.vec.insert, %bb.a ]
  %.0360508 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.cf, %bb.a ]
  %.0361507 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.cb, %bb.a ]
  %.0362506 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.bx, %bb.a ]
  %.0363505 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.bt, %bb.a ]
  %.0364504 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.bp, %bb.a ]
  %.0365503 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.ce, %bb.a ]
  %.0366502 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.ca, %bb.a ]
  %.0367501 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.bw, %bb.a ]
  %.0368500 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.bs, %bb.a ]
  %.0369499 = phi <2 x i64> [ zeroinitializer, %.lr.ph ], [ %i.bo, %bb.a ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !9
  %i.bk = sext i32 %i.bj to i64
  %.sroa.0.0.vec.insert = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bl = load i32, ptr %gep, align 4, !tbaa !9
  %i.bm = sext i32 %i.bl to i64
  %.sroa.0.8.vec.insert = insertelement <2 x i64> %.sroa.0.0.vec.insert, i64 %i.bm, i64 1 ; 3 uses
  %i.bn = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %.sroa.0.8.vec.insert, i1 false) ; 2 uses
  %i.bo = add <2 x i64> %i.bn, %.0369499          ; 2 uses
  %i.bp = or <2 x i64> %i.bn, %.0364504           ; 2 uses
  %i.bq = sub <2 x i64> %.sroa.0.8.vec.insert, %.0359509 ; 3 uses
  %i.br = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.bq, i1 false) ; 2 uses
  %i.bs = add <2 x i64> %i.br, %.0368500          ; 2 uses
  %i.bt = or <2 x i64> %i.br, %.0363505           ; 2 uses
  %i.bu = sub <2 x i64> %i.bq, %.0358510          ; 3 uses
  %i.bv = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.bu, i1 false) ; 2 uses
  %i.bw = add <2 x i64> %i.bv, %.0367501          ; 2 uses
  %i.bx = or <2 x i64> %i.bv, %.0362506           ; 2 uses
  %i.by = sub <2 x i64> %i.bu, %.0357511          ; 3 uses
  %i.bz = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.by, i1 false) ; 2 uses
  %i.ca = add <2 x i64> %i.bz, %.0366502          ; 2 uses
  %i.cb = or <2 x i64> %i.bz, %.0361507           ; 2 uses
  %i.cc = sub <2 x i64> %i.by, %.0512
  %i.cd = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %i.cc, i1 false) ; 2 uses
  %i.ce = add <2 x i64> %i.cd, %.0365503          ; 2 uses
  %i.cf = or <2 x i64> %i.cd, %.0360508           ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.a, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %bb.a
  %i.cg = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.ce)
  %i.ch = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %i.cf)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.thread474.3
  %.2373.lcssa = phi i32 [ 0, %.thread474.3 ], [ %i.ae, %._crit_edge.loopexit ]
  %.0369.lcssa = phi <2 x i64> [ zeroinitializer, %.thread474.3 ], [ %i.bo, %._crit_edge.loopexit ] ; 2 uses
  %.0368.lcssa = phi <2 x i64> [ zeroinitializer, %.thread474.3 ], [ %i.bs, %._crit_edge.loopexit ] ; 2 uses
  %.0367.lcssa = phi <2 x i64> [ zeroinitializer, %.thread474.3 ], [ %i.bw, %._crit_edge.loopexit ] ; 2 uses
  %.0366.lcssa = phi <2 x i64> [ zeroinitializer, %.thread474.3 ], [ %i.ca, %._crit_edge.loopexit ] ; 2 uses
  %.0365.lcssa = phi i64 [ 0, %.thread474.3 ], [ %i.cg, %._crit_edge.loopexit ] ; 2 uses
  %.0364.lcssa = phi <2 x i64> [ zeroinitializer, %.thread474.3 ], [ %i.bp, %._crit_edge.loopexit ] ; 2 uses
  %.0363.lcssa = phi <2 x i64> [ zeroinitializer, %.thread474.3 ], [ %i.bt, %._crit_edge.loopexit ] ; 2 uses
  %.0362.lcssa = phi <2 x i64> [ zeroinitializer, %.thread474.3 ], [ %i.bx, %._crit_edge.loopexit ] ; 2 uses
  %.0361.lcssa = phi <2 x i64> [ zeroinitializer, %.thread474.3 ], [ %i.cb, %._crit_edge.loopexit ] ; 2 uses
  %.0360.lcssa = phi i64 [ 0, %.thread474.3 ], [ %i.ch, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x i64> %.0369.lcssa, i64 0
  %.sroa.0.8.vec.extract472 = extractelement <2 x i64> %.0369.lcssa, i64 1
  %i.ci = add i64 %.sroa.0.8.vec.extract472, %i.af
  %i.cj = add i64 %i.ci, %.sroa.0.0.vec.extract   ; 2 uses
  %.sroa.0.0.vec.extract438 = extractelement <2 x i64> %.0368.lcssa, i64 0
  %.sroa.0.8.vec.extract470 = extractelement <2 x i64> %.0368.lcssa, i64 1
  %i.ck = add i64 %.sroa.0.8.vec.extract470, %i.ag
  %i.cl = add i64 %i.ck, %.sroa.0.0.vec.extract438 ; 2 uses
  %.sroa.0.0.vec.extract440 = extractelement <2 x i64> %.0367.lcssa, i64 0
  %.sroa.0.8.vec.extract468 = extractelement <2 x i64> %.0367.lcssa, i64 1
  %i.cm = add i64 %.sroa.0.8.vec.extract468, %i.ah
  %i.cn = add i64 %i.cm, %.sroa.0.0.vec.extract440 ; 2 uses
  %.sroa.0.0.vec.extract442 = extractelement <2 x i64> %.0366.lcssa, i64 0
  %.sroa.0.8.vec.extract466 = extractelement <2 x i64> %.0366.lcssa, i64 1
  %i.co = add i64 %.sroa.0.8.vec.extract466, %spec.select434.3
  %i.cp = add i64 %i.co, %.sroa.0.0.vec.extract442 ; 2 uses
  %3 = shufflevector <2 x i64> %.0364.lcssa, <2 x i64> %.0363.lcssa, <2 x i32> <i32 1, i32 3>
  %4 = shufflevector <2 x i64> %.0364.lcssa, <2 x i64> %.0363.lcssa, <2 x i32> <i32 0, i32 2>
  %5 = or <2 x i64> %3, %4                        ; 2 uses
  %6 = extractelement <2 x i64> %5, i64 0
  %7 = or i64 %i.e, %6
  %8 = or i64 %7, %i.i
  %9 = or i64 %8, %i.n
  %10 = or i64 %9, %i.x                           ; 2 uses
  %11 = extractelement <2 x i64> %5, i64 1
  %i.cq = or i64 %spec.select432.1, %11
  %i.cr = or i64 %i.cq, %spec.select432.2
  %i.cs = or i64 %i.cr, %spec.select432.3         ; 2 uses
  %12 = shufflevector <2 x i64> %.0362.lcssa, <2 x i64> %.0361.lcssa, <2 x i32> <i32 1, i32 3>
  %13 = shufflevector <2 x i64> %.0362.lcssa, <2 x i64> %.0361.lcssa, <2 x i32> <i32 0, i32 2>
  %14 = or <2 x i64> %12, %13                     ; 2 uses
  %15 = extractelement <2 x i64> %14, i64 0
  %i.ct = or i64 %spec.select433.2, %15
  %i.cu = or i64 %i.ct, %spec.select433.3         ; 2 uses
  %16 = extractelement <2 x i64> %14, i64 1
  %i.cv = or i64 %16, %spec.select434.3           ; 2 uses
  %i.cw = and i32 %1, -2147483647
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.cy = lshr i32 %1, 1
  %i.cz = add nuw nsw i32 %.2373.lcssa, %i.cy
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %0, i64 %i.da ; 5 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !9
  %i.dd = sext i32 %i.dc to i64                   ; 5 uses
  %i.de = tail call i64 @llvm.abs.i64(i64 %i.dd, i1 true) ; 2 uses
  %i.df = getelementptr i8, ptr %i.db, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !9
  %i.dh = sext i32 %i.dg to i64                   ; 4 uses
  %i.di = sub nsw i64 %i.dd, %i.dh
  %i.dj = tail call i64 @llvm.abs.i64(i64 %i.di, i1 true) ; 2 uses
  %i.dk = shl nsw i64 %i.dh, 1
  %i.dl = sub nsw i64 %i.dd, %i.dk
  %i.dm = getelementptr i8, ptr %i.db, i64 -8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !9
  %i.do = sext i32 %i.dn to i64                   ; 3 uses
  %i.dp = add nsw i64 %i.dl, %i.do
  %i.dq = tail call i64 @llvm.abs.i64(i64 %i.dp, i1 true) ; 2 uses
  %i.dr = getelementptr i8, ptr %i.db, i64 -12
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.dt = sext i32 %i.ds to i64                   ; 2 uses
  %reass.add = sub nsw i64 %i.do, %i.dh
  %reass.mul = mul nsw i64 %reass.add, 3
  %i.du = sub nsw i64 %i.dd, %i.dt
  %i.dv = add nsw i64 %i.du, %reass.mul
  %i.dw = tail call i64 @llvm.abs.i64(i64 %i.dv, i1 true) ; 2 uses
  %i.dx = mul nsw i64 %i.do, 6
  %i.dy = add nsw i64 %i.dx, %i.dd
  %i.dz = add nsw i64 %i.dt, %i.dh
  %i.ea = getelementptr i8, ptr %i.db, i64 -16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !9
  %i.ec = sext i32 %i.eb to i64
  %i.ed = add nsw i64 %i.dy, %i.ec
  %i.ee = shl nsw i64 %i.dz, 2
  %i.ef = sub nsw i64 %i.ed, %i.ee
  %i.eg = tail call i64 @llvm.abs.i64(i64 %i.ef, i1 true) ; 2 uses
  %i.eh = add i64 %i.de, %i.cj
  %i.ei = add i64 %i.dj, %i.cl
  %i.ej = add i64 %i.dq, %i.cn
  %i.ek = add i64 %i.dw, %i.cp
  %i.el = add i64 %i.eg, %.0365.lcssa
  %i.em = or i64 %i.de, %10
  %i.en = or i64 %i.dj, %i.cs
  %i.eo = or i64 %i.dq, %i.cu
  %i.ep = or i64 %i.dw, %i.cv
  %i.eq = or i64 %i.eg, %.0360.lcssa
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1399 = phi i64 [ %i.eh, %bb.b ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.1397 = phi i64 [ %i.ei, %bb.b ], [ %i.cl, %._crit_edge ] ; 4 uses
  %.1395 = phi i64 [ %i.ej, %bb.b ], [ %i.cn, %._crit_edge ] ; 4 uses
  %.1393 = phi i64 [ %i.ek, %bb.b ], [ %i.cp, %._crit_edge ] ; 4 uses
  %.0391 = phi i64 [ %i.el, %bb.b ], [ %.0365.lcssa, %._crit_edge ] ; 3 uses
  %.1382 = phi i64 [ %i.em, %bb.b ], [ %10, %._crit_edge ]
  %.1380 = phi i64 [ %i.en, %bb.b ], [ %i.cs, %._crit_edge ]
  %.1378 = phi i64 [ %i.eo, %bb.b ], [ %i.cu, %._crit_edge ]
  %.1376 = phi i64 [ %i.ep, %bb.b ], [ %i.cv, %._crit_edge ]
  %.0374 = phi i64 [ %i.eq, %bb.b ], [ %.0360.lcssa, %._crit_edge ]
  %i.er = icmp ult i64 %.1382, 2147483648
  br i1 %i.er, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not417 = icmp eq i64 %.1399, 0
  br i1 %.not417, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.es = uitofp reassoc nsz arcp i64 %.1399 to double
  %i.et = fmul reassoc nnan nsz arcp double %i.es, f0x3FE62E42FEFA39EF
  %i.eu = uitofp reassoc nsz arcp i32 %1 to double
  %i.ev = fdiv reassoc nsz arcp double %i.et, %i.eu
  %i.ew = tail call reassoc nsz arcp double @log(double noundef %i.ev) #4
  %i.ex = fmul reassoc nsz arcp double %i.ew, f0x3FF71547652B82FE
  %i.ey = fptrunc reassoc nsz arcp double %i.ex to float
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %storemerge = phi float [ 0.000000e+00, %bb.d ], [ %i.ey, %bb.e ], [ 3.400000e+01, %bb.c ]
  %.1384 = phi i64 [ 0, %bb.d ], [ %.1399, %bb.e ], [ -1, %bb.c ] ; 3 uses
  store float %storemerge, ptr %2, align 4, !tbaa !12
  %i.ez = icmp ult i64 %.1380, 2147483648
  br i1 %i.ez, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fa = icmp ult i64 %.1397, %.1384             ; 2 uses
  %spec.select425 = tail call i64 @llvm.umin.i64(i64 %.1397, i64 %.1384) ; 2 uses
  %.not418 = icmp eq i64 %.1397, 0
  br i1 %.not418, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fb = uitofp reassoc nsz arcp i64 %.1397 to double
  %i.fc = fmul reassoc nnan nsz arcp double %i.fb, f0x3FE62E42FEFA39EF
  %i.fd = uitofp reassoc nsz arcp i32 %1 to double
  %i.fe = fdiv reassoc nsz arcp double %i.fc, %i.fd
  %i.ff = tail call reassoc nsz arcp double @log(double noundef %i.fe) #4
  %i.fg = fmul reassoc nsz arcp double %i.ff, f0x3FF71547652B82FE
  %i.fh = fptrunc reassoc nsz arcp double %i.fg to float
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.sink = phi float [ 0.000000e+00, %bb.g ], [ %i.fh, %bb.h ], [ 3.400000e+01, %bb.f ]
  %.3386 = phi i64 [ %spec.select425, %bb.g ], [ %spec.select425, %bb.h ], [ %.1384, %bb.f ] ; 3 uses
  %.3.shrunk = phi i1 [ %i.fa, %bb.g ], [ %i.fa, %bb.h ], [ false, %bb.f ]
  %.3 = zext i1 %.3.shrunk to i32                 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink, ptr %i.fi, align 4, !tbaa !12
  %i.fj = icmp ult i64 %.1378, 2147483648
  br i1 %i.fj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.fk = icmp ult i64 %.1395, %.3386
  %spec.select427 = tail call i64 @llvm.umin.i64(i64 %.1395, i64 %.3386) ; 2 uses
  %spec.select428 = select i1 %i.fk, i32 2, i32 %.3 ; 2 uses
  %.not419 = icmp eq i64 %.1395, 0
  br i1 %.not419, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fl = uitofp reassoc nsz arcp i64 %.1395 to double
  %i.fm = fmul reassoc nnan nsz arcp double %i.fl, f0x3FE62E42FEFA39EF
  %i.fn = uitofp reassoc nsz arcp i32 %1 to double
  %i.fo = fdiv reassoc nsz arcp double %i.fm, %i.fn
  %i.fp = tail call reassoc nsz arcp double @log(double noundef %i.fo) #4
  %i.fq = fmul reassoc nsz arcp double %i.fp, f0x3FF71547652B82FE
  %i.fr = fptrunc reassoc nsz arcp double %i.fq to float
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sink565 = phi float [ 0.000000e+00, %bb.j ], [ %i.fr, %bb.k ], [ 3.400000e+01, %bb.i ]
  %.5388 = phi i64 [ %spec.select427, %bb.j ], [ %spec.select427, %bb.k ], [ %.3386, %bb.i ] ; 3 uses
  %.5 = phi i32 [ %spec.select428, %bb.j ], [ %spec.select428, %bb.k ], [ %.3, %bb.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink565, ptr %i.fs, align 4, !tbaa !12
  %i.ft = icmp ult i64 %.1376, 2147483648
  br i1 %i.ft, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fu = icmp ult i64 %.1393, %.5388
  %spec.select429 = tail call i64 @llvm.umin.i64(i64 %.1393, i64 %.5388) ; 2 uses
  %spec.select430 = select i1 %i.fu, i32 3, i32 %.5 ; 2 uses
  %.not420 = icmp eq i64 %.1393, 0
  br i1 %.not420, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fv = uitofp reassoc nsz arcp i64 %.1393 to double
  %i.fw = fmul reassoc nnan nsz arcp double %i.fv, f0x3FE62E42FEFA39EF
  %i.fx = uitofp reassoc nsz arcp i32 %1 to double
  %i.fy = fdiv reassoc nsz arcp double %i.fw, %i.fx
  %i.fz = tail call reassoc nsz arcp double @log(double noundef %i.fy) #4
  %i.ga = fmul reassoc nsz arcp double %i.fz, f0x3FF71547652B82FE
  %i.gb = fptrunc reassoc nsz arcp double %i.ga to float
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %.sink567 = phi float [ 0.000000e+00, %bb.m ], [ %i.gb, %bb.n ], [ 3.400000e+01, %bb.l ]
  %.7390 = phi i64 [ %spec.select429, %bb.m ], [ %spec.select429, %bb.n ], [ %.5388, %bb.l ]
  %.7 = phi i32 [ %spec.select430, %bb.m ], [ %spec.select430, %bb.n ], [ %.5, %bb.l ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %.sink567, ptr %i.gc, align 4, !tbaa !12
  %i.gd = icmp ult i64 %.0374, 2147483648
  br i1 %i.gd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ge = icmp ult i64 %.0391, %.7390
  %spec.select431 = select i1 %i.ge, i32 4, i32 %.7 ; 2 uses
  %.not421 = icmp eq i64 %.0391, 0
  br i1 %.not421, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gf = uitofp reassoc nsz arcp i64 %.0391 to double
  %i.gg = fmul reassoc nnan nsz arcp double %i.gf, f0x3FE62E42FEFA39EF
  %i.gh = uitofp reassoc nsz arcp i32 %1 to double
  %i.gi = fdiv reassoc nsz arcp double %i.gg, %i.gh
  %i.gj = tail call reassoc nsz arcp double @log(double noundef %i.gi) #4
  %i.gk = fmul reassoc nsz arcp double %i.gj, f0x3FF71547652B82FE
  %i.gl = fptrunc reassoc nsz arcp double %i.gk to float
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %.sink569 = phi float [ 0.000000e+00, %bb.p ], [ %i.gl, %bb.q ], [ 3.400000e+01, %bb.o ]
  %.9 = phi i32 [ %spec.select431, %bb.p ], [ %spec.select431, %bb.q ], [ %.7, %bb.o ]
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %.sink569, ptr %i.gm, align 4, !tbaa !12
  ret i32 %.9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !10}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"float", !4, i64 0}
!12 = !{!11, !11, i64 0}
end_hunk_0
