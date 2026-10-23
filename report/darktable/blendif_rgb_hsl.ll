Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/blendif_rgb_hsl?download=true
inline.NumInlined: 129
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_blend_HSV_color:bb.a
bb.j:                                             ; preds = %bb.i
  %i.bb = fsub reassoc nsz arcp contract afn float %i.an, %i.ai
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.bb, %i.ar
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i34

bb.k:                                             ; preds = %bb.i
  %i.be = fsub reassoc nsz arcp contract afn float %i.ai, %i.ak
  %i.bf = fdiv reassoc nsz arcp contract afn float %i.be, %i.ar
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i34

_dt_RGB_2_Hue.exit.i34:                           ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i35 = phi nsz float [ %i.az, %bb.h ], [ %i.bd, %bb.j ], [ %i.bg, %bb.k ]
  %i.bh = fmul reassoc nsz arcp contract afn float %.0.i.i35, f0x3E2AAAAB ; 2 uses
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bh)
  %i.bj = fsub reassoc nsz arcp contract afn float %i.bh, %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, f0x40C90FDB
  %i.bl = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bk)
  br label %dt_RGB_2_HSV.exit36

dt_RGB_2_HSV.exit36:                              ; preds = %dt_RGB_2_HSV.exit, %_dt_RGB_2_Hue.exit.i34
  %.018.i32 = phi nsz float [ %i.aw, %_dt_RGB_2_Hue.exit.i34 ], [ 0.000000e+00, %dt_RGB_2_HSV.exit ]
  %.0.i33 = phi { float, float } [ %i.bl, %_dt_RGB_2_Hue.exit.i34 ], [ { float 0.000000e+00, float 1.000000e+00 }, %dt_RGB_2_HSV.exit ] ; 2 uses
  %sin = extractvalue { float, float } %.0.i, 0
  %cos = extractvalue { float, float } %.0.i, 1
  %sin29 = extractvalue { float, float } %.0.i33, 0
  %cos30 = extractvalue { float, float } %.0.i33, 1
  %i.bm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.b
  %i.bn = fmul reassoc nsz arcp contract afn float %.018.i, %i.bm ; 2 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %cos
  %i.bp = fmul reassoc nsz arcp contract afn float %.018.i32, %i.b ; 2 uses
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, %cos30
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, %i.bo ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.bn, %sin
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bp, %sin29
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bt, %i.bs ; 2 uses
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.bu, float %i.br)
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, f0x3E22F983 ; 3 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %i.bw, 0.000000e+00
  %i.by = fadd reassoc nsz arcp contract afn float %i.bw, 1.000000e+00
  %spec.select = select i1 %i.bx, float %i.by, float %i.bw
  %i.bz = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.br, float noundef %i.bu) #17
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.042 ; 4 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bz, %i.l ; 2 uses
  %i.cc = fsub reassoc nsz arcp contract afn float %i.l, %i.cb ; 7 uses
  %i.cd = fmul reassoc nsz arcp contract afn float %spec.select, 6.000000e+00 ; 2 uses
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.cd) ; 2 uses
  %i.cf = fsub reassoc nsz arcp contract afn float %i.cd, %i.ce
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, %i.cb ; 2 uses
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.cc ; 3 uses
  %i.ci = fsub reassoc nsz arcp contract afn float %i.l, %i.cg ; 3 uses
  %i.cj = fptoui float %i.ce to i64
  switch i64 %i.cj, label %bb.p [
    i64 0, label %dt_HSV_2_RGB.exit
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 4, label %bb.o
  ]

bb.l:                                             ; preds = %dt_RGB_2_HSV.exit36
  br label %dt_HSV_2_RGB.exit

bb.m:                                             ; preds = %dt_RGB_2_HSV.exit36
  br label %dt_HSV_2_RGB.exit

bb.n:                                             ; preds = %dt_RGB_2_HSV.exit36
  br label %dt_HSV_2_RGB.exit

bb.o:                                             ; preds = %dt_RGB_2_HSV.exit36
  br label %dt_HSV_2_RGB.exit

bb.p:                                             ; preds = %dt_RGB_2_HSV.exit36
  br label %dt_HSV_2_RGB.exit

dt_HSV_2_RGB.exit:                                ; preds = %dt_RGB_2_HSV.exit36, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink54.i.i = phi float [ %i.ci, %bb.l ], [ %i.cc, %bb.n ], [ %i.l, %bb.p ], [ %i.ch, %bb.o ], [ %i.cc, %bb.m ], [ %i.l, %dt_RGB_2_HSV.exit36 ]
  %.sink53.i.i = phi float [ %i.l, %bb.l ], [ %i.ci, %bb.n ], [ %i.cc, %bb.p ], [ %i.cc, %bb.o ], [ %i.l, %bb.m ], [ %i.ch, %dt_RGB_2_HSV.exit36 ]
  %.sink.i.i = phi float [ %i.cc, %bb.l ], [ %i.l, %bb.n ], [ %i.ci, %bb.p ], [ %i.l, %bb.o ], [ %i.ch, %bb.m ], [ %i.cc, %dt_RGB_2_HSV.exit36 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store float %.sink54.i.i, ptr %i.ca, align 4, !tbaa !34
  store float %.sink53.i.i, ptr %i.cl, align 4, !tbaa !34
  store float %.sink.i.i, ptr %i.ck, align 4, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store float %i.b, ptr %i.cm, align 4, !tbaa !34
  %i.cn = add nuw i64 %.02641, 1                  ; 2 uses
  %i.co = add i64 %.042, 4
  %exitcond.not = icmp eq i64 %i.cn, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_RGB_R(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.memcheck

.lr.ph.preheader40:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.02425.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ag, %vector.body ] ; 7 uses
  %i.a = sub i64 %4, %.026.ph
  %.neg = add i64 %.026.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader40
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026.ph
  %i.c = load float, ptr %i.b, align 4, !tbaa !34 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02425.ph
  %i.e = load float, ptr %i.d, align 4, !tbaa !34 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02425.ph
  %i.g = load float, ptr %i.f, align 4, !tbaa !34
  %i.h = fsub reassoc nsz arcp contract afn float %i.g, %i.e
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, %i.c
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, %i.e
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02425.ph ; 2 uses
  store float %i.j, ptr %i.k, align 4, !tbaa !34
  %i.l = or disjoint i64 %.02425.ph, 1            ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = load float, ptr %i.m, align 4, !tbaa !34
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  store float %i.n, ptr %i.o, align 4, !tbaa !34
  %i.p = or disjoint i64 %.02425.ph, 2            ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !34
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p
  store float %i.r, ptr %i.s, align 4, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store float %i.c, ptr %i.t, align 4, !tbaa !34
  %i.u = add nuw i64 %.026.ph, 1
  %i.v = add i64 %.02425.ph, 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader40
  %.026.unr = phi i64 [ %.026.ph, %.lr.ph.preheader40 ], [ %i.u, %.lr.ph.prol ]
  %.02425.unr = phi i64 [ %.02425.ph, %.lr.ph.preheader40 ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp eq i64 %4, %.neg
  br i1 %i.w, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.x = shl i64 %4, 4                            ; 3 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x       ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = getelementptr i8, ptr %1, i64 %i.x
  %i.ac = getelementptr i8, ptr %i.ab, i64 -12
  %bound0 = icmp ult ptr %2, %i.aa
  %bound1 = icmp ult ptr %0, %i.y
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %2, %i.ac
  %bound133 = icmp ult ptr %1, %i.y
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %4, 3                           ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 4, i64 %i.ad
  %n.vec = sub i64 %4, %i.af                      ; 3 uses
  %i.ag = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = shl i64 %index, 2                       ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.ai, align 4, !tbaa !34 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %wide.vec = load <16 x float>, ptr %i.aj, align 4, !tbaa !34, !alias.scope !468 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec35 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec36 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %wide.vec37 = load <16 x float>, ptr %i.ak, align 4, !tbaa !34, !alias.scope !469
  %strided.vec38 = shufflevector <16 x float> %wide.vec37, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.al = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec38, %strided.vec
  %i.am = fmul reassoc nsz arcp contract afn <4 x float> %i.al, %wide.load
  %i.an = fadd reassoc nsz arcp contract afn <4 x float> %i.am, %strided.vec
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.ap = shufflevector <4 x float> %i.an, <4 x float> %strided.vec35, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aq = shufflevector <4 x float> %strided.vec36, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ap, <8 x float> %i.aq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ao, align 4, !tbaa !34, !alias.scope !470, !noalias !471
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %.lr.ph.preheader40, label %vector.body, !llvm.loop !466

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.026 = phi i64 [ %i.ce, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.02425 = phi i64 [ %i.cf, %.lr.ph ], [ %.02425.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.at = load float, ptr %i.as, align 4, !tbaa !34 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02425
  %i.av = load float, ptr %i.au, align 4, !tbaa !34 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02425
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ax, %i.av
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.at
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, %i.av
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02425 ; 2 uses
  store float %i.ba, ptr %i.bb, align 4, !tbaa !34
  %i.bc = or disjoint i64 %.02425, 1              ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !34
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bc
  store float %i.be, ptr %i.bf, align 4, !tbaa !34
  %i.bg = or disjoint i64 %.02425, 2              ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !34
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bg
  store float %i.bi, ptr %i.bj, align 4, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store float %i.at, ptr %i.bk, align 4, !tbaa !34
  %i.bl = add i64 %.02425, 4                      ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !34 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bl
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !34 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bl
  %i.bs = load float, ptr %i.br, align 4, !tbaa !34
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bs, %i.bq
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bt, %i.bo
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.bq
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bl ; 2 uses
  store float %i.bv, ptr %i.bw, align 4, !tbaa !34
  %5 = add i64 %.02425, 5                         ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.by = load float, ptr %i.bx, align 4, !tbaa !34
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %5
  store float %i.by, ptr %i.bz, align 4, !tbaa !34
  %6 = add i64 %.02425, 6                         ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !34
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  store float %i.cb, ptr %i.cc, align 4, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store float %i.bo, ptr %i.cd, align 4, !tbaa !34
  %i.ce = add nuw i64 %.026, 2                    ; 2 uses
  %i.cf = add i64 %.02425, 8
  %exitcond.not.1 = icmp eq i64 %i.ce, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !467
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_RGB_G(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.memcheck

.lr.ph.preheader41:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.02425.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ah, %vector.body ] ; 6 uses
  %i.a = sub i64 %4, %.026.ph
  %.neg = add i64 %.026.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader41
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026.ph
  %i.c = load float, ptr %i.b, align 4, !tbaa !34 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02425.ph
  %i.e = load float, ptr %i.d, align 4, !tbaa !34
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02425.ph ; 2 uses
  store float %i.e, ptr %i.f, align 4, !tbaa !34
  %i.g = or disjoint i64 %.02425.ph, 1            ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !34 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.g
  %i.k = load float, ptr %i.j, align 4, !tbaa !34
  %i.l = fsub reassoc nsz arcp contract afn float %i.k, %i.i
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, %i.c
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, %i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  store float %i.n, ptr %i.o, align 4, !tbaa !34
  %i.p = or disjoint i64 %.02425.ph, 2            ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !34
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.p
  store float %i.r, ptr %i.s, align 4, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store float %i.c, ptr %i.t, align 4, !tbaa !34
  %i.u = add nuw i64 %.026.ph, 1
  %i.v = add i64 %.02425.ph, 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader41
  %.026.unr = phi i64 [ %.026.ph, %.lr.ph.preheader41 ], [ %i.u, %.lr.ph.prol ]
  %.02425.unr = phi i64 [ %.02425.ph, %.lr.ph.preheader41 ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp eq i64 %4, %.neg
  br i1 %i.w, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.x = shl i64 %4, 4                            ; 3 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x       ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.x
  %i.aa = getelementptr i8, ptr %i.z, i64 -4
  %i.ab = getelementptr i8, ptr %1, i64 4
  %i.ac = getelementptr i8, ptr %1, i64 %i.x
  %i.ad = getelementptr i8, ptr %i.ac, i64 -8
  %bound0 = icmp ult ptr %2, %i.aa
  %bound1 = icmp ult ptr %0, %i.y
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %2, %i.ad
  %bound134 = icmp ult ptr %i.ab, %i.y
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ae = and i64 %4, 3                           ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 4, i64 %i.ae
  %n.vec = sub i64 %4, %i.ag                      ; 3 uses
  %i.ah = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl i64 %index, 2                       ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.aj, align 4, !tbaa !34 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ai
  %wide.vec = load <16 x float>, ptr %i.ak, align 4, !tbaa !34, !alias.scope !478 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec36 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec37 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ai
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %wide.vec38 = load <16 x float>, ptr %i.an, align 4, !tbaa !34, !alias.scope !479
  %strided.vec39 = shufflevector <16 x float> %wide.vec38, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ao = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec39, %strided.vec36
  %i.ap = fmul reassoc nsz arcp contract afn <4 x float> %i.ao, %wide.load
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.ap, %strided.vec36
  %i.ar = shufflevector <4 x float> %strided.vec, <4 x float> %i.aq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.as = shufflevector <4 x float> %strided.vec37, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ar, <8 x float> %i.as, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.al, align 4, !tbaa !34, !alias.scope !480, !noalias !481
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %.lr.ph.preheader41, label %vector.body, !llvm.loop !476

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.026 = phi i64 [ %i.cg, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.02425 = phi i64 [ %i.ch, %.lr.ph ], [ %.02425.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.av = load float, ptr %i.au, align 4, !tbaa !34 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02425
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02425 ; 2 uses
  store float %i.ax, ptr %i.ay, align 4, !tbaa !34
  %i.az = or disjoint i64 %.02425, 1              ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !34 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.az
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !34
  %i.be = fsub reassoc nsz arcp contract afn float %i.bd, %i.bb
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.av
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az
  store float %i.bg, ptr %i.bh, align 4, !tbaa !34
  %i.bi = or disjoint i64 %.02425, 2              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bi
  store float %i.bk, ptr %i.bl, align 4, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store float %i.av, ptr %i.bm, align 4, !tbaa !34
  %i.bn = add i64 %.02425, 4                      ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !34 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bn
  %i.bs = load float, ptr %i.br, align 4, !tbaa !34
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bn ; 2 uses
  store float %i.bs, ptr %i.bt, align 4, !tbaa !34
  %5 = add i64 %.02425, 5                         ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !34 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %5
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !34
  %i.by = fsub reassoc nsz arcp contract afn float %i.bx, %i.bv
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %i.bq
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %5
  store float %i.ca, ptr %i.cb, align 4, !tbaa !34
  %6 = add i64 %.02425, 6                         ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !34
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  store float %i.cd, ptr %i.ce, align 4, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store float %i.bq, ptr %i.cf, align 4, !tbaa !34
  %i.cg = add nuw i64 %.026, 2                    ; 2 uses
  %i.ch = add i64 %.02425, 8
  %exitcond.not.1 = icmp eq i64 %i.cg, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !477
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_RGB_B(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.memcheck

.lr.ph.preheader41:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.026.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ] ; 5 uses
  %.02425.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.ag, %vector.body ] ; 6 uses
  %i.a = sub i64 %4, %.026.ph
  %.neg = add i64 %.026.ph, 1
  %xtraiter = and i64 %i.a, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader41
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026.ph
  %i.c = load float, ptr %i.b, align 4, !tbaa !34 ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02425.ph
  %i.e = load float, ptr %i.d, align 4, !tbaa !34
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02425.ph ; 2 uses
  store float %i.e, ptr %i.f, align 4, !tbaa !34
  %i.g = or disjoint i64 %.02425.ph, 1            ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !34
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  store float %i.i, ptr %i.j, align 4, !tbaa !34
  %i.k = or disjoint i64 %.02425.ph, 2            ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !34 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  %i.o = load float, ptr %i.n, align 4, !tbaa !34
  %i.p = fsub reassoc nsz arcp contract afn float %i.o, %i.m
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, %i.c
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, %i.m
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  store float %i.r, ptr %i.s, align 4, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store float %i.c, ptr %i.t, align 4, !tbaa !34
  %i.u = add nuw i64 %.026.ph, 1
  %i.v = add i64 %.02425.ph, 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader41
  %.026.unr = phi i64 [ %.026.ph, %.lr.ph.preheader41 ], [ %i.u, %.lr.ph.prol ]
  %.02425.unr = phi i64 [ %.02425.ph, %.lr.ph.preheader41 ], [ %i.v, %.lr.ph.prol ]
  %i.w = icmp eq i64 %4, %.neg
  br i1 %i.w, label %._crit_edge, label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.x = shl i64 %4, 4                            ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 %i.x       ; 2 uses
  %i.z = add i64 %i.x, -4                         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = getelementptr i8, ptr %1, i64 %i.z
  %bound0 = icmp ult ptr %2, %i.aa
  %bound1 = icmp ult ptr %0, %i.y
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %2, %i.ac
  %bound134 = icmp ult ptr %i.ab, %i.y
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %found.conflict, %found.conflict35
  br i1 %conflict.rdx, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = and i64 %4, 3                           ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 4, i64 %i.ad
  %n.vec = sub i64 %4, %i.af                      ; 3 uses
  %i.ag = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = shl i64 %index, 2                       ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.ai, align 4, !tbaa !34 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %wide.vec = load <16 x float>, ptr %i.aj, align 4, !tbaa !34, !alias.scope !488 ; 2 uses
  %strided.vec37 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ah
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %wide.vec38 = load <16 x float>, ptr %i.am, align 4, !tbaa !34, !alias.scope !489
  %strided.vec39 = shufflevector <16 x float> %wide.vec38, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.an = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec39, %strided.vec37
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.an, %wide.load
  %i.ap = fadd reassoc nsz arcp contract afn <4 x float> %i.ao, %strided.vec37
  %i.aq = shufflevector <16 x float> %wide.vec, <16 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.aq, <8 x float> %i.ar, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ak, align 4, !tbaa !34, !alias.scope !490, !noalias !491
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %.lr.ph.preheader41, label %vector.body, !llvm.loop !486

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.026 = phi i64 [ %i.cf, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.02425 = phi i64 [ %i.cg, %.lr.ph ], [ %.02425.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.au = load float, ptr %i.at, align 4, !tbaa !34 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02425
  %i.aw = load float, ptr %i.av, align 4, !tbaa !34
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02425 ; 2 uses
  store float %i.aw, ptr %i.ax, align 4, !tbaa !34
  %i.ay = or disjoint i64 %.02425, 1              ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !34
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ay
  store float %i.ba, ptr %i.bb, align 4, !tbaa !34
  %i.bc = or disjoint i64 %.02425, 2              ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !34 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bc
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !34
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bg, %i.be
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.au
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bi, %i.be
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bc
  store float %i.bj, ptr %i.bk, align 4, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store float %i.au, ptr %i.bl, align 4, !tbaa !34
  %i.bm = add i64 %.02425, 4                      ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.026
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !34 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm
  %i.br = load float, ptr %i.bq, align 4, !tbaa !34
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bm ; 2 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !34
  %5 = add i64 %.02425, 5                         ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %5
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !34
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %5
  store float %i.bu, ptr %i.bv, align 4, !tbaa !34
  %6 = add i64 %.02425, 6                         ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %6
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !34 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  %i.bz = load float, ptr %i.by, align 4, !tbaa !34
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bz, %i.bx
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, %i.bp
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  store float %i.cc, ptr %i.cd, align 4, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store float %i.bp, ptr %i.ce, align 4, !tbaa !34
  %i.cf = add nuw i64 %.026, 2                    ; 2 uses
  %i.cg = add i64 %.02425, 8
  %exitcond.not.1 = icmp eq i64 %i.cf, %4
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !487
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_blend_normal_unbounded(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) unnamed_addr #10 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.preheader51, label %vector.memcheck

.lr.ph.preheader51:                               ; preds = %vector.body, %vector.memcheck, %.lr.ph.preheader
  %.02125.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %i.k, %vector.body ]
  %.02224.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %4, 4                            ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 %i.a       ; 3 uses
  %i.c = shl i64 %4, 2
  %i.d = getelementptr i8, ptr %3, i64 %i.c
  %i.e = add i64 %i.a, -4                         ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  %i.g = getelementptr i8, ptr %1, i64 %i.e
  %bound0 = icmp ult ptr %2, %i.d
  %bound1 = icmp ult ptr %3, %i.b
  %found.conflict = and i1 %bound0, %bound1
  %bound037 = icmp ult ptr %2, %i.f
  %bound138 = icmp ult ptr %0, %i.b
  %found.conflict39 = and i1 %bound037, %bound138
  %conflict.rdx = or i1 %found.conflict, %found.conflict39
  %bound040 = icmp ult ptr %2, %i.g
  %bound141 = icmp ult ptr %1, %i.b
  %found.conflict42 = and i1 %bound040, %bound141
  %conflict.rdx43 = or i1 %conflict.rdx, %found.conflict42
  br i1 %conflict.rdx43, label %.lr.ph.preheader51, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.h = and i64 %4, 3                            ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %4, %i.j                       ; 3 uses
  %i.k = shl i64 %n.vec, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = shl i64 %index, 2                        ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load = load <4 x float>, ptr %i.m, align 4, !tbaa !34, !alias.scope !499 ; 4 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %wide.vec = load <16 x float>, ptr %i.n, align 4, !tbaa !34, !alias.scope !500 ; 3 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec44 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec45 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  %wide.vec46 = load <16 x float>, ptr %i.o, align 4, !tbaa !34, !alias.scope !501 ; 3 uses
  %strided.vec47 = shufflevector <16 x float> %wide.vec46, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec48 = shufflevector <16 x float> %wide.vec46, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec49 = shufflevector <16 x float> %wide.vec46, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %i.p = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec47, %strided.vec
  %i.q = fmul reassoc nsz arcp contract afn <4 x float> %i.p, %wide.load
  %i.r = fadd reassoc nsz arcp contract afn <4 x float> %i.q, %strided.vec
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.l
  %i.t = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec48, %strided.vec44
  %i.u = fmul reassoc nsz arcp contract afn <4 x float> %i.t, %wide.load
  %i.v = fadd reassoc nsz arcp contract afn <4 x float> %i.u, %strided.vec44
  %i.w = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec49, %strided.vec45
  %i.x = fmul reassoc nsz arcp contract afn <4 x float> %i.w, %wide.load
  %i.y = fadd reassoc nsz arcp contract afn <4 x float> %i.x, %strided.vec45
  %i.z = shufflevector <4 x float> %i.r, <4 x float> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aa = shufflevector <4 x float> %i.y, <4 x float> %wide.load, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.z, <8 x float> %i.aa, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.s, align 4, !tbaa !34, !alias.scope !502, !noalias !503
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %.lr.ph.preheader51, label %vector.body, !llvm.loop !497

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader51, %.lr.ph
  %.02125 = phi i64 [ %i.bg, %.lr.ph ], [ %.02125.ph, %.lr.ph.preheader51 ] ; 6 uses
  %.02224 = phi i64 [ %i.bf, %.lr.ph ], [ %.02224.ph, %.lr.ph.preheader51 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.02224
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !34 ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.02125
  %i.af = load float, ptr %i.ae, align 4, !tbaa !34 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02125
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !34
  %i.ai = fsub reassoc nsz arcp contract afn float %i.ah, %i.af
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, %i.ad
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, %i.af
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02125 ; 2 uses
  store float %i.ak, ptr %i.al, align 4, !tbaa !34
  %i.am = or disjoint i64 %.02125, 1              ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am
  %i.ao = load float, ptr %i.an, align 4, !tbaa !34 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !34
  %i.ar = fsub reassoc nsz arcp contract afn float %i.aq, %i.ao
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.ad
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.ao
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.am
  store float %i.at, ptr %i.au, align 4, !tbaa !34
  %i.av = or disjoint i64 %.02125, 2              ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !34 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.ax
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ba, %i.ad
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av
  store float %i.bc, ptr %i.bd, align 4, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store float %i.ad, ptr %i.be, align 4, !tbaa !34
  %i.bf = add nuw i64 %.02224, 1                  ; 2 uses
  %i.bg = add i64 %.02125, 4
  %exitcond.not = icmp eq i64 %i.bf, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !498
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.minnum.v16f32(<16 x float>, <16 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_0
