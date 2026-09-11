Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/fixed_intrin_sse2?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@FLAC__fixed_compute_best_predictor_intrin_sse2:bb.a
  %i.ar = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bo, %bb.b ]
  %i.as = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bl, %bb.b ]
  %i.at = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bi, %bb.b ]
  %i.au = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bf, %bb.b ]
  %i.av = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.bc, %bb.b ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11
  %.sroa.0.0.vec.insert = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ay = load i32, ptr %gep, align 4, !tbaa !11
  %.sroa.0.4.vec.insert = insertelement <4 x i32> %.sroa.0.0.vec.insert, i32 %i.ay, i64 1
  %gep390 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv
  %i.az = load i32, ptr %gep390, align 4, !tbaa !11
  %.sroa.0.8.vec.insert = insertelement <4 x i32> %.sroa.0.4.vec.insert, i32 %i.az, i64 2
  %gep392 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep391, i64 %indvars.iv
  %i.ba = load i32, ptr %gep392, align 4, !tbaa !11
  %.sroa.0.12.vec.insert = insertelement <4 x i32> %.sroa.0.8.vec.insert, i32 %i.ba, i64 3 ; 3 uses
  %i.bb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %.sroa.0.12.vec.insert, i1 false)
  %i.bc = add <4 x i32> %i.bb, %i.av              ; 2 uses
  %i.bd = sub <4 x i32> %.sroa.0.12.vec.insert, %i.aq ; 3 uses
  %i.be = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bd, i1 false)
  %i.bf = add <4 x i32> %i.be, %i.au              ; 2 uses
  %i.bg = sub <4 x i32> %i.bd, %i.ap              ; 3 uses
  %i.bh = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bg, i1 false)
  %i.bi = add <4 x i32> %i.bh, %i.at              ; 2 uses
  %i.bj = sub <4 x i32> %i.bg, %i.ao              ; 3 uses
  %i.bk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bj, i1 false)
  %i.bl = add <4 x i32> %i.bk, %i.as              ; 2 uses
  %i.bm = sub <4 x i32> %i.bj, %i.an
  %i.bn = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bm, i1 false)
  %i.bo = add <4 x i32> %i.bn, %i.ar              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !8

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.bp = shl nuw nsw i32 %i.a, 2
  %i.bq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bc)
  %i.br = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bf)
  %i.bs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bi)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.1.lcssa = phi i32 [ 0, %bb.a ], [ %i.bp, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa325 = phi i32 [ 0, %bb.a ], [ %i.bq, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa324 = phi i32 [ 0, %bb.a ], [ %i.br, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa323 = phi i32 [ 0, %bb.a ], [ %i.bs, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa322 = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.bl, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %bb.a ], [ %i.bo, %._crit_edge.loopexit ] ; 4 uses
  %i.bt = shufflevector <4 x i32> %.lcssa, <4 x i32> %.lcssa322, <2 x i32> <i32 0, i32 4>
  %i.bu = shufflevector <4 x i32> %.lcssa, <4 x i32> %.lcssa322, <2 x i32> <i32 1, i32 5>
  %i.bv = add nsw <2 x i32> %i.bt, %i.bu
  %i.bw = shufflevector <4 x i32> %.lcssa, <4 x i32> %.lcssa322, <2 x i32> <i32 2, i32 6>
  %i.bx = add nsw <2 x i32> %i.bv, %i.bw
  %i.by = shufflevector <4 x i32> %.lcssa, <4 x i32> %.lcssa322, <2 x i32> <i32 3, i32 7>
  %i.bz = add nsw <2 x i32> %i.bx, %i.by          ; 3 uses
  %i.ca = and i32 %1, 3
  %.not = icmp ne i32 %i.ca, 0
  %i.cb = icmp slt i32 %.1.lcssa, %1
  %or.cond = select i1 %.not, i1 %i.cb, i1 false
  br i1 %or.cond, label %.lr.ph344.preheader, label %.loopexit

.lr.ph344.preheader:                              ; preds = %._crit_edge
  %i.cc = zext nneg i32 %.1.lcssa to i64          ; 4 uses
  %i.cd = getelementptr [4 x i8], ptr %0, i64 %i.cc ; 4 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11 ; 2 uses
  %.neg350.neg = shl i32 %i.cf, 1
  %i.cg = getelementptr i8, ptr %i.cd, i64 -8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !11 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.cd, i64 -16
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !11
  %i.ck = add i32 %i.ch, %i.cj
  %.neg316 = sub i32 %.neg350.neg, %i.ck
  %.neg = sub i32 %i.cf, %i.ch
  %i.cl = getelementptr i8, ptr %i.cd, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !11 ; 3 uses
  %i.cn = sub nsw i32 %i.cm, %i.ch                ; 3 uses
  %i.co = add i32 %.neg, %i.cn                    ; 3 uses
  %i.cp = add i32 %.neg316, %i.co                 ; 2 uses
  %i.cq = xor i32 %.1.lcssa, -1
  %i.cr = add i32 %1, %i.cq                       ; 2 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cr, 3
  br i1 %min.iters.check, label %.lr.ph344.preheader424, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph344.preheader
  %n.vec = and i64 %i.ct, 8589934588              ; 3 uses
  %i.cu = add nuw nsw i64 %n.vec, %i.cc
  %i.cv = shufflevector <2 x i32> %i.bz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cw = shufflevector <4 x i32> %i.cv, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> %i.cv, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.cy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa323, i64 0
  %i.cz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa324, i64 0
  %i.da = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.lcssa325, i64 0
  %vector.recur.init = insertelement <4 x i32> poison, i32 %i.cp, i64 3
  %vector.recur.init403 = insertelement <4 x i32> poison, i32 %i.co, i64 3
  %vector.recur.init405 = insertelement <4 x i32> poison, i32 %i.cn, i64 3
  %vector.recur.init407 = insertelement <4 x i32> poison, i32 %i.cm, i64 3
  %invariant.gep460 = getelementptr [4 x i8], ptr %0, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.dm, %vector.body ]
  %vector.recur404 = phi <4 x i32> [ %vector.recur.init403, %vector.ph ], [ %i.di, %vector.body ]
  %vector.recur406 = phi <4 x i32> [ %vector.recur.init405, %vector.ph ], [ %i.de, %vector.body ]
  %vector.recur408 = phi <4 x i32> [ %vector.recur.init407, %vector.ph ], [ %wide.load, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.cw, %vector.ph ], [ %i.ds, %vector.body ]
  %vec.phi409 = phi <4 x i32> [ %i.cx, %vector.ph ], [ %i.dp, %vector.body ]
  %vec.phi410 = phi <4 x i32> [ %i.cy, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi411 = phi <4 x i32> [ %i.cz, %vector.ph ], [ %i.dh, %vector.body ]
  %vec.phi412 = phi <4 x i32> [ %i.da, %vector.ph ], [ %i.dd, %vector.body ]
  %gep461 = getelementptr [4 x i8], ptr %invariant.gep460, i64 %index
  %wide.load = load <4 x i32>, ptr %gep461, align 4, !tbaa !11 ; 5 uses
  %i.db = shufflevector <4 x i32> %vector.recur408, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dc = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.dd = add <4 x i32> %i.dc, %vec.phi412        ; 2 uses
  %i.de = sub nsw <4 x i32> %wide.load, %i.db     ; 5 uses
  %i.df = shufflevector <4 x i32> %vector.recur406, <4 x i32> %i.de, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.de, i1 true)
  %i.dh = add <4 x i32> %i.dg, %vec.phi411        ; 2 uses
  %i.di = sub nsw <4 x i32> %i.de, %i.df          ; 5 uses
  %i.dj = shufflevector <4 x i32> %vector.recur404, <4 x i32> %i.di, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dk = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.di, i1 true)
  %i.dl = add <4 x i32> %i.dk, %vec.phi410        ; 2 uses
  %i.dm = sub nsw <4 x i32> %i.di, %i.dj          ; 5 uses
  %i.dn = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.dm, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.do = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dm, i1 true)
  %i.dp = add <4 x i32> %i.do, %vec.phi409        ; 2 uses
  %i.dq = sub nsw <4 x i32> %i.dm, %i.dn
  %i.dr = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.dq, i1 true)
  %i.ds = add <4 x i32> %i.dr, %vec.phi           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %i.du = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ds)
  %i.dv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dp)
  %i.dw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dl) ; 2 uses
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dh) ; 2 uses
  %i.dy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dd) ; 2 uses
  %vector.recur.extract = extractelement <4 x i32> %i.dm, i64 3
  %vector.recur.extract413 = extractelement <4 x i32> %i.di, i64 3
  %vector.recur.extract414 = extractelement <4 x i32> %i.de, i64 3
  %vector.recur.extract415 = extractelement <4 x i32> %wide.load, i64 3
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  %i.dz = insertelement <2 x i32> poison, i32 %i.du, i64 0
  %i.ea = insertelement <2 x i32> %i.dz, i32 %i.dv, i64 1 ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %.lr.ph344.preheader424

.lr.ph344.preheader424:                           ; preds = %.lr.ph344.preheader, %middle.block
  %indvars.iv364.ph = phi i64 [ %i.cc, %.lr.ph344.preheader ], [ %i.cu, %middle.block ]
  %.0342.ph = phi i32 [ %i.cp, %.lr.ph344.preheader ], [ %vector.recur.extract, %middle.block ]
  %.0221341.ph = phi i32 [ %i.co, %.lr.ph344.preheader ], [ %vector.recur.extract413, %middle.block ]
  %.0222340.ph = phi i32 [ %i.cn, %.lr.ph344.preheader ], [ %vector.recur.extract414, %middle.block ]
  %.0223339.ph = phi i32 [ %i.cm, %.lr.ph344.preheader ], [ %vector.recur.extract415, %middle.block ]
  %.0239335.ph = phi i32 [ %.lcssa323, %.lr.ph344.preheader ], [ %i.dw, %middle.block ]
  %.0241334.ph = phi i32 [ %.lcssa324, %.lr.ph344.preheader ], [ %i.dx, %middle.block ]
  %.0243333.ph = phi i32 [ %.lcssa325, %.lr.ph344.preheader ], [ %i.dy, %middle.block ]
  %.ph = phi <2 x i32> [ %i.bz, %.lr.ph344.preheader ], [ %i.ea, %middle.block ]
  br label %.lr.ph344

.lr.ph344:                                        ; preds = %.lr.ph344.preheader424, %.lr.ph344
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %.lr.ph344 ], [ %indvars.iv364.ph, %.lr.ph344.preheader424 ] ; 2 uses
  %.0342 = phi i32 [ %i.em, %.lr.ph344 ], [ %.0342.ph, %.lr.ph344.preheader424 ]
  %.0221341 = phi i32 [ %i.ej, %.lr.ph344 ], [ %.0221341.ph, %.lr.ph344.preheader424 ]
  %.0222340 = phi i32 [ %i.eg, %.lr.ph344 ], [ %.0222340.ph, %.lr.ph344.preheader424 ]
  %.0223339 = phi i32 [ %i.ed, %.lr.ph344 ], [ %.0223339.ph, %.lr.ph344.preheader424 ]
  %.0239335 = phi i32 [ %i.el, %.lr.ph344 ], [ %.0239335.ph, %.lr.ph344.preheader424 ]
  %.0241334 = phi i32 [ %i.ei, %.lr.ph344 ], [ %.0241334.ph, %.lr.ph344.preheader424 ]
  %.0243333 = phi i32 [ %i.ef, %.lr.ph344 ], [ %.0243333.ph, %.lr.ph344.preheader424 ]
  %i.eb = phi <2 x i32> [ %i.er, %.lr.ph344 ], [ %.ph, %.lr.ph344.preheader424 ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv364
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !11 ; 3 uses
  %i.ee = tail call i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ef = add i32 %i.ee, %.0243333                ; 2 uses
  %i.eg = sub nsw i32 %i.ed, %.0223339            ; 3 uses
  %i.eh = tail call i32 @llvm.abs.i32(i32 %i.eg, i1 true)
  %i.ei = add i32 %i.eh, %.0241334                ; 2 uses
  %i.ej = sub nsw i32 %i.eg, %.0222340            ; 3 uses
  %i.ek = tail call i32 @llvm.abs.i32(i32 %i.ej, i1 true)
  %i.el = add i32 %i.ek, %.0239335                ; 2 uses
  %i.em = sub nsw i32 %i.ej, %.0221341            ; 3 uses
  %i.en = sub nsw i32 %i.em, %.0342
  %i.eo = insertelement <2 x i32> poison, i32 %i.en, i64 0
  %i.ep = insertelement <2 x i32> %i.eo, i32 %i.em, i64 1
  %i.eq = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ep, i1 true)
  %i.er = add <2 x i32> %i.eq, %i.eb              ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.es = trunc nuw i64 %indvars.iv.next365 to i32
  %i.et = icmp sgt i32 %1, %i.es
  br i1 %i.et, label %.lr.ph344, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph344, %middle.block, %._crit_edge
  %.1244 = phi i32 [ %.lcssa325, %._crit_edge ], [ %i.dy, %middle.block ], [ %i.ef, %.lr.ph344 ] ; 3 uses
  %.1242 = phi i32 [ %.lcssa324, %._crit_edge ], [ %i.dx, %middle.block ], [ %i.ei, %.lr.ph344 ] ; 4 uses
  %.1240 = phi i32 [ %.lcssa323, %._crit_edge ], [ %i.dw, %middle.block ], [ %i.el, %.lr.ph344 ] ; 5 uses
  %i.eu = phi <2 x i32> [ %i.bz, %._crit_edge ], [ %i.ea, %middle.block ], [ %i.er, %.lr.ph344 ] ; 2 uses
  %3 = tail call i32 @llvm.umin.i32(i32 %.1242, i32 %.1240)
  %4 = extractelement <2 x i32> %i.eu, i64 1      ; 6 uses
  %..1238 = tail call i32 @llvm.umin.i32(i32 %3, i32 %4)
  %5 = extractelement <2 x i32> %i.eu, i64 0      ; 6 uses
  %i.ev = tail call i32 @llvm.umin.i32(i32 %..1238, i32 %5)
  %.not249 = icmp ugt i32 %.1244, %i.ev
  br i1 %.not249, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.loopexit
  %i.ew = tail call i32 @llvm.umin.i32(i32 %.1240, i32 %4)
  %..1236 = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 %5)
  %.not250 = icmp ugt i32 %.1242, %..1236
  br i1 %.not250, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.ex = tail call i32 @llvm.umin.i32(i32 %4, i32 %5)
  %.not251 = icmp ugt i32 %.1240, %i.ex
  br i1 %.not251, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not252 = icmp ugt i32 %4, %5
  %. = select i1 %.not252, i32 4, i32 3
  br label %.thread

bb.f:                                             ; preds = %.loopexit
  %.not253 = icmp eq i32 %.1244, 0
  br i1 %.not253, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0233307 = phi i32 [ 0, %bb.f ], [ %., %bb.e ], [ 1, %bb.c ], [ 2, %bb.d ]
  %i.ey = uitofp reassoc nsz arcp i32 %.1244 to double
  %i.ez = fmul reassoc nnan nsz arcp double %i.ey, f0x3FE62E42FEFA39EF
  %i.fa = uitofp reassoc nsz arcp i32 %1 to double
  %i.fb = fdiv reassoc nsz arcp double %i.ez, %i.fa
  %i.fc = tail call reassoc nsz arcp double @log(double noundef %i.fb) #4
  %i.fd = fmul reassoc nsz arcp double %i.fc, f0x3FF71547652B82FE
  %i.fe = fptrunc reassoc nsz arcp double %i.fd to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.0233308 = phi i32 [ %.0233307, %.thread ], [ 0, %bb.f ]
  %i.ff = phi float [ %i.fe, %.thread ], [ 0.000000e+00, %bb.f ]
  store float %i.ff, ptr %2, align 4, !tbaa !16
  %.not254 = icmp eq i32 %.1242, 0
  br i1 %.not254, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fg = uitofp reassoc nsz arcp i32 %.1242 to double
  %i.fh = fmul reassoc nnan nsz arcp double %i.fg, f0x3FE62E42FEFA39EF
  %i.fi = uitofp reassoc nsz arcp i32 %1 to double
  %i.fj = fdiv reassoc nsz arcp double %i.fh, %i.fi
  %i.fk = tail call reassoc nsz arcp double @log(double noundef %i.fj) #4
  %i.fl = fmul reassoc nsz arcp double %i.fk, f0x3FF71547652B82FE
  %i.fm = fptrunc reassoc nsz arcp double %i.fl to float
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.fn = phi float [ %i.fm, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.fn, ptr %i.fo, align 4, !tbaa !16
  %.not255 = icmp eq i32 %.1240, 0
  br i1 %.not255, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fp = uitofp reassoc nsz arcp i32 %.1240 to double
  %i.fq = fmul reassoc nnan nsz arcp double %i.fp, f0x3FE62E42FEFA39EF
  %i.fr = uitofp reassoc nsz arcp i32 %1 to double
  %i.fs = fdiv reassoc nsz arcp double %i.fq, %i.fr
  %i.ft = tail call reassoc nsz arcp double @log(double noundef %i.fs) #4
  %i.fu = fmul reassoc nsz arcp double %i.ft, f0x3FF71547652B82FE
  %i.fv = fptrunc reassoc nsz arcp double %i.fu to float
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.fw = phi float [ %i.fv, %bb.j ], [ 0.000000e+00, %bb.i ]
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.fw, ptr %i.fx, align 4, !tbaa !16
  %.not256 = icmp eq i32 %4, 0
  br i1 %.not256, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fy = uitofp reassoc nsz arcp i32 %4 to double
  %i.fz = fmul reassoc nnan nsz arcp double %i.fy, f0x3FE62E42FEFA39EF
  %i.ga = uitofp reassoc nsz arcp i32 %1 to double
  %i.gb = fdiv reassoc nsz arcp double %i.fz, %i.ga
  %i.gc = tail call reassoc nsz arcp double @log(double noundef %i.gb) #4
  %i.gd = fmul reassoc nsz arcp double %i.gc, f0x3FF71547652B82FE
  %i.ge = fptrunc reassoc nsz arcp double %i.gd to float
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.gf = phi float [ %i.ge, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.gf, ptr %i.gg, align 4, !tbaa !16
  %.not257 = icmp eq i32 %5, 0
  br i1 %.not257, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gh = uitofp reassoc nsz arcp i32 %5 to double
  %i.gi = fmul reassoc nnan nsz arcp double %i.gh, f0x3FE62E42FEFA39EF
  %i.gj = uitofp reassoc nsz arcp i32 %1 to double
  %i.gk = fdiv reassoc nsz arcp double %i.gi, %i.gj
  %i.gl = tail call reassoc nsz arcp double @log(double noundef %i.gk) #4
  %i.gm = fmul reassoc nsz arcp double %i.gl, f0x3FF71547652B82FE
  %i.gn = fptrunc reassoc nsz arcp double %i.gm to float
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.go = phi float [ %i.gn, %bb.n ], [ 0.000000e+00, %bb.m ]
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store float %i.go, ptr %i.gp, align 4, !tbaa !16
  ret i32 %.0233308
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = distinct !{!8, !12}
!9 = distinct !{!9, !12, !13, !14}
!10 = distinct !{!10, !12, !14, !13}
!11 = !{!5, !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = !{!"float", !4, i64 0}
!16 = !{!15, !15, i64 0}
end_hunk_0
