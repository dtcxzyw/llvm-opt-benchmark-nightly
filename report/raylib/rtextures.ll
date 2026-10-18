Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 115
begin_hunk_0_@GenImageGradientLinear:bb.a
  br i1 %i.y, label %.preheader.preheader, label %._crit_edge68.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aj = zext nneg i32 %1 to i64                 ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ugt i32 %2, 3
  %ident.check.not = icmp eq i32 %1, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %min.iters.check76 = icmp ult i32 %2, 16
  %i.ak = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert77 = insertelement <16 x float> poison, float %i.j, i64 0
  %broadcast.splat78 = shufflevector <16 x float> %broadcast.splatinsert77, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <16 x float> poison, float %i.r, i64 0
  %broadcast.splat80 = shufflevector <16 x float> %broadcast.splatinsert79, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert81 = insertelement <16 x float> poison, float %i.w, i64 0
  %broadcast.splat82 = shufflevector <16 x float> %broadcast.splatinsert81, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat84 = shufflevector <4 x float> %i.ai, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat86 = shufflevector <4 x float> %i.ad, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat88 = shufflevector <4 x float> %i.ad, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat90 = shufflevector <4 x float> %i.ai, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat92 = shufflevector <4 x float> %i.ai, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat94 = shufflevector <4 x float> %i.ad, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat96 = shufflevector <4 x float> %i.ad, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat98 = shufflevector <4 x float> %i.ai, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  %n.vec99 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert102 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat103 = shufflevector <4 x float> %broadcast.splatinsert102, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert104 = insertelement <4 x float> poison, float %i.r, i64 0
  %broadcast.splat105 = shufflevector <4 x float> %broadcast.splatinsert104, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat107 = shufflevector <4 x float> %broadcast.splatinsert106, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat109 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat111 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat113 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat115 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat117 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat119 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat121 = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat123 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %cmp.n131 = icmp eq i64 %n.vec99, %wide.trip.count
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv70 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next71, %._crit_edge ] ; 3 uses
  %i.al = trunc nuw nsw i64 %indvars.iv70 to i32
  %i.am = uitofp nneg i32 %i.al to float
  %i.an = fmul float %i.i, %i.am                  ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv70 ; 3 uses
  br i1 %or.cond, label %vector.main.loop.iter.check, label %vec.epilog.scalar.ph.preheader

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check76, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.an, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ao = uitofp nneg <16 x i32> %vec.ind to <16 x float>
  %i.ap = fmul <16 x float> %broadcast.splat78, %i.ao
  %i.aq = fadd <16 x float> %broadcast.splat, %i.ap
  %i.ar = fadd <16 x float> %broadcast.splat80, %i.aq
  %i.as = fdiv <16 x float> %i.ar, %broadcast.splat82 ; 2 uses
  %i.at = fcmp ogt <16 x float> %i.as, splat (float 1.000000e+00)
  %i.au = select <16 x i1> %i.at, <16 x float> splat (float 1.000000e+00), <16 x float> %i.as ; 2 uses
  %i.av = fcmp olt <16 x float> %i.au, splat (float -1.000000e+00)
  %i.aw = select <16 x i1> %i.av, <16 x float> splat (float -1.000000e+00), <16 x float> %i.au
  %i.ax = fmul <16 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = fadd <16 x float> %i.ax, splat (float 5.000000e-01) ; 5 uses
  %i.az = fmul <16 x float> %i.ay, %broadcast.splat84
  %i.ba = fsub <16 x float> splat (float 1.000000e+00), %i.ay ; 4 uses
  %i.bb = fmul <16 x float> %i.ba, %broadcast.splat86
  %i.bc = fadd <16 x float> %i.az, %i.bb
  %i.bd = fptosi <16 x float> %i.bc to <16 x i32>
  %i.be = trunc <16 x i32> %i.bd to <16 x i8>
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  %i.bg = fmul <16 x float> %i.ay, %broadcast.splat88
  %i.bh = fmul <16 x float> %i.ba, %broadcast.splat90
  %i.bi = fadd <16 x float> %i.bg, %i.bh
  %i.bj = fptosi <16 x float> %i.bi to <16 x i32>
  %i.bk = trunc <16 x i32> %i.bj to <16 x i8>
  %i.bl = fmul <16 x float> %i.ay, %broadcast.splat92
  %i.bm = fmul <16 x float> %i.ba, %broadcast.splat94
  %i.bn = fadd <16 x float> %i.bl, %i.bm
  %i.bo = fptosi <16 x float> %i.bn to <16 x i32>
  %i.bp = trunc <16 x i32> %i.bo to <16 x i8>
  %i.bq = fmul <16 x float> %i.ay, %broadcast.splat96
  %i.br = fmul <16 x float> %i.ba, %broadcast.splat98
  %i.bs = fadd <16 x float> %i.bq, %i.br
  %i.bt = fptosi <16 x float> %i.bs to <16 x i32>
  %i.bu = trunc <16 x i32> %i.bt to <16 x i8>
  %i.bv = shufflevector <16 x i8> %i.be, <16 x i8> %i.bk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bw = shufflevector <16 x i8> %i.bp, <16 x i8> %i.bu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i8> %i.bv, <32 x i8> %i.bw, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec, ptr %i.bf, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert100 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat101 = shufflevector <4 x float> %broadcast.splatinsert100, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert124 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat125 = shufflevector <4 x i32> %broadcast.splatinsert124, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat125, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind127 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next130, %vec.epilog.vector.body ] ; 2 uses
  %i.bz = uitofp nneg <4 x i32> %vec.ind127 to <4 x float>
  %i.ca = fmul <4 x float> %broadcast.splat103, %i.bz
  %i.cb = fadd <4 x float> %broadcast.splat101, %i.ca
  %i.cc = fadd <4 x float> %broadcast.splat105, %i.cb
  %i.cd = fdiv <4 x float> %i.cc, %broadcast.splat107 ; 2 uses
  %i.ce = fcmp ogt <4 x float> %i.cd, splat (float 1.000000e+00)
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cd ; 2 uses
  %i.cg = fcmp olt <4 x float> %i.cf, splat (float -1.000000e+00)
  %i.ch = select <4 x i1> %i.cg, <4 x float> splat (float -1.000000e+00), <4 x float> %i.cf
  %i.ci = fmul <4 x float> %i.ch, splat (float 5.000000e-01)
  %i.cj = fadd <4 x float> %i.ci, splat (float 5.000000e-01) ; 5 uses
  %i.ck = fmul <4 x float> %i.cj, %broadcast.splat109
  %i.cl = fsub <4 x float> splat (float 1.000000e+00), %i.cj ; 4 uses
  %i.cm = fmul <4 x float> %i.cl, %broadcast.splat111
  %i.cn = fadd <4 x float> %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index126
  %i.cp = fmul <4 x float> %i.cj, %broadcast.splat113
  %i.cq = fmul <4 x float> %i.cl, %broadcast.splat115
  %i.cr = fadd <4 x float> %i.cp, %i.cq
  %i.cs = fmul <4 x float> %i.cj, %broadcast.splat117
  %i.ct = fmul <4 x float> %i.cl, %broadcast.splat119
  %i.cu = fadd <4 x float> %i.cs, %i.ct
  %i.cv = fmul <4 x float> %i.cj, %broadcast.splat121
  %i.cw = fmul <4 x float> %i.cl, %broadcast.splat123
  %i.cx = fadd <4 x float> %i.cv, %i.cw
  %i.cy = shufflevector <4 x float> %i.cn, <4 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cz = fptosi <8 x float> %i.cy to <8 x i32>
  %i.da = trunc <8 x i32> %i.cz to <8 x i8>
  %i.db = shufflevector <4 x float> %i.cu, <4 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dc = fptosi <8 x float> %i.db to <8 x i32>
  %i.dd = trunc <8 x i32> %i.dc to <8 x i8>
  %interleaved.vec128 = shufflevector <8 x i8> %i.da, <8 x i8> %i.dd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec128, ptr %i.co, align 1
  %index.next129 = add nuw i64 %index126, 4       ; 2 uses
  %vec.ind.next130 = add <4 x i32> %vec.ind127, splat (i32 4)
  %i.de = icmp eq i64 %index.next129, %n.vec99
  br i1 %i.de, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !102

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n131, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge68.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.di, align 4
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %i.aj
  br i1 %exitcond74.not, label %._crit_edge68.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dj = trunc nuw nsw i64 %indvars.iv to i32
  %i.dk = uitofp nneg i32 %i.dj to float
  %i.dl = fmul float %i.j, %i.dk
  %i.dm = fadd float %i.an, %i.dl
  %i.dn = fadd float %i.r, %i.dm
  %i.do = fdiv float %i.dn, %i.w                  ; 2 uses
  %i.dp = fcmp ogt float %i.do, 1.000000e+00
  %i.dq = select i1 %i.dp, float 1.000000e+00, float %i.do ; 2 uses
  %i.dr = fcmp olt float %i.dq, -1.000000e+00
  %i.ds = select i1 %i.dr, float -1.000000e+00, float %i.dq
  %i.dt = fmul float %i.ds, 5.000000e-01
  %6 = fadd float %i.dt, 5.000000e-01             ; 2 uses
  %7 = fsub float 1.000000e+00, %6
  %8 = mul nuw nsw i64 %indvars.iv, %i.aj
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %8
  %i.du = insertelement <4 x float> poison, float %6, i64 0
  %i.dv = insertelement <4 x float> %i.du, float %7, i64 1 ; 2 uses
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dx = fmul <4 x float> %i.dw, %i.ad
  %i.dy = shufflevector <4 x float> %i.dv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dz = fmul <4 x float> %i.dy, %i.ai
  %i.ea = fadd <4 x float> %i.dx, %i.dz
  %i.eb = fptosi <4 x float> %i.ea to <4 x i32>
  %i.ec = shufflevector <4 x i32> %i.eb, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ed = trunc <4 x i32> %i.ec to <4 x i8>
  store <4 x i8> %i.ed, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !103
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImageGradientRadial(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 %4, i32 %5) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = sitofp i32 %1 to float
  %i.f = fmul nnan float %i.e, 5.000000e-01
  %i.g = sitofp i32 %2 to float
  %i.h = fmul nnan float %i.g, 5.000000e-01
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge61.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %.in = sitofp i32 %. to float
  %i.j = fmul nnan float %.in, 5.000000e-01       ; 2 uses
  %i.k = icmp sgt i32 %1, 0
  %i.l = fmul float %3, %i.j
  %i.m = fsub float 1.000000e+00, %3
  %i.n = fmul float %i.m, %i.j
  %i.o = bitcast i32 %5 to <4 x i8>
  %i.p = uitofp <4 x i8> %i.o to <4 x float>
  %i.q = bitcast i32 %4 to <4 x i8>
  %i.r = uitofp <4 x i8> %i.q to <4 x float>
  br i1 %i.k, label %.preheader.preheader, label %._crit_edge61.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count66 = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv63 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next64, %._crit_edge ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv63 to i32
  %i.u = uitofp nneg i32 %i.t to float
  %i.v = fsub float %i.u, %i.h
  %i.w = mul nuw nsw i64 %indvars.iv63, %i.s
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  br label %bb.b

._crit_edge61.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.aa, align 4
  ret void

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge61.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = uitofp nneg i32 %i.ab to float
  %i.ad = fsub float %i.ac, %i.f
  %i.ae = tail call float @hypotf(float noundef %i.ad, float noundef %i.v) #52
  %i.af = fsub float %i.ae, %i.l
  %i.ag = fdiv float %i.af, %i.n
  %i.ah = tail call nsz float @llvm.maxnum.f32(float %i.ag, float 0.000000e+00)
  %i.ai = tail call nsz float @llvm.minnum.f32(float %i.ah, float 1.000000e+00) ; 2 uses
  %i.aj = fsub nnan float 1.000000e+00, %i.ai
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ak = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = fmul nnan <4 x float> %i.al, %i.p
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = fmul <4 x float> %i.ao, %i.r
  %i.aq = fadd <4 x float> %i.am, %i.ap
  %i.ar = fptosi <4 x float> %i.aq to <4 x i32>
  %i.as = trunc <4 x i32> %i.ar to <4 x i8>
  store <4 x i8> %i.as, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #30

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImageGradientSquare(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 %4, i32 %5) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = sitofp i32 %1 to float
  %i.f = fmul nnan float %i.e, 5.000000e-01       ; 4 uses
  %i.g = sitofp i32 %2 to float
  %i.h = fmul nnan float %i.g, 5.000000e-01       ; 2 uses
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge59.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.j = icmp sgt i32 %1, 0
  %i.k = fsub float 1.000000e+00, %3              ; 3 uses
  %i.l = bitcast i32 %5 to <4 x i8>
  %i.m = uitofp <4 x i8> %i.l to <4 x float>      ; 9 uses
  %i.n = bitcast i32 %4 to <4 x i8>
  %i.o = uitofp <4 x i8> %i.n to <4 x float>      ; 9 uses
  br i1 %i.j, label %.preheader.preheader, label %._crit_edge59.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.p = zext nneg i32 %1 to i64                  ; 7 uses
  %wide.trip.count64 = zext nneg i32 %2 to i64
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check67 = icmp ult i32 %1, 16
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 2147483632               ; 4 uses
  %broadcast.splatinsert68 = insertelement <16 x float> poison, float %i.f, i64 0
  %broadcast.splat69 = shufflevector <16 x float> %broadcast.splatinsert68, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert70 = insertelement <16 x float> poison, float %3, i64 0
  %broadcast.splat71 = shufflevector <16 x float> %broadcast.splatinsert70, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <16 x float> poison, float %i.k, i64 0
  %broadcast.splat73 = shufflevector <16 x float> %broadcast.splatinsert72, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat75 = shufflevector <4 x float> %i.m, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat77 = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat79 = shufflevector <4 x float> %i.m, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat81 = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat83 = shufflevector <4 x float> %i.m, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat85 = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat87 = shufflevector <4 x float> %i.m, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat89 = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %cmp.n = icmp eq i64 %n.vec, %i.p
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  %n.vec90 = and i64 %i.p, 2147483644             ; 3 uses
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat100 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat102 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat104 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat106 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat108 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat110 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat112 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat114 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %cmp.n122 = icmp eq i64 %n.vec90, %i.p
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv61 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next62, %._crit_edge ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fsub float %i.s, %i.h
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fdiv float %i.u, %i.h                    ; 3 uses
  %i.w = mul nuw nsw i64 %indvars.iv61, %i.p
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.v, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.x = uitofp nneg <16 x i32> %vec.ind to <16 x float>
  %i.y = fsub <16 x float> %i.x, %broadcast.splat69
end_hunk_0
