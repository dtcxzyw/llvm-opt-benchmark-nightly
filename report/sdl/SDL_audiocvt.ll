Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audiocvt?download=true
inline.NumInlined: 31
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@SDL_Convert51To41:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.j = mul nuw nsw i64 %n.vec, 20
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  %i.n = mul nuw nsw i64 %n.vec, 24
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = mul i64 %index, 20
  %next.gep = getelementptr i8, ptr %0, i64 %i.p
  %i.q = mul i64 %index, 24                       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %1, i64 %i.q ; 6 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q       ; 6 uses
  %next.gep25 = getelementptr i8, ptr %i.r, i64 24
  %i.s = getelementptr i8, ptr %1, i64 %i.q       ; 6 uses
  %next.gep26 = getelementptr i8, ptr %i.s, i64 48
  %i.t = getelementptr i8, ptr %1, i64 %i.q       ; 6 uses
  %next.gep27 = getelementptr i8, ptr %i.t, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %next.gep24, i64 8
  %i.v = getelementptr i8, ptr %i.r, i64 32
  %i.w = getelementptr i8, ptr %i.s, i64 56
  %i.x = getelementptr i8, ptr %i.t, i64 80
  %i.y = load float, ptr %i.u, align 4, !alias.scope !223
  %i.z = load float, ptr %i.v, align 4, !alias.scope !223
  %i.aa = load float, ptr %i.w, align 4, !alias.scope !223
  %i.ab = load float, ptr %i.x, align 4, !alias.scope !223
  %i.ac = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 3
  %i.ag = load float, ptr %next.gep24, align 4, !alias.scope !223
  %i.ah = load float, ptr %next.gep25, align 4, !alias.scope !223
  %i.ai = load float, ptr %next.gep26, align 4, !alias.scope !223
  %i.aj = load float, ptr %next.gep27, align 4, !alias.scope !223
  %i.ak = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 3
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep24, i64 4
  %i.ap = getelementptr i8, ptr %i.r, i64 28
  %i.aq = getelementptr i8, ptr %i.s, i64 52
  %i.ar = getelementptr i8, ptr %i.t, i64 76
  %i.as = load float, ptr %i.ao, align 4, !alias.scope !223
  %i.at = load float, ptr %i.ap, align 4, !alias.scope !223
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !223
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !223
  %i.aw = insertelement <4 x float> poison, float %i.as, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 2
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep24, i64 12
  %i.bb = getelementptr i8, ptr %i.r, i64 36
  %i.bc = getelementptr i8, ptr %i.s, i64 60
  %i.bd = getelementptr i8, ptr %i.t, i64 84
  %i.be = load float, ptr %i.ba, align 4, !alias.scope !223
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !223
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !223
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !223
  %i.bi = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 3
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep24, i64 16
  %i.bn = getelementptr i8, ptr %i.r, i64 40
  %i.bo = getelementptr i8, ptr %i.s, i64 64
  %i.bp = getelementptr i8, ptr %i.t, i64 88
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !223
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !223
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !223
  %i.bt = load float, ptr %i.bp, align 4, !alias.scope !223
  %i.bu = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3
  %i.by = fmul <4 x float> %i.bx, splat (float 5.860000e-01)
  %i.bz = getelementptr inbounds nuw i8, ptr %next.gep24, i64 20
  %i.ca = getelementptr i8, ptr %i.r, i64 44
  %i.cb = getelementptr i8, ptr %i.s, i64 68
  %i.cc = getelementptr i8, ptr %i.t, i64 92
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !223
  %i.ce = load float, ptr %i.ca, align 4, !alias.scope !223
  %i.cf = load float, ptr %i.cb, align 4, !alias.scope !223
  %i.cg = load float, ptr %i.cc, align 4, !alias.scope !223
  %i.ch = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = fmul <4 x float> %i.ck, splat (float 5.860000e-01)
  %i.cm = shufflevector <4 x float> %i.an, <4 x float> %i.az, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cn = shufflevector <4 x float> %i.af, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.co = fmul <8 x float> %i.cn, splat (float 4.140000e-01)
  %i.cp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cm, <8 x float> splat (float 5.860000e-01), <8 x float> %i.co)
  %i.cq = shufflevector <4 x float> %i.bl, <4 x float> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cr = shufflevector <8 x float> %i.cp, <8 x float> %i.cq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cs = shufflevector <4 x float> %i.cl, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.cr, <16 x float> %i.cs, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !224, !noalias !223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.022.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01721.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.01820.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.022 = phi ptr [ %i.dq, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader30 ] ; 6 uses
  %.01721 = phi i32 [ %i.do, %.lr.ph ], [ %.01721.ph, %.lr.ph.preheader30 ]
  %.01820 = phi ptr [ %i.dp, %.lr.ph ], [ %.01820.ph, %.lr.ph.preheader30 ] ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01820, i64 8
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = load float, ptr %.01820, align 4
  %i.cx = fmul float %i.cv, 4.140000e-01          ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cw, float 5.860000e-01, float %i.cx)
  store float %i.cy, ptr %.022, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.01820, i64 4
  %i.da = load float, ptr %i.cz, align 4
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float 5.860000e-01, float %i.cx)
  %i.dc = getelementptr inbounds nuw i8, ptr %.022, i64 4
  store float %i.db, ptr %i.dc, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.01820, i64 12
  %i.de = load float, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %.022, i64 8
  store float %i.de, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.01820, i64 16
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = fmul float %i.dh, 5.860000e-01
  %i.dj = getelementptr inbounds nuw i8, ptr %.022, i64 12
  store float %i.di, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.01820, i64 20
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = fmul float %i.dl, 5.860000e-01
  %i.dn = getelementptr inbounds nuw i8, ptr %.022, i64 16
  store float %i.dm, ptr %i.dn, align 4
  %i.do = add nsw i32 %.01721, -1                 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01820, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %.022, i64 20
  %.not = icmp eq i32 %i.do, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !222

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert51To61(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = mul nsw i32 %i.a, 7
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c
  %i.e = mul nsw i32 %i.a, 6
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph.rtcont
  %.030 = phi ptr [ %.rtmerge34, %.lr.ph.rtcont ], [ %i.d, %.lr.ph.preheader ] ; 12 uses
  %.02529 = phi ptr [ %.rtmerge33, %.lr.ph.rtcont ], [ %i.g, %.lr.ph.preheader ] ; 10 uses
  %.02628 = phi i32 [ %.rtmerge, %.lr.ph.rtcont ], [ %2, %.lr.ph.preheader ]
  %.0252931 = ptrtoaddr ptr %.02529 to i64        ; 2 uses
  %i.h = add i64 %.0252931, 24
  %.03032 = ptrtoaddr ptr %.030 to i64            ; 2 uses
  %i.i = add i64 %.03032, 28
  %rt.bound0 = icmp ugt i64 %i.h, %.03032
  %rt.bound1 = icmp ugt i64 %i.i, %.0252931
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %.lr.ph.rtscalar, label %.lr.ph.rtvec, !prof !226

._crit_edge:                                      ; preds = %.lr.ph.rtcont, %bb.a
  ret void

.lr.ph.rtvec:                                     ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.02529, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.030, i64 20
  %i.l = load <2 x float>, ptr %i.j, align 4      ; 3 uses
  %i.m = fmul <2 x float> %i.l, splat (float 7.960000e-01)
  store <2 x float> %i.m, ptr %i.k, align 4
  %i.n = extractelement <2 x float> %i.l, i64 0
  %i.o = fmul float %i.n, 5.000000e-01
  %i.p = extractelement <2 x float> %i.l, i64 1
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float %i.o)
  %i.r = getelementptr inbounds nuw i8, ptr %.030, i64 16
  store float %i.q, ptr %i.r, align 4
  %i.s = load <4 x float>, ptr %.02529, align 4
  %i.t = fmul <4 x float> %i.s, <float f0x3F70A3D7, float f0x3F70A3D7, float f0x3F70A3D7, float 1.000000e+00>
  store <4 x float> %i.t, ptr %.030, align 4
  br label %.lr.ph.rtcont

.lr.ph.rtscalar:                                  ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.02529, i64 16
  %i.v = load float, ptr %i.u, align 4            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02529, i64 20
  %i.x = load float, ptr %i.w, align 4            ; 2 uses
  %i.y = fmul float %i.x, 7.960000e-01
  %i.z = getelementptr inbounds nuw i8, ptr %.030, i64 24
  store float %i.y, ptr %i.z, align 4
  %i.aa = fmul float %i.v, 7.960000e-01
  %i.ab = getelementptr inbounds nuw i8, ptr %.030, i64 20
  store float %i.aa, ptr %i.ab, align 4
  %i.ac = fmul float %i.v, 5.000000e-01
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.x, float 5.000000e-01, float %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %.030, i64 16
  store float %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.02529, i64 12
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.030, i64 12
  store float %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.02529, i64 8
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fmul float %i.aj, f0x3F70A3D7
  %i.al = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store float %i.ak, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %.02529, i64 4
  %i.an = load float, ptr %i.am, align 4
  %i.ao = fmul float %i.an, f0x3F70A3D7
  %i.ap = getelementptr inbounds nuw i8, ptr %.030, i64 4
  store float %i.ao, ptr %i.ap, align 4
  %i.aq = load float, ptr %.02529, align 4
  %i.ar = fmul float %i.aq, f0x3F70A3D7
  store float %i.ar, ptr %.030, align 4
  br label %.lr.ph.rtcont

.lr.ph.rtcont:                                    ; preds = %.lr.ph.rtscalar, %.lr.ph.rtvec
  %.rtmerge = add nsw i32 %.02628, -1             ; 2 uses
  %.not.rtmerge = icmp eq i32 %.rtmerge, 0
  %.rtmerge34 = getelementptr inbounds i8, ptr %.030, i64 -28
  %.rtmerge33 = getelementptr inbounds i8, ptr %.02529, i64 -24
  br i1 %.not.rtmerge, label %._crit_edge, label %.lr.ph, !llvm.loop !225
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert51To71(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not24 = icmp eq i32 %2, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = shl nsw i32 %i.a, 3
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c
  %i.e = mul nsw i32 %i.a, 6
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.027 = phi i32 [ %i.y, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02226 = phi ptr [ %i.aa, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 8 uses
  %.02325 = phi ptr [ %i.z, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02226, i64 24
  store <2 x float> zeroinitializer, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %.02325, i64 20
  %i.j = load float, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %.02226, i64 20
  store float %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.02325, i64 16
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %.02226, i64 16
  store float %i.m, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %.02325, i64 12
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.02226, i64 12
  store float %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.02325, i64 8
  %i.s = load float, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.02226, i64 8
  store float %i.s, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.02325, i64 4
  %i.v = load float, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %.02226, i64 4
  store float %i.v, ptr %i.w, align 4
  %i.x = load float, ptr %.02325, align 4
  store float %i.x, ptr %.02226, align 4
  %i.y = add nsw i32 %.027, -1                    ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.02325, i64 -24
  %i.aa = getelementptr inbounds i8, ptr %.02226, i64 -32
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert61ToMono(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not14 = icmp eq i32 %2, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = mul nuw nsw i64 %i.c, 28
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 28
  %bound0 = icmp ult ptr %0, %i.i
  %bound1 = icmp ult ptr %1, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %2, %i.j
  %i.l = shl nuw nsw i64 %n.vec, 2
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %i.n = mul nuw nsw i64 %n.vec, 28
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.p
  %i.q = mul i64 %index, 28                       ; 4 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %i.q ; 7 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.q       ; 7 uses
  %next.gep20 = getelementptr i8, ptr %i.r, i64 28
  %i.s = getelementptr i8, ptr %1, i64 %i.q       ; 7 uses
  %next.gep21 = getelementptr i8, ptr %i.s, i64 56
  %i.t = getelementptr i8, ptr %1, i64 %i.q       ; 7 uses
  %next.gep22 = getelementptr i8, ptr %i.t, i64 84
  %i.u = load float, ptr %next.gep19, align 4, !alias.scope !233
  %i.v = load float, ptr %next.gep20, align 4, !alias.scope !233
  %i.w = load float, ptr %next.gep21, align 4, !alias.scope !233
  %i.x = load float, ptr %next.gep22, align 4, !alias.scope !233
  %i.y = insertelement <4 x float> poison, float %i.u, i64 0
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 3
  %i.ac = getelementptr inbounds nuw i8, ptr %next.gep19, i64 4
  %i.ad = getelementptr i8, ptr %i.r, i64 32
  %i.ae = getelementptr i8, ptr %i.s, i64 60
  %i.af = getelementptr i8, ptr %i.t, i64 88
  %i.ag = load float, ptr %i.ac, align 4, !alias.scope !233
  %i.ah = load float, ptr %i.ad, align 4, !alias.scope !233
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !233
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !233
  %i.ak = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 3
  %i.ao = fmul <4 x float> %i.an, splat (float f0x3E12940A)
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> splat (float f0x3E12940A), <4 x float> %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep19, i64 8
  %i.ar = getelementptr i8, ptr %i.r, i64 36
  %i.as = getelementptr i8, ptr %i.s, i64 64
  %i.at = getelementptr i8, ptr %i.t, i64 92
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !233
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !233
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !233
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !233
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3E12940A), <4 x float> %i.ap)
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep19, i64 12
  %i.be = getelementptr i8, ptr %i.r, i64 40
  %i.bf = getelementptr i8, ptr %i.s, i64 68
  %i.bg = getelementptr i8, ptr %i.t, i64 96
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !233
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !233
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !233
  %i.bk = load float, ptr %i.bg, align 4, !alias.scope !233
  %i.bl = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 1
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 2
  %i.bo = insertelement <4 x float> %i.bn, float %i.bk, i64 3
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> splat (float f0x3E124925), <4 x float> %i.bc)
  %i.bq = getelementptr inbounds nuw i8, ptr %next.gep19, i64 16
  %i.br = getelementptr i8, ptr %i.r, i64 44
  %i.bs = getelementptr i8, ptr %i.s, i64 72
  %i.bt = getelementptr i8, ptr %i.t, i64 100
  %i.bu = load float, ptr %i.bq, align 4, !alias.scope !233
  %i.bv = load float, ptr %i.br, align 4, !alias.scope !233
  %i.bw = load float, ptr %i.bs, align 4, !alias.scope !233
end_hunk_0
