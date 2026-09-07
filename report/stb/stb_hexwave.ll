Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_generate_samples:bb.a
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
  %i.cs = shl nuw nsw i64 %i.cr, 2
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
  %wide.trip.count.i.i150 = zext i32 %i.ei to i64 ; 18 uses
  %sext = sext i32 %..mux to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.mux, i64 %i.dh
  %i.en = shl nuw nsw i64 %wide.trip.count.i.i150, 2 ; 9 uses
  %scevgep364 = getelementptr i8, ptr %.mux, i64 %i.en
  %scevgep396 = getelementptr i8, ptr %.mux, i64 %i.en
  %5 = add nsw i64 %wide.trip.count.i.i150, -1    ; 4 uses
  %min.iters.check409 = icmp ult i32 %i.ei, 8
  %n.vec411 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n426 = icmp eq i64 %n.vec411, %wide.trip.count.i.i150
  %xtraiter452 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  %min.iters.check376 = icmp ult i32 %i.ei, 8
  %n.vec378 = and i64 %wide.trip.count.i.i150, 4294967288 ; 3 uses
  %cmp.n393 = icmp eq i64 %n.vec378, %wide.trip.count.i.i150
  %xtraiter454 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod455.not = icmp eq i64 %xtraiter454, 0
  %min.iters.check343 = icmp ult i32 %i.ei, 8
  %n.vec345 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n360 = icmp eq i64 %n.vec345, %wide.trip.count.i.i150
  %xtraiter456 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod457.not = icmp eq i64 %xtraiter456, 0
  %min.iters.check311 = icmp ult i32 %i.ei, 8
  %n.vec313 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n328 = icmp eq i64 %n.vec313, %wide.trip.count.i.i150
  %xtraiter458 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  br label %hex_blamp.exit178

hex_blamp.exit178:                                ; preds = %hex_blamp.exit178.backedge, %bb.q
  %.0127 = phi i32 [ 0, %bb.q ], [ %.1128.lcssa, %hex_blamp.exit178.backedge ] ; 3 uses
  %.2125 = phi i32 [ %.1124.lcssa, %bb.q ], [ %.2125.be, %hex_blamp.exit178.backedge ] ; 2 uses
  %.1 = phi float [ %.0122196, %bb.q ], [ %.1.be, %hex_blamp.exit178.backedge ] ; 4 uses
  %i.eo = add nsw i32 %.2125, 1                   ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [12 x i8], ptr %4, i64 %i.ep ; 4 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !31 ; 5 uses
  %i.es = fcmp olt float %.1, %i.er
  %i.et = sext i32 %.2125 to i64                  ; 2 uses
  %i.eu = getelementptr inbounds [12 x i8], ptr %4, i64 %i.et ; 4 uses
  br i1 %i.es, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %hex_blamp.exit178
  %.pre218 = load float, ptr %i.eu, align 4, !tbaa !31
  br label %._crit_edge

.lr.ph:                                           ; preds = %hex_blamp.exit178
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = icmp eq i32 %.0127, %..mux
  br i1 %i.ex, label %.loopexit, label %.lr.ph284

.lr.ph284:                                        ; preds = %.lr.ph
  %i.ey = sext i32 %.0127 to i64
  %i.ez = load float, ptr %i.ev, align 4, !tbaa !32
  %i.fa = load float, ptr %i.ew, align 4, !tbaa !33
  %i.fb = load float, ptr %i.eu, align 4, !tbaa !31 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.fc = icmp eq i64 %indvars.iv.next, %sext
  br i1 %i.fc, label %.loopexit, label %bb.s, !llvm.loop !74

bb.s:                                             ; preds = %.lr.ph284, %bb.r
  %.2190283 = phi float [ %.1, %.lr.ph284 ], [ %i.fh, %bb.r ] ; 2 uses
  %indvars.iv282 = phi i64 [ %i.ey, %.lr.ph284 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.fd = fsub float %.2190283, %i.fb
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.fd, float %i.ez)
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv282 ; 2 uses
  %i.ff = load float, ptr %gep, align 4, !tbaa !17
  %i.fg = fadd float %i.ff, %i.fe
  store float %i.fg, ptr %gep, align 4, !tbaa !17
  %i.fh = fadd float %i.e, %.2190283              ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv282, 1 ; 3 uses
  %i.fi = fcmp olt float %i.fh, %i.er
  br i1 %i.fi, label %bb.r, label %._crit_edge.loopexit, !llvm.loop !74

._crit_edge.loopexit:                             ; preds = %bb.s
  %i.fj = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge, %._crit_edge.loopexit
  %i.fk = phi float [ %.pre218, %.._crit_edge_crit_edge ], [ %i.fb, %._crit_edge.loopexit ]
  %.1128.lcssa = phi i32 [ %.0127, %.._crit_edge_crit_edge ], [ %i.fj, %._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi float [ %.1, %.._crit_edge_crit_edge ], [ %i.fh, %._crit_edge.loopexit ] ; 4 uses
  %i.fl = getelementptr inbounds [12 x i8], ptr %4, i64 %i.et ; 3 uses
  %i.fm = fcmp oeq float %i.fk, %i.er
  %i.fn = sext i32 %.1128.lcssa to i64            ; 10 uses
  br i1 %i.fm, label %bb.t, label %hex_blep.exit

bb.t:                                             ; preds = %._crit_edge
  %i.fo = getelementptr [4 x i8], ptr %.mux, i64 %i.fn ; 6 uses
  %i.fp = fsub float %.2.lcssa, %i.er
  %i.fq = fmul float %i.h, %i.fp                  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !32
  %i.fv = fsub float %i.fs, %i.fu                 ; 4 uses
  %i.fw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 3 uses
  %i.fx = fmul float %i.fq, %i.ek
  %i.fy = fptosi float %i.fx to i32
  %spec.select.i.i148 = tail call i32 @llvm.smin.i32(i32 %i.fy, i32 %i.el) ; 3 uses
  %i.fz = mul i32 %spec.select.i.i148, %i.ei
  %i.ga = sext i32 %i.fz to i64                   ; 3 uses
  %i.gb = getelementptr [4 x i8], ptr %i.fw, i64 %i.ga ; 5 uses
  %i.gc = add i32 %spec.select.i.i148, 1
  %i.gd = mul i32 %i.gc, %i.ei
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  %i.gf = getelementptr [4 x i8], ptr %i.fw, i64 %i.ge ; 5 uses
  %i.gg = sitofp i32 %spec.select.i.i148 to float
  %i.gh = fneg float %i.gg
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.ek, float %i.gh) ; 5 uses
  br i1 %i.em, label %.lr.ph.i.i151.preheader, label %hex_blep.exit.thread267

.lr.ph.i.i151.preheader:                          ; preds = %bb.t
  br i1 %min.iters.check409, label %.lr.ph.i.i151.preheader445, label %vector.memcheck395

vector.memcheck395:                               ; preds = %.lr.ph.i.i151.preheader
  %i.gj = shl nsw i64 %i.fn, 2
  %scevgep397 = getelementptr i8, ptr %scevgep396, i64 %i.gj ; 2 uses
  %scevgep398 = getelementptr i8, ptr %i.fw, i64 %i.en ; 2 uses
  %i.gk = shl nsw i64 %i.ge, 2
  %scevgep399 = getelementptr i8, ptr %scevgep398, i64 %i.gk
  %i.gl = shl nsw i64 %i.ga, 2
  %scevgep400 = getelementptr i8, ptr %scevgep398, i64 %i.gl
  %bound0401 = icmp ult ptr %i.fo, %scevgep399
  %bound1402 = icmp ult ptr %i.gf, %scevgep397
  %found.conflict403 = and i1 %bound0401, %bound1402
  %bound0404 = icmp ult ptr %i.fo, %scevgep400
  %bound1405 = icmp ult ptr %i.gb, %scevgep397
  %found.conflict406 = and i1 %bound0404, %bound1405
  %conflict.rdx407 = or i1 %found.conflict403, %found.conflict406
  br i1 %conflict.rdx407, label %.lr.ph.i.i151.preheader445, label %vector.ph410

vector.ph410:                                     ; preds = %vector.memcheck395
  %broadcast.splatinsert412 = insertelement <4 x float> poison, float %i.gi, i64 0
  %broadcast.splat413 = shufflevector <4 x float> %broadcast.splatinsert412, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert414 = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat415 = shufflevector <4 x float> %broadcast.splatinsert414, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph410
  %index417 = phi i64 [ 0, %vector.ph410 ], [ %index.next424, %vector.body416 ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %index417 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load418 = load <4 x float>, ptr %i.gm, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %wide.load419 = load <4 x float>, ptr %i.gn, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index417 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load420 = load <4 x float>, ptr %i.go, align 4, !tbaa !17, !alias.scope !108
  %wide.load421 = load <4 x float>, ptr %i.gp, align 4, !tbaa !17, !alias.scope !108
  %i.gq = fsub <4 x float> %wide.load420, %wide.load418
  %i.gr = fsub <4 x float> %wide.load421, %wide.load419
  %i.gs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %broadcast.splat413, <4 x float> %wide.load418)
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %broadcast.splat413, <4 x float> %wide.load419)
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index417 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load422 = load <4 x float>, ptr %i.gu, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %wide.load423 = load <4 x float>, ptr %i.gv, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %i.gw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat415, <4 x float> %i.gs, <4 x float> %wide.load422)
  %i.gx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat415, <4 x float> %i.gt, <4 x float> %wide.load423)
  store <4 x float> %i.gw, ptr %i.gu, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  store <4 x float> %i.gx, ptr %i.gv, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %index.next424 = add nuw i64 %index417, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next424, %n.vec411
  br i1 %i.gy, label %middle.block425, label %vector.body416, !llvm.loop !79

middle.block425:                                  ; preds = %vector.body416
  br i1 %cmp.n426, label %hex_blep.exit.thread, label %.lr.ph.i.i151.preheader445

.lr.ph.i.i151.preheader445:                       ; preds = %vector.memcheck395, %.lr.ph.i.i151.preheader, %middle.block425
  %indvars.iv.i.i152.ph = phi i64 [ 0, %vector.memcheck395 ], [ 0, %.lr.ph.i.i151.preheader ], [ %n.vec411, %middle.block425 ] ; 6 uses
  br i1 %lcmp.mod453.not, label %.lr.ph.i.i151.prol.loopexit, label %.lr.ph.i.i151.prol

.lr.ph.i.i151.prol:                               ; preds = %.lr.ph.i.i151.preheader445
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i.i152.ph
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !17 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i.i152.ph
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !17
  %i.hd = fsub float %i.hc, %i.ha
  %i.he = tail call float @llvm.fmuladd.f32(float %i.hd, float %i.gi, float %i.ha)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.i152.ph ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !17
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.he, float %i.hg)
  store float %i.hh, ptr %i.hf, align 4, !tbaa !17
  %indvars.iv.next.i.i153.prol = or disjoint i64 %indvars.iv.i.i152.ph, 1
  br label %.lr.ph.i.i151.prol.loopexit

.lr.ph.i.i151.prol.loopexit:                      ; preds = %.lr.ph.i.i151.prol, %.lr.ph.i.i151.preheader445
  %indvars.iv.i.i152.unr = phi i64 [ %indvars.iv.i.i152.ph, %.lr.ph.i.i151.preheader445 ], [ %indvars.iv.next.i.i153.prol, %.lr.ph.i.i151.prol ]
  %i.hi = icmp eq i64 %5, %indvars.iv.i.i152.ph
  br i1 %i.hi, label %hex_blep.exit.thread, label %.lr.ph.i.i151

hex_blep.exit.thread267:                          ; preds = %bb.t
  %i.hj = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fn
  br label %hex_blamp.exit162

.lr.ph.i.i151:                                    ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151
  %indvars.iv.i.i152 = phi i64 [ %indvars.iv.next.i.i153.1, %.lr.ph.i.i151 ], [ %indvars.iv.i.i152.unr, %.lr.ph.i.i151.prol.loopexit ] ; 5 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i.i152
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !17 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i.i152
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !17
  %i.ho = fsub float %i.hn, %i.hl
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.gi, float %i.hl)
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i.i152 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !17
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.hp, float %i.hr)
  store float %i.hs, ptr %i.hq, align 4, !tbaa !17
  %indvars.iv.next.i.i153 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.next.i.i153
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !17 ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.next.i.i153
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !17
  %i.hx = fsub float %i.hw, %i.hu
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.gi, float %i.hu)
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.next.i.i153 ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !17
  %i.ib = tail call float @llvm.fmuladd.f32(float %i.fv, float %i.hy, float %i.ia)
  store float %i.ib, ptr %i.hz, align 4, !tbaa !17
  %indvars.iv.next.i.i153.1 = add nuw nsw i64 %indvars.iv.i.i152, 2 ; 2 uses
  %exitcond.not.i.i154.1 = icmp eq i64 %indvars.iv.next.i.i153.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i154.1, label %hex_blep.exit.thread, label %.lr.ph.i.i151, !llvm.loop !80

hex_blep.exit.thread:                             ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151, %middle.block425
  %i.ic = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fn
  %i.id = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !33
  %i.if = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.ig = load float, ptr %i.if, align 4, !tbaa !33
  %i.ih = fsub float %i.ie, %i.ig
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.ga
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.ge
  br label %.lr.ph.i.i158.preheader

hex_blep.exit:                                    ; preds = %._crit_edge
  %.pre221 = fsub float %.2.lcssa, %i.er
  %.pre223 = fmul float %i.h, %.pre221            ; 2 uses
  %.pre225 = fmul float %.pre223, %i.ek
  %.pre227 = fptosi float %.pre225 to i32
  %.pre229 = tail call i32 @llvm.smin.i32(i32 %.pre227, i32 %i.el) ; 3 uses
  %.pre230 = mul nsw i32 %.pre229, %i.ei
  %.pre232 = sext i32 %.pre230 to i64
  %.pre234 = add nsw i32 %.pre229, 1
  %.pre236 = mul nsw i32 %.pre234, %i.ei
  %.pre238 = sext i32 %.pre236 to i64
  %.pre240 = sitofp i32 %.pre229 to float
  %.pre242 = fneg float %.pre240
  %.pre244 = tail call float @llvm.fmuladd.f32(float %.pre223, float %i.ek, float %.pre242)
  %i.il = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fn ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.in = load float, ptr %i.im, align 4, !tbaa !33
  %i.io = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.ip = load float, ptr %i.io, align 4, !tbaa !33
  %i.iq = fsub float %i.in, %i.ip
  %i.ir = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %.pre232
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %.pre238
  br i1 %i.em, label %.lr.ph.i.i158.preheader, label %hex_blamp.exit162

.lr.ph.i.i158.preheader:                          ; preds = %hex_blep.exit.thread, %hex_blep.exit
  %i.iu = phi ptr [ %i.ik, %hex_blep.exit.thread ], [ %i.it, %hex_blep.exit ] ; 6 uses
  %i.iv = phi ptr [ %i.ij, %hex_blep.exit.thread ], [ %i.is, %hex_blep.exit ] ; 6 uses
  %.pn = phi float [ %i.ih, %hex_blep.exit.thread ], [ %i.iq, %hex_blep.exit ]
  %i.iw = phi ptr [ %i.ic, %hex_blep.exit.thread ], [ %i.il, %hex_blep.exit ] ; 3 uses
  %.pre-phi245266 = phi float [ %i.gi, %hex_blep.exit.thread ], [ %.pre244, %hex_blep.exit ] ; 4 uses
  %i.ix = fmul float %i.e, %.pn                   ; 4 uses
  br i1 %min.iters.check376, label %.lr.ph.i.i158.preheader444, label %vector.memcheck362

vector.memcheck362:                               ; preds = %.lr.ph.i.i158.preheader
  %i.iy = shl nsw i64 %i.fn, 2                    ; 2 uses
  %scevgep363 = getelementptr i8, ptr %.mux, i64 %i.iy ; 2 uses
  %scevgep365 = getelementptr i8, ptr %scevgep364, i64 %i.iy ; 2 uses
  %scevgep366 = getelementptr i8, ptr %i.iu, i64 %i.en
  %scevgep367 = getelementptr i8, ptr %i.iv, i64 %i.en
  %bound0368 = icmp ult ptr %scevgep363, %scevgep366
  %bound1369 = icmp ult ptr %i.iu, %scevgep365
  %found.conflict370 = and i1 %bound0368, %bound1369
  %bound0371 = icmp ult ptr %scevgep363, %scevgep367
  %bound1372 = icmp ult ptr %i.iv, %scevgep365
  %found.conflict373 = and i1 %bound0371, %bound1372
  %conflict.rdx374 = or i1 %found.conflict370, %found.conflict373
  br i1 %conflict.rdx374, label %.lr.ph.i.i158.preheader444, label %vector.ph377

vector.ph377:                                     ; preds = %vector.memcheck362
  %i.iz = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fn
  %broadcast.splatinsert379 = insertelement <4 x float> poison, float %.pre-phi245266, i64 0
  %broadcast.splat380 = shufflevector <4 x float> %broadcast.splatinsert379, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert381 = insertelement <4 x float> poison, float %i.ix, i64 0
  %broadcast.splat382 = shufflevector <4 x float> %broadcast.splatinsert381, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph377
  %index384 = phi i64 [ 0, %vector.ph377 ], [ %index.next391, %vector.body383 ] ; 4 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %index384 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %wide.load385 = load <4 x float>, ptr %i.ja, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %wide.load386 = load <4 x float>, ptr %i.jb, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %index384 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load387 = load <4 x float>, ptr %i.jc, align 4, !tbaa !17, !alias.scope !112
  %wide.load388 = load <4 x float>, ptr %i.jd, align 4, !tbaa !17, !alias.scope !112
  %i.je = fsub <4 x float> %wide.load387, %wide.load385
  %i.jf = fsub <4 x float> %wide.load388, %wide.load386
  %i.jg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %broadcast.splat380, <4 x float> %wide.load385)
  %i.jh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jf, <4 x float> %broadcast.splat380, <4 x float> %wide.load386)
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %index384 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %wide.load389 = load <4 x float>, ptr %i.ji, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %wide.load390 = load <4 x float>, ptr %i.jj, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %i.jk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat382, <4 x float> %i.jg, <4 x float> %wide.load389)
  %i.jl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat382, <4 x float> %i.jh, <4 x float> %wide.load390)
  store <4 x float> %i.jk, ptr %i.ji, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  store <4 x float> %i.jl, ptr %i.jj, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %index.next391 = add nuw i64 %index384, 8       ; 2 uses
  %i.jm = icmp eq i64 %index.next391, %n.vec378
  br i1 %i.jm, label %middle.block392, label %vector.body383, !llvm.loop !85

middle.block392:                                  ; preds = %vector.body383
  br i1 %cmp.n393, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader444

.lr.ph.i.i158.preheader444:                       ; preds = %vector.memcheck362, %.lr.ph.i.i158.preheader, %middle.block392
  %indvars.iv.i.i159.ph = phi i64 [ 0, %vector.memcheck362 ], [ 0, %.lr.ph.i.i158.preheader ], [ %n.vec378, %middle.block392 ] ; 6 uses
  br i1 %lcmp.mod455.not, label %.lr.ph.i.i158.prol.loopexit, label %.lr.ph.i.i158.prol

.lr.ph.i.i158.prol:                               ; preds = %.lr.ph.i.i158.preheader444
  %i.jn = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fn
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i.i159.ph
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !17 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.i.i159.ph
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !17
  %i.js = fsub float %i.jr, %i.jp
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.js, float %.pre-phi245266, float %i.jp)
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.i.i159.ph ; 2 uses
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !17
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.jt, float %i.jv)
  store float %i.jw, ptr %i.ju, align 4, !tbaa !17
  %indvars.iv.next.i.i160.prol = or disjoint i64 %indvars.iv.i.i159.ph, 1
  br label %.lr.ph.i.i158.prol.loopexit

.lr.ph.i.i158.prol.loopexit:                      ; preds = %.lr.ph.i.i158.prol, %.lr.ph.i.i158.preheader444
  %indvars.iv.i.i159.unr = phi i64 [ %indvars.iv.i.i159.ph, %.lr.ph.i.i158.preheader444 ], [ %indvars.iv.next.i.i160.prol, %.lr.ph.i.i158.prol ]
  %i.jx = icmp eq i64 %5, %indvars.iv.i.i159.ph
  br i1 %i.jx, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader444.new

.lr.ph.i.i158.preheader444.new:                   ; preds = %.lr.ph.i.i158.prol.loopexit
  %i.jy = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fn
  %i.jz = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.fn
  br label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.lr.ph.i.i158, %.lr.ph.i.i158.preheader444.new
  %indvars.iv.i.i159 = phi i64 [ %indvars.iv.i.i159.unr, %.lr.ph.i.i158.preheader444.new ], [ %indvars.iv.next.i.i160.1, %.lr.ph.i.i158 ] ; 5 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i.i159
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !17 ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.i.i159
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !17
  %i.ke = fsub float %i.kd, %i.kb
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %.pre-phi245266, float %i.kb)
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv.i.i159 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !17
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.kf, float %i.kh)
  store float %i.ki, ptr %i.kg, align 4, !tbaa !17
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i160
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !17 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv.next.i.i160
  %i.km = load float, ptr %i.kl, align 4, !tbaa !17
  %i.kn = fsub float %i.km, %i.kk
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.kn, float %.pre-phi245266, float %i.kk)
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %indvars.iv.next.i.i160 ; 2 uses
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !17
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.ix, float %i.ko, float %i.kq)
  store float %i.kr, ptr %i.kp, align 4, !tbaa !17
  %indvars.iv.next.i.i160.1 = add nuw nsw i64 %indvars.iv.i.i159, 2 ; 2 uses
  %exitcond.not.i.i161.1 = icmp eq i64 %indvars.iv.next.i.i160.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i161.1, label %hex_blamp.exit162, label %.lr.ph.i.i158, !llvm.loop !86

hex_blamp.exit162:                                ; preds = %.lr.ph.i.i158.prol.loopexit, %.lr.ph.i.i158, %middle.block392, %hex_blep.exit.thread267, %hex_blep.exit
  %i.ks = phi ptr [ %i.hj, %hex_blep.exit.thread267 ], [ %i.il, %hex_blep.exit ], [ %i.iw, %middle.block392 ], [ %i.iw, %.lr.ph.i.i158 ], [ %i.iw, %.lr.ph.i.i158.prol.loopexit ] ; 14 uses
  %i.kt = icmp eq i32 %i.eo, 8
  br i1 %i.kt, label %bb.u, label %hex_blamp.exit178.backedge

bb.u:                                             ; preds = %hex_blamp.exit162
  %i.ku = fadd float %.2.lcssa, -1.000000e+00     ; 8 uses
  %i.kv = load i32, ptr %i.dc, align 4, !tbaa !15
  %.not147 = icmp eq i32 %i.kv, 0
  br i1 %.not147, label %hex_blamp.exit178.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kw = load float, ptr %i.dd, align 8, !tbaa !33 ; 2 uses
  %i.kx = load float, ptr %i.de, align 4, !tbaa !32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, ptr noundef nonnull align 4 dereferenceable(16) %i.dg, i64 16, i1 false), !tbaa.struct !18
  store i32 0, ptr %i.dc, align 4, !tbaa !15
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.ky = load float, ptr %i.de, align 4, !tbaa !32 ; 2 uses
  %i.kz = fcmp une float %i.ky, %i.kx
  br i1 %i.kz, label %bb.w, label %hex_blep.exit170

bb.w:                                             ; preds = %bb.v
  %i.la = fmul float %i.h, %i.ku                  ; 2 uses
  %i.lb = fsub float %i.ky, %i.kx                 ; 4 uses
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 3 uses
  %i.ld = fmul float %i.la, %i.ek
  %i.le = fptosi float %i.ld to i32
  %spec.select.i.i163 = tail call i32 @llvm.smin.i32(i32 %i.le, i32 %i.el) ; 3 uses
  %i.lf = mul i32 %spec.select.i.i163, %i.ei
  %i.lg = sext i32 %i.lf to i64                   ; 2 uses
  %i.lh = getelementptr [4 x i8], ptr %i.lc, i64 %i.lg ; 5 uses
  %i.li = add i32 %spec.select.i.i163, 1
  %i.lj = mul i32 %i.li, %i.ei
  %i.lk = sext i32 %i.lj to i64                   ; 2 uses
  %i.ll = getelementptr [4 x i8], ptr %i.lc, i64 %i.lk ; 5 uses
  %i.lm = sitofp i32 %spec.select.i.i163 to float
  %i.ln = fneg float %i.lm
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.la, float %i.ek, float %i.ln) ; 4 uses
  br i1 %i.em, label %.lr.ph.i.i166.preheader, label %hex_blep.exit170

.lr.ph.i.i166.preheader:                          ; preds = %bb.w
  br i1 %min.iters.check343, label %.lr.ph.i.i166.preheader443, label %vector.memcheck330

vector.memcheck330:                               ; preds = %.lr.ph.i.i166.preheader
  %scevgep331 = getelementptr i8, ptr %i.ks, i64 %i.en ; 2 uses
  %scevgep332 = getelementptr i8, ptr %i.lc, i64 %i.en ; 2 uses
  %i.lp = shl nsw i64 %i.lk, 2
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.lp
  %i.lq = shl nsw i64 %i.lg, 2
  %scevgep334 = getelementptr i8, ptr %scevgep332, i64 %i.lq
  %bound0335 = icmp ult ptr %i.ks, %scevgep333
  %bound1336 = icmp ult ptr %i.ll, %scevgep331
  %found.conflict337 = and i1 %bound0335, %bound1336
  %bound0338 = icmp ult ptr %i.ks, %scevgep334
  %bound1339 = icmp ult ptr %i.lh, %scevgep331
  %found.conflict340 = and i1 %bound0338, %bound1339
  %conflict.rdx341 = or i1 %found.conflict337, %found.conflict340
  br i1 %conflict.rdx341, label %.lr.ph.i.i166.preheader443, label %vector.ph344

vector.ph344:                                     ; preds = %vector.memcheck330
  %broadcast.splatinsert346 = insertelement <4 x float> poison, float %i.lo, i64 0
  %broadcast.splat347 = shufflevector <4 x float> %broadcast.splatinsert346, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert348 = insertelement <4 x float> poison, float %i.lb, i64 0
  %broadcast.splat349 = shufflevector <4 x float> %broadcast.splatinsert348, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body350

vector.body350:                                   ; preds = %vector.body350, %vector.ph344
  %index351 = phi i64 [ 0, %vector.ph344 ], [ %index.next358, %vector.body350 ] ; 4 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %index351 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %wide.load352 = load <4 x float>, ptr %i.lr, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %wide.load353 = load <4 x float>, ptr %i.ls, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %index351 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %wide.load354 = load <4 x float>, ptr %i.lt, align 4, !tbaa !17, !alias.scope !116
  %wide.load355 = load <4 x float>, ptr %i.lu, align 4, !tbaa !17, !alias.scope !116
  %i.lv = fsub <4 x float> %wide.load354, %wide.load352
  %i.lw = fsub <4 x float> %wide.load355, %wide.load353
  %i.lx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lv, <4 x float> %broadcast.splat347, <4 x float> %wide.load352)
  %i.ly = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lw, <4 x float> %broadcast.splat347, <4 x float> %wide.load353)
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %index351 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16 ; 2 uses
  %wide.load356 = load <4 x float>, ptr %i.lz, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %wide.load357 = load <4 x float>, ptr %i.ma, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %i.mb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat349, <4 x float> %i.lx, <4 x float> %wide.load356)
  %i.mc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat349, <4 x float> %i.ly, <4 x float> %wide.load357)
  store <4 x float> %i.mb, ptr %i.lz, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  store <4 x float> %i.mc, ptr %i.ma, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %index.next358 = add nuw i64 %index351, 8       ; 2 uses
  %i.md = icmp eq i64 %index.next358, %n.vec345
  br i1 %i.md, label %middle.block359, label %vector.body350, !llvm.loop !91

middle.block359:                                  ; preds = %vector.body350
  br i1 %cmp.n360, label %hex_blep.exit170, label %.lr.ph.i.i166.preheader443

.lr.ph.i.i166.preheader443:                       ; preds = %vector.memcheck330, %.lr.ph.i.i166.preheader, %middle.block359
  %indvars.iv.i.i167.ph = phi i64 [ 0, %vector.memcheck330 ], [ 0, %.lr.ph.i.i166.preheader ], [ %n.vec345, %middle.block359 ] ; 6 uses
  br i1 %lcmp.mod457.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader443
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i167.ph
  %i.mf = load float, ptr %i.me, align 4, !tbaa !17 ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.i.i167.ph
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !17
  %i.mi = fsub float %i.mh, %i.mf
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.mi, float %i.lo, float %i.mf)
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i.i167.ph ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !17
  %i.mm = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.mj, float %i.ml)
  store float %i.mm, ptr %i.mk, align 4, !tbaa !17
  %indvars.iv.next.i.i168.prol = or disjoint i64 %indvars.iv.i.i167.ph, 1
  br label %.lr.ph.i.i166.prol.loopexit

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader443
  %indvars.iv.i.i167.unr = phi i64 [ %indvars.iv.i.i167.ph, %.lr.ph.i.i166.preheader443 ], [ %indvars.iv.next.i.i168.prol, %.lr.ph.i.i166.prol ]
  %i.mn = icmp eq i64 %5, %indvars.iv.i.i167.ph
  br i1 %i.mn, label %hex_blep.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %indvars.iv.i.i167 = phi i64 [ %indvars.iv.next.i.i168.1, %.lr.ph.i.i166 ], [ %indvars.iv.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ] ; 5 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.i.i167
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !17 ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.i.i167
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !17
  %i.ms = fsub float %i.mr, %i.mp
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.lo, float %i.mp)
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i.i167 ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !17
  %i.mw = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.mt, float %i.mv)
  store float %i.mw, ptr %i.mu, align 4, !tbaa !17
  %indvars.iv.next.i.i168 = add nuw nsw i64 %indvars.iv.i.i167, 1 ; 3 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %indvars.iv.next.i.i168
  %i.my = load float, ptr %i.mx, align 4, !tbaa !17 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %indvars.iv.next.i.i168
  %i.na = load float, ptr %i.mz, align 4, !tbaa !17
  %i.nb = fsub float %i.na, %i.my
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.nb, float %i.lo, float %i.my)
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i.i168 ; 2 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !17
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.lb, float %i.nc, float %i.ne)
  store float %i.nf, ptr %i.nd, align 4, !tbaa !17
  %indvars.iv.next.i.i168.1 = add nuw nsw i64 %indvars.iv.i.i167, 2 ; 2 uses
  %exitcond.not.i.i169.1 = icmp eq i64 %indvars.iv.next.i.i168.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i169.1, label %hex_blep.exit170, label %.lr.ph.i.i166, !llvm.loop !92

hex_blep.exit170:                                 ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166, %middle.block359, %bb.w, %bb.v
  %i.ng = load float, ptr %i.dd, align 8, !tbaa !33 ; 2 uses
  %i.nh = fcmp une float %i.ng, %i.kw
  br i1 %i.nh, label %bb.x, label %hex_blamp.exit178.backedge

bb.x:                                             ; preds = %hex_blep.exit170
  %i.ni = fmul float %i.h, %i.ku                  ; 2 uses
  %i.nj = fsub float %i.ng, %i.kw
  %i.nk = fmul float %i.e, %i.nj                  ; 4 uses
  %i.nl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 3 uses
  %i.nm = fmul float %i.ni, %i.ek
  %i.nn = fptosi float %i.nm to i32
  %spec.select.i.i171 = tail call i32 @llvm.smin.i32(i32 %i.nn, i32 %i.el) ; 3 uses
  %i.no = mul i32 %spec.select.i.i171, %i.ei
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = getelementptr [4 x i8], ptr %i.nl, i64 %i.np ; 5 uses
  %i.nr = add i32 %spec.select.i.i171, 1
  %i.ns = mul i32 %i.nr, %i.ei
  %i.nt = sext i32 %i.ns to i64                   ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %i.nl, i64 %i.nt ; 5 uses
  %i.nv = sitofp i32 %spec.select.i.i171 to float
  %i.nw = fneg float %i.nv
  %i.nx = tail call float @llvm.fmuladd.f32(float %i.ni, float %i.ek, float %i.nw) ; 4 uses
  br i1 %i.em, label %.lr.ph.i.i174.preheader, label %hex_blamp.exit178.backedge

.lr.ph.i.i174.preheader:                          ; preds = %bb.x
  br i1 %min.iters.check311, label %.lr.ph.i.i174.preheader442, label %vector.memcheck298

vector.memcheck298:                               ; preds = %.lr.ph.i.i174.preheader
  %scevgep299 = getelementptr i8, ptr %i.ks, i64 %i.en ; 2 uses
  %scevgep300 = getelementptr i8, ptr %i.nl, i64 %i.en ; 2 uses
  %i.ny = shl nsw i64 %i.nt, 2
  %scevgep301 = getelementptr i8, ptr %scevgep300, i64 %i.ny
  %i.nz = shl nsw i64 %i.np, 2
  %scevgep302 = getelementptr i8, ptr %scevgep300, i64 %i.nz
  %bound0303 = icmp ult ptr %i.ks, %scevgep301
  %bound1304 = icmp ult ptr %i.nu, %scevgep299
  %found.conflict305 = and i1 %bound0303, %bound1304
  %bound0306 = icmp ult ptr %i.ks, %scevgep302
  %bound1307 = icmp ult ptr %i.nq, %scevgep299
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %found.conflict305, %found.conflict308
  br i1 %conflict.rdx309, label %.lr.ph.i.i174.preheader442, label %vector.ph312

vector.ph312:                                     ; preds = %vector.memcheck298
  %broadcast.splatinsert314 = insertelement <4 x float> poison, float %i.nx, i64 0
  %broadcast.splat315 = shufflevector <4 x float> %broadcast.splatinsert314, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert316 = insertelement <4 x float> poison, float %i.nk, i64 0
  %broadcast.splat317 = shufflevector <4 x float> %broadcast.splatinsert316, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph312
  %index319 = phi i64 [ 0, %vector.ph312 ], [ %index.next326, %vector.body318 ] ; 4 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %index319 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %wide.load320 = load <4 x float>, ptr %i.oa, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %wide.load321 = load <4 x float>, ptr %i.ob, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index319 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %wide.load322 = load <4 x float>, ptr %i.oc, align 4, !tbaa !17, !alias.scope !120
  %wide.load323 = load <4 x float>, ptr %i.od, align 4, !tbaa !17, !alias.scope !120
  %i.oe = fsub <4 x float> %wide.load322, %wide.load320
  %i.of = fsub <4 x float> %wide.load323, %wide.load321
  %i.og = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oe, <4 x float> %broadcast.splat315, <4 x float> %wide.load320)
  %i.oh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.of, <4 x float> %broadcast.splat315, <4 x float> %wide.load321)
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %index319 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 2 uses
  %wide.load324 = load <4 x float>, ptr %i.oi, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %wide.load325 = load <4 x float>, ptr %i.oj, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %i.ok = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat317, <4 x float> %i.og, <4 x float> %wide.load324)
  %i.ol = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat317, <4 x float> %i.oh, <4 x float> %wide.load325)
  store <4 x float> %i.ok, ptr %i.oi, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  store <4 x float> %i.ol, ptr %i.oj, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %index.next326 = add nuw i64 %index319, 8       ; 2 uses
  %i.om = icmp eq i64 %index.next326, %n.vec313
  br i1 %i.om, label %middle.block327, label %vector.body318, !llvm.loop !97

middle.block327:                                  ; preds = %vector.body318
  br i1 %cmp.n328, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174.preheader442

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block327, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block327 ], [ %i.eo, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.ku, %middle.block327 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.ku, %bb.x ], [ %i.ku, %hex_blep.exit170 ], [ %i.ku, %bb.u ], [ %i.ku, %.lr.ph.i.i174 ], [ %i.ku, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader442:                       ; preds = %vector.memcheck298, %.lr.ph.i.i174.preheader, %middle.block327
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck298 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec313, %middle.block327 ] ; 6 uses
  br i1 %lcmp.mod459.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader442
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.i.i175.ph
  %i.oo = load float, ptr %i.on, align 4, !tbaa !17 ; 2 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i175.ph
  %i.oq = load float, ptr %i.op, align 4, !tbaa !17
  %i.or = fsub float %i.oq, %i.oo
  %i.os = tail call float @llvm.fmuladd.f32(float %i.or, float %i.nx, float %i.oo)
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !17
  %i.ov = tail call float @llvm.fmuladd.f32(float %i.nk, float %i.os, float %i.ou)
  store float %i.ov, ptr %i.ot, align 4, !tbaa !17
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader442
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader442 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.ow = icmp eq i64 %5, %indvars.iv.i.i175.ph
  br i1 %i.ow, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.i.i175
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !17 ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.i.i175
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !17
  %i.pb = fsub float %i.pa, %i.oy
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.pb, float %i.nx, float %i.oy)
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.i.i175 ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !17
  %i.pf = tail call float @llvm.fmuladd.f32(float %i.nk, float %i.pc, float %i.pe)
  store float %i.pf, ptr %i.pd, align 4, !tbaa !17
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %indvars.iv.next.i.i176
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !17 ; 2 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv.next.i.i176
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !17
  %i.pk = fsub float %i.pj, %i.ph
  %i.pl = tail call float @llvm.fmuladd.f32(float %i.pk, float %i.nx, float %i.ph)
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17
  %i.po = tail call float @llvm.fmuladd.f32(float %i.nk, float %i.pl, float %i.pn)
  store float %i.po, ptr %i.pm, align 4, !tbaa !17
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fh, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dr, label %bb.i, label %bb.y, !llvm.loop !99

bb.y:                                             ; preds = %.loopexit
  %i.pp = load i32, ptr @hexblep, align 8, !tbaa !23 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.pp
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.pq = icmp sgt i32 %i.pp, 0
  br i1 %i.pq, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.pr = sub nsw i32 %1, %i.pp
  %i.ps = sext i32 %i.pr to i64
  %wide.trip.count = zext nneg i32 %i.pp to i64   ; 3 uses
  %invariant.gep274 = getelementptr [4 x i8], ptr %0, i64 %i.ps ; 2 uses
  %min.iters.check429 = icmp ult i32 %i.pp, 8
  br i1 %min.iters.check429, label %scalar.ph428.preheader, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph198
  %n.vec431 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph430
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next438, %vector.body432 ] ; 3 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index433 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %wide.load434 = load <4 x float>, ptr %i.pt, align 16, !tbaa !17
  %wide.load435 = load <4 x float>, ptr %i.pu, align 16, !tbaa !17
  %i.pv = getelementptr [4 x i8], ptr %invariant.gep274, i64 %index433 ; 3 uses
  %i.pw = getelementptr i8, ptr %i.pv, i64 16     ; 2 uses
  %wide.load436 = load <4 x float>, ptr %i.pv, align 4, !tbaa !17
  %wide.load437 = load <4 x float>, ptr %i.pw, align 4, !tbaa !17
  %i.px = fadd <4 x float> %wide.load434, %wide.load436
  %i.py = fadd <4 x float> %wide.load435, %wide.load437
  store <4 x float> %i.px, ptr %i.pv, align 4, !tbaa !17
  store <4 x float> %i.py, ptr %i.pw, align 4, !tbaa !17
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.pz = icmp eq i64 %index.next438, %n.vec431
  br i1 %i.pz, label %middle.block439, label %vector.body432, !llvm.loop !100

middle.block439:                                  ; preds = %vector.body432
  %cmp.n440 = icmp eq i64 %n.vec431, %wide.trip.count
  br i1 %cmp.n440, label %._crit_edge199, label %scalar.ph428.preheader

scalar.ph428.preheader:                           ; preds = %.lr.ph198, %middle.block439
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec431, %middle.block439 ]
  br label %scalar.ph428

scalar.ph428:                                     ; preds = %scalar.ph428.preheader, %scalar.ph428
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph428 ], [ %indvars.iv211.ph, %scalar.ph428.preheader ] ; 3 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !17
  %gep275 = getelementptr [4 x i8], ptr %invariant.gep274, i64 %indvars.iv211 ; 2 uses
  %i.qc = load float, ptr %gep275, align 4, !tbaa !17
  %i.qd = fadd float %i.qb, %i.qc
  store float %i.qd, ptr %gep275, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph428, !llvm.loop !101

._crit_edge199:                                   ; preds = %scalar.ph428, %middle.block439, %.preheader179
  %i.qe = sext i32 %i.pp to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  %i.qf = zext nneg i32 %1 to i64
  %i.qg = shl nuw nsw i64 %i.qf, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.a, i64 %i.qg, i1 false), !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink279 = phi i64 [ %i.cr, %._crit_edge202 ], [ %i.qe, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink279
  %i.qi = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.qh, i64 %i.qi, i1 false)
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
end_hunk_0
