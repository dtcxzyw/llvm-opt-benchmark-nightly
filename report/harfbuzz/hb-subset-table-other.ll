Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZNK2OT9gvar_GVARINS_7NumTypeILb1EtLj2EEELj1735811442EE13accelerator_t22apply_deltas_to_pointsEj10hb_array_tIKiES5_I15contour_point_tER17hb_glyf_scratch_tPNS_17hb_scalar_cache_tEb:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT9glyf_impl20CompositeGlyphRecord16transform_pointsE10hb_array_tI15contour_point_tERA4_KfRKS3_(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(12) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.fr102 = freeze i64 %2                         ; 8 uses
  %i.a = load i16, ptr %0, align 1, !tbaa !155
  %i.b = and i16 %i.a, 24
  %i.c = icmp eq i16 %i.b, 8
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %4, align 4, !tbaa !561
  %i.e = fcmp une float %i.d, 0.000000e+00        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp une float %i.g, 0.000000e+00        ; 2 uses
  %or.cond.i = select i1 %i.e, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %.fr102, 4294967295              ; 2 uses
  %.idx52.i = mul nuw nsw i64 %i.i, 12            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.idx52.i
  %.not3148.i = icmp eq i64 %i.i, 0
  br i1 %.not3148.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %bb.c
  %i.k = add nsw i64 %.idx52.i, -12               ; 2 uses
  %i.l = udiv i64 %i.k, 12
  %i.m = add nuw nsw i64 %i.l, 1
  %xtraiter124 = and i64 %i.m, 3                  ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader, %.lr.ph50.i.prol
  %.02849.i.prol = phi ptr [ %i.q, %.lr.ph50.i.prol ], [ %1, %.lr.ph50.i.preheader ] ; 3 uses
  %prol.iter126 = phi i64 [ %prol.iter126.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader ]
  %i.n = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.o = load <2 x float>, ptr %.02849.i.prol, align 4, !tbaa !546
  %i.p = fadd <2 x float> %i.n, %i.o
  store <2 x float> %i.p, ptr %.02849.i.prol, align 4, !tbaa !546
  %i.q = getelementptr inbounds nuw i8, ptr %.02849.i.prol, i64 12 ; 2 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !696

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader
  %.02849.i.unr = phi ptr [ %1, %.lr.ph50.i.preheader ], [ %i.q, %.lr.ph50.i.prol ]
  %i.r = icmp ult i64 %i.k, 36
  br i1 %i.r, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph50.i

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %.02849.i = phi ptr [ %i.ah, %.lr.ph50.i ], [ %.02849.i.unr, %.lr.ph50.i.prol.loopexit ] ; 6 uses
  %i.s = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.t = load <2 x float>, ptr %.02849.i, align 4, !tbaa !546
  %i.u = fadd <2 x float> %i.s, %i.t
  store <2 x float> %i.u, ptr %.02849.i, align 4, !tbaa !546
  %i.v = getelementptr inbounds nuw i8, ptr %.02849.i, i64 12 ; 2 uses
  %i.w = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.x = load <2 x float>, ptr %i.v, align 4, !tbaa !546
  %i.y = fadd <2 x float> %i.w, %i.x
  store <2 x float> %i.y, ptr %i.v, align 4, !tbaa !546
  %i.z = getelementptr inbounds nuw i8, ptr %.02849.i, i64 24 ; 2 uses
  %i.aa = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ab = load <2 x float>, ptr %i.z, align 4, !tbaa !546
  %i.ac = fadd <2 x float> %i.aa, %i.ab
  store <2 x float> %i.ac, ptr %i.z, align 4, !tbaa !546
  %i.ad = getelementptr inbounds nuw i8, ptr %.02849.i, i64 36 ; 2 uses
  %i.ae = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !546
  %i.ag = fadd <2 x float> %i.ae, %i.af
  store <2 x float> %i.ag, ptr %i.ad, align 4, !tbaa !546
  %i.ah = getelementptr inbounds nuw i8, ptr %.02849.i, i64 48 ; 2 uses
  %.not31.i.3 = icmp eq ptr %i.ah, %i.j
  br i1 %.not31.i.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph50.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx51.i = mul nuw nsw i64 %i.ai, 12           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx51.i
  %.not3045.i = icmp eq i64 %i.ai, 0
  br i1 %.not3045.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph47.i.preheader

.lr.ph47.i.preheader:                             ; preds = %bb.e
  %i.ak = add nsw i64 %.idx51.i, -12              ; 2 uses
  %i.al = udiv i64 %i.ak, 12
  %i.am = add nuw nsw i64 %i.al, 1
  %xtraiter121 = and i64 %i.am, 3                 ; 2 uses
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph47.i.prol.loopexit, label %.lr.ph47.i.prol

.lr.ph47.i.prol:                                  ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i.prol
  %.02946.i.prol = phi ptr [ %i.aq, %.lr.ph47.i.prol ], [ %1, %.lr.ph47.i.preheader ] ; 3 uses
  %prol.iter123 = phi i64 [ %prol.iter123.next, %.lr.ph47.i.prol ], [ 0, %.lr.ph47.i.preheader ]
  %i.an = load float, ptr %4, align 4, !tbaa !561
  %i.ao = load float, ptr %.02946.i.prol, align 4, !tbaa !561
  %i.ap = fadd float %i.an, %i.ao
  store float %i.ap, ptr %.02946.i.prol, align 4, !tbaa !561
  %i.aq = getelementptr inbounds nuw i8, ptr %.02946.i.prol, i64 12 ; 2 uses
  %prol.iter123.next = add i64 %prol.iter123, 1   ; 2 uses
  %prol.iter123.cmp.not = icmp eq i64 %prol.iter123.next, %xtraiter121
  br i1 %prol.iter123.cmp.not, label %.lr.ph47.i.prol.loopexit, label %.lr.ph47.i.prol, !llvm.loop !697

.lr.ph47.i.prol.loopexit:                         ; preds = %.lr.ph47.i.prol, %.lr.ph47.i.preheader
  %.02946.i.unr = phi ptr [ %1, %.lr.ph47.i.preheader ], [ %i.aq, %.lr.ph47.i.prol ]
  %i.ar = icmp ult i64 %i.ak, 36
  br i1 %i.ar, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.prol.loopexit, %.lr.ph47.i
  %.02946.i = phi ptr [ %i.bh, %.lr.ph47.i ], [ %.02946.i.unr, %.lr.ph47.i.prol.loopexit ] ; 6 uses
  %i.as = load float, ptr %4, align 4, !tbaa !561
  %i.at = load float, ptr %.02946.i, align 4, !tbaa !561
  %i.au = fadd float %i.as, %i.at
  store float %i.au, ptr %.02946.i, align 4, !tbaa !561
  %i.av = getelementptr inbounds nuw i8, ptr %.02946.i, i64 12 ; 2 uses
  %i.aw = load float, ptr %4, align 4, !tbaa !561
  %i.ax = load float, ptr %i.av, align 4, !tbaa !561
  %i.ay = fadd float %i.aw, %i.ax
  store float %i.ay, ptr %i.av, align 4, !tbaa !561
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i, i64 24 ; 2 uses
  %i.ba = load float, ptr %4, align 4, !tbaa !561
  %i.bb = load float, ptr %i.az, align 4, !tbaa !561
  %i.bc = fadd float %i.ba, %i.bb
  store float %i.bc, ptr %i.az, align 4, !tbaa !561
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i, i64 36 ; 2 uses
  %i.be = load float, ptr %4, align 4, !tbaa !561
  %i.bf = load float, ptr %i.bd, align 4, !tbaa !561
  %i.bg = fadd float %i.be, %i.bf
  store float %i.bg, ptr %i.bd, align 4, !tbaa !561
  %i.bh = getelementptr inbounds nuw i8, ptr %.02946.i, i64 48 ; 2 uses
  %.not30.i.3 = icmp eq ptr %i.bh, %i.aj
  br i1 %.not30.i.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph47.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.g, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit

bb.g:                                             ; preds = %bb.f
  %i.bi = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bi, 12             ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %.not43.i = icmp eq i64 %i.bi, 0
  br i1 %.not43.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.bk = add nsw i64 %.idx.i, -12                ; 2 uses
  %i.bl = udiv i64 %i.bk, 12
  %i.bm = add nuw nsw i64 %i.bl, 1
  %xtraiter118 = and i64 %i.bm, 3                 ; 2 uses
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.044.i.prol = phi ptr [ %i.br, %.lr.ph.i.prol ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter120 = phi i64 [ %prol.iter120.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bn = load float, ptr %i.f, align 4, !tbaa !563
  %i.bo = getelementptr inbounds nuw i8, ptr %.044.i.prol, i64 4 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !563
  %i.bq = fadd float %i.bn, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !563
  %i.br = getelementptr inbounds nuw i8, ptr %.044.i.prol, i64 12 ; 2 uses
  %prol.iter120.next = add i64 %prol.iter120, 1   ; 2 uses
  %prol.iter120.cmp.not = icmp eq i64 %prol.iter120.next, %xtraiter118
  br i1 %prol.iter120.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !698

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.044.i.unr = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.br, %.lr.ph.i.prol ]
  %i.bs = icmp ult i64 %i.bk, 36
  br i1 %i.bs, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.044.i = phi ptr [ %i.cj, %.lr.ph.i ], [ %.044.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.bt = load float, ptr %i.f, align 4, !tbaa !563
  %i.bu = getelementptr inbounds nuw i8, ptr %.044.i, i64 4 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !563
  %i.bw = fadd float %i.bt, %i.bv
  store float %i.bw, ptr %i.bu, align 4, !tbaa !563
  %i.bx = load float, ptr %i.f, align 4, !tbaa !563
  %i.by = getelementptr inbounds nuw i8, ptr %.044.i, i64 16 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !563
  %i.ca = fadd float %i.bx, %i.bz
  store float %i.ca, ptr %i.by, align 4, !tbaa !563
  %i.cb = load float, ptr %i.f, align 4, !tbaa !563
  %i.cc = getelementptr inbounds nuw i8, ptr %.044.i, i64 28 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !563
  %i.ce = fadd float %i.cb, %i.cd
  store float %i.ce, ptr %i.cc, align 4, !tbaa !563
  %i.cf = load float, ptr %i.f, align 4, !tbaa !563
  %i.cg = getelementptr inbounds nuw i8, ptr %.044.i, i64 40 ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !563
  %i.ci = fadd float %i.cf, %i.ch
  store float %i.ci, ptr %i.cg, align 4, !tbaa !563
  %i.cj = getelementptr inbounds nuw i8, ptr %.044.i, i64 48 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.cj, %i.bj
  br i1 %.not.i.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit, label %.lr.ph.i

_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph47.i.prol.loopexit, %.lr.ph47.i, %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %bb.c, %bb.e, %bb.f, %bb.g
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cl = load <4 x float>, ptr %3, align 4
  %.fr103 = freeze <4 x float> %i.cl
  %i.cm = fcmp une <4 x float> %.fr103, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.cn = bitcast <4 x i1> %i.cm to i4
  %.not104 = icmp eq i4 %i.cn, 0
  br i1 %.not104, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9translateERK15contour_point_t10hb_array_tIS2_E.exit
  %i.co = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx.i16 = mul nuw nsw i64 %i.co, 12           ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i16
  %.not21.i = icmp eq i64 %i.co, 0
  br i1 %.not21.i, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %bb.h
  %i.cq = add nsw i64 %.idx.i16, -12              ; 2 uses
  %i.cr = udiv i64 %i.cq, 12
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check82 = icmp ult i64 %i.cq, 96
  br i1 %min.iters.check82, label %.lr.ph.i17.preheader105, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i17.preheader
  %i.ct = add nsw i64 %.idx.i16, -12              ; 2 uses
  %i.cu = urem i64 %i.ct, 12
  %i.cv = sub nuw nsw i64 %i.ct, %i.cu
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %scevgep76 = getelementptr i8, ptr %i.cw, i64 8
  %scevgep77 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %bound078 = icmp ult ptr %1, %scevgep77
  %bound179 = icmp ult ptr %3, %scevgep76
  %found.conflict80 = and i1 %bound078, %bound179
  br i1 %found.conflict80, label %.lr.ph.i17.preheader105, label %vector.ph83

vector.ph83:                                      ; preds = %vector.memcheck75
  %i.cx = and i64 %i.cs, 3                        ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 4, i64 %i.cx
  %n.vec84 = sub nsw i64 %i.cs, %i.cz             ; 2 uses
  %i.da = mul i64 %n.vec84, 12
  %i.db = getelementptr i8, ptr %1, i64 %i.da
  %7 = load float, ptr %3, align 4, !tbaa !546, !alias.scope !699
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %7, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = load float, ptr %i.ck, align 4, !tbaa !546, !alias.scope !699
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = load float, ptr %5, align 4, !tbaa !546, !alias.scope !699
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %9, i64 0
  %broadcast.splat98.a = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  %10 = load float, ptr %6, align 4, !tbaa !546, !alias.scope !699
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %10, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph83
  %index86 = phi i64 [ 0, %vector.ph83 ], [ %index.next99, %vector.body85 ] ; 2 uses
  %i.dc = mul i64 %index86, 12                    ; 4 uses
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.dc ; 3 uses
  %i.dd = getelementptr i8, ptr %1, i64 %i.dc     ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.dd, i64 12 ; 2 uses
  %i.de = getelementptr i8, ptr %1, i64 %i.dc     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.de, i64 24 ; 2 uses
  %i.df = getelementptr i8, ptr %1, i64 %i.dc     ; 2 uses
  %next.gep90 = getelementptr i8, ptr %i.df, i64 36 ; 2 uses
  %i.dg = load float, ptr %next.gep87, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.dh = load float, ptr %next.gep88, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.di = load float, ptr %next.gep89, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.dj = load float, ptr %next.gep90, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.dk = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 1
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %i.dj, i64 3 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %next.gep87, i64 4 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dd, i64 16
  %i.dq = getelementptr i8, ptr %i.de, i64 28
  %i.dr = getelementptr i8, ptr %i.df, i64 40
  %i.ds = load float, ptr %i.do, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.dt = load float, ptr %i.dp, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.du = load float, ptr %i.dq, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.dv = load float, ptr %i.dr, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.dw = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.dt, i64 1
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 2
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 3 ; 2 uses
  %i.ea = fmul <4 x float> %i.dz, %broadcast.splat92
  %i.eb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %broadcast.splat94, <4 x float> %i.ea) ; 4 uses
  %i.ec = fmul <4 x float> %i.dz, %broadcast.splat96
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %broadcast.splat98.a, <4 x float> %i.ec) ; 4 uses
  %i.ee = extractelement <4 x float> %i.ed, i64 0
  store float %i.ee, ptr %i.do, align 4, !tbaa !563, !alias.scope !702, !noalias !699
  %i.ef = extractelement <4 x float> %i.eb, i64 0
  store float %i.ef, ptr %next.gep87, align 4, !tbaa !561, !alias.scope !702, !noalias !699
  %i.eg = shufflevector <4 x float> %i.eb, <4 x float> %i.ed, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.eg, ptr %next.gep88, align 4, !tbaa !546, !alias.scope !702, !noalias !699
  %i.eh = shufflevector <4 x float> %i.eb, <4 x float> %i.ed, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.eh, ptr %next.gep89, align 4, !tbaa !546, !alias.scope !702, !noalias !699
  %i.ei = shufflevector <4 x float> %i.eb, <4 x float> %i.ed, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.ei, ptr %next.gep90, align 4, !tbaa !546, !alias.scope !702, !noalias !699
  %index.next99 = add nuw i64 %index86, 4         ; 2 uses
  %i.ej = icmp eq i64 %index.next99, %n.vec84
  br i1 %i.ej, label %.lr.ph.i17.preheader105, label %vector.body85, !llvm.loop !704

.lr.ph.i17.preheader105:                          ; preds = %vector.body85, %vector.memcheck75, %.lr.ph.i17.preheader
  %.022.i.ph = phi ptr [ %1, %vector.memcheck75 ], [ %1, %.lr.ph.i17.preheader ], [ %i.db, %vector.body85 ]
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader105, %.lr.ph.i17
  %.022.i = phi ptr [ %i.ev, %.lr.ph.i17 ], [ %.022.i.ph, %.lr.ph.i17.preheader105 ] ; 4 uses
  %i.ek = load float, ptr %.022.i, align 4, !tbaa !561
  %i.el = getelementptr inbounds nuw i8, ptr %.022.i, i64 4
  %i.em = load float, ptr %i.el, align 4, !tbaa !563
  %i.en = load <2 x float>, ptr %3, align 4, !tbaa !546
  %i.eo = load <2 x float>, ptr %i.ck, align 4, !tbaa !546
  %i.ep = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eq, %i.eo
  %i.es = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.en, <2 x float> %i.er)
  store <2 x float> %i.eu, ptr %.022.i, align 4, !tbaa !546
  %i.ev = getelementptr inbounds nuw i8, ptr %.022.i, i64 12 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ev, %i.cp
  br i1 %.not.i18, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i17, !llvm.loop !705

bb.i:                                             ; preds = %bb.a
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ex = load <4 x float>, ptr %3, align 4
  %.fr = freeze <4 x float> %i.ex
  %i.ey = fcmp une <4 x float> %.fr, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ez = bitcast <4 x i1> %i.ey to i4
  %.not = icmp eq i4 %i.ez, 0
  br i1 %.not, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fa = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx.i22 = mul nuw nsw i64 %i.fa, 12           ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i22
  %.not21.i23 = icmp eq i64 %i.fa, 0
  br i1 %.not21.i23, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24.preheader

.lr.ph.i24.preheader:                             ; preds = %bb.j
  %i.fc = add nsw i64 %.idx.i22, -12              ; 2 uses
  %i.fd = udiv i64 %i.fc, 12
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fc, 96
  br i1 %min.iters.check, label %.lr.ph.i24.preheader111, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i24.preheader
  %i.ff = add nsw i64 %.idx.i22, -12              ; 2 uses
  %i.fg = urem i64 %i.ff, 12
  %i.fh = sub nuw nsw i64 %i.ff, %i.fg
  %i.fi = getelementptr i8, ptr %1, i64 %i.fh
  %scevgep = getelementptr i8, ptr %i.fi, i64 8
  %scevgep65 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %bound0 = icmp ult ptr %1, %scevgep65
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i24.preheader111, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fj = and i64 %i.fe, 3                        ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  %i.fl = select i1 %i.fk, i64 4, i64 %i.fj
  %n.vec = sub nsw i64 %i.fe, %i.fl               ; 2 uses
  %i.fm = mul i64 %n.vec, 12
  %i.fn = getelementptr i8, ptr %1, i64 %i.fm
  %13 = load float, ptr %3, align 4, !tbaa !546, !alias.scope !706
  %broadcast.splatinsert69 = insertelement <4 x float> poison, float %13, i64 0
  %broadcast.splat70 = shufflevector <4 x float> %broadcast.splatinsert69, <4 x float> poison, <4 x i32> zeroinitializer
  %14 = load float, ptr %i.ew, align 4, !tbaa !546, !alias.scope !706
  %broadcast.splatinsert = insertelement <4 x float> poison, float %14, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %15 = load float, ptr %11, align 4, !tbaa !546, !alias.scope !706
  %broadcast.splatinsert73 = insertelement <4 x float> poison, float %15, i64 0
  %broadcast.splat74.a = shufflevector <4 x float> %broadcast.splatinsert73, <4 x float> poison, <4 x i32> zeroinitializer
  %16 = load float, ptr %12, align 4, !tbaa !546, !alias.scope !706
  %broadcast.splatinsert71 = insertelement <4 x float> poison, float %16, i64 0
  %broadcast.splat72 = shufflevector <4 x float> %broadcast.splatinsert71, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fo = mul i64 %index, 12                      ; 4 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.fo ; 3 uses
  %i.fp = getelementptr i8, ptr %1, i64 %i.fo     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.fp, i64 12 ; 2 uses
  %i.fq = getelementptr i8, ptr %1, i64 %i.fo     ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.fq, i64 24 ; 2 uses
  %i.fr = getelementptr i8, ptr %1, i64 %i.fo     ; 2 uses
  %next.gep68 = getelementptr i8, ptr %i.fr, i64 36 ; 2 uses
  %i.fs = load float, ptr %next.gep, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.ft = load float, ptr %next.gep66, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.fu = load float, ptr %next.gep67, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.fv = load float, ptr %next.gep68, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.fw = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 1
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 2
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 3 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %next.gep, i64 4 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fp, i64 16
  %i.gc = getelementptr i8, ptr %i.fq, i64 28
  %i.gd = getelementptr i8, ptr %i.fr, i64 40
  %i.ge = load float, ptr %i.ga, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gf = load float, ptr %i.gb, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gi = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.gj = insertelement <4 x float> %i.gi, float %i.gf, i64 1
  %i.gk = insertelement <4 x float> %i.gj, float %i.gg, i64 2
  %i.gl = insertelement <4 x float> %i.gk, float %i.gh, i64 3 ; 2 uses
  %i.gm = fmul <4 x float> %i.gl, %broadcast.splat
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %broadcast.splat70, <4 x float> %i.gm) ; 4 uses
  %i.go = fmul <4 x float> %i.gl, %broadcast.splat72
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> %broadcast.splat74.a, <4 x float> %i.go) ; 4 uses
  %i.gq = extractelement <4 x float> %i.gp, i64 0
  store float %i.gq, ptr %i.ga, align 4, !tbaa !563, !alias.scope !709, !noalias !706
  %i.gr = extractelement <4 x float> %i.gn, i64 0
  store float %i.gr, ptr %next.gep, align 4, !tbaa !561, !alias.scope !709, !noalias !706
  %i.gs = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <2 x i32> <i32 1, i32 5>
  store <2 x float> %i.gs, ptr %next.gep66, align 4, !tbaa !546, !alias.scope !709, !noalias !706
  %i.gt = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.gt, ptr %next.gep67, align 4, !tbaa !546, !alias.scope !709, !noalias !706
  %i.gu = shufflevector <4 x float> %i.gn, <4 x float> %i.gp, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.gu, ptr %next.gep68, align 4, !tbaa !546, !alias.scope !709, !noalias !706
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gv = icmp eq i64 %index.next, %n.vec
  br i1 %i.gv, label %.lr.ph.i24.preheader111, label %vector.body, !llvm.loop !711

.lr.ph.i24.preheader111:                          ; preds = %vector.body, %vector.memcheck, %.lr.ph.i24.preheader
  %.022.i25.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i24.preheader ], [ %i.fn, %vector.body ]
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader111, %.lr.ph.i24
  %.022.i25 = phi ptr [ %i.hh, %.lr.ph.i24 ], [ %.022.i25.ph, %.lr.ph.i24.preheader111 ] ; 4 uses
  %i.gw = load float, ptr %.022.i25, align 4, !tbaa !561
  %i.gx = getelementptr inbounds nuw i8, ptr %.022.i25, i64 4
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !563
  %i.gz = load <2 x float>, ptr %3, align 4, !tbaa !546
  %i.ha = load <2 x float>, ptr %i.ew, align 4, !tbaa !546
  %i.hb = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x float> %i.hc, %i.ha
  %i.he = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.gz, <2 x float> %i.hd)
  store <2 x float> %i.hg, ptr %.022.i25, align 4, !tbaa !546
  %i.hh = getelementptr inbounds nuw i8, ptr %.022.i25, i64 12 ; 2 uses
  %.not.i26 = icmp eq ptr %i.hh, %i.fb
  br i1 %.not.i26, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27, label %.lr.ph.i24, !llvm.loop !712

_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27: ; preds = %.lr.ph.i24, %bb.i, %bb.j
  %i.hi = load float, ptr %4, align 4, !tbaa !561
  %i.hj = fcmp une float %i.hi, 0.000000e+00      ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.hl = load float, ptr %i.hk, align 4
  %i.hm = fcmp une float %i.hl, 0.000000e+00      ; 2 uses
  %or.cond.i28 = select i1 %i.hj, i1 %i.hm, i1 false
  br i1 %or.cond.i28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27
  %i.hn = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx52.i39 = mul nuw nsw i64 %i.hn, 12         ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 %.idx52.i39
  %.not3148.i40 = icmp eq i64 %i.hn, 0
  br i1 %.not3148.i40, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41.preheader

.lr.ph50.i41.preheader:                           ; preds = %bb.k
  %i.hp = add nsw i64 %.idx52.i39, -12            ; 2 uses
  %i.hq = udiv i64 %i.hp, 12
  %i.hr = add nuw nsw i64 %i.hq, 1
  %xtraiter115 = and i64 %i.hr, 3                 ; 2 uses
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %.lr.ph50.i41.prol.loopexit, label %.lr.ph50.i41.prol

.lr.ph50.i41.prol:                                ; preds = %.lr.ph50.i41.preheader, %.lr.ph50.i41.prol
  %.02849.i42.prol = phi ptr [ %i.hv, %.lr.ph50.i41.prol ], [ %1, %.lr.ph50.i41.preheader ] ; 3 uses
  %prol.iter117 = phi i64 [ %prol.iter117.next, %.lr.ph50.i41.prol ], [ 0, %.lr.ph50.i41.preheader ]
  %i.hs = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ht = load <2 x float>, ptr %.02849.i42.prol, align 4, !tbaa !546
  %i.hu = fadd <2 x float> %i.hs, %i.ht
  store <2 x float> %i.hu, ptr %.02849.i42.prol, align 4, !tbaa !546
  %i.hv = getelementptr inbounds nuw i8, ptr %.02849.i42.prol, i64 12 ; 2 uses
  %prol.iter117.next = add i64 %prol.iter117, 1   ; 2 uses
  %prol.iter117.cmp.not = icmp eq i64 %prol.iter117.next, %xtraiter115
  br i1 %prol.iter117.cmp.not, label %.lr.ph50.i41.prol.loopexit, label %.lr.ph50.i41.prol, !llvm.loop !713

.lr.ph50.i41.prol.loopexit:                       ; preds = %.lr.ph50.i41.prol, %.lr.ph50.i41.preheader
  %.02849.i42.unr = phi ptr [ %1, %.lr.ph50.i41.preheader ], [ %i.hv, %.lr.ph50.i41.prol ]
  %i.hw = icmp ult i64 %i.hp, 36
  br i1 %i.hw, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41

.lr.ph50.i41:                                     ; preds = %.lr.ph50.i41.prol.loopexit, %.lr.ph50.i41
  %.02849.i42 = phi ptr [ %i.im, %.lr.ph50.i41 ], [ %.02849.i42.unr, %.lr.ph50.i41.prol.loopexit ] ; 6 uses
  %i.hx = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.hy = load <2 x float>, ptr %.02849.i42, align 4, !tbaa !546
  %i.hz = fadd <2 x float> %i.hx, %i.hy
  store <2 x float> %i.hz, ptr %.02849.i42, align 4, !tbaa !546
  %i.ia = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 12 ; 2 uses
  %i.ib = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ic = load <2 x float>, ptr %i.ia, align 4, !tbaa !546
  %i.id = fadd <2 x float> %i.ib, %i.ic
  store <2 x float> %i.id, ptr %i.ia, align 4, !tbaa !546
  %i.ie = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 24 ; 2 uses
  %i.if = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ig = load <2 x float>, ptr %i.ie, align 4, !tbaa !546
  %i.ih = fadd <2 x float> %i.if, %i.ig
  store <2 x float> %i.ih, ptr %i.ie, align 4, !tbaa !546
  %i.ii = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 36 ; 2 uses
  %i.ij = load <2 x float>, ptr %4, align 4, !tbaa !546
  %i.ik = load <2 x float>, ptr %i.ii, align 4, !tbaa !546
  %i.il = fadd <2 x float> %i.ij, %i.ik
  store <2 x float> %i.il, ptr %i.ii, align 4, !tbaa !546
  %i.im = getelementptr inbounds nuw i8, ptr %.02849.i42, i64 48 ; 2 uses
  %.not31.i43.3 = icmp eq ptr %i.im, %i.ho
  br i1 %.not31.i43.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph50.i41

bb.l:                                             ; preds = %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit27
  br i1 %i.hj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.in = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx51.i34 = mul nuw nsw i64 %i.in, 12         ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 %.idx51.i34
  %.not3045.i35 = icmp eq i64 %i.in, 0
  br i1 %.not3045.i35, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36.preheader

.lr.ph47.i36.preheader:                           ; preds = %bb.m
  %i.ip = add nsw i64 %.idx51.i34, -12            ; 2 uses
  %i.iq = udiv i64 %i.ip, 12
  %i.ir = add nuw nsw i64 %i.iq, 1
  %xtraiter112 = and i64 %i.ir, 3                 ; 2 uses
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph47.i36.prol.loopexit, label %.lr.ph47.i36.prol

.lr.ph47.i36.prol:                                ; preds = %.lr.ph47.i36.preheader, %.lr.ph47.i36.prol
  %.02946.i37.prol = phi ptr [ %i.iv, %.lr.ph47.i36.prol ], [ %1, %.lr.ph47.i36.preheader ] ; 3 uses
  %prol.iter114 = phi i64 [ %prol.iter114.next, %.lr.ph47.i36.prol ], [ 0, %.lr.ph47.i36.preheader ]
  %i.is = load float, ptr %4, align 4, !tbaa !561
  %i.it = load float, ptr %.02946.i37.prol, align 4, !tbaa !561
  %i.iu = fadd float %i.is, %i.it
  store float %i.iu, ptr %.02946.i37.prol, align 4, !tbaa !561
  %i.iv = getelementptr inbounds nuw i8, ptr %.02946.i37.prol, i64 12 ; 2 uses
  %prol.iter114.next = add i64 %prol.iter114, 1   ; 2 uses
  %prol.iter114.cmp.not = icmp eq i64 %prol.iter114.next, %xtraiter112
  br i1 %prol.iter114.cmp.not, label %.lr.ph47.i36.prol.loopexit, label %.lr.ph47.i36.prol, !llvm.loop !714

.lr.ph47.i36.prol.loopexit:                       ; preds = %.lr.ph47.i36.prol, %.lr.ph47.i36.preheader
  %.02946.i37.unr = phi ptr [ %1, %.lr.ph47.i36.preheader ], [ %i.iv, %.lr.ph47.i36.prol ]
  %i.iw = icmp ult i64 %i.ip, 36
  br i1 %i.iw, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36

.lr.ph47.i36:                                     ; preds = %.lr.ph47.i36.prol.loopexit, %.lr.ph47.i36
  %.02946.i37 = phi ptr [ %i.jm, %.lr.ph47.i36 ], [ %.02946.i37.unr, %.lr.ph47.i36.prol.loopexit ] ; 6 uses
  %i.ix = load float, ptr %4, align 4, !tbaa !561
  %i.iy = load float, ptr %.02946.i37, align 4, !tbaa !561
  %i.iz = fadd float %i.ix, %i.iy
  store float %i.iz, ptr %.02946.i37, align 4, !tbaa !561
  %i.ja = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 12 ; 2 uses
  %i.jb = load float, ptr %4, align 4, !tbaa !561
  %i.jc = load float, ptr %i.ja, align 4, !tbaa !561
  %i.jd = fadd float %i.jb, %i.jc
  store float %i.jd, ptr %i.ja, align 4, !tbaa !561
  %i.je = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 24 ; 2 uses
  %i.jf = load float, ptr %4, align 4, !tbaa !561
  %i.jg = load float, ptr %i.je, align 4, !tbaa !561
  %i.jh = fadd float %i.jf, %i.jg
  store float %i.jh, ptr %i.je, align 4, !tbaa !561
  %i.ji = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 36 ; 2 uses
  %i.jj = load float, ptr %4, align 4, !tbaa !561
  %i.jk = load float, ptr %i.ji, align 4, !tbaa !561
  %i.jl = fadd float %i.jj, %i.jk
  store float %i.jl, ptr %i.ji, align 4, !tbaa !561
  %i.jm = getelementptr inbounds nuw i8, ptr %.02946.i37, i64 48 ; 2 uses
  %.not30.i38.3 = icmp eq ptr %i.jm, %i.io
  br i1 %.not30.i38.3, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph47.i36

bb.n:                                             ; preds = %bb.l
  br i1 %i.hm, label %bb.o, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit

bb.o:                                             ; preds = %bb.n
  %i.jn = and i64 %.fr102, 4294967295             ; 2 uses
  %.idx.i29 = mul nuw nsw i64 %i.jn, 12           ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i29
  %.not43.i30 = icmp eq i64 %i.jn, 0
  br i1 %.not43.i30, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.o
  %i.jp = add nsw i64 %.idx.i29, -12              ; 2 uses
  %i.jq = udiv i64 %i.jp, 12
  %i.jr = add nuw nsw i64 %i.jq, 1
  %xtraiter = and i64 %i.jr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol

.lr.ph.i31.prol:                                  ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31.prol
  %.044.i32.prol = phi ptr [ %i.jw, %.lr.ph.i31.prol ], [ %1, %.lr.ph.i31.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i31.prol ], [ 0, %.lr.ph.i31.preheader ]
  %i.js = load float, ptr %i.hk, align 4, !tbaa !563
  %i.jt = getelementptr inbounds nuw i8, ptr %.044.i32.prol, i64 4 ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !563
  %i.jv = fadd float %i.js, %i.ju
  store float %i.jv, ptr %i.jt, align 4, !tbaa !563
  %i.jw = getelementptr inbounds nuw i8, ptr %.044.i32.prol, i64 12 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol, !llvm.loop !715

.lr.ph.i31.prol.loopexit:                         ; preds = %.lr.ph.i31.prol, %.lr.ph.i31.preheader
  %.044.i32.unr = phi ptr [ %1, %.lr.ph.i31.preheader ], [ %i.jw, %.lr.ph.i31.prol ]
  %i.jx = icmp ult i64 %i.jp, 36
  br i1 %i.jx, label %_ZN2OT9glyf_impl20CompositeGlyphRecord9transformERA4_Kf10hb_array_tI15contour_point_tE.exit, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31
  %.044.i32 = phi ptr [ %i.ko, %.lr.ph.i31 ], [ %.044.i32.unr, %.lr.ph.i31.prol.loopexit ] ; 5 uses
  %i.jy = load float, ptr %i.hk, align 4, !tbaa !563
  %i.jz = getelementptr inbounds nuw i8, ptr %.044.i32, i64 4 ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !563
  %i.kb = fadd float %i.jy, %i.ka
  store float %i.kb, ptr %i.jz, align 4, !tbaa !563
  %i.kc = load float, ptr %i.hk, align 4, !tbaa !563
  %i.kd = getelementptr inbounds nuw i8, ptr %.044.i32, i64 16 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !563
  %i.kf = fadd float %i.kc, %i.ke
  store float %i.kf, ptr %i.kd, align 4, !tbaa !563
end_hunk_0
begin_hunk_1_@_ZNK2OT3OS26subsetEP19hb_subset_context_t:bb.a
  %i.ob = fadd float %i.oa, %i.nu
  %i.oc = fadd float %i.ob, 5.000000e-01
  %i.od = tail call noundef float @llvm.floor.f32(float %i.oc) ; 2 uses
  %i.oe = fptosi float %i.od to i16               ; 2 uses
  %i.of = tail call i16 @llvm.bswap.i16(i16 %i.oe)
  store i16 %i.of, ptr %i.nr, align 1, !tbaa !355
  %i.og = sext i16 %i.oe to i64
  %i.oh = fptosi float %i.od to i64
  %.not.i.i198 = icmp eq i64 %i.og, %i.oh
  br i1 %.not.i.i198, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit201, label %bb.ad

bb.ad:                                            ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit197
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nq, i64 44 ; 2 uses
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !105
  %i.ok = or i32 %i.oj, 8
  store i32 %i.ok, ptr %i.oi, align 4, !tbaa !105
  br label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit201

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit201: ; preds = %bb.ad, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit197, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit193
  %i.ol = load ptr, ptr %i.r, align 8, !tbaa !128 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 2748
  %.val.i = load i32, ptr %i.om, align 4, !tbaa !774
  %i.on = add i32 %.val.i, 1                      ; 2 uses
  %.not15.i.i.i.i.i.i = icmp ult i32 %i.on, 2
  br i1 %.not15.i.i.i.i.i.i, label %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.preheader.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.preheader.i: ; preds = %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit201
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ol, i64 2760
  %.val14.i = load ptr, ptr %i.oo, align 8, !tbaa !776
  br label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.i

_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.i: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.preheader.i
  %.sroa.5.sroa.0.0.i.i = phi i32 [ %i.os, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i ], [ %i.on, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %i.ot, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i ], [ %.val14.i, %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.preheader.i ] ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.oq = load i32, ptr %i.op, align 4, !noalias !2981
  %i.or = trunc i32 %i.oq to i1
  br i1 %i.or, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_E3endEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i: ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.i
  %i.os = add i32 %.sroa.5.sroa.0.0.i.i, -1       ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 16
  %i.ou = icmp eq i32 %i.os, 0
  br i1 %i.ou, label %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit, label %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.i, !llvm.loop !2714

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_E3endEv.exit.i": ; preds = %_ZN9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EdeEv.exit.i.us.i.i.i.i.i
  %i.ov = zext i32 %.sroa.5.sroa.0.0.i.i to i64
  %i.ow = shl nuw nsw i64 %i.ov, 4
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 %i.ow
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i"
  %.not.i203 = icmp eq i32 %.111.i, 0
  br i1 %.not.i203, label %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit, label %bb.ag

.lr.ph.i:                                         ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_E3endEv.exit.i"
  %.040.i = phi i32 [ %i.pa, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_E3endEv.exit.i" ]
  %.01039.i = phi i32 [ %.111.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_E3endEv.exit.i" ]
  %.sroa.021.038.i = phi ptr [ %.sroa.021.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i" ], [ %.sroa.02.0.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_E3endEv.exit.i" ] ; 4 uses
  %.sroa.722.037.i = phi i32 [ %.sroa.722.2.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i" ], [ %.sroa.5.sroa.0.0.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_E3endEv.exit.i" ] ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.722.037.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ae, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i", !prof !20

bb.ae:                                            ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(16) @_hb_NullPool, i64 16, i1 false)
  br label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i": ; preds = %bb.ae, %.lr.ph.i
  %.0.i.i.i.i.i.i.i = phi ptr [ @_hb_CrapPool, %bb.ae ], [ %.sroa.021.038.i, %.lr.ph.i ]
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 8
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !2693 ; 2 uses
  %.not13.i = icmp ne i32 %i.oz, 0
  %i.pa = add i32 %i.oz, %.040.i                  ; 2 uses
  %i.pb = zext i1 %.not13.i to i32
  %.111.i = add i32 %.01039.i, %i.pb              ; 3 uses
  %i.pc = zext i32 %.sroa.722.037.i to i64
  %i.pd = shl nuw nsw i64 %i.pc, 4
  %scevgep.i = getelementptr i8, ptr %.sroa.021.038.i, i64 %i.pd
  %scevgep61.i = getelementptr i8, ptr %.sroa.021.038.i, i64 16
  %i.pe = add i32 %.sroa.722.037.i, -1
  %i.pf = zext i32 %i.pe to i64
  %i.pg = shl nuw nsw i64 %i.pf, 4
  %scevgep62.i = getelementptr i8, ptr %scevgep61.i, i64 %i.pg
  %.not.i.i.i.i.i.i20.i343 = icmp eq i32 %.sroa.722.037.i, 0
  br i1 %.not.i.i.i.i.i.i20.i343, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i", label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i, !prof !932

bb.af:                                            ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i"
  br label %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i, !llvm.loop !2730

_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i: ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i", %bb.af
  %.sroa.021.1.i345 = phi ptr [ %i.pi, %bb.af ], [ %.sroa.021.038.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i" ] ; 2 uses
  %.sroa.722.1.i344 = phi i32 [ %i.ph, %bb.af ], [ %.sroa.722.037.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i" ]
  %i.ph = add i32 %.sroa.722.1.i344, -1           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ph, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i", label %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i"

"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.021.1.i345, i64 16 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.021.1.i345, i64 20
  %i.pk = load i32, ptr %i.pj, align 4
  %i.pl = trunc i32 %i.pk to i1
  br i1 %i.pl, label %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge", label %bb.af, !llvm.loop !2730

"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i", !llvm.loop !2730

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i, %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i"
  %.sroa.722.2.i = phi i32 [ 0, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i" ], [ %i.ph, %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.021.2.i = phi ptr [ %scevgep.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i" ], [ %i.pi, %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge" ], [ %scevgep62.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i202 = icmp ne ptr %.sroa.021.2.i, %i.ox
  %i.pm = icmp ne i32 %.sroa.722.2.i, 0
  %i.pn = or i1 %i.pm, %.not.i.i.i.i202
  br i1 %i.pn, label %.lr.ph.i, label %._crit_edge.i

bb.ag:                                            ; preds = %._crit_edge.i
  %i.po = uitofp i32 %i.pa to double
  %i.pp = uitofp i32 %.111.i to double
  %i.pq = fdiv double %i.po, %i.pp
  %i.pr = fadd double %i.pq, 5.000000e-01
  %i.ps = tail call noundef double @llvm.floor.f64(double %i.pr)
  %i.pt = fptoui double %i.ps to i32
  br label %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit

_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit201, %._crit_edge.i, %bb.ag
  %i.pu = phi i32 [ %i.pt, %bb.ag ], [ 0, %._crit_edge.i ], [ 0, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit201 ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i ] ; 2 uses
  %i.pv = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.pw = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.px = trunc i32 %i.pu to i16                  ; 2 uses
  %i.py = tail call i16 @llvm.bswap.i16(i16 %i.px)
  store i16 %i.py, ptr %i.pw, align 1, !tbaa !355
  %i.pz = sext i16 %i.px to i64
  %i.qa = zext i32 %i.pu to i64
  %.not.i.i204 = icmp eq i64 %i.pz, %i.qa
  br i1 %.not.i.i204, label %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit..thread_crit_edge, label %bb.ah

_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit..thread_crit_edge: ; preds = %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !128
  br label %.thread

bb.ah:                                            ; preds = %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 44 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !105
  %i.qd = or i32 %i.qc, 8
  store i32 %i.qd, ptr %i.qb, align 4, !tbaa !105
  br label %bb.ax

.thread:                                          ; preds = %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit..thread_crit_edge, %bb.e
  %i.qe = phi ptr [ %.pre, %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit..thread_crit_edge ], [ %i.s, %bb.e ] ; 8 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 2408
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !407 ; 8 uses
  %.not.i207 = icmp eq ptr %i.qg, null
  br i1 %.not.i207, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %bb.ai

bb.ai:                                            ; preds = %.thread
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 2400
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !2990
  %i.qj = urem i32 935988276, %i.qi               ; 2 uses
  %i.qk = zext nneg i32 %i.qj to i64              ; 2 uses
  %i.ql = getelementptr inbounds nuw [32 x i8], ptr %i.qg, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qn = load i32, ptr %i.qm, align 4            ; 2 uses
  %i.qo = and i32 %i.qn, 2
  %.not15.i.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread, label %.lr.ph.i.i.i209

.lr.ph.i.i.i209:                                  ; preds = %bb.ai
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qe, i64 2396
  %i.qq = load i32, ptr %i.qp, align 4
  %i.qr = load i32, ptr %i.ql, align 4, !tbaa !137
  %i.qs = icmp eq i32 %i.qr, 2003265652
  br i1 %i.qs, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.qt = load i32, ptr %i.qz, align 4, !tbaa !137
  %i.qu = icmp eq i32 %i.qt, 2003265652
  br i1 %i.qu, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !2991

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i209, %bb.aj
  %.01016.i20.i.i = phi i32 [ %i.qx, %bb.aj ], [ %i.qj, %.lr.ph.i.i.i209 ]
  %.017.i19.i.i = phi i32 [ %i.qv, %bb.aj ], [ 0, %.lr.ph.i.i.i209 ]
  %i.qv = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.qw = add i32 %i.qv, %.01016.i20.i.i
  %i.qx = and i32 %i.qw, %i.qq                    ; 2 uses
  %i.qy = zext i32 %i.qx to i64                   ; 2 uses
  %i.qz = getelementptr inbounds nuw [32 x i8], ptr %i.qg, i64 %i.qy ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rb = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.rc = and i32 %i.rb, 2
  %.not.i.i.i210 = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i.i210, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread, label %bb.aj, !llvm.loop !2991

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i209
  %.lcssa17.i.i = phi i32 [ %i.qn, %.lr.ph.i.i.i209 ], [ %i.rb, %bb.aj ]
  %i.rd = phi i64 [ %i.qk, %.lr.ph.i.i.i209 ], [ %i.qy, %bb.aj ]
  %i.re = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.re, label %.cont, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread

.cont:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i
  %i.rf = getelementptr inbounds nuw [32 x i8], ptr %i.qg, i64 %i.rd
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !2992 ; 3 uses
  %2 = fcmp ult double %i.rh, 1.000000e+00        ; 2 uses
  %3 = fcmp ole double %i.rh, 1.000000e+03        ; 2 uses
  %4 = or i1 %2, %3
  %5 = xor i1 %3, true
  %brmerge = or i1 %2, %5
  %.mux = select i1 %4, double 1.000000e+00, double 1.000000e+03
  %i.ri = select i1 %brmerge, double %.mux, double %i.rh
  %i.rj = fadd double %i.ri, 5.000000e-01
  %i.rk = tail call noundef double @llvm.floor.f64(double %i.rj)
  %i.rl = fptoui double %i.rk to i32              ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.rn = load i16, ptr %i.rm, align 1, !tbaa !155
  %i.ro = tail call noundef i16 @llvm.bswap.i16(i16 %i.rn)
  %i.rp = zext i16 %i.ro to i32
  %.not134 = icmp eq i32 %i.rp, %i.rl
  br i1 %.not134, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread: ; preds = %.cont
  %i.rq = trunc i32 %i.rl to i16
  %i.rr = tail call i16 @llvm.bswap.i16(i16 %i.rq)
  store i16 %i.rr, ptr %i.rm, align 1, !tbaa !355
  %.pre306.a = load ptr, ptr %i.r, align 8, !tbaa !128 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre306.a, i64 2408
  %.pre307 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !407 ; 2 uses
  %.not.i212 = icmp eq ptr %.pre307, null
  br i1 %.not.i212, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread: ; preds = %.lr.ph.i.i, %.cont, %bb.ai, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread
  %i.rs = phi ptr [ %.pre306.a, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ], [ %i.qe, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i ], [ %i.qe, %bb.ai ], [ %i.qe, %.cont ], [ %i.qe, %.lr.ph.i.i ] ; 6 uses
  %i.rt = phi ptr [ %.pre307, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ], [ %i.qg, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i ], [ %i.qg, %bb.ai ], [ %i.qg, %.cont ], [ %i.qg, %.lr.ph.i.i ] ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 2400
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !2990
  %i.rw = urem i32 970040296, %i.rv               ; 2 uses
  %i.rx = zext nneg i32 %i.rw to i64              ; 2 uses
  %i.ry = getelementptr inbounds nuw [32 x i8], ptr %i.rt, i64 %i.rx ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  %i.sa = load i32, ptr %i.rz, align 4            ; 2 uses
  %i.sb = and i32 %i.sa, 2
  %.not15.i.i.i214 = icmp eq i32 %i.sb, 0
  br i1 %.not15.i.i.i214, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %.lr.ph.i.i.i215

.lr.ph.i.i.i215:                                  ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rs, i64 2396
  %i.sd = load i32, ptr %i.sc, align 4
  %i.se = load i32, ptr %i.ry, align 4, !tbaa !137
  %i.sf = icmp eq i32 %i.se, 2003072104
  br i1 %i.sf, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220, label %.lr.ph.i.i216

bb.ak:                                            ; preds = %.lr.ph.i.i216
  %i.sg = load i32, ptr %i.sm, align 4, !tbaa !137
  %i.sh = icmp eq i32 %i.sg, 2003072104
  br i1 %i.sh, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220, label %.lr.ph.i.i216, !llvm.loop !2991

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i.i215, %bb.ak
  %.01016.i20.i.i217 = phi i32 [ %i.sk, %bb.ak ], [ %i.rw, %.lr.ph.i.i.i215 ]
  %.017.i19.i.i218 = phi i32 [ %i.si, %bb.ak ], [ 0, %.lr.ph.i.i.i215 ]
  %i.si = add i32 %.017.i19.i.i218, 1             ; 2 uses
  %i.sj = add i32 %i.si, %.01016.i20.i.i217
  %i.sk = and i32 %i.sj, %i.sd                    ; 2 uses
  %i.sl = zext i32 %i.sk to i64                   ; 2 uses
  %i.sm = getelementptr inbounds nuw [32 x i8], ptr %i.rt, i64 %i.sl ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.so = load i32, ptr %i.sn, align 4            ; 2 uses
  %i.sp = and i32 %i.so, 2
  %.not.i.i.i219 = icmp eq i32 %i.sp, 0
  br i1 %.not.i.i.i219, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %bb.ak, !llvm.loop !2991

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220: ; preds = %bb.ak, %.lr.ph.i.i.i215
  %.lcssa17.i.i221 = phi i32 [ %i.sa, %.lr.ph.i.i.i215 ], [ %i.so, %bb.ak ]
  %i.sq = phi i64 [ %i.rx, %.lr.ph.i.i.i215 ], [ %i.sl, %bb.ak ]
  %i.sr = trunc i32 %.lcssa17.i.i221 to i1
  br i1 %i.sr, label %bb.al, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread

bb.al:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220
  %i.ss = getelementptr inbounds nuw [32 x i8], ptr %i.rt, i64 %i.sq
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 16
  %i.su = load double, ptr %i.st, align 8, !tbaa !2993 ; 3 uses
  %i.sv = fptrunc double %i.su to float           ; 2 uses
  %i.sw = fcmp olt double %i.su, f0x4048FFFFF0000000
  br i1 %i.sw, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.sx = fcmp ogt double %i.su, f0x4069000010000000
  br i1 %i.sx, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.sy = fadd float %i.sv, -5.000000e+01
  %i.sz = fdiv float %i.sy, 1.250000e+01          ; 2 uses
  %i.ta = tail call float @llvm.floor.f32(float %i.sz)
  %i.tb = fptosi float %i.ta to i32               ; 5 uses
  %i.tc = tail call float @llvm.ceil.f32(float %i.sz)
  %i.td = fptosi float %i.tc to i32               ; 5 uses
  %i.te = icmp slt i32 %i.td, 7
  br i1 %i.te, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.tf = icmp eq i32 %i.tb, %i.td
  br i1 %i.tf, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.tg = sitofp i32 %i.tb to float
  %i.th = fadd float %i.tg, 1.000000e+00
  br label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit

bb.aq:                                            ; preds = %bb.an
  switch i32 %i.td, label %bb.as [
    i32 7, label %bb.at
    i32 8, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.ti = icmp eq i32 %i.tb, 8
  br i1 %i.ti, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.tj = icmp eq i32 %i.tb, 12
  %i.tk = icmp eq i32 %i.td, 12
  %or.cond.i = and i1 %i.tj, %i.tk
  br i1 %or.cond.i, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.028.i = phi i32 [ %i.tb, %bb.ao ], [ 6, %bb.ar ], [ 6, %bb.aq ], [ 8, %bb.as ]
  %.027.i = phi i32 [ %i.td, %bb.ao ], [ 8, %bb.ar ], [ 8, %bb.aq ], [ 12, %bb.as ]
  %.028.fr.i = freeze i32 %.028.i                 ; 2 uses
  %i.tl = insertelement <2 x i32> poison, i32 %.027.i, i64 0
  %i.tm = insertelement <2 x i32> %i.tl, i32 %.028.fr.i, i64 1
  %i.tn = sitofp <2 x i32> %i.tm to <2 x float>   ; 2 uses
  %i.to = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tn, <2 x float> splat (float 1.250000e+01), <2 x float> splat (float 5.000000e+01)) ; 2 uses
  %i.tp = extractelement <2 x float> %i.to, i64 1 ; 2 uses
  %i.tq = fsub float %i.sv, %i.tp
  %i.tr = extractelement <2 x float> %i.to, i64 0
  %i.ts = fsub float %i.tr, %i.tp
  %i.tt = fdiv float %i.tq, %i.ts
  %i.tu = extractelement <2 x float> %i.tn, i64 1
  %i.tv = fadd float %i.tt, %i.tu                 ; 2 uses
  %i.tw = icmp slt i32 %.028.fr.i, 7
  br i1 %i.tw, label %bb.au, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit

bb.au:                                            ; preds = %bb.at
  %i.tx = fadd float %i.tv, 1.000000e+00
  br label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit

_ZNK2OT3OS222map_wdth_to_widthclassEf.exit:       ; preds = %bb.al, %bb.am, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.au
  %.1.i = phi float [ 9.000000e+00, %bb.am ], [ 1.000000e+00, %bb.al ], [ %i.th, %bb.ap ], [ 9.000000e+00, %bb.as ], [ 8.000000e+00, %bb.ar ], [ %i.tx, %bb.au ], [ %i.tv, %bb.at ]
  %i.ty = fadd float %.1.i, 5.000000e-01
  %i.tz = tail call noundef float @llvm.floor.f32(float %i.ty)
  %i.ua = fptoui float %i.tz to i32               ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.l, i64 6 ; 2 uses
  %i.uc = load i16, ptr %i.ub, align 1, !tbaa !155
  %i.ud = tail call noundef i16 @llvm.bswap.i16(i16 %i.uc)
  %i.ue = zext i16 %i.ud to i32
  %.not135 = icmp eq i32 %i.ue, %i.ua
  br i1 %.not135, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %bb.av

bb.av:                                            ; preds = %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit
  %i.uf = trunc i32 %i.ua to i16
  %i.ug = tail call i16 @llvm.bswap.i16(i16 %i.uf)
  store i16 %i.ug, ptr %i.ub, align 1, !tbaa !355
  %.pre308 = load ptr, ptr %i.r, align 8, !tbaa !128
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread: ; preds = %.lr.ph.i.i216, %.thread, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, %bb.av
  %i.uh = phi ptr [ %i.qe, %.thread ], [ %i.rs, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220 ], [ %i.rs, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread ], [ %.pre306.a, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ], [ %i.rs, %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit ], [ %.pre308, %bb.av ], [ %i.rs, %.lr.ph.i.i216 ]
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 3076
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !137
  %.sroa.speculated230 = tail call i32 @llvm.umin.i32(i32 %i.uj, i32 65535)
  %i.uk = trunc nuw i32 %.sroa.speculated230 to i16
  %i.ul = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.um = tail call i16 @llvm.bswap.i16(i16 %i.uk)
  store i16 %i.um, ptr %i.ul, align 1, !tbaa !355
  %i.un = load ptr, ptr %i.r, align 8, !tbaa !128
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 3080
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !137
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.up, i32 65535)
  %i.uq = trunc nuw i32 %.sroa.speculated to i16
  %i.ur = getelementptr inbounds nuw i8, ptr %i.l, i64 66
  %i.us = tail call i16 @llvm.bswap.i16(i16 %i.uq)
  store i16 %i.us, ptr %i.ur, align 1, !tbaa !355
  %i.ut = load ptr, ptr %i.r, align 8, !tbaa !128 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 20
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !462
  %i.uw = and i32 %i.uv, 256
  %.not136 = icmp eq i32 %i.uw, 0
  br i1 %.not136, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 104
  %i.uy = getelementptr inbounds nuw i8, ptr %i.l, i64 42
  tail call void @_ZNK2OT3OS222_update_unicode_rangesEPK8hb_set_tPNS_7NumTypeILb1EjLj4EEE(ptr noundef nonnull align 1 dereferenceable(100) %0, ptr noundef nonnull %i.ux, ptr noundef nonnull %i.uy)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, %bb.ah, %_ZNK2OT3OS28get_sizeEv.exit.i, %.critedge.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT3OS2EEEPT_mb.exit.i
  %.2 = phi i1 [ false, %bb.ah ], [ false, %_ZNK2OT3OS28get_sizeEv.exit.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT3OS2EEEPT_mb.exit.i ], [ false, %.critedge.i.i ], [ true, %bb.aw ], [ true, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT3OS222_update_unicode_rangesEPK8hb_set_tPNS_7NumTypeILb1EjLj4EEE(ptr noundef nonnull align 1 dereferenceable(100) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %3 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 3 uses
  %4 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %5 = alloca [4 x %"struct.OT::NumType.224"], align 16 ; 6 uses
  %6 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !tbaa !355
end_hunk_1
