Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audiocvt?download=true
inline.NumInlined: 31
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@SDL_Convert51To21:bb.a
  %next.gep29 = getelementptr i8, ptr %i.r, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep26, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 32
  %i.u = getelementptr i8, ptr %i.q, i64 56
  %i.v = getelementptr i8, ptr %i.r, i64 80
  %i.w = load float, ptr %i.s, align 4, !alias.scope !209
  %i.x = load float, ptr %i.t, align 4, !alias.scope !209
  %i.y = load float, ptr %i.u, align 4, !alias.scope !209
  %i.z = load float, ptr %i.v, align 4, !alias.scope !209
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep26, i64 16
  %i.af = getelementptr i8, ptr %i.p, i64 40
  %i.ag = getelementptr i8, ptr %i.q, i64 64
  %i.ah = getelementptr i8, ptr %i.r, i64 88
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !209
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !209
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !209
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !209
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep26, i64 20
  %i.ar = getelementptr i8, ptr %i.p, i64 44
  %i.as = getelementptr i8, ptr %i.q, i64 68
  %i.at = getelementptr i8, ptr %i.r, i64 92
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !209
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !209
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !209
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !209
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = load float, ptr %next.gep26, align 4, !alias.scope !209
  %i.bd = load float, ptr %next.gep27, align 4, !alias.scope !209
  %i.be = load float, ptr %next.gep28, align 4, !alias.scope !209
  %i.bf = load float, ptr %next.gep29, align 4, !alias.scope !209
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep26, i64 4
  %i.bl = getelementptr i8, ptr %i.p, i64 28
  %i.bm = getelementptr i8, ptr %i.q, i64 52
  %i.bn = getelementptr i8, ptr %i.r, i64 76
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !209
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !209
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !209
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !209
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep26, i64 12
  %i.bx = getelementptr i8, ptr %i.p, i64 36
  %i.by = getelementptr i8, ptr %i.q, i64 60
  %i.bz = getelementptr i8, ptr %i.r, i64 84
  %i.ca = load float, ptr %i.bw, align 4, !alias.scope !209
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !209
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !209
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !209
  %i.ce = insertelement <8 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <8 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <8 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <8 x float> %i.cg, float %i.cd, i64 3
  %i.ci = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cj = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ck = shufflevector <4 x float> %i.bj, <4 x float> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cl = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cm = fmul <8 x float> %i.cl, splat (float 2.290000e-01)
  %i.cn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ck, <8 x float> splat (float 3.240000e-01), <8 x float> %i.cm)
  %i.co = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cj, <8 x float> <float 2.770000e-01, float 2.770000e-01, float 2.770000e-01, float 2.770000e-01, float 1.700000e-01, float 1.700000e-01, float 1.700000e-01, float 1.700000e-01>, <8 x float> %i.cn)
  %i.cp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ci, <8 x float> <float 1.700000e-01, float 1.700000e-01, float 1.700000e-01, float 1.700000e-01, float 2.770000e-01, float 2.770000e-01, float 2.770000e-01, float 2.770000e-01>, <8 x float> %i.co)
  %interleaved.vec = shufflevector <8 x float> %i.cp, <8 x float> %i.ch, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !210, !noalias !209
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.024.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01923.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02022.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader32, %.lr.ph
  %.024 = phi ptr [ %i.dn, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader32 ] ; 4 uses
  %.01923 = phi ptr [ %i.dm, %.lr.ph ], [ %.01923.ph, %.lr.ph.preheader32 ] ; 7 uses
  %.02022 = phi i32 [ %i.dl, %.lr.ph ], [ %.02022.ph, %.lr.ph.preheader32 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.01923, i64 8
  %i.cs = load float, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.01923, i64 16
  %i.cu = load float, ptr %i.ct, align 4          ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01923, i64 20
  %i.cw = load float, ptr %i.cv, align 4          ; 2 uses
  %i.cx = load float, ptr %.01923, align 4
  %i.cy = fmul float %i.cs, 2.290000e-01          ; 2 uses
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cx, float 3.240000e-01, float %i.cy)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cu, float 2.770000e-01, float %i.cz)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cw, float 1.700000e-01, float %i.da)
  store float %i.db, ptr %.024, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %.01923, i64 4
  %i.dd = load float, ptr %i.dc, align 4
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dd, float 3.240000e-01, float %i.cy)
  %i.df = tail call float @llvm.fmuladd.f32(float %i.cu, float 1.700000e-01, float %i.de)
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cw, float 2.770000e-01, float %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %.024, i64 4
  store float %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.01923, i64 12
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.024, i64 8
  store float %i.dj, ptr %i.dk, align 4
  %i.dl = add nsw i32 %.02022, -1                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.01923, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %.024, i64 12
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !208

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert51ToQuad(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not22 = icmp eq i32 %2, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 4
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 16
  %i.f = mul nuw nsw i64 %i.c, 24
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep26 = getelementptr i8, ptr %i.g, i64 24
  %bound0 = icmp ult ptr %0, %scevgep26
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = shl nuw nsw i64 %n.vec, 4
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = mul nuw nsw i64 %n.vec, 24
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 24                       ; 4 uses
  %next.gep27 = getelementptr i8, ptr %1, i64 %i.o ; 6 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
  %next.gep28 = getelementptr i8, ptr %i.p, i64 24
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
  %next.gep29 = getelementptr i8, ptr %i.q, i64 48
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
  %next.gep30 = getelementptr i8, ptr %i.r, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep27, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 32
  %i.u = getelementptr i8, ptr %i.q, i64 56
  %i.v = getelementptr i8, ptr %i.r, i64 80
  %i.w = load float, ptr %i.s, align 4, !alias.scope !216
  %i.x = load float, ptr %i.t, align 4, !alias.scope !216
  %i.y = load float, ptr %i.u, align 4, !alias.scope !216
  %i.z = load float, ptr %i.v, align 4, !alias.scope !216
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep27, i64 12
  %i.af = getelementptr i8, ptr %i.p, i64 36
  %i.ag = getelementptr i8, ptr %i.q, i64 60
  %i.ah = getelementptr i8, ptr %i.r, i64 84
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !216
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !216
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !216
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !216
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = load float, ptr %next.gep27, align 4, !alias.scope !216
  %i.ar = load float, ptr %next.gep28, align 4, !alias.scope !216
  %i.as = load float, ptr %next.gep29, align 4, !alias.scope !216
  %i.at = load float, ptr %next.gep30, align 4, !alias.scope !216
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep27, i64 4
  %i.az = getelementptr i8, ptr %i.p, i64 28
  %i.ba = getelementptr i8, ptr %i.q, i64 52
  %i.bb = getelementptr i8, ptr %i.r, i64 76
  %i.bc = load float, ptr %i.ay, align 4, !alias.scope !216
  %i.bd = load float, ptr %i.az, align 4, !alias.scope !216
  %i.be = load float, ptr %i.ba, align 4, !alias.scope !216
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !216
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep27, i64 16
  %i.bl = getelementptr i8, ptr %i.p, i64 40
  %i.bm = getelementptr i8, ptr %i.q, i64 64
  %i.bn = getelementptr i8, ptr %i.r, i64 88
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !216
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !216
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !216
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !216
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep27, i64 20
  %i.bx = getelementptr i8, ptr %i.p, i64 44
  %i.by = getelementptr i8, ptr %i.q, i64 68
  %i.bz = getelementptr i8, ptr %i.r, i64 92
  %i.ca = load float, ptr %i.bw, align 4, !alias.scope !216
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !216
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !216
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !216
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cj = shufflevector <4 x float> %i.ax, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cl = fmul <8 x float> %i.ck, splat (float f0x3EC9DFD1)
  %i.cm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cj, <8 x float> splat (float f0x3F0EDF55), <8 x float> %i.cl)
  %i.cn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ci, <8 x float> splat (float f0x3D430C31), <8 x float> %i.cm)
  %i.co = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = fmul <8 x float> %i.co, splat (float f0x3F0EDF55)
  %i.cq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ci, <8 x float> splat (float f0x3D430C31), <8 x float> %i.cp)
  %interleaved.vec = shufflevector <8 x float> %i.cn, <8 x float> %i.cq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !217, !noalias !216
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.025.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02024.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02123.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.025 = phi ptr [ %i.dr, %.lr.ph ], [ %.025.ph, %.lr.ph.preheader33 ] ; 5 uses
  %.02024 = phi ptr [ %i.dq, %.lr.ph ], [ %.02024.ph, %.lr.ph.preheader33 ] ; 7 uses
  %.02123 = phi i32 [ %i.dp, %.lr.ph ], [ %.02123.ph, %.lr.ph.preheader33 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.02024, i64 8
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.02024, i64 12
  %i.cv = load float, ptr %i.cu, align 4          ; 4 uses
  %i.cw = load float, ptr %.02024, align 4
  %i.cx = fmul float %i.ct, f0x3EC9DFD1           ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cw, float f0x3F0EDF55, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cv, float f0x3D430C31, float %i.cy)
  store float %i.cz, ptr %.025, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.02024, i64 4
  %i.db = load float, ptr %i.da, align 4
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float f0x3F0EDF55, float %i.cx)
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cv, float f0x3D430C31, float %i.dc)
  %i.de = getelementptr inbounds nuw i8, ptr %.025, i64 4
  store float %i.dd, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %.02024, i64 16
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = fmul float %i.dg, f0x3F0EDF55
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cv, float f0x3D430C31, float %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %.025, i64 8
  store float %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.02024, i64 20
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = fmul float %i.dl, f0x3F0EDF55
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cv, float f0x3D430C31, float %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %.025, i64 12
  store float %i.dn, ptr %i.do, align 4
  %i.dp = add nsw i32 %.02123, -1                 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.02024, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %.not = icmp eq i32 %i.dp, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !215

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert51To41(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not19 = icmp eq i32 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 44
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 20
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 20
  %i.f = mul nuw nsw i64 %i.c, 24
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep23 = getelementptr i8, ptr %i.g, i64 24
  %bound0 = icmp ult ptr %0, %scevgep23
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 20
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %2, %i.j
  %i.l = mul nuw nsw i64 %n.vec, 24
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 20
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 24                       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %1, i64 %i.o ; 6 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
  %next.gep25 = getelementptr i8, ptr %i.p, i64 24
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
  %next.gep26 = getelementptr i8, ptr %i.q, i64 48
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
  %next.gep27 = getelementptr i8, ptr %i.r, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep24, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 32
  %i.u = getelementptr i8, ptr %i.q, i64 56
  %i.v = getelementptr i8, ptr %i.r, i64 80
  %i.w = load float, ptr %i.s, align 4, !alias.scope !223
  %i.x = load float, ptr %i.t, align 4, !alias.scope !223
  %i.y = load float, ptr %i.u, align 4, !alias.scope !223
  %i.z = load float, ptr %i.v, align 4, !alias.scope !223
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = load float, ptr %next.gep24, align 4, !alias.scope !223
  %i.af = load float, ptr %next.gep25, align 4, !alias.scope !223
  %i.ag = load float, ptr %next.gep26, align 4, !alias.scope !223
  %i.ah = load float, ptr %next.gep27, align 4, !alias.scope !223
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep24, i64 4
  %i.an = getelementptr i8, ptr %i.p, i64 28
  %i.ao = getelementptr i8, ptr %i.q, i64 52
  %i.ap = getelementptr i8, ptr %i.r, i64 76
  %i.aq = load float, ptr %i.am, align 4, !alias.scope !223
  %i.ar = load float, ptr %i.an, align 4, !alias.scope !223
  %i.as = load float, ptr %i.ao, align 4, !alias.scope !223
  %i.at = load float, ptr %i.ap, align 4, !alias.scope !223
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep24, i64 12
  %i.az = getelementptr i8, ptr %i.p, i64 36
  %i.ba = getelementptr i8, ptr %i.q, i64 60
  %i.bb = getelementptr i8, ptr %i.r, i64 84
  %i.bc = load float, ptr %i.ay, align 4, !alias.scope !223
  %i.bd = load float, ptr %i.az, align 4, !alias.scope !223
  %i.be = load float, ptr %i.ba, align 4, !alias.scope !223
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !223
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep24, i64 16
  %i.bl = getelementptr i8, ptr %i.p, i64 40
  %i.bm = getelementptr i8, ptr %i.q, i64 64
  %i.bn = getelementptr i8, ptr %i.r, i64 88
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !223
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !223
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !223
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !223
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = fmul <4 x float> %i.bv, splat (float 5.860000e-01)
  %i.bx = getelementptr inbounds nuw i8, ptr %next.gep24, i64 20
  %i.by = getelementptr i8, ptr %i.p, i64 44
  %i.bz = getelementptr i8, ptr %i.q, i64 68
  %i.ca = getelementptr i8, ptr %i.r, i64 92
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !223
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !223
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !223
  %i.ce = load float, ptr %i.ca, align 4, !alias.scope !223
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = fmul <4 x float> %i.ci, splat (float 5.860000e-01)
  %i.ck = shufflevector <4 x float> %i.al, <4 x float> %i.ax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cl = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cm = fmul <8 x float> %i.cl, splat (float 4.140000e-01)
  %i.cn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ck, <8 x float> splat (float 5.860000e-01), <8 x float> %i.cm)
  %i.co = shufflevector <4 x float> %i.bj, <4 x float> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = shufflevector <8 x float> %i.cn, <8 x float> %i.co, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cq = shufflevector <4 x float> %i.cj, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.cp, <16 x float> %i.cq, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !224, !noalias !223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.022.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01721.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01820.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.022 = phi ptr [ %i.do, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader30 ] ; 6 uses
  %.01721 = phi i32 [ %i.dm, %.lr.ph ], [ %.01721.ph, %.lr.ph.preheader30 ]
end_hunk_0
begin_hunk_1_@SDL_Convert61To21:bb.a
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !246
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !246
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !246
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep29, i64 20
  %i.ar = getelementptr i8, ptr %i.p, i64 48
  %i.as = getelementptr i8, ptr %i.q, i64 76
  %i.at = getelementptr i8, ptr %i.r, i64 104
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !246
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !246
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !246
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !246
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep29, i64 24
  %i.bd = getelementptr i8, ptr %i.p, i64 52
  %i.be = getelementptr i8, ptr %i.q, i64 80
  %i.bf = getelementptr i8, ptr %i.r, i64 108
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !246
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !246
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !246
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !246
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = load float, ptr %next.gep29, align 4, !alias.scope !246
  %i.bp = load float, ptr %next.gep30, align 4, !alias.scope !246
  %i.bq = load float, ptr %next.gep31, align 4, !alias.scope !246
  %i.br = load float, ptr %next.gep32, align 4, !alias.scope !246
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep29, i64 4
  %i.bx = getelementptr i8, ptr %i.p, i64 32
  %i.by = getelementptr i8, ptr %i.q, i64 60
  %i.bz = getelementptr i8, ptr %i.r, i64 88
  %i.ca = load float, ptr %i.bw, align 4, !alias.scope !246
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !246
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !246
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !246
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep29, i64 12
  %i.cj = getelementptr i8, ptr %i.p, i64 40
  %i.ck = getelementptr i8, ptr %i.q, i64 68
  %i.cl = getelementptr i8, ptr %i.r, i64 96
  %i.cm = load float, ptr %i.ci, align 4, !alias.scope !246
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !246
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !246
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !246
  %i.cq = insertelement <8 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <8 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <8 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <8 x float> %i.cs, float %i.cp, i64 3
  %i.cu = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cv = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cw = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cx = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cy = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cz = fmul <8 x float> %i.cy, splat (float 1.890000e-01)
  %i.da = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cx, <8 x float> splat (float 2.680000e-01), <8 x float> %i.cz)
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cw, <8 x float> splat (float 1.890000e-01), <8 x float> %i.da)
  %i.dc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cv, <8 x float> <float 2.450000e-01, float 2.450000e-01, float 2.450000e-01, float 2.450000e-01, float 1.090000e-01, float 1.090000e-01, float 1.090000e-01, float 1.090000e-01>, <8 x float> %i.db)
  %i.dd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cu, <8 x float> <float 1.090000e-01, float 1.090000e-01, float 1.090000e-01, float 1.090000e-01, float 2.450000e-01, float 2.450000e-01, float 2.450000e-01, float 2.450000e-01>, <8 x float> %i.dc)
  %interleaved.vec = shufflevector <8 x float> %i.dd, <8 x float> %i.ct, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !247, !noalias !246
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02226.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02325.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader35, %.lr.ph
  %.027 = phi ptr [ %i.ef, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader35 ] ; 4 uses
  %.02226 = phi ptr [ %i.ee, %.lr.ph ], [ %.02226.ph, %.lr.ph.preheader35 ] ; 8 uses
  %.02325 = phi i32 [ %i.ed, %.lr.ph ], [ %.02325.ph, %.lr.ph.preheader35 ]
  %i.df = getelementptr inbounds nuw i8, ptr %.02226, i64 8
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.02226, i64 16
  %i.di = load float, ptr %i.dh, align 4          ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02226, i64 20
  %i.dk = load float, ptr %i.dj, align 4          ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02226, i64 24
  %i.dm = load float, ptr %i.dl, align 4          ; 2 uses
  %i.dn = load float, ptr %.02226, align 4
  %i.do = fmul float %i.dg, 1.890000e-01          ; 2 uses
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dn, float 2.680000e-01, float %i.do)
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.di, float 1.890000e-01, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dk, float 2.450000e-01, float %i.dq)
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dm, float 1.090000e-01, float %i.dr)
  store float %i.ds, ptr %.027, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.02226, i64 4
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.du, float 2.680000e-01, float %i.do)
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.di, float 1.890000e-01, float %i.dv)
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dk, float 1.090000e-01, float %i.dw)
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dm, float 2.450000e-01, float %i.dx)
  %i.dz = getelementptr inbounds nuw i8, ptr %.027, i64 4
  store float %i.dy, ptr %i.dz, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.02226, i64 12
  %i.eb = load float, ptr %i.ea, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %.027, i64 8
  store float %i.eb, ptr %i.ec, align 4
  %i.ed = add nsw i32 %.02325, -1                 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.02226, i64 28
  %i.ef = getelementptr inbounds nuw i8, ptr %.027, i64 12
  %.not = icmp eq i32 %i.ed, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !245

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert61ToQuad(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not29 = icmp eq i32 %2, 0
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 4
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 16
  %i.f = mul nuw nsw i64 %i.c, 28
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep33 = getelementptr i8, ptr %i.g, i64 28
  %bound0 = icmp ult ptr %0, %scevgep33
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = shl nuw nsw i64 %n.vec, 4
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = mul nuw nsw i64 %n.vec, 28
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 28                       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %1, i64 %i.o ; 7 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep35 = getelementptr i8, ptr %i.p, i64 28
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep36 = getelementptr i8, ptr %i.q, i64 56
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep37 = getelementptr i8, ptr %i.r, i64 84
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep34, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 36
  %i.u = getelementptr i8, ptr %i.q, i64 64
  %i.v = getelementptr i8, ptr %i.r, i64 92
  %i.w = load float, ptr %i.s, align 4, !alias.scope !253
  %i.x = load float, ptr %i.t, align 4, !alias.scope !253
  %i.y = load float, ptr %i.u, align 4, !alias.scope !253
  %i.z = load float, ptr %i.v, align 4, !alias.scope !253
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep34, i64 12
  %i.af = getelementptr i8, ptr %i.p, i64 40
  %i.ag = getelementptr i8, ptr %i.q, i64 68
  %i.ah = getelementptr i8, ptr %i.r, i64 96
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !253
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !253
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !253
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !253
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep34, i64 16
  %i.ar = getelementptr i8, ptr %i.p, i64 44
  %i.as = getelementptr i8, ptr %i.q, i64 72
  %i.at = getelementptr i8, ptr %i.r, i64 100
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !253
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !253
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !253
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !253
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep34, i64 20
  %i.bd = getelementptr i8, ptr %i.p, i64 48
  %i.be = getelementptr i8, ptr %i.q, i64 76
  %i.bf = getelementptr i8, ptr %i.r, i64 104
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !253
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !253
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !253
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !253
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep34, i64 24
  %i.bp = getelementptr i8, ptr %i.p, i64 52
  %i.bq = getelementptr i8, ptr %i.q, i64 80
  %i.br = getelementptr i8, ptr %i.r, i64 108
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !253
  %i.bt = load float, ptr %i.bp, align 4, !alias.scope !253
  %i.bu = load float, ptr %i.bq, align 4, !alias.scope !253
  %i.bv = load float, ptr %i.br, align 4, !alias.scope !253
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %i.ca = load float, ptr %next.gep34, align 4, !alias.scope !253
  %i.cb = load float, ptr %next.gep35, align 4, !alias.scope !253
  %i.cc = load float, ptr %next.gep36, align 4, !alias.scope !253
  %i.cd = load float, ptr %next.gep37, align 4, !alias.scope !253
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep34, i64 4
  %i.cj = getelementptr i8, ptr %i.p, i64 32
  %i.ck = getelementptr i8, ptr %i.q, i64 60
  %i.cl = getelementptr i8, ptr %i.r, i64 88
  %i.cm = load float, ptr %i.ci, align 4, !alias.scope !253
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !253
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !253
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !253
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = shufflevector <4 x float> %i.bn, <4 x float> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.cv = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.cw = shufflevector <4 x float> %i.ch, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cy = fmul <8 x float> %i.cx, splat (float 3.273600e-01)
  %i.cz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cw, <8 x float> splat (float 4.636800e-01), <8 x float> %i.cy)
  %i.da = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cv, <8 x float> splat (float f0x3D23D70B), <8 x float> %i.cz)
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cu, <8 x float> splat (float 1.689600e-01), <8 x float> %i.da)
  %i.dc = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dd = fmul <8 x float> %i.dc, splat (float 3.273600e-01)
  %i.de = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cv, <8 x float> splat (float f0x3D23D70B), <8 x float> %i.dd)
  %i.df = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cu, <8 x float> splat (float 4.310400e-01), <8 x float> %i.de)
  %interleaved.vec = shufflevector <8 x float> %i.db, <8 x float> %i.df, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !254, !noalias !253
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.032.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02731.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02830.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %.032 = phi ptr [ %i.en, %.lr.ph ], [ %.032.ph, %.lr.ph.preheader40 ] ; 4 uses
  %.02731 = phi ptr [ %i.em, %.lr.ph ], [ %.02731.ph, %.lr.ph.preheader40 ] ; 7 uses
  %.02830 = phi i32 [ %i.el, %.lr.ph ], [ %.02830.ph, %.lr.ph.preheader40 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.02731, i64 8
  %i.di = load float, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.02731, i64 12
  %i.dk = load float, ptr %i.dj, align 4          ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02731, i64 16
  %i.dm = load float, ptr %i.dl, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.02731, i64 20
  %i.do = load float, ptr %.02731, align 4
  %i.dp = fmul float %i.di, 3.273600e-01          ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float 4.636800e-01, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dk, float f0x3D23D70B, float %i.dq)
  %i.ds = getelementptr inbounds nuw i8, ptr %.02731, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.du = load <2 x float>, ptr %i.dn, align 4    ; 3 uses
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = extractelement <2 x float> %i.du, i64 0
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float 1.689600e-01, float %i.dr)
  store float %i.dx, ptr %.032, align 4
  %i.dy = load float, ptr %i.ds, align 4
  %i.dz = fmul float %i.dm, 3.273600e-01
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dy, float 4.636800e-01, float %i.dp)
  %i.eb = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.dz, i64 1
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> splat (float f0x3D23D70B), <2 x float> %i.ee) ; 2 uses
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> <float 1.689600e-01, float 4.310400e-01>, <2 x float> %i.ef)
  store <2 x float> %i.eg, ptr %i.dt, align 4
  %i.eh = extractelement <2 x float> %i.du, i64 1
  %i.ei = extractelement <2 x float> %i.ef, i64 1
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.eh, float 4.310400e-01, float %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %.032, i64 12
  store float %i.ej, ptr %i.ek, align 4
  %i.el = add nsw i32 %.02830, -1                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02731, i64 28
  %i.en = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %.not = icmp eq i32 %i.el, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !252

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert61To41(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not26 = icmp eq i32 %2, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader37, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 20
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 20
  %i.f = mul nuw nsw i64 %i.c, 28
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep30 = getelementptr i8, ptr %i.g, i64 28
  %bound0 = icmp ult ptr %0, %scevgep30
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader37, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 20
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = mul nuw nsw i64 %n.vec, 28
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 20
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 28                       ; 4 uses
  %next.gep31 = getelementptr i8, ptr %1, i64 %i.o ; 7 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep32 = getelementptr i8, ptr %i.p, i64 28
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep33 = getelementptr i8, ptr %i.q, i64 56
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep34 = getelementptr i8, ptr %i.r, i64 84
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep31, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 36
  %i.u = getelementptr i8, ptr %i.q, i64 64
  %i.v = getelementptr i8, ptr %i.r, i64 92
  %i.w = load float, ptr %i.s, align 4, !alias.scope !260
  %i.x = load float, ptr %i.t, align 4, !alias.scope !260
  %i.y = load float, ptr %i.u, align 4, !alias.scope !260
  %i.z = load float, ptr %i.v, align 4, !alias.scope !260
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep31, i64 16
  %i.af = getelementptr i8, ptr %i.p, i64 44
  %i.ag = getelementptr i8, ptr %i.q, i64 72
  %i.ah = getelementptr i8, ptr %i.r, i64 100
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !260
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !260
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !260
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !260
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep31, i64 20
  %i.ar = getelementptr i8, ptr %i.p, i64 48
  %i.as = getelementptr i8, ptr %i.q, i64 76
  %i.at = getelementptr i8, ptr %i.r, i64 104
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !260
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !260
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !260
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !260
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep31, i64 24
  %i.bd = getelementptr i8, ptr %i.p, i64 52
  %i.be = getelementptr i8, ptr %i.q, i64 80
  %i.bf = getelementptr i8, ptr %i.r, i64 108
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !260
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !260
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !260
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !260
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3 ; 2 uses
  %i.bo = load float, ptr %next.gep31, align 4, !alias.scope !260
  %i.bp = load float, ptr %next.gep32, align 4, !alias.scope !260
  %i.bq = load float, ptr %next.gep33, align 4, !alias.scope !260
  %i.br = load float, ptr %next.gep34, align 4, !alias.scope !260
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep31, i64 4
  %i.bx = getelementptr i8, ptr %i.p, i64 32
  %i.by = getelementptr i8, ptr %i.q, i64 60
  %i.bz = getelementptr i8, ptr %i.r, i64 88
  %i.ca = load float, ptr %i.bw, align 4, !alias.scope !260
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !260
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !260
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !260
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep31, i64 12
  %i.cj = getelementptr i8, ptr %i.p, i64 40
  %i.ck = getelementptr i8, ptr %i.q, i64 68
  %i.cl = getelementptr i8, ptr %i.r, i64 96
  %i.cm = load float, ptr %i.ci, align 4, !alias.scope !260
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !260
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !260
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !260
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = fmul <4 x float> %i.bb, splat (float 4.490000e-01)
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float 3.410000e-01), <4 x float> %i.cu)
  %i.cw = fmul <4 x float> %i.bn, splat (float 4.490000e-01)
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float 3.410000e-01), <4 x float> %i.cw)
  %i.cy = shufflevector <4 x float> %i.bb, <4 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cz = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.db = fmul <8 x float> %i.da, splat (float 3.410000e-01)
  %i.dc = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cz, <8 x float> splat (float 4.830000e-01), <8 x float> %i.db)
  %i.dd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cy, <8 x float> splat (float 1.760000e-01), <8 x float> %i.dc)
end_hunk_1
begin_hunk_2_@SDL_Convert71To21:bb.a
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep32, i64 24
  %i.bd = getelementptr i8, ptr %i.p, i64 56
  %i.be = getelementptr i8, ptr %i.q, i64 88
  %i.bf = getelementptr i8, ptr %i.r, i64 120
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !289
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !289
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !289
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !289
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep32, i64 28
  %i.bp = getelementptr i8, ptr %i.p, i64 60
  %i.bq = getelementptr i8, ptr %i.q, i64 92
  %i.br = getelementptr i8, ptr %i.r, i64 124
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !289
  %i.bt = load float, ptr %i.bp, align 4, !alias.scope !289
  %i.bu = load float, ptr %i.bq, align 4, !alias.scope !289
  %i.bv = load float, ptr %i.br, align 4, !alias.scope !289
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %i.ca = load float, ptr %next.gep32, align 4, !alias.scope !289
  %i.cb = load float, ptr %next.gep33, align 4, !alias.scope !289
  %i.cc = load float, ptr %next.gep34, align 4, !alias.scope !289
  %i.cd = load float, ptr %next.gep35, align 4, !alias.scope !289
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep32, i64 4
  %i.cj = getelementptr i8, ptr %i.p, i64 36
  %i.ck = getelementptr i8, ptr %i.q, i64 68
  %i.cl = getelementptr i8, ptr %i.r, i64 100
  %i.cm = load float, ptr %i.ci, align 4, !alias.scope !289
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !289
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !289
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !289
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = getelementptr inbounds nuw i8, ptr %next.gep32, i64 12
  %i.cv = getelementptr i8, ptr %i.p, i64 44
  %i.cw = getelementptr i8, ptr %i.q, i64 76
  %i.cx = getelementptr i8, ptr %i.r, i64 108
  %i.cy = load float, ptr %i.cu, align 4, !alias.scope !289
  %i.cz = load float, ptr %i.cv, align 4, !alias.scope !289
  %i.da = load float, ptr %i.cw, align 4, !alias.scope !289
  %i.db = load float, ptr %i.cx, align 4, !alias.scope !289
  %i.dc = insertelement <8 x float> poison, float %i.cy, i64 0
  %i.dd = insertelement <8 x float> %i.dc, float %i.cz, i64 1
  %i.de = insertelement <8 x float> %i.dd, float %i.da, i64 2
  %i.df = insertelement <8 x float> %i.de, float %i.db, i64 3
  %i.dg = shufflevector <4 x float> %i.bz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dh = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.di = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dj = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dk = shufflevector <4 x float> %i.ch, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dm = fmul <8 x float> %i.dl, splat (float 1.610000e-01)
  %i.dn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dk, <8 x float> splat (float 2.270000e-01), <8 x float> %i.dm)
  %i.do = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dj, <8 x float> <float 1.940000e-01, float 1.940000e-01, float 1.940000e-01, float 1.940000e-01, float 1.190000e-01, float 1.190000e-01, float 1.190000e-01, float 1.190000e-01>, <8 x float> %i.dn)
  %i.dp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.di, <8 x float> <float 1.190000e-01, float 1.190000e-01, float 1.190000e-01, float 1.190000e-01, float 1.940000e-01, float 1.940000e-01, float 1.940000e-01, float 1.940000e-01>, <8 x float> %i.do)
  %i.dq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dh, <8 x float> <float 2.080000e-01, float 2.080000e-01, float 2.080000e-01, float 2.080000e-01, float 9.200000e-02, float 9.200000e-02, float 9.200000e-02, float 9.200000e-02>, <8 x float> %i.dp)
  %i.dr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dg, <8 x float> <float 9.200000e-02, float 9.200000e-02, float 9.200000e-02, float 9.200000e-02, float 2.080000e-01, float 2.080000e-01, float 2.080000e-01, float 2.080000e-01>, <8 x float> %i.dq)
  %interleaved.vec = shufflevector <8 x float> %i.dr, <8 x float> %i.df, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !290, !noalias !289
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02529.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02628.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.ex, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02529 = phi ptr [ %i.ew, %.lr.ph ], [ %.02529.ph, %.lr.ph.preheader38 ] ; 9 uses
  %.02628 = phi i32 [ %i.ev, %.lr.ph ], [ %.02628.ph, %.lr.ph.preheader38 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.02529, i64 8
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.02529, i64 16
  %i.dw = load float, ptr %i.dv, align 4          ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02529, i64 20
  %i.dy = load float, ptr %i.dx, align 4          ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.02529, i64 24
  %i.ea = load float, ptr %i.dz, align 4          ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.02529, i64 28
  %i.ec = load float, ptr %i.eb, align 4          ; 2 uses
  %i.ed = load float, ptr %.02529, align 4
  %i.ee = fmul float %i.du, 1.610000e-01          ; 2 uses
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ed, float 2.270000e-01, float %i.ee)
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.dw, float 1.940000e-01, float %i.ef)
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.dy, float 1.190000e-01, float %i.eg)
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.ea, float 2.080000e-01, float %i.eh)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ec, float 9.200000e-02, float %i.ei)
  store float %i.ej, ptr %.030, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %.02529, i64 4
  %i.el = load float, ptr %i.ek, align 4
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float 2.270000e-01, float %i.ee)
  %i.en = tail call float @llvm.fmuladd.f32(float %i.dw, float 1.190000e-01, float %i.em)
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.dy, float 1.940000e-01, float %i.en)
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ea, float 9.200000e-02, float %i.eo)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ec, float 2.080000e-01, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %.030, i64 4
  store float %i.eq, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %.02529, i64 12
  %i.et = load float, ptr %i.es, align 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store float %i.et, ptr %i.eu, align 4
  %i.ev = add nsw i32 %.02628, -1                 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02529, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %.not = icmp eq i32 %i.ev, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !288

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert71ToQuad(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not28 = icmp eq i32 %2, 0
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 4
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 16
  %i.f = shl nuw nsw i64 %i.c, 5
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep32 = getelementptr i8, ptr %i.g, i64 32
  %bound0 = icmp ult ptr %0, %scevgep32
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = shl nuw nsw i64 %n.vec, 4
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl nuw nsw i64 %n.vec, 5
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl i64 %index, 5                        ; 4 uses
  %next.gep33 = getelementptr i8, ptr %1, i64 %i.o ; 8 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep34 = getelementptr i8, ptr %i.p, i64 32
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep35 = getelementptr i8, ptr %i.q, i64 64
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep36 = getelementptr i8, ptr %i.r, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep33, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 40
  %i.u = getelementptr i8, ptr %i.q, i64 72
  %i.v = getelementptr i8, ptr %i.r, i64 104
  %i.w = load float, ptr %i.s, align 4, !alias.scope !296
  %i.x = load float, ptr %i.t, align 4, !alias.scope !296
  %i.y = load float, ptr %i.u, align 4, !alias.scope !296
  %i.z = load float, ptr %i.v, align 4, !alias.scope !296
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep33, i64 12
  %i.af = getelementptr i8, ptr %i.p, i64 44
  %i.ag = getelementptr i8, ptr %i.q, i64 76
  %i.ah = getelementptr i8, ptr %i.r, i64 108
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !296
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !296
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !296
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !296
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep33, i64 24
  %i.ar = getelementptr i8, ptr %i.p, i64 56
  %i.as = getelementptr i8, ptr %i.q, i64 88
  %i.at = getelementptr i8, ptr %i.r, i64 120
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !296
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !296
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !296
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !296
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep33, i64 28
  %i.bd = getelementptr i8, ptr %i.p, i64 60
  %i.be = getelementptr i8, ptr %i.q, i64 92
  %i.bf = getelementptr i8, ptr %i.r, i64 124
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !296
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !296
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !296
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !296
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = load float, ptr %next.gep33, align 4, !alias.scope !296
  %i.bp = load float, ptr %next.gep34, align 4, !alias.scope !296
  %i.bq = load float, ptr %next.gep35, align 4, !alias.scope !296
  %i.br = load float, ptr %next.gep36, align 4, !alias.scope !296
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep33, i64 4
  %i.bx = getelementptr i8, ptr %i.p, i64 36
  %i.by = getelementptr i8, ptr %i.q, i64 68
  %i.bz = getelementptr i8, ptr %i.r, i64 100
  %i.ca = load float, ptr %i.bw, align 4, !alias.scope !296
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !296
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !296
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !296
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep33, i64 16
  %i.cj = getelementptr i8, ptr %i.p, i64 48
  %i.ck = getelementptr i8, ptr %i.q, i64 80
  %i.cl = getelementptr i8, ptr %i.r, i64 112
  %i.cm = load float, ptr %i.ci, align 4, !alias.scope !296
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !296
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !296
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !296
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = getelementptr inbounds nuw i8, ptr %next.gep33, i64 20
  %i.cv = getelementptr i8, ptr %i.p, i64 52
  %i.cw = getelementptr i8, ptr %i.q, i64 84
  %i.cx = getelementptr i8, ptr %i.r, i64 116
  %i.cy = load float, ptr %i.cu, align 4, !alias.scope !296
  %i.cz = load float, ptr %i.cv, align 4, !alias.scope !296
  %i.da = load float, ptr %i.cw, align 4, !alias.scope !296
  %i.db = load float, ptr %i.cx, align 4, !alias.scope !296
  %i.dc = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 1
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 2
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 3
  %i.dg = shufflevector <4 x float> %i.bb, <4 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.dh = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.di = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dk = fmul <8 x float> %i.dj, splat (float f0x3EA89253)
  %i.dl = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.di, <8 x float> splat (float f0x3EEEC4C0), <8 x float> %i.dk)
  %i.dm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dh, <8 x float> splat (float f0x3D0D3DCB), <8 x float> %i.dl)
  %i.dn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dg, <8 x float> splat (float f0x3E2E0267), <8 x float> %i.dm)
  %i.do = shufflevector <4 x float> %i.ct, <4 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dp = fmul <8 x float> %i.do, splat (float f0x3EEEC4C0)
  %i.dq = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dh, <8 x float> splat (float f0x3D0D3DCB), <8 x float> %i.dp)
  %i.dr = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dg, <8 x float> splat (float f0x3EDDF5F9), <8 x float> %i.dq)
  %interleaved.vec = shufflevector <8 x float> %i.dn, <8 x float> %i.dr, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !297, !noalias !296
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.031.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02630.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02729.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader39, %.lr.ph
  %.031 = phi ptr [ %i.fa, %.lr.ph ], [ %.031.ph, %.lr.ph.preheader39 ] ; 5 uses
  %.02630 = phi ptr [ %i.ez, %.lr.ph ], [ %.02630.ph, %.lr.ph.preheader39 ] ; 9 uses
  %.02729 = phi i32 [ %i.ey, %.lr.ph ], [ %.02729.ph, %.lr.ph.preheader39 ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.02630, i64 8
  %i.du = load float, ptr %i.dt, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.02630, i64 12
  %i.dw = load float, ptr %i.dv, align 4          ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.02630, i64 24
  %i.dy = load float, ptr %i.dx, align 4          ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.02630, i64 28
  %i.ea = load float, ptr %i.dz, align 4          ; 2 uses
  %i.eb = load float, ptr %.02630, align 4
  %i.ec = fmul float %i.du, f0x3EA89253           ; 2 uses
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.eb, float f0x3EEEC4C0, float %i.ec)
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dw, float f0x3D0D3DCB, float %i.ed)
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.dy, float f0x3E2E0267, float %i.ee)
  store float %i.ef, ptr %.031, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.02630, i64 4
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float f0x3EEEC4C0, float %i.ec)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.dw, float f0x3D0D3DCB, float %i.ei)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ea, float f0x3E2E0267, float %i.ej)
  %i.el = getelementptr inbounds nuw i8, ptr %.031, i64 4
  store float %i.ek, ptr %i.el, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %.02630, i64 16
  %i.en = load float, ptr %i.em, align 4
  %i.eo = fmul float %i.en, f0x3EEEC4C0
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.dw, float f0x3D0D3DCB, float %i.eo)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.dy, float f0x3EDDF5F9, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %.031, i64 8
  store float %i.eq, ptr %i.er, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %.02630, i64 20
  %i.et = load float, ptr %i.es, align 4
  %i.eu = fmul float %i.et, f0x3EEEC4C0
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.dw, float f0x3D0D3DCB, float %i.eu)
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.ea, float f0x3EDDF5F9, float %i.ev)
  %i.ex = getelementptr inbounds nuw i8, ptr %.031, i64 12
  store float %i.ew, ptr %i.ex, align 4
  %i.ey = add nsw i32 %.02729, -1                 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  %i.fa = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %.not = icmp eq i32 %i.ey, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !295

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert71To41(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not25 = icmp eq i32 %2, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 20
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 20
  %i.f = shl nuw nsw i64 %i.c, 5
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep29 = getelementptr i8, ptr %i.g, i64 32
  %bound0 = icmp ult ptr %0, %scevgep29
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 20
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl nuw nsw i64 %n.vec, 5
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 20
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl i64 %index, 5                        ; 4 uses
  %next.gep30 = getelementptr i8, ptr %1, i64 %i.o ; 8 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep31 = getelementptr i8, ptr %i.p, i64 32
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep32 = getelementptr i8, ptr %i.q, i64 64
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep33 = getelementptr i8, ptr %i.r, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep30, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 40
  %i.u = getelementptr i8, ptr %i.q, i64 72
  %i.v = getelementptr i8, ptr %i.r, i64 104
  %i.w = load float, ptr %i.s, align 4, !alias.scope !303
  %i.x = load float, ptr %i.t, align 4, !alias.scope !303
  %i.y = load float, ptr %i.u, align 4, !alias.scope !303
  %i.z = load float, ptr %i.v, align 4, !alias.scope !303
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep30, i64 24
  %i.af = getelementptr i8, ptr %i.p, i64 56
  %i.ag = getelementptr i8, ptr %i.q, i64 88
  %i.ah = getelementptr i8, ptr %i.r, i64 120
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !303
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !303
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !303
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !303
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep30, i64 28
  %i.ar = getelementptr i8, ptr %i.p, i64 60
  %i.as = getelementptr i8, ptr %i.q, i64 92
  %i.at = getelementptr i8, ptr %i.r, i64 124
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !303
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !303
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !303
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !303
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
  %i.bc = load float, ptr %next.gep30, align 4, !alias.scope !303
  %i.bd = load float, ptr %next.gep31, align 4, !alias.scope !303
  %i.be = load float, ptr %next.gep32, align 4, !alias.scope !303
  %i.bf = load float, ptr %next.gep33, align 4, !alias.scope !303
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep30, i64 4
  %i.bl = getelementptr i8, ptr %i.p, i64 36
  %i.bm = getelementptr i8, ptr %i.q, i64 68
  %i.bn = getelementptr i8, ptr %i.r, i64 100
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !303
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !303
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !303
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !303
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep30, i64 12
  %i.bx = getelementptr i8, ptr %i.p, i64 44
  %i.by = getelementptr i8, ptr %i.q, i64 76
  %i.bz = getelementptr i8, ptr %i.r, i64 108
  %i.ca = load float, ptr %i.bw, align 4, !alias.scope !303
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !303
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !303
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !303
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw i8, ptr %next.gep30, i64 16
  %i.cj = getelementptr i8, ptr %i.p, i64 48
  %i.ck = getelementptr i8, ptr %i.q, i64 80
  %i.cl = getelementptr i8, ptr %i.r, i64 112
  %i.cm = load float, ptr %i.ci, align 4, !alias.scope !303
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !303
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !303
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !303
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = fmul <4 x float> %i.ap, splat (float 4.490000e-01)
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> splat (float 4.830000e-01), <4 x float> %i.cu)
  %i.cw = getelementptr inbounds nuw i8, ptr %next.gep30, i64 20
  %i.cx = getelementptr i8, ptr %i.p, i64 52
  %i.cy = getelementptr i8, ptr %i.q, i64 84
  %i.cz = getelementptr i8, ptr %i.r, i64 116
  %i.da = load float, ptr %i.cw, align 4, !alias.scope !303
  %i.db = load float, ptr %i.cx, align 4, !alias.scope !303
end_hunk_2
