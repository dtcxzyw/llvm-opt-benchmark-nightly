Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audiocvt?download=true
inline.NumInlined: 31
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0_@SDL_ConvertQuadToStereo:bb.a
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 8
  %i.f = shl nuw nsw i64 %i.c, 4
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep20 = getelementptr i8, ptr %i.g, i64 16
  %bound0 = icmp ult ptr %0, %scevgep20
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader27, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = shl nuw nsw i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl nuw nsw i64 %n.vec, 4
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl i64 %index, 4                        ; 4 uses
  %next.gep21 = getelementptr i8, ptr %1, i64 %i.o ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 4 uses
  %next.gep22 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 4 uses
  %next.gep23 = getelementptr i8, ptr %i.q, i64 32
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %i.r, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep21, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 24
  %i.u = getelementptr i8, ptr %i.q, i64 40
  %i.v = getelementptr i8, ptr %i.r, i64 56
  %i.w = load float, ptr %i.s, align 4, !alias.scope !134
  %i.x = load float, ptr %i.t, align 4, !alias.scope !134
  %i.y = load float, ptr %i.u, align 4, !alias.scope !134
  %i.z = load float, ptr %i.v, align 4, !alias.scope !134
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep21, i64 12
  %i.af = getelementptr i8, ptr %i.p, i64 28
  %i.ag = getelementptr i8, ptr %i.q, i64 44
  %i.ah = getelementptr i8, ptr %i.r, i64 60
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !134
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !134
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !134
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !134
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = load float, ptr %next.gep21, align 4, !alias.scope !134
  %i.ar = load float, ptr %next.gep22, align 4, !alias.scope !134
  %i.as = load float, ptr %next.gep23, align 4, !alias.scope !134
  %i.at = load float, ptr %next.gep24, align 4, !alias.scope !134
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = fmul <4 x float> %i.ad, splat (float 3.590000e-01)
  %i.az = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ax, <4 x float> splat (float 4.210000e-01), <4 x float> %i.ay)
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float 2.200000e-01), <4 x float> %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %next.gep21, i64 4
  %i.bc = getelementptr i8, ptr %i.p, i64 20
  %i.bd = getelementptr i8, ptr %i.q, i64 36
  %i.be = getelementptr i8, ptr %i.r, i64 52
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !134
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !134
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !134
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !134
  %i.bj = insertelement <4 x float> poison, float %i.bf, i64 0
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 1
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 2
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 3
  %i.bn = fmul <4 x float> %i.ad, splat (float 2.200000e-01)
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> splat (float 4.210000e-01), <4 x float> %i.bn)
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float 3.590000e-01), <4 x float> %i.bo)
  %interleaved.vec = shufflevector <4 x float> %i.ba, <4 x float> %i.bp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !135, !noalias !134
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !132

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader27

.lr.ph.preheader27:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.019.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01418.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01517.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader27, %.lr.ph
  %.019 = phi ptr [ %i.ch, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader27 ] ; 3 uses
  %.01418 = phi ptr [ %i.cg, %.lr.ph ], [ %.01418.ph, %.lr.ph.preheader27 ] ; 5 uses
  %.01517 = phi i32 [ %i.cf, %.lr.ph ], [ %.01517.ph, %.lr.ph.preheader27 ]
  %i.br = getelementptr inbounds nuw i8, ptr %.01418, i64 8
  %i.bs = load float, ptr %i.br, align 4          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01418, i64 12
  %i.bu = load float, ptr %i.bt, align 4          ; 2 uses
  %i.bv = load float, ptr %.01418, align 4
  %i.bw = fmul float %i.bs, 3.590000e-01
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bv, float 4.210000e-01, float %i.bw)
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bu, float 2.200000e-01, float %i.bx)
  store float %i.by, ptr %.019, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.01418, i64 4
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fmul float %i.bs, 2.200000e-01
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.ca, float 4.210000e-01, float %i.cb)
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.bu, float 3.590000e-01, float %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %.019, i64 4
  store float %i.cd, ptr %i.ce, align 4
  %i.cf = add nsw i32 %.01517, -1                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01418, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_ConvertQuadTo21(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not17 = icmp eq i32 %2, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 12
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 12
  %i.f = shl nuw nsw i64 %i.c, 4
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep21 = getelementptr i8, ptr %i.g, i64 16
  %bound0 = icmp ult ptr %0, %scevgep21
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 12
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl nuw nsw i64 %n.vec, 4
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl i64 %index, 4                        ; 4 uses
  %next.gep22 = getelementptr i8, ptr %1, i64 %i.o ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 4 uses
  %next.gep23 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %i.q, i64 32
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 4 uses
  %next.gep25 = getelementptr i8, ptr %i.r, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep22, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 24
  %i.u = getelementptr i8, ptr %i.q, i64 40
  %i.v = getelementptr i8, ptr %i.r, i64 56
  %i.w = load float, ptr %i.s, align 4, !alias.scope !141
  %i.x = load float, ptr %i.t, align 4, !alias.scope !141
  %i.y = load float, ptr %i.u, align 4, !alias.scope !141
  %i.z = load float, ptr %i.v, align 4, !alias.scope !141
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep22, i64 12
  %i.af = getelementptr i8, ptr %i.p, i64 28
  %i.ag = getelementptr i8, ptr %i.q, i64 44
  %i.ah = getelementptr i8, ptr %i.r, i64 60
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !141
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !141
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !141
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !141
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = load float, ptr %next.gep22, align 4, !alias.scope !141
  %i.ar = load float, ptr %next.gep23, align 4, !alias.scope !141
  %i.as = load float, ptr %next.gep24, align 4, !alias.scope !141
  %i.at = load float, ptr %next.gep25, align 4, !alias.scope !141
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep22, i64 4
  %i.az = getelementptr i8, ptr %i.p, i64 20
  %i.ba = getelementptr i8, ptr %i.q, i64 36
  %i.bb = getelementptr i8, ptr %i.r, i64 52
  %i.bc = load float, ptr %i.ay, align 4, !alias.scope !141
  %i.bd = load float, ptr %i.az, align 4, !alias.scope !141
  %i.be = load float, ptr %i.ba, align 4, !alias.scope !141
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !141
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %3 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bk = shufflevector <4 x float> %i.ax, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bl = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bm = fmul <8 x float> %i.bl, <float 3.590000e-01, float 3.590000e-01, float 3.590000e-01, float 3.590000e-01, float 2.200000e-01, float 2.200000e-01, float 2.200000e-01, float 2.200000e-01>
  %i.bn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bk, <8 x float> splat (float 4.210000e-01), <8 x float> %i.bm)
  %i.bo = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> <float 2.200000e-01, float 2.200000e-01, float 2.200000e-01, float 2.200000e-01, float 3.590000e-01, float 3.590000e-01, float 3.590000e-01, float 3.590000e-01>, <8 x float> %i.bn)
  %interleaved.vec = shufflevector <8 x float> %i.bo, <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison>, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !142, !noalias !141
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.020.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01519.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01618.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.020 = phi ptr [ %i.ch, %.lr.ph ], [ %.020.ph, %.lr.ph.preheader28 ] ; 4 uses
  %.01519 = phi ptr [ %i.cg, %.lr.ph ], [ %.01519.ph, %.lr.ph.preheader28 ] ; 5 uses
  %.01618 = phi i32 [ %i.cf, %.lr.ph ], [ %.01618.ph, %.lr.ph.preheader28 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.01519, i64 8
  %i.br = load float, ptr %i.bq, align 4          ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01519, i64 12
  %i.bt = load float, ptr %i.bs, align 4          ; 2 uses
  %i.bu = load float, ptr %.01519, align 4
  %i.bv = fmul float %i.br, 3.590000e-01
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bu, float 4.210000e-01, float %i.bv)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bt, float 2.200000e-01, float %i.bw)
  store float %i.bx, ptr %.020, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.01519, i64 4
  %i.bz = load float, ptr %i.by, align 4
  %i.ca = fmul float %i.br, 2.200000e-01
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bz, float 4.210000e-01, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bt, float 3.590000e-01, float %i.cb)
  %i.cd = getelementptr inbounds nuw i8, ptr %.020, i64 4
  store float %i.cc, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %.020, i64 8
  store float 0.000000e+00, ptr %i.ce, align 4
  %i.cf = add nsw i32 %.01618, -1                 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01519, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.020, i64 12
  %.not = icmp eq i32 %i.cf, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_ConvertQuadTo41(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not19 = icmp eq i32 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = mul nsw i32 %i.a, 5
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c ; 7 uses
  %i.e = shl nsw i32 %i.a, 2
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f ; 6 uses
  %xtraiter = and i32 %2, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float 0.000000e+00, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.p, ptr %i.q, align 4
  %i.r = load float, ptr %i.g, align 4
  store float %i.r, ptr %i.d, align 4
  %i.s = add nsw i32 %2, -1
  %i.t = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -20
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %.01721.unr = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.01820.unr = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.v = icmp eq i32 %2, 1
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022 = phi i32 [ %i.au, %.lr.ph ], [ %.022.unr, %.lr.ph.prol.loopexit ]
  %.01721 = phi ptr [ %i.aw, %.lr.ph ], [ %.01721.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %.01820 = phi ptr [ %i.av, %.lr.ph ], [ %.01820.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01820, i64 12
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.01721, i64 16
  store float %i.x, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %.01820, i64 8
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.01721, i64 12
  store float %i.aa, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.01721, i64 8
  store float 0.000000e+00, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.01820, i64 4
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.01721, i64 4
  store float %i.ae, ptr %i.af, align 4
  %i.ag = load float, ptr %.01820, align 4
  store float %i.ag, ptr %.01721, align 4
  %i.ah = getelementptr inbounds i8, ptr %.01820, i64 -16
  %i.ai = getelementptr inbounds i8, ptr %.01721, i64 -20
  %i.aj = getelementptr inbounds i8, ptr %.01820, i64 -4
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = getelementptr inbounds i8, ptr %.01721, i64 -4
  store float %i.ak, ptr %i.al, align 4
  %i.am = getelementptr inbounds i8, ptr %.01820, i64 -8
  %i.an = load float, ptr %i.am, align 4
  %i.ao = getelementptr inbounds i8, ptr %.01721, i64 -8
  store float %i.an, ptr %i.ao, align 4
  %i.ap = getelementptr inbounds i8, ptr %.01721, i64 -12
  store float 0.000000e+00, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds i8, ptr %.01820, i64 -12
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds i8, ptr %.01721, i64 -16
  store float %i.ar, ptr %i.as, align 4
  %i.at = load float, ptr %i.ah, align 4
  store float %i.at, ptr %i.ai, align 4
  %i.au = add nsw i32 %.022, -2                   ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.01820, i64 -32
  %i.aw = getelementptr inbounds i8, ptr %.01721, i64 -40
  %.not.1 = icmp eq i32 %i.au, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_ConvertQuadTo51(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not20 = icmp eq i32 %2, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = mul nsw i32 %i.a, 6
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c ; 7 uses
  %i.e = shl nsw i32 %i.a, 2
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f ; 6 uses
  %xtraiter = and i32 %2, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store float %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store <2 x float> zeroinitializer, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = load float, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.p, ptr %i.q, align 4
  %i.r = load float, ptr %i.g, align 4
  store float %i.r, ptr %i.d, align 4
  %i.s = add nsw i32 %2, -1
  %i.t = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 -24
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.023.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %.01822.unr = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.01921.unr = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %i.v = icmp eq i32 %2, 1
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.023 = phi i32 [ %i.au, %.lr.ph ], [ %.023.unr, %.lr.ph.prol.loopexit ]
  %.01822 = phi ptr [ %i.aw, %.lr.ph ], [ %.01822.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %.01921 = phi ptr [ %i.av, %.lr.ph ], [ %.01921.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01921, i64 12
end_hunk_0
begin_hunk_1_@SDL_Convert41ToStereo:bb.a
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 20                       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %1, i64 %i.o ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep25 = getelementptr i8, ptr %i.p, i64 20
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep26 = getelementptr i8, ptr %i.q, i64 40
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep27 = getelementptr i8, ptr %i.r, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep24, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 28
  %i.u = getelementptr i8, ptr %i.q, i64 48
  %i.v = getelementptr i8, ptr %i.r, i64 68
  %i.w = load float, ptr %i.s, align 4, !alias.scope !165
  %i.x = load float, ptr %i.t, align 4, !alias.scope !165
  %i.y = load float, ptr %i.u, align 4, !alias.scope !165
  %i.z = load float, ptr %i.v, align 4, !alias.scope !165
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep24, i64 12
  %i.af = getelementptr i8, ptr %i.p, i64 32
  %i.ag = getelementptr i8, ptr %i.q, i64 52
  %i.ah = getelementptr i8, ptr %i.r, i64 72
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !165
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !165
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !165
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !165
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep24, i64 16
  %i.ar = getelementptr i8, ptr %i.p, i64 36
  %i.as = getelementptr i8, ptr %i.q, i64 56
  %i.at = getelementptr i8, ptr %i.r, i64 76
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !165
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !165
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !165
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !165
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
  %i.bc = load float, ptr %next.gep24, align 4, !alias.scope !165
  %i.bd = load float, ptr %next.gep25, align 4, !alias.scope !165
  %i.be = load float, ptr %next.gep26, align 4, !alias.scope !165
  %i.bf = load float, ptr %next.gep27, align 4, !alias.scope !165
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = fmul <4 x float> %i.ad, splat (float f0x3DE38E39) ; 2 uses
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> splat (float f0x3EBF9A0E), <4 x float> %i.bk)
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3EA36288), <4 x float> %i.bl)
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3E483FB7), <4 x float> %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep24, i64 4
  %i.bp = getelementptr i8, ptr %i.p, i64 24
  %i.bq = getelementptr i8, ptr %i.q, i64 44
  %i.br = getelementptr i8, ptr %i.r, i64 64
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !165
  %i.bt = load float, ptr %i.bp, align 4, !alias.scope !165
  %i.bu = load float, ptr %i.bq, align 4, !alias.scope !165
  %i.bv = load float, ptr %i.br, align 4, !alias.scope !165
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> splat (float f0x3EBF9A0E), <4 x float> %i.bk)
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3E483FB7), <4 x float> %i.ca)
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3EA36288), <4 x float> %i.cb)
  %interleaved.vec = shufflevector <4 x float> %i.bn, <4 x float> %i.cc, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !166, !noalias !165
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.022.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01721.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01820.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.022 = phi ptr [ %i.cx, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader30 ] ; 3 uses
  %.01721 = phi ptr [ %i.cw, %.lr.ph ], [ %.01721.ph, %.lr.ph.preheader30 ] ; 6 uses
  %.01820 = phi i32 [ %i.cv, %.lr.ph ], [ %.01820.ph, %.lr.ph.preheader30 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.01721, i64 8
  %i.cf = load float, ptr %i.ce, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.01721, i64 12
  %i.ch = load float, ptr %i.cg, align 4          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01721, i64 16
  %i.cj = load float, ptr %i.ci, align 4          ; 2 uses
  %i.ck = load float, ptr %.01721, align 4
  %i.cl = fmul float %i.cf, f0x3DE38E39           ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ck, float f0x3EBF9A0E, float %i.cl)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.ch, float f0x3EA36288, float %i.cm)
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cj, float f0x3E483FB7, float %i.cn)
  store float %i.co, ptr %.022, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.01721, i64 4
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cq, float f0x3EBF9A0E, float %i.cl)
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.ch, float f0x3E483FB7, float %i.cr)
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cj, float f0x3EA36288, float %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr %.022, i64 4
  store float %i.ct, ptr %i.cu, align 4
  %i.cv = add nsw i32 %.01820, -1                 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01721, i64 20
  %i.cx = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %.not = icmp eq i32 %i.cv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !164

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert41To21(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not18 = icmp eq i32 %2, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader29, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 12
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 12
  %i.f = mul nuw nsw i64 %i.c, 20
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep22 = getelementptr i8, ptr %i.g, i64 20
  %bound0 = icmp ult ptr %0, %scevgep22
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader29, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 12
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = mul nuw nsw i64 %n.vec, 20
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 20                       ; 4 uses
  %next.gep23 = getelementptr i8, ptr %1, i64 %i.o ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep24 = getelementptr i8, ptr %i.p, i64 20
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep25 = getelementptr i8, ptr %i.q, i64 40
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep26 = getelementptr i8, ptr %i.r, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep23, i64 12
  %i.t = getelementptr i8, ptr %i.p, i64 32
  %i.u = getelementptr i8, ptr %i.q, i64 52
  %i.v = getelementptr i8, ptr %i.r, i64 72
  %i.w = load float, ptr %i.s, align 4, !alias.scope !172
  %i.x = load float, ptr %i.t, align 4, !alias.scope !172
  %i.y = load float, ptr %i.u, align 4, !alias.scope !172
  %i.z = load float, ptr %i.v, align 4, !alias.scope !172
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep23, i64 16
  %i.af = getelementptr i8, ptr %i.p, i64 36
  %i.ag = getelementptr i8, ptr %i.q, i64 56
  %i.ah = getelementptr i8, ptr %i.r, i64 76
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !172
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !172
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !172
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !172
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = load float, ptr %next.gep23, align 4, !alias.scope !172
  %i.ar = load float, ptr %next.gep24, align 4, !alias.scope !172
  %i.as = load float, ptr %next.gep25, align 4, !alias.scope !172
  %i.at = load float, ptr %next.gep26, align 4, !alias.scope !172
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep23, i64 4
  %i.az = getelementptr i8, ptr %i.p, i64 24
  %i.ba = getelementptr i8, ptr %i.q, i64 44
  %i.bb = getelementptr i8, ptr %i.r, i64 64
  %i.bc = load float, ptr %i.ay, align 4, !alias.scope !172
  %i.bd = load float, ptr %i.az, align 4, !alias.scope !172
  %i.be = load float, ptr %i.ba, align 4, !alias.scope !172
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !172
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep23, i64 8
  %i.bl = getelementptr i8, ptr %i.p, i64 28
  %i.bm = getelementptr i8, ptr %i.q, i64 48
  %i.bn = getelementptr i8, ptr %i.r, i64 68
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !172
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !172
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !172
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !172
  %i.bs = insertelement <8 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <8 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <8 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <8 x float> %i.bu, float %i.br, i64 3
  %3 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %4 = shufflevector <4 x float> %i.ax, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %6 = fmul <8 x float> %5, <float 3.590000e-01, float 3.590000e-01, float 3.590000e-01, float 3.590000e-01, float 2.200000e-01, float 2.200000e-01, float 2.200000e-01, float 2.200000e-01>
  %7 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> splat (float 4.210000e-01), <8 x float> %6)
  %i.bw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> <float 2.200000e-01, float 2.200000e-01, float 2.200000e-01, float 2.200000e-01, float 3.590000e-01, float 3.590000e-01, float 3.590000e-01, float 3.590000e-01>, <8 x float> %7)
  %interleaved.vec = shufflevector <8 x float> %i.bw, <8 x float> %i.bv, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !173, !noalias !172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader29

.lr.ph.preheader29:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.021.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01620.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01719.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader29, %.lr.ph
  %.021 = phi ptr [ %i.cr, %.lr.ph ], [ %.021.ph, %.lr.ph.preheader29 ] ; 4 uses
  %.01620 = phi ptr [ %i.cq, %.lr.ph ], [ %.01620.ph, %.lr.ph.preheader29 ] ; 6 uses
  %.01719 = phi i32 [ %i.cp, %.lr.ph ], [ %.01719.ph, %.lr.ph.preheader29 ]
  %i.by = getelementptr inbounds nuw i8, ptr %.01620, i64 12
  %i.bz = load float, ptr %i.by, align 4          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01620, i64 16
  %i.cb = load float, ptr %i.ca, align 4          ; 2 uses
  %i.cc = load float, ptr %.01620, align 4
  %i.cd = fmul float %i.bz, 3.590000e-01
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cc, float 4.210000e-01, float %i.cd)
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cb, float 2.200000e-01, float %i.ce)
  store float %i.cf, ptr %.021, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.01620, i64 4
  %i.ch = load float, ptr %i.cg, align 4
  %i.ci = fmul float %i.bz, 2.200000e-01
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ch, float 4.210000e-01, float %i.ci)
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cb, float 3.590000e-01, float %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %.021, i64 4
  store float %i.ck, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.01620, i64 8
  %i.cn = load float, ptr %i.cm, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store float %i.cn, ptr %i.co, align 4
  %i.cp = add nsw i32 %.01719, -1                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.01620, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %.021, i64 12
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !171

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert41ToQuad(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not19 = icmp eq i32 %2, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 4
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 16
  %i.f = mul nuw nsw i64 %i.c, 20
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep23 = getelementptr i8, ptr %i.g, i64 20
  %bound0 = icmp ult ptr %0, %scevgep23
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = shl nuw nsw i64 %n.vec, 4
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %2, %i.j
  %i.l = mul nuw nsw i64 %n.vec, 20
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 20                       ; 4 uses
  %next.gep24 = getelementptr i8, ptr %1, i64 %i.o ; 5 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep25 = getelementptr i8, ptr %i.p, i64 20
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep26 = getelementptr i8, ptr %i.q, i64 40
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 5 uses
  %next.gep27 = getelementptr i8, ptr %i.r, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep24, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 28
  %i.u = getelementptr i8, ptr %i.q, i64 48
  %i.v = getelementptr i8, ptr %i.r, i64 68
  %i.w = load float, ptr %i.s, align 4, !alias.scope !179
  %i.x = load float, ptr %i.t, align 4, !alias.scope !179
  %i.y = load float, ptr %i.u, align 4, !alias.scope !179
  %i.z = load float, ptr %i.v, align 4, !alias.scope !179
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3 ; 2 uses
  %i.ae = load float, ptr %next.gep24, align 4, !alias.scope !179
  %i.af = load float, ptr %next.gep25, align 4, !alias.scope !179
  %i.ag = load float, ptr %next.gep26, align 4, !alias.scope !179
  %i.ah = load float, ptr %next.gep27, align 4, !alias.scope !179
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep24, i64 4
  %i.an = getelementptr i8, ptr %i.p, i64 24
  %i.ao = getelementptr i8, ptr %i.q, i64 44
  %i.ap = getelementptr i8, ptr %i.r, i64 64
  %i.aq = load float, ptr %i.am, align 4, !alias.scope !179
  %i.ar = load float, ptr %i.an, align 4, !alias.scope !179
  %i.as = load float, ptr %i.ao, align 4, !alias.scope !179
  %i.at = load float, ptr %i.ap, align 4, !alias.scope !179
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep24, i64 12
  %i.az = getelementptr i8, ptr %i.p, i64 32
  %i.ba = getelementptr i8, ptr %i.q, i64 52
  %i.bb = getelementptr i8, ptr %i.r, i64 72
  %i.bc = load float, ptr %i.ay, align 4, !alias.scope !179
  %i.bd = load float, ptr %i.az, align 4, !alias.scope !179
  %i.be = load float, ptr %i.ba, align 4, !alias.scope !179
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !179
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep24, i64 16
  %i.bl = getelementptr i8, ptr %i.p, i64 36
  %i.bm = getelementptr i8, ptr %i.q, i64 56
  %i.bn = getelementptr i8, ptr %i.r, i64 76
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !179
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !179
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !179
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !179
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = shufflevector <4 x float> %i.al, <4 x float> %i.ax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bx = fmul <8 x float> %3, splat (float f0x3D70F0F1)
  %i.by = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.bw, <8 x float> splat (float f0x3F70F0F1), <8 x float> %i.bx)
  %4 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x float> %i.bj, <4 x float> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = fmul <8 x float> %5, splat (float f0x3F70F0F1)
  %i.bz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> splat (float f0x3D70F0F1), <8 x float> %6)
  %interleaved.vec = shufflevector <8 x float> %i.by, <8 x float> %i.bz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !180, !noalias !179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.022.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01721.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01820.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.022 = phi ptr [ %i.cw, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader30 ] ; 5 uses
  %.01721 = phi i32 [ %i.cu, %.lr.ph ], [ %.01721.ph, %.lr.ph.preheader30 ]
  %.01820 = phi ptr [ %i.cv, %.lr.ph ], [ %.01820.ph, %.lr.ph.preheader30 ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01820, i64 8
  %i.cc = load float, ptr %i.cb, align 4          ; 3 uses
  %i.cd = load float, ptr %.01820, align 4
  %i.ce = fmul float %i.cc, f0x3D70F0F1           ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cd, float f0x3F70F0F1, float %i.ce)
  store float %i.cf, ptr %.022, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %.01820, i64 4
  %i.ch = load float, ptr %i.cg, align 4
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float f0x3F70F0F1, float %i.ce)
  %i.cj = getelementptr inbounds nuw i8, ptr %.022, i64 4
  store float %i.ci, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.01820, i64 12
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = fmul float %i.cl, f0x3F70F0F1
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cc, float f0x3D70F0F1, float %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %.022, i64 8
  store float %i.cn, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.01820, i64 16
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = fmul float %i.cq, f0x3F70F0F1
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cc, float f0x3D70F0F1, float %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %.022, i64 12
  store float %i.cs, ptr %i.ct, align 4
  %i.cu = add nsw i32 %.01721, -1                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01820, i64 20
  %i.cw = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %.not = icmp eq i32 %i.cu, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !178

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert41To51(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not21 = icmp eq i32 %2, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = mul nsw i32 %i.a, 6
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c ; 8 uses
  %i.e = mul nsw i32 %i.a, 5
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f ; 7 uses
  %xtraiter = and i32 %2, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.l = load float, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store float %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store float %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float 0.000000e+00, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.s = load float, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float %i.s, ptr %i.t, align 4
  %i.u = load float, ptr %i.g, align 4
  store float %i.u, ptr %i.d, align 4
  %i.v = add nsw i32 %2, -1
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 -20
  %i.x = getelementptr inbounds i8, ptr %i.d, i64 -24
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.024.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.01923.unr = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.02022.unr = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %i.y = icmp eq i32 %2, 1
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.024 = phi i32 [ %i.bd, %.lr.ph ], [ %.024.unr, %.lr.ph.prol.loopexit ]
  %.01923 = phi ptr [ %i.bf, %.lr.ph ], [ %.01923.unr, %.lr.ph.prol.loopexit ] ; 13 uses
  %.02022 = phi ptr [ %i.be, %.lr.ph ], [ %.02022.unr, %.lr.ph.prol.loopexit ] ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02022, i64 16
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.01923, i64 20
  store float %i.aa, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.02022, i64 12
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.01923, i64 16
  store float %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.02022, i64 8
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.01923, i64 12
  store float %i.ag, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %.01923, i64 8
  store float 0.000000e+00, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.02022, i64 4
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.01923, i64 4
  store float %i.ak, ptr %i.al, align 4
  %i.am = load float, ptr %.02022, align 4
  store float %i.am, ptr %.01923, align 4
  %i.an = getelementptr inbounds i8, ptr %.02022, i64 -20
  %i.ao = getelementptr inbounds i8, ptr %.01923, i64 -24
  %i.ap = getelementptr inbounds i8, ptr %.02022, i64 -4
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds i8, ptr %.01923, i64 -4
  store float %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds i8, ptr %.02022, i64 -8
  %i.at = load float, ptr %i.as, align 4
  %i.au = getelementptr inbounds i8, ptr %.01923, i64 -8
  store float %i.at, ptr %i.au, align 4
  %i.av = getelementptr inbounds i8, ptr %.02022, i64 -12
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds i8, ptr %.01923, i64 -12
  store float %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds i8, ptr %.01923, i64 -16
  store float 0.000000e+00, ptr %i.ay, align 4
  %i.az = getelementptr inbounds i8, ptr %.02022, i64 -16
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = getelementptr inbounds i8, ptr %.01923, i64 -20
  store float %i.ba, ptr %i.bb, align 4
  %i.bc = load float, ptr %i.an, align 4
  store float %i.bc, ptr %i.ao, align 4
  %i.bd = add nsw i32 %.024, -2                   ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.02022, i64 -40
  %i.bf = getelementptr inbounds i8, ptr %.01923, i64 -48
  %.not.1 = icmp eq i32 %i.bd, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !181

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert41To61(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not26 = icmp eq i32 %2, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add i32 %2, -1                           ; 3 uses
  %i.b = mul i32 %i.a, 7
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c ; 4 uses
  %i.e = mul i32 %i.a, 5
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f ; 7 uses
  %i.h = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 56
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.i = shl nsw i64 %i.c, 2                      ; 2 uses
  %i.j = zext i32 %i.a to i64                     ; 2 uses
  %.neg = mul nsw i64 %i.j, -28
  %i.k = getelementptr i8, ptr %0, i64 %.neg
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.i
  %i.l = getelementptr i8, ptr %0, i64 %i.i
  %scevgep30 = getelementptr i8, ptr %i.l, i64 28
  %i.m = shl nsw i64 %i.f, 2                      ; 2 uses
  %.neg44 = mul nsw i64 %i.j, -20
  %i.n = getelementptr i8, ptr %1, i64 %.neg44
  %scevgep31 = getelementptr i8, ptr %i.n, i64 %i.m
  %i.o = getelementptr i8, ptr %1, i64 %i.m
  %scevgep32 = getelementptr i8, ptr %i.o, i64 20
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %scevgep31, %scevgep30
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4294967292               ; 5 uses
  %i.p = mul nsw i64 %n.vec, -28
end_hunk_1
begin_hunk_2_@SDL_Convert51ToStereo:bb.a
  %i.t = getelementptr i8, ptr %i.p, i64 32
  %i.u = getelementptr i8, ptr %i.q, i64 56
  %i.v = getelementptr i8, ptr %i.r, i64 80
  %i.w = load float, ptr %i.s, align 4, !alias.scope !202
  %i.x = load float, ptr %i.t, align 4, !alias.scope !202
  %i.y = load float, ptr %i.u, align 4, !alias.scope !202
  %i.z = load float, ptr %i.v, align 4, !alias.scope !202
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep27, i64 12
  %i.af = getelementptr i8, ptr %i.p, i64 36
  %i.ag = getelementptr i8, ptr %i.q, i64 60
  %i.ah = getelementptr i8, ptr %i.r, i64 84
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !202
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !202
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !202
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !202
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep27, i64 16
  %i.ar = getelementptr i8, ptr %i.p, i64 40
  %i.as = getelementptr i8, ptr %i.q, i64 64
  %i.at = getelementptr i8, ptr %i.r, i64 88
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !202
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !202
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !202
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !202
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep27, i64 20
  %i.bd = getelementptr i8, ptr %i.p, i64 44
  %i.be = getelementptr i8, ptr %i.q, i64 68
  %i.bf = getelementptr i8, ptr %i.r, i64 92
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !202
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !202
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !202
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !202
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3 ; 2 uses
  %i.bo = load float, ptr %next.gep27, align 4, !alias.scope !202
  %i.bp = load float, ptr %next.gep28, align 4, !alias.scope !202
  %i.bq = load float, ptr %next.gep29, align 4, !alias.scope !202
  %i.br = load float, ptr %next.gep30, align 4, !alias.scope !202
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = fmul <4 x float> %i.ad, splat (float f0x3E552D9D) ; 2 uses
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> splat (float f0x3E96CEA9), <4 x float> %i.bw)
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3DBA2E8C), <4 x float> %i.bx)
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3E80EE50), <4 x float> %i.by)
  %i.ca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> splat (float f0x3E1E412A), <4 x float> %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %next.gep27, i64 4
  %i.cc = getelementptr i8, ptr %i.p, i64 28
  %i.cd = getelementptr i8, ptr %i.q, i64 52
  %i.ce = getelementptr i8, ptr %i.r, i64 76
  %i.cf = load float, ptr %i.cb, align 4, !alias.scope !202
  %i.cg = load float, ptr %i.cc, align 4, !alias.scope !202
  %i.ch = load float, ptr %i.cd, align 4, !alias.scope !202
  %i.ci = load float, ptr %i.ce, align 4, !alias.scope !202
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> splat (float f0x3E96CEA9), <4 x float> %i.bw)
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3DBA2E8C), <4 x float> %i.cn)
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3E1E412A), <4 x float> %i.co)
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> splat (float f0x3E80EE50), <4 x float> %i.cp)
  %interleaved.vec = shufflevector <4 x float> %i.ca, <4 x float> %i.cq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !203, !noalias !202
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.025.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02024.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02123.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.025 = phi ptr [ %i.dp, %.lr.ph ], [ %.025.ph, %.lr.ph.preheader33 ] ; 3 uses
  %.02024 = phi ptr [ %i.do, %.lr.ph ], [ %.02024.ph, %.lr.ph.preheader33 ] ; 7 uses
  %.02123 = phi i32 [ %i.dn, %.lr.ph ], [ %.02123.ph, %.lr.ph.preheader33 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.02024, i64 8
  %i.ct = load float, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.02024, i64 12
  %i.cv = load float, ptr %i.cu, align 4          ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.02024, i64 16
  %i.cx = load float, ptr %i.cw, align 4          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02024, i64 20
  %i.cz = load float, ptr %i.cy, align 4          ; 2 uses
  %i.da = load float, ptr %.02024, align 4
  %i.db = fmul float %i.ct, f0x3E552D9D           ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.da, float f0x3E96CEA9, float %i.db)
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cv, float f0x3DBA2E8C, float %i.dc)
  %i.de = tail call float @llvm.fmuladd.f32(float %i.cx, float f0x3E80EE50, float %i.dd)
  %i.df = tail call float @llvm.fmuladd.f32(float %i.cz, float f0x3E1E412A, float %i.de)
  store float %i.df, ptr %.025, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.02024, i64 4
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float f0x3E96CEA9, float %i.db)
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.cv, float f0x3DBA2E8C, float %i.di)
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cx, float f0x3E1E412A, float %i.dj)
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.cz, float f0x3E80EE50, float %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %.025, i64 4
  store float %i.dl, ptr %i.dm, align 4
  %i.dn = add nsw i32 %.02123, -1                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02024, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %.025, i64 8
  %.not = icmp eq i32 %i.dn, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert51To21(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not21 = icmp eq i32 %2, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 12
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 12
  %i.f = mul nuw nsw i64 %i.c, 24
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep25 = getelementptr i8, ptr %i.g, i64 24
  %bound0 = icmp ult ptr %0, %scevgep25
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader32, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 12
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = mul nuw nsw i64 %n.vec, 24
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 24                       ; 4 uses
  %next.gep26 = getelementptr i8, ptr %1, i64 %i.o ; 6 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
  %next.gep27 = getelementptr i8, ptr %i.p, i64 24
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
  %next.gep28 = getelementptr i8, ptr %i.q, i64 48
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 6 uses
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
  %3 = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %4 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x float> %i.bj, <4 x float> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %7 = fmul <8 x float> %6, splat (float 2.290000e-01)
  %8 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %5, <8 x float> splat (float 3.240000e-01), <8 x float> %7)
  %9 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> <float 2.770000e-01, float 2.770000e-01, float 2.770000e-01, float 2.770000e-01, float 1.700000e-01, float 1.700000e-01, float 1.700000e-01, float 1.700000e-01>, <8 x float> %8)
  %i.ci = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> <float 1.700000e-01, float 1.700000e-01, float 1.700000e-01, float 1.700000e-01, float 2.770000e-01, float 2.770000e-01, float 2.770000e-01, float 2.770000e-01>, <8 x float> %9)
  %interleaved.vec = shufflevector <8 x float> %i.ci, <8 x float> %i.ch, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !210, !noalias !209
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.024.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01923.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02022.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader32, %.lr.ph
  %.024 = phi ptr [ %i.dg, %.lr.ph ], [ %.024.ph, %.lr.ph.preheader32 ] ; 4 uses
  %.01923 = phi ptr [ %i.df, %.lr.ph ], [ %.01923.ph, %.lr.ph.preheader32 ] ; 7 uses
  %.02022 = phi i32 [ %i.de, %.lr.ph ], [ %.02022.ph, %.lr.ph.preheader32 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.01923, i64 8
  %i.cl = load float, ptr %i.ck, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.01923, i64 16
  %i.cn = load float, ptr %i.cm, align 4          ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.01923, i64 20
  %i.cp = load float, ptr %i.co, align 4          ; 2 uses
  %i.cq = load float, ptr %.01923, align 4
  %i.cr = fmul float %i.cl, 2.290000e-01          ; 2 uses
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cq, float 3.240000e-01, float %i.cr)
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cn, float 2.770000e-01, float %i.cs)
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cp, float 1.700000e-01, float %i.ct)
  store float %i.cu, ptr %.024, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.01923, i64 4
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float 3.240000e-01, float %i.cr)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cn, float 1.700000e-01, float %i.cx)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cp, float 2.770000e-01, float %i.cy)
  %i.da = getelementptr inbounds nuw i8, ptr %.024, i64 4
  store float %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %.01923, i64 12
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.024, i64 8
  store float %i.dc, ptr %i.dd, align 4
  %i.de = add nsw i32 %.02022, -1                 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01923, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %.024, i64 12
  %.not = icmp eq i32 %i.de, 0
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
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
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
  %3 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ci = shufflevector <4 x float> %i.ax, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cj = fmul <8 x float> %4, splat (float f0x3EC9DFD1)
  %5 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ci, <8 x float> splat (float f0x3F0EDF55), <8 x float> %i.cj)
  %i.ck = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> splat (float f0x3D430C31), <8 x float> %5)
  %6 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %7 = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = fmul <8 x float> %7, splat (float f0x3F0EDF55)
  %i.cl = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %6, <8 x float> splat (float f0x3D430C31), <8 x float> %8)
  %interleaved.vec = shufflevector <8 x float> %i.ck, <8 x float> %i.cl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !217, !noalias !216
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !214

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.025.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02024.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02123.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %.025 = phi ptr [ %i.dm, %.lr.ph ], [ %.025.ph, %.lr.ph.preheader33 ] ; 5 uses
  %.02024 = phi ptr [ %i.dl, %.lr.ph ], [ %.02024.ph, %.lr.ph.preheader33 ] ; 7 uses
  %.02123 = phi i32 [ %i.dk, %.lr.ph ], [ %.02123.ph, %.lr.ph.preheader33 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.02024, i64 8
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.02024, i64 12
  %i.cq = load float, ptr %i.cp, align 4          ; 4 uses
  %i.cr = load float, ptr %.02024, align 4
  %i.cs = fmul float %i.co, f0x3EC9DFD1           ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cr, float f0x3F0EDF55, float %i.cs)
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cq, float f0x3D430C31, float %i.ct)
  store float %i.cu, ptr %.025, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.02024, i64 4
  %i.cw = load float, ptr %i.cv, align 4
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float f0x3F0EDF55, float %i.cs)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cq, float f0x3D430C31, float %i.cx)
  %i.cz = getelementptr inbounds nuw i8, ptr %.025, i64 4
  store float %i.cy, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.02024, i64 16
  %i.db = load float, ptr %i.da, align 4
  %i.dc = fmul float %i.db, f0x3F0EDF55
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cq, float f0x3D430C31, float %i.dc)
  %i.de = getelementptr inbounds nuw i8, ptr %.025, i64 8
  store float %i.dd, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %.02024, i64 20
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = fmul float %i.dg, f0x3F0EDF55
  %i.di = tail call float @llvm.fmuladd.f32(float %i.cq, float f0x3D430C31, float %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %.025, i64 12
  store float %i.di, ptr %i.dj, align 4
  %i.dk = add nsw i32 %.02123, -1                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02024, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %.not = icmp eq i32 %i.dk, 0
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
  %3 = shufflevector <4 x float> %i.al, <4 x float> %i.ax, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = fmul <8 x float> %4, splat (float 4.140000e-01)
  %i.ck = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> splat (float 5.860000e-01), <8 x float> %5)
  %i.cl = shufflevector <4 x float> %i.bj, <4 x float> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = shufflevector <8 x float> %i.ck, <8 x float> %i.cl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cn = shufflevector <4 x float> %i.cj, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.cm, <16 x float> %i.cn, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !224, !noalias !223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.022.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01721.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.01820.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %.022 = phi ptr [ %i.dl, %.lr.ph ], [ %.022.ph, %.lr.ph.preheader30 ] ; 6 uses
  %.01721 = phi i32 [ %i.dj, %.lr.ph ], [ %.01721.ph, %.lr.ph.preheader30 ]
  %.01820 = phi ptr [ %i.dk, %.lr.ph ], [ %.01820.ph, %.lr.ph.preheader30 ] ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.01820, i64 8
  %i.cq = load float, ptr %i.cp, align 4
  %i.cr = load float, ptr %.01820, align 4
  %i.cs = fmul float %i.cq, 4.140000e-01          ; 2 uses
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cr, float 5.860000e-01, float %i.cs)
  store float %i.ct, ptr %.022, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %.01820, i64 4
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float 5.860000e-01, float %i.cs)
  %i.cx = getelementptr inbounds nuw i8, ptr %.022, i64 4
  store float %i.cw, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.01820, i64 12
  %i.cz = load float, ptr %i.cy, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %.022, i64 8
  store float %i.cz, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %.01820, i64 16
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = fmul float %i.dc, 5.860000e-01
  %i.de = getelementptr inbounds nuw i8, ptr %.022, i64 12
  store float %i.dd, ptr %i.de, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %.01820, i64 20
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = fmul float %i.dg, 5.860000e-01
  %i.di = getelementptr inbounds nuw i8, ptr %.022, i64 16
  store float %i.dh, ptr %i.di, align 4
  %i.dj = add nsw i32 %.01721, -1                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01820, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %.022, i64 20
  %.not = icmp eq i32 %i.dj, 0
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

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.030 = phi ptr [ %i.af, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 7 uses
  %.02529 = phi ptr [ %i.ae, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 6 uses
  %.02628 = phi i32 [ %i.ad, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.h = getelementptr inbounds nuw i8, ptr %.02529, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.030, i64 20
  %i.j = load <2 x float>, ptr %i.h, align 4      ; 3 uses
  %i.k = fmul <2 x float> %i.j, splat (float 7.960000e-01)
  store <2 x float> %i.k, ptr %i.i, align 4
  %i.l = extractelement <2 x float> %i.j, i64 0
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = extractelement <2 x float> %i.j, i64 1
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 5.000000e-01, float %i.m)
  %i.p = getelementptr inbounds nuw i8, ptr %.030, i64 16
  store float %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %.02529, i64 12
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.030, i64 12
  store float %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %.02529, i64 8
  %i.u = load float, ptr %i.t, align 4
  %i.v = fmul float %i.u, f0x3F70A3D7
  %i.w = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store float %i.v, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.02529, i64 4
  %i.y = load float, ptr %i.x, align 4
  %i.z = fmul float %i.y, f0x3F70A3D7
  %i.aa = getelementptr inbounds nuw i8, ptr %.030, i64 4
  store float %i.z, ptr %i.aa, align 4
  %i.ab = load float, ptr %.02529, align 4
  %i.ac = fmul float %i.ab, f0x3F70A3D7
  store float %i.ac, ptr %.030, align 4
  %i.ad = add nsw i32 %.02628, -1                 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.02529, i64 -24
  %i.af = getelementptr inbounds i8, ptr %.030, i64 -28
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !225

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
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
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !226

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
  %scevgep = getelementptr i8, ptr %i.e, i64 4
  %i.f = mul nuw nsw i64 %i.c, 28
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep18 = getelementptr i8, ptr %i.g, i64 28
  %bound0 = icmp ult ptr %0, %scevgep18
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = trunc nuw i64 %n.vec to i32
  %i.i = sub i32 %2, %i.h
  %i.j = shl nuw nsw i64 %n.vec, 2
end_hunk_2
begin_hunk_3_@SDL_Convert61ToStereo:bb.a
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !239
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep30, i64 16
  %i.ar = getelementptr i8, ptr %i.p, i64 44
  %i.as = getelementptr i8, ptr %i.q, i64 72
  %i.at = getelementptr i8, ptr %i.r, i64 100
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !239
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !239
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !239
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !239
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %next.gep30, i64 20
  %i.bd = getelementptr i8, ptr %i.p, i64 48
  %i.be = getelementptr i8, ptr %i.q, i64 76
  %i.bf = getelementptr i8, ptr %i.r, i64 104
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !239
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !239
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !239
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !239
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep30, i64 24
  %i.bp = getelementptr i8, ptr %i.p, i64 52
  %i.bq = getelementptr i8, ptr %i.q, i64 80
  %i.br = getelementptr i8, ptr %i.r, i64 108
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !239
  %i.bt = load float, ptr %i.bp, align 4, !alias.scope !239
  %i.bu = load float, ptr %i.bq, align 4, !alias.scope !239
  %i.bv = load float, ptr %i.br, align 4, !alias.scope !239
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3 ; 2 uses
  %i.ca = load float, ptr %next.gep30, align 4, !alias.scope !239
  %i.cb = load float, ptr %next.gep31, align 4, !alias.scope !239
  %i.cc = load float, ptr %next.gep32, align 4, !alias.scope !239
  %i.cd = load float, ptr %next.gep33, align 4, !alias.scope !239
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = fmul <4 x float> %i.ad, splat (float f0x3E32A60B) ; 2 uses
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> splat (float f0x3E7D5265), <4 x float> %i.ci)
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3D9D89D9), <4 x float> %i.cj)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3E32A60B), <4 x float> %i.ck)
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> splat (float f0x3E6794E0), <4 x float> %i.cl)
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> splat (float f0x3DCE0F70), <4 x float> %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep30, i64 4
  %i.cp = getelementptr i8, ptr %i.p, i64 32
  %i.cq = getelementptr i8, ptr %i.q, i64 60
  %i.cr = getelementptr i8, ptr %i.r, i64 88
  %i.cs = load float, ptr %i.co, align 4, !alias.scope !239
  %i.ct = load float, ptr %i.cp, align 4, !alias.scope !239
  %i.cu = load float, ptr %i.cq, align 4, !alias.scope !239
  %i.cv = load float, ptr %i.cr, align 4, !alias.scope !239
  %i.cw = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 1
  %i.cy = insertelement <4 x float> %i.cx, float %i.cu, i64 2
  %i.cz = insertelement <4 x float> %i.cy, float %i.cv, i64 3
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> splat (float f0x3E7D5265), <4 x float> %i.ci)
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3D9D89D9), <4 x float> %i.da)
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3E32A60B), <4 x float> %i.db)
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> splat (float f0x3DCE0F70), <4 x float> %i.dc)
  %i.de = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> splat (float f0x3E6794E0), <4 x float> %i.dd)
  %interleaved.vec = shufflevector <4 x float> %i.cn, <4 x float> %i.de, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !240, !noalias !239
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.028.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02327.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02426.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.028 = phi ptr [ %i.eh, %.lr.ph ], [ %.028.ph, %.lr.ph.preheader36 ] ; 3 uses
  %.02327 = phi ptr [ %i.eg, %.lr.ph ], [ %.02327.ph, %.lr.ph.preheader36 ] ; 8 uses
  %.02426 = phi i32 [ %i.ef, %.lr.ph ], [ %.02426.ph, %.lr.ph.preheader36 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.02327, i64 8
  %i.dh = load float, ptr %i.dg, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.02327, i64 12
  %i.dj = load float, ptr %i.di, align 4          ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.02327, i64 16
  %i.dl = load float, ptr %i.dk, align 4          ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02327, i64 20
  %i.dn = load float, ptr %i.dm, align 4          ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02327, i64 24
  %i.dp = load float, ptr %i.do, align 4          ; 2 uses
  %i.dq = load float, ptr %.02327, align 4
  %i.dr = fmul float %i.dh, f0x3E32A60B           ; 2 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dq, float f0x3E7D5265, float %i.dr)
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dj, float f0x3D9D89D9, float %i.ds)
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dl, float f0x3E32A60B, float %i.dt)
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dn, float f0x3E6794E0, float %i.du)
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dp, float f0x3DCE0F70, float %i.dv)
  store float %i.dw, ptr %.028, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.02327, i64 4
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dy, float f0x3E7D5265, float %i.dr)
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dj, float f0x3D9D89D9, float %i.dz)
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.dl, float f0x3E32A60B, float %i.ea)
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dn, float f0x3DCE0F70, float %i.eb)
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.dp, float f0x3E6794E0, float %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %.028, i64 4
  store float %i.ed, ptr %i.ee, align 4
  %i.ef = add nsw i32 %.02426, -1                 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02327, i64 28
  %i.eh = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %.not = icmp eq i32 %i.ef, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !238

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert61To21(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not24 = icmp eq i32 %2, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 12
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 12
  %i.f = mul nuw nsw i64 %i.c, 28
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep28 = getelementptr i8, ptr %i.g, i64 28
  %bound0 = icmp ult ptr %0, %scevgep28
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 12
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = mul nuw nsw i64 %n.vec, 28
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 28                       ; 4 uses
  %next.gep29 = getelementptr i8, ptr %1, i64 %i.o ; 7 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep30 = getelementptr i8, ptr %i.p, i64 28
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep31 = getelementptr i8, ptr %i.q, i64 56
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep32 = getelementptr i8, ptr %i.r, i64 84
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep29, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 36
  %i.u = getelementptr i8, ptr %i.q, i64 64
  %i.v = getelementptr i8, ptr %i.r, i64 92
  %i.w = load float, ptr %i.s, align 4, !alias.scope !246
  %i.x = load float, ptr %i.t, align 4, !alias.scope !246
  %i.y = load float, ptr %i.u, align 4, !alias.scope !246
  %i.z = load float, ptr %i.v, align 4, !alias.scope !246
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep29, i64 16
  %i.af = getelementptr i8, ptr %i.p, i64 44
  %i.ag = getelementptr i8, ptr %i.q, i64 72
  %i.ah = getelementptr i8, ptr %i.r, i64 100
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !246
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
  %3 = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %4 = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %6 = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %8 = fmul <8 x float> %7, splat (float 1.890000e-01)
  %9 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %6, <8 x float> splat (float 2.680000e-01), <8 x float> %8)
  %10 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %5, <8 x float> splat (float 1.890000e-01), <8 x float> %9)
  %11 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> <float 2.450000e-01, float 2.450000e-01, float 2.450000e-01, float 2.450000e-01, float 1.090000e-01, float 1.090000e-01, float 1.090000e-01, float 1.090000e-01>, <8 x float> %10)
  %i.cu = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> <float 1.090000e-01, float 1.090000e-01, float 1.090000e-01, float 1.090000e-01, float 2.450000e-01, float 2.450000e-01, float 2.450000e-01, float 2.450000e-01>, <8 x float> %11)
  %interleaved.vec = shufflevector <8 x float> %i.cu, <8 x float> %i.ct, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !247, !noalias !246
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02226.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02325.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader35, %.lr.ph
  %.027 = phi ptr [ %i.dw, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader35 ] ; 4 uses
  %.02226 = phi ptr [ %i.dv, %.lr.ph ], [ %.02226.ph, %.lr.ph.preheader35 ] ; 8 uses
  %.02325 = phi i32 [ %i.du, %.lr.ph ], [ %.02325.ph, %.lr.ph.preheader35 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.02226, i64 8
  %i.cx = load float, ptr %i.cw, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.02226, i64 16
  %i.cz = load float, ptr %i.cy, align 4          ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.02226, i64 20
  %i.db = load float, ptr %i.da, align 4          ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02226, i64 24
  %i.dd = load float, ptr %i.dc, align 4          ; 2 uses
  %i.de = load float, ptr %.02226, align 4
  %i.df = fmul float %i.cx, 1.890000e-01          ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.de, float 2.680000e-01, float %i.df)
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.cz, float 1.890000e-01, float %i.dg)
  %i.di = tail call float @llvm.fmuladd.f32(float %i.db, float 2.450000e-01, float %i.dh)
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.dd, float 1.090000e-01, float %i.di)
  store float %i.dj, ptr %.027, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.02226, i64 4
  %i.dl = load float, ptr %i.dk, align 4
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dl, float 2.680000e-01, float %i.df)
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.cz, float 1.890000e-01, float %i.dm)
  %i.do = tail call float @llvm.fmuladd.f32(float %i.db, float 1.090000e-01, float %i.dn)
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.dd, float 2.450000e-01, float %i.do)
  %i.dq = getelementptr inbounds nuw i8, ptr %.027, i64 4
  store float %i.dp, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.02226, i64 12
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.027, i64 8
  store float %i.ds, ptr %i.dt, align 4
  %i.du = add nsw i32 %.02325, -1                 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.02226, i64 28
  %i.dw = getelementptr inbounds nuw i8, ptr %.027, i64 12
  %.not = icmp eq i32 %i.du, 0
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
  %3 = shufflevector <4 x float> %i.bn, <4 x float> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cu = shufflevector <4 x float> %i.ch, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %6 = fmul <8 x float> %5, splat (float 3.273600e-01)
  %7 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cu, <8 x float> splat (float 4.636800e-01), <8 x float> %6)
  %i.cv = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> splat (float f0x3D23D70B), <8 x float> %7)
  %i.cw = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> splat (float 1.689600e-01), <8 x float> %i.cv)
  %8 = shufflevector <4 x float> %i.bn, <4 x float> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %9 = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %10 = fmul <8 x float> %9, splat (float 3.273600e-01)
  %i.cy = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cx, <8 x float> splat (float f0x3D23D70B), <8 x float> %10)
  %i.cz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %8, <8 x float> splat (float 4.310400e-01), <8 x float> %i.cy)
  %interleaved.vec = shufflevector <8 x float> %i.cw, <8 x float> %i.cz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !254, !noalias !253
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !251

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.032.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02731.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02830.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %.032 = phi ptr [ %i.eh, %.lr.ph ], [ %.032.ph, %.lr.ph.preheader40 ] ; 4 uses
  %.02731 = phi ptr [ %i.eg, %.lr.ph ], [ %.02731.ph, %.lr.ph.preheader40 ] ; 7 uses
  %.02830 = phi i32 [ %i.ef, %.lr.ph ], [ %.02830.ph, %.lr.ph.preheader40 ]
  %i.db = getelementptr inbounds nuw i8, ptr %.02731, i64 8
  %i.dc = load float, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.02731, i64 12
  %i.de = load float, ptr %i.dd, align 4          ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.02731, i64 16
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.02731, i64 20
  %i.di = load float, ptr %.02731, align 4
  %i.dj = fmul float %i.dc, 3.273600e-01          ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.di, float 4.636800e-01, float %i.dj)
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.de, float f0x3D23D70B, float %i.dk)
  %i.dm = getelementptr inbounds nuw i8, ptr %.02731, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.do = load <2 x float>, ptr %i.dh, align 4    ; 3 uses
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = extractelement <2 x float> %i.do, i64 0
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dq, float 1.689600e-01, float %i.dl)
  store float %i.dr, ptr %.032, align 4
  %i.ds = load float, ptr %i.dm, align 4
  %i.dt = fmul float %i.dg, 3.273600e-01
  %i.du = tail call float @llvm.fmuladd.f32(float %i.ds, float 4.636800e-01, float %i.dj)
  %i.dv = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = insertelement <2 x float> poison, float %i.du, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.dt, i64 1
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> splat (float f0x3D23D70B), <2 x float> %i.dy) ; 2 uses
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> <float 1.689600e-01, float 4.310400e-01>, <2 x float> %i.dz)
  store <2 x float> %i.ea, ptr %i.dn, align 4
  %i.eb = extractelement <2 x float> %i.do, i64 1
  %i.ec = extractelement <2 x float> %i.dz, i64 1
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.eb, float 4.310400e-01, float %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %.032, i64 12
  store float %i.ed, ptr %i.ee, align 4
  %i.ef = add nsw i32 %.02830, -1                 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02731, i64 28
  %i.eh = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %.not = icmp eq i32 %i.ef, 0
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
  %3 = shufflevector <4 x float> %i.bb, <4 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %6 = fmul <8 x float> %5, splat (float 3.410000e-01)
  %7 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> splat (float 4.830000e-01), <8 x float> %6)
  %i.cy = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> splat (float 1.760000e-01), <8 x float> %7)
  %i.cz = shufflevector <4 x float> %i.ct, <4 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = shufflevector <8 x float> %i.cy, <8 x float> %i.cz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.db = shufflevector <4 x float> %i.cx, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.da, <16 x float> %i.db, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !261, !noalias !260
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader37

.lr.ph.preheader37:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.029.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02428.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02527.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader37, %.lr.ph
  %.029 = phi ptr [ %i.ee, %.lr.ph ], [ %.029.ph, %.lr.ph.preheader37 ] ; 5 uses
  %.02428 = phi ptr [ %i.ed, %.lr.ph ], [ %.02428.ph, %.lr.ph.preheader37 ] ; 7 uses
  %.02527 = phi i32 [ %i.ec, %.lr.ph ], [ %.02527.ph, %.lr.ph.preheader37 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.02428, i64 8
  %i.de = load float, ptr %i.dd, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %.02428, i64 16
  %i.dg = load float, ptr %i.df, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.02428, i64 20
  %i.di = load float, ptr %.02428, align 4
  %i.dj = fmul float %i.de, 3.410000e-01          ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.di, float 4.830000e-01, float %i.dj)
  %i.dl = getelementptr inbounds nuw i8, ptr %.02428, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.029, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %.02428, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.dq = load <2 x float>, ptr %i.dh, align 4    ; 3 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float 1.760000e-01, float %i.dk)
  store float %i.ds, ptr %.029, align 4
  %i.dt = load float, ptr %i.dl, align 4
  %i.du = tail call float @llvm.fmuladd.f32(float %i.dt, float 4.830000e-01, float %i.dj)
  %i.dv = extractelement <2 x float> %i.dq, i64 1
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float 1.760000e-01, float %i.du)
  store float %i.dw, ptr %i.dm, align 4
  %i.dx = load float, ptr %i.dn, align 4
  store float %i.dx, ptr %i.do, align 4
  %i.dy = fmul <2 x float> %i.dq, splat (float 4.490000e-01)
  %i.dz = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> splat (float 3.410000e-01), <2 x float> %i.dy)
  store <2 x float> %i.eb, ptr %i.dp, align 4
  %i.ec = add nsw i32 %.02527, -1                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.02428, i64 28
  %i.ee = getelementptr inbounds nuw i8, ptr %.029, i64 20
  %.not = icmp eq i32 %i.ec, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !259

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert61To51(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
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
  %i.d = mul nuw nsw i64 %i.c, 24
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 24
  %i.f = mul nuw nsw i64 %i.c, 28
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep29 = getelementptr i8, ptr %i.g, i64 28
  %bound0 = icmp ult ptr %0, %scevgep29
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 24
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = mul nuw nsw i64 %n.vec, 28
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 24
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = mul i64 %index, 28                       ; 4 uses
  %next.gep30 = getelementptr i8, ptr %1, i64 %i.o ; 7 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep31 = getelementptr i8, ptr %i.p, i64 28
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep32 = getelementptr i8, ptr %i.q, i64 56
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 7 uses
  %next.gep33 = getelementptr i8, ptr %i.r, i64 84
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep30, i64 16
  %i.t = getelementptr i8, ptr %i.p, i64 44
  %i.u = getelementptr i8, ptr %i.q, i64 72
  %i.v = getelementptr i8, ptr %i.r, i64 100
  %i.w = load float, ptr %i.s, align 4, !alias.scope !267
  %i.x = load float, ptr %i.t, align 4, !alias.scope !267
  %i.y = load float, ptr %i.u, align 4, !alias.scope !267
  %i.z = load float, ptr %i.v, align 4, !alias.scope !267
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep30, i64 20
  %i.af = getelementptr i8, ptr %i.p, i64 48
  %i.ag = getelementptr i8, ptr %i.q, i64 76
  %i.ah = getelementptr i8, ptr %i.r, i64 104
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !267
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !267
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !267
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !267
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep30, i64 24
  %i.ar = getelementptr i8, ptr %i.p, i64 52
  %i.as = getelementptr i8, ptr %i.q, i64 80
  %i.at = getelementptr i8, ptr %i.r, i64 108
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !267
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !267
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !267
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !267
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
  %i.bc = load float, ptr %next.gep30, align 4, !alias.scope !267
  %i.bd = load float, ptr %next.gep31, align 4, !alias.scope !267
  %i.be = load float, ptr %next.gep32, align 4, !alias.scope !267
  %i.bf = load float, ptr %next.gep33, align 4, !alias.scope !267
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep30, i64 4
  %i.bl = getelementptr i8, ptr %i.p, i64 32
  %i.bm = getelementptr i8, ptr %i.q, i64 60
  %i.bn = getelementptr i8, ptr %i.r, i64 88
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !267
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !267
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !267
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !267
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = getelementptr inbounds nuw i8, ptr %next.gep30, i64 8
  %i.bx = getelementptr i8, ptr %i.p, i64 36
  %i.by = getelementptr i8, ptr %i.q, i64 64
  %i.bz = getelementptr i8, ptr %i.r, i64 92
  %i.ca = load float, ptr %i.bw, align 4, !alias.scope !267
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !267
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !267
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !267
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = fmul <4 x float> %i.ch, splat (float 6.110000e-01)
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep30, i64 12
  %i.ck = getelementptr i8, ptr %i.p, i64 40
  %i.cl = getelementptr i8, ptr %i.q, i64 68
  %i.cm = getelementptr i8, ptr %i.r, i64 96
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !267
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !267
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !267
  %i.cq = load float, ptr %i.cm, align 4, !alias.scope !267
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = fmul <4 x float> %i.ap, splat (float 5.680000e-01)
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> splat (float 4.320000e-01), <4 x float> %i.cv)
  %i.cx = fmul <4 x float> %i.bb, splat (float 5.680000e-01)
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> splat (float 4.320000e-01), <4 x float> %i.cx)
  %3 = shufflevector <4 x float> %i.bj, <4 x float> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.ap, <4 x float> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = fmul <8 x float> %4, splat (float 2.230000e-01)
  %i.cz = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> splat (float 6.110000e-01), <8 x float> %5)
  %i.da = shufflevector <4 x float> %i.ci, <4 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.db = shufflevector <8 x float> %i.cz, <8 x float> %i.da, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dc = shufflevector <4 x float> %i.cw, <4 x float> %i.cy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.db, <16 x float> %i.dc, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !268, !noalias !267
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.028.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02327.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02426.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.028 = phi ptr [ %i.eg, %.lr.ph ], [ %.028.ph, %.lr.ph.preheader36 ] ; 6 uses
  %.02327 = phi ptr [ %i.ef, %.lr.ph ], [ %.02327.ph, %.lr.ph.preheader36 ] ; 7 uses
  %.02426 = phi i32 [ %i.ee, %.lr.ph ], [ %.02426.ph, %.lr.ph.preheader36 ]
  %i.de = getelementptr inbounds nuw i8, ptr %.02327, i64 16
  %i.df = load float, ptr %i.de, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.02327, i64 20
  %i.dh = load float, ptr %.02327, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.02327, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.028, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.02327, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.02327, i64 12
  %i.dn = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.dp = load <2 x float>, ptr %i.dg, align 4    ; 3 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  %i.dr = fmul float %i.dq, 2.230000e-01
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dh, float 6.110000e-01, float %i.dr)
  store float %i.ds, ptr %.028, align 4
  %i.dt = load float, ptr %i.di, align 4
  %i.du = extractelement <2 x float> %i.dp, i64 1
  %i.dv = fmul float %i.du, 2.230000e-01
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dt, float 6.110000e-01, float %i.dv)
  store float %i.dw, ptr %i.dj, align 4
  %i.dx = load float, ptr %i.dk, align 4
  %i.dy = fmul float %i.dx, 6.110000e-01
  store float %i.dy, ptr %i.dl, align 4
  %i.dz = load float, ptr %i.dm, align 4
  store float %i.dz, ptr %i.dn, align 4
  %i.ea = fmul <2 x float> %i.dp, splat (float 5.680000e-01)
  %i.eb = insertelement <2 x float> poison, float %i.df, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ec, <2 x float> splat (float 4.320000e-01), <2 x float> %i.ea)
  store <2 x float> %i.ed, ptr %i.do, align 4
  %i.ee = add nsw i32 %.02426, -1                 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.02327, i64 28
  %i.eg = getelementptr inbounds nuw i8, ptr %.028, i64 24
  %.not = icmp eq i32 %i.ee, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !266

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert61To71(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = add nsw i32 %2, -1                       ; 2 uses
  %i.b = shl nsw i32 %i.a, 3
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c
  %i.e = mul nsw i32 %i.a, 7
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %1, i64 %i.f
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.030 = phi ptr [ %i.ae, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 9 uses
  %.02529 = phi i32 [ %i.ac, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.02628 = phi ptr [ %i.ad, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02628, i64 16
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %.02628, i64 24
  %i.k = load float, ptr %i.j, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.030, i64 28
  store float %i.k, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.02628, i64 20
  %i.n = load float, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %.030, i64 24
  store float %i.n, ptr %i.o, align 4
  %i.p = fmul float %i.i, 7.070000e-01            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.030, i64 20
  store float %i.p, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.030, i64 16
  store float %i.p, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.02628, i64 12
  %i.t = load float, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %.030, i64 12
  store float %i.t, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.02628, i64 8
  %i.w = load float, ptr %i.v, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store float %i.w, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %.02628, i64 4
  %i.z = load float, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.030, i64 4
  store float %i.z, ptr %i.aa, align 4
  %i.ab = load float, ptr %.02628, align 4
  store float %i.ab, ptr %.030, align 4
  %i.ac = add nsw i32 %.02529, -1                 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.02628, i64 -28
  %i.ae = getelementptr inbounds i8, ptr %.030, i64 -32
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !269

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert71ToMono(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not15 = icmp eq i32 %2, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nuw nsw i64 %i.c, 2
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 4
  %i.f = shl nuw nsw i64 %i.c, 5
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep19 = getelementptr i8, ptr %i.g, i64 32
  %bound0 = icmp ult ptr %0, %scevgep19
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = trunc nuw i64 %n.vec to i32
  %i.i = sub i32 %2, %i.h
  %i.j = shl nuw nsw i64 %n.vec, 2
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = shl nuw nsw i64 %n.vec, 5
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl i64 %index, 5                        ; 4 uses
  %next.gep20 = getelementptr i8, ptr %1, i64 %i.o ; 8 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep21 = getelementptr i8, ptr %i.p, i64 32
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep22 = getelementptr i8, ptr %i.q, i64 64
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep23 = getelementptr i8, ptr %i.r, i64 96
  %i.s = load float, ptr %next.gep20, align 4, !alias.scope !275
  %i.t = load float, ptr %next.gep21, align 4, !alias.scope !275
  %i.u = load float, ptr %next.gep22, align 4, !alias.scope !275
  %i.v = load float, ptr %next.gep23, align 4, !alias.scope !275
  %i.w = insertelement <4 x float> poison, float %i.s, i64 0
  %i.x = insertelement <4 x float> %i.w, float %i.t, i64 1
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 2
  %i.z = insertelement <4 x float> %i.y, float %i.v, i64 3
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep20, i64 4
  %i.ab = getelementptr i8, ptr %i.p, i64 36
  %i.ac = getelementptr i8, ptr %i.q, i64 68
  %i.ad = getelementptr i8, ptr %i.r, i64 100
  %i.ae = load float, ptr %i.aa, align 4, !alias.scope !275
  %i.af = load float, ptr %i.ab, align 4, !alias.scope !275
  %i.ag = load float, ptr %i.ac, align 4, !alias.scope !275
  %i.ah = load float, ptr %i.ad, align 4, !alias.scope !275
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3
  %i.am = fmul <4 x float> %i.al, splat (float 1.251250e-01)
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> splat (float 1.251250e-01), <4 x float> %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %next.gep20, i64 8
  %i.ap = getelementptr i8, ptr %i.p, i64 40
  %i.aq = getelementptr i8, ptr %i.q, i64 72
  %i.ar = getelementptr i8, ptr %i.r, i64 104
  %i.as = load float, ptr %i.ao, align 4, !alias.scope !275
  %i.at = load float, ptr %i.ap, align 4, !alias.scope !275
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !275
end_hunk_3
begin_hunk_4_@SDL_Convert71ToStereo:bb.a
  %i.bd = getelementptr i8, ptr %i.p, i64 52
  %i.be = getelementptr i8, ptr %i.q, i64 84
  %i.bf = getelementptr i8, ptr %i.r, i64 116
  %i.bg = load float, ptr %i.bc, align 4, !alias.scope !282
  %i.bh = load float, ptr %i.bd, align 4, !alias.scope !282
  %i.bi = load float, ptr %i.be, align 4, !alias.scope !282
  %i.bj = load float, ptr %i.bf, align 4, !alias.scope !282
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %next.gep33, i64 24
  %i.bp = getelementptr i8, ptr %i.p, i64 56
  %i.bq = getelementptr i8, ptr %i.q, i64 88
  %i.br = getelementptr i8, ptr %i.r, i64 120
  %i.bs = load float, ptr %i.bo, align 4, !alias.scope !282
  %i.bt = load float, ptr %i.bp, align 4, !alias.scope !282
  %i.bu = load float, ptr %i.bq, align 4, !alias.scope !282
  %i.bv = load float, ptr %i.br, align 4, !alias.scope !282
  %i.bw = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 1
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 3 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep33, i64 28
  %i.cb = getelementptr i8, ptr %i.p, i64 60
  %i.cc = getelementptr i8, ptr %i.q, i64 92
  %i.cd = getelementptr i8, ptr %i.r, i64 124
  %i.ce = load float, ptr %i.ca, align 4, !alias.scope !282
  %i.cf = load float, ptr %i.cb, align 4, !alias.scope !282
  %i.cg = load float, ptr %i.cc, align 4, !alias.scope !282
  %i.ch = load float, ptr %i.cd, align 4, !alias.scope !282
  %i.ci = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 2
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 3 ; 2 uses
  %i.cm = load float, ptr %next.gep33, align 4, !alias.scope !282
  %i.cn = load float, ptr %next.gep34, align 4, !alias.scope !282
  %i.co = load float, ptr %next.gep35, align 4, !alias.scope !282
  %i.cp = load float, ptr %next.gep36, align 4, !alias.scope !282
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = fmul <4 x float> %i.ad, splat (float f0x3E19DF81) ; 2 uses
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> splat (float f0x3E58F393), <4 x float> %i.cu)
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3D888889), <4 x float> %i.cv)
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3E39698B), <4 x float> %i.cw)
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> splat (float f0x3DE376EC), <4 x float> %i.cx)
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> splat (float f0x3E46CAE4), <4 x float> %i.cy)
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> splat (float f0x3DAFDADD), <4 x float> %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %next.gep33, i64 4
  %i.dc = getelementptr i8, ptr %i.p, i64 36
  %i.dd = getelementptr i8, ptr %i.q, i64 68
  %i.de = getelementptr i8, ptr %i.r, i64 100
  %i.df = load float, ptr %i.db, align 4, !alias.scope !282
  %i.dg = load float, ptr %i.dc, align 4, !alias.scope !282
  %i.dh = load float, ptr %i.dd, align 4, !alias.scope !282
  %i.di = load float, ptr %i.de, align 4, !alias.scope !282
  %i.dj = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 3
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dm, <4 x float> splat (float f0x3E58F393), <4 x float> %i.cu)
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float f0x3D888889), <4 x float> %i.dn)
  %i.dp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bb, <4 x float> splat (float f0x3DE376EC), <4 x float> %i.do)
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> splat (float f0x3E39698B), <4 x float> %i.dp)
  %i.dr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> splat (float f0x3DAFDADD), <4 x float> %i.dq)
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> splat (float f0x3E46CAE4), <4 x float> %i.dr)
  %interleaved.vec = shufflevector <4 x float> %i.da, <4 x float> %i.ds, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !283, !noalias !282
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.031.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02630.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02729.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader39, %.lr.ph
  %.031 = phi ptr [ %i.ez, %.lr.ph ], [ %.031.ph, %.lr.ph.preheader39 ] ; 3 uses
  %.02630 = phi ptr [ %i.ey, %.lr.ph ], [ %.02630.ph, %.lr.ph.preheader39 ] ; 9 uses
  %.02729 = phi i32 [ %i.ex, %.lr.ph ], [ %.02729.ph, %.lr.ph.preheader39 ]
  %i.du = getelementptr inbounds nuw i8, ptr %.02630, i64 8
  %i.dv = load float, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.02630, i64 12
  %i.dx = load float, ptr %i.dw, align 4          ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.02630, i64 16
  %i.dz = load float, ptr %i.dy, align 4          ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.02630, i64 20
  %i.eb = load float, ptr %i.ea, align 4          ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.02630, i64 24
  %i.ed = load float, ptr %i.ec, align 4          ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.02630, i64 28
  %i.ef = load float, ptr %i.ee, align 4          ; 2 uses
  %i.eg = load float, ptr %.02630, align 4
  %i.eh = fmul float %i.dv, f0x3E19DF81           ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eg, float f0x3E58F393, float %i.eh)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.dx, float f0x3D888889, float %i.ei)
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.dz, float f0x3E39698B, float %i.ej)
  %i.el = tail call float @llvm.fmuladd.f32(float %i.eb, float f0x3DE376EC, float %i.ek)
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ed, float f0x3E46CAE4, float %i.el)
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ef, float f0x3DAFDADD, float %i.em)
  store float %i.en, ptr %.031, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.02630, i64 4
  %i.ep = load float, ptr %i.eo, align 4
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float f0x3E58F393, float %i.eh)
  %i.er = tail call float @llvm.fmuladd.f32(float %i.dx, float f0x3D888889, float %i.eq)
  %i.es = tail call float @llvm.fmuladd.f32(float %i.dz, float f0x3DE376EC, float %i.er)
  %i.et = tail call float @llvm.fmuladd.f32(float %i.eb, float f0x3E39698B, float %i.es)
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.ed, float f0x3DAFDADD, float %i.et)
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.ef, float f0x3E46CAE4, float %i.eu)
  %i.ew = getelementptr inbounds nuw i8, ptr %.031, i64 4
  store float %i.ev, ptr %i.ew, align 4
  %i.ex = add nsw i32 %.02729, -1                 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %.not = icmp eq i32 %i.ex, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !281

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert71To21(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not27 = icmp eq i32 %2, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 12
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 12
  %i.f = shl nuw nsw i64 %i.c, 5
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep31 = getelementptr i8, ptr %i.g, i64 32
  %bound0 = icmp ult ptr %0, %scevgep31
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 12
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl nuw nsw i64 %n.vec, 5
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl i64 %index, 5                        ; 4 uses
  %next.gep32 = getelementptr i8, ptr %1, i64 %i.o ; 8 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep33 = getelementptr i8, ptr %i.p, i64 32
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep34 = getelementptr i8, ptr %i.q, i64 64
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep35 = getelementptr i8, ptr %i.r, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep32, i64 8
  %i.t = getelementptr i8, ptr %i.p, i64 40
  %i.u = getelementptr i8, ptr %i.q, i64 72
  %i.v = getelementptr i8, ptr %i.r, i64 104
  %i.w = load float, ptr %i.s, align 4, !alias.scope !289
  %i.x = load float, ptr %i.t, align 4, !alias.scope !289
  %i.y = load float, ptr %i.u, align 4, !alias.scope !289
  %i.z = load float, ptr %i.v, align 4, !alias.scope !289
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep32, i64 16
  %i.af = getelementptr i8, ptr %i.p, i64 48
  %i.ag = getelementptr i8, ptr %i.q, i64 80
  %i.ah = getelementptr i8, ptr %i.r, i64 112
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !289
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !289
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !289
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !289
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep32, i64 20
  %i.ar = getelementptr i8, ptr %i.p, i64 52
  %i.as = getelementptr i8, ptr %i.q, i64 84
  %i.at = getelementptr i8, ptr %i.r, i64 116
  %i.au = load float, ptr %i.aq, align 4, !alias.scope !289
  %i.av = load float, ptr %i.ar, align 4, !alias.scope !289
  %i.aw = load float, ptr %i.as, align 4, !alias.scope !289
  %i.ax = load float, ptr %i.at, align 4, !alias.scope !289
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
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
  %3 = shufflevector <4 x float> %i.bz, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %4 = shufflevector <4 x float> %i.bn, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x float> %i.bb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %6 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %7 = shufflevector <4 x float> %i.ch, <4 x float> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %8 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %9 = fmul <8 x float> %8, splat (float 1.610000e-01)
  %10 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %7, <8 x float> splat (float 2.270000e-01), <8 x float> %9)
  %11 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %6, <8 x float> <float 1.940000e-01, float 1.940000e-01, float 1.940000e-01, float 1.940000e-01, float 1.190000e-01, float 1.190000e-01, float 1.190000e-01, float 1.190000e-01>, <8 x float> %10)
  %12 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %5, <8 x float> <float 1.190000e-01, float 1.190000e-01, float 1.190000e-01, float 1.190000e-01, float 1.940000e-01, float 1.940000e-01, float 1.940000e-01, float 1.940000e-01>, <8 x float> %11)
  %13 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> <float 2.080000e-01, float 2.080000e-01, float 2.080000e-01, float 2.080000e-01, float 9.200000e-02, float 9.200000e-02, float 9.200000e-02, float 9.200000e-02>, <8 x float> %12)
  %i.dg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> <float 9.200000e-02, float 9.200000e-02, float 9.200000e-02, float 9.200000e-02, float 2.080000e-01, float 2.080000e-01, float 2.080000e-01, float 2.080000e-01>, <8 x float> %13)
  %interleaved.vec = shufflevector <8 x float> %i.dg, <8 x float> %i.df, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !290, !noalias !289
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02529.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02628.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.em, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02529 = phi ptr [ %i.el, %.lr.ph ], [ %.02529.ph, %.lr.ph.preheader38 ] ; 9 uses
  %.02628 = phi i32 [ %i.ek, %.lr.ph ], [ %.02628.ph, %.lr.ph.preheader38 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.02529, i64 8
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.02529, i64 16
  %i.dl = load float, ptr %i.dk, align 4          ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.02529, i64 20
  %i.dn = load float, ptr %i.dm, align 4          ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.02529, i64 24
  %i.dp = load float, ptr %i.do, align 4          ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.02529, i64 28
  %i.dr = load float, ptr %i.dq, align 4          ; 2 uses
  %i.ds = load float, ptr %.02529, align 4
  %i.dt = fmul float %i.dj, 1.610000e-01          ; 2 uses
  %i.du = tail call float @llvm.fmuladd.f32(float %i.ds, float 2.270000e-01, float %i.dt)
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dl, float 1.940000e-01, float %i.du)
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dn, float 1.190000e-01, float %i.dv)
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dp, float 2.080000e-01, float %i.dw)
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dr, float 9.200000e-02, float %i.dx)
  store float %i.dy, ptr %.030, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.02529, i64 4
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float 2.270000e-01, float %i.dt)
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dl, float 1.190000e-01, float %i.eb)
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.dn, float 1.940000e-01, float %i.ec)
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dp, float 9.200000e-02, float %i.ed)
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.dr, float 2.080000e-01, float %i.ee)
  %i.eg = getelementptr inbounds nuw i8, ptr %.030, i64 4
  store float %i.ef, ptr %i.eg, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.02529, i64 12
  %i.ei = load float, ptr %i.eh, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.030, i64 8
  store float %i.ei, ptr %i.ej, align 4
  %i.ek = add nsw i32 %.02628, -1                 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.02529, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %.not = icmp eq i32 %i.ek, 0
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
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
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
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3 ; 2 uses
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
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3 ; 2 uses
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
  %3 = shufflevector <4 x float> %i.bb, <4 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dg = shufflevector <4 x float> %i.bv, <4 x float> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dh = fmul <8 x float> %5, splat (float f0x3EA89253)
  %6 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dg, <8 x float> splat (float f0x3EEEC4C0), <8 x float> %i.dh)
  %7 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> splat (float f0x3D0D3DCB), <8 x float> %6)
  %i.di = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> splat (float f0x3E2E0267), <8 x float> %7)
  %8 = shufflevector <4 x float> %i.bb, <4 x float> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <4 x float> %i.ap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x float> %i.ct, <4 x float> %i.df, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %11 = fmul <8 x float> %10, splat (float f0x3EEEC4C0)
  %i.dj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %9, <8 x float> splat (float f0x3D0D3DCB), <8 x float> %11)
  %i.dk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %8, <8 x float> splat (float f0x3EDDF5F9), <8 x float> %i.dj)
  %interleaved.vec = shufflevector <8 x float> %i.di, <8 x float> %i.dk, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !297, !noalias !296
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.031.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02630.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02729.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader39, %.lr.ph
  %.031 = phi ptr [ %i.et, %.lr.ph ], [ %.031.ph, %.lr.ph.preheader39 ] ; 5 uses
  %.02630 = phi ptr [ %i.es, %.lr.ph ], [ %.02630.ph, %.lr.ph.preheader39 ] ; 9 uses
  %.02729 = phi i32 [ %i.er, %.lr.ph ], [ %.02729.ph, %.lr.ph.preheader39 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.02630, i64 8
  %i.dn = load float, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %.02630, i64 12
  %i.dp = load float, ptr %i.do, align 4          ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.02630, i64 24
  %i.dr = load float, ptr %i.dq, align 4          ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02630, i64 28
  %i.dt = load float, ptr %i.ds, align 4          ; 2 uses
  %i.du = load float, ptr %.02630, align 4
  %i.dv = fmul float %i.dn, f0x3EA89253           ; 2 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.du, float f0x3EEEC4C0, float %i.dv)
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dp, float f0x3D0D3DCB, float %i.dw)
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dr, float f0x3E2E0267, float %i.dx)
  store float %i.dy, ptr %.031, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.02630, i64 4
  %i.ea = load float, ptr %i.dz, align 4
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float f0x3EEEC4C0, float %i.dv)
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.dp, float f0x3D0D3DCB, float %i.eb)
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.dt, float f0x3E2E0267, float %i.ec)
  %i.ee = getelementptr inbounds nuw i8, ptr %.031, i64 4
  store float %i.ed, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.02630, i64 16
  %i.eg = load float, ptr %i.ef, align 4
  %i.eh = fmul float %i.eg, f0x3EEEC4C0
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.dp, float f0x3D0D3DCB, float %i.eh)
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.dr, float f0x3EDDF5F9, float %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %.031, i64 8
  store float %i.ej, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %.02630, i64 20
  %i.em = load float, ptr %i.el, align 4
  %i.en = fmul float %i.em, f0x3EEEC4C0
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.dp, float f0x3D0D3DCB, float %i.en)
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.dt, float f0x3EDDF5F9, float %i.eo)
  %i.eq = getelementptr inbounds nuw i8, ptr %.031, i64 12
  store float %i.ep, ptr %i.eq, align 4
  %i.er = add nsw i32 %.02729, -1                 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02630, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %.not = icmp eq i32 %i.er, 0
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
  %i.dc = load float, ptr %i.cy, align 4, !alias.scope !303
  %i.dd = load float, ptr %i.cz, align 4, !alias.scope !303
  %i.de = insertelement <4 x float> poison, float %i.da, i64 0
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 1
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 2
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 3
  %i.di = fmul <4 x float> %i.bb, splat (float 4.490000e-01)
  %i.dj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> splat (float 4.830000e-01), <4 x float> %i.di)
  %3 = shufflevector <4 x float> %i.ap, <4 x float> %i.bb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.bj, <4 x float> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %6 = fmul <8 x float> %5, splat (float 3.410000e-01)
  %7 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> splat (float 4.830000e-01), <8 x float> %6)
  %i.dk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> splat (float 1.760000e-01), <8 x float> %7)
  %i.dl = shufflevector <4 x float> %i.ch, <4 x float> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dm = shufflevector <8 x float> %i.dk, <8 x float> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dn = shufflevector <4 x float> %i.dj, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.dm, <16 x float> %i.dn, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !304, !noalias !303
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.028.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02327.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02426.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.028 = phi ptr [ %i.eu, %.lr.ph ], [ %.028.ph, %.lr.ph.preheader36 ] ; 6 uses
  %.02327 = phi ptr [ %i.et, %.lr.ph ], [ %.02327.ph, %.lr.ph.preheader36 ] ; 8 uses
  %.02426 = phi i32 [ %i.es, %.lr.ph ], [ %.02426.ph, %.lr.ph.preheader36 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.02327, i64 8
  %i.dq = load float, ptr %i.dp, align 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.02327, i64 24
  %i.ds = load float, ptr %.02327, align 4
  %i.dt = fmul float %i.dq, 3.410000e-01          ; 2 uses
  %i.du = tail call float @llvm.fmuladd.f32(float %i.ds, float 4.830000e-01, float %i.dt)
  %i.dv = getelementptr inbounds nuw i8, ptr %.02327, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.028, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.02327, i64 12
  %i.dy = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %.02327, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %.02327, i64 20
  %i.ec = load <2 x float>, ptr %i.dr, align 4    ; 3 uses
  %i.ed = extractelement <2 x float> %i.ec, i64 0
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float 1.760000e-01, float %i.du)
  store float %i.ee, ptr %.028, align 4
  %i.ef = load float, ptr %i.dv, align 4
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.ef, float 4.830000e-01, float %i.dt)
  %i.eh = extractelement <2 x float> %i.ec, i64 1
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float 1.760000e-01, float %i.eg)
  store float %i.ei, ptr %i.dw, align 4
  %i.ej = load float, ptr %i.dx, align 4
  store float %i.ej, ptr %i.dy, align 4
  %i.ek = load float, ptr %i.dz, align 4
  %i.el = fmul <2 x float> %i.ec, splat (float 4.490000e-01) ; 2 uses
  %i.em = extractelement <2 x float> %i.el, i64 0
  %i.en = tail call float @llvm.fmuladd.f32(float %i.ek, float 4.830000e-01, float %i.em)
  store float %i.en, ptr %i.ea, align 4
  %i.eo = load float, ptr %i.eb, align 4
  %i.ep = extractelement <2 x float> %i.el, i64 1
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.eo, float 4.830000e-01, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %.028, i64 16
  store float %i.eq, ptr %i.er, align 4
  %i.es = add nsw i32 %.02426, -1                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.02327, i64 32
  %i.eu = getelementptr inbounds nuw i8, ptr %.028, i64 20
  %.not = icmp eq i32 %i.es, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !302

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert71To51(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
bb.a:
  %.not24 = icmp eq i32 %2, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = add i32 %2, -1
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nuw nsw i64 %i.c, 24
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 24
  %i.f = shl nuw nsw i64 %i.c, 5
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep28 = getelementptr i8, ptr %i.g, i64 32
  %bound0 = icmp ult ptr %0, %scevgep28
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 24
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl nuw nsw i64 %n.vec, 5
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 24
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl i64 %index, 5                        ; 4 uses
  %next.gep29 = getelementptr i8, ptr %1, i64 %i.o ; 8 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep30 = getelementptr i8, ptr %i.p, i64 32
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep31 = getelementptr i8, ptr %i.q, i64 64
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep32 = getelementptr i8, ptr %i.r, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep29, i64 24
  %i.t = getelementptr i8, ptr %i.p, i64 56
  %i.u = getelementptr i8, ptr %i.q, i64 88
  %i.v = getelementptr i8, ptr %i.r, i64 120
  %i.w = load float, ptr %i.s, align 4, !alias.scope !310
  %i.x = load float, ptr %i.t, align 4, !alias.scope !310
  %i.y = load float, ptr %i.u, align 4, !alias.scope !310
  %i.z = load float, ptr %i.v, align 4, !alias.scope !310
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep29, i64 28
  %i.af = getelementptr i8, ptr %i.p, i64 60
  %i.ag = getelementptr i8, ptr %i.q, i64 92
  %i.ah = getelementptr i8, ptr %i.r, i64 124
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !310
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !310
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !310
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !310
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = load float, ptr %next.gep29, align 4, !alias.scope !310
  %i.ar = load float, ptr %next.gep30, align 4, !alias.scope !310
  %i.as = load float, ptr %next.gep31, align 4, !alias.scope !310
  %i.at = load float, ptr %next.gep32, align 4, !alias.scope !310
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep29, i64 4
  %i.az = getelementptr i8, ptr %i.p, i64 36
  %i.ba = getelementptr i8, ptr %i.q, i64 68
  %i.bb = getelementptr i8, ptr %i.r, i64 100
  %i.bc = load float, ptr %i.ay, align 4, !alias.scope !310
  %i.bd = load float, ptr %i.az, align 4, !alias.scope !310
  %i.be = load float, ptr %i.ba, align 4, !alias.scope !310
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !310
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep29, i64 8
  %i.bl = getelementptr i8, ptr %i.p, i64 40
  %i.bm = getelementptr i8, ptr %i.q, i64 72
  %i.bn = getelementptr i8, ptr %i.r, i64 104
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !310
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !310
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !310
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !310
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = fmul <4 x float> %i.bv, splat (float 5.180000e-01)
  %i.bx = getelementptr inbounds nuw i8, ptr %next.gep29, i64 12
  %i.by = getelementptr i8, ptr %i.p, i64 44
  %i.bz = getelementptr i8, ptr %i.q, i64 76
  %i.ca = getelementptr i8, ptr %i.r, i64 108
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !310
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !310
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !310
  %i.ce = load float, ptr %i.ca, align 4, !alias.scope !310
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep29, i64 16
  %i.ck = getelementptr i8, ptr %i.p, i64 48
  %i.cl = getelementptr i8, ptr %i.q, i64 80
  %i.cm = getelementptr i8, ptr %i.r, i64 112
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !310
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !310
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !310
  %i.cq = load float, ptr %i.cm, align 4, !alias.scope !310
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = fmul <4 x float> %i.ad, splat (float 4.820000e-01)
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> splat (float 5.180000e-01), <4 x float> %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %next.gep29, i64 20
  %i.cy = getelementptr i8, ptr %i.p, i64 52
  %i.cz = getelementptr i8, ptr %i.q, i64 84
  %i.da = getelementptr i8, ptr %i.r, i64 116
  %i.db = load float, ptr %i.cx, align 4, !alias.scope !310
  %i.dc = load float, ptr %i.cy, align 4, !alias.scope !310
  %i.dd = load float, ptr %i.cz, align 4, !alias.scope !310
  %i.de = load float, ptr %i.da, align 4, !alias.scope !310
  %i.df = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 3
  %i.dj = fmul <4 x float> %i.ap, splat (float 4.820000e-01)
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> splat (float 5.180000e-01), <4 x float> %i.dj)
  %3 = shufflevector <4 x float> %i.ax, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.ad, <4 x float> %i.ap, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = fmul <8 x float> %4, splat (float 1.890000e-01)
  %i.dl = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %3, <8 x float> splat (float 5.180000e-01), <8 x float> %5)
  %i.dm = shufflevector <4 x float> %i.bw, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = shufflevector <8 x float> %i.dl, <8 x float> %i.dm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.do = shufflevector <4 x float> %i.cw, <4 x float> %i.dk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.dn, <16 x float> %i.do, <24 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23>
  store <24 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !311, !noalias !310
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.027.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02226.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02325.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader35, %.lr.ph
  %.027 = phi ptr [ %i.ev, %.lr.ph ], [ %.027.ph, %.lr.ph.preheader35 ] ; 7 uses
  %.02226 = phi ptr [ %i.eu, %.lr.ph ], [ %.02226.ph, %.lr.ph.preheader35 ] ; 9 uses
  %.02325 = phi i32 [ %i.et, %.lr.ph ], [ %.02325.ph, %.lr.ph.preheader35 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.02226, i64 24
  %i.dr = load float, ptr %i.dq, align 4          ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.02226, i64 28
  %i.dt = load float, ptr %i.ds, align 4          ; 2 uses
  %i.du = load float, ptr %.02226, align 4
  %i.dv = fmul float %i.dr, 1.890000e-01
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.du, float 5.180000e-01, float %i.dv)
  store float %i.dw, ptr %.027, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.02226, i64 4
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = fmul float %i.dt, 1.890000e-01
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dy, float 5.180000e-01, float %i.dz)
  %i.eb = getelementptr inbounds nuw i8, ptr %.027, i64 4
  store float %i.ea, ptr %i.eb, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %.02226, i64 8
  %i.ed = load float, ptr %i.ec, align 4
  %i.ee = fmul float %i.ed, 5.180000e-01
  %i.ef = getelementptr inbounds nuw i8, ptr %.027, i64 8
  store float %i.ee, ptr %i.ef, align 4
  %i.eg = getelementptr inbounds nuw i8, ptr %.02226, i64 12
  %i.eh = load float, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.027, i64 12
  store float %i.eh, ptr %i.ei, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.02226, i64 16
  %i.ek = load float, ptr %i.ej, align 4
  %i.el = fmul float %i.dr, 4.820000e-01
  %i.em = tail call float @llvm.fmuladd.f32(float %i.ek, float 5.180000e-01, float %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %.027, i64 16
  store float %i.em, ptr %i.en, align 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.02226, i64 20
  %i.ep = load float, ptr %i.eo, align 4
  %i.eq = fmul float %i.dt, 4.820000e-01
  %i.er = tail call float @llvm.fmuladd.f32(float %i.ep, float 5.180000e-01, float %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %.027, i64 20
  store float %i.er, ptr %i.es, align 4
  %i.et = add nsw i32 %.02325, -1                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.02226, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %.027, i64 24
  %.not = icmp eq i32 %i.et, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !309

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @SDL_Convert71To61(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #4 {
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
  %i.d = mul nuw nsw i64 %i.c, 28
  %i.e = getelementptr i8, ptr %0, i64 %i.d
  %scevgep = getelementptr i8, ptr %i.e, i64 28
  %i.f = shl nuw nsw i64 %i.c, 5
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep29 = getelementptr i8, ptr %i.g, i64 32
  %bound0 = icmp ult ptr %0, %scevgep29
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 4294967292               ; 5 uses
  %i.h = mul nuw nsw i64 %n.vec, 28
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  %i.j = shl nuw nsw i64 %n.vec, 5
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %2, %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = mul i64 %index, 28
  %next.gep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl i64 %index, 5                        ; 4 uses
  %next.gep30 = getelementptr i8, ptr %1, i64 %i.o ; 8 uses
  %i.p = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep31 = getelementptr i8, ptr %i.p, i64 32
  %i.q = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep32 = getelementptr i8, ptr %i.q, i64 64
  %i.r = getelementptr i8, ptr %1, i64 %i.o       ; 8 uses
  %next.gep33 = getelementptr i8, ptr %i.r, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %next.gep30, i64 16
  %i.t = getelementptr i8, ptr %i.p, i64 48
  %i.u = getelementptr i8, ptr %i.q, i64 80
  %i.v = getelementptr i8, ptr %i.r, i64 112
  %i.w = load float, ptr %i.s, align 4, !alias.scope !317
  %i.x = load float, ptr %i.t, align 4, !alias.scope !317
  %i.y = load float, ptr %i.u, align 4, !alias.scope !317
  %i.z = load float, ptr %i.v, align 4, !alias.scope !317
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep30, i64 20
  %i.af = getelementptr i8, ptr %i.p, i64 52
  %i.ag = getelementptr i8, ptr %i.q, i64 84
  %i.ah = getelementptr i8, ptr %i.r, i64 116
  %i.ai = load float, ptr %i.ae, align 4, !alias.scope !317
  %i.aj = load float, ptr %i.af, align 4, !alias.scope !317
  %i.ak = load float, ptr %i.ag, align 4, !alias.scope !317
  %i.al = load float, ptr %i.ah, align 4, !alias.scope !317
  %i.am = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 2
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 3 ; 2 uses
  %i.aq = load float, ptr %next.gep30, align 4, !alias.scope !317
  %i.ar = load float, ptr %next.gep31, align 4, !alias.scope !317
  %i.as = load float, ptr %next.gep32, align 4, !alias.scope !317
  %i.at = load float, ptr %next.gep33, align 4, !alias.scope !317
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep30, i64 4
  %i.az = getelementptr i8, ptr %i.p, i64 36
  %i.ba = getelementptr i8, ptr %i.q, i64 68
  %i.bb = getelementptr i8, ptr %i.r, i64 100
  %i.bc = load float, ptr %i.ay, align 4, !alias.scope !317
  %i.bd = load float, ptr %i.az, align 4, !alias.scope !317
  %i.be = load float, ptr %i.ba, align 4, !alias.scope !317
  %i.bf = load float, ptr %i.bb, align 4, !alias.scope !317
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %next.gep30, i64 8
  %i.bl = getelementptr i8, ptr %i.p, i64 40
  %i.bm = getelementptr i8, ptr %i.q, i64 72
  %i.bn = getelementptr i8, ptr %i.r, i64 104
  %i.bo = load float, ptr %i.bk, align 4, !alias.scope !317
  %i.bp = load float, ptr %i.bl, align 4, !alias.scope !317
  %i.bq = load float, ptr %i.bm, align 4, !alias.scope !317
  %i.br = load float, ptr %i.bn, align 4, !alias.scope !317
  %i.bs = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 1
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 2
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 3
  %i.bw = fmul <4 x float> %i.bv, splat (float 5.410000e-01)
  %i.bx = getelementptr inbounds nuw i8, ptr %next.gep30, i64 12
  %i.by = getelementptr i8, ptr %i.p, i64 44
  %i.bz = getelementptr i8, ptr %i.q, i64 76
  %i.ca = getelementptr i8, ptr %i.r, i64 108
  %i.cb = load float, ptr %i.bx, align 4, !alias.scope !317
  %i.cc = load float, ptr %i.by, align 4, !alias.scope !317
  %i.cd = load float, ptr %i.bz, align 4, !alias.scope !317
  %i.ce = load float, ptr %i.ca, align 4, !alias.scope !317
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep30, i64 24
  %i.ck = getelementptr i8, ptr %i.p, i64 56
  %i.cl = getelementptr i8, ptr %i.q, i64 88
  %i.cm = getelementptr i8, ptr %i.r, i64 120
  %i.cn = load float, ptr %i.cj, align 4, !alias.scope !317
  %i.co = load float, ptr %i.ck, align 4, !alias.scope !317
  %i.cp = load float, ptr %i.cl, align 4, !alias.scope !317
  %i.cq = load float, ptr %i.cm, align 4, !alias.scope !317
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = getelementptr inbounds nuw i8, ptr %next.gep30, i64 28
  %i.cw = getelementptr i8, ptr %i.p, i64 60
  %i.cx = getelementptr i8, ptr %i.q, i64 92
  %i.cy = getelementptr i8, ptr %i.r, i64 124
  %i.cz = load float, ptr %i.cv, align 4, !alias.scope !317
  %i.da = load float, ptr %i.cw, align 4, !alias.scope !317
  %i.db = load float, ptr %i.cx, align 4, !alias.scope !317
  %i.dc = load float, ptr %i.cy, align 4, !alias.scope !317
  %i.dd = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 1
  %i.df = insertelement <4 x float> %i.de, float %i.db, i64 2
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 3
  %i.dh = fmul <4 x float> %i.dg, splat (float 5.410000e-01)
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ap, <4 x float> splat (float 4.590000e-01), <4 x float> %i.dh)
  %i.dj = shufflevector <4 x float> %i.ax, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dk = fmul <8 x float> %i.dj, splat (float 5.410000e-01)
  %3 = shufflevector <4 x float> %i.bw, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.ad, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dl = shufflevector <4 x float> %i.ap, <4 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = fmul <8 x float> %i.dl, <float 2.880000e-01, float 2.880000e-01, float 2.880000e-01, float 2.880000e-01, float 5.410000e-01, float 5.410000e-01, float 5.410000e-01, float 5.410000e-01>
  %i.dm = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %4, <8 x float> <float 2.880000e-01, float 2.880000e-01, float 2.880000e-01, float 2.880000e-01, float 4.590000e-01, float 4.590000e-01, float 4.590000e-01, float 4.590000e-01>, <8 x float> %5)
  %i.dn = shufflevector <8 x float> %i.dk, <8 x float> %3, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.do = shufflevector <4 x float> %i.di, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <8 x float> %i.dm, <8 x float> %i.do, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.dn, <16 x float> %i.dp, <28 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27>
  store <28 x float> %interleaved.vec, ptr %next.gep, align 4, !alias.scope !318, !noalias !317
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader36

.lr.ph.preheader36:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.028.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02327.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  %.02426.ph = phi i32 [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader36, %.lr.ph
  %.028 = phi ptr [ %i.ex, %.lr.ph ], [ %.028.ph, %.lr.ph.preheader36 ] ; 8 uses
  %.02327 = phi ptr [ %i.ew, %.lr.ph ], [ %.02327.ph, %.lr.ph.preheader36 ] ; 9 uses
  %.02426 = phi i32 [ %i.ev, %.lr.ph ], [ %.02426.ph, %.lr.ph.preheader36 ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.02327, i64 16
  %i.ds = load float, ptr %i.dr, align 4          ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.02327, i64 20
  %i.du = load float, ptr %i.dt, align 4          ; 2 uses
  %i.dv = load float, ptr %.02327, align 4
  %i.dw = fmul float %i.dv, 5.410000e-01
  store float %i.dw, ptr %.028, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.02327, i64 4
  %i.dy = load float, ptr %i.dx, align 4
  %i.dz = fmul float %i.dy, 5.410000e-01
  %i.ea = getelementptr inbounds nuw i8, ptr %.028, i64 4
  store float %i.dz, ptr %i.ea, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.02327, i64 8
  %i.ec = load float, ptr %i.eb, align 4
  %i.ed = fmul float %i.ec, 5.410000e-01
  %i.ee = getelementptr inbounds nuw i8, ptr %.028, i64 8
  store float %i.ed, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %.02327, i64 12
  %i.eg = load float, ptr %i.ef, align 4
  %i.eh = getelementptr inbounds nuw i8, ptr %.028, i64 12
  store float %i.eg, ptr %i.eh, align 4
  %i.ei = fmul float %i.du, 2.880000e-01
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.ds, float 2.880000e-01, float %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %.028, i64 16
  store float %i.ej, ptr %i.ek, align 4
  %i.el = getelementptr inbounds nuw i8, ptr %.02327, i64 24
  %i.em = load float, ptr %i.el, align 4
  %i.en = fmul float %i.em, 5.410000e-01
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.ds, float 4.590000e-01, float %i.en)
  %i.ep = getelementptr inbounds nuw i8, ptr %.028, i64 20
  store float %i.eo, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %.02327, i64 28
  %i.er = load float, ptr %i.eq, align 4
  %i.es = fmul float %i.er, 5.410000e-01
  %i.et = tail call float @llvm.fmuladd.f32(float %i.du, float 4.590000e-01, float %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %.028, i64 24
  store float %i.et, ptr %i.eu, align 4
  %i.ev = add nsw i32 %.02426, -1                 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.02327, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %.028, i64 28
  %.not = icmp eq i32 %i.ev, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !316

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare ptr @SDL_CreateAudioTrack(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_AddTrackToAudioQueue(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i1 @SDL_WriteToAudioQueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @SDL_BeginAudioQueueIter(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @NextAudioStreamIter(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.SDL_AudioSpec, align 4      ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call i64 @SDL_NextAudioQueueIter(ptr noundef %i.e, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not29 = icmp eq ptr %4, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8
  store ptr %i.g, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = icmp eq i64 %i.f, -1
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %2, align 8
  %.not32 = icmp eq ptr %5, null
  br i1 %.not32, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %5, align 1
  br label %bb.o

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.i = load i64, ptr %2, align 8                ; 2 uses
  store i64 %i.i, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load i32, ptr %i.j, align 4
  %i.l = getelementptr i8, ptr %0, i64 68
  %.val = load i32, ptr %i.l, align 4
  %i.m = getelementptr i8, ptr %0, i64 88
  %.val33 = load float, ptr %i.m, align 8
  %i.n = sitofp i32 %i.k to float
  %i.o = fmul float %.val33, %i.n
  %i.p = fptosi float %i.o to i32
  %i.q = call i64 @SDL_GetResampleRate(i32 noundef %i.p, i32 noundef %.val) #10 ; 4 uses
  %i.r = icmp eq i64 %i.q, 4294967296
  %i.s = icmp eq i64 %i.i, 0
  %or.cond.i = and i1 %i.s, %i.r
  %i.t = load i32, ptr %6, align 4
  %i.u = lshr i32 %i.t, 3
  %i.v = and i32 %i.u, 31
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = load i32, ptr %i.w, align 4
  %i.y = mul i32 %i.v, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = udiv i64 %i.f, %i.z                     ; 3 uses
  %.not3034 = icmp eq i64 %i.q, 0
  %.not30 = or i1 %.not3034, %or.cond.i
  br i1 %.not30, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.a, align 1, !range !10, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = call i32 @SDL_GetResamplerPaddingFrames(i64 noundef %i.q) #10
  %i.ae = sext i32 %i.ad to i64
  %i.af = sub nsw i64 %i.aa, %i.ae
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i64 [ %i.aa, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = call i64 @SDL_GetResamplerOutputFrames(i64 noundef %.0, i64 noundef %i.q, ptr noundef nonnull %i.c) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.1 = phi i64 [ %i.ag, %bb.k ], [ %i.aa, %bb.h ]
  %i.ah = load i8, ptr %i.a, align 1, !range !10, !noundef !11 ; 2 uses
  %i.ai = trunc nuw i8 %i.ah to i1
  %.pre = load i64, ptr %i.c, align 8
  %i.aj = select i1 %i.ai, i64 0, i64 %.pre
  store i64 %i.aj, ptr %2, align 8
  %.not31 = icmp eq ptr %5, null
  br i1 %.not31, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 %i.ah, ptr %5, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.g, %bb.n
  %.022 = phi i64 [ %.1, %bb.n ], [ 2147483647, %bb.g ], [ 2147483647, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i64 %.022
}

declare i64 @SDL_NextAudioQueueIter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @SDL_GetResamplerPaddingFrames(i64 noundef) local_unnamed_addr #3

declare i64 @SDL_GetResamplerOutputFrames(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @SDL_GetResampleRate(i32 noundef, i32 noundef) local_unnamed_addr #3
end_hunk_4
