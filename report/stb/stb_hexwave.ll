Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_generate_samples:bb.a
  %i.a = alloca [128 x float], align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.b = load float, ptr %2, align 4, !tbaa !102  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = load i32, ptr @hexblep, align 8, !tbaa !23 ; 7 uses
  %i.d = shl i32 %i.c, 2                          ; 2 uses
  %i.e = tail call float @llvm.fabs.f32(float %3) ; 9 uses
  %i.f = fcmp oeq float %3, 0.000000e+00
  %i.g = fdiv float 1.000000e+00, %i.e
  %i.h = select i1 %i.f, float 0.000000e+00, float %i.g ; 4 uses
  %i.i = sdiv i32 %i.c, 2
  %i.j = icmp slt i32 %1, 1
  br i1 %i.j, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !19 ; 2 uses
  %i.m = fcmp une float %i.l, %i.e
  br i1 %i.m, label %.preheader180.preheader, label %bb.e

.preheader180.preheader:                          ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %i.p = fcmp olt float %i.b, %i.o
  br i1 %i.p, label %bb.c, label %.preheader180.1

.preheader180.1:                                  ; preds = %.preheader180.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.r = load float, ptr %i.q, align 8, !tbaa !31
  %i.s = fcmp olt float %i.b, %i.r
  br i1 %i.s, label %bb.c, label %.preheader180.2

.preheader180.2:                                  ; preds = %.preheader180.1
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.u = load float, ptr %i.t, align 4, !tbaa !31
  %i.v = fcmp olt float %i.b, %i.u
  br i1 %i.v, label %bb.c, label %.preheader180.3

.preheader180.3:                                  ; preds = %.preheader180.2
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = load float, ptr %i.w, align 16, !tbaa !31
  %i.y = fcmp olt float %i.b, %i.x
  br i1 %i.y, label %bb.c, label %.preheader180.4

.preheader180.4:                                  ; preds = %.preheader180.3
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.aa = load float, ptr %i.z, align 4, !tbaa !31
  %i.ab = fcmp olt float %i.b, %i.aa
  %spec.select = select i1 %i.ab, i64 5, i64 6
  br label %bb.c

bb.c:                                             ; preds = %.preheader180.4, %.preheader180.3, %.preheader180.2, %.preheader180.1, %.preheader180.preheader
  %.0123.lcssa = phi i64 [ 1, %.preheader180.preheader ], [ 4, %.preheader180.3 ], [ 2, %.preheader180.1 ], [ %spec.select, %.preheader180.4 ], [ 3, %.preheader180.2 ]
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %.0123.lcssa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !33 ; 2 uses
  %i.af = fcmp une float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.d, label %hex_blamp.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = fsub float %i.e, %i.l
  %i.ah = fmul float %i.ag, %i.ae                 ; 4 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 4 uses
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4, !tbaa !24 ; 2 uses
  %i.ak = sitofp i32 %i.aj to float
  %i.al = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 1) ; 2 uses
  %spec.select.i.i = add i32 %i.al, -1            ; 2 uses
  %i.am = mul i32 %spec.select.i.i, %i.c
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.ai, i64 %i.an ; 5 uses
  %i.ap = mul i32 %i.al, %i.c
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 5 uses
  %i.as = sitofp i32 %spec.select.i.i to float
  %i.at = fneg float %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ak, float 0.000000e+00, float %i.at) ; 4 uses
  %i.av = icmp sgt i32 %i.c, 0
  br i1 %i.av, label %.lr.ph.preheader.i.i, label %hex_blamp.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.aw = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.aw  ; 2 uses
  %i.ax = add nsw i64 %i.aq, %wide.trip.count.i.i
  %i.ay = shl nsw i64 %i.ax, 2
  %scevgep286 = getelementptr i8, ptr %i.ai, i64 %i.ay
  %i.az = add nsw i64 %i.an, %wide.trip.count.i.i
  %i.ba = shl nsw i64 %i.az, 2
  %scevgep287 = getelementptr i8, ptr %i.ai, i64 %i.ba
  %bound0 = icmp ult ptr %0, %scevgep286
  %bound1 = icmp ult ptr %i.ar, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0288 = icmp ult ptr %0, %scevgep287
  %bound1289 = icmp ult ptr %i.ao, %scevgep
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx = or i1 %found.conflict, %found.conflict290
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert291 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat292 = shufflevector <4 x float> %broadcast.splatinsert291, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !17, !alias.scope !103 ; 2 uses
  %wide.load293 = load <4 x float>, ptr %i.bc, align 4, !tbaa !17, !alias.scope !103 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load294 = load <4 x float>, ptr %i.bd, align 4, !tbaa !17, !alias.scope !104
  %wide.load295 = load <4 x float>, ptr %i.be, align 4, !tbaa !17, !alias.scope !104
  %i.bf = fsub <4 x float> %wide.load294, %wide.load
  %i.bg = fsub <4 x float> %wide.load295, %wide.load293
  %i.bh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %broadcast.splat, <4 x float> %wide.load293)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load296 = load <4 x float>, ptr %i.bj, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %wide.load297 = load <4 x float>, ptr %i.bk, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat292, <4 x float> %i.bh, <4 x float> %wide.load296)
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat292, <4 x float> %i.bi, <4 x float> %wide.load297)
  store <4 x float> %i.bl, ptr %i.bj, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  store <4 x float> %i.bm, ptr %i.bk, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %hex_blamp.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i.ph
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !17 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.ph
  %i.br = load float, ptr %i.bq, align 4, !tbaa !17
  %i.bs = fsub float %i.br, %i.bp
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.au, float %i.bp)
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !17
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.bt, float %i.bv)
  store float %i.bw, ptr %i.bu, align 4, !tbaa !17
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bx = add nsw i64 %wide.trip.count.i.i, -1
  %i.by = icmp eq i64 %indvars.iv.i.i.ph, %i.bx
  br i1 %i.by, label %hex_blamp.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !17 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !17
  %i.cd = fsub float %i.cc, %i.ca
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.au, float %i.ca)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !17
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ce, float %i.cg)
  store float %i.ch, ptr %i.cf, align 4, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !17 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !17
  %i.cm = fsub float %i.cl, %i.cj
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.au, float %i.cj)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !17
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.cn, float %i.cp)
  store float %i.cq, ptr %i.co, align 4, !tbaa !17
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %hex_blamp.exit, label %.lr.ph.i.i, !llvm.loop !73

hex_blamp.exit:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.d, %bb.c
  store float %i.e, ptr %i.k, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %hex_blamp.exit, %bb.b
  %i.cr = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cs = shl nuw nsw i64 %i.cr, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cs, i1 false)
  %i.ct = load i32, ptr @hexblep, align 8, !tbaa !23 ; 3 uses
  %i.cu = shl nsw i32 %i.ct, 1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.cw, i1 false)
  %.not = icmp slt i32 %1, %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.cy = sext i32 %i.d to i64                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %i.cx, i64 %i.cy, i1 false)
  %.pre = load i32, ptr @hexblep, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.cx, i64 %i.cy, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cz = phi i32 [ %i.ct, %bb.g ], [ %.pre, %bb.f ] ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.cz)
  %i.da = icmp sge i32 %1, %i.cz
  %i.db = sub nsw i32 %1, %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dh = sext i32 %i.i to i64
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 96
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.0122196 = phi float [ %i.b, %bb.h ], [ %.4, %.loopexit ] ; 10 uses
  %i.dq = phi i1 [ false, %bb.h ], [ true, %.loopexit ] ; 3 uses
  %i.dr = phi i1 [ true, %bb.h ], [ false, %.loopexit ]
  %brmerge = select i1 %i.dq, i1 true, i1 %i.da
  %..mux = select i1 %i.dq, i32 %., i32 %i.db     ; 2 uses
  %.mux = select i1 %i.dq, ptr %i.a, ptr %0       ; 12 uses
  br i1 %brmerge, label %.preheader205, label %.loopexit

.preheader205:                                    ; preds = %bb.i
  %i.ds = load float, ptr %i.di, align 4, !tbaa !31
  %i.dt = fcmp olt float %.0122196, %i.ds
  br i1 %i.dt, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.preheader205
  %i.du = load float, ptr %i.dj, align 8, !tbaa !31
  %i.dv = fcmp olt float %.0122196, %i.du
  br i1 %i.dv, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = load float, ptr %i.dk, align 4, !tbaa !31
  %i.dx = fcmp olt float %.0122196, %i.dw
  br i1 %i.dx, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = load float, ptr %i.dl, align 16, !tbaa !31
  %i.dz = fcmp olt float %.0122196, %i.dy
  br i1 %i.dz, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ea = load float, ptr %i.dm, align 4, !tbaa !31
  %i.eb = fcmp olt float %.0122196, %i.ea
  br i1 %i.eb, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ec = load float, ptr %i.dn, align 8, !tbaa !31
  %i.ed = fcmp olt float %.0122196, %i.ec
  br i1 %i.ed, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ee = load float, ptr %i.do, align 4, !tbaa !31
  %i.ef = fcmp olt float %.0122196, %i.ee
  br i1 %i.ef, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = load float, ptr %i.dp, align 16, !tbaa !31
  %i.eh = fcmp olt float %.0122196, %i.eg
  %spec.select276 = select i1 %i.eh, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.preheader205
  %.1124.lcssa = phi i32 [ 0, %.preheader205 ], [ 4, %bb.m ], [ 6, %bb.o ], [ 1, %bb.j ], [ %spec.select276, %bb.p ], [ 2, %bb.k ], [ 5, %bb.n ], [ 3, %bb.l ]
  %i.ei = load i32, ptr @hexblep, align 8         ; 14 uses
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4 ; 2 uses
  %i.ek = sitofp i32 %i.ej to float               ; 8 uses
  %i.el = add i32 %i.ej, -1                       ; 4 uses
  %i.em = icmp sgt i32 %i.ei, 0                   ; 4 uses
  %wide.trip.count.i.i150 = zext i32 %i.ei to i64 ; 21 uses
  %sext = sext i32 %..mux to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.mux, i64 %i.dh
  %i.en = shl nuw nsw i64 %wide.trip.count.i.i150, 2 ; 9 uses
  %scevgep364 = getelementptr i8, ptr %.mux, i64 %i.en
  %scevgep396 = getelementptr i8, ptr %.mux, i64 %i.en
  %min.iters.check409 = icmp ult i32 %i.ei, 8
  %n.vec411 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n426 = icmp eq i64 %n.vec411, %wide.trip.count.i.i150
  %xtraiter452 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  %i.eo = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check376 = icmp ult i32 %i.ei, 8
  %n.vec378 = and i64 %wide.trip.count.i.i150, 4294967288 ; 3 uses
  %cmp.n393 = icmp eq i64 %n.vec378, %wide.trip.count.i.i150
  %xtraiter454 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod455.not = icmp eq i64 %xtraiter454, 0
  %i.ep = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check343 = icmp ult i32 %i.ei, 8
  %n.vec345 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n360 = icmp eq i64 %n.vec345, %wide.trip.count.i.i150
  %xtraiter456 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  %i.eq = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check311 = icmp ult i32 %i.ei, 8
  %n.vec313 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n328 = icmp eq i64 %n.vec313, %wide.trip.count.i.i150
  %xtraiter458 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  %i.er = add nsw i64 %wide.trip.count.i.i150, -1
  br label %hex_blamp.exit178

hex_blamp.exit178:                                ; preds = %hex_blamp.exit178.backedge, %bb.q
  %.0127 = phi i32 [ 0, %bb.q ], [ %.1128.lcssa, %hex_blamp.exit178.backedge ] ; 3 uses
  %.2125 = phi i32 [ %.1124.lcssa, %bb.q ], [ %.2125.be, %hex_blamp.exit178.backedge ] ; 2 uses
  %.1 = phi float [ %.0122196, %bb.q ], [ %.1.be, %hex_blamp.exit178.backedge ] ; 4 uses
  %i.es = add nsw i32 %.2125, 1                   ; 3 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [12 x i8], ptr %4, i64 %i.et ; 4 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !31 ; 5 uses
  %i.ew = fcmp olt float %.1, %i.ev
  %i.ex = sext i32 %.2125 to i64                  ; 2 uses
  %i.ey = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ex ; 4 uses
  br i1 %i.ew, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %hex_blamp.exit178
  %.pre218 = load float, ptr %i.ey, align 4, !tbaa !31
  br label %._crit_edge

.lr.ph:                                           ; preds = %hex_blamp.exit178
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fb = icmp eq i32 %.0127, %..mux
  br i1 %i.fb, label %.loopexit, label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph
  %i.fc = sext i32 %.0127 to i64
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !32
  %i.fe = load float, ptr %i.fa, align 4, !tbaa !33
  %i.ff = load float, ptr %i.ey, align 4, !tbaa !31 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.fg = icmp eq i64 %indvars.iv.next, %sext
  br i1 %i.fg, label %.loopexit, label %bb.s, !llvm.loop !74

bb.s:                                             ; preds = %.lr.ph284, %bb.r
  %.2190283 = phi float [ %.1, %.lr.ph284 ], [ %i.fl, %bb.r ] ; 2 uses
  %indvars.iv282 = phi i64 [ %i.fc, %.lr.ph284 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.fh = fsub float %.2190283, %i.ff
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.fh, float %i.fd)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv282 ; 2 uses
  %i.fj = load float, ptr %gep, align 4, !tbaa !17
  %i.fk = fadd float %i.fj, %i.fi
  store float %i.fk, ptr %gep, align 4, !tbaa !17
  %i.fl = fadd float %i.e, %.2190283              ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv282, 1 ; 3 uses
  %i.fm = fcmp olt float %i.fl, %i.ev
  br i1 %i.fm, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.fn = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.fo = phi float [ %.pre218, %.._crit_edge_crit_edge ], [ %i.ff, %._crit_edge.loopexit ]
  %.1128.lcssa = phi i32 [ %.0127, %.._crit_edge_crit_edge ], [ %i.fn, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi float [ %.1, %.._crit_edge_crit_edge ], [ %i.fl, %._crit_edge.loopexit ] ; 4 uses
  %i.fp = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ex ; 3 uses
  %i.fq = fcmp oeq float %i.fo, %i.ev
  %i.fr = sext i32 %.1128.lcssa to i64            ; 10 uses
  br i1 %i.fq, label %bb.t, label %hex_blep.exit

bb.t:                                             ; preds = %._crit_edge
  %i.fs = getelementptr [4 x i8], ptr %.mux, i64 %i.fr ; 6 uses
  %i.ft = fsub float %.2.lcssa, %i.ev
  %i.fu = fmul float %i.h, %i.ft                  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !32
  %i.fz = fsub float %i.fw, %i.fy                 ; 4 uses
end_hunk_0
begin_hunk_1_@hexwave_generate_samples:bb.a
  br i1 %i.nl, label %bb.x, label %hex_blamp.exit178.backedge

bb.x:                                             ; preds = %hex_blep.exit170
  %i.nm = fmul float %i.h, %i.ky                  ; 2 uses
  %i.nn = fsub float %i.nk, %i.la
  %i.no = fmul float %i.e, %i.nn                  ; 4 uses
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 3 uses
  %i.nq = fmul float %i.nm, %i.ek
  %i.nr = fptosi float %i.nq to i32
  %spec.select.i.i171 = tail call i32 @llvm.smin.i32(i32 %i.nr, i32 %i.el) ; 3 uses
  %i.ns = mul i32 %spec.select.i.i171, %i.ei
  %i.nt = sext i32 %i.ns to i64                   ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %i.np, i64 %i.nt ; 5 uses
  %i.nv = add i32 %spec.select.i.i171, 1
  %i.nw = mul i32 %i.nv, %i.ei
  %i.nx = sext i32 %i.nw to i64                   ; 2 uses
  %i.ny = getelementptr [4 x i8], ptr %i.np, i64 %i.nx ; 5 uses
  %i.nz = sitofp i32 %spec.select.i.i171 to float
  %i.oa = fneg float %i.nz
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.nm, float %i.ek, float %i.oa) ; 4 uses
  br i1 %i.em, label %.lr.ph.i.i174.preheader, label %hex_blamp.exit178.backedge

.lr.ph.i.i174.preheader:                          ; preds = %bb.x
  br i1 %min.iters.check311, label %.lr.ph.i.i174.preheader442, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.i.i174.preheader
  %scevgep299 = getelementptr i8, ptr %i.kw, i64 %i.en ; 2 uses
  %scevgep300 = getelementptr i8, ptr %i.np, i64 %i.en ; 2 uses
  %i.oc = shl nsw i64 %i.nx, 2
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.oc
  %i.od = shl nsw i64 %i.nt, 2
  %scevgep302 = getelementptr i8, ptr %scevgep300, i64 %i.od
  %bound0303 = icmp ult ptr %i.kw, %scevgep301
  %bound1304 = icmp ult ptr %i.ny, %scevgep299
  %found.conflict305 = and i1 %bound0303, %bound1304
  %bound0306 = icmp ult ptr %i.kw, %scevgep302
  %bound1307 = icmp ult ptr %i.nu, %scevgep299
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %found.conflict305, %found.conflict308
  br i1 %conflict.rdx309, label %.lr.ph.i.i174.preheader442, label %vector.ph312

vector.ph312:                                     ; preds = %vector.memcheck298
  %broadcast.splatinsert314 = insertelement <4 x float> poison, float %i.ob, i64 0
  %broadcast.splat315 = shufflevector <4 x float> %broadcast.splatinsert314, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert316 = insertelement <4 x float> poison, float %i.no, i64 0
  %broadcast.splat317 = shufflevector <4 x float> %broadcast.splatinsert316, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph312
  %index319 = phi i64 [ 0, %vector.ph312 ], [ %index.next326, %vector.body318 ] ; 4 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index319 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %wide.load320 = load <4 x float>, ptr %i.oe, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %wide.load321 = load <4 x float>, ptr %i.of, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %index319 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load322 = load <4 x float>, ptr %i.og, align 4, !tbaa !17, !alias.scope !120
  %wide.load323 = load <4 x float>, ptr %i.oh, align 4, !tbaa !17, !alias.scope !120
  %i.oi = fsub <4 x float> %wide.load322, %wide.load320
  %i.oj = fsub <4 x float> %wide.load323, %wide.load321
  %i.ok = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oi, <4 x float> %broadcast.splat315, <4 x float> %wide.load320)
  %i.ol = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oj, <4 x float> %broadcast.splat315, <4 x float> %wide.load321)
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %index319 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %wide.load324 = load <4 x float>, ptr %i.om, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %wide.load325 = load <4 x float>, ptr %i.on, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %i.oo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat317, <4 x float> %i.ok, <4 x float> %wide.load324)
  %i.op = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat317, <4 x float> %i.ol, <4 x float> %wide.load325)
  store <4 x float> %i.oo, ptr %i.om, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  store <4 x float> %i.op, ptr %i.on, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %index.next326 = add nuw i64 %index319, 8       ; 2 uses
  %i.oq = icmp eq i64 %index.next326, %n.vec313
  br i1 %i.oq, label %middle.block327, label %vector.body318, !llvm.loop !97

middle.block327:                                  ; preds = %vector.body318
  br i1 %cmp.n328, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174.preheader442

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block327, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block327 ], [ %i.es, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.ky, %middle.block327 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.ky, %bb.x ], [ %i.ky, %hex_blep.exit170 ], [ %i.ky, %bb.u ], [ %i.ky, %.lr.ph.i.i174 ], [ %i.ky, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader442:                       ; preds = %vector.memcheck298, %.lr.ph.i.i174.preheader, %middle.block327
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck298 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec313, %middle.block327 ] ; 6 uses
  br i1 %lcmp.mod459.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader442
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i175.ph
  %i.os = load float, ptr %i.or, align 4, !tbaa !17 ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.i.i175.ph
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !17
  %i.ov = fsub float %i.ou, %i.os
  %i.ow = tail call float @llvm.fmuladd.f32(float %i.ov, float %i.ob, float %i.os)
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !17
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.no, float %i.ow, float %i.oy)
  store float %i.oz, ptr %i.ox, align 4, !tbaa !17
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader442
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader442 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.pa = icmp eq i64 %indvars.iv.i.i175.ph, %i.er
  br i1 %i.pa, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i175
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !17 ; 2 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.i.i175
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !17
  %i.pf = fsub float %i.pe, %i.pc
  %i.pg = tail call float @llvm.fmuladd.f32(float %i.pf, float %i.ob, float %i.pc)
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.i.i175 ; 2 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !17
  %i.pj = tail call float @llvm.fmuladd.f32(float %i.no, float %i.pg, float %i.pi)
  store float %i.pj, ptr %i.ph, align 4, !tbaa !17
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i176
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !17 ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv.next.i.i176
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17
  %i.po = fsub float %i.pn, %i.pl
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.po, float %i.ob, float %i.pl)
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !17
  %i.ps = tail call float @llvm.fmuladd.f32(float %i.no, float %i.pp, float %i.pr)
  store float %i.ps, ptr %i.pq, align 4, !tbaa !17
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fl, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dr, label %bb.i, label %bb.y, !llvm.loop !99

bb.y:                                             ; preds = %.loopexit
  %i.pt = load i32, ptr @hexblep, align 8, !tbaa !23 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.pt
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.pu = icmp sgt i32 %i.pt, 0
  br i1 %i.pu, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.pv = sub nsw i32 %1, %i.pt
  %i.pw = sext i32 %i.pv to i64
  %wide.trip.count = zext nneg i32 %i.pt to i64   ; 3 uses
  %invariant.gep274 = getelementptr [4 x i8], ptr %0, i64 %i.pw ; 2 uses
  %min.iters.check429 = icmp ult i32 %i.pt, 8
  br i1 %min.iters.check429, label %scalar.ph428.preheader, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph198
  %n.vec431 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph430
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next438, %vector.body432 ] ; 3 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index433 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %wide.load434 = load <4 x float>, ptr %i.px, align 16, !tbaa !17
  %wide.load435 = load <4 x float>, ptr %i.py, align 16, !tbaa !17
  %i.pz = getelementptr [4 x i8], ptr %invariant.gep274, i64 %index433 ; 3 uses
  %i.qa = getelementptr i8, ptr %i.pz, i64 16     ; 2 uses
  %wide.load436 = load <4 x float>, ptr %i.pz, align 4, !tbaa !17
  %wide.load437 = load <4 x float>, ptr %i.qa, align 4, !tbaa !17
  %i.qb = fadd <4 x float> %wide.load434, %wide.load436
  %i.qc = fadd <4 x float> %wide.load435, %wide.load437
  store <4 x float> %i.qb, ptr %i.pz, align 4, !tbaa !17
  store <4 x float> %i.qc, ptr %i.qa, align 4, !tbaa !17
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.qd = icmp eq i64 %index.next438, %n.vec431
  br i1 %i.qd, label %middle.block439, label %vector.body432, !llvm.loop !100

middle.block439:                                  ; preds = %vector.body432
  %cmp.n440 = icmp eq i64 %n.vec431, %wide.trip.count
  br i1 %cmp.n440, label %._crit_edge199, label %scalar.ph428.preheader

scalar.ph428.preheader:                           ; preds = %.lr.ph198, %middle.block439
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec431, %middle.block439 ]
  br label %scalar.ph428

scalar.ph428:                                     ; preds = %scalar.ph428.preheader, %scalar.ph428
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph428 ], [ %indvars.iv211.ph, %scalar.ph428.preheader ] ; 3 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !17
  %gep275 = getelementptr [4 x i8], ptr %invariant.gep274, i64 %indvars.iv211 ; 2 uses
  %i.qg = load float, ptr %gep275, align 4, !tbaa !17
  %i.qh = fadd float %i.qf, %i.qg
  store float %i.qh, ptr %gep275, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph428, !llvm.loop !101

._crit_edge199:                                   ; preds = %scalar.ph428, %middle.block439, %.preheader179
  %i.qi = sext i32 %i.pt to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.a, i64 %i.cs, i1 false), !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink279 = phi i64 [ %i.cr, %._crit_edge202 ], [ %i.qi, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink279
  %i.qk = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.qj, i64 %i.qk, i1 false)
  store float %.4, ptr %2, align 4, !tbaa !102
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @hexwave_shutdown(ptr nofree noundef readnone captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28
  tail call void @free(ptr noundef %i.a) #12
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29
  tail call void @free(ptr noundef %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @hexwave_init(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = sdiv i32 %0, 2                           ; 5 uses
  %i.b = mul i32 %i.a, %1                         ; 5 uses
  %i.c = add i32 %1, 1                            ; 3 uses
  %i.d = mul nsw i32 %i.c, %0                     ; 2 uses
  %i.e = shl i32 %i.b, 1                          ; 6 uses
  %i.f = or disjoint i32 %i.e, 1
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #13 ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.g
  %spec.store.select134 = tail call i32 @llvm.smin.i32(i32 %0, i32 64)
  %i.k = sext i32 %i.d to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #13
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %0, i32 64)
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.g ; 2 uses
  %i.q = sext i32 %i.d to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.store.select135 = phi i32 [ %spec.store.select134, %bb.b ], [ %spec.store.select, %bb.c ] ; 6 uses
  %i.s = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 25 uses
  %i.t = phi ptr [ %i.i, %bb.b ], [ %2, %bb.c ]   ; 26 uses
  %.0125 = phi ptr [ %i.m, %bb.b ], [ %i.p, %bb.c ] ; 17 uses
  %.0124 = phi ptr [ %i.n, %bb.b ], [ %i.r, %bb.c ] ; 17 uses
  %.not130147 = icmp slt i32 %i.b, 0
  br i1 %.not130147, label %.preheader140, label %.preheader142.lr.ph

.preheader142.lr.ph:                              ; preds = %bb.d
  %i.u = sitofp i32 %i.e to float
  %i.v = sitofp i32 %1 to float
  %i.w = zext nneg i32 %i.b to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0) ; 3 uses
  %i.x = or disjoint i32 %smax, 1
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.preheader142

.preheader142:                                    ; preds = %.preheader142.lr.ph, %.split.us
  %indvars.iv = phi i64 [ 0, %.preheader142.lr.ph ], [ %indvars.iv.next, %.split.us ] ; 6 uses
  %.0120149 = phi double [ 0.000000e+00, %.preheader142.lr.ph ], [ %.us-phi146, %.split.us ] ; 2 uses
  %.0122148 = phi double [ 0.000000e+00, %.preheader142.lr.ph ], [ %.us-phi, %.split.us ] ; 2 uses
  %i.y = icmp eq i64 %indvars.iv, %i.w
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = uitofp nneg i32 %i.z to float
  %i.ab = fmul nnan float %i.aa, f0x40C90FDA
  %i.ac = fdiv float %i.ab, %i.u                  ; 3 uses
  %i.ad = fpext float %i.ac to double             ; 17 uses
  %i.ae = fmul float %i.ac, 2.000000e+00
  %i.af = fpext float %i.ae to double             ; 17 uses
  %i.ag = fmul float %i.ac, 3.000000e+00
  %i.ah = fpext float %i.ag to double             ; 17 uses
  %i.ai = trunc i64 %indvars.iv to i32
  %i.aj = sub i32 %i.ai, %i.b
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fmul nnan float %i.ak, f0x40490FD8
  %i.am = fdiv float %i.al, %i.v                  ; 2 uses
  %i.an = fpext float %i.am to double
  br i1 %i.y, label %.preheader142.split.us.preheader, label %.preheader142.split

.preheader142.split.us.preheader:                 ; preds = %.preheader142
  %i.ao = tail call double @cos(double noundef %i.ad) #12
  %i.ap = tail call double @cos(double noundef %i.af) #12
  %i.aq = tail call double @cos(double noundef %i.ah) #12
  %i.ar = tail call double @cos(double noundef %i.ad) #12
  %i.as = tail call double @cos(double noundef %i.af) #12
  %i.at = tail call double @cos(double noundef %i.ah) #12
  %i.au = tail call double @cos(double noundef %i.ad) #12
  %i.av = tail call double @cos(double noundef %i.af) #12
  %i.aw = tail call double @cos(double noundef %i.ah) #12
  %i.ax = tail call double @cos(double noundef %i.ad) #12
  %i.ay = tail call double @cos(double noundef %i.af) #12
  %i.az = tail call double @cos(double noundef %i.ah) #12
  %i.ba = tail call double @cos(double noundef %i.ad) #12
  %i.bb = tail call double @cos(double noundef %i.af) #12
  %i.bc = tail call double @cos(double noundef %i.ah) #12
  %i.bd = tail call double @cos(double noundef %i.ad) #12
  %i.be = tail call double @cos(double noundef %i.af) #12
  %i.bf = tail call double @cos(double noundef %i.ah) #12
  %i.bg = tail call double @cos(double noundef %i.ad) #12
  %i.bh = tail call double @cos(double noundef %i.af) #12
  %i.bi = tail call double @cos(double noundef %i.ah) #12
  %i.bj = tail call double @cos(double noundef %i.ad) #12
  %i.bk = tail call double @cos(double noundef %i.af) #12
  %i.bl = tail call double @cos(double noundef %i.ah) #12
  %i.bm = tail call double @cos(double noundef %i.ad) #12
  %i.bn = tail call double @cos(double noundef %i.af) #12
  %i.bo = tail call double @cos(double noundef %i.ah) #12
  %i.bp = tail call double @cos(double noundef %i.ad) #12
  %i.bq = tail call double @cos(double noundef %i.af) #12
  %i.br = tail call double @cos(double noundef %i.ah) #12
  %i.bs = tail call double @cos(double noundef %i.ad) #12
  %i.bt = tail call double @cos(double noundef %i.af) #12
  %i.bu = tail call double @cos(double noundef %i.ah) #12
  %i.bv = tail call double @cos(double noundef %i.ad) #12
  %i.bw = tail call double @cos(double noundef %i.af) #12
  %i.bx = tail call double @cos(double noundef %i.ah) #12
  %i.by = tail call double @cos(double noundef %i.ad) #12
  %i.bz = tail call double @cos(double noundef %i.af) #12
  %i.ca = tail call double @cos(double noundef %i.ah) #12
  %i.cb = tail call double @cos(double noundef %i.ad) #12
  %i.cc = tail call double @cos(double noundef %i.af) #12
  %i.cd = tail call double @cos(double noundef %i.ah) #12
  %i.ce = tail call double @cos(double noundef %i.ad) #12
  %i.cf = tail call double @cos(double noundef %i.af) #12
  %i.cg = tail call double @cos(double noundef %i.ah) #12
  %i.ch = tail call double @cos(double noundef %i.ad) #12
  %i.ci = tail call double @cos(double noundef %i.af) #12
  %i.cj = tail call double @cos(double noundef %i.ah) #12
  %i.ck = insertelement <16 x double> poison, double %i.ao, i64 0
  %i.cl = insertelement <16 x double> %i.ck, double %i.ar, i64 1
  %i.cm = insertelement <16 x double> %i.cl, double %i.au, i64 2
  %i.cn = insertelement <16 x double> %i.cm, double %i.ax, i64 3
  %i.co = insertelement <16 x double> %i.cn, double %i.ba, i64 4
  %i.cp = insertelement <16 x double> %i.co, double %i.bd, i64 5
  %i.cq = insertelement <16 x double> %i.cp, double %i.bg, i64 6
  %i.cr = insertelement <16 x double> %i.cq, double %i.bj, i64 7
  %i.cs = insertelement <16 x double> %i.cr, double %i.bm, i64 8
  %i.ct = insertelement <16 x double> %i.cs, double %i.bp, i64 9
  %i.cu = insertelement <16 x double> %i.ct, double %i.bs, i64 10
  %i.cv = insertelement <16 x double> %i.cu, double %i.bv, i64 11
  %i.cw = insertelement <16 x double> %i.cv, double %i.by, i64 12
  %i.cx = insertelement <16 x double> %i.cw, double %i.cb, i64 13
  %i.cy = insertelement <16 x double> %i.cx, double %i.ce, i64 14
  %i.cz = insertelement <16 x double> %i.cy, double %i.ch, i64 15
  %i.da = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.cz, <16 x double> splat (double -4.873960e-01), <16 x double> splat (double 3.557680e-01))
  %i.db = insertelement <16 x double> poison, double %i.ap, i64 0
  %i.dc = insertelement <16 x double> %i.db, double %i.as, i64 1
  %i.dd = insertelement <16 x double> %i.dc, double %i.av, i64 2
  %i.de = insertelement <16 x double> %i.dd, double %i.ay, i64 3
  %i.df = insertelement <16 x double> %i.de, double %i.bb, i64 4
  %i.dg = insertelement <16 x double> %i.df, double %i.be, i64 5
  %i.dh = insertelement <16 x double> %i.dg, double %i.bh, i64 6
  %i.di = insertelement <16 x double> %i.dh, double %i.bk, i64 7
  %i.dj = insertelement <16 x double> %i.di, double %i.bn, i64 8
  %i.dk = insertelement <16 x double> %i.dj, double %i.bq, i64 9
  %i.dl = insertelement <16 x double> %i.dk, double %i.bt, i64 10
  %i.dm = insertelement <16 x double> %i.dl, double %i.bw, i64 11
  %i.dn = insertelement <16 x double> %i.dm, double %i.bz, i64 12
  %i.do = insertelement <16 x double> %i.dn, double %i.cc, i64 13
  %i.dp = insertelement <16 x double> %i.do, double %i.cf, i64 14
  %i.dq = insertelement <16 x double> %i.dp, double %i.ci, i64 15
  %i.dr = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.dq, <16 x double> splat (double 1.442320e-01), <16 x double> %i.da)
  %i.ds = insertelement <16 x double> poison, double %i.aq, i64 0
  %i.dt = insertelement <16 x double> %i.ds, double %i.at, i64 1
  %i.du = insertelement <16 x double> %i.dt, double %i.aw, i64 2
  %i.dv = insertelement <16 x double> %i.du, double %i.az, i64 3
  %i.dw = insertelement <16 x double> %i.dv, double %i.bc, i64 4
  %i.dx = insertelement <16 x double> %i.dw, double %i.bf, i64 5
  %i.dy = insertelement <16 x double> %i.dx, double %i.bi, i64 6
  %i.dz = insertelement <16 x double> %i.dy, double %i.bl, i64 7
end_hunk_1
