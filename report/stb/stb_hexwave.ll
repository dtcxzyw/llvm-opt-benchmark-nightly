Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_generate_samples:bb.a
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
  %i.ax = getelementptr i8, ptr %0, i64 %i.aw     ; 2 uses
  %i.ay = add nsw i64 %i.aq, %wide.trip.count.i.i
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az
  %i.bb = add nsw i64 %i.an, %wide.trip.count.i.i
  %i.bc = shl nsw i64 %i.bb, 2
  %i.bd = getelementptr i8, ptr %i.ai, i64 %i.bc
  %bound0 = icmp ult ptr %0, %i.ba
  %bound1 = icmp ult ptr %i.ar, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  %bound0292 = icmp ult ptr %0, %i.bd
  %bound1293 = icmp ult ptr %i.ao, %i.ax
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx = or i1 %found.conflict, %found.conflict294
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.au, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert295 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat296 = shufflevector <4 x float> %broadcast.splatinsert295, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <4 x float>, ptr %i.be, align 4, !tbaa !17, !alias.scope !103 ; 2 uses
  %wide.load297 = load <4 x float>, ptr %i.bf, align 4, !tbaa !17, !alias.scope !103 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load298 = load <4 x float>, ptr %i.bg, align 4, !tbaa !17, !alias.scope !104
  %wide.load299 = load <4 x float>, ptr %i.bh, align 4, !tbaa !17, !alias.scope !104
  %i.bi = fsub <4 x float> %wide.load298, %wide.load
  %i.bj = fsub <4 x float> %wide.load299, %wide.load297
  %i.bk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bi, <4 x float> %broadcast.splat, <4 x float> %wide.load)
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> %broadcast.splat, <4 x float> %wide.load297)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load300 = load <4 x float>, ptr %i.bm, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %wide.load301 = load <4 x float>, ptr %i.bn, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat296, <4 x float> %i.bk, <4 x float> %wide.load300)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat296, <4 x float> %i.bl, <4 x float> %wide.load301)
  store <4 x float> %i.bo, ptr %i.bm, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  store <4 x float> %i.bp, ptr %i.bn, align 4, !tbaa !17, !alias.scope !105, !noalias !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %hex_blamp.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i.ph
  %i.bs = load float, ptr %i.br, align 4, !tbaa !17 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.ph
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !17
  %i.bv = fsub float %i.bu, %i.bs
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.au, float %i.bs)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !17
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.bw, float %i.by)
  store float %i.bz, ptr %i.bx, align 4, !tbaa !17
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ca = add nsw i64 %wide.trip.count.i.i, -1
  %i.cb = icmp eq i64 %indvars.iv.i.i.ph, %i.ca
  br i1 %i.cb, label %hex_blamp.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !17 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !17
  %i.cg = fsub float %i.cf, %i.cd
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.au, float %i.cd)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.i ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !17
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ch, float %i.cj)
  store float %i.ck, ptr %i.ci, align 4, !tbaa !17
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv.next.i.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !17 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next.i.i
  %i.co = load float, ptr %i.cn, align 4, !tbaa !17
  %i.cp = fsub float %i.co, %i.cm
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.au, float %i.cm)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i.i ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !17
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.cq, float %i.cs)
  store float %i.ct, ptr %i.cr, align 4, !tbaa !17
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %hex_blamp.exit, label %.lr.ph.i.i, !llvm.loop !73

hex_blamp.exit:                                   ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.d, %bb.c
  store float %i.e, ptr %i.k, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %hex_blamp.exit, %bb.b
  %i.cu = zext nneg i32 %1 to i64                 ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cu, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cv, i1 false)
  %i.cw = load i32, ptr @hexblep, align 8, !tbaa !23 ; 3 uses
  %i.cx = shl nsw i32 %i.cw, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.cz, i1 false)
  %.not = icmp slt i32 %1, %i.cw
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.db = sext i32 %i.d to i64                    ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %i.da, i64 %i.db, i1 false)
  %.pre = load i32, ptr @hexblep, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 4 %i.da, i64 %i.db, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dc = phi i32 [ %i.cw, %bb.g ], [ %.pre, %bb.f ] ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.dc)
  %i.dd = icmp sge i32 %1, %i.dc
  %i.de = sub nsw i32 %1, %i.dc
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dk = sext i32 %i.i to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 96
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit
  %.0122196 = phi float [ %i.b, %bb.h ], [ %.4, %.loopexit ] ; 10 uses
  %i.dt = phi i1 [ false, %bb.h ], [ true, %.loopexit ] ; 4 uses
  %brmerge = select i1 %i.dt, i1 true, i1 %i.dd
  %..mux = select i1 %i.dt, i32 %., i32 %i.de     ; 2 uses
  %.mux = select i1 %i.dt, ptr %i.a, ptr %0       ; 11 uses
  br i1 %brmerge, label %.preheader205, label %.loopexit

.preheader205:                                    ; preds = %bb.i
  %i.du = load float, ptr %i.dl, align 4, !tbaa !31
  %i.dv = fcmp olt float %.0122196, %i.du
  br i1 %i.dv, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.preheader205
  %i.dw = load float, ptr %i.dm, align 8, !tbaa !31
  %i.dx = fcmp olt float %.0122196, %i.dw
  br i1 %i.dx, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dy = load float, ptr %i.dn, align 4, !tbaa !31
  %i.dz = fcmp olt float %.0122196, %i.dy
  br i1 %i.dz, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = load float, ptr %i.do, align 16, !tbaa !31
  %i.eb = fcmp olt float %.0122196, %i.ea
  br i1 %i.eb, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ec = load float, ptr %i.dp, align 4, !tbaa !31
  %i.ed = fcmp olt float %.0122196, %i.ec
  br i1 %i.ed, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load float, ptr %i.dq, align 8, !tbaa !31
  %i.ef = fcmp olt float %.0122196, %i.ee
  br i1 %i.ef, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eg = load float, ptr %i.dr, align 4, !tbaa !31
  %i.eh = fcmp olt float %.0122196, %i.eg
  br i1 %i.eh, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ei = load float, ptr %i.ds, align 16, !tbaa !31
  %i.ej = fcmp olt float %.0122196, %i.ei
  %spec.select277 = select i1 %i.ej, i32 7, i32 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %.preheader205
  %.1124.lcssa = phi i32 [ 0, %.preheader205 ], [ 4, %bb.m ], [ 6, %bb.o ], [ 1, %bb.j ], [ %spec.select277, %bb.p ], [ 2, %bb.k ], [ 5, %bb.n ], [ 3, %bb.l ]
  %i.ek = load i32, ptr @hexblep, align 8         ; 14 uses
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 4), align 4 ; 2 uses
  %i.em = sitofp i32 %i.el to float               ; 8 uses
  %i.en = add i32 %i.el, -1                       ; 4 uses
  %i.eo = icmp sgt i32 %i.ek, 0                   ; 4 uses
  %wide.trip.count.i.i150 = zext i32 %i.ek to i64 ; 27 uses
  %sext = sext i32 %..mux to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.mux, i64 %i.dk
  %i.ep = shl nuw nsw i64 %wide.trip.count.i.i150, 2 ; 5 uses
  %scevgep = getelementptr i8, ptr %.mux, i64 %i.ep ; 2 uses
  %min.iters.check433 = icmp ult i32 %i.ek, 8
  %n.vec443 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n458 = icmp eq i64 %n.vec443, %wide.trip.count.i.i150
  %xtraiter484 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod485.not = icmp eq i64 %xtraiter484, 0
  %i.eq = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check393 = icmp ult i32 %i.ek, 8
  %n.vec403 = and i64 %wide.trip.count.i.i150, 4294967288 ; 3 uses
  %cmp.n418 = icmp eq i64 %n.vec403, %wide.trip.count.i.i150
  %xtraiter486 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  %i.er = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check353 = icmp ult i32 %i.ek, 8
  %n.vec363 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n378 = icmp eq i64 %n.vec363, %wide.trip.count.i.i150
  %xtraiter488 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod489.not = icmp eq i64 %xtraiter488, 0
  %i.es = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check314 = icmp ult i32 %i.ek, 8
  %n.vec324 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n339 = icmp eq i64 %n.vec324, %wide.trip.count.i.i150
  %xtraiter490 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod491.not = icmp eq i64 %xtraiter490, 0
  %i.et = add nsw i64 %wide.trip.count.i.i150, -1
  br label %hex_blamp.exit178

hex_blamp.exit178:                                ; preds = %hex_blamp.exit178.backedge, %bb.q
  %.0127 = phi i32 [ 0, %bb.q ], [ %.1128.lcssa, %hex_blamp.exit178.backedge ] ; 3 uses
  %.2125 = phi i32 [ %.1124.lcssa, %bb.q ], [ %.2125.be, %hex_blamp.exit178.backedge ] ; 2 uses
  %.1 = phi float [ %.0122196, %bb.q ], [ %.1.be, %hex_blamp.exit178.backedge ] ; 4 uses
  %i.eu = add nsw i32 %.2125, 1                   ; 3 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ev ; 4 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !31 ; 5 uses
  %i.ey = fcmp olt float %.1, %i.ex
  %i.ez = sext i32 %.2125 to i64                  ; 2 uses
  %i.fa = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ez ; 4 uses
  br i1 %i.ey, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %hex_blamp.exit178
  %.pre218 = load float, ptr %i.fa, align 4, !tbaa !31
  br label %._crit_edge

.lr.ph:                                           ; preds = %hex_blamp.exit178
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = icmp eq i32 %.0127, %..mux
  br i1 %i.fd, label %.loopexit, label %.lr.ph285

.lr.ph285:                                        ; preds = %.lr.ph
  %i.fe = sext i32 %.0127 to i64
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !32
  %i.fg = load float, ptr %i.fc, align 4, !tbaa !33
  %i.fh = load float, ptr %i.fa, align 4, !tbaa !31 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.fi = icmp eq i64 %indvars.iv.next, %sext
  br i1 %i.fi, label %.loopexit, label %bb.s, !llvm.loop !74

bb.s:                                             ; preds = %.lr.ph285, %bb.r
  %.2190284 = phi float [ %.1, %.lr.ph285 ], [ %i.fn, %bb.r ] ; 2 uses
  %indvars.iv283 = phi i64 [ %i.fe, %.lr.ph285 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.fj = fsub float %.2190284, %i.fh
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fj, float %i.ff)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv283 ; 2 uses
  %i.fl = load float, ptr %gep, align 4, !tbaa !17
  %i.fm = fadd float %i.fl, %i.fk
  store float %i.fm, ptr %gep, align 4, !tbaa !17
  %i.fn = fadd float %i.e, %.2190284              ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv283, 1 ; 3 uses
  %i.fo = fcmp olt float %i.fn, %i.ex
  br i1 %i.fo, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.fp = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.fq = phi float [ %.pre218, %.._crit_edge_crit_edge ], [ %i.fh, %._crit_edge.loopexit ]
  %.1128.lcssa = phi i32 [ %.0127, %.._crit_edge_crit_edge ], [ %i.fp, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi float [ %.1, %.._crit_edge_crit_edge ], [ %i.fn, %._crit_edge.loopexit ] ; 4 uses
  %i.fr = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ez ; 3 uses
  %i.fs = fcmp oeq float %i.fq, %i.ex
  %i.ft = sext i32 %.1128.lcssa to i64            ; 10 uses
  br i1 %i.fs, label %bb.t, label %hex_blep.exit

bb.t:                                             ; preds = %._crit_edge
  %i.fu = getelementptr [4 x i8], ptr %.mux, i64 %i.ft ; 6 uses
  %i.fv = fsub float %.2.lcssa, %i.ex
  %i.fw = fmul float %i.h, %i.fv                  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !32
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !32
  %i.gb = fsub float %i.fy, %i.ga                 ; 4 uses
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 4 uses
  %i.gd = fmul float %i.fw, %i.em
  %i.ge = fptosi float %i.gd to i32
  %spec.select.i.i148 = tail call i32 @llvm.smin.i32(i32 %i.ge, i32 %i.en) ; 3 uses
  %i.gf = mul i32 %spec.select.i.i148, %i.ek
  %i.gg = sext i32 %i.gf to i64                   ; 3 uses
  %i.gh = getelementptr [4 x i8], ptr %i.gc, i64 %i.gg ; 5 uses
  %i.gi = add i32 %spec.select.i.i148, 1
  %i.gj = mul i32 %i.gi, %i.ek
  %i.gk = sext i32 %i.gj to i64                   ; 3 uses
  %i.gl = getelementptr [4 x i8], ptr %i.gc, i64 %i.gk ; 5 uses
  %i.gm = sitofp i32 %spec.select.i.i148 to float
  %i.gn = fneg float %i.gm
  %i.go = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.em, float %i.gn) ; 5 uses
  br i1 %i.eo, label %.lr.ph.i.i151.preheader, label %hex_blep.exit.thread268

.lr.ph.i.i151.preheader:                          ; preds = %bb.t
  br i1 %min.iters.check433, label %.lr.ph.i.i151.preheader477, label %vector.memcheck434

vector.memcheck434:                               ; preds = %.lr.ph.i.i151.preheader
  %i.gp = shl nsw i64 %i.ft, 2
  %i.gq = getelementptr i8, ptr %scevgep, i64 %i.gp ; 2 uses
  %i.gr = add nsw i64 %i.gk, %wide.trip.count.i.i150
  %i.gs = shl nsw i64 %i.gr, 2
  %i.gt = getelementptr i8, ptr %i.gc, i64 %i.gs
  %i.gu = add nsw i64 %i.gg, %wide.trip.count.i.i150
  %i.gv = shl nsw i64 %i.gu, 2
  %i.gw = getelementptr i8, ptr %i.gc, i64 %i.gv
  %bound0435 = icmp ult ptr %i.fu, %i.gt
  %bound1436 = icmp ult ptr %i.gl, %i.gq
  %found.conflict437 = and i1 %bound0435, %bound1436
  %bound0438 = icmp ult ptr %i.fu, %i.gw
  %bound1439 = icmp ult ptr %i.gh, %i.gq
  %found.conflict440 = and i1 %bound0438, %bound1439
  %conflict.rdx441 = or i1 %found.conflict437, %found.conflict440
  br i1 %conflict.rdx441, label %.lr.ph.i.i151.preheader477, label %vector.ph442

vector.ph442:                                     ; preds = %vector.memcheck434
  %broadcast.splatinsert444 = insertelement <4 x float> poison, float %i.go, i64 0
  %broadcast.splat445 = shufflevector <4 x float> %broadcast.splatinsert444, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert446 = insertelement <4 x float> poison, float %i.gb, i64 0
  %broadcast.splat447 = shufflevector <4 x float> %broadcast.splatinsert446, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph442
  %index449 = phi i64 [ 0, %vector.ph442 ], [ %index.next456, %vector.body448 ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index449 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load450 = load <4 x float>, ptr %i.gx, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %wide.load451 = load <4 x float>, ptr %i.gy, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index449 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load452 = load <4 x float>, ptr %i.gz, align 4, !tbaa !17, !alias.scope !108
  %wide.load453 = load <4 x float>, ptr %i.ha, align 4, !tbaa !17, !alias.scope !108
  %i.hb = fsub <4 x float> %wide.load452, %wide.load450
  %i.hc = fsub <4 x float> %wide.load453, %wide.load451
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %broadcast.splat445, <4 x float> %wide.load450)
  %i.he = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %broadcast.splat445, <4 x float> %wide.load451)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index449 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load454 = load <4 x float>, ptr %i.hf, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %wide.load455 = load <4 x float>, ptr %i.hg, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %i.hh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat447, <4 x float> %i.hd, <4 x float> %wide.load454)
  %i.hi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat447, <4 x float> %i.he, <4 x float> %wide.load455)
  store <4 x float> %i.hh, ptr %i.hf, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  store <4 x float> %i.hi, ptr %i.hg, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %index.next456 = add nuw i64 %index449, 8       ; 2 uses
  %i.hj = icmp eq i64 %index.next456, %n.vec443
  br i1 %i.hj, label %middle.block457, label %vector.body448, !llvm.loop !79

middle.block457:                                  ; preds = %vector.body448
  br i1 %cmp.n458, label %hex_blep.exit.thread, label %.lr.ph.i.i151.preheader477

.lr.ph.i.i151.preheader477:                       ; preds = %vector.memcheck434, %.lr.ph.i.i151.preheader, %middle.block457
  %indvars.iv.i.i152.ph = phi i64 [ 0, %vector.memcheck434 ], [ 0, %.lr.ph.i.i151.preheader ], [ %n.vec443, %middle.block457 ] ; 6 uses
  br i1 %lcmp.mod485.not, label %.lr.ph.i.i151.prol.loopexit, label %.lr.ph.i.i151.prol

.lr.ph.i.i151.prol:                               ; preds = %.lr.ph.i.i151.preheader477
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.i152.ph
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !17 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i.i152.ph
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !17
  %i.ho = fsub float %i.hn, %i.hl
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.go, float %i.hl)
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i152.ph ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !17
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.hp, float %i.hr)
  store float %i.hs, ptr %i.hq, align 4, !tbaa !17
  %indvars.iv.next.i.i153.prol = or disjoint i64 %indvars.iv.i.i152.ph, 1
  br label %.lr.ph.i.i151.prol.loopexit

.lr.ph.i.i151.prol.loopexit:                      ; preds = %.lr.ph.i.i151.prol, %.lr.ph.i.i151.preheader477
  %indvars.iv.i.i152.unr = phi i64 [ %indvars.iv.i.i152.ph, %.lr.ph.i.i151.preheader477 ], [ %indvars.iv.next.i.i153.prol, %.lr.ph.i.i151.prol ]
  %i.ht = icmp eq i64 %indvars.iv.i.i152.ph, %i.eq
  br i1 %i.ht, label %hex_blep.exit.thread, label %.lr.ph.i.i151

hex_blep.exit.thread268:                          ; preds = %bb.t
  %i.hu = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  br label %hex_blamp.exit162

.lr.ph.i.i151:                                    ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151
  %indvars.iv.i.i152 = phi i64 [ %indvars.iv.next.i.i153.1, %.lr.ph.i.i151 ], [ %indvars.iv.i.i152.unr, %.lr.ph.i.i151.prol.loopexit ] ; 5 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.i152
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !17 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i.i152
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !17
  %i.hz = fsub float %i.hy, %i.hw
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.go, float %i.hw)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i152 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !17
  %i.id = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.ia, float %i.ic)
  store float %i.id, ptr %i.ib, align 4, !tbaa !17
  %indvars.iv.next.i.i153 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next.i.i153
  %i.if = load float, ptr %i.ie, align 4, !tbaa !17 ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next.i.i153
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !17
  %i.ii = fsub float %i.ih, %i.if
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.go, float %i.if)
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next.i.i153 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !17
  %i.im = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.ij, float %i.il)
  store float %i.im, ptr %i.ik, align 4, !tbaa !17
  %indvars.iv.next.i.i153.1 = add nuw nsw i64 %indvars.iv.i.i152, 2 ; 2 uses
  %exitcond.not.i.i154.1 = icmp eq i64 %indvars.iv.next.i.i153.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i154.1, label %hex_blep.exit.thread, label %.lr.ph.i.i151, !llvm.loop !80

hex_blep.exit.thread:                             ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151, %middle.block457
  %i.in = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.io = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !33
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !33
  %i.is = fsub float %i.ip, %i.ir
  %i.it = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.gg
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.gk
  br label %.lr.ph.i.i158.preheader

hex_blep.exit:                                    ; preds = %._crit_edge
  %.pre222 = fsub float %.2.lcssa, %i.ex
  %.pre224 = fmul float %i.h, %.pre222            ; 2 uses
  %.pre226 = fmul float %.pre224, %i.em
  %.pre228 = fptosi float %.pre226 to i32
  %.pre230 = tail call i32 @llvm.smin.i32(i32 %.pre228, i32 %i.en) ; 3 uses
  %.pre231 = mul nsw i32 %.pre230, %i.ek
  %.pre233 = sext i32 %.pre231 to i64
  %.pre235 = add nsw i32 %.pre230, 1
  %.pre237 = mul nsw i32 %.pre235, %i.ek
  %.pre239 = sext i32 %.pre237 to i64
  %.pre241 = sitofp i32 %.pre230 to float
  %.pre243 = fneg float %.pre241
  %.pre245 = tail call float @llvm.fmuladd.f32(float %.pre224, float %i.em, float %.pre243)
  %i.iw = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !33
  %i.iz = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !33
  %i.jb = fsub float %i.iy, %i.ja
  %i.jc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %.pre233
  %i.je = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %.pre239
  br i1 %i.eo, label %.lr.ph.i.i158.preheader, label %hex_blamp.exit162

.lr.ph.i.i158.preheader:                          ; preds = %hex_blep.exit.thread, %hex_blep.exit
  %i.jf = phi ptr [ %i.iv, %hex_blep.exit.thread ], [ %i.je, %hex_blep.exit ] ; 6 uses
  %i.jg = phi ptr [ %i.iu, %hex_blep.exit.thread ], [ %i.jd, %hex_blep.exit ] ; 6 uses
  %.pn = phi float [ %i.is, %hex_blep.exit.thread ], [ %i.jb, %hex_blep.exit ]
  %i.jh = phi ptr [ %i.in, %hex_blep.exit.thread ], [ %i.iw, %hex_blep.exit ] ; 3 uses
  %.pre-phi246267 = phi float [ %i.go, %hex_blep.exit.thread ], [ %.pre245, %hex_blep.exit ] ; 4 uses
  %i.ji = fmul float %i.e, %.pn                   ; 4 uses
  br i1 %min.iters.check393, label %.lr.ph.i.i158.preheader476, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i158.preheader
  %i.jj = shl nsw i64 %i.ft, 2                    ; 2 uses
  %i.jk = getelementptr i8, ptr %.mux, i64 %i.jj  ; 2 uses
  %gep498 = getelementptr i8, ptr %scevgep, i64 %i.jj ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jf, i64 %i.ep
  %i.jm = getelementptr i8, ptr %i.jg, i64 %i.ep
  %bound0395 = icmp ult ptr %i.jk, %i.jl
  %bound1396 = icmp ult ptr %i.jf, %gep498
  %found.conflict397 = and i1 %bound0395, %bound1396
  %bound0398 = icmp ult ptr %i.jk, %i.jm
  %bound1399 = icmp ult ptr %i.jg, %gep498
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %found.conflict397, %found.conflict400
  br i1 %conflict.rdx401, label %.lr.ph.i.i158.preheader476, label %vector.ph402

vector.ph402:                                     ; preds = %vector.memcheck394
  %i.jn = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %broadcast.splatinsert404 = insertelement <4 x float> poison, float %.pre-phi246267, i64 0
  %broadcast.splat405 = shufflevector <4 x float> %broadcast.splatinsert404, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert406 = insertelement <4 x float> poison, float %i.ji, i64 0
  %broadcast.splat407 = shufflevector <4 x float> %broadcast.splatinsert406, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph402
  %index409 = phi i64 [ 0, %vector.ph402 ], [ %index.next416, %vector.body408 ] ; 4 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %index409 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %wide.load410 = load <4 x float>, ptr %i.jo, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %wide.load411 = load <4 x float>, ptr %i.jp, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %index409 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %wide.load412 = load <4 x float>, ptr %i.jq, align 4, !tbaa !17, !alias.scope !112
  %wide.load413 = load <4 x float>, ptr %i.jr, align 4, !tbaa !17, !alias.scope !112
  %i.js = fsub <4 x float> %wide.load412, %wide.load410
  %i.jt = fsub <4 x float> %wide.load413, %wide.load411
  %i.ju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.js, <4 x float> %broadcast.splat405, <4 x float> %wide.load410)
  %i.jv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jt, <4 x float> %broadcast.splat405, <4 x float> %wide.load411)
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index409 ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %wide.load414 = load <4 x float>, ptr %i.jw, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %wide.load415 = load <4 x float>, ptr %i.jx, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %i.jy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat407, <4 x float> %i.ju, <4 x float> %wide.load414)
  %i.jz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat407, <4 x float> %i.jv, <4 x float> %wide.load415)
  store <4 x float> %i.jy, ptr %i.jw, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  store <4 x float> %i.jz, ptr %i.jx, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %index.next416 = add nuw i64 %index409, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next416, %n.vec403
  br i1 %i.ka, label %middle.block417, label %vector.body408, !llvm.loop !85

middle.block417:                                  ; preds = %vector.body408
  br i1 %cmp.n418, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader476

.lr.ph.i.i158.preheader476:                       ; preds = %vector.memcheck394, %.lr.ph.i.i158.preheader, %middle.block417
  %indvars.iv.i.i159.ph = phi i64 [ 0, %vector.memcheck394 ], [ 0, %.lr.ph.i.i158.preheader ], [ %n.vec403, %middle.block417 ] ; 6 uses
  br i1 %lcmp.mod487.not, label %.lr.ph.i.i158.prol.loopexit, label %.lr.ph.i.i158.prol

.lr.ph.i.i158.prol:                               ; preds = %.lr.ph.i.i158.preheader476
  %i.kb = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.i.i159.ph
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !17 ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.i.i159.ph
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !17
  %i.kg = fsub float %i.kf, %i.kd
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.kg, float %.pre-phi246267, float %i.kd)
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv.i.i159.ph ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !17
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.kh, float %i.kj)
  store float %i.kk, ptr %i.ki, align 4, !tbaa !17
  %indvars.iv.next.i.i160.prol = or disjoint i64 %indvars.iv.i.i159.ph, 1
  br label %.lr.ph.i.i158.prol.loopexit

.lr.ph.i.i158.prol.loopexit:                      ; preds = %.lr.ph.i.i158.prol, %.lr.ph.i.i158.preheader476
  %indvars.iv.i.i159.unr = phi i64 [ %indvars.iv.i.i159.ph, %.lr.ph.i.i158.preheader476 ], [ %indvars.iv.next.i.i160.prol, %.lr.ph.i.i158.prol ]
  %i.kl = icmp eq i64 %indvars.iv.i.i159.ph, %i.er
  br i1 %i.kl, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader476.new

.lr.ph.i.i158.preheader476.new:                   ; preds = %.lr.ph.i.i158.prol.loopexit
  %i.km = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.kn = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  br label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.lr.ph.i.i158, %.lr.ph.i.i158.preheader476.new
  %indvars.iv.i.i159 = phi i64 [ %indvars.iv.i.i159.unr, %.lr.ph.i.i158.preheader476.new ], [ %indvars.iv.next.i.i160.1, %.lr.ph.i.i158 ] ; 5 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.i.i159
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !17 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.i.i159
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !17
  %i.ks = fsub float %i.kr, %i.kp
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.ks, float %.pre-phi246267, float %i.kp)
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv.i.i159 ; 2 uses
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !17
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.kt, float %i.kv)
  store float %i.kw, ptr %i.ku, align 4, !tbaa !17
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 3 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv.next.i.i160
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !17 ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.next.i.i160
  %i.la = load float, ptr %i.kz, align 4, !tbaa !17
  %i.lb = fsub float %i.la, %i.ky
  %i.lc = tail call float @llvm.fmuladd.f32(float %i.lb, float %.pre-phi246267, float %i.ky)
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv.next.i.i160 ; 2 uses
  %i.le = load float, ptr %i.ld, align 4, !tbaa !17
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.lc, float %i.le)
  store float %i.lf, ptr %i.ld, align 4, !tbaa !17
  %indvars.iv.next.i.i160.1 = add nuw nsw i64 %indvars.iv.i.i159, 2 ; 2 uses
  %exitcond.not.i.i161.1 = icmp eq i64 %indvars.iv.next.i.i160.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i161.1, label %hex_blamp.exit162, label %.lr.ph.i.i158, !llvm.loop !86

hex_blamp.exit162:                                ; preds = %.lr.ph.i.i158.prol.loopexit, %.lr.ph.i.i158, %middle.block417, %hex_blep.exit.thread268, %hex_blep.exit
  %i.lg = phi ptr [ %i.hu, %hex_blep.exit.thread268 ], [ %i.iw, %hex_blep.exit ], [ %i.jh, %middle.block417 ], [ %i.jh, %.lr.ph.i.i158 ], [ %i.jh, %.lr.ph.i.i158.prol.loopexit ] ; 14 uses
  %i.lh = icmp eq i32 %i.eu, 8
  br i1 %i.lh, label %bb.u, label %hex_blamp.exit178.backedge

bb.u:                                             ; preds = %hex_blamp.exit162
  %i.li = fadd float %.2.lcssa, -1.000000e+00     ; 8 uses
  %i.lj = load i32, ptr %i.df, align 4, !tbaa !15
  %.not147 = icmp eq i32 %i.lj, 0
  br i1 %.not147, label %hex_blamp.exit178.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lk = load float, ptr %i.dg, align 8, !tbaa !33 ; 2 uses
  %i.ll = load float, ptr %i.dh, align 4, !tbaa !32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !18
  store i32 0, ptr %i.df, align 4, !tbaa !15
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.lm = load float, ptr %i.dh, align 4, !tbaa !32 ; 2 uses
  %i.ln = fcmp une float %i.lm, %i.ll
  br i1 %i.ln, label %bb.w, label %hex_blep.exit170

bb.w:                                             ; preds = %bb.v
  %i.lo = fmul float %i.h, %i.li                  ; 2 uses
  %i.lp = fsub float %i.lm, %i.ll                 ; 4 uses
  %i.lq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 4 uses
  %i.lr = fmul float %i.lo, %i.em
  %i.ls = fptosi float %i.lr to i32
  %spec.select.i.i163 = tail call i32 @llvm.smin.i32(i32 %i.ls, i32 %i.en) ; 3 uses
  %i.lt = mul i32 %spec.select.i.i163, %i.ek
  %i.lu = sext i32 %i.lt to i64                   ; 2 uses
  %i.lv = getelementptr [4 x i8], ptr %i.lq, i64 %i.lu ; 5 uses
  %i.lw = add i32 %spec.select.i.i163, 1
  %i.lx = mul i32 %i.lw, %i.ek
  %i.ly = sext i32 %i.lx to i64                   ; 2 uses
  %i.lz = getelementptr [4 x i8], ptr %i.lq, i64 %i.ly ; 5 uses
  %i.ma = sitofp i32 %spec.select.i.i163 to float
  %i.mb = fneg float %i.ma
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.lo, float %i.em, float %i.mb) ; 4 uses
  br i1 %i.eo, label %.lr.ph.i.i166.preheader, label %hex_blep.exit170

.lr.ph.i.i166.preheader:                          ; preds = %bb.w
  br i1 %min.iters.check353, label %.lr.ph.i.i166.preheader475, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph.i.i166.preheader
  %i.md = getelementptr i8, ptr %i.lg, i64 %i.ep  ; 2 uses
  %i.me = add nsw i64 %i.ly, %wide.trip.count.i.i150
  %i.mf = shl nsw i64 %i.me, 2
  %i.mg = getelementptr i8, ptr %i.lq, i64 %i.mf
  %i.mh = add nsw i64 %i.lu, %wide.trip.count.i.i150
  %i.mi = shl nsw i64 %i.mh, 2
  %i.mj = getelementptr i8, ptr %i.lq, i64 %i.mi
  %bound0355 = icmp ult ptr %i.lg, %i.mg
  %bound1356 = icmp ult ptr %i.lz, %i.md
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult ptr %i.lg, %i.mj
  %bound1359 = icmp ult ptr %i.lv, %i.md
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %found.conflict357, %found.conflict360
  br i1 %conflict.rdx361, label %.lr.ph.i.i166.preheader475, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck354
  %broadcast.splatinsert364 = insertelement <4 x float> poison, float %i.mc, i64 0
  %broadcast.splat365 = shufflevector <4 x float> %broadcast.splatinsert364, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert366 = insertelement <4 x float> poison, float %i.lp, i64 0
  %broadcast.splat367 = shufflevector <4 x float> %broadcast.splatinsert366, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph362
  %index369 = phi i64 [ 0, %vector.ph362 ], [ %index.next376, %vector.body368 ] ; 4 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %index369 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load370 = load <4 x float>, ptr %i.mk, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %wide.load371 = load <4 x float>, ptr %i.ml, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %index369 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %wide.load372 = load <4 x float>, ptr %i.mm, align 4, !tbaa !17, !alias.scope !116
  %wide.load373 = load <4 x float>, ptr %i.mn, align 4, !tbaa !17, !alias.scope !116
  %i.mo = fsub <4 x float> %wide.load372, %wide.load370
  %i.mp = fsub <4 x float> %wide.load373, %wide.load371
  %i.mq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mo, <4 x float> %broadcast.splat365, <4 x float> %wide.load370)
  %i.mr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mp, <4 x float> %broadcast.splat365, <4 x float> %wide.load371)
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %index369 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  %wide.load374 = load <4 x float>, ptr %i.ms, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %wide.load375 = load <4 x float>, ptr %i.mt, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %i.mu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat367, <4 x float> %i.mq, <4 x float> %wide.load374)
  %i.mv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat367, <4 x float> %i.mr, <4 x float> %wide.load375)
  store <4 x float> %i.mu, ptr %i.ms, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  store <4 x float> %i.mv, ptr %i.mt, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %index.next376 = add nuw i64 %index369, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next376, %n.vec363
  br i1 %i.mw, label %middle.block377, label %vector.body368, !llvm.loop !91

middle.block377:                                  ; preds = %vector.body368
  br i1 %cmp.n378, label %hex_blep.exit170, label %.lr.ph.i.i166.preheader475

end_hunk_0
