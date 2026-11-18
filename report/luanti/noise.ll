Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/noise?download=true
inline.NumInlined: 150
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5Noise10valueMap3DEffffffi:bb.a
  %i.ir = zext i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !27
  %i.iu = insertelement <2 x float> poison, float %i.it, i64 0
  %i.iv = insertelement <2 x float> %i.iu, float %i.il, i64 1
  %i.iw = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.ih, i64 1
  br label %bb.e

bb.e:                                             ; preds = %_Z22triLinearInterpolationfffffffffffb.exit, %bb.d
  %.1155 = phi nsz float [ %i.ib, %bb.d ], [ %i.hz, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %.1141 = phi i32 [ %i.ic, %bb.d ], [ %.0140209, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.iy = phi <2 x float> [ %i.iv, %bb.d ], [ %i.hb, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.iz = phi <2 x float> [ %i.hb, %bb.d ], [ %i.hc, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.ja = phi <2 x float> [ %i.ix, %bb.d ], [ %i.hd, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.jb = phi <2 x float> [ %i.hd, %bb.d ], [ %i.he, %_Z22triLinearInterpolationfffffffffffb.exit ]
  %i.jc = add nuw i32 %.1147208, 1                ; 2 uses
  %.not177 = icmp eq i32 %i.jc, %i.au
  br i1 %.not177, label %._crit_edge211, label %_Z22triLinearInterpolationfffffffffffb.exit, !llvm.loop !101

._crit_edge211:                                   ; preds = %bb.e, %bb.c
  %.us-phi = phi i32 [ %i.fw, %bb.c ], [ %i.hw, %bb.e ] ; 2 uses
  %i.jd = fadd nsz float %5, %.0152214            ; 3 uses
  %i.je = fcmp nsz ult float %i.jd, 1.000000e+00  ; 2 uses
  %i.jf = fadd nsz float %i.jd, -1.000000e+00
  %.1153 = select nsz i1 %i.je, float %i.jd, float %i.jf
  %.1139 = select i1 %i.je, i32 %.0138218, i32 %i.dj
  %i.jg = add nuw i32 %.1145217, 1                ; 2 uses
  %.not176 = icmp eq i32 %i.jg, %i.as
  br i1 %.not176, label %._crit_edge220.split, label %.lr.ph, !llvm.loop !102

._crit_edge220.split:                             ; preds = %._crit_edge211
  %i.jh = fadd nsz float %6, %.0150225            ; 3 uses
  %i.ji = fcmp nsz oge float %i.jh, 1.000000e+00  ; 2 uses
  %i.jj = fadd nsz float %i.jh, -1.000000e+00
  %.1151 = select nsz i1 %i.ji, float %i.jj, float %i.jh
  %i.jk = zext i1 %i.ji to i32
  %.1 = add i32 %.0229, %i.jk
  %i.jl = add nuw i32 %.1143228, 1                ; 2 uses
  %.not175 = icmp eq i32 %i.jl, %i.w
  br i1 %.not175, label %._crit_edge230.split, label %.preheader, !llvm.loop !103

._crit_edge230.split:                             ; preds = %._crit_edge220.split, %.preheader.lr.ph.split, %.preheader.lr.ph, %.preheader181
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN5Noise10noiseMap2DEffPf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = mul i32 %i.d, %i.b                       ; 11 uses
  %i.f = zext i32 %i.e to i64                     ; 29 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load <2 x float>, ptr %i.g, align 8, !tbaa !27
  %i.i = insertelement <2 x float> poison, float %1, i64 0
  %i.j = insertelement <2 x float> %i.i, float %2, i64 1
  %i.k = fdiv nsz <2 x float> %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.n = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.n, i1 false)
  %.not = icmp eq ptr %3, null                    ; 3 uses
  br i1 %.not, label %.loopexit38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %.not32 = icmp eq ptr %i.p, null
  br i1 %.not32, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #30 ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi ptr [ %i.q, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.not3339 = icmp eq i32 %i.e, 0
  br i1 %.not3339, label %.loopexit38, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %min.iters.check = icmp ult i32 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.preheader244, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.f, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.s, align 4, !tbaa !27
  store <4 x float> splat (float 1.000000e+00), ptr %i.t, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %.loopexit38, label %.lr.ph.preheader244

.lr.ph.preheader244:                              ; preds = %.lr.ph.preheader, %middle.block
  %.02940.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader244, %.lr.ph
  %.02940 = phi i64 [ %i.w, %.lr.ph ], [ %.02940.ph, %.lr.ph.preheader244 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.02940
  store float 1.000000e+00, ptr %i.v, align 4, !tbaa !27
  %i.w = add nuw nsw i64 %.02940, 1               ; 2 uses
  %.not33 = icmp eq i64 %i.w, %i.f
  br i1 %.not33, label %.loopexit38, label %.lr.ph, !llvm.loop !105

.loopexit38:                                      ; preds = %.lr.ph, %middle.block, %bb.d, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8, !tbaa !48
  %.not49 = icmp eq i16 %i.y, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %.loopexit38
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.not4160.i = icmp eq i32 %i.e, 0               ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = shl nuw nsw i64 %i.f, 2                 ; 11 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.af  ; 4 uses
  %min.iters.check181 = icmp ult i32 %i.e, 8
  %n.vec203 = and i64 %i.f, 4294967292            ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec203, %i.f
  %min.iters.check138 = icmp ult i32 %i.e, 8
  %n.vec144 = and i64 %i.f, 4294967288            ; 3 uses
  %cmp.n155 = icmp eq i64 %n.vec144, %i.f
  %xtraiter = and i64 %i.f, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ag = add nsw i64 %i.f, -1
  %min.iters.check98 = icmp ult i32 %i.e, 8
  %n.vec119 = and i64 %i.f, 4294967292            ; 3 uses
  %cmp.n129 = icmp eq i64 %n.vec119, %i.f
  %xtraiter245 = and i64 %i.f, 1
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  %i.ah = add nsw i64 %i.f, -1
  %min.iters.check63 = icmp ult i32 %i.e, 8
  %n.vec65 = and i64 %i.f, 4294967288             ; 3 uses
  %cmp.n73 = icmp eq i64 %n.vec65, %i.f
  %xtraiter247 = and i64 %i.f, 1
  %lcmp.mod248.not = icmp eq i64 %xtraiter247, 0
  %i.ai = add nsw i64 %i.f, -1
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN5Noise13updateResultsEfPfPKfm.exit, %.loopexit38
  %i.aj = load float, ptr %0, align 8, !tbaa !65
  %i.ak = tail call nsz noundef float @llvm.fabs.f32(float %i.aj)
  %i.al = fpext nsz float %i.ak to double
  %i.am = fcmp nsz ogt double %i.al, 1.000000e-05
  br i1 %i.am, label %bb.i, label %bb.h

bb.e:                                             ; preds = %.lr.ph44, %_ZN5Noise13updateResultsEfPfPKfm.exit
  %.02843 = phi i64 [ 0, %.lr.ph44 ], [ %i.gu, %_ZN5Noise13updateResultsEfPfPKfm.exit ] ; 2 uses
  %i.an = phi <2 x float> [ splat (float 1.000000e+00), %.lr.ph44 ], [ %i.gt, %_ZN5Noise13updateResultsEfPfPKfm.exit ] ; 10 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ap = fmul nsz <2 x float> %i.k, %i.ao        ; 2 uses
  %i.aq = load <2 x float>, ptr %i.g, align 8, !tbaa !27
  %i.ar = fdiv nsz <2 x float> %i.ao, %i.aq       ; 2 uses
  %i.as = load i32, ptr %i.z, align 8, !tbaa !40
  %i.at = load i32, ptr %i.aa, align 4, !tbaa !66
  %i.au = trunc nuw nsw i64 %.02843 to i32
  %i.av = add i32 %i.as, %i.au
  %i.aw = add i32 %i.av, %i.at
  %i.ax = extractelement <2 x float> %i.ar, i64 0
  %i.ay = extractelement <2 x float> %i.ar, i64 1
  %i.az = extractelement <2 x float> %i.ap, i64 0
  %i.ba = extractelement <2 x float> %i.ap, i64 1
  tail call void @_ZN5Noise10valueMap2DEffffi(ptr noundef nonnull align 8 dereferenceable(88) %0, float noundef %i.az, float noundef %i.ba, float noundef %i.ax, float noundef %i.ay, i32 noundef %i.aw)
  %i.bb = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 14 uses
  %i.bc = load i32, ptr %i.ac, align 4, !tbaa !62
  %i.bd = and i32 %i.bc, 4
  %.not.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %.preheader48.i, label %.preheader50.i

.preheader50.i:                                   ; preds = %bb.f
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader50.i
  %i.be = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 5 uses
  %i.bf = load ptr, ptr %i.l, align 8, !tbaa !47  ; 6 uses
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.af  ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bb, i64 %i.af  ; 3 uses
  %bound0183 = icmp ult ptr %i.bf, %i.bh
  %bound0183.a = icmp ult ptr %i.bb, %i.bg
  %found.conflict185 = and i1 %bound0183, %bound0183.a
  %4 = getelementptr i8, ptr %i.be, i64 %i.af     ; 2 uses
  %bound0186 = icmp ult ptr %i.bf, %4
  %bound1187 = icmp ult ptr %i.be, %i.bg
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %found.conflict185, %found.conflict188
  %bound0190 = icmp ult ptr %i.bf, %scevgep
  %bound1191 = icmp ult ptr %3, %i.bg
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %conflict.rdx189, %found.conflict192
  %bound0194 = icmp ult ptr %i.bb, %4
  %bound1195 = icmp ult ptr %i.be, %i.bh
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %i.bb, %scevgep
  %bound1199 = icmp ult ptr %3, %i.bh
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  br i1 %conflict.rdx201, label %scalar.ph180.preheader, label %vector.body204

vector.body204:                                   ; preds = %vector.memcheck182, %vector.body204
  %index205 = phi i64 [ %index.next211, %vector.body204 ], [ 0, %vector.memcheck182 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index205 ; 3 uses
  %wide.load206 = load <4 x float>, ptr %i.bi, align 4, !tbaa !27, !alias.scope !136, !noalias !137
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index205
  %wide.load207 = load <4 x float>, ptr %i.bj, align 4, !tbaa !27, !alias.scope !138
  %i.bk = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load207)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index205 ; 2 uses
  %wide.load208 = load <4 x float>, ptr %i.bl, align 4, !tbaa !27, !alias.scope !139, !noalias !140
  %i.bm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load206, <4 x float> %i.bk, <4 x float> %wide.load208)
  store <4 x float> %i.bm, ptr %i.bl, align 4, !tbaa !27, !alias.scope !139, !noalias !140
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index205
  %wide.load209 = load <4 x float>, ptr %i.bn, align 4, !tbaa !27, !alias.scope !141
  %wide.load210 = load <4 x float>, ptr %i.bi, align 4, !tbaa !27, !alias.scope !136, !noalias !137
  %i.bo = fmul nsz <4 x float> %wide.load209, %wide.load210
  store <4 x float> %i.bo, ptr %i.bi, align 4, !tbaa !27, !alias.scope !136, !noalias !137
  %index.next211 = add nuw i64 %index205, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next211, %n.vec203
  br i1 %i.bp, label %middle.block212, label %vector.body204, !llvm.loop !111

middle.block212:                                  ; preds = %vector.body204
  br i1 %cmp.n213, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.memcheck182, %.lr.ph.i, %middle.block212
  %.03853.i.ph = phi i64 [ 0, %vector.memcheck182 ], [ 0, %.lr.ph.i ], [ %n.vec203, %middle.block212 ]
  br label %scalar.ph180

.preheader48.i:                                   ; preds = %bb.f
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.preheader48.i
  %i.bq = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 6 uses
  %i.br = load ptr, ptr %i.l, align 8, !tbaa !47  ; 6 uses
  br i1 %min.iters.check138, label %scalar.ph137.preheader, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph56.i
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.af
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.af
  %bound0140 = icmp ult ptr %i.br, %i.bt
  %bound1141 = icmp ult ptr %i.bq, %i.bs
  %found.conflict142 = and i1 %bound0140, %bound1141
  br i1 %found.conflict142, label %scalar.ph137.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck139
  %broadcast.splat146 = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph143
  %index148 = phi i64 [ 0, %vector.ph143 ], [ %index.next153, %vector.body147 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index148 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load149 = load <4 x float>, ptr %i.bu, align 4, !tbaa !27, !alias.scope !142
  %wide.load150 = load <4 x float>, ptr %i.bv, align 4, !tbaa !27, !alias.scope !142
  %i.bw = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load149)
  %i.bx = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load150)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index148 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load151 = load <4 x float>, ptr %i.by, align 4, !tbaa !27, !alias.scope !143, !noalias !142
  %wide.load152 = load <4 x float>, ptr %i.bz, align 4, !tbaa !27, !alias.scope !143, !noalias !142
  %i.ca = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat146, <4 x float> %i.bw, <4 x float> %wide.load151)
  %i.cb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat146, <4 x float> %i.bx, <4 x float> %wide.load152)
  store <4 x float> %i.ca, ptr %i.by, align 4, !tbaa !27, !alias.scope !143, !noalias !142
  store <4 x float> %i.cb, ptr %i.bz, align 4, !tbaa !27, !alias.scope !143, !noalias !142
  %index.next153 = add nuw i64 %index148, 8       ; 2 uses
  %i.cc = icmp eq i64 %index.next153, %n.vec144
  br i1 %i.cc, label %middle.block154, label %vector.body147, !llvm.loop !115

middle.block154:                                  ; preds = %vector.body147
  br i1 %cmp.n155, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %vector.memcheck139, %.lr.ph56.i, %middle.block154
  %.03755.i.ph = phi i64 [ 0, %vector.memcheck139 ], [ 0, %.lr.ph56.i ], [ %n.vec144, %middle.block154 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph137.prol.loopexit, label %scalar.ph137.prol

scalar.ph137.prol:                                ; preds = %scalar.ph137.preheader
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.03755.i.ph
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !27
  %i.cf = tail call nsz noundef float @llvm.fabs.f32(float %i.ce)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.03755.i.ph ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !27
  %i.ci = extractelement <2 x float> %i.an, i64 0
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.cf, float %i.ch)
  store float %i.cj, ptr %i.cg, align 4, !tbaa !27
  %i.ck = or disjoint i64 %.03755.i.ph, 1
  br label %scalar.ph137.prol.loopexit

scalar.ph137.prol.loopexit:                       ; preds = %scalar.ph137.prol, %scalar.ph137.preheader
  %.03755.i.unr = phi i64 [ %.03755.i.ph, %scalar.ph137.preheader ], [ %i.ck, %scalar.ph137.prol ]
  %i.cl = icmp eq i64 %.03755.i.ph, %i.ag
  br i1 %i.cl, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph137.preheader.new

scalar.ph137.preheader.new:                       ; preds = %scalar.ph137.prol.loopexit
  %i.cm = extractelement <2 x float> %i.an, i64 0
  %i.cn = extractelement <2 x float> %i.an, i64 0
  br label %scalar.ph137

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %.03853.i = phi i64 [ %i.da, %scalar.ph180 ], [ %.03853.i.ph, %scalar.ph180.preheader ] ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.03853.i ; 3 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !27
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.03853.i
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27
  %i.cs = tail call nsz noundef float @llvm.fabs.f32(float %i.cr)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.03853.i ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !27
  %i.cv = tail call nsz float @llvm.fmuladd.f32(float %i.cp, float %i.cs, float %i.cu)
  store float %i.cv, ptr %i.ct, align 4, !tbaa !27
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03853.i
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !27
  %i.cy = load float, ptr %i.co, align 4, !tbaa !27
  %i.cz = fmul nsz float %i.cx, %i.cy
  store float %i.cz, ptr %i.co, align 4, !tbaa !27
  %i.da = add nuw nsw i64 %.03853.i, 1            ; 2 uses
  %.not45.i = icmp eq i64 %i.da, %i.f
  br i1 %.not45.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph180, !llvm.loop !116

scalar.ph137:                                     ; preds = %scalar.ph137, %scalar.ph137.preheader.new
  %.03755.i = phi i64 [ %.03755.i.unr, %scalar.ph137.preheader.new ], [ %i.do, %scalar.ph137 ] ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %.03755.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !27
  %i.dd = tail call nsz noundef float @llvm.fabs.f32(float %i.dc)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.03755.i ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !27
  %i.dg = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.dd, float %i.df)
  store float %i.dg, ptr %i.de, align 4, !tbaa !27
  %i.dh = add nuw nsw i64 %.03755.i, 1            ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !27
  %i.dk = tail call nsz noundef float @llvm.fabs.f32(float %i.dj)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.dh ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !27
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.dk, float %i.dm)
  store float %i.dn, ptr %i.dl, align 4, !tbaa !27
  %i.do = add nuw nsw i64 %.03755.i, 2            ; 2 uses
  %.not44.i.1 = icmp eq i64 %i.do, %i.f
  br i1 %.not44.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph137, !llvm.loop !117

bb.g:                                             ; preds = %bb.e
  br i1 %.not, label %.preheader.i, label %.preheader46.i

.preheader46.i:                                   ; preds = %bb.g
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.preheader46.i
  %i.dp = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 7 uses
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !47  ; 8 uses
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.memcheck99

vector.memcheck99:                                ; preds = %.lr.ph59.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.af  ; 3 uses
  %i.ds = getelementptr i8, ptr %i.bb, i64 %i.af  ; 3 uses
  %bound0100 = icmp ult ptr %i.dq, %i.ds
  %bound0100.a = icmp ult ptr %i.bb, %i.dr
  %found.conflict102 = and i1 %bound0100, %bound0100.a
  %5 = getelementptr i8, ptr %i.dp, i64 %i.af     ; 2 uses
  %bound0103 = icmp ult ptr %i.dq, %5
  %bound1104 = icmp ult ptr %i.dp, %i.dr
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx = or i1 %found.conflict102, %found.conflict105
  %bound0106 = icmp ult ptr %i.dq, %scevgep
  %bound1107 = icmp ult ptr %3, %i.dr
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %conflict.rdx, %found.conflict108
  %bound0110 = icmp ult ptr %i.bb, %5
  %bound1111 = icmp ult ptr %i.dp, %i.ds
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx113 = or i1 %conflict.rdx109, %found.conflict112
  %bound0114 = icmp ult ptr %i.bb, %scevgep
  %bound1115 = icmp ult ptr %3, %i.ds
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx117 = or i1 %conflict.rdx113, %found.conflict116
  br i1 %conflict.rdx117, label %scalar.ph97.preheader, label %vector.body120

vector.body120:                                   ; preds = %vector.memcheck99, %vector.body120
  %index121 = phi i64 [ %index.next127, %vector.body120 ], [ 0, %vector.memcheck99 ] ; 5 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %index121 ; 3 uses
  %wide.load122 = load <4 x float>, ptr %i.dt, align 4, !tbaa !27, !alias.scope !144, !noalias !145
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index121
  %wide.load123 = load <4 x float>, ptr %i.du, align 4, !tbaa !27, !alias.scope !146
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %index121 ; 2 uses
  %wide.load124 = load <4 x float>, ptr %i.dv, align 4, !tbaa !27, !alias.scope !147, !noalias !148
  %i.dw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load122, <4 x float> %wide.load123, <4 x float> %wide.load124)
  store <4 x float> %i.dw, ptr %i.dv, align 4, !tbaa !27, !alias.scope !147, !noalias !148
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index121
  %wide.load125 = load <4 x float>, ptr %i.dx, align 4, !tbaa !27, !alias.scope !149
  %wide.load126 = load <4 x float>, ptr %i.dt, align 4, !tbaa !27, !alias.scope !144, !noalias !145
  %i.dy = fmul nsz <4 x float> %wide.load125, %wide.load126
  store <4 x float> %i.dy, ptr %i.dt, align 4, !tbaa !27, !alias.scope !144, !noalias !145
  %index.next127 = add nuw i64 %index121, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next127, %n.vec119
  br i1 %i.dz, label %middle.block128, label %vector.body120, !llvm.loop !123

middle.block128:                                  ; preds = %vector.body120
  br i1 %cmp.n129, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph97.preheader

scalar.ph97.preheader:                            ; preds = %vector.memcheck99, %.lr.ph59.i, %middle.block128
  %.03658.i.ph = phi i64 [ 0, %vector.memcheck99 ], [ 0, %.lr.ph59.i ], [ %n.vec119, %middle.block128 ] ; 7 uses
  br i1 %lcmp.mod246.not, label %scalar.ph97.prol.loopexit, label %scalar.ph97.prol

scalar.ph97.prol:                                 ; preds = %scalar.ph97.preheader
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.03658.i.ph ; 3 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !27
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.03658.i.ph
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !27
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.03658.i.ph ; 2 uses
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !27
  %i.eg = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.ed, float %i.ef)
  store float %i.eg, ptr %i.ee, align 4, !tbaa !27
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03658.i.ph
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !27
  %i.ej = load float, ptr %i.ea, align 4, !tbaa !27
  %i.ek = fmul nsz float %i.ei, %i.ej
  store float %i.ek, ptr %i.ea, align 4, !tbaa !27
  %i.el = or disjoint i64 %.03658.i.ph, 1
  br label %scalar.ph97.prol.loopexit

scalar.ph97.prol.loopexit:                        ; preds = %scalar.ph97.prol, %scalar.ph97.preheader
  %.03658.i.unr = phi i64 [ %.03658.i.ph, %scalar.ph97.preheader ], [ %i.el, %scalar.ph97.prol ]
  %i.em = icmp eq i64 %.03658.i.ph, %i.ah
  br i1 %i.em, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph97

.preheader.i:                                     ; preds = %bb.g
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.en = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 6 uses
  %i.eo = load ptr, ptr %i.l, align 8, !tbaa !47  ; 6 uses
  br i1 %min.iters.check63, label %scalar.ph62.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62.i
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.af
  %i.eq = getelementptr i8, ptr %i.en, i64 %i.af
  %bound0 = icmp ult ptr %i.eo, %i.eq
  %bound1 = icmp ult ptr %i.en, %i.ep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph62.preheader, label %vector.ph64

vector.ph64:                                      ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph64
  %index67 = phi i64 [ 0, %vector.ph64 ], [ %index.next71, %vector.body66 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %index67 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load = load <4 x float>, ptr %i.er, align 4, !tbaa !27, !alias.scope !150
  %wide.load68 = load <4 x float>, ptr %i.es, align 4, !tbaa !27, !alias.scope !150
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index67 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load69 = load <4 x float>, ptr %i.et, align 4, !tbaa !27, !alias.scope !151, !noalias !150
  %wide.load70 = load <4 x float>, ptr %i.eu, align 4, !tbaa !27, !alias.scope !151, !noalias !150
  %i.ev = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load69)
  %i.ew = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load68, <4 x float> %wide.load70)
  store <4 x float> %i.ev, ptr %i.et, align 4, !tbaa !27, !alias.scope !151, !noalias !150
  store <4 x float> %i.ew, ptr %i.eu, align 4, !tbaa !27, !alias.scope !151, !noalias !150
  %index.next71 = add nuw i64 %index67, 8         ; 2 uses
  %i.ex = icmp eq i64 %index.next71, %n.vec65
  br i1 %i.ex, label %middle.block72, label %vector.body66, !llvm.loop !127

middle.block72:                                   ; preds = %vector.body66
  br i1 %cmp.n73, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph62.preheader

scalar.ph62.preheader:                            ; preds = %vector.memcheck, %.lr.ph62.i, %middle.block72
  %.061.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph62.i ], [ %n.vec65, %middle.block72 ] ; 5 uses
  br i1 %lcmp.mod248.not, label %scalar.ph62.prol.loopexit, label %scalar.ph62.prol

scalar.ph62.prol:                                 ; preds = %scalar.ph62.preheader
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.061.i.ph
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !27
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.061.i.ph ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !27
  %i.fc = extractelement <2 x float> %i.an, i64 0
  %i.fd = tail call nsz float @llvm.fmuladd.f32(float %i.fc, float %i.ez, float %i.fb)
  store float %i.fd, ptr %i.fa, align 4, !tbaa !27
  %i.fe = or disjoint i64 %.061.i.ph, 1
  br label %scalar.ph62.prol.loopexit

scalar.ph62.prol.loopexit:                        ; preds = %scalar.ph62.prol, %scalar.ph62.preheader
  %.061.i.unr = phi i64 [ %.061.i.ph, %scalar.ph62.preheader ], [ %i.fe, %scalar.ph62.prol ]
  %i.ff = icmp eq i64 %.061.i.ph, %i.ai
  br i1 %i.ff, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph62.preheader.new

scalar.ph62.preheader.new:                        ; preds = %scalar.ph62.prol.loopexit
  %i.fg = extractelement <2 x float> %i.an, i64 0
  %i.fh = extractelement <2 x float> %i.an, i64 0
  br label %scalar.ph62

scalar.ph97:                                      ; preds = %scalar.ph97.prol.loopexit, %scalar.ph97
  %.03658.i = phi i64 [ %i.gf, %scalar.ph97 ], [ %.03658.i.unr, %scalar.ph97.prol.loopexit ] ; 6 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.03658.i ; 3 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !27
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.03658.i
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !27
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.03658.i ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !27
  %i.fo = tail call nsz float @llvm.fmuladd.f32(float %i.fj, float %i.fl, float %i.fn)
  store float %i.fo, ptr %i.fm, align 4, !tbaa !27
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03658.i
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !27
  %i.fr = load float, ptr %i.fi, align 4, !tbaa !27
  %i.fs = fmul nsz float %i.fq, %i.fr
  store float %i.fs, ptr %i.fi, align 4, !tbaa !27
  %i.ft = add nuw nsw i64 %.03658.i, 1            ; 4 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ft ; 3 uses
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !27
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.ft
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !27
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ft ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !27
  %i.ga = tail call nsz float @llvm.fmuladd.f32(float %i.fv, float %i.fx, float %i.fz)
  store float %i.ga, ptr %i.fy, align 4, !tbaa !27
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ft
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !27
  %i.gd = load float, ptr %i.fu, align 4, !tbaa !27
  %i.ge = fmul nsz float %i.gc, %i.gd
  store float %i.ge, ptr %i.fu, align 4, !tbaa !27
  %i.gf = add nuw nsw i64 %.03658.i, 2            ; 2 uses
  %.not42.i.1 = icmp eq i64 %i.gf, %i.f
  br i1 %.not42.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph97, !llvm.loop !128

scalar.ph62:                                      ; preds = %scalar.ph62, %scalar.ph62.preheader.new
  %.061.i = phi i64 [ %.061.i.unr, %scalar.ph62.preheader.new ], [ %i.gr, %scalar.ph62 ] ; 4 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.061.i
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !27
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.061.i ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !27
  %i.gk = tail call nsz float @llvm.fmuladd.f32(float %i.fg, float %i.gh, float %i.gj)
  store float %i.gk, ptr %i.gi, align 4, !tbaa !27
  %i.gl = add nuw nsw i64 %.061.i, 1              ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !27
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.gl ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !27
  %i.gq = tail call nsz float @llvm.fmuladd.f32(float %i.fh, float %i.gn, float %i.gp)
  store float %i.gq, ptr %i.go, align 4, !tbaa !27
  %i.gr = add nuw nsw i64 %.061.i, 2              ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.gr, %i.f
  br i1 %.not41.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph62, !llvm.loop !129

_ZN5Noise13updateResultsEfPfPKfm.exit:            ; preds = %scalar.ph180, %scalar.ph137.prol.loopexit, %scalar.ph137, %scalar.ph97.prol.loopexit, %scalar.ph97, %scalar.ph62.prol.loopexit, %scalar.ph62, %middle.block212, %middle.block154, %middle.block128, %middle.block72, %.preheader50.i, %.preheader48.i, %.preheader46.i, %.preheader.i
  %i.gs = load <2 x float>, ptr %i.ae, align 4, !tbaa !27
  %i.gt = fmul nsz <2 x float> %i.an, %i.gs
  %i.gu = add nuw nsw i64 %.02843, 1              ; 2 uses
  %i.gv = load i16, ptr %i.x, align 8, !tbaa !48
  %i.gw = zext i16 %i.gv to i64
  %i.gx = icmp samesign ult i64 %i.gu, %i.gw
  br i1 %i.gx, label %bb.e, label %._crit_edge, !llvm.loop !130

bb.h:                                             ; preds = %._crit_edge
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !67
  %i.ha = fadd nsz float %i.gz, -1.000000e+00
  %i.hb = tail call nsz noundef float @llvm.fabs.f32(float %i.ha)
  %i.hc = fpext nsz float %i.hb to double
  %i.hd = fcmp nsz ule double %i.hc, 1.000000e-05
  %.not3445 = icmp eq i32 %i.e, 0
  %or.cond = select i1 %i.hd, i1 true, i1 %.not3445
  br i1 %or.cond, label %.loopexit, label %.lr.ph48

bb.i:                                             ; preds = %._crit_edge
  %.not3445.old = icmp eq i32 %i.e, 0
  br i1 %.not3445.old, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %bb.h, %bb.i
  %i.he = load ptr, ptr %i.l, align 8, !tbaa !47  ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %min.iters.check222 = icmp ult i32 %i.e, 8
  br i1 %min.iters.check222, label %scalar.ph221.preheader, label %vector.memcheck223

vector.memcheck223:                               ; preds = %.lr.ph48
  %i.hg = shl nuw nsw i64 %i.f, 2
  %i.hh = getelementptr i8, ptr %i.he, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %bound0224 = icmp ult ptr %i.he, %i.hi
  %bound1225 = icmp ult ptr %0, %i.hh
  %found.conflict226 = and i1 %bound0224, %bound1225
  br i1 %found.conflict226, label %scalar.ph221.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %vector.memcheck223
  %n.vec228 = and i64 %i.f, 4294967288            ; 3 uses
  %i.hj = load <1 x float>, ptr %i.hf, align 4
  %broadcast.splat234 = shufflevector <1 x float> %i.hj, <1 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hk = load <1 x float>, ptr %0, align 8
  %broadcast.splat236 = shufflevector <1 x float> %i.hk, <1 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next237, %vector.body229 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %index230 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %wide.load231 = load <4 x float>, ptr %i.hl, align 4, !tbaa !27, !alias.scope !152, !noalias !153
  %wide.load232 = load <4 x float>, ptr %i.hm, align 4, !tbaa !27, !alias.scope !152, !noalias !153
  %i.hn = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load231, <4 x float> %broadcast.splat234, <4 x float> %broadcast.splat236)
  %i.ho = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load232, <4 x float> %broadcast.splat234, <4 x float> %broadcast.splat236)
  store <4 x float> %i.hn, ptr %i.hl, align 4, !tbaa !27, !alias.scope !152, !noalias !153
  store <4 x float> %i.ho, ptr %i.hm, align 4, !tbaa !27, !alias.scope !152, !noalias !153
  %index.next237 = add nuw i64 %index230, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next237, %n.vec228
  br i1 %i.hp, label %middle.block238, label %vector.body229, !llvm.loop !134

middle.block238:                                  ; preds = %vector.body229
  %cmp.n239 = icmp eq i64 %n.vec228, %i.f
  br i1 %cmp.n239, label %.loopexit, label %scalar.ph221.preheader

scalar.ph221.preheader:                           ; preds = %vector.memcheck223, %.lr.ph48, %middle.block238
  %.046.ph = phi i64 [ 0, %vector.memcheck223 ], [ 0, %.lr.ph48 ], [ %n.vec228, %middle.block238 ] ; 4 uses
  %xtraiter249 = and i64 %i.f, 1
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  br i1 %lcmp.mod250.not, label %scalar.ph221.prol.loopexit, label %scalar.ph221.prol

scalar.ph221.prol:                                ; preds = %scalar.ph221.preheader
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.046.ph ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !27
  %i.hs = load float, ptr %i.hf, align 4, !tbaa !67
  %i.ht = load float, ptr %0, align 8, !tbaa !65
  %i.hu = tail call nsz float @llvm.fmuladd.f32(float %i.hr, float %i.hs, float %i.ht)
  store float %i.hu, ptr %i.hq, align 4, !tbaa !27
  %i.hv = or disjoint i64 %.046.ph, 1
  br label %scalar.ph221.prol.loopexit

scalar.ph221.prol.loopexit:                       ; preds = %scalar.ph221.prol, %scalar.ph221.preheader
  %.046.unr = phi i64 [ %.046.ph, %scalar.ph221.preheader ], [ %i.hv, %scalar.ph221.prol ]
  %i.hw = add nsw i64 %i.f, -1
  %i.hx = icmp eq i64 %.046.ph, %i.hw
  br i1 %i.hx, label %.loopexit, label %scalar.ph221

scalar.ph221:                                     ; preds = %scalar.ph221.prol.loopexit, %scalar.ph221
  %.046 = phi i64 [ %i.ij, %scalar.ph221 ], [ %.046.unr, %scalar.ph221.prol.loopexit ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.046 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !27
  %i.ia = load float, ptr %i.hf, align 4, !tbaa !67
  %i.ib = load float, ptr %0, align 8, !tbaa !65
  %i.ic = tail call nsz float @llvm.fmuladd.f32(float %i.hz, float %i.ia, float %i.ib)
  store float %i.ic, ptr %i.hy, align 4, !tbaa !27
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.046
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !27
  %i.ig = load float, ptr %i.hf, align 4, !tbaa !67
  %i.ih = load float, ptr %0, align 8, !tbaa !65
  %i.ii = tail call nsz float @llvm.fmuladd.f32(float %i.if, float %i.ig, float %i.ih)
  store float %i.ii, ptr %i.ie, align 4, !tbaa !27
  %i.ij = add nuw nsw i64 %.046, 2                ; 2 uses
  %.not34.1 = icmp eq i64 %i.ij, %i.f
  br i1 %.not34.1, label %.loopexit, label %scalar.ph221, !llvm.loop !135

.loopexit:                                        ; preds = %scalar.ph221.prol.loopexit, %scalar.ph221, %middle.block238, %bb.i, %bb.h
  %i.ik = load ptr, ptr %i.l, align 8, !tbaa !47
  ret ptr %i.ik
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN5Noise13updateResultsEfPfPKfm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, float noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  %i.c = and i32 %i.b, 4
  %.not = icmp eq i32 %i.c, 0
  %.not40 = icmp eq ptr %3, null                  ; 2 uses
  %.not4160 = icmp eq i64 %4, 0                   ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not40, label %.preheader48, label %.preheader50

.preheader50:                                     ; preds = %bb.b
  br i1 %.not4160, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 6 uses
  %min.iters.check = icmp ult i64 %4, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.h = shl i64 %4, 2                            ; 4 uses
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h     ; 3 uses
  %i.j = getelementptr i8, ptr %2, i64 %i.h       ; 3 uses
  %bound0 = icmp ult ptr %i.g, %i.j
  %bound0.a = icmp ult ptr %2, %i.i
  %found.conflict = and i1 %bound0, %bound0.a
  %5 = getelementptr i8, ptr %i.e, i64 %i.h       ; 2 uses
  %bound092 = icmp ult ptr %i.g, %5
  %bound193 = icmp ult ptr %i.e, %i.i
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx = or i1 %found.conflict, %found.conflict94
  %6 = getelementptr i8, ptr %3, i64 %i.h         ; 2 uses
  %bound095 = icmp ult ptr %i.g, %6
  %bound196 = icmp ult ptr %3, %i.i
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx, %found.conflict97
  %bound099 = icmp ult ptr %2, %5
  %bound1100 = icmp ult ptr %i.e, %i.j
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx98, %found.conflict101
  %bound0103 = icmp ult ptr %2, %6
  %bound1104 = icmp ult ptr %3, %i.j
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx102, %found.conflict105
  br i1 %conflict.rdx106, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 3 uses
  %wide.load = load <4 x float>, ptr %i.k, align 4, !tbaa !27, !alias.scope !178, !noalias !179
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  %wide.load107 = load <4 x float>, ptr %i.l, align 4, !tbaa !27, !alias.scope !180
  %i.m = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load107)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %wide.load108 = load <4 x float>, ptr %i.n, align 4, !tbaa !27, !alias.scope !181, !noalias !182
  %i.o = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %i.m, <4 x float> %wide.load108)
  store <4 x float> %i.o, ptr %i.n, align 4, !tbaa !27, !alias.scope !181, !noalias !182
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load109 = load <4 x float>, ptr %i.p, align 4, !tbaa !27, !alias.scope !183
  %wide.load110 = load <4 x float>, ptr %i.k, align 4, !tbaa !27, !alias.scope !178, !noalias !179
  %i.q = fmul nsz <4 x float> %wide.load109, %wide.load110
  store <4 x float> %i.q, ptr %i.k, align 4, !tbaa !27, !alias.scope !178, !noalias !179
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.03853.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader48:                                     ; preds = %bb.b
  br i1 %.not4160, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.preheader48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !45   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !47   ; 6 uses
  %min.iters.check117 = icmp ult i64 %4, 8
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph56
  %i.w = shl i64 %4, 2                            ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.t, i64 %i.w
  %bound0119 = icmp ult ptr %i.v, %i.y
  %bound1120 = icmp ult ptr %i.t, %i.x
  %found.conflict121 = and i1 %bound0119, %bound1120
  br i1 %found.conflict121, label %scalar.ph116.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck118
  %n.vec123 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body124 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index125 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load126 = load <4 x float>, ptr %i.z, align 4, !tbaa !27, !alias.scope !184
  %wide.load127 = load <4 x float>, ptr %i.aa, align 4, !tbaa !27, !alias.scope !184
  %i.ab = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load126)
  %i.ac = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load127)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index125 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load128 = load <4 x float>, ptr %i.ad, align 4, !tbaa !27, !alias.scope !185, !noalias !184
  %wide.load129 = load <4 x float>, ptr %i.ae, align 4, !tbaa !27, !alias.scope !185, !noalias !184
  %i.af = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ab, <4 x float> %wide.load128)
  %i.ag = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.ac, <4 x float> %wide.load129)
  store <4 x float> %i.af, ptr %i.ad, align 4, !tbaa !27, !alias.scope !185, !noalias !184
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !27, !alias.scope !185, !noalias !184
  %index.next130 = add nuw i64 %index125, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.ah, label %middle.block131, label %vector.body124, !llvm.loop !163

middle.block131:                                  ; preds = %vector.body124
  %cmp.n132 = icmp eq i64 %4, %n.vec123
  br i1 %cmp.n132, label %.loopexit, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %vector.memcheck118, %.lr.ph56, %middle.block131
  %.03755.ph = phi i64 [ 0, %vector.memcheck118 ], [ 0, %.lr.ph56 ], [ %n.vec123, %middle.block131 ] ; 5 uses
  %.neg = or disjoint i64 %.03755.ph, 1
  %xtraiter = and i64 %4, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol

scalar.ph116.prol:                                ; preds = %scalar.ph116.preheader
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.03755.ph
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !27
  %i.ak = tail call nsz noundef float @llvm.fabs.f32(float %i.aj)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.03755.ph ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !27
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %1, float %i.ak, float %i.am)
  store float %i.an, ptr %i.al, align 4, !tbaa !27
  %i.ao = or disjoint i64 %.03755.ph, 1
  br label %scalar.ph116.prol.loopexit

scalar.ph116.prol.loopexit:                       ; preds = %scalar.ph116.prol, %scalar.ph116.preheader
  %.03755.unr = phi i64 [ %.03755.ph, %scalar.ph116.preheader ], [ %i.ao, %scalar.ph116.prol ]
  %i.ap = icmp eq i64 %4, %.neg
  br i1 %i.ap, label %.loopexit, label %scalar.ph116

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03853 = phi i64 [ %i.bc, %scalar.ph ], [ %.03853.ph, %scalar.ph.preheader ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03853 ; 3 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !27
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.03853
  %i.at = load float, ptr %i.as, align 4, !tbaa !27
  %i.au = tail call nsz noundef float @llvm.fabs.f32(float %i.at)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.03853 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !27
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.au, float %i.aw)
  store float %i.ax, ptr %i.av, align 4, !tbaa !27
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03853
  %i.az = load float, ptr %i.ay, align 4, !tbaa !27
  %i.ba = load float, ptr %i.aq, align 4, !tbaa !27
  %i.bb = fmul nsz float %i.az, %i.ba
  store float %i.bb, ptr %i.aq, align 4, !tbaa !27
  %i.bc = add nuw i64 %.03853, 1                  ; 2 uses
  %.not45 = icmp eq i64 %i.bc, %4
  br i1 %.not45, label %.loopexit, label %scalar.ph, !llvm.loop !164

scalar.ph116:                                     ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116
  %.03755 = phi i64 [ %i.bq, %scalar.ph116 ], [ %.03755.unr, %scalar.ph116.prol.loopexit ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.03755
  %i.be = load float, ptr %i.bd, align 4, !tbaa !27
  %i.bf = tail call nsz noundef float @llvm.fabs.f32(float %i.be)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.03755 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !27
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %1, float %i.bf, float %i.bh)
  store float %i.bi, ptr %i.bg, align 4, !tbaa !27
  %i.bj = add nuw i64 %.03755, 1                  ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !27
  %i.bm = tail call nsz noundef float @llvm.fabs.f32(float %i.bl)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bj ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !27
  %i.bp = tail call nsz float @llvm.fmuladd.f32(float %1, float %i.bm, float %i.bo)
  store float %i.bp, ptr %i.bn, align 4, !tbaa !27
  %i.bq = add nuw i64 %.03755, 2                  ; 2 uses
  %.not44.1 = icmp eq i64 %i.bq, %4
  br i1 %.not44.1, label %.loopexit, label %scalar.ph116, !llvm.loop !165

bb.c:                                             ; preds = %bb.a
  br i1 %.not40, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.c
  br i1 %.not4160, label %.loopexit, label %.lr.ph59

.lr.ph59:                                         ; preds = %.preheader46
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45 ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47 ; 8 uses
  %min.iters.check158 = icmp ult i64 %4, 16
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.lr.ph59
  %i.bv = shl i64 %4, 2                           ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 %i.bv  ; 3 uses
  %i.bx = getelementptr i8, ptr %2, i64 %i.bv     ; 3 uses
  %bound0160 = icmp ult ptr %i.bu, %i.bx
  %bound0160.a = icmp ult ptr %2, %i.bw
  %found.conflict162 = and i1 %bound0160, %bound0160.a
  %7 = getelementptr i8, ptr %i.bs, i64 %i.bv     ; 2 uses
  %bound0163 = icmp ult ptr %i.bu, %7
  %bound1164 = icmp ult ptr %i.bs, %i.bw
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx166 = or i1 %found.conflict162, %found.conflict165
  %8 = getelementptr i8, ptr %3, i64 %i.bv        ; 2 uses
  %bound0167 = icmp ult ptr %i.bu, %8
  %bound1168 = icmp ult ptr %3, %i.bw
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx166, %found.conflict169
  %bound0171 = icmp ult ptr %2, %7
  %bound1172 = icmp ult ptr %i.bs, %i.bx
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %2, %8
  %bound1176 = icmp ult ptr %3, %i.bx
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  br i1 %conflict.rdx178, label %scalar.ph157.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck159
  %n.vec180 = and i64 %4, -4                      ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body181 ] ; 5 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index182 ; 3 uses
  %wide.load183 = load <4 x float>, ptr %i.by, align 4, !tbaa !27, !alias.scope !186, !noalias !187
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index182
  %wide.load184 = load <4 x float>, ptr %i.bz, align 4, !tbaa !27, !alias.scope !188
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index182 ; 2 uses
  %wide.load185 = load <4 x float>, ptr %i.ca, align 4, !tbaa !27, !alias.scope !189, !noalias !190
  %i.cb = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load183, <4 x float> %wide.load184, <4 x float> %wide.load185)
  store <4 x float> %i.cb, ptr %i.ca, align 4, !tbaa !27, !alias.scope !189, !noalias !190
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index182
  %wide.load186 = load <4 x float>, ptr %i.cc, align 4, !tbaa !27, !alias.scope !191
  %wide.load187 = load <4 x float>, ptr %i.by, align 4, !tbaa !27, !alias.scope !186, !noalias !187
  %i.cd = fmul nsz <4 x float> %wide.load186, %wide.load187
  store <4 x float> %i.cd, ptr %i.by, align 4, !tbaa !27, !alias.scope !186, !noalias !187
  %index.next188 = add nuw i64 %index182, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next188, %n.vec180
  br i1 %i.ce, label %middle.block189, label %vector.body181, !llvm.loop !171

middle.block189:                                  ; preds = %vector.body181
  %cmp.n190 = icmp eq i64 %4, %n.vec180
  br i1 %cmp.n190, label %.loopexit, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %vector.memcheck159, %.lr.ph59, %middle.block189
  %.03658.ph = phi i64 [ 0, %vector.memcheck159 ], [ 0, %.lr.ph59 ], [ %n.vec180, %middle.block189 ] ; 7 uses
  %.neg224 = or disjoint i64 %.03658.ph, 1
  %xtraiter220 = and i64 %4, 1
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %scalar.ph157.prol.loopexit, label %scalar.ph157.prol

scalar.ph157.prol:                                ; preds = %scalar.ph157.preheader
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03658.ph ; 3 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !27
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03658.ph
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !27
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.03658.ph ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !27
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.ci, float %i.ck)
  store float %i.cl, ptr %i.cj, align 4, !tbaa !27
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03658.ph
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !27
  %i.co = load float, ptr %i.cf, align 4, !tbaa !27
  %i.cp = fmul nsz float %i.cn, %i.co
  store float %i.cp, ptr %i.cf, align 4, !tbaa !27
  %i.cq = or disjoint i64 %.03658.ph, 1
  br label %scalar.ph157.prol.loopexit

scalar.ph157.prol.loopexit:                       ; preds = %scalar.ph157.prol, %scalar.ph157.preheader
  %.03658.unr = phi i64 [ %.03658.ph, %scalar.ph157.preheader ], [ %i.cq, %scalar.ph157.prol ]
  %i.cr = icmp eq i64 %4, %.neg224
  br i1 %i.cr, label %.loopexit, label %scalar.ph157

.preheader:                                       ; preds = %bb.c
  br i1 %.not4160, label %.loopexit, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !45 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !47 ; 6 uses
  %min.iters.check198 = icmp ult i64 %4, 8
  br i1 %min.iters.check198, label %scalar.ph197.preheader, label %vector.memcheck199

vector.memcheck199:                               ; preds = %.lr.ph62
  %i.cw = shl i64 %4, 2                           ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cv, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.ct, i64 %i.cw
  %bound0200 = icmp ult ptr %i.cv, %i.cy
  %bound1201 = icmp ult ptr %i.ct, %i.cx
  %found.conflict202 = and i1 %bound0200, %bound1201
  br i1 %found.conflict202, label %scalar.ph197.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck199
  %n.vec204 = and i64 %4, -8                      ; 3 uses
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat206 = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next213, %vector.body207 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index208 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load209 = load <4 x float>, ptr %i.cz, align 4, !tbaa !27, !alias.scope !192
  %wide.load210 = load <4 x float>, ptr %i.da, align 4, !tbaa !27, !alias.scope !192
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index208 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %wide.load211 = load <4 x float>, ptr %i.db, align 4, !tbaa !27, !alias.scope !193, !noalias !192
  %wide.load212 = load <4 x float>, ptr %i.dc, align 4, !tbaa !27, !alias.scope !193, !noalias !192
  %i.dd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat206, <4 x float> %wide.load209, <4 x float> %wide.load211)
  %i.de = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat206, <4 x float> %wide.load210, <4 x float> %wide.load212)
  store <4 x float> %i.dd, ptr %i.db, align 4, !tbaa !27, !alias.scope !193, !noalias !192
  store <4 x float> %i.de, ptr %i.dc, align 4, !tbaa !27, !alias.scope !193, !noalias !192
  %index.next213 = add nuw i64 %index208, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.df, label %middle.block214, label %vector.body207, !llvm.loop !175

middle.block214:                                  ; preds = %vector.body207
  %cmp.n215 = icmp eq i64 %4, %n.vec204
  br i1 %cmp.n215, label %.loopexit, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %vector.memcheck199, %.lr.ph62, %middle.block214
  %.061.ph = phi i64 [ 0, %vector.memcheck199 ], [ 0, %.lr.ph62 ], [ %n.vec204, %middle.block214 ] ; 5 uses
  %.neg225 = or disjoint i64 %.061.ph, 1
  %xtraiter222 = and i64 %4, 1
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol

scalar.ph197.prol:                                ; preds = %scalar.ph197.preheader
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.061.ph
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !27
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.061.ph ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !27
  %i.dk = tail call nsz float @llvm.fmuladd.f32(float %1, float %i.dh, float %i.dj)
  store float %i.dk, ptr %i.di, align 4, !tbaa !27
  %i.dl = or disjoint i64 %.061.ph, 1
  br label %scalar.ph197.prol.loopexit

scalar.ph197.prol.loopexit:                       ; preds = %scalar.ph197.prol, %scalar.ph197.preheader
  %.061.unr = phi i64 [ %.061.ph, %scalar.ph197.preheader ], [ %i.dl, %scalar.ph197.prol ]
  %i.dm = icmp eq i64 %4, %.neg225
  br i1 %i.dm, label %.loopexit, label %scalar.ph197

scalar.ph157:                                     ; preds = %scalar.ph157.prol.loopexit, %scalar.ph157
  %.03658 = phi i64 [ %i.ek, %scalar.ph157 ], [ %.03658.unr, %scalar.ph157.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.03658 ; 3 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !27
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.03658
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !27
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %.03658 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !27
  %i.dt = tail call nsz float @llvm.fmuladd.f32(float %i.do, float %i.dq, float %i.ds)
  store float %i.dt, ptr %i.dr, align 4, !tbaa !27
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.03658
  %i.dv = load float, ptr %i.du, align 4, !tbaa !27
  %i.dw = load float, ptr %i.dn, align 4, !tbaa !27
  %i.dx = fmul nsz float %i.dv, %i.dw
  store float %i.dx, ptr %i.dn, align 4, !tbaa !27
  %i.dy = add nuw i64 %.03658, 1                  ; 4 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dy ; 3 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !27
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.dy
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !27
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.dy ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !27
  %i.ef = tail call nsz float @llvm.fmuladd.f32(float %i.ea, float %i.ec, float %i.ee)
  store float %i.ef, ptr %i.ed, align 4, !tbaa !27
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dy
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !27
  %i.ei = load float, ptr %i.dz, align 4, !tbaa !27
  %i.ej = fmul nsz float %i.eh, %i.ei
  store float %i.ej, ptr %i.dz, align 4, !tbaa !27
  %i.ek = add nuw i64 %.03658, 2                  ; 2 uses
  %.not42.1 = icmp eq i64 %i.ek, %4
  br i1 %.not42.1, label %.loopexit, label %scalar.ph157, !llvm.loop !176

scalar.ph197:                                     ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197
  %.061 = phi i64 [ %i.ew, %scalar.ph197 ], [ %.061.unr, %scalar.ph197.prol.loopexit ] ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.061
  %i.em = load float, ptr %i.el, align 4, !tbaa !27
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.061 ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !27
  %i.ep = tail call nsz float @llvm.fmuladd.f32(float %1, float %i.em, float %i.eo)
  store float %i.ep, ptr %i.en, align 4, !tbaa !27
  %i.eq = add nuw i64 %.061, 1                    ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !27
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.eq ; 2 uses
  %i.eu = load float, ptr %i.et, align 4, !tbaa !27
  %i.ev = tail call nsz float @llvm.fmuladd.f32(float %1, float %i.es, float %i.eu)
  store float %i.ev, ptr %i.et, align 4, !tbaa !27
  %i.ew = add nuw i64 %.061, 2                    ; 2 uses
  %.not41.1 = icmp eq i64 %i.ew, %4
  br i1 %.not41.1, label %.loopexit, label %scalar.ph197, !llvm.loop !177

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph116.prol.loopexit, %scalar.ph116, %scalar.ph157.prol.loopexit, %scalar.ph157, %scalar.ph197.prol.loopexit, %scalar.ph197, %middle.block, %middle.block131, %middle.block189, %middle.block214, %.preheader50, %.preheader48, %.preheader46, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = mul i32 %i.d, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !43
  %i.h = mul i32 %i.e, %i.g                       ; 11 uses
  %i.i = zext i32 %i.h to i64                     ; 29 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load float, ptr %i.j, align 8, !tbaa !226
  %i.l = fdiv nsz float %1, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <2 x float>, ptr %i.m, align 4, !tbaa !27
  %i.o = insertelement <2 x float> poison, float %2, i64 0
  %i.p = insertelement <2 x float> %i.o, float %3, i64 1
  %i.q = fdiv nsz <2 x float> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.t = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %i.t, i1 false)
  %.not = icmp eq ptr %4, null                    ; 3 uses
  br i1 %.not, label %.loopexit42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 2 uses
  %.not36 = icmp eq ptr %i.v, null
  br i1 %.not36, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #30 ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.not3743 = icmp eq i32 %i.h, 0
  br i1 %.not3743, label %.loopexit42, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader248, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4294967288               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %i.y, align 4, !tbaa !27
  store <4 x float> splat (float 1.000000e+00), ptr %i.z, align 4, !tbaa !27
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br i1 %cmp.n, label %.loopexit42, label %.lr.ph.preheader248

.lr.ph.preheader248:                              ; preds = %.lr.ph.preheader, %middle.block
  %.03344.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader248, %.lr.ph
  %.03344 = phi i64 [ %i.ac, %.lr.ph ], [ %.03344.ph, %.lr.ph.preheader248 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.03344
  store float 1.000000e+00, ptr %i.ab, align 4, !tbaa !27
  %i.ac = add nuw nsw i64 %.03344, 1              ; 2 uses
  %.not37 = icmp eq i64 %i.ac, %i.i
  br i1 %.not37, label %.loopexit42, label %.lr.ph, !llvm.loop !195

.loopexit42:                                      ; preds = %.lr.ph, %middle.block, %bb.d, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !48
  %.not53 = icmp eq i16 %i.ae, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph48

.lr.ph48:                                         ; preds = %.loopexit42
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.not4160.i = icmp eq i32 %i.h, 0               ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = shl nuw nsw i64 %i.i, 2                 ; 11 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.al  ; 4 uses
  %min.iters.check185 = icmp ult i32 %i.h, 8
  %n.vec207 = and i64 %i.i, 4294967292            ; 3 uses
  %cmp.n217 = icmp eq i64 %n.vec207, %i.i
  %min.iters.check142 = icmp ult i32 %i.h, 8
  %n.vec148 = and i64 %i.i, 4294967288            ; 3 uses
  %cmp.n159 = icmp eq i64 %n.vec148, %i.i
  %xtraiter = and i64 %i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.am = add nsw i64 %i.i, -1
  %min.iters.check102 = icmp ult i32 %i.h, 8
  %n.vec123 = and i64 %i.i, 4294967292            ; 3 uses
  %cmp.n133 = icmp eq i64 %n.vec123, %i.i
  %xtraiter249 = and i64 %i.i, 1
  %lcmp.mod250.not = icmp eq i64 %xtraiter249, 0
  %i.an = add nsw i64 %i.i, -1
  %min.iters.check67 = icmp ult i32 %i.h, 8
  %n.vec69 = and i64 %i.i, 4294967288             ; 3 uses
  %cmp.n77 = icmp eq i64 %n.vec69, %i.i
  %xtraiter251 = and i64 %i.i, 1
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  %i.ao = add nsw i64 %i.i, -1
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN5Noise13updateResultsEfPfPKfm.exit, %.loopexit42
  %i.ap = load float, ptr %0, align 8, !tbaa !65
  %i.aq = tail call nsz noundef float @llvm.fabs.f32(float %i.ap)
  %i.ar = fpext nsz float %i.aq to double
  %i.as = fcmp nsz ogt double %i.ar, 1.000000e-05
  br i1 %i.as, label %bb.i, label %bb.h

bb.e:                                             ; preds = %.lr.ph48, %_ZN5Noise13updateResultsEfPfPKfm.exit
  %.03247 = phi i64 [ 0, %.lr.ph48 ], [ %i.he, %_ZN5Noise13updateResultsEfPfPKfm.exit ] ; 2 uses
  %i.at = phi <2 x float> [ splat (float 1.000000e+00), %.lr.ph48 ], [ %i.hd, %_ZN5Noise13updateResultsEfPfPKfm.exit ] ; 11 uses
  %i.au = extractelement <2 x float> %i.at, i64 1 ; 2 uses
  %i.av = fmul nsz float %i.l, %i.au
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ax = fmul nsz <2 x float> %i.q, %i.aw        ; 2 uses
  %i.ay = load float, ptr %i.j, align 8, !tbaa !226
  %i.az = fdiv nsz float %i.au, %i.ay
  %i.ba = load <2 x float>, ptr %i.m, align 4, !tbaa !27
  %i.bb = fdiv nsz <2 x float> %i.aw, %i.ba       ; 2 uses
  %i.bc = load i32, ptr %i.af, align 8, !tbaa !40
  %i.bd = load i32, ptr %i.ag, align 4, !tbaa !66
  %i.be = trunc nuw nsw i64 %.03247 to i32
  %i.bf = add i32 %i.bc, %i.be
  %i.bg = add i32 %i.bf, %i.bd
  %i.bh = extractelement <2 x float> %i.bb, i64 0
  %i.bi = extractelement <2 x float> %i.bb, i64 1
  %i.bj = extractelement <2 x float> %i.ax, i64 0
  %i.bk = extractelement <2 x float> %i.ax, i64 1
  tail call void @_ZN5Noise10valueMap3DEffffffi(ptr noundef nonnull align 8 dereferenceable(88) %0, float noundef %i.av, float noundef %i.bj, float noundef %i.bk, float noundef %i.az, float noundef %i.bh, float noundef %i.bi, i32 noundef %i.bg)
  %i.bl = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 14 uses
  %i.bm = load i32, ptr %i.ai, align 4, !tbaa !62
  %i.bn = and i32 %i.bm, 4
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not, label %.preheader48.i, label %.preheader50.i

.preheader50.i:                                   ; preds = %bb.f
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader50.i
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 5 uses
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !47  ; 6 uses
  br i1 %min.iters.check185, label %scalar.ph184.preheader, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.al  ; 3 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 %i.al  ; 3 uses
  %bound0187 = icmp ult ptr %i.bp, %i.br
  %bound0187.a = icmp ult ptr %i.bl, %i.bq
  %found.conflict189 = and i1 %bound0187, %bound0187.a
  %5 = getelementptr i8, ptr %i.bo, i64 %i.al     ; 2 uses
  %bound0190 = icmp ult ptr %i.bp, %5
  %bound1191 = icmp ult ptr %i.bo, %i.bq
  %found.conflict192 = and i1 %bound0190, %bound1191
  %conflict.rdx193 = or i1 %found.conflict189, %found.conflict192
  %bound0194 = icmp ult ptr %i.bp, %scevgep
  %bound1195 = icmp ult ptr %4, %i.bq
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx193, %found.conflict196
  %bound0198 = icmp ult ptr %i.bl, %5
  %bound1199 = icmp ult ptr %i.bo, %i.br
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %i.bl, %scevgep
  %bound1203 = icmp ult ptr %4, %i.br
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  br i1 %conflict.rdx205, label %scalar.ph184.preheader, label %vector.body208

vector.body208:                                   ; preds = %vector.memcheck186, %vector.body208
  %index209 = phi i64 [ %index.next215, %vector.body208 ], [ 0, %vector.memcheck186 ] ; 5 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index209 ; 3 uses
  %wide.load210 = load <4 x float>, ptr %i.bs, align 4, !tbaa !27, !alias.scope !227, !noalias !228
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index209
  %wide.load211 = load <4 x float>, ptr %i.bt, align 4, !tbaa !27, !alias.scope !229
  %i.bu = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load211)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %index209 ; 2 uses
  %wide.load212 = load <4 x float>, ptr %i.bv, align 4, !tbaa !27, !alias.scope !230, !noalias !231
  %i.bw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load210, <4 x float> %i.bu, <4 x float> %wide.load212)
  store <4 x float> %i.bw, ptr %i.bv, align 4, !tbaa !27, !alias.scope !230, !noalias !231
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index209
  %wide.load213 = load <4 x float>, ptr %i.bx, align 4, !tbaa !27, !alias.scope !232
  %wide.load214 = load <4 x float>, ptr %i.bs, align 4, !tbaa !27, !alias.scope !227, !noalias !228
  %i.by = fmul nsz <4 x float> %wide.load213, %wide.load214
  store <4 x float> %i.by, ptr %i.bs, align 4, !tbaa !27, !alias.scope !227, !noalias !228
  %index.next215 = add nuw i64 %index209, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next215, %n.vec207
  br i1 %i.bz, label %middle.block216, label %vector.body208, !llvm.loop !201

middle.block216:                                  ; preds = %vector.body208
  br i1 %cmp.n217, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph184.preheader

scalar.ph184.preheader:                           ; preds = %vector.memcheck186, %.lr.ph.i, %middle.block216
  %.03853.i.ph = phi i64 [ 0, %vector.memcheck186 ], [ 0, %.lr.ph.i ], [ %n.vec207, %middle.block216 ]
  br label %scalar.ph184

.preheader48.i:                                   ; preds = %bb.f
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.preheader48.i
  %i.ca = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 6 uses
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !47  ; 6 uses
  br i1 %min.iters.check142, label %scalar.ph141.preheader, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph56.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.al
  %i.cd = getelementptr i8, ptr %i.ca, i64 %i.al
  %bound0144 = icmp ult ptr %i.cb, %i.cd
  %bound1145 = icmp ult ptr %i.ca, %i.cc
  %found.conflict146 = and i1 %bound0144, %bound1145
  br i1 %found.conflict146, label %scalar.ph141.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %vector.memcheck143
  %broadcast.splat150 = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph147
  %index152 = phi i64 [ 0, %vector.ph147 ], [ %index.next157, %vector.body151 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index152 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %wide.load153 = load <4 x float>, ptr %i.ce, align 4, !tbaa !27, !alias.scope !233
  %wide.load154 = load <4 x float>, ptr %i.cf, align 4, !tbaa !27, !alias.scope !233
  %i.cg = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load153)
  %i.ch = tail call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load154)
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index152 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %wide.load155 = load <4 x float>, ptr %i.ci, align 4, !tbaa !27, !alias.scope !234, !noalias !233
  %wide.load156 = load <4 x float>, ptr %i.cj, align 4, !tbaa !27, !alias.scope !234, !noalias !233
  %i.ck = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat150, <4 x float> %i.cg, <4 x float> %wide.load155)
  %i.cl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat150, <4 x float> %i.ch, <4 x float> %wide.load156)
  store <4 x float> %i.ck, ptr %i.ci, align 4, !tbaa !27, !alias.scope !234, !noalias !233
  store <4 x float> %i.cl, ptr %i.cj, align 4, !tbaa !27, !alias.scope !234, !noalias !233
  %index.next157 = add nuw i64 %index152, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next157, %n.vec148
  br i1 %i.cm, label %middle.block158, label %vector.body151, !llvm.loop !205

middle.block158:                                  ; preds = %vector.body151
  br i1 %cmp.n159, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph141.preheader

scalar.ph141.preheader:                           ; preds = %vector.memcheck143, %.lr.ph56.i, %middle.block158
  %.03755.i.ph = phi i64 [ 0, %vector.memcheck143 ], [ 0, %.lr.ph56.i ], [ %n.vec148, %middle.block158 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph141.prol.loopexit, label %scalar.ph141.prol

scalar.ph141.prol:                                ; preds = %scalar.ph141.preheader
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.03755.i.ph
  %i.co = load float, ptr %i.cn, align 4, !tbaa !27
  %i.cp = tail call nsz noundef float @llvm.fabs.f32(float %i.co)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.03755.i.ph ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !27
  %i.cs = extractelement <2 x float> %i.at, i64 0
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %i.cs, float %i.cp, float %i.cr)
  store float %i.ct, ptr %i.cq, align 4, !tbaa !27
  %i.cu = or disjoint i64 %.03755.i.ph, 1
  br label %scalar.ph141.prol.loopexit

scalar.ph141.prol.loopexit:                       ; preds = %scalar.ph141.prol, %scalar.ph141.preheader
  %.03755.i.unr = phi i64 [ %.03755.i.ph, %scalar.ph141.preheader ], [ %i.cu, %scalar.ph141.prol ]
  %i.cv = icmp eq i64 %.03755.i.ph, %i.am
  br i1 %i.cv, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph141.preheader.new

scalar.ph141.preheader.new:                       ; preds = %scalar.ph141.prol.loopexit
  %i.cw = extractelement <2 x float> %i.at, i64 0
  %i.cx = extractelement <2 x float> %i.at, i64 0
  br label %scalar.ph141

scalar.ph184:                                     ; preds = %scalar.ph184.preheader, %scalar.ph184
  %.03853.i = phi i64 [ %i.dk, %scalar.ph184 ], [ %.03853.i.ph, %scalar.ph184.preheader ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.03853.i ; 3 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !27
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.03853.i
  %i.db = load float, ptr %i.da, align 4, !tbaa !27
  %i.dc = tail call nsz noundef float @llvm.fabs.f32(float %i.db)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.03853.i ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !27
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %i.cz, float %i.dc, float %i.de)
  store float %i.df, ptr %i.dd, align 4, !tbaa !27
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03853.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !27
  %i.di = load float, ptr %i.cy, align 4, !tbaa !27
  %i.dj = fmul nsz float %i.dh, %i.di
  store float %i.dj, ptr %i.cy, align 4, !tbaa !27
  %i.dk = add nuw nsw i64 %.03853.i, 1            ; 2 uses
  %.not45.i = icmp eq i64 %i.dk, %i.i
  br i1 %.not45.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph184, !llvm.loop !206

scalar.ph141:                                     ; preds = %scalar.ph141, %scalar.ph141.preheader.new
  %.03755.i = phi i64 [ %.03755.i.unr, %scalar.ph141.preheader.new ], [ %i.dy, %scalar.ph141 ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.03755.i
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !27
  %i.dn = tail call nsz noundef float @llvm.fabs.f32(float %i.dm)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.03755.i ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !27
  %i.dq = tail call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.dn, float %i.dp)
  store float %i.dq, ptr %i.do, align 4, !tbaa !27
  %i.dr = add nuw nsw i64 %.03755.i, 1            ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !27
  %i.du = tail call nsz noundef float @llvm.fabs.f32(float %i.dt)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dr ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !27
  %i.dx = tail call nsz float @llvm.fmuladd.f32(float %i.cx, float %i.du, float %i.dw)
  store float %i.dx, ptr %i.dv, align 4, !tbaa !27
  %i.dy = add nuw nsw i64 %.03755.i, 2            ; 2 uses
  %.not44.i.1 = icmp eq i64 %i.dy, %i.i
  br i1 %.not44.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph141, !llvm.loop !207

bb.g:                                             ; preds = %bb.e
  br i1 %.not, label %.preheader.i, label %.preheader46.i

.preheader46.i:                                   ; preds = %bb.g
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %.preheader46.i
  %i.dz = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 7 uses
  %i.ea = load ptr, ptr %i.r, align 8, !tbaa !47  ; 8 uses
  br i1 %min.iters.check102, label %scalar.ph101.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %.lr.ph59.i
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.al  ; 3 uses
  %i.ec = getelementptr i8, ptr %i.bl, i64 %i.al  ; 3 uses
  %bound0104 = icmp ult ptr %i.ea, %i.ec
  %bound0104.a = icmp ult ptr %i.bl, %i.eb
  %found.conflict106 = and i1 %bound0104, %bound0104.a
  %6 = getelementptr i8, ptr %i.dz, i64 %i.al     ; 2 uses
  %bound0107 = icmp ult ptr %i.ea, %6
  %bound1108 = icmp ult ptr %i.dz, %i.eb
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx = or i1 %found.conflict106, %found.conflict109
  %bound0110 = icmp ult ptr %i.ea, %scevgep
  %bound1111 = icmp ult ptr %4, %i.eb
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx113 = or i1 %conflict.rdx, %found.conflict112
  %bound0114 = icmp ult ptr %i.bl, %6
  %bound1115 = icmp ult ptr %i.dz, %i.ec
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx117 = or i1 %conflict.rdx113, %found.conflict116
  %bound0118 = icmp ult ptr %i.bl, %scevgep
  %bound1119 = icmp ult ptr %4, %i.ec
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx117, %found.conflict120
  br i1 %conflict.rdx121, label %scalar.ph101.preheader, label %vector.body124

vector.body124:                                   ; preds = %vector.memcheck103, %vector.body124
  %index125 = phi i64 [ %index.next131, %vector.body124 ], [ 0, %vector.memcheck103 ] ; 5 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %index125 ; 3 uses
  %wide.load126 = load <4 x float>, ptr %i.ed, align 4, !tbaa !27, !alias.scope !235, !noalias !236
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index125
  %wide.load127 = load <4 x float>, ptr %i.ee, align 4, !tbaa !27, !alias.scope !237
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index125 ; 2 uses
  %wide.load128 = load <4 x float>, ptr %i.ef, align 4, !tbaa !27, !alias.scope !238, !noalias !239
  %i.eg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load126, <4 x float> %wide.load127, <4 x float> %wide.load128)
  store <4 x float> %i.eg, ptr %i.ef, align 4, !tbaa !27, !alias.scope !238, !noalias !239
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index125
  %wide.load129 = load <4 x float>, ptr %i.eh, align 4, !tbaa !27, !alias.scope !240
  %wide.load130 = load <4 x float>, ptr %i.ed, align 4, !tbaa !27, !alias.scope !235, !noalias !236
  %i.ei = fmul nsz <4 x float> %wide.load129, %wide.load130
  store <4 x float> %i.ei, ptr %i.ed, align 4, !tbaa !27, !alias.scope !235, !noalias !236
  %index.next131 = add nuw i64 %index125, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next131, %n.vec123
  br i1 %i.ej, label %middle.block132, label %vector.body124, !llvm.loop !213

middle.block132:                                  ; preds = %vector.body124
  br i1 %cmp.n133, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph101.preheader

scalar.ph101.preheader:                           ; preds = %vector.memcheck103, %.lr.ph59.i, %middle.block132
  %.03658.i.ph = phi i64 [ 0, %vector.memcheck103 ], [ 0, %.lr.ph59.i ], [ %n.vec123, %middle.block132 ] ; 7 uses
  br i1 %lcmp.mod250.not, label %scalar.ph101.prol.loopexit, label %scalar.ph101.prol

scalar.ph101.prol:                                ; preds = %scalar.ph101.preheader
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.03658.i.ph ; 3 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !27
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.03658.i.ph
  %i.en = load float, ptr %i.em, align 4, !tbaa !27
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.03658.i.ph ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !27
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.el, float %i.en, float %i.ep)
  store float %i.eq, ptr %i.eo, align 4, !tbaa !27
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03658.i.ph
  %i.es = load float, ptr %i.er, align 4, !tbaa !27
  %i.et = load float, ptr %i.ek, align 4, !tbaa !27
  %i.eu = fmul nsz float %i.es, %i.et
  store float %i.eu, ptr %i.ek, align 4, !tbaa !27
  %i.ev = or disjoint i64 %.03658.i.ph, 1
  br label %scalar.ph101.prol.loopexit

scalar.ph101.prol.loopexit:                       ; preds = %scalar.ph101.prol, %scalar.ph101.preheader
  %.03658.i.unr = phi i64 [ %.03658.i.ph, %scalar.ph101.preheader ], [ %i.ev, %scalar.ph101.prol ]
  %i.ew = icmp eq i64 %.03658.i.ph, %i.an
  br i1 %i.ew, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph101

.preheader.i:                                     ; preds = %bb.g
  br i1 %.not4160.i, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %.preheader.i
  %i.ex = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 6 uses
  %i.ey = load ptr, ptr %i.r, align 8, !tbaa !47  ; 6 uses
  br i1 %min.iters.check67, label %scalar.ph66.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph62.i
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.al
  %i.fa = getelementptr i8, ptr %i.ex, i64 %i.al
  %bound0 = icmp ult ptr %i.ey, %i.fa
  %bound1 = icmp ult ptr %i.ex, %i.ez
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph66.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %vector.memcheck
  %broadcast.splat = shufflevector <2 x float> %i.at, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph68
  %index71 = phi i64 [ 0, %vector.ph68 ], [ %index.next75, %vector.body70 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index71 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load = load <4 x float>, ptr %i.fb, align 4, !tbaa !27, !alias.scope !241
  %wide.load72 = load <4 x float>, ptr %i.fc, align 4, !tbaa !27, !alias.scope !241
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index71 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load73 = load <4 x float>, ptr %i.fd, align 4, !tbaa !27, !alias.scope !242, !noalias !241
  %wide.load74 = load <4 x float>, ptr %i.fe, align 4, !tbaa !27, !alias.scope !242, !noalias !241
  %i.ff = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load, <4 x float> %wide.load73)
  %i.fg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %wide.load72, <4 x float> %wide.load74)
  store <4 x float> %i.ff, ptr %i.fd, align 4, !tbaa !27, !alias.scope !242, !noalias !241
  store <4 x float> %i.fg, ptr %i.fe, align 4, !tbaa !27, !alias.scope !242, !noalias !241
  %index.next75 = add nuw i64 %index71, 8         ; 2 uses
  %i.fh = icmp eq i64 %index.next75, %n.vec69
  br i1 %i.fh, label %middle.block76, label %vector.body70, !llvm.loop !217

middle.block76:                                   ; preds = %vector.body70
  br i1 %cmp.n77, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph66.preheader

scalar.ph66.preheader:                            ; preds = %vector.memcheck, %.lr.ph62.i, %middle.block76
  %.061.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph62.i ], [ %n.vec69, %middle.block76 ] ; 5 uses
  br i1 %lcmp.mod252.not, label %scalar.ph66.prol.loopexit, label %scalar.ph66.prol

scalar.ph66.prol:                                 ; preds = %scalar.ph66.preheader
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.061.i.ph
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !27
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.061.i.ph ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !27
  %i.fm = extractelement <2 x float> %i.at, i64 0
  %i.fn = tail call nsz float @llvm.fmuladd.f32(float %i.fm, float %i.fj, float %i.fl)
  store float %i.fn, ptr %i.fk, align 4, !tbaa !27
  %i.fo = or disjoint i64 %.061.i.ph, 1
  br label %scalar.ph66.prol.loopexit

scalar.ph66.prol.loopexit:                        ; preds = %scalar.ph66.prol, %scalar.ph66.preheader
  %.061.i.unr = phi i64 [ %.061.i.ph, %scalar.ph66.preheader ], [ %i.fo, %scalar.ph66.prol ]
  %i.fp = icmp eq i64 %.061.i.ph, %i.ao
  br i1 %i.fp, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph66.preheader.new

scalar.ph66.preheader.new:                        ; preds = %scalar.ph66.prol.loopexit
  %i.fq = extractelement <2 x float> %i.at, i64 0
  %i.fr = extractelement <2 x float> %i.at, i64 0
  br label %scalar.ph66

scalar.ph101:                                     ; preds = %scalar.ph101.prol.loopexit, %scalar.ph101
  %.03658.i = phi i64 [ %i.gp, %scalar.ph101 ], [ %.03658.i.unr, %scalar.ph101.prol.loopexit ] ; 6 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.03658.i ; 3 uses
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !27
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.03658.i
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !27
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.03658.i ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !27
  %i.fy = tail call nsz float @llvm.fmuladd.f32(float %i.ft, float %i.fv, float %i.fx)
  store float %i.fy, ptr %i.fw, align 4, !tbaa !27
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.03658.i
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !27
  %i.gb = load float, ptr %i.fs, align 4, !tbaa !27
  %i.gc = fmul nsz float %i.ga, %i.gb
  store float %i.gc, ptr %i.fs, align 4, !tbaa !27
  %i.gd = add nuw nsw i64 %.03658.i, 1            ; 4 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.gd ; 3 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !27
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.gd
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !27
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gd ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !27
  %i.gk = tail call nsz float @llvm.fmuladd.f32(float %i.gf, float %i.gh, float %i.gj)
  store float %i.gk, ptr %i.gi, align 4, !tbaa !27
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.gd
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !27
  %i.gn = load float, ptr %i.ge, align 4, !tbaa !27
  %i.go = fmul nsz float %i.gm, %i.gn
  store float %i.go, ptr %i.ge, align 4, !tbaa !27
  %i.gp = add nuw nsw i64 %.03658.i, 2            ; 2 uses
  %.not42.i.1 = icmp eq i64 %i.gp, %i.i
  br i1 %.not42.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph101, !llvm.loop !218

scalar.ph66:                                      ; preds = %scalar.ph66, %scalar.ph66.preheader.new
  %.061.i = phi i64 [ %.061.i.unr, %scalar.ph66.preheader.new ], [ %i.hb, %scalar.ph66 ] ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.061.i
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !27
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.061.i ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !27
  %i.gu = tail call nsz float @llvm.fmuladd.f32(float %i.fq, float %i.gr, float %i.gt)
  store float %i.gu, ptr %i.gs, align 4, !tbaa !27
  %i.gv = add nuw nsw i64 %.061.i, 1              ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !27
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gv ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !27
  %i.ha = tail call nsz float @llvm.fmuladd.f32(float %i.fr, float %i.gx, float %i.gz)
  store float %i.ha, ptr %i.gy, align 4, !tbaa !27
  %i.hb = add nuw nsw i64 %.061.i, 2              ; 2 uses
  %.not41.i.1 = icmp eq i64 %i.hb, %i.i
  br i1 %.not41.i.1, label %_ZN5Noise13updateResultsEfPfPKfm.exit, label %scalar.ph66, !llvm.loop !219

_ZN5Noise13updateResultsEfPfPKfm.exit:            ; preds = %scalar.ph184, %scalar.ph141.prol.loopexit, %scalar.ph141, %scalar.ph101.prol.loopexit, %scalar.ph101, %scalar.ph66.prol.loopexit, %scalar.ph66, %middle.block216, %middle.block158, %middle.block132, %middle.block76, %.preheader50.i, %.preheader48.i, %.preheader46.i, %.preheader.i
  %i.hc = load <2 x float>, ptr %i.ak, align 4, !tbaa !27
  %i.hd = fmul nsz <2 x float> %i.at, %i.hc
  %i.he = add nuw nsw i64 %.03247, 1              ; 2 uses
  %i.hf = load i16, ptr %i.ad, align 8, !tbaa !48
  %i.hg = zext i16 %i.hf to i64
  %i.hh = icmp samesign ult i64 %i.he, %i.hg
  br i1 %i.hh, label %bb.e, label %._crit_edge, !llvm.loop !220

bb.h:                                             ; preds = %._crit_edge
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !67
  %i.hk = fadd nsz float %i.hj, -1.000000e+00
  %i.hl = tail call nsz noundef float @llvm.fabs.f32(float %i.hk)
  %i.hm = fpext nsz float %i.hl to double
  %i.hn = fcmp nsz ule double %i.hm, 1.000000e-05
end_hunk_0
