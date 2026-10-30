Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/fixed_intrin_sse42?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FLAC__fixed_compute_best_predictor_limit_residual_intrin_sse42:.thread474.3
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
  %i.cq = shufflevector <2 x i64> %.0364.lcssa, <2 x i64> %.0363.lcssa, <2 x i32> <i32 1, i32 3>
  %i.cr = shufflevector <2 x i64> %.0364.lcssa, <2 x i64> %.0363.lcssa, <2 x i32> <i32 0, i32 2>
  %i.cs = or <2 x i64> %i.cq, %i.cr               ; 2 uses
  %i.ct = extractelement <2 x i64> %i.cs, i64 0
  %i.cu = or i64 %i.e, %i.ct
  %i.cv = or i64 %i.cu, %i.i
  %i.cw = or i64 %i.cv, %i.n
  %i.cx = or i64 %i.cw, %i.x                      ; 2 uses
  %i.cy = extractelement <2 x i64> %i.cs, i64 1
  %i.cz = or i64 %spec.select432.1, %i.cy
  %i.da = or i64 %i.cz, %spec.select432.2
  %i.db = or i64 %i.da, %spec.select432.3         ; 2 uses
  %i.dc = shufflevector <2 x i64> %.0362.lcssa, <2 x i64> %.0361.lcssa, <2 x i32> <i32 1, i32 3>
  %i.dd = shufflevector <2 x i64> %.0362.lcssa, <2 x i64> %.0361.lcssa, <2 x i32> <i32 0, i32 2>
  %i.de = or <2 x i64> %i.dc, %i.dd               ; 2 uses
  %i.df = extractelement <2 x i64> %i.de, i64 0
  %i.dg = or i64 %spec.select433.2, %i.df
  %i.dh = or i64 %i.dg, %spec.select433.3         ; 2 uses
  %i.di = extractelement <2 x i64> %i.de, i64 1
  %i.dj = or i64 %i.di, %spec.select434.3         ; 2 uses
  %i.dk = and i32 %1, -2147483647
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.dm = lshr i32 %1, 1
  %i.dn = add nuw nsw i32 %.2373.lcssa, %i.dm
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.do ; 5 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !9
  %i.dr = sext i32 %i.dq to i64                   ; 5 uses
  %i.ds = tail call i64 @llvm.abs.i64(i64 %i.dr, i1 true) ; 2 uses
  %i.dt = getelementptr i8, ptr %i.dp, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !9
  %i.dv = sext i32 %i.du to i64                   ; 4 uses
  %i.dw = sub nsw i64 %i.dr, %i.dv
  %i.dx = tail call i64 @llvm.abs.i64(i64 %i.dw, i1 true) ; 2 uses
  %i.dy = shl nsw i64 %i.dv, 1
  %i.dz = sub nsw i64 %i.dr, %i.dy
  %i.ea = getelementptr i8, ptr %i.dp, i64 -8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !9
  %i.ec = sext i32 %i.eb to i64                   ; 3 uses
  %i.ed = add nsw i64 %i.dz, %i.ec
  %i.ee = tail call i64 @llvm.abs.i64(i64 %i.ed, i1 true) ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dp, i64 -12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !9
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %reass.add = sub nsw i64 %i.ec, %i.dv
  %reass.mul = mul nsw i64 %reass.add, 3
  %i.ei = sub nsw i64 %i.dr, %i.eh
  %i.ej = add nsw i64 %i.ei, %reass.mul
  %i.ek = tail call i64 @llvm.abs.i64(i64 %i.ej, i1 true) ; 2 uses
  %i.el = mul nsw i64 %i.ec, 6
  %i.em = add nsw i64 %i.el, %i.dr
  %i.en = add nsw i64 %i.eh, %i.dv
  %i.eo = getelementptr i8, ptr %i.dp, i64 -16
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !9
  %i.eq = sext i32 %i.ep to i64
  %i.er = add nsw i64 %i.em, %i.eq
  %i.es = shl nsw i64 %i.en, 2
  %i.et = sub nsw i64 %i.er, %i.es
  %i.eu = tail call i64 @llvm.abs.i64(i64 %i.et, i1 true) ; 2 uses
  %i.ev = add i64 %i.ds, %i.cj
  %i.ew = add i64 %i.dx, %i.cl
  %i.ex = add i64 %i.ee, %i.cn
  %i.ey = add i64 %i.ek, %i.cp
  %i.ez = add i64 %i.eu, %.0365.lcssa
  %i.fa = or i64 %i.ds, %i.cx
  %i.fb = or i64 %i.dx, %i.db
  %i.fc = or i64 %i.ee, %i.dh
  %i.fd = or i64 %i.ek, %i.dj
  %i.fe = or i64 %i.eu, %.0360.lcssa
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1399 = phi i64 [ %i.ev, %bb.b ], [ %i.cj, %._crit_edge ] ; 3 uses
  %.1397 = phi i64 [ %i.ew, %bb.b ], [ %i.cl, %._crit_edge ] ; 4 uses
  %.1395 = phi i64 [ %i.ex, %bb.b ], [ %i.cn, %._crit_edge ] ; 4 uses
  %.1393 = phi i64 [ %i.ey, %bb.b ], [ %i.cp, %._crit_edge ] ; 4 uses
  %.0391 = phi i64 [ %i.ez, %bb.b ], [ %.0365.lcssa, %._crit_edge ] ; 3 uses
  %.1382 = phi i64 [ %i.fa, %bb.b ], [ %i.cx, %._crit_edge ]
  %.1380 = phi i64 [ %i.fb, %bb.b ], [ %i.db, %._crit_edge ]
  %.1378 = phi i64 [ %i.fc, %bb.b ], [ %i.dh, %._crit_edge ]
  %.1376 = phi i64 [ %i.fd, %bb.b ], [ %i.dj, %._crit_edge ]
  %.0374 = phi i64 [ %i.fe, %bb.b ], [ %.0360.lcssa, %._crit_edge ]
  %i.ff = icmp ult i64 %.1382, 2147483648
  br i1 %i.ff, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not417 = icmp eq i64 %.1399, 0
  br i1 %.not417, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fg = uitofp reassoc nsz arcp i64 %.1399 to double
  %i.fh = fmul reassoc nnan nsz arcp double %i.fg, f0x3FE62E42FEFA39EF
  %i.fi = uitofp reassoc nsz arcp i32 %1 to double
  %i.fj = fdiv reassoc nsz arcp double %i.fh, %i.fi
  %i.fk = tail call reassoc nsz arcp double @log(double noundef %i.fj) #4
  %i.fl = fmul reassoc nsz arcp double %i.fk, f0x3FF71547652B82FE
  %i.fm = fptrunc reassoc nsz arcp double %i.fl to float
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d
  %storemerge = phi float [ 0.000000e+00, %bb.d ], [ %i.fm, %bb.e ], [ 3.400000e+01, %bb.c ]
  %.1384.a = phi i64 [ 0, %bb.d ], [ %.1399, %bb.e ], [ -1, %bb.c ] ; 3 uses
  store float %storemerge, ptr %2, align 4, !tbaa !12
  %i.fn = icmp ult i64 %.1380, 2147483648
  br i1 %i.fn, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.fo = icmp ult i64 %.1397, %.1384.a           ; 2 uses
  %spec.select425 = tail call i64 @llvm.umin.i64(i64 %.1397, i64 %.1384.a) ; 2 uses
  %.not418 = icmp eq i64 %.1397, 0
  br i1 %.not418, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fp = uitofp reassoc nsz arcp i64 %.1397 to double
  %i.fq = fmul reassoc nnan nsz arcp double %i.fp, f0x3FE62E42FEFA39EF
  %i.fr = uitofp reassoc nsz arcp i32 %1 to double
  %i.fs = fdiv reassoc nsz arcp double %i.fq, %i.fr
  %i.ft = tail call reassoc nsz arcp double @log(double noundef %i.fs) #4
  %i.fu = fmul reassoc nsz arcp double %i.ft, f0x3FF71547652B82FE
  %i.fv = fptrunc reassoc nsz arcp double %i.fu to float
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.sink = phi float [ 0.000000e+00, %bb.g ], [ %i.fv, %bb.h ], [ 3.400000e+01, %bb.f ]
  %.3386 = phi i64 [ %spec.select425, %bb.g ], [ %spec.select425, %bb.h ], [ %.1384.a, %bb.f ] ; 3 uses
  %.3.shrunk = phi i1 [ %i.fo, %bb.g ], [ %i.fo, %bb.h ], [ false, %bb.f ]
  %.3 = zext i1 %.3.shrunk to i32                 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink, ptr %i.fw, align 4, !tbaa !12
  %i.fx = icmp ult i64 %.1378, 2147483648
  br i1 %i.fx, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.fy = icmp ult i64 %.1395, %.3386
  %spec.select427 = tail call i64 @llvm.umin.i64(i64 %.1395, i64 %.3386) ; 2 uses
  %spec.select428 = select i1 %i.fy, i32 2, i32 %.3 ; 2 uses
  %.not419 = icmp eq i64 %.1395, 0
  br i1 %.not419, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fz = uitofp reassoc nsz arcp i64 %.1395 to double
  %i.ga = fmul reassoc nnan nsz arcp double %i.fz, f0x3FE62E42FEFA39EF
  %i.gb = uitofp reassoc nsz arcp i32 %1 to double
  %i.gc = fdiv reassoc nsz arcp double %i.ga, %i.gb
  %i.gd = tail call reassoc nsz arcp double @log(double noundef %i.gc) #4
  %i.ge = fmul reassoc nsz arcp double %i.gd, f0x3FF71547652B82FE
  %i.gf = fptrunc reassoc nsz arcp double %i.ge to float
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %.sink565 = phi float [ 0.000000e+00, %bb.j ], [ %i.gf, %bb.k ], [ 3.400000e+01, %bb.i ]
  %.5388 = phi i64 [ %spec.select427, %bb.j ], [ %spec.select427, %bb.k ], [ %.3386, %bb.i ] ; 3 uses
  %.5 = phi i32 [ %spec.select428, %bb.j ], [ %spec.select428, %bb.k ], [ %.3, %bb.i ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink565, ptr %i.gg, align 4, !tbaa !12
  %i.gh = icmp ult i64 %.1376, 2147483648
  br i1 %i.gh, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.gi = icmp ult i64 %.1393, %.5388
  %spec.select429 = tail call i64 @llvm.umin.i64(i64 %.1393, i64 %.5388) ; 2 uses
  %spec.select430 = select i1 %i.gi, i32 3, i32 %.5 ; 2 uses
  %.not420 = icmp eq i64 %.1393, 0
  br i1 %.not420, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gj = uitofp reassoc nsz arcp i64 %.1393 to double
  %i.gk = fmul reassoc nnan nsz arcp double %i.gj, f0x3FE62E42FEFA39EF
  %i.gl = uitofp reassoc nsz arcp i32 %1 to double
  %i.gm = fdiv reassoc nsz arcp double %i.gk, %i.gl
  %i.gn = tail call reassoc nsz arcp double @log(double noundef %i.gm) #4
  %i.go = fmul reassoc nsz arcp double %i.gn, f0x3FF71547652B82FE
  %i.gp = fptrunc reassoc nsz arcp double %i.go to float
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %.sink567 = phi float [ 0.000000e+00, %bb.m ], [ %i.gp, %bb.n ], [ 3.400000e+01, %bb.l ]
  %.7390 = phi i64 [ %spec.select429, %bb.m ], [ %spec.select429, %bb.n ], [ %.5388, %bb.l ]
  %.7 = phi i32 [ %spec.select430, %bb.m ], [ %spec.select430, %bb.n ], [ %.5, %bb.l ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %.sink567, ptr %i.gq, align 4, !tbaa !12
  %i.gr = icmp ult i64 %.0374, 2147483648
  br i1 %i.gr, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gs = icmp ult i64 %.0391, %.7390
  %spec.select431 = select i1 %i.gs, i32 4, i32 %.7 ; 2 uses
  %.not421 = icmp eq i64 %.0391, 0
  br i1 %.not421, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gt = uitofp reassoc nsz arcp i64 %.0391 to double
  %i.gu = fmul reassoc nnan nsz arcp double %i.gt, f0x3FE62E42FEFA39EF
  %i.gv = uitofp reassoc nsz arcp i32 %1 to double
  %i.gw = fdiv reassoc nsz arcp double %i.gu, %i.gv
  %i.gx = tail call reassoc nsz arcp double @log(double noundef %i.gw) #4
  %i.gy = fmul reassoc nsz arcp double %i.gx, f0x3FF71547652B82FE
  %i.gz = fptrunc reassoc nsz arcp double %i.gy to float
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q, %bb.p
  %.sink569 = phi float [ 0.000000e+00, %bb.p ], [ %i.gz, %bb.q ], [ 3.400000e+01, %bb.o ]
  %.9 = phi i32 [ %spec.select431, %bb.p ], [ %spec.select431, %bb.q ], [ %.7, %bb.o ]
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %.sink569, ptr %i.ha, align 4, !tbaa !12
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
