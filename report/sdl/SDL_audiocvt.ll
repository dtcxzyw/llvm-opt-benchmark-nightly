Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audiocvt?download=true
inline.NumInlined: 31
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@SDL_Convert61To21:bb.a
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
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
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
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3 ; 2 uses
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
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3 ; 2 uses
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
  %i.cu = shufflevector <4 x float> %i.bn, <4 x float> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cv = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cw = shufflevector <4 x float> %i.ch, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cy = fmul <8 x float> %i.cx, splat (float 3.273600e-01)
  %i.cz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cw, <8 x float> splat (float 4.636800e-01), <8 x float> %i.cy)
  %i.da = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cv, <8 x float> splat (float f0x3D23D70B), <8 x float> %i.cz)
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cu, <8 x float> splat (float 1.689600e-01), <8 x float> %i.da)
  %i.dc = shufflevector <4 x float> %i.bn, <4 x float> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dd = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.de = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.df = fmul <8 x float> %i.de, splat (float 3.273600e-01)
  %i.dg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dd, <8 x float> splat (float f0x3D23D70B), <8 x float> %i.df)
  %i.dh = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dc, <8 x float> splat (float 4.310400e-01), <8 x float> %i.dg)
  %interleaved.vec = shufflevector <8 x float> %i.db, <8 x float> %i.dh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !254, !noalias !253
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.032.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02731.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02830.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %.032 = phi ptr [ %i.eo, %.lr.ph ], [ %.032.ph, %.lr.ph.preheader40 ] ; 4 uses
  %.02731 = phi ptr [ %i.en, %.lr.ph ], [ %.02731.ph, %.lr.ph.preheader40 ] ; 7 uses
  %.02830 = phi i32 [ %i.em, %.lr.ph ], [ %.02830.ph, %.lr.ph.preheader40 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.02731, i64 8
  %i.dk = load float, ptr %i.dj, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.02731, i64 12
  %i.dm = load float, ptr %i.dl, align 4          ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.02731, i64 16
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.02731, i64 20
  %i.dq = load float, ptr %.02731, align 4
  %i.dr = fmul float %i.dk, 3.273600e-01          ; 2 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dq, float 4.636800e-01, float %i.dr)
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dm, float f0x3D23D70B, float %i.ds)
  %i.du = getelementptr inbounds nuw i8, ptr %.02731, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.dw = load <2 x float>, ptr %i.dp, align 4    ; 3 uses
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dy = extractelement <2 x float> %i.dw, i64 0
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float 1.689600e-01, float %i.dt)
  store float %i.dz, ptr %.032, align 4
  %i.ea = load float, ptr %i.du, align 4
  %3 = fmul float %i.do, 3.273600e-01
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float 4.636800e-01, float %i.dr)
  %i.ec = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ef = insertelement <2 x float> %i.ee, float %3, i64 1
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> splat (float f0x3D23D70B), <2 x float> %i.ef) ; 2 uses
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> <float 1.689600e-01, float 4.310400e-01>, <2 x float> %i.eg)
  store <2 x float> %i.eh, ptr %i.dv, align 4
  %i.ei = extractelement <2 x float> %i.dw, i64 1
  %i.ej = extractelement <2 x float> %i.eg, i64 1
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ei, float 4.310400e-01, float %i.ej)
  %i.el = getelementptr inbounds nuw i8, ptr %.032, i64 12
  store float %i.ek, ptr %i.el, align 4
  %i.em = add nsw i32 %.02830, -1                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.02731, i64 28
  %i.eo = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %.not = icmp eq i32 %i.em, 0
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
  %i.de = shufflevector <4 x float> %i.ct, <4 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.df = shufflevector <8 x float> %i.dd, <8 x float> %i.de, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dg = shufflevector <4 x float> %i.cx, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.df, <16 x float> %i.dg, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !261, !noalias !260
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.029.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02428.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02527.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.029 = phi ptr [ %i.ej, %.lr.ph ], [ %.029.ph, %.lr.ph.preheader37 ] ; 5 uses
  %.02428 = phi ptr [ %i.ei, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader37 ] ; 7 uses
  %.02527 = phi i32 [ %i.eh, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader37 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.02428, i64 8
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.02428, i64 16
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.02428, i64 20
  %i.dn = load float, ptr %.02428, align 4
  %i.do = fmul float %i.dj, 3.410000e-01          ; 2 uses
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dn, float 4.830000e-01, float %i.do)
  %i.dq = getelementptr inbounds nuw i8, ptr %.02428, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.02428, i64 12
  %i.dt = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.dv = load <2 x float>, ptr %i.dm, align 4    ; 3 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 0
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float 1.760000e-01, float %i.dp)
  store float %i.dx, ptr %.029, align 4
end_hunk_0
