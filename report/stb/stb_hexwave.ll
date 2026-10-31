Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_hexwave?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@hexwave_generate_samples:bb.a
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
  %.mux = select i1 %i.dt, ptr %i.a, ptr %0       ; 12 uses
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
  %wide.trip.count.i.i150 = zext i32 %i.ek to i64 ; 21 uses
  %sext = sext i32 %..mux to i64
  %invariant.gep = getelementptr [4 x i8], ptr %.mux, i64 %i.dk
  %i.ep = shl nuw nsw i64 %wide.trip.count.i.i150, 2 ; 9 uses
  %scevgep367 = getelementptr i8, ptr %.mux, i64 %i.ep
  %scevgep399 = getelementptr i8, ptr %.mux, i64 %i.ep
  %min.iters.check412 = icmp ult i32 %i.ek, 8
  %n.vec414 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n429 = icmp eq i64 %n.vec414, %wide.trip.count.i.i150
  %xtraiter455 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod456.not = icmp eq i64 %xtraiter455, 0
  %i.eq = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check379 = icmp ult i32 %i.ek, 8
  %n.vec381 = and i64 %wide.trip.count.i.i150, 4294967288 ; 3 uses
  %cmp.n396 = icmp eq i64 %n.vec381, %wide.trip.count.i.i150
  %xtraiter457 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod458.not = icmp eq i64 %xtraiter457, 0
  %i.er = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check346 = icmp ult i32 %i.ek, 8
  %n.vec348 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n363 = icmp eq i64 %n.vec348, %wide.trip.count.i.i150
  %xtraiter459 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  %i.es = add nsw i64 %wide.trip.count.i.i150, -1
  %min.iters.check314 = icmp ult i32 %i.ek, 8
  %n.vec316 = and i64 %wide.trip.count.i.i150, 2147483640 ; 3 uses
  %cmp.n331 = icmp eq i64 %n.vec316, %wide.trip.count.i.i150
  %xtraiter461 = and i64 %wide.trip.count.i.i150, 1
  %lcmp.mod462.not = icmp eq i64 %xtraiter461, 0
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
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 3 uses
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
  br i1 %min.iters.check412, label %.lr.ph.i.i151.preheader448, label %vector.memcheck398

vector.memcheck398:                               ; preds = %.lr.ph.i.i151.preheader
  %i.gp = shl nsw i64 %i.ft, 2
  %scevgep400 = getelementptr i8, ptr %scevgep399, i64 %i.gp ; 2 uses
  %scevgep401 = getelementptr i8, ptr %i.gc, i64 %i.ep ; 2 uses
  %i.gq = shl nsw i64 %i.gk, 2
  %scevgep402 = getelementptr i8, ptr %scevgep401, i64 %i.gq
  %i.gr = shl nsw i64 %i.gg, 2
  %scevgep403 = getelementptr i8, ptr %scevgep401, i64 %i.gr
  %bound0404 = icmp ult ptr %i.fu, %scevgep402
  %bound1405 = icmp ult ptr %i.gl, %scevgep400
  %found.conflict406 = and i1 %bound0404, %bound1405
  %bound0407 = icmp ult ptr %i.fu, %scevgep403
  %bound1408 = icmp ult ptr %i.gh, %scevgep400
  %found.conflict409 = and i1 %bound0407, %bound1408
  %conflict.rdx410 = or i1 %found.conflict406, %found.conflict409
  br i1 %conflict.rdx410, label %.lr.ph.i.i151.preheader448, label %vector.ph413

vector.ph413:                                     ; preds = %vector.memcheck398
  %broadcast.splatinsert415 = insertelement <4 x float> poison, float %i.go, i64 0
  %broadcast.splat416 = shufflevector <4 x float> %broadcast.splatinsert415, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert417 = insertelement <4 x float> poison, float %i.gb, i64 0
  %broadcast.splat418 = shufflevector <4 x float> %broadcast.splatinsert417, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph413
  %index420 = phi i64 [ 0, %vector.ph413 ], [ %index.next427, %vector.body419 ] ; 4 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index420 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load421 = load <4 x float>, ptr %i.gs, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %wide.load422 = load <4 x float>, ptr %i.gt, align 4, !tbaa !17, !alias.scope !107 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index420 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load423 = load <4 x float>, ptr %i.gu, align 4, !tbaa !17, !alias.scope !108
  %wide.load424 = load <4 x float>, ptr %i.gv, align 4, !tbaa !17, !alias.scope !108
  %i.gw = fsub <4 x float> %wide.load423, %wide.load421
  %i.gx = fsub <4 x float> %wide.load424, %wide.load422
  %i.gy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> %broadcast.splat416, <4 x float> %wide.load421)
  %i.gz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %broadcast.splat416, <4 x float> %wide.load422)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index420 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %wide.load425 = load <4 x float>, ptr %i.ha, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %wide.load426 = load <4 x float>, ptr %i.hb, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat418, <4 x float> %i.gy, <4 x float> %wide.load425)
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat418, <4 x float> %i.gz, <4 x float> %wide.load426)
  store <4 x float> %i.hc, ptr %i.ha, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  store <4 x float> %i.hd, ptr %i.hb, align 4, !tbaa !17, !alias.scope !109, !noalias !110
  %index.next427 = add nuw i64 %index420, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next427, %n.vec414
  br i1 %i.he, label %middle.block428, label %vector.body419, !llvm.loop !79

middle.block428:                                  ; preds = %vector.body419
  br i1 %cmp.n429, label %hex_blep.exit.thread, label %.lr.ph.i.i151.preheader448

.lr.ph.i.i151.preheader448:                       ; preds = %vector.memcheck398, %.lr.ph.i.i151.preheader, %middle.block428
  %indvars.iv.i.i152.ph = phi i64 [ 0, %vector.memcheck398 ], [ 0, %.lr.ph.i.i151.preheader ], [ %n.vec414, %middle.block428 ] ; 6 uses
  br i1 %lcmp.mod456.not, label %.lr.ph.i.i151.prol.loopexit, label %.lr.ph.i.i151.prol

.lr.ph.i.i151.prol:                               ; preds = %.lr.ph.i.i151.preheader448
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.i152.ph
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !17 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i.i152.ph
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !17
  %i.hj = fsub float %i.hi, %i.hg
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.hj, float %i.go, float %i.hg)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i152.ph ; 2 uses
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !17
  %i.hn = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.hk, float %i.hm)
  store float %i.hn, ptr %i.hl, align 4, !tbaa !17
  %indvars.iv.next.i.i153.prol = or disjoint i64 %indvars.iv.i.i152.ph, 1
  br label %.lr.ph.i.i151.prol.loopexit

.lr.ph.i.i151.prol.loopexit:                      ; preds = %.lr.ph.i.i151.prol, %.lr.ph.i.i151.preheader448
  %indvars.iv.i.i152.unr = phi i64 [ %indvars.iv.i.i152.ph, %.lr.ph.i.i151.preheader448 ], [ %indvars.iv.next.i.i153.prol, %.lr.ph.i.i151.prol ]
  %i.ho = icmp eq i64 %indvars.iv.i.i152.ph, %i.eq
  br i1 %i.ho, label %hex_blep.exit.thread, label %.lr.ph.i.i151

hex_blep.exit.thread268:                          ; preds = %bb.t
  %i.hp = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  br label %hex_blamp.exit162

.lr.ph.i.i151:                                    ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151
  %indvars.iv.i.i152 = phi i64 [ %indvars.iv.next.i.i153.1, %.lr.ph.i.i151 ], [ %indvars.iv.i.i152.unr, %.lr.ph.i.i151.prol.loopexit ] ; 5 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.i.i152
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !17 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.i.i152
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !17
  %i.hu = fsub float %i.ht, %i.hr
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.go, float %i.hr)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i152 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !17
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.hv, float %i.hx)
  store float %i.hy, ptr %i.hw, align 4, !tbaa !17
  %indvars.iv.next.i.i153 = add nuw nsw i64 %indvars.iv.i.i152, 1 ; 3 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next.i.i153
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !17 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.next.i.i153
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !17
  %i.id = fsub float %i.ic, %i.ia
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.id, float %i.go, float %i.ia)
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.next.i.i153 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !17
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.ie, float %i.ig)
  store float %i.ih, ptr %i.if, align 4, !tbaa !17
  %indvars.iv.next.i.i153.1 = add nuw nsw i64 %indvars.iv.i.i152, 2 ; 2 uses
  %exitcond.not.i.i154.1 = icmp eq i64 %indvars.iv.next.i.i153.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i154.1, label %hex_blep.exit.thread, label %.lr.ph.i.i151, !llvm.loop !80

hex_blep.exit.thread:                             ; preds = %.lr.ph.i.i151.prol.loopexit, %.lr.ph.i.i151, %middle.block428
  %i.ii = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !33
  %i.il = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.im = load float, ptr %i.il, align 4, !tbaa !33
  %i.in = fsub float %i.ik, %i.im
  %i.io = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.gg
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.gk
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
  %i.ir = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.it = load float, ptr %i.is, align 4, !tbaa !33
  %i.iu = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !33
  %i.iw = fsub float %i.it, %i.iv
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %.pre233
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %.pre239
  br i1 %i.eo, label %.lr.ph.i.i158.preheader, label %hex_blamp.exit162

.lr.ph.i.i158.preheader:                          ; preds = %hex_blep.exit.thread, %hex_blep.exit
  %i.ja = phi ptr [ %i.iq, %hex_blep.exit.thread ], [ %i.iz, %hex_blep.exit ] ; 6 uses
  %i.jb = phi ptr [ %i.ip, %hex_blep.exit.thread ], [ %i.iy, %hex_blep.exit ] ; 6 uses
  %.pn = phi float [ %i.in, %hex_blep.exit.thread ], [ %i.iw, %hex_blep.exit ]
  %i.jc = phi ptr [ %i.ii, %hex_blep.exit.thread ], [ %i.ir, %hex_blep.exit ] ; 3 uses
  %.pre-phi246267 = phi float [ %i.go, %hex_blep.exit.thread ], [ %.pre245, %hex_blep.exit ] ; 4 uses
  %i.jd = fmul float %i.e, %.pn                   ; 4 uses
  br i1 %min.iters.check379, label %.lr.ph.i.i158.preheader447, label %vector.memcheck365

vector.memcheck365:                               ; preds = %.lr.ph.i.i158.preheader
  %i.je = shl nsw i64 %i.ft, 2                    ; 2 uses
  %scevgep366 = getelementptr i8, ptr %.mux, i64 %i.je ; 2 uses
  %scevgep368 = getelementptr i8, ptr %scevgep367, i64 %i.je ; 2 uses
  %scevgep369 = getelementptr i8, ptr %i.ja, i64 %i.ep
  %scevgep370 = getelementptr i8, ptr %i.jb, i64 %i.ep
  %bound0371 = icmp ult ptr %scevgep366, %scevgep369
  %bound1372 = icmp ult ptr %i.ja, %scevgep368
  %found.conflict373 = and i1 %bound0371, %bound1372
  %bound0374 = icmp ult ptr %scevgep366, %scevgep370
  %bound1375 = icmp ult ptr %i.jb, %scevgep368
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %found.conflict373, %found.conflict376
  br i1 %conflict.rdx377, label %.lr.ph.i.i158.preheader447, label %vector.ph380

vector.ph380:                                     ; preds = %vector.memcheck365
  %i.jf = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %broadcast.splatinsert382 = insertelement <4 x float> poison, float %.pre-phi246267, i64 0
  %broadcast.splat383 = shufflevector <4 x float> %broadcast.splatinsert382, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert384 = insertelement <4 x float> poison, float %i.jd, i64 0
  %broadcast.splat385 = shufflevector <4 x float> %broadcast.splatinsert384, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body386

vector.body386:                                   ; preds = %vector.body386, %vector.ph380
  %index387 = phi i64 [ 0, %vector.ph380 ], [ %index.next394, %vector.body386 ] ; 4 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %index387 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %wide.load388 = load <4 x float>, ptr %i.jg, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %wide.load389 = load <4 x float>, ptr %i.jh, align 4, !tbaa !17, !alias.scope !111 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index387 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load390 = load <4 x float>, ptr %i.ji, align 4, !tbaa !17, !alias.scope !112
  %wide.load391 = load <4 x float>, ptr %i.jj, align 4, !tbaa !17, !alias.scope !112
  %i.jk = fsub <4 x float> %wide.load390, %wide.load388
  %i.jl = fsub <4 x float> %wide.load391, %wide.load389
  %i.jm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %broadcast.splat383, <4 x float> %wide.load388)
  %i.jn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jl, <4 x float> %broadcast.splat383, <4 x float> %wide.load389)
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %index387 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %wide.load392 = load <4 x float>, ptr %i.jo, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %wide.load393 = load <4 x float>, ptr %i.jp, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %i.jq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat385, <4 x float> %i.jm, <4 x float> %wide.load392)
  %i.jr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat385, <4 x float> %i.jn, <4 x float> %wide.load393)
  store <4 x float> %i.jq, ptr %i.jo, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  store <4 x float> %i.jr, ptr %i.jp, align 4, !tbaa !17, !alias.scope !113, !noalias !114
  %index.next394 = add nuw i64 %index387, 8       ; 2 uses
  %i.js = icmp eq i64 %index.next394, %n.vec381
  br i1 %i.js, label %middle.block395, label %vector.body386, !llvm.loop !85

middle.block395:                                  ; preds = %vector.body386
  br i1 %cmp.n396, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader447

.lr.ph.i.i158.preheader447:                       ; preds = %vector.memcheck365, %.lr.ph.i.i158.preheader, %middle.block395
  %indvars.iv.i.i159.ph = phi i64 [ 0, %vector.memcheck365 ], [ 0, %.lr.ph.i.i158.preheader ], [ %n.vec381, %middle.block395 ] ; 6 uses
  br i1 %lcmp.mod458.not, label %.lr.ph.i.i158.prol.loopexit, label %.lr.ph.i.i158.prol

.lr.ph.i.i158.prol:                               ; preds = %.lr.ph.i.i158.preheader447
  %i.jt = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i.i159.ph
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !17 ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.i159.ph
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !17
  %i.jy = fsub float %i.jx, %i.jv
  %i.jz = tail call float @llvm.fmuladd.f32(float %i.jy, float %.pre-phi246267, float %i.jv)
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %indvars.iv.i.i159.ph ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !17
  %i.kc = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.jz, float %i.kb)
  store float %i.kc, ptr %i.ka, align 4, !tbaa !17
  %indvars.iv.next.i.i160.prol = or disjoint i64 %indvars.iv.i.i159.ph, 1
  br label %.lr.ph.i.i158.prol.loopexit

.lr.ph.i.i158.prol.loopexit:                      ; preds = %.lr.ph.i.i158.prol, %.lr.ph.i.i158.preheader447
  %indvars.iv.i.i159.unr = phi i64 [ %indvars.iv.i.i159.ph, %.lr.ph.i.i158.preheader447 ], [ %indvars.iv.next.i.i160.prol, %.lr.ph.i.i158.prol ]
  %i.kd = icmp eq i64 %indvars.iv.i.i159.ph, %i.er
  br i1 %i.kd, label %hex_blamp.exit162, label %.lr.ph.i.i158.preheader447.new

.lr.ph.i.i158.preheader447.new:                   ; preds = %.lr.ph.i.i158.prol.loopexit
  %i.ke = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  %i.kf = getelementptr inbounds [4 x i8], ptr %.mux, i64 %i.ft
  br label %.lr.ph.i.i158

.lr.ph.i.i158:                                    ; preds = %.lr.ph.i.i158, %.lr.ph.i.i158.preheader447.new
  %indvars.iv.i.i159 = phi i64 [ %indvars.iv.i.i159.unr, %.lr.ph.i.i158.preheader447.new ], [ %indvars.iv.next.i.i160.1, %.lr.ph.i.i158 ] ; 5 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i.i159
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !17 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.i.i159
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !17
  %i.kk = fsub float %i.kj, %i.kh
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kk, float %.pre-phi246267, float %i.kh)
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %indvars.iv.i.i159 ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !17
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.kl, float %i.kn)
  store float %i.ko, ptr %i.km, align 4, !tbaa !17
  %indvars.iv.next.i.i160 = add nuw nsw i64 %indvars.iv.i.i159, 1 ; 3 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next.i.i160
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !17 ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next.i.i160
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !17
  %i.kt = fsub float %i.ks, %i.kq
  %i.ku = tail call float @llvm.fmuladd.f32(float %i.kt, float %.pre-phi246267, float %i.kq)
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %indvars.iv.next.i.i160 ; 2 uses
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !17
  %i.kx = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.ku, float %i.kw)
  store float %i.kx, ptr %i.kv, align 4, !tbaa !17
  %indvars.iv.next.i.i160.1 = add nuw nsw i64 %indvars.iv.i.i159, 2 ; 2 uses
  %exitcond.not.i.i161.1 = icmp eq i64 %indvars.iv.next.i.i160.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i161.1, label %hex_blamp.exit162, label %.lr.ph.i.i158, !llvm.loop !86

hex_blamp.exit162:                                ; preds = %.lr.ph.i.i158.prol.loopexit, %.lr.ph.i.i158, %middle.block395, %hex_blep.exit.thread268, %hex_blep.exit
  %i.ky = phi ptr [ %i.hp, %hex_blep.exit.thread268 ], [ %i.ir, %hex_blep.exit ], [ %i.jc, %middle.block395 ], [ %i.jc, %.lr.ph.i.i158 ], [ %i.jc, %.lr.ph.i.i158.prol.loopexit ] ; 14 uses
  %i.kz = icmp eq i32 %i.eu, 8
  br i1 %i.kz, label %bb.u, label %hex_blamp.exit178.backedge

bb.u:                                             ; preds = %hex_blamp.exit162
  %i.la = fadd float %.2.lcssa, -1.000000e+00     ; 8 uses
  %i.lb = load i32, ptr %i.df, align 4, !tbaa !15
  %.not147 = icmp eq i32 %i.lb, 0
  br i1 %.not147, label %hex_blamp.exit178.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lc = load float, ptr %i.dg, align 8, !tbaa !33 ; 2 uses
  %i.ld = load float, ptr %i.dh, align 4, !tbaa !32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.di, ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !18
  store i32 0, ptr %i.df, align 4, !tbaa !15
  call void @hexwave_generate_linesegs(ptr noundef nonnull %4, ptr noundef nonnull %2, float noundef %i.e)
  %i.le = load float, ptr %i.dh, align 4, !tbaa !32 ; 2 uses
  %i.lf = fcmp une float %i.le, %i.ld
  br i1 %i.lf, label %bb.w, label %hex_blep.exit170

bb.w:                                             ; preds = %bb.v
  %i.lg = fmul float %i.h, %i.la                  ; 2 uses
  %i.lh = fsub float %i.le, %i.ld                 ; 4 uses
  %i.li = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 8), align 8, !tbaa !28 ; 3 uses
  %i.lj = fmul float %i.lg, %i.em
  %i.lk = fptosi float %i.lj to i32
  %spec.select.i.i163 = tail call i32 @llvm.smin.i32(i32 %i.lk, i32 %i.en) ; 3 uses
  %i.ll = mul i32 %spec.select.i.i163, %i.ek
  %i.lm = sext i32 %i.ll to i64                   ; 2 uses
  %i.ln = getelementptr [4 x i8], ptr %i.li, i64 %i.lm ; 5 uses
  %i.lo = add i32 %spec.select.i.i163, 1
  %i.lp = mul i32 %i.lo, %i.ek
  %i.lq = sext i32 %i.lp to i64                   ; 2 uses
  %i.lr = getelementptr [4 x i8], ptr %i.li, i64 %i.lq ; 5 uses
  %i.ls = sitofp i32 %spec.select.i.i163 to float
  %i.lt = fneg float %i.ls
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.em, float %i.lt) ; 4 uses
  br i1 %i.eo, label %.lr.ph.i.i166.preheader, label %hex_blep.exit170

.lr.ph.i.i166.preheader:                          ; preds = %bb.w
  br i1 %min.iters.check346, label %.lr.ph.i.i166.preheader446, label %vector.memcheck333

vector.memcheck333:                               ; preds = %.lr.ph.i.i166.preheader
  %scevgep334 = getelementptr i8, ptr %i.ky, i64 %i.ep ; 2 uses
  %scevgep335 = getelementptr i8, ptr %i.li, i64 %i.ep ; 2 uses
  %i.lv = shl nsw i64 %i.lq, 2
  %scevgep336 = getelementptr i8, ptr %scevgep335, i64 %i.lv
  %i.lw = shl nsw i64 %i.lm, 2
  %scevgep337 = getelementptr i8, ptr %scevgep335, i64 %i.lw
  %bound0338 = icmp ult ptr %i.ky, %scevgep336
  %bound1339 = icmp ult ptr %i.lr, %scevgep334
  %found.conflict340 = and i1 %bound0338, %bound1339
  %bound0341 = icmp ult ptr %i.ky, %scevgep337
  %bound1342 = icmp ult ptr %i.ln, %scevgep334
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %found.conflict340, %found.conflict343
  br i1 %conflict.rdx344, label %.lr.ph.i.i166.preheader446, label %vector.ph347

vector.ph347:                                     ; preds = %vector.memcheck333
  %broadcast.splatinsert349 = insertelement <4 x float> poison, float %i.lu, i64 0
  %broadcast.splat350 = shufflevector <4 x float> %broadcast.splatinsert349, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert351 = insertelement <4 x float> poison, float %i.lh, i64 0
  %broadcast.splat352 = shufflevector <4 x float> %broadcast.splatinsert351, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body353

vector.body353:                                   ; preds = %vector.body353, %vector.ph347
  %index354 = phi i64 [ 0, %vector.ph347 ], [ %index.next361, %vector.body353 ] ; 4 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %index354 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %wide.load355 = load <4 x float>, ptr %i.lx, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %wide.load356 = load <4 x float>, ptr %i.ly, align 4, !tbaa !17, !alias.scope !115 ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %index354 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %wide.load357 = load <4 x float>, ptr %i.lz, align 4, !tbaa !17, !alias.scope !116
  %wide.load358 = load <4 x float>, ptr %i.ma, align 4, !tbaa !17, !alias.scope !116
  %i.mb = fsub <4 x float> %wide.load357, %wide.load355
  %i.mc = fsub <4 x float> %wide.load358, %wide.load356
  %i.md = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mb, <4 x float> %broadcast.splat350, <4 x float> %wide.load355)
  %i.me = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mc, <4 x float> %broadcast.splat350, <4 x float> %wide.load356)
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index354 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %wide.load359 = load <4 x float>, ptr %i.mf, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %wide.load360 = load <4 x float>, ptr %i.mg, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %i.mh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat352, <4 x float> %i.md, <4 x float> %wide.load359)
  %i.mi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat352, <4 x float> %i.me, <4 x float> %wide.load360)
  store <4 x float> %i.mh, ptr %i.mf, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  store <4 x float> %i.mi, ptr %i.mg, align 4, !tbaa !17, !alias.scope !117, !noalias !118
  %index.next361 = add nuw i64 %index354, 8       ; 2 uses
  %i.mj = icmp eq i64 %index.next361, %n.vec348
  br i1 %i.mj, label %middle.block362, label %vector.body353, !llvm.loop !91

middle.block362:                                  ; preds = %vector.body353
  br i1 %cmp.n363, label %hex_blep.exit170, label %.lr.ph.i.i166.preheader446

.lr.ph.i.i166.preheader446:                       ; preds = %vector.memcheck333, %.lr.ph.i.i166.preheader, %middle.block362
  %indvars.iv.i.i167.ph = phi i64 [ 0, %vector.memcheck333 ], [ 0, %.lr.ph.i.i166.preheader ], [ %n.vec348, %middle.block362 ] ; 6 uses
  br i1 %lcmp.mod460.not, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader446
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.i.i167.ph
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !17 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv.i.i167.ph
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !17
  %i.mo = fsub float %i.mn, %i.ml
  %i.mp = tail call float @llvm.fmuladd.f32(float %i.mo, float %i.lu, float %i.ml)
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i167.ph ; 2 uses
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !17
  %i.ms = tail call float @llvm.fmuladd.f32(float %i.lh, float %i.mp, float %i.mr)
  store float %i.ms, ptr %i.mq, align 4, !tbaa !17
  %indvars.iv.next.i.i168.prol = or disjoint i64 %indvars.iv.i.i167.ph, 1
  br label %.lr.ph.i.i166.prol.loopexit

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader446
  %indvars.iv.i.i167.unr = phi i64 [ %indvars.iv.i.i167.ph, %.lr.ph.i.i166.preheader446 ], [ %indvars.iv.next.i.i168.prol, %.lr.ph.i.i166.prol ]
  %i.mt = icmp eq i64 %indvars.iv.i.i167.ph, %i.es
  br i1 %i.mt, label %hex_blep.exit170, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %indvars.iv.i.i167 = phi i64 [ %indvars.iv.next.i.i168.1, %.lr.ph.i.i166 ], [ %indvars.iv.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ] ; 5 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.i.i167
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !17 ; 2 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv.i.i167
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !17
  %i.my = fsub float %i.mx, %i.mv
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.my, float %i.lu, float %i.mv)
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i167 ; 2 uses
  %i.nb = load float, ptr %i.na, align 4, !tbaa !17
  %i.nc = tail call float @llvm.fmuladd.f32(float %i.lh, float %i.mz, float %i.nb)
  store float %i.nc, ptr %i.na, align 4, !tbaa !17
  %indvars.iv.next.i.i168 = add nuw nsw i64 %indvars.iv.i.i167, 1 ; 3 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i168
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !17 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %indvars.iv.next.i.i168
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !17
  %i.nh = fsub float %i.ng, %i.ne
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.nh, float %i.lu, float %i.ne)
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i.i168 ; 2 uses
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !17
  %i.nl = tail call float @llvm.fmuladd.f32(float %i.lh, float %i.ni, float %i.nk)
  store float %i.nl, ptr %i.nj, align 4, !tbaa !17
  %indvars.iv.next.i.i168.1 = add nuw nsw i64 %indvars.iv.i.i167, 2 ; 2 uses
  %exitcond.not.i.i169.1 = icmp eq i64 %indvars.iv.next.i.i168.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i169.1, label %hex_blep.exit170, label %.lr.ph.i.i166, !llvm.loop !92

hex_blep.exit170:                                 ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166, %middle.block362, %bb.w, %bb.v
  %i.nm = load float, ptr %i.dg, align 8, !tbaa !33 ; 2 uses
  %i.nn = fcmp une float %i.nm, %i.lc
  br i1 %i.nn, label %bb.x, label %hex_blamp.exit178.backedge

bb.x:                                             ; preds = %hex_blep.exit170
  %i.no = fmul float %i.h, %i.la                  ; 2 uses
  %i.np = fsub float %i.nm, %i.lc
  %i.nq = fmul float %i.e, %i.np                  ; 4 uses
  %i.nr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @hexblep, i64 16), align 8, !tbaa !29 ; 3 uses
  %i.ns = fmul float %i.no, %i.em
  %i.nt = fptosi float %i.ns to i32
  %spec.select.i.i171 = tail call i32 @llvm.smin.i32(i32 %i.nt, i32 %i.en) ; 3 uses
  %i.nu = mul i32 %spec.select.i.i171, %i.ek
  %i.nv = sext i32 %i.nu to i64                   ; 2 uses
  %i.nw = getelementptr [4 x i8], ptr %i.nr, i64 %i.nv ; 5 uses
  %i.nx = add i32 %spec.select.i.i171, 1
  %i.ny = mul i32 %i.nx, %i.ek
  %i.nz = sext i32 %i.ny to i64                   ; 2 uses
  %i.oa = getelementptr [4 x i8], ptr %i.nr, i64 %i.nz ; 5 uses
  %i.ob = sitofp i32 %spec.select.i.i171 to float
  %i.oc = fneg float %i.ob
  %i.od = tail call float @llvm.fmuladd.f32(float %i.no, float %i.em, float %i.oc) ; 4 uses
  br i1 %i.eo, label %.lr.ph.i.i174.preheader, label %hex_blamp.exit178.backedge

.lr.ph.i.i174.preheader:                          ; preds = %bb.x
  br i1 %min.iters.check314, label %.lr.ph.i.i174.preheader445, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i.i174.preheader
  %scevgep = getelementptr i8, ptr %i.ky, i64 %i.ep ; 2 uses
  %scevgep303 = getelementptr i8, ptr %i.nr, i64 %i.ep ; 2 uses
  %i.oe = shl nsw i64 %i.nz, 2
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.oe
  %i.of = shl nsw i64 %i.nv, 2
  %scevgep305 = getelementptr i8, ptr %scevgep303, i64 %i.of
  %bound0306 = icmp ult ptr %i.ky, %scevgep304
  %bound1307 = icmp ult ptr %i.oa, %scevgep
  %found.conflict308 = and i1 %bound0306, %bound1307
  %bound0309 = icmp ult ptr %i.ky, %scevgep305
  %bound1310 = icmp ult ptr %i.nw, %scevgep
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %found.conflict308, %found.conflict311
  br i1 %conflict.rdx312, label %.lr.ph.i.i174.preheader445, label %vector.ph315

vector.ph315:                                     ; preds = %vector.memcheck302
  %broadcast.splatinsert317 = insertelement <4 x float> poison, float %i.od, i64 0
  %broadcast.splat318 = shufflevector <4 x float> %broadcast.splatinsert317, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert319 = insertelement <4 x float> poison, float %i.nq, i64 0
  %broadcast.splat320 = shufflevector <4 x float> %broadcast.splatinsert319, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph315
  %index322 = phi i64 [ 0, %vector.ph315 ], [ %index.next329, %vector.body321 ] ; 4 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %index322 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %wide.load323 = load <4 x float>, ptr %i.og, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %wide.load324 = load <4 x float>, ptr %i.oh, align 4, !tbaa !17, !alias.scope !119 ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index322 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load325 = load <4 x float>, ptr %i.oi, align 4, !tbaa !17, !alias.scope !120
  %wide.load326 = load <4 x float>, ptr %i.oj, align 4, !tbaa !17, !alias.scope !120
  %i.ok = fsub <4 x float> %wide.load325, %wide.load323
  %i.ol = fsub <4 x float> %wide.load326, %wide.load324
  %i.om = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ok, <4 x float> %broadcast.splat318, <4 x float> %wide.load323)
  %i.on = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ol, <4 x float> %broadcast.splat318, <4 x float> %wide.load324)
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index322 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16 ; 2 uses
  %wide.load327 = load <4 x float>, ptr %i.oo, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %wide.load328 = load <4 x float>, ptr %i.op, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %i.oq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat320, <4 x float> %i.om, <4 x float> %wide.load327)
  %i.or = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat320, <4 x float> %i.on, <4 x float> %wide.load328)
  store <4 x float> %i.oq, ptr %i.oo, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  store <4 x float> %i.or, ptr %i.op, align 4, !tbaa !17, !alias.scope !121, !noalias !122
  %index.next329 = add nuw i64 %index322, 8       ; 2 uses
  %i.os = icmp eq i64 %index.next329, %n.vec316
  br i1 %i.os, label %middle.block330, label %vector.body321, !llvm.loop !97

middle.block330:                                  ; preds = %vector.body321
  br i1 %cmp.n331, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174.preheader445

hex_blamp.exit178.backedge:                       ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174, %middle.block330, %bb.x, %hex_blep.exit170, %bb.u, %hex_blamp.exit162
  %.2125.be = phi i32 [ 0, %middle.block330 ], [ %i.eu, %hex_blamp.exit162 ], [ 0, %bb.x ], [ 0, %hex_blep.exit170 ], [ 0, %bb.u ], [ 0, %.lr.ph.i.i174 ], [ 0, %.lr.ph.i.i174.prol.loopexit ]
  %.1.be = phi float [ %i.la, %middle.block330 ], [ %.2.lcssa, %hex_blamp.exit162 ], [ %i.la, %bb.x ], [ %i.la, %hex_blep.exit170 ], [ %i.la, %bb.u ], [ %i.la, %.lr.ph.i.i174 ], [ %i.la, %.lr.ph.i.i174.prol.loopexit ]
  br label %hex_blamp.exit178

.lr.ph.i.i174.preheader445:                       ; preds = %vector.memcheck302, %.lr.ph.i.i174.preheader, %middle.block330
  %indvars.iv.i.i175.ph = phi i64 [ 0, %vector.memcheck302 ], [ 0, %.lr.ph.i.i174.preheader ], [ %n.vec316, %middle.block330 ] ; 6 uses
  br i1 %lcmp.mod462.not, label %.lr.ph.i.i174.prol.loopexit, label %.lr.ph.i.i174.prol

.lr.ph.i.i174.prol:                               ; preds = %.lr.ph.i.i174.preheader445
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv.i.i175.ph
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !17 ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.i.i175.ph
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !17
  %i.ox = fsub float %i.ow, %i.ou
  %i.oy = tail call float @llvm.fmuladd.f32(float %i.ox, float %i.od, float %i.ou)
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i175.ph ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !17
  %i.pb = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.oy, float %i.pa)
  store float %i.pb, ptr %i.oz, align 4, !tbaa !17
  %indvars.iv.next.i.i176.prol = or disjoint i64 %indvars.iv.i.i175.ph, 1
  br label %.lr.ph.i.i174.prol.loopexit

.lr.ph.i.i174.prol.loopexit:                      ; preds = %.lr.ph.i.i174.prol, %.lr.ph.i.i174.preheader445
  %indvars.iv.i.i175.unr = phi i64 [ %indvars.iv.i.i175.ph, %.lr.ph.i.i174.preheader445 ], [ %indvars.iv.next.i.i176.prol, %.lr.ph.i.i174.prol ]
  %i.pc = icmp eq i64 %indvars.iv.i.i175.ph, %i.et
  br i1 %i.pc, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174

.lr.ph.i.i174:                                    ; preds = %.lr.ph.i.i174.prol.loopexit, %.lr.ph.i.i174
  %indvars.iv.i.i175 = phi i64 [ %indvars.iv.next.i.i176.1, %.lr.ph.i.i174 ], [ %indvars.iv.i.i175.unr, %.lr.ph.i.i174.prol.loopexit ] ; 5 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv.i.i175
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !17 ; 2 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.i.i175
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !17
  %i.ph = fsub float %i.pg, %i.pe
  %i.pi = tail call float @llvm.fmuladd.f32(float %i.ph, float %i.od, float %i.pe)
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i.i175 ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !17
  %i.pl = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.pi, float %i.pk)
  store float %i.pl, ptr %i.pj, align 4, !tbaa !17
  %indvars.iv.next.i.i176 = add nuw nsw i64 %indvars.iv.i.i175, 1 ; 3 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %indvars.iv.next.i.i176
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17 ; 2 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv.next.i.i176
  %i.pp = load float, ptr %i.po, align 4, !tbaa !17
  %i.pq = fsub float %i.pp, %i.pn
  %i.pr = tail call float @llvm.fmuladd.f32(float %i.pq, float %i.od, float %i.pn)
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.next.i.i176 ; 2 uses
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !17
  %i.pu = tail call float @llvm.fmuladd.f32(float %i.nq, float %i.pr, float %i.pt)
  store float %i.pu, ptr %i.ps, align 4, !tbaa !17
  %indvars.iv.next.i.i176.1 = add nuw nsw i64 %indvars.iv.i.i175, 2 ; 2 uses
  %exitcond.not.i.i177.1 = icmp eq i64 %indvars.iv.next.i.i176.1, %wide.trip.count.i.i150
  br i1 %exitcond.not.i.i177.1, label %hex_blamp.exit178.backedge, label %.lr.ph.i.i174, !llvm.loop !98

.loopexit:                                        ; preds = %.lr.ph, %bb.r, %bb.i
  %.4 = phi float [ %.0122196, %bb.i ], [ %i.fn, %bb.r ], [ %.1, %.lr.ph ] ; 2 uses
  br i1 %i.dt, label %bb.y, label %bb.i, !llvm.loop !99

bb.y:                                             ; preds = %.loopexit
  %i.pv = load i32, ptr @hexblep, align 8, !tbaa !23 ; 6 uses
  %.not145 = icmp slt i32 %1, %i.pv
  br i1 %.not145, label %._crit_edge202, label %.preheader179

.preheader179:                                    ; preds = %bb.y
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %.preheader179
  %i.px = sub nsw i32 %1, %i.pv
  %i.py = sext i32 %i.px to i64
  %wide.trip.count = zext nneg i32 %i.pv to i64   ; 3 uses
  %invariant.gep275 = getelementptr [4 x i8], ptr %0, i64 %i.py ; 2 uses
  %min.iters.check432 = icmp ult i32 %i.pv, 8
  br i1 %min.iters.check432, label %scalar.ph431.preheader, label %vector.ph433

vector.ph433:                                     ; preds = %.lr.ph198
  %n.vec434 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body435

vector.body435:                                   ; preds = %vector.body435, %vector.ph433
  %index436 = phi i64 [ 0, %vector.ph433 ], [ %index.next441, %vector.body435 ] ; 3 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index436 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %wide.load437 = load <4 x float>, ptr %i.pz, align 16, !tbaa !17
  %wide.load438 = load <4 x float>, ptr %i.qa, align 16, !tbaa !17
  %i.qb = getelementptr [4 x i8], ptr %invariant.gep275, i64 %index436 ; 3 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 16     ; 2 uses
  %wide.load439 = load <4 x float>, ptr %i.qb, align 4, !tbaa !17
  %wide.load440 = load <4 x float>, ptr %i.qc, align 4, !tbaa !17
  %i.qd = fadd <4 x float> %wide.load437, %wide.load439
  %i.qe = fadd <4 x float> %wide.load438, %wide.load440
  store <4 x float> %i.qd, ptr %i.qb, align 4, !tbaa !17
  store <4 x float> %i.qe, ptr %i.qc, align 4, !tbaa !17
  %index.next441 = add nuw i64 %index436, 8       ; 2 uses
  %i.qf = icmp eq i64 %index.next441, %n.vec434
  br i1 %i.qf, label %middle.block442, label %vector.body435, !llvm.loop !100

middle.block442:                                  ; preds = %vector.body435
  %cmp.n443 = icmp eq i64 %n.vec434, %wide.trip.count
  br i1 %cmp.n443, label %._crit_edge199, label %scalar.ph431.preheader

scalar.ph431.preheader:                           ; preds = %.lr.ph198, %middle.block442
  %indvars.iv211.ph = phi i64 [ 0, %.lr.ph198 ], [ %n.vec434, %middle.block442 ]
  br label %scalar.ph431

scalar.ph431:                                     ; preds = %scalar.ph431.preheader, %scalar.ph431
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %scalar.ph431 ], [ %indvars.iv211.ph, %scalar.ph431.preheader ] ; 3 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !17
  %gep276 = getelementptr [4 x i8], ptr %invariant.gep275, i64 %indvars.iv211 ; 2 uses
  %i.qi = load float, ptr %gep276, align 4, !tbaa !17
  %i.qj = fadd float %i.qh, %i.qi
  store float %i.qj, ptr %gep276, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge199, label %scalar.ph431, !llvm.loop !101

._crit_edge199:                                   ; preds = %scalar.ph431, %middle.block442, %.preheader179
  %i.qk = sext i32 %i.pv to i64
  br label %bb.z

._crit_edge202:                                   ; preds = %bb.y
  %i.ql = zext nneg i32 %1 to i64
  %i.qm = shl nuw nsw i64 %i.ql, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.a, i64 %i.qm, i1 false), !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge202, %._crit_edge199
  %.sink280 = phi i64 [ %i.cu, %._crit_edge202 ], [ %i.qk, %._crit_edge199 ]
  %.sink = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.qn = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.sink280
  %i.qo = sext i32 %i.d to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sink, ptr nonnull align 4 %i.qn, i64 %i.qo, i1 false)
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
end_hunk_0
begin_hunk_1_@hexwave_init:bb.a
  %i.eu = extractelement <16 x double> %i.el, i64 2
  %i.ev = fadd double %i.er, %i.eu                ; 2 uses
  %i.ew = fmul double %i.ev, 6.250000e-02
  %i.ex = fadd double %i.et, %i.ew
  %i.ey = extractelement <16 x double> %i.el, i64 3
  %i.ez = fadd double %i.ev, %i.ey                ; 2 uses
  %i.fa = fmul double %i.ez, 6.250000e-02
  %i.fb = fadd double %i.ex, %i.fa
  %i.fc = extractelement <16 x double> %i.el, i64 4
  %i.fd = fadd double %i.ez, %i.fc                ; 2 uses
  %i.fe = fmul double %i.fd, 6.250000e-02
  %i.ff = fadd double %i.fb, %i.fe
  %i.fg = extractelement <16 x double> %i.el, i64 5
  %i.fh = fadd double %i.fd, %i.fg                ; 2 uses
  %i.fi = fmul double %i.fh, 6.250000e-02
  %i.fj = fadd double %i.ff, %i.fi
  %i.fk = extractelement <16 x double> %i.el, i64 6
  %i.fl = fadd double %i.fh, %i.fk                ; 2 uses
  %i.fm = fmul double %i.fl, 6.250000e-02
  %i.fn = fadd double %i.fj, %i.fm
  %i.fo = extractelement <16 x double> %i.el, i64 7
  %i.fp = fadd double %i.fl, %i.fo                ; 2 uses
  %i.fq = fmul double %i.fp, 6.250000e-02
  %i.fr = fadd double %i.fn, %i.fq
  %i.fs = extractelement <16 x double> %i.el, i64 8
  %i.ft = fadd double %i.fp, %i.fs                ; 2 uses
  %i.fu = fmul double %i.ft, 6.250000e-02
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = extractelement <16 x double> %i.el, i64 9
  %i.fx = fadd double %i.ft, %i.fw                ; 2 uses
  %i.fy = fmul double %i.fx, 6.250000e-02
  %i.fz = fadd double %i.fv, %i.fy
  %i.ga = extractelement <16 x double> %i.el, i64 10
  %i.gb = fadd double %i.fx, %i.ga                ; 2 uses
  %i.gc = fmul double %i.gb, 6.250000e-02
  %i.gd = fadd double %i.fz, %i.gc
  %i.ge = extractelement <16 x double> %i.el, i64 11
  %i.gf = fadd double %i.gb, %i.ge                ; 2 uses
  %i.gg = fmul double %i.gf, 6.250000e-02
  %i.gh = fadd double %i.gd, %i.gg
  %i.gi = extractelement <16 x double> %i.el, i64 12
  %i.gj = fadd double %i.gf, %i.gi                ; 2 uses
  %i.gk = fmul double %i.gj, 6.250000e-02
  %i.gl = fadd double %i.gh, %i.gk
  %i.gm = extractelement <16 x double> %i.el, i64 13
  %i.gn = fadd double %i.gj, %i.gm                ; 2 uses
  %i.go = fmul double %i.gn, 6.250000e-02
  %i.gp = fadd double %i.gl, %i.go
  %i.gq = extractelement <16 x double> %i.el, i64 14
  %i.gr = fadd double %i.gn, %i.gq                ; 2 uses
  %i.gs = fmul double %i.gr, 6.250000e-02
  %i.gt = fadd double %i.gp, %i.gs
  %i.gu = extractelement <16 x double> %i.el, i64 15
  %i.gv = fadd double %i.gr, %i.gu                ; 2 uses
  %i.gw = fmul double %i.gv, 6.250000e-02
  %i.gx = fadd double %i.gt, %i.gw
  br label %.split.us

.lr.ph:                                           ; preds = %.split.us
  %i.gy = zext nneg i32 %i.e to i64               ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gy ; 6 uses
  %i.ha = sitofp i32 %i.a to float                ; 4 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.gy ; 6 uses
  %smax175 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 0)
  %i.hc = or disjoint i32 %smax175, 1
  %wide.trip.count176 = zext nneg i32 %i.hc to i64 ; 2 uses
  %min.iters.check = icmp slt i32 %i.e, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv172.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 4 uses
  %i.hd = zext nneg i32 %smax to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv172.ph ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !17
  %i.hg = load float, ptr %i.gz, align 4, !tbaa !17
  %i.hh = fdiv float 1.000000e+00, %i.hg
  %i.hi = fmul float %i.hf, %i.hh
  store float %i.hi, ptr %i.he, align 4, !tbaa !17
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv172.ph ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !17
  %i.hl = load float, ptr %i.hb, align 4, !tbaa !17
  %i.hm = fdiv float %i.ha, %i.hl
  %i.hn = fmul float %i.hk, %i.hm
  store float %i.hn, ptr %i.hj, align 4, !tbaa !17
  %indvars.iv.next173.prol = or disjoint i64 %indvars.iv172.ph, 1
  %i.ho = icmp eq i64 %indvars.iv172.ph, %i.hd
  br i1 %i.ho, label %.preheader140, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hp = zext nneg i32 %smax to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  %i.hr = or disjoint i64 %i.hq, 4                ; 2 uses
  %i.hs = getelementptr i8, ptr %i.t, i64 %i.hr   ; 3 uses
  %i.ht = getelementptr i8, ptr %i.s, i64 %i.hr   ; 3 uses
  %i.hu = shl nuw nsw i64 %i.gy, 2
  %i.hv = or disjoint i64 %i.hu, 4                ; 2 uses
  %i.hw = getelementptr i8, ptr %i.t, i64 %i.hv   ; 2 uses
  %i.hx = getelementptr i8, ptr %i.s, i64 %i.hv   ; 2 uses
  %bound0 = icmp ult ptr %i.t, %i.ht
  %bound1 = icmp ult ptr %i.s, %i.hs
  %found.conflict = and i1 %bound0, %bound1
  %bound0229 = icmp ult ptr %i.t, %i.hw
  %bound1230 = icmp ult ptr %i.gz, %i.hs
  %found.conflict231 = and i1 %bound0229, %bound1230
  %conflict.rdx = or i1 %found.conflict, %found.conflict231
  %bound0232 = icmp ult ptr %i.t, %i.hx
  %bound1233 = icmp ult ptr %i.hb, %i.hs
  %found.conflict234 = and i1 %bound0232, %bound1233
  %conflict.rdx235 = or i1 %conflict.rdx, %found.conflict234
  %bound0236 = icmp ult ptr %i.s, %i.hw
  %bound1237 = icmp ult ptr %i.gz, %i.ht
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx239 = or i1 %conflict.rdx235, %found.conflict238
  %bound0240 = icmp ult ptr %i.s, %i.hx
  %bound1241 = icmp ult ptr %i.hb, %i.ht
  %found.conflict242 = and i1 %bound0240, %bound1241
  %conflict.rdx243 = or i1 %conflict.rdx239, %found.conflict242
  br i1 %conflict.rdx243, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count176, 2147483640 ; 2 uses
  %i.hy = load float, ptr %i.gz, align 4, !tbaa !17, !alias.scope !144
  %i.hz = fdiv float 1.000000e+00, %i.hy
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hz, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ia = load float, ptr %i.hb, align 4, !tbaa !17, !alias.scope !145
  %i.ib = fdiv float %i.ha, %i.ia
  %broadcast.splatinsert247 = insertelement <4 x float> poison, float %i.ib, i64 0
  %broadcast.splat248 = shufflevector <4 x float> %broadcast.splatinsert247, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ic, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %wide.load244 = load <4 x float>, ptr %i.id, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %i.ie = fmul <4 x float> %wide.load, %broadcast.splat
  %i.if = fmul <4 x float> %wide.load244, %broadcast.splat
  store <4 x float> %i.ie, ptr %i.ic, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  store <4 x float> %i.if, ptr %i.id, align 4, !tbaa !17, !alias.scope !146, !noalias !147
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %wide.load245 = load <4 x float>, ptr %i.ig, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %wide.load246 = load <4 x float>, ptr %i.ih, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %i.ii = fmul <4 x float> %wide.load245, %broadcast.splat248
  %i.ij = fmul <4 x float> %wide.load246, %broadcast.splat248
  store <4 x float> %i.ii, ptr %i.ig, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  store <4 x float> %i.ij, ptr %i.ih, align 4, !tbaa !17, !alias.scope !148, !noalias !149
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %scalar.ph.preheader, label %vector.body, !llvm.loop !128

.preheader142.split:                              ; preds = %.preheader142, %.preheader142.split
  %.0145 = phi i32 [ %i.jb, %.preheader142.split ], [ 0, %.preheader142 ]
  %.1121144 = phi double [ %i.ja, %.preheader142.split ], [ %.0120149, %.preheader142 ]
  %.1123143 = phi double [ %i.iy, %.preheader142.split ], [ %.0122148, %.preheader142 ]
  %i.il = tail call double @sin(double noundef %i.an) #12
  %i.im = fptrunc double %i.il to float
  %i.in = fdiv float %i.im, %i.am
  %i.io = tail call double @cos(double noundef %i.ad) #12
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double -4.873960e-01, double 3.557680e-01)
  %i.iq = tail call double @cos(double noundef %i.af) #12
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.iq, double 1.442320e-01, double %i.ip)
  %i.is = tail call double @cos(double noundef %i.ah) #12
  %i.it = tail call double @llvm.fmuladd.f64(double %i.is, double -1.260400e-02, double %i.ir)
  %i.iu = fptrunc double %i.it to float
  %i.iv = fmul float %i.in, %i.iu
  %i.iw = fpext float %i.iv to double
  %i.ix = fmul double %i.iw, 6.250000e-02
  %i.iy = fadd double %.1123143, %i.ix            ; 3 uses
  %i.iz = fmul double %i.iy, 6.250000e-02
  %i.ja = fadd double %.1121144, %i.iz            ; 2 uses
  %i.jb = add nuw nsw i32 %.0145, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.jb, 16
  br i1 %exitcond.not, label %.split.us, label %.preheader142.split, !llvm.loop !129

.split.us:                                        ; preds = %.preheader142.split, %.preheader142.split.us.preheader
  %.us-phi = phi double [ %i.gv, %.preheader142.split.us.preheader ], [ %i.iy, %.preheader142.split ] ; 2 uses
  %.us-phi146 = phi double [ %i.gx, %.preheader142.split.us.preheader ], [ %i.ja, %.preheader142.split ] ; 2 uses
  %i.jc = fptrunc double %.us-phi to float
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  store float %i.jc, ptr %i.jd, align 4, !tbaa !17
  %i.je = fptrunc double %.us-phi146 to float
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.je, ptr %i.jf, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond171.not, label %.lr.ph, label %.preheader142, !llvm.loop !130

.preheader140:                                    ; preds = %scalar.ph.preheader, %scalar.ph, %bb.d
  %.not132155 = icmp sgt i32 %1, -1
  %i.jg = icmp sgt i32 %spec.store.select135, 0
  %or.cond = and i1 %.not132155, %i.jg
  br i1 %or.cond, label %.preheader139.preheader, label %.preheader138

.preheader139.preheader:                          ; preds = %.preheader140
  %i.jh = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ji = zext nneg i32 %spec.store.select135 to i64 ; 8 uses
  %wide.trip.count186 = zext i32 %i.c to i64      ; 3 uses
  %3 = mul nuw nsw i64 %i.ji, %wide.trip.count186
  %i.jj = shl i64 %3, 2                           ; 2 uses
  %scevgep = getelementptr i8, ptr %.0125, i64 %i.jj ; 3 uses
  %scevgep250 = getelementptr i8, ptr %.0124, i64 %i.jj ; 3 uses
  %4 = add nuw nsw i64 %i.ji, %wide.trip.count186
  %5 = shl nuw nsw i64 %4, 2
  %6 = add nsw i64 %5, -4                         ; 2 uses
  %scevgep251 = getelementptr i8, ptr %i.t, i64 %6 ; 2 uses
  %scevgep252 = getelementptr i8, ptr %i.s, i64 %6 ; 2 uses
  %min.iters.check273 = icmp ugt i32 %spec.store.select135, 15
  %ident.check.not = icmp eq i32 %1, 1
  %or.cond317 = and i1 %min.iters.check273, %ident.check.not
  %bound0253 = icmp ult ptr %.0125, %scevgep250
  %bound1254 = icmp ult ptr %.0124, %scevgep
  %found.conflict255 = and i1 %bound0253, %bound1254
  %bound0256 = icmp ult ptr %.0125, %scevgep251
  %bound1257 = icmp ult ptr %i.t, %scevgep
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %found.conflict255, %found.conflict258
  %bound0260 = icmp ult ptr %.0125, %scevgep252
  %bound1261 = icmp ult ptr %i.s, %scevgep
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  %bound0264 = icmp ult ptr %.0124, %scevgep251
  %bound1265 = icmp ult ptr %i.t, %scevgep250
  %found.conflict266 = and i1 %bound0264, %bound1265
  %conflict.rdx267 = or i1 %conflict.rdx263, %found.conflict266
  %bound0268 = icmp ult ptr %.0124, %scevgep252
  %bound1269 = icmp ult ptr %i.s, %scevgep250
  %found.conflict270 = and i1 %bound0268, %bound1269
  %conflict.rdx271 = or i1 %conflict.rdx267, %found.conflict270
  %n.vec275 = and i64 %i.ji, 2147483640           ; 9 uses
  %i.jk = icmp eq i64 %n.vec275, 8
  %i.jl = icmp eq i64 %n.vec275, 16
  %i.jm = icmp eq i64 %n.vec275, 24
  %i.jn = icmp eq i64 %n.vec275, 32
  %i.jo = icmp eq i64 %n.vec275, 40
  %i.jp = icmp eq i64 %n.vec275, 48
  %i.jq = icmp eq i64 %n.vec275, 56
  %cmp.n284 = icmp eq i64 %n.vec275, %i.ji
  %xtraiter319 = and i64 %i.ji, 1
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  %i.jr = add nsw i64 %i.ji, -1
  br label %.preheader139

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph ], [ %indvars.iv.next173.prol, %scalar.ph.preheader ] ; 4 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv172 ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !17
  %i.ju = load float, ptr %i.gz, align 4, !tbaa !17
  %i.jv = fdiv float 1.000000e+00, %i.ju
  %i.jw = fmul float %i.jt, %i.jv
  store float %i.jw, ptr %i.js, align 4, !tbaa !17
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv172 ; 2 uses
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !17
  %i.jz = load float, ptr %i.hb, align 4, !tbaa !17
  %i.ka = fdiv float %i.ha, %i.jz
  %i.kb = fmul float %i.jy, %i.ka
  store float %i.kb, ptr %i.jx, align 4, !tbaa !17
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next173 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !17
  %i.ke = load float, ptr %i.gz, align 4, !tbaa !17
  %i.kf = fdiv float 1.000000e+00, %i.ke
  %i.kg = fmul float %i.kd, %i.kf
  store float %i.kg, ptr %i.kc, align 4, !tbaa !17
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next173 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !17
  %i.kj = load float, ptr %i.hb, align 4, !tbaa !17
  %i.kk = fdiv float %i.ha, %i.kj
  %i.kl = fmul float %i.ki, %i.kk
  store float %i.kl, ptr %i.kh, align 4, !tbaa !17
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %exitcond177.not.1 = icmp eq i64 %indvars.iv.next173.1, %wide.trip.count176
  br i1 %exitcond177.not.1, label %.preheader140, label %scalar.ph, !llvm.loop !131

.preheader139:                                    ; preds = %.preheader139.preheader, %._crit_edge
  %indvars.iv183 = phi i64 [ 0, %.preheader139.preheader ], [ %indvars.iv.next184, %._crit_edge ] ; 14 uses
  %i.km = mul nuw nsw i64 %indvars.iv183, %i.ji   ; 12 uses
  %or.cond317.not = xor i1 %or.cond317, true
  %brmerge = select i1 %or.cond317.not, i1 true, i1 %conflict.rdx271
  br i1 %brmerge, label %scalar.ph272.preheader, label %vector.body276

vector.body276:                                   ; preds = %.preheader139
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv183 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %wide.load278 = load <4 x float>, ptr %i.kn, align 4, !tbaa !17, !alias.scope !150
  %wide.load279 = load <4 x float>, ptr %i.ko, align 4, !tbaa !17, !alias.scope !150
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.km ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store <4 x float> %wide.load278, ptr %i.kp, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load279, ptr %i.kq, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv183 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %wide.load280 = load <4 x float>, ptr %i.kr, align 4, !tbaa !17, !alias.scope !153
  %wide.load281 = load <4 x float>, ptr %i.ks, align 4, !tbaa !17, !alias.scope !153
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.km ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  store <4 x float> %wide.load280, ptr %i.kt, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load281, ptr %i.ku, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jk, label %middle.block283, label %vector.body276.1

vector.body276.1:                                 ; preds = %vector.body276
  %i.kv = add nuw nsw i64 %indvars.iv183, 8       ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.kv ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %wide.load278.1 = load <4 x float>, ptr %i.kw, align 4, !tbaa !17, !alias.scope !150
  %wide.load279.1 = load <4 x float>, ptr %i.kx, align 4, !tbaa !17, !alias.scope !150
  %i.ky = add nuw nsw i64 %i.km, 8                ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  store <4 x float> %wide.load278.1, ptr %i.kz, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load279.1, ptr %i.la, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.kv ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %wide.load280.1 = load <4 x float>, ptr %i.lb, align 4, !tbaa !17, !alias.scope !153
  %wide.load281.1 = load <4 x float>, ptr %i.lc, align 4, !tbaa !17, !alias.scope !153
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.ky ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store <4 x float> %wide.load280.1, ptr %i.ld, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load281.1, ptr %i.le, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jl, label %middle.block283, label %vector.body276.2

vector.body276.2:                                 ; preds = %vector.body276.1
  %i.lf = add nuw nsw i64 %indvars.iv183, 16      ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %wide.load278.2 = load <4 x float>, ptr %i.lg, align 4, !tbaa !17, !alias.scope !150
  %wide.load279.2 = load <4 x float>, ptr %i.lh, align 4, !tbaa !17, !alias.scope !150
  %i.li = add nuw nsw i64 %i.km, 16               ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  store <4 x float> %wide.load278.2, ptr %i.lj, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load279.2, ptr %i.lk, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lf ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %wide.load280.2 = load <4 x float>, ptr %i.ll, align 4, !tbaa !17, !alias.scope !153
  %wide.load281.2 = load <4 x float>, ptr %i.lm, align 4, !tbaa !17, !alias.scope !153
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.li ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store <4 x float> %wide.load280.2, ptr %i.ln, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load281.2, ptr %i.lo, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jm, label %middle.block283, label %vector.body276.3

vector.body276.3:                                 ; preds = %vector.body276.2
  %i.lp = add nuw nsw i64 %indvars.iv183, 24      ; 2 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %wide.load278.3 = load <4 x float>, ptr %i.lq, align 4, !tbaa !17, !alias.scope !150
  %wide.load279.3 = load <4 x float>, ptr %i.lr, align 4, !tbaa !17, !alias.scope !150
  %i.ls = add nuw nsw i64 %i.km, 24               ; 2 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store <4 x float> %wide.load278.3, ptr %i.lt, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load279.3, ptr %i.lu, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lp ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %wide.load280.3 = load <4 x float>, ptr %i.lv, align 4, !tbaa !17, !alias.scope !153
  %wide.load281.3 = load <4 x float>, ptr %i.lw, align 4, !tbaa !17, !alias.scope !153
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.ls ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store <4 x float> %wide.load280.3, ptr %i.lx, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load281.3, ptr %i.ly, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jn, label %middle.block283, label %vector.body276.4

vector.body276.4:                                 ; preds = %vector.body276.3
  %i.lz = add nuw nsw i64 %indvars.iv183, 32      ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %wide.load278.4 = load <4 x float>, ptr %i.ma, align 4, !tbaa !17, !alias.scope !150
  %wide.load279.4 = load <4 x float>, ptr %i.mb, align 4, !tbaa !17, !alias.scope !150
  %i.mc = add nuw nsw i64 %i.km, 32               ; 2 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  store <4 x float> %wide.load278.4, ptr %i.md, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load279.4, ptr %i.me, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.lz ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %wide.load280.4 = load <4 x float>, ptr %i.mf, align 4, !tbaa !17, !alias.scope !153
  %wide.load281.4 = load <4 x float>, ptr %i.mg, align 4, !tbaa !17, !alias.scope !153
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.mc ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store <4 x float> %wide.load280.4, ptr %i.mh, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load281.4, ptr %i.mi, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jo, label %middle.block283, label %vector.body276.5

vector.body276.5:                                 ; preds = %vector.body276.4
  %i.mj = add nuw nsw i64 %indvars.iv183, 40      ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mj ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load278.5 = load <4 x float>, ptr %i.mk, align 4, !tbaa !17, !alias.scope !150
  %wide.load279.5 = load <4 x float>, ptr %i.ml, align 4, !tbaa !17, !alias.scope !150
  %i.mm = add nuw nsw i64 %i.km, 40               ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  store <4 x float> %wide.load278.5, ptr %i.mn, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load279.5, ptr %i.mo, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mj ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %wide.load280.5 = load <4 x float>, ptr %i.mp, align 4, !tbaa !17, !alias.scope !153
  %wide.load281.5 = load <4 x float>, ptr %i.mq, align 4, !tbaa !17, !alias.scope !153
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.mm ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store <4 x float> %wide.load280.5, ptr %i.mr, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load281.5, ptr %i.ms, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jp, label %middle.block283, label %vector.body276.6

vector.body276.6:                                 ; preds = %vector.body276.5
  %i.mt = add nuw nsw i64 %indvars.iv183, 48      ; 2 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %wide.load278.6 = load <4 x float>, ptr %i.mu, align 4, !tbaa !17, !alias.scope !150
  %wide.load279.6 = load <4 x float>, ptr %i.mv, align 4, !tbaa !17, !alias.scope !150
  %i.mw = add nuw nsw i64 %i.km, 48               ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.0125, i64 %i.mw ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store <4 x float> %wide.load278.6, ptr %i.mx, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  store <4 x float> %wide.load279.6, ptr %i.my, align 4, !tbaa !17, !alias.scope !151, !noalias !152
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.mt ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  %wide.load280.6 = load <4 x float>, ptr %i.mz, align 4, !tbaa !17, !alias.scope !153
  %wide.load281.6 = load <4 x float>, ptr %i.na, align 4, !tbaa !17, !alias.scope !153
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.0124, i64 %i.mw ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <4 x float> %wide.load280.6, ptr %i.nb, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  store <4 x float> %wide.load281.6, ptr %i.nc, align 4, !tbaa !17, !alias.scope !154, !noalias !155
  br i1 %i.jq, label %middle.block283, label %vector.body276.7

vector.body276.7:                                 ; preds = %vector.body276.6
end_hunk_1
