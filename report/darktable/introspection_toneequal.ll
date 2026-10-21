Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_toneequal?download=true
inline.NumInlined: 273
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 53
begin_hunk_0_@fast_surface_blur:bb.a
  %i.nw = fadd reassoc nsz arcp contract afn <8 x float> %i.ns, %strided.vec180
  %i.nx = fadd reassoc nsz arcp contract afn <8 x float> %i.nt, %strided.vec183
  %i.ny = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nu, <8 x float> splat (float f0x37800000))
  %i.nz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nv, <8 x float> splat (float f0x37800000))
  %i.oa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nw, <8 x float> splat (float f0x37800000))
  %i.ob = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nx, <8 x float> splat (float f0x37800000))
  store <8 x float> %i.ny, ptr %i.nb, align 4, !tbaa !13, !alias.scope !559
  store <8 x float> %i.nz, ptr %i.nc, align 4, !tbaa !13, !alias.scope !559
  store <8 x float> %i.oa, ptr %i.nd, align 4, !tbaa !13, !alias.scope !559
  store <8 x float> %i.ob, ptr %i.ne, align 4, !tbaa !13, !alias.scope !559
  %index.next184 = add nuw i64 %index167, 32      ; 2 uses
  %i.oc = icmp eq i64 %index.next184, %n.vec165
  br i1 %i.oc, label %middle.block185, label %vector.body166, !llvm.loop !536

middle.block185:                                  ; preds = %vector.body166
  %cmp.n186 = icmp eq i64 %i.m, %n.vec165
  br i1 %cmp.n186, label %apply_linear_blending.exit106, label %vec.epilog.iter.check190

vec.epilog.iter.check190:                         ; preds = %middle.block185
  %min.epilog.iters.check191 = icmp eq i64 %i.na, 0
  br i1 %min.epilog.iters.check191, label %.lr.ph.i101.preheader, label %vec.epilog.ph192, !prof !558

vec.epilog.ph192:                                 ; preds = %vector.main.loop.iter.check162, %vec.epilog.iter.check190
  %vec.epilog.resume.val187 = phi i64 [ %n.vec165, %vec.epilog.iter.check190 ], [ 0, %vector.main.loop.iter.check162 ]
  %n.vec193 = and i64 %i.m, -4                    ; 3 uses
  br label %vec.epilog.vector.body194

vec.epilog.vector.body194:                        ; preds = %vec.epilog.vector.body194, %vec.epilog.ph192
  %index195 = phi i64 [ %vec.epilog.resume.val187, %vec.epilog.ph192 ], [ %index.next200, %vec.epilog.vector.body194 ] ; 3 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index195 ; 2 uses
  %wide.load196 = load <4 x float>, ptr %i.od, align 4, !tbaa !13, !alias.scope !559
  %i.oe = shl i64 %index195, 3
  %i.of = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.oe
  %wide.vec197 = load <8 x float>, ptr %i.of, align 32, !tbaa !13, !alias.scope !560 ; 2 uses
  %strided.vec198 = shufflevector <8 x float> %wide.vec197, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec199 = shufflevector <8 x float> %wide.vec197, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.og = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec198, %wide.load196
  %i.oh = fadd reassoc nsz arcp contract afn <4 x float> %i.og, %strided.vec199
  %i.oi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.oh, <4 x float> splat (float f0x37800000))
  store <4 x float> %i.oi, ptr %i.od, align 4, !tbaa !13, !alias.scope !559
  %index.next200 = add nuw i64 %index195, 4       ; 2 uses
  %i.oj = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.oj, label %vec.epilog.middle.block201, label %vec.epilog.vector.body194, !llvm.loop !537

vec.epilog.middle.block201:                       ; preds = %vec.epilog.vector.body194
  %cmp.n202 = icmp eq i64 %i.m, %n.vec193
  br i1 %cmp.n202, label %apply_linear_blending.exit106, label %.lr.ph.i101.preheader

.lr.ph.i101.preheader:                            ; preds = %iter.check188, %vec.epilog.iter.check190, %vec.epilog.middle.block201
  %.010.i102.ph = phi i64 [ 0, %iter.check188 ], [ %n.vec165, %vec.epilog.iter.check190 ], [ %n.vec193, %vec.epilog.middle.block201 ]
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %.lr.ph.i101
  %.010.i102 = phi i64 [ %i.ot, %.lr.ph.i101 ], [ %.010.i102.ph, %.lr.ph.i101.preheader ] ; 3 uses
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.010.i102 ; 2 uses
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !13, !alias.scope !559
  %.idx.i103 = shl i64 %.010.i102, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i103 ; 2 uses
  %i.on = load float, ptr %i.om, align 8, !tbaa !13, !alias.scope !560
  %i.oo = fmul reassoc nsz arcp contract afn float %i.on, %i.ol
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.oq = load float, ptr %i.op, align 4, !tbaa !13, !alias.scope !560
  %i.or = fadd reassoc nsz arcp contract afn float %i.oo, %i.oq
  %i.os = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.or, float f0x37800000)
  store float %i.os, ptr %i.ok, align 4, !tbaa !13, !alias.scope !559
  %i.ot = add nuw i64 %.010.i102, 1               ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.ot, %i.m
  br i1 %exitcond.not.i104, label %apply_linear_blending.exit106, label %.lr.ph.i101, !llvm.loop !538

bb.j:                                             ; preds = %interpolate_bilinear.exit89
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  br i1 %.not.i100, label %apply_linear_blending.exit106, label %.lr.ph.i108.preheader

.lr.ph.i108.preheader:                            ; preds = %bb.j
  %min.iters.check147 = icmp ult i64 %i.m, 8
  br i1 %min.iters.check147, label %.lr.ph.i108.preheader204, label %vector.ph148

vector.ph148:                                     ; preds = %.lr.ph.i108.preheader
  %n.vec149 = and i64 %i.m, -8                    ; 3 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next156, %vector.body150 ] ; 3 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index151 ; 2 uses
  %wide.load152 = load <8 x float>, ptr %i.ou, align 4, !tbaa !13, !alias.scope !561 ; 2 uses
  %i.ov = shl i64 %index151, 3
  %i.ow = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ov
  %wide.vec153 = load <16 x float>, ptr %i.ow, align 64, !tbaa !13, !alias.scope !562 ; 2 uses
  %strided.vec154 = shufflevector <16 x float> %wide.vec153, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec155 = shufflevector <16 x float> %wide.vec153, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.ox = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec154, %wide.load152
  %i.oy = fadd reassoc nsz arcp contract afn <8 x float> %i.ox, %strided.vec155
  %i.oz = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.oy, <8 x float> splat (float f0x37800000))
  %i.pa = fmul reassoc nsz arcp contract afn <8 x float> %i.oz, %wide.load152
  %i.pb = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.pa)
  store <8 x float> %i.pb, ptr %i.ou, align 4, !tbaa !13, !alias.scope !561
  %index.next156 = add nuw i64 %index151, 8       ; 2 uses
  %i.pc = icmp eq i64 %index.next156, %n.vec149
  br i1 %i.pc, label %middle.block157, label %vector.body150, !llvm.loop !542

middle.block157:                                  ; preds = %vector.body150
  %cmp.n158 = icmp eq i64 %i.m, %n.vec149
  br i1 %cmp.n158, label %apply_linear_blending.exit106, label %.lr.ph.i108.preheader204

.lr.ph.i108.preheader204:                         ; preds = %.lr.ph.i108.preheader, %middle.block157
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i108.preheader ], [ %n.vec149, %middle.block157 ]
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph.i108.preheader204, %.lr.ph.i108
  %.012.i = phi i64 [ %i.po, %.lr.ph.i108 ], [ %.012.i.ph, %.lr.ph.i108.preheader204 ] ; 3 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.012.i ; 2 uses
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !13, !alias.scope !561 ; 2 uses
  %.idx.i109 = shl i64 %.012.i, 3
  %i.pf = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i109 ; 2 uses
  %i.pg = load float, ptr %i.pf, align 8, !tbaa !13, !alias.scope !562
  %i.ph = fmul reassoc nsz arcp contract afn float %i.pg, %i.pe
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !13, !alias.scope !562
  %i.pk = fadd reassoc nsz arcp contract afn float %i.ph, %i.pj
  %i.pl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pk, float f0x37800000)
  %i.pm = fmul reassoc nsz arcp contract afn float %i.pl, %i.pe
  %i.pn = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.pm)
  store float %i.pn, ptr %i.pd, align 4, !tbaa !13, !alias.scope !561
  %i.po = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %i.po, %i.m
  br i1 %exitcond.not.i110, label %apply_linear_blending.exit106, label %.lr.ph.i108, !llvm.loop !543

apply_linear_blending.exit106:                    ; preds = %.lr.ph.i108, %.lr.ph.i101, %middle.block157, %middle.block185, %vec.epilog.middle.block201, %bb.j, %bb.i, %bb.d
  tail call void @free(ptr noundef %i.t) #28
  tail call void @free(ptr noundef %i.r) #28
  tail call void @free(ptr noundef %i.p) #28
  tail call void @free(ptr noundef %i.o) #28
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @fast_eigf_surface_blur(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef range(i64 -2147483648, 2147483648) %2, float noundef %3, float noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, float noundef %7) unnamed_addr #14 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 4 uses
  %i.b = alloca [2 x float], align 8              ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %3, float 4.000000e+00)
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.e, float 1.000000e+00) ; 3 uses
  %i.g = fdiv reassoc nsz arcp contract afn float %3, %i.f
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.g, float 1.000000e+00) ; 2 uses
  %i.i = uitofp reassoc nsz arcp contract afn i64 %2 to float ; 5 uses
  %i.j = fdiv reassoc nsz arcp contract afn float %i.i, %i.f
  %i.k = fptoui float %i.j to i64                 ; 11 uses
  %i.l = uitofp reassoc nsz arcp contract afn i64 %1 to float ; 9 uses
  %i.m = fdiv reassoc nsz arcp contract afn float %i.l, %i.f
  %i.n = fptoui float %i.m to i64                 ; 25 uses
  %i.o = mul i64 %i.n, %i.k                       ; 19 uses
  %i.p = mul nsw i64 %2, %1                       ; 25 uses
  %i.q = shl i64 %i.p, 2
  %i.r = tail call ptr @dt_alloc_aligned(i64 noundef %i.q) #28 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 64) ]
  %i.s = shl i64 %i.o, 2                          ; 2 uses
  %i.t = tail call ptr @dt_alloc_aligned(i64 noundef %i.s) #28 ; 12 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.t, i64 64) ]
  %i.u = tail call ptr @dt_alloc_aligned(i64 noundef %i.s) #28 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.u, i64 64) ]
  %i.v = shl i64 %i.o, 4                          ; 3 uses
  %i.w = tail call ptr @dt_alloc_aligned(i64 noundef %i.v) #28 ; 25 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = shl i64 %i.p, 4
  %i.y = tail call ptr @dt_alloc_aligned(i64 noundef %i.x) #28 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %i.z = icmp ne ptr %i.t, null
  %i.aa = icmp ne ptr %i.u, null
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = icmp ne ptr %i.w, null
  %or.cond3 = select i1 %or.cond, i1 %i.ab, i1 false
  %i.ac = icmp ne ptr %i.y, null
  %or.cond5 = select i1 %or.cond3, i1 %i.ac, i1 false
  br i1 %or.cond5, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.ad = icmp sgt i32 %5, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.ae = add nsw i32 %5, -1
  %.not.i = icmp eq i64 %i.k, 0
  %.not91.i = icmp eq i64 %i.n, 0
  %i.af = add nsw i64 %1, -1                      ; 6 uses
  %i.ag = add nsw i64 %2, -1                      ; 4 uses
  %i.ah = uitofp reassoc nsz arcp contract afn i64 %i.n to float ; 8 uses
  %i.ai = uitofp reassoc nsz arcp contract afn i64 %i.k to float ; 4 uses
  %i.aj = fcmp reassoc nsz arcp contract afn une float %7, 0.000000e+00
  %i.ak = shl i64 %i.o, 3
  %.not73.i = icmp eq i64 %i.o, 0                 ; 3 uses
  %i.al = trunc i64 %i.n to i32                   ; 2 uses
  %i.am = trunc i64 %i.k to i32                   ; 2 uses
  %.not.i138 = icmp eq i64 %2, 0                  ; 2 uses
  %.not91.i140 = icmp eq i64 %1, 0                ; 2 uses
  %i.an = add i64 %i.n, -1                        ; 6 uses
  %i.ao = add i64 %i.k, -1                        ; 4 uses
  %i.ap = fcmp reassoc nsz arcp contract afn oeq float %7, 1.000000e+00
  %.not31.i = icmp eq i64 %i.p, 0                 ; 2 uses
  %brmerge = select i1 %.not.i, i1 true, i1 %.not91.i ; 2 uses
  %brmerge235 = or i1 %.not.i138, %.not91.i140
  %brmerge234 = or i1 %.not.i138, %.not91.i140
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ai
  %min.iters.check260 = icmp ult i64 %i.n, 8
  %n.vec262 = and i64 %i.n, -8                    ; 3 uses
  %broadcast.splatinsert265 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat266 = shufflevector <8 x float> %broadcast.splatinsert265, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert267 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat268 = shufflevector <8 x float> %broadcast.splatinsert267, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert269 = insertelement <8 x i64> poison, i64 %1, i64 0
  %broadcast.splat270 = shufflevector <8 x i64> %broadcast.splatinsert269, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert271 = insertelement <8 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat272 = shufflevector <8 x i64> %broadcast.splatinsert271, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ar = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat268
  %cmp.n287 = icmp eq i64 %n.vec262, %i.n
  %i.as = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ah
  %xtraiter = and i64 %i.o, 3                     ; 3 uses
  %i.at = icmp ult i64 %i.o, 4
  %unroll_iter = and i64 %i.o, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod308 = icmp ne i64 %xtraiter, 0
  %min.iters.check243 = icmp ult i64 %i.o, 8
  %n.vec245 = and i64 %i.o, -8                    ; 3 uses
  %cmp.n257 = icmp eq i64 %i.o, %n.vec245
  %i.au = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.i
  %min.iters.check200 = icmp ult i64 %1, 8
  %n.vec202 = and i64 %1, -8                      ; 3 uses
  %broadcast.splatinsert209 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat210 = shufflevector <8 x float> %broadcast.splatinsert209, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert211 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat212 = shufflevector <8 x float> %broadcast.splatinsert211, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat214 = shufflevector <8 x i64> %broadcast.splatinsert213, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert215 = insertelement <8 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat216 = shufflevector <8 x i64> %broadcast.splatinsert215, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.av = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat212
  %cmp.n240 = icmp eq i64 %1, %n.vec202
  %i.aw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.l
  %min.iters.check168 = icmp ult i64 %i.p, 8      ; 2 uses
  %n.vec186 = and i64 %i.p, -8                    ; 3 uses
  %broadcast.splatinsert187 = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat188 = shufflevector <8 x float> %broadcast.splatinsert187, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n197 = icmp eq i64 %i.p, %n.vec186
  %n.vec170 = and i64 %i.p, -8                    ; 3 uses
  %broadcast.splatinsert171 = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat172 = shufflevector <8 x float> %broadcast.splatinsert171, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n181 = icmp eq i64 %i.p, %n.vec170
  %min.iters.check155 = icmp ult i64 %i.p, 8
  %n.vec157 = and i64 %i.p, -8                    ; 3 uses
  %broadcast.splatinsert158 = insertelement <8 x float> poison, float %7, i64 0
  %broadcast.splat159 = shufflevector <8 x float> %broadcast.splatinsert158, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ax = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat159
  %cmp.n165 = icmp eq i64 %i.p, %n.vec157
  %i.ay = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %7
  %min.iters.check144 = icmp ult i64 %i.p, 8
  %n.vec146 = and i64 %i.p, -8                    ; 3 uses
  %cmp.n152 = icmp eq i64 %i.p, %n.vec146
  %i.az = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ai
  %min.iters.check114 = icmp ult i64 %i.n, 8
  %n.vec116 = and i64 %i.n, -8                    ; 3 uses
  %broadcast.splatinsert119 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat120 = shufflevector <8 x float> %broadcast.splatinsert119, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat122 = shufflevector <8 x float> %broadcast.splatinsert121, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <8 x i64> poison, i64 %1, i64 0
  %broadcast.splat124 = shufflevector <8 x i64> %broadcast.splatinsert123, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert125 = insertelement <8 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat126 = shufflevector <8 x i64> %broadcast.splatinsert125, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ba = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat122
  %cmp.n141 = icmp eq i64 %n.vec116, %i.n
  %i.bb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ah
  %xtraiter309 = and i64 %i.o, 1
  %i.bc = icmp eq i64 %i.o, 1
  %unroll_iter319 = and i64 %i.o, -2
  %lcmp.mod315.not = icmp eq i64 %xtraiter309, 0
  %lcmp.mod318 = trunc i64 %i.o to i1
  %min.iters.check94 = icmp ult i64 %i.o, 4
  %n.vec96 = and i64 %i.o, -4                     ; 3 uses
  %cmp.n111 = icmp eq i64 %i.o, %n.vec96
  %i.bd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.i
  %min.iters.check40 = icmp ult i64 %1, 8
  %n.vec42 = and i64 %1, -8                       ; 3 uses
  %broadcast.splatinsert49 = insertelement <8 x float> poison, float %i.ah, i64 0
  %broadcast.splat50 = shufflevector <8 x float> %broadcast.splatinsert49, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat52 = shufflevector <8 x float> %broadcast.splatinsert51, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat54 = shufflevector <8 x i64> %broadcast.splatinsert53, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert55 = insertelement <8 x i64> poison, i64 %i.an, i64 0
  %broadcast.splat56 = shufflevector <8 x i64> %broadcast.splatinsert55, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.be = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat52
  %cmp.n91 = icmp eq i64 %1, %n.vec42
  %i.bf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.l
  %min.iters.check = icmp ult i64 %i.p, 8         ; 2 uses
  %n.vec23 = and i64 %i.p, -8                     ; 3 uses
  %broadcast.splatinsert24 = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat25 = shufflevector <8 x float> %broadcast.splatinsert24, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n37 = icmp eq i64 %i.p, %n.vec23
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %4, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bg = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.126, i32 noundef 5) #28
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.bg) #28
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %eigf_blending.exit
  %.089232 = phi i32 [ 0, %.lr.ph ], [ %i.acr, %eigf_blending.exit ] ; 2 uses
  %i.bh = icmp eq i32 %.089232, %i.ae
  %spec.select = select i1 %i.bh, i32 %6, i32 0   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  br i1 %brmerge, label %interpolate_bilinear.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %._crit_edge.i
  %.08489.i = phi i64 [ %i.cv, %._crit_edge.i ], [ 0, %bb.c ] ; 3 uses
  %i.bi = uitofp reassoc nsz arcp contract afn i64 %.08489.i to float
  %i.bj = fmul reassoc nnan nsz arcp contract afn float %i.i, %i.bi
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.aq ; 2 uses
  %i.bl = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.bk)
  %i.bm = fptoui float %i.bl to i64               ; 3 uses
  %i.bn = add i64 %i.bm, 1                        ; 2 uses
  %i.bo = icmp ugt i64 %2, %i.bm
  %i.bp = select i1 %i.bo, i64 %i.bm, i64 %i.ag
  %i.bq = icmp ult i64 %i.bn, %2
  %i.br = select i1 %i.bq, i64 %i.bn, i64 %i.ag   ; 2 uses
  %i.bs = mul i64 %i.bp, %1
  %i.bt = mul i64 %i.br, %1
  %i.bu = uitofp reassoc nsz arcp contract afn i64 %i.br to float
  %i.bv = fsub reassoc nsz arcp contract afn float %i.bu, %i.bk ; 2 uses
  %i.bw = mul i64 %.08489.i, %i.n
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.bs ; 4 uses
  %invariant.gep202 = getelementptr [4 x i8], ptr %0, i64 %i.bt ; 4 uses
  %invariant.gep206 = getelementptr [4 x i8], ptr %i.t, i64 %i.bw ; 2 uses
  br i1 %min.iters.check260, label %scalar.ph259.preheader, label %vector.ph261

vector.ph261:                                     ; preds = %.preheader.i
  %broadcast.splatinsert263 = insertelement <8 x float> poison, float %i.bv, i64 0
  %broadcast.splat264 = shufflevector <8 x float> %broadcast.splatinsert263, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph261
  %index274 = phi i64 [ 0, %vector.ph261 ], [ %index.next284, %vector.body273 ] ; 2 uses
  %vec.ind275 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph261 ], [ %vec.ind.next285, %vector.body273 ] ; 2 uses
  %i.bx = uitofp <8 x i64> %vec.ind275 to <8 x float>
  %i.by = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat266, %i.bx
  %i.bz = fmul reassoc nsz arcp contract afn <8 x float> %i.by, %i.ar ; 2 uses
  %i.ca = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.bz)
  %i.cb = fptoui <8 x float> %i.ca to <8 x i64>   ; 3 uses
  %i.cc = add <8 x i64> %i.cb, splat (i64 1)      ; 2 uses
  %i.cd = icmp ugt <8 x i64> %broadcast.splat270, %i.cb
  %i.ce = select <8 x i1> %i.cd, <8 x i64> %i.cb, <8 x i64> %broadcast.splat272 ; 2 uses
  %i.cf = icmp ult <8 x i64> %i.cc, %broadcast.splat270
  %i.cg = select <8 x i1> %i.cf, <8 x i64> %i.cc, <8 x i64> %broadcast.splat272 ; 3 uses
  %wide.gep276 = getelementptr [4 x i8], ptr %invariant.gep, <8 x i64> %i.ce
  %wide.gep277 = getelementptr [4 x i8], ptr %invariant.gep, <8 x i64> %i.cg
  %wide.gep278 = getelementptr [4 x i8], ptr %invariant.gep202, <8 x i64> %i.cg
  %wide.gep279 = getelementptr [4 x i8], ptr %invariant.gep202, <8 x i64> %i.ce
  %i.ch = uitofp <8 x i64> %i.cg to <8 x float>
  %i.ci = fsub reassoc nsz arcp contract afn <8 x float> %i.ch, %i.bz ; 3 uses
  %i.cj = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.ci ; 2 uses
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep206, i64 %index274
  %wide.masked.gather280 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep279, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !621
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather280, %i.ci
  %wide.masked.gather281 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep278, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !621
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather281, %i.cj
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %i.cl ; 2 uses
  %wide.masked.gather282 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep276, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !621
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather282, %i.ci
  %wide.masked.gather283 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep277, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !621
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather283, %i.cj
  %i.cq = fsub reassoc nsz arcp contract afn <8 x float> %i.co, %i.cn
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %i.cp
  %i.cs = fmul reassoc nsz arcp contract afn <8 x float> %i.cr, %broadcast.splat264
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cs, %i.cn
  store <8 x float> %i.ct, ptr %i.ck, align 4, !tbaa !13, !alias.scope !622
  %index.next284 = add nuw i64 %index274, 8       ; 2 uses
  %vec.ind.next285 = add nuw <8 x i64> %vec.ind275, splat (i64 8)
  %i.cu = icmp eq i64 %index.next284, %n.vec262
  br i1 %i.cu, label %middle.block286, label %vector.body273, !llvm.loop !566

middle.block286:                                  ; preds = %vector.body273
  br i1 %cmp.n287, label %._crit_edge.i, label %scalar.ph259.preheader

scalar.ph259.preheader:                           ; preds = %.preheader.i, %middle.block286
  %.08388.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec262, %middle.block286 ]
  br label %scalar.ph259

._crit_edge.i:                                    ; preds = %scalar.ph259, %middle.block286
  %i.cv = add nuw i64 %.08489.i, 1                ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.cv, %i.k
  br i1 %exitcond93.not.i, label %interpolate_bilinear.exit, label %.preheader.i

scalar.ph259:                                     ; preds = %scalar.ph259.preheader, %scalar.ph259
  %.08388.i = phi i64 [ %i.dw, %scalar.ph259 ], [ %.08388.i.ph, %scalar.ph259.preheader ] ; 3 uses
  %i.cw = uitofp reassoc nsz arcp contract afn i64 %.08388.i to float
end_hunk_0
begin_hunk_1_@fast_eigf_surface_blur:bb.a
  %.08489.i120 = phi i64 [ %i.og, %._crit_edge.i125 ], [ 0, %eigf_variance_analysis.exit ] ; 3 uses
  %i.le = uitofp reassoc nsz arcp contract afn i64 %.08489.i120 to float
  %i.lf = fmul reassoc nnan nsz arcp contract afn float %i.ai, %i.le
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.bd ; 2 uses
  %i.lh = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.lg)
  %i.li = fptoui float %i.lh to i64               ; 3 uses
  %i.lj = add i64 %i.li, 1                        ; 2 uses
  %i.lk = icmp ugt i64 %i.k, %i.li
  %i.ll = select i1 %i.lk, i64 %i.li, i64 %i.ao
  %i.lm = icmp ult i64 %i.lj, %i.k
  %i.ln = select i1 %i.lm, i64 %i.lj, i64 %i.ao   ; 2 uses
  %i.lo = mul i64 %i.ll, %i.n                     ; 3 uses
  %i.lp = mul i64 %i.ln, %i.n                     ; 3 uses
  %i.lq = uitofp reassoc nsz arcp contract afn i64 %i.ln to float
  %i.lr = fsub reassoc nsz arcp contract afn float %i.lq, %i.lg ; 2 uses
  %i.ls = mul i64 %.08489.i120, %1                ; 2 uses
  br i1 %min.iters.check40, label %scalar.ph39.preheader, label %vector.ph41

vector.ph41:                                      ; preds = %.preheader.i119
  %broadcast.splatinsert43 = insertelement <8 x i64> poison, i64 %i.lo, i64 0
  %broadcast.splat44 = shufflevector <8 x i64> %broadcast.splatinsert43, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <8 x i64> poison, i64 %i.lp, i64 0
  %broadcast.splat46 = shufflevector <8 x i64> %broadcast.splatinsert45, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <8 x float> poison, float %i.lr, i64 0 ; 2 uses
  %i.lt = shufflevector <8 x float> %broadcast.splatinsert47, <8 x float> poison, <16 x i32> zeroinitializer
  %i.lu = shufflevector <8 x float> %broadcast.splatinsert47, <8 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57, %vector.ph41
  %index58 = phi i64 [ 0, %vector.ph41 ], [ %index.next89, %vector.body57 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph41 ], [ %vec.ind.next, %vector.body57 ] ; 2 uses
  %i.lv = uitofp <8 x i64> %vec.ind to <8 x float>
  %i.lw = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat50, %i.lv
  %i.lx = fmul reassoc nsz arcp contract afn <8 x float> %i.lw, %i.be ; 2 uses
  %i.ly = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.lx)
  %i.lz = fptoui <8 x float> %i.ly to <8 x i64>   ; 3 uses
  %i.ma = add <8 x i64> %i.lz, splat (i64 1)      ; 2 uses
  %i.mb = icmp ugt <8 x i64> %broadcast.splat54, %i.lz
  %i.mc = select <8 x i1> %i.mb, <8 x i64> %i.lz, <8 x i64> %broadcast.splat56 ; 2 uses
  %i.md = icmp ult <8 x i64> %i.ma, %broadcast.splat54
  %i.me = select <8 x i1> %i.md, <8 x i64> %i.ma, <8 x i64> %broadcast.splat56 ; 3 uses
  %i.mf = add <8 x i64> %i.mc, %broadcast.splat44
  %i.mg = shl <8 x i64> %i.mf, splat (i64 4)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.w, <8 x i64> %i.mg ; 4 uses
  %i.mh = add <8 x i64> %i.me, %broadcast.splat44
  %i.mi = shl <8 x i64> %i.mh, splat (i64 4)
  %wide.gep59 = getelementptr inbounds nuw i8, ptr %i.w, <8 x i64> %i.mi ; 4 uses
  %i.mj = add <8 x i64> %i.me, %broadcast.splat46
  %i.mk = shl <8 x i64> %i.mj, splat (i64 4)
  %wide.gep60 = getelementptr inbounds nuw i8, ptr %i.w, <8 x i64> %i.mk ; 4 uses
  %i.ml = add <8 x i64> %i.mc, %broadcast.splat46
  %i.mm = shl <8 x i64> %i.ml, splat (i64 4)
  %wide.gep61 = getelementptr inbounds nuw i8, ptr %i.w, <8 x i64> %i.mm ; 4 uses
  %i.mn = uitofp <8 x i64> %i.me to <8 x float>
  %i.mo = fsub reassoc nsz arcp contract afn <8 x float> %i.mn, %i.lx ; 7 uses
  %i.mp = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.mo ; 6 uses
  %i.mq = add i64 %index58, %i.ls
  %i.mr = shl i64 %i.mq, 4
  %i.ms = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.mr
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep61, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.mt = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.mo
  %wide.masked.gather62 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep60, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.mu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather62, %i.mp
  %i.mv = fadd reassoc nsz arcp contract afn <8 x float> %i.mu, %i.mt ; 2 uses
  %wide.masked.gather63 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %wide.masked.gather64 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep59, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %wide.gep65 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep61, i64 4
  %wide.masked.gather66 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep65, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.mw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather66, %i.mo
  %wide.gep67 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep60, i64 4
  %wide.masked.gather68 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep67, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.mx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather68, %i.mp
  %i.my = fadd reassoc nsz arcp contract afn <8 x float> %i.mx, %i.mw ; 2 uses
  %wide.gep69 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather70 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep69, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %wide.gep71 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep59, i64 4
  %wide.masked.gather72 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep71, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %wide.gep73 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep61, i64 8
  %wide.masked.gather74 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep73, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.mz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather74, %i.mo
  %wide.gep75 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep60, i64 8
  %wide.masked.gather76 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep75, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.na = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather76, %i.mp
  %i.nb = fadd reassoc nsz arcp contract afn <8 x float> %i.na, %i.mz ; 2 uses
  %wide.gep77 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather78 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep77, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %wide.gep79 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep59, i64 8
  %wide.masked.gather80 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep79, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %wide.gep81 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep61, i64 12
  %wide.masked.gather82 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep81, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.nc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather82, %i.mo
  %wide.gep83 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep60, i64 12
  %wide.masked.gather84 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep83, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.nd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather84, %i.mp
  %i.ne = fadd reassoc nsz arcp contract afn <8 x float> %i.nd, %i.nc ; 2 uses
  %wide.gep85 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather86 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep85, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %wide.gep87 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep59, i64 12
  %wide.masked.gather88 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep87, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !633
  %i.nf = shufflevector <8 x float> %wide.masked.gather63, <8 x float> %wide.masked.gather70, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ng = shufflevector <8 x float> %i.mo, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nh = fmul reassoc nsz arcp contract afn <16 x float> %i.nf, %i.ng
  %i.ni = shufflevector <8 x float> %i.mv, <8 x float> %i.my, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nj = fsub reassoc nsz arcp contract afn <16 x float> %i.nh, %i.ni
  %i.nk = shufflevector <8 x float> %wide.masked.gather64, <8 x float> %wide.masked.gather72, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nl = shufflevector <8 x float> %i.mp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nm = fmul reassoc nsz arcp contract afn <16 x float> %i.nk, %i.nl
  %i.nn = fadd reassoc nsz arcp contract afn <16 x float> %i.nj, %i.nm
  %i.no = fmul reassoc nsz arcp contract afn <16 x float> %i.nn, %i.lt
  %i.np = shufflevector <8 x float> %i.mv, <8 x float> %i.my, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nq = fadd reassoc nsz arcp contract afn <16 x float> %i.no, %i.np
  %i.nr = shufflevector <8 x float> %wide.masked.gather78, <8 x float> %wide.masked.gather86, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ns = shufflevector <8 x float> %i.mo, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.nt = fmul reassoc nsz arcp contract afn <16 x float> %i.nr, %i.ns
  %i.nu = shufflevector <8 x float> %i.nb, <8 x float> %i.ne, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nv = fsub reassoc nsz arcp contract afn <16 x float> %i.nt, %i.nu
  %i.nw = shufflevector <8 x float> %wide.masked.gather80, <8 x float> %wide.masked.gather88, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nx = shufflevector <8 x float> %i.mp, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ny = fmul reassoc nsz arcp contract afn <16 x float> %i.nw, %i.nx
  %i.nz = fadd reassoc nsz arcp contract afn <16 x float> %i.nv, %i.ny
  %i.oa = fmul reassoc nsz arcp contract afn <16 x float> %i.nz, %i.lu
  %i.ob = shufflevector <8 x float> %i.nb, <8 x float> %i.ne, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oc = fadd reassoc nsz arcp contract afn <16 x float> %i.oa, %i.ob
  %interleaved.vec = shufflevector <16 x float> %i.nq, <16 x float> %i.oc, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ms, align 16, !tbaa !13, !alias.scope !634
  %index.next89 = add nuw i64 %index58, 8         ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.od = icmp eq i64 %index.next89, %n.vec42
  br i1 %i.od, label %middle.block90, label %vector.body57, !llvm.loop !593

middle.block90:                                   ; preds = %vector.body57
  br i1 %cmp.n91, label %._crit_edge.i125, label %scalar.ph39.preheader

scalar.ph39.preheader:                            ; preds = %.preheader.i119, %middle.block90
  %.08388.i121.ph = phi i64 [ 0, %.preheader.i119 ], [ %n.vec42, %middle.block90 ]
  %i.oe = insertelement <4 x float> poison, float %i.lr, i64 0
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph39

._crit_edge.i125:                                 ; preds = %scalar.ph39, %middle.block90
  %i.og = add nuw i64 %.08489.i120, 1             ; 2 uses
  %exitcond93.not.i126 = icmp eq i64 %i.og, %2
  br i1 %exitcond93.not.i126, label %interpolate_bilinear.exit127, label %.preheader.i119

scalar.ph39:                                      ; preds = %scalar.ph39.preheader, %scalar.ph39
  %.08388.i121 = phi i64 [ %i.pv, %scalar.ph39 ], [ %.08388.i121.ph, %scalar.ph39.preheader ] ; 3 uses
  %i.oh = uitofp reassoc nsz arcp contract afn i64 %.08388.i121 to float
  %i.oi = fmul reassoc nnan nsz arcp contract afn float %i.ah, %i.oh
  %i.oj = fmul reassoc nsz arcp contract afn float %i.oi, %i.bf ; 2 uses
  %i.ok = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.oj)
  %i.ol = fptoui float %i.ok to i64               ; 3 uses
  %i.om = add i64 %i.ol, 1                        ; 2 uses
  %i.on = icmp ugt i64 %i.n, %i.ol
  %i.oo = select i1 %i.on, i64 %i.ol, i64 %i.an   ; 2 uses
  %i.op = icmp ult i64 %i.om, %i.n
  %i.oq = select i1 %i.op, i64 %i.om, i64 %i.an   ; 3 uses
  %i.or = add i64 %i.oo, %i.lo
  %.idx167.a = shl i64 %i.or, 4
  %i.os = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx167.a
  %i.ot = add i64 %i.oq, %i.lo
  %.idx168.a = shl i64 %i.ot, 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx168.a
  %i.ov = add i64 %i.oq, %i.lp
  %.idx169.a = shl i64 %i.ov, 4
  %i.ow = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx169.a
  %i.ox = add i64 %i.oo, %i.lp
  %.idx170.a = shl i64 %i.ox, 4
  %i.oy = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx170.a
  %i.oz = uitofp reassoc nsz arcp contract afn i64 %i.oq to float
  %i.pa = fsub reassoc nsz arcp contract afn float %i.oz, %i.oj ; 2 uses
  %i.pb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.pa
  %i.pc = add i64 %.08388.i121, %i.ls
  %.idx171 = shl i64 %i.pc, 4
  %i.pd = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx171
  %i.pe = load <4 x float>, ptr %i.oy, align 16, !tbaa !13, !alias.scope !633
  %i.pf = insertelement <4 x float> poison, float %i.pa, i64 0
  %i.pg = shufflevector <4 x float> %i.pf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ph = fmul reassoc nsz arcp contract afn <4 x float> %i.pe, %i.pg
  %i.pi = load <4 x float>, ptr %i.ow, align 16, !tbaa !13, !alias.scope !633
  %i.pj = insertelement <4 x float> poison, float %i.pb, i64 0
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.pl = fmul reassoc nsz arcp contract afn <4 x float> %i.pi, %i.pk
  %i.pm = fadd reassoc nsz arcp contract afn <4 x float> %i.pl, %i.ph ; 2 uses
  %i.pn = load <4 x float>, ptr %i.os, align 16, !tbaa !13, !alias.scope !633
  %i.po = fmul reassoc nsz arcp contract afn <4 x float> %i.pn, %i.pg
  %i.pp = load <4 x float>, ptr %i.ou, align 16, !tbaa !13, !alias.scope !633
  %i.pq = fmul reassoc nsz arcp contract afn <4 x float> %i.pp, %i.pk
  %i.pr = fsub reassoc nsz arcp contract afn <4 x float> %i.po, %i.pm
  %i.ps = fadd reassoc nsz arcp contract afn <4 x float> %i.pr, %i.pq
  %i.pt = fmul reassoc nsz arcp contract afn <4 x float> %i.ps, %i.of
  %i.pu = fadd reassoc nsz arcp contract afn <4 x float> %i.pt, %i.pm
  store <4 x float> %i.pu, ptr %i.pd, align 16, !tbaa !13, !alias.scope !634
  %i.pv = add nuw i64 %.08388.i121, 1             ; 2 uses
  %exitcond92.not.i124 = icmp eq i64 %i.pv, %1
  br i1 %exitcond92.not.i124, label %._crit_edge.i125, label %scalar.ph39, !llvm.loop !594

interpolate_bilinear.exit127:                     ; preds = %._crit_edge.i125
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %8 = icmp eq i32 %spec.select, 0
  br i1 %8, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %interpolate_bilinear.exit127
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader290, label %vector.body26

vector.body26:                                    ; preds = %.lr.ph.split.i.preheader, %vector.body26
  %index27 = phi i64 [ %index.next35, %vector.body26 ], [ 0, %.lr.ph.split.i.preheader ] ; 4 uses
  %i.pw = shl i64 %index27, 4
  %i.px = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.pw
  %wide.vec28 = load <32 x float>, ptr %i.px, align 64, !tbaa !13, !alias.scope !637 ; 4 uses
  %strided.vec29 = shufflevector <32 x float> %wide.vec28, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec30 = shufflevector <32 x float> %wide.vec28, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec31 = shufflevector <32 x float> %wide.vec28, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec32 = shufflevector <32 x float> %wide.vec28, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index27 ; 2 uses
  %wide.load33 = load <8 x float>, ptr %i.py, align 4, !tbaa !13, !alias.scope !635 ; 3 uses
  %i.pz = fmul reassoc nsz arcp contract afn <8 x float> %wide.load33, %strided.vec29
  %i.qa = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.pz, <8 x float> splat (float f0x358637BD)) ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index27
  %wide.load34 = load <8 x float>, ptr %i.qb, align 32, !tbaa !13, !alias.scope !636
  %i.qc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load34, %strided.vec31
  %i.qd = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qc, <8 x float> splat (float f0x358637BD))
  %i.qe = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec30, %i.qa
  %i.qf = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.qd, %i.qa
  %i.qg = call reassoc nnan nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.qf)
  %i.qh = fadd reassoc nsz arcp contract afn <8 x float> %i.qe, %broadcast.splat25
  %i.qi = fmul reassoc nsz arcp contract afn <8 x float> %i.qg, %i.qh
  %i.qj = fsub reassoc nsz arcp contract afn <8 x float> %wide.load33, %strided.vec29
  %i.qk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec32, %i.qj
  %i.ql = fdiv reassoc nsz arcp contract afn <8 x float> %i.qk, %i.qi
  %i.qm = fadd reassoc nsz arcp contract afn <8 x float> %i.ql, %strided.vec31
  %i.qn = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qm, <8 x float> splat (float f0x37800000))
  %i.qo = fmul reassoc nsz arcp contract afn <8 x float> %i.qn, %wide.load33
  %i.qp = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.qo)
  store <8 x float> %i.qp, ptr %i.py, align 4, !tbaa !13, !alias.scope !635
  %index.next35 = add nuw i64 %index27, 8         ; 2 uses
  %i.qq = icmp eq i64 %index.next35, %n.vec23
  br i1 %i.qq, label %middle.block36, label %vector.body26, !llvm.loop !599

middle.block36:                                   ; preds = %vector.body26
  br i1 %cmp.n37, label %eigf_blending.exit, label %.lr.ph.split.i.preheader290

.lr.ph.split.i.preheader290:                      ; preds = %.lr.ph.split.i.preheader, %middle.block36
  %.044.i.ph = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %n.vec23, %middle.block36 ]
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %interpolate_bilinear.exit127
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader289, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.us.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.us.i.preheader ] ; 4 uses
  %i.qr = shl i64 %index, 4
  %i.qs = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.qr
  %wide.vec = load <32 x float>, ptr %i.qs, align 64, !tbaa !13, !alias.scope !637 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 2 uses
  %strided.vec16 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec17 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 2 uses
  %strided.vec18 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %wide.load = load <8 x float>, ptr %i.qt, align 4, !tbaa !13, !alias.scope !635 ; 2 uses
  %i.qu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %strided.vec
  %i.qv = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qu, <8 x float> splat (float f0x358637BD)) ; 2 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index
  %wide.load19 = load <8 x float>, ptr %i.qw, align 32, !tbaa !13, !alias.scope !636
  %i.qx = fmul reassoc nsz arcp contract afn <8 x float> %wide.load19, %strided.vec17
  %i.qy = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qx, <8 x float> splat (float f0x358637BD))
  %i.qz = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec16, %i.qv
  %i.ra = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.qy, %i.qv
  %i.rb = call reassoc nnan nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.ra)
  %i.rc = fadd reassoc nsz arcp contract afn <8 x float> %i.qz, %broadcast.splat
  %i.rd = fmul reassoc nsz arcp contract afn <8 x float> %i.rb, %i.rc
  %i.re = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %strided.vec
  %i.rf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec18, %i.re
  %i.rg = fdiv reassoc nsz arcp contract afn <8 x float> %i.rf, %i.rd
  %i.rh = fadd reassoc nsz arcp contract afn <8 x float> %i.rg, %strided.vec17
  %i.ri = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.rh, <8 x float> splat (float f0x37800000))
  store <8 x float> %i.ri, ptr %i.qt, align 4, !tbaa !13, !alias.scope !635
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rj = icmp eq i64 %index.next, %n.vec
  br i1 %i.rj, label %middle.block, label %vector.body, !llvm.loop !600

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %eigf_blending.exit, label %.lr.ph.split.us.i.preheader289

.lr.ph.split.us.i.preheader289:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block
  %.044.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader289, %.lr.ph.split.us.i
  %.044.us.i = phi i64 [ %i.si, %.lr.ph.split.us.i ], [ %.044.us.i.ph, %.lr.ph.split.us.i.preheader289 ] ; 4 uses
  %.idx.us.i = shl i64 %.044.us.i, 4
  %i.rk = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.us.i ; 4 uses
  %i.rl = load float, ptr %i.rk, align 16, !tbaa !13, !alias.scope !637 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rn = load float, ptr %i.rm, align 8, !tbaa !13, !alias.scope !637 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !13, !alias.scope !637
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !13, !alias.scope !637
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044.us.i ; 2 uses
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !13, !alias.scope !635 ; 2 uses
  %i.ru = fmul reassoc nsz arcp contract afn float %i.rt, %i.rl
  %i.rv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ru, float f0x358637BD) ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.044.us.i
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !13, !alias.scope !636
  %i.ry = fmul reassoc nsz arcp contract afn float %i.rx, %i.rn
  %i.rz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ry, float f0x358637BD)
  %i.sa = fdiv reassoc nsz arcp contract afn float %i.rp, %i.rv
  %i.sb = fmul reassoc nnan nsz arcp contract afn float %i.rz, %i.rv
  %i.sc = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.sb)
  %i.sd = fadd reassoc nsz arcp contract afn float %i.sa, %4
  %i.se = fmul reassoc nsz arcp contract afn float %i.sc, %i.sd
  %reass.add183 = fsub reassoc nsz arcp contract afn float %i.rt, %i.rl
  %i.sf = fmul reassoc nsz arcp contract afn float %i.rr, %reass.add183
  %reass.mul184 = fdiv reassoc nsz arcp contract afn float %i.sf, %i.se
  %i.sg = fadd reassoc nsz arcp contract afn float %reass.mul184, %i.rn
  %i.sh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sg, float f0x37800000)
  store float %i.sh, ptr %i.rs, align 4, !tbaa !13, !alias.scope !635
  %i.si = add nuw i64 %.044.us.i, 1               ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.si, %i.p
  br i1 %exitcond46.not.i, label %eigf_blending.exit, label %.lr.ph.split.us.i, !llvm.loop !601

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader290, %.lr.ph.split.i
  %.044.i = phi i64 [ %i.tj, %.lr.ph.split.i ], [ %.044.i.ph, %.lr.ph.split.i.preheader290 ] ; 4 uses
  %.idx.i130 = shl i64 %.044.i, 4
  %i.sj = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i130 ; 4 uses
  %i.sk = load float, ptr %i.sj, align 16, !tbaa !13, !alias.scope !637 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sm = load float, ptr %i.sl, align 8, !tbaa !13, !alias.scope !637 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 4
  %i.so = load float, ptr %i.sn, align 4, !tbaa !13, !alias.scope !637
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sj, i64 12
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !13, !alias.scope !637
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044.i ; 2 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !13, !alias.scope !635 ; 3 uses
  %i.st = fmul reassoc nsz arcp contract afn float %i.ss, %i.sk
  %i.su = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.st, float f0x358637BD) ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.044.i
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !13, !alias.scope !636
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, %i.sm
  %i.sy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sx, float f0x358637BD)
  %i.sz = fdiv reassoc nsz arcp contract afn float %i.so, %i.su
  %i.ta = fmul reassoc nnan nsz arcp contract afn float %i.sy, %i.su
  %i.tb = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ta)
  %i.tc = fadd reassoc nsz arcp contract afn float %i.sz, %4
  %i.td = fmul reassoc nsz arcp contract afn float %i.tb, %i.tc
  %reass.add180 = fsub reassoc nsz arcp contract afn float %i.ss, %i.sk
  %i.te = fmul reassoc nsz arcp contract afn float %i.sq, %reass.add180
  %reass.mul181 = fdiv reassoc nsz arcp contract afn float %i.te, %i.td
  %i.tf = fadd reassoc nsz arcp contract afn float %reass.mul181, %i.sm
  %i.tg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tf, float f0x37800000)
  %i.th = fmul reassoc nsz arcp contract afn float %i.tg, %i.ss
  %i.ti = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.th)
  store float %i.ti, ptr %i.sr, align 4, !tbaa !13, !alias.scope !635
  %i.tj = add nuw i64 %.044.i, 1                  ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %i.tj, %i.p
  br i1 %exitcond.not.i131, label %eigf_blending.exit, label %.lr.ph.split.i, !llvm.loop !602

bb.f:                                             ; preds = %interpolate_bilinear.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.tk = call ptr @dt_alloc_aligned(i64 noundef %i.ak) #28, !noalias !640 ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.tk, i64 64) ]
  br i1 %.not73.i, label %._crit_edge.i135, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %bb.f
  br i1 %i.at, label %.lr.ph.i133.epil.preheader, label %.lr.ph.i133

._crit_edge.i135.loopexit.unr-lcssa:              ; preds = %.lr.ph.i133
  br i1 %lcmp.mod.not, label %._crit_edge.i135, label %.lr.ph.i133.epil.preheader

.lr.ph.i133.epil.preheader:                       ; preds = %._crit_edge.i135.loopexit.unr-lcssa, %.lr.ph.i133.preheader
  %.05464.i.epil.init = phi i64 [ 0, %.lr.ph.i133.preheader ], [ %i.vz, %._crit_edge.i135.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i133.preheader ], [ %i.vy, %._crit_edge.i135.loopexit.unr-lcssa ]
  %.epil.init305 = phi <2 x float> [ splat (float 1.000000e+07), %.lr.ph.i133.preheader ], [ %i.vw, %._crit_edge.i135.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod308)
  br label %.lr.ph.i133.epil

.lr.ph.i133.epil:                                 ; preds = %.lr.ph.i133.epil, %.lr.ph.i133.epil.preheader
  %.05464.i.epil = phi i64 [ %i.ty, %.lr.ph.i133.epil ], [ %.05464.i.epil.init, %.lr.ph.i133.epil.preheader ] ; 3 uses
  %i.tl = phi <2 x float> [ %i.tx, %.lr.ph.i133.epil ], [ %.epil.init, %.lr.ph.i133.epil.preheader ] ; 2 uses
  %i.tm = phi <2 x float> [ %i.tv, %.lr.ph.i133.epil ], [ %.epil.init305, %.lr.ph.i133.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i133.epil ], [ 0, %.lr.ph.i133.epil.preheader ]
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05464.i.epil
  %i.to = load float, ptr %i.tn, align 4, !tbaa !13, !alias.scope !638 ; 4 uses
  %i.tp = fmul reassoc nsz arcp contract afn float %i.to, %i.to ; 2 uses
  %.idx60.i.epil = shl i64 %.05464.i.epil, 3
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tk, i64 %.idx60.i.epil ; 2 uses
  store float %i.to, ptr %i.tq, align 8, !tbaa !13, !noalias !640
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 4
  store float %i.tp, ptr %i.tr, align 4, !tbaa !13, !noalias !640
  %i.ts = insertelement <2 x float> poison, float %i.to, i64 0
  %i.tt = insertelement <2 x float> %i.ts, float %i.tp, i64 1 ; 4 uses
  %i.tu = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.tm, %i.tt
  %i.tv = select <2 x i1> %i.tu, <2 x float> %i.tm, <2 x float> %i.tt ; 2 uses
  %i.tw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.tl, %i.tt
  %i.tx = select <2 x i1> %i.tw, <2 x float> %i.tl, <2 x float> %i.tt ; 2 uses
  %i.ty = add nuw i64 %.05464.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i135, label %.lr.ph.i133.epil, !llvm.loop !606

._crit_edge.i135:                                 ; preds = %._crit_edge.i135.loopexit.unr-lcssa, %.lr.ph.i133.epil, %bb.f
  %i.tz = phi <2 x float> [ zeroinitializer, %bb.f ], [ %i.vy, %._crit_edge.i135.loopexit.unr-lcssa ], [ %i.tx, %.lr.ph.i133.epil ]
  %i.ua = phi <2 x float> [ splat (float 1.000000e+07), %bb.f ], [ %i.vw, %._crit_edge.i135.loopexit.unr-lcssa ], [ %i.tv, %.lr.ph.i133.epil ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !640
  store <2 x float> %i.tz, ptr %i.a, align 8, !tbaa !13, !noalias !640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !640
  store <2 x float> %i.ua, ptr %i.b, align 8, !tbaa !13, !noalias !640
  %i.ub = call ptr @dt_gaussian_init(i32 noundef %i.al, i32 noundef %i.am, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.h, i32 noundef 0) #28, !noalias !640 ; 3 uses
  %.not.i136 = icmp eq ptr %i.ub, null
  br i1 %.not.i136, label %eigf_variance_analysis_no_mask.exit, label %bb.g

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133
  %.05464.i = phi i64 [ %i.vz, %.lr.ph.i133 ], [ 0, %.lr.ph.i133.preheader ] ; 6 uses
  %i.uc = phi <2 x float> [ %i.vy, %.lr.ph.i133 ], [ zeroinitializer, %.lr.ph.i133.preheader ] ; 2 uses
  %i.ud = phi <2 x float> [ %i.vw, %.lr.ph.i133 ], [ splat (float 1.000000e+07), %.lr.ph.i133.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i133 ], [ 0, %.lr.ph.i133.preheader ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.05464.i
  %i.uf = load float, ptr %i.ue, align 16, !tbaa !13, !alias.scope !638 ; 4 uses
  %i.ug = fmul reassoc nsz arcp contract afn float %i.uf, %i.uf ; 2 uses
  %.idx60.i = shl i64 %.05464.i, 3
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tk, i64 %.idx60.i ; 2 uses
  store float %i.uf, ptr %i.uh, align 32, !tbaa !13, !noalias !640
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  store float %i.ug, ptr %i.ui, align 4, !tbaa !13, !noalias !640
  %i.uj = insertelement <2 x float> poison, float %i.uf, i64 0
  %i.uk = insertelement <2 x float> %i.uj, float %i.ug, i64 1 ; 4 uses
  %i.ul = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ud, %i.uk
  %i.um = select <2 x i1> %i.ul, <2 x float> %i.ud, <2 x float> %i.uk ; 2 uses
  %i.un = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.uc, %i.uk
  %i.uo = select <2 x i1> %i.un, <2 x float> %i.uc, <2 x float> %i.uk ; 2 uses
  %i.up = or disjoint i64 %.05464.i, 1            ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.up
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !13, !alias.scope !638 ; 4 uses
  %i.us = fmul reassoc nsz arcp contract afn float %i.ur, %i.ur ; 2 uses
  %.idx60.i.1 = shl i64 %i.up, 3
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tk, i64 %.idx60.i.1 ; 2 uses
  store float %i.ur, ptr %i.ut, align 8, !tbaa !13, !noalias !640
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 4
  store float %i.us, ptr %i.uu, align 4, !tbaa !13, !noalias !640
  %i.uv = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.uw = insertelement <2 x float> %i.uv, float %i.us, i64 1 ; 4 uses
  %i.ux = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.um, %i.uw
  %i.uy = select <2 x i1> %i.ux, <2 x float> %i.um, <2 x float> %i.uw ; 2 uses
  %i.uz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.uo, %i.uw
  %i.va = select <2 x i1> %i.uz, <2 x float> %i.uo, <2 x float> %i.uw ; 2 uses
end_hunk_1
begin_hunk_2_@fast_eigf_surface_blur:bb.a
  %i.ym = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather235, %i.xv
  %i.yn = fsub reassoc nsz arcp contract afn <8 x float> %i.yl, %i.yk
  %i.yo = fadd reassoc nsz arcp contract afn <8 x float> %i.yn, %i.ym
  %i.yp = fmul reassoc nsz arcp contract afn <8 x float> %i.yo, %broadcast.splat208
  %i.yq = fadd reassoc nsz arcp contract afn <8 x float> %i.yp, %i.yk
  %interleaved.vec236 = shufflevector <8 x float> %i.yh, <8 x float> %i.yq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec236, ptr %i.xy, align 8, !tbaa !13, !alias.scope !643
  %index.next237 = add nuw i64 %index218, 8       ; 2 uses
  %vec.ind.next238 = add nuw <8 x i64> %vec.ind219, splat (i64 8)
  %i.yr = icmp eq i64 %index.next237, %n.vec202
  br i1 %i.yr, label %middle.block239, label %vector.body217, !llvm.loop !612

middle.block239:                                  ; preds = %vector.body217
  br i1 %cmp.n240, label %._crit_edge.i148, label %scalar.ph199.preheader

scalar.ph199.preheader:                           ; preds = %.preheader.i142, %middle.block239
  %.08388.i144.ph = phi i64 [ 0, %.preheader.i142 ], [ %n.vec202, %middle.block239 ]
  %i.ys = insertelement <2 x float> poison, float %i.wz, i64 0
  %i.yt = shufflevector <2 x float> %i.ys, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph199

._crit_edge.i148:                                 ; preds = %scalar.ph199, %middle.block239
  %i.yu = add nuw i64 %.08489.i143, 1             ; 2 uses
  %exitcond93.not.i149 = icmp eq i64 %i.yu, %2
  br i1 %exitcond93.not.i149, label %interpolate_bilinear.exit150, label %.preheader.i142

scalar.ph199:                                     ; preds = %scalar.ph199.preheader, %scalar.ph199
  %.08388.i144 = phi i64 [ %i.aaj, %scalar.ph199 ], [ %.08388.i144.ph, %scalar.ph199.preheader ] ; 3 uses
  %i.yv = uitofp reassoc nsz arcp contract afn i64 %.08388.i144 to float
  %i.yw = fmul reassoc nnan nsz arcp contract afn float %i.ah, %i.yv
  %i.yx = fmul reassoc nsz arcp contract afn float %i.yw, %i.aw ; 2 uses
  %i.yy = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.yx)
  %i.yz = fptoui float %i.yy to i64               ; 3 uses
  %i.za = add i64 %i.yz, 1                        ; 2 uses
  %i.zb = icmp ugt i64 %i.n, %i.yz
  %i.zc = select i1 %i.zb, i64 %i.yz, i64 %i.an   ; 2 uses
  %i.zd = icmp ult i64 %i.za, %i.n
  %i.ze = select i1 %i.zd, i64 %i.za, i64 %i.an   ; 3 uses
  %i.zf = add i64 %i.zc, %i.ww
  %.idx = shl i64 %i.zf, 3
  %i.zg = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.zh = add i64 %i.ze, %i.ww
  %.idx163.a = shl i64 %i.zh, 3
  %i.zi = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx163.a
  %i.zj = add i64 %i.ze, %i.wx
  %.idx164.a = shl i64 %i.zj, 3
  %i.zk = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx164.a
  %i.zl = add i64 %i.zc, %i.wx
  %.idx165.a = shl i64 %i.zl, 3
  %i.zm = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx165.a
  %i.zn = uitofp reassoc nsz arcp contract afn i64 %i.ze to float
  %i.zo = fsub reassoc nsz arcp contract afn float %i.zn, %i.yx ; 2 uses
  %i.zp = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.zo
  %i.zq = add i64 %.08388.i144, %i.xa
  %.idx166 = shl i64 %i.zq, 3
  %i.zr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx166
  %i.zs = load <2 x float>, ptr %i.zm, align 8, !tbaa !13, !alias.scope !642
  %i.zt = insertelement <2 x float> poison, float %i.zo, i64 0
  %i.zu = shufflevector <2 x float> %i.zt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zv = fmul reassoc nsz arcp contract afn <2 x float> %i.zs, %i.zu
  %i.zw = load <2 x float>, ptr %i.zk, align 8, !tbaa !13, !alias.scope !642
  %i.zx = insertelement <2 x float> poison, float %i.zp, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.zz = fmul reassoc nsz arcp contract afn <2 x float> %i.zw, %i.zy
  %i.aaa = fadd reassoc nsz arcp contract afn <2 x float> %i.zz, %i.zv ; 2 uses
  %i.aab = load <2 x float>, ptr %i.zg, align 8, !tbaa !13, !alias.scope !642
  %i.aac = fmul reassoc nsz arcp contract afn <2 x float> %i.aab, %i.zu
  %i.aad = load <2 x float>, ptr %i.zi, align 8, !tbaa !13, !alias.scope !642
  %i.aae = fmul reassoc nsz arcp contract afn <2 x float> %i.aad, %i.zy
  %i.aaf = fsub reassoc nsz arcp contract afn <2 x float> %i.aac, %i.aaa
  %i.aag = fadd reassoc nsz arcp contract afn <2 x float> %i.aaf, %i.aae
  %i.aah = fmul reassoc nsz arcp contract afn <2 x float> %i.aag, %i.yt
  %i.aai = fadd reassoc nsz arcp contract afn <2 x float> %i.aah, %i.aaa
  store <2 x float> %i.aai, ptr %i.zr, align 8, !tbaa !13, !alias.scope !643
  %i.aaj = add nuw i64 %.08388.i144, 1            ; 2 uses
  %exitcond92.not.i147 = icmp eq i64 %i.aaj, %1
  br i1 %exitcond92.not.i147, label %._crit_edge.i148, label %scalar.ph199, !llvm.loop !613

interpolate_bilinear.exit150:                     ; preds = %._crit_edge.i148
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.aak = icmp eq i32 %spec.select, 0
  br i1 %i.aak, label %.lr.ph.split.us.i157.preheader, label %.lr.ph.split.i153.preheader

.lr.ph.split.i153.preheader:                      ; preds = %interpolate_bilinear.exit150
  br i1 %min.iters.check168, label %.lr.ph.split.i153.preheader298, label %vector.body189

vector.body189:                                   ; preds = %.lr.ph.split.i153.preheader, %vector.body189
  %index190 = phi i64 [ %index.next195, %vector.body189 ], [ 0, %.lr.ph.split.i153.preheader ] ; 3 uses
  %i.aal = shl i64 %index190, 3
  %i.aam = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aal
  %wide.vec191 = load <16 x float>, ptr %i.aam, align 64, !tbaa !13, !alias.scope !645 ; 2 uses
  %strided.vec192 = shufflevector <16 x float> %wide.vec191, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec193 = shufflevector <16 x float> %wide.vec191, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index190 ; 2 uses
  %wide.load194 = load <8 x float>, ptr %i.aan, align 4, !tbaa !13, !alias.scope !644 ; 3 uses
  %i.aao = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194, %strided.vec192
  %i.aap = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aao, <8 x float> splat (float f0x358637BD))
  %i.aaq = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec193, %i.aap ; 2 uses
  %i.aar = fadd reassoc nsz arcp contract afn <8 x float> %i.aaq, %broadcast.splat188
  %i.aas = fsub reassoc nsz arcp contract afn <8 x float> %wide.load194, %strided.vec192
  %i.aat = fmul reassoc nsz arcp contract afn <8 x float> %i.aaq, %i.aas
  %i.aau = fdiv reassoc nsz arcp contract afn <8 x float> %i.aat, %i.aar
  %i.aav = fadd reassoc nsz arcp contract afn <8 x float> %i.aau, %strided.vec192
  %i.aaw = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.aav, <8 x float> splat (float f0x37800000))
  %i.aax = fmul reassoc nsz arcp contract afn <8 x float> %i.aaw, %wide.load194
  %i.aay = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.aax)
  store <8 x float> %i.aay, ptr %i.aan, align 4, !tbaa !13, !alias.scope !644
  %index.next195 = add nuw i64 %index190, 8       ; 2 uses
  %i.aaz = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.aaz, label %middle.block196, label %vector.body189, !llvm.loop !617

middle.block196:                                  ; preds = %vector.body189
  br i1 %cmp.n197, label %eigf_blending.exit, label %.lr.ph.split.i153.preheader298

.lr.ph.split.i153.preheader298:                   ; preds = %.lr.ph.split.i153.preheader, %middle.block196
  %.034.i.ph = phi i64 [ 0, %.lr.ph.split.i153.preheader ], [ %n.vec186, %middle.block196 ]
  br label %.lr.ph.split.i153

.lr.ph.split.us.i157.preheader:                   ; preds = %interpolate_bilinear.exit150
  br i1 %min.iters.check168, label %.lr.ph.split.us.i157.preheader296, label %vector.body173

vector.body173:                                   ; preds = %.lr.ph.split.us.i157.preheader, %vector.body173
  %index174 = phi i64 [ %index.next179, %vector.body173 ], [ 0, %.lr.ph.split.us.i157.preheader ] ; 3 uses
  %i.aba = shl i64 %index174, 3
  %i.abb = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aba
  %wide.vec175 = load <16 x float>, ptr %i.abb, align 64, !tbaa !13, !alias.scope !645 ; 2 uses
  %strided.vec176 = shufflevector <16 x float> %wide.vec175, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %strided.vec177 = shufflevector <16 x float> %wide.vec175, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index174 ; 2 uses
  %wide.load178 = load <8 x float>, ptr %i.abc, align 4, !tbaa !13, !alias.scope !644 ; 2 uses
  %i.abd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load178, %strided.vec176
  %i.abe = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.abd, <8 x float> splat (float f0x358637BD))
  %i.abf = fdiv reassoc nsz arcp contract afn <8 x float> %strided.vec177, %i.abe ; 2 uses
  %i.abg = fadd reassoc nsz arcp contract afn <8 x float> %i.abf, %broadcast.splat172
  %i.abh = fsub reassoc nsz arcp contract afn <8 x float> %wide.load178, %strided.vec176
  %i.abi = fmul reassoc nsz arcp contract afn <8 x float> %i.abf, %i.abh
  %i.abj = fdiv reassoc nsz arcp contract afn <8 x float> %i.abi, %i.abg
  %i.abk = fadd reassoc nsz arcp contract afn <8 x float> %i.abj, %strided.vec176
  %i.abl = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.abk, <8 x float> splat (float f0x37800000))
  store <8 x float> %i.abl, ptr %i.abc, align 4, !tbaa !13, !alias.scope !644
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.abm = icmp eq i64 %index.next179, %n.vec170
  br i1 %i.abm, label %middle.block180, label %vector.body173, !llvm.loop !618

middle.block180:                                  ; preds = %vector.body173
  br i1 %cmp.n181, label %eigf_blending.exit, label %.lr.ph.split.us.i157.preheader296

.lr.ph.split.us.i157.preheader296:                ; preds = %.lr.ph.split.us.i157.preheader, %middle.block180
  %.034.us.i.ph = phi i64 [ 0, %.lr.ph.split.us.i157.preheader ], [ %n.vec170, %middle.block180 ]
  br label %.lr.ph.split.us.i157

.lr.ph.split.us.i157:                             ; preds = %.lr.ph.split.us.i157.preheader296, %.lr.ph.split.us.i157
  %.034.us.i = phi i64 [ %i.aca, %.lr.ph.split.us.i157 ], [ %.034.us.i.ph, %.lr.ph.split.us.i157.preheader296 ] ; 3 uses
  %.idx.us.i158 = shl i64 %.034.us.i, 3
  %i.abn = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.us.i158 ; 2 uses
  %i.abo = load float, ptr %i.abn, align 8, !tbaa !13, !alias.scope !645 ; 3 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !13, !alias.scope !645
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.us.i ; 2 uses
  %i.abs = load float, ptr %i.abr, align 4, !tbaa !13, !alias.scope !644 ; 2 uses
  %i.abt = fmul reassoc nsz arcp contract afn float %i.abs, %i.abo
  %i.abu = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abt, float f0x358637BD)
  %i.abv = fdiv reassoc nsz arcp contract afn float %i.abq, %i.abu ; 2 uses
  %i.abw = fadd reassoc nsz arcp contract afn float %i.abv, %4
  %reass.add175 = fsub reassoc nsz arcp contract afn float %i.abs, %i.abo
  %i.abx = fmul reassoc nsz arcp contract afn float %i.abv, %reass.add175
  %reass.mul176 = fdiv reassoc nsz arcp contract afn float %i.abx, %i.abw
  %i.aby = fadd reassoc nsz arcp contract afn float %reass.mul176, %i.abo
  %i.abz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aby, float f0x37800000)
  store float %i.abz, ptr %i.abr, align 4, !tbaa !13, !alias.scope !644
  %i.aca = add nuw i64 %.034.us.i, 1              ; 2 uses
  %exitcond36.not.i = icmp eq i64 %i.aca, %i.p
  br i1 %exitcond36.not.i, label %eigf_blending.exit, label %.lr.ph.split.us.i157, !llvm.loop !619

.lr.ph.split.i153:                                ; preds = %.lr.ph.split.i153.preheader298, %.lr.ph.split.i153
  %.034.i = phi i64 [ %i.acq, %.lr.ph.split.i153 ], [ %.034.i.ph, %.lr.ph.split.i153.preheader298 ] ; 3 uses
  %.idx.i154 = shl i64 %.034.i, 3
  %i.acb = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i154 ; 2 uses
  %i.acc = load float, ptr %i.acb, align 8, !tbaa !13, !alias.scope !645 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acb, i64 4
  %i.ace = load float, ptr %i.acd, align 4, !tbaa !13, !alias.scope !645
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.034.i ; 2 uses
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !13, !alias.scope !644 ; 3 uses
  %i.ach = fmul reassoc nsz arcp contract afn float %i.acg, %i.acc
  %i.aci = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ach, float f0x358637BD)
  %i.acj = fdiv reassoc nsz arcp contract afn float %i.ace, %i.aci ; 2 uses
  %i.ack = fadd reassoc nsz arcp contract afn float %i.acj, %4
  %reass.add = fsub reassoc nsz arcp contract afn float %i.acg, %i.acc
  %i.acl = fmul reassoc nsz arcp contract afn float %i.acj, %reass.add
  %reass.mul = fdiv reassoc nsz arcp contract afn float %i.acl, %i.ack
  %i.acm = fadd reassoc nsz arcp contract afn float %reass.mul, %i.acc
  %i.acn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.acm, float f0x37800000)
  %i.aco = fmul reassoc nsz arcp contract afn float %i.acn, %i.acg
  %i.acp = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aco)
  store float %i.acp, ptr %i.acf, align 4, !tbaa !13, !alias.scope !644
  %i.acq = add nuw i64 %.034.i, 1                 ; 2 uses
  %exitcond.not.i155 = icmp eq i64 %i.acq, %i.p
  br i1 %exitcond.not.i155, label %eigf_blending.exit, label %.lr.ph.split.i153, !llvm.loop !620

eigf_blending.exit:                               ; preds = %.lr.ph.split.i153, %.lr.ph.split.us.i157, %.lr.ph.split.i, %.lr.ph.split.us.i, %middle.block196, %middle.block180, %middle.block36, %middle.block, %eigf_variance_analysis_no_mask.exit, %eigf_variance_analysis.exit
  %i.acr = add nuw nsw i32 %.089232, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.acr, %5
  br i1 %exitcond.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %eigf_blending.exit, %.preheader, %bb.b
  call void @free(ptr noundef %i.y) #28
  call void @free(ptr noundef %i.w) #28
  call void @free(ptr noundef %i.u) #28
  call void @free(ptr noundef %i.t) #28
  call void @free(ptr noundef %i.r) #28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #2

declare void @dt_box_mean(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #2

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #2

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_gaussian_blur_4c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #6

declare void @dt_gaussian_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #2

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @dt_iop_refresh_all(ptr noundef) local_unnamed_addr #6

declare i32 @dt_ioppr_get_iop_order(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare i32 @dt_dev_distort_backtransform_plus(ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @dt_iop_canvas_not_sensitive(ptr noundef) local_unnamed_addr #6

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #6

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #6

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #6

declare void @cairo_save(ptr noundef) local_unnamed_addr #6

declare void @cairo_clip(ptr noundef) local_unnamed_addr #6

declare void @cairo_restore(ptr noundef) local_unnamed_addr #6

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @dt_control_signal_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal void @_develop_distort_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !60  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 3044 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !238
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3312), align 8, !tbaa !239
  %i.g = and i32 %i.f, 4
  %.not4.i = icmp eq i32 %i.g, 0
  br i1 %.not4.i, label %_unset_distort_signal.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !173
  %i.i = and i32 %i.h, 1048576
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %_unset_distort_signal.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.49, i32 noundef 2538, ptr noundef nonnull @__FUNCTION__._unset_distort_signal) #28, !inline_history !0
  br label %_unset_distort_signal.exit

_unset_distort_signal.exit:                       ; preds = %bb.c, %bb.d, %bb.e
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 96), align 8, !tbaa !240
  tail call void @dt_control_signal_disconnect(ptr noundef %i.j, ptr noundef nonnull @_develop_distort_callback, ptr noundef nonnull %1) #28, !inline_history !0
  store i32 0, ptr %i.d, align 4, !tbaa !238
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.l = load i32, ptr %i.k, align 16, !tbaa !215
  %.not5 = icmp eq i32 %i.l, 0
  br i1 %.not5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_unset_distort_signal.exit
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !202
  tail call void @dt_dev_reprocess_preview(ptr noundef %i.m) #28
  br label %bb.g

bb.g:                                             ; preds = %_unset_distort_signal.exit, %bb.f, %bb.b, %bb.a
  ret void
}

declare void @dt_dev_reprocess_preview(ptr noundef) local_unnamed_addr #6

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #6

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #6

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare ptr @cairo_pattern_create_linear(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_set_source(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @cairo_pattern_destroy(ptr noundef) local_unnamed_addr #6

declare void @cairo_stroke_preserve(ptr noundef) local_unnamed_addr #6

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @cairo_pattern_add_color_stop_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_histogram(ptr noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !60  ; 11 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.f = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.e) #28 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 3024 ; 2 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !100
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3020
  %i.j = load i32, ptr %i.i, align 4, !tbaa !99
  %.not17 = icmp eq i32 %i.j, 0
  br i1 %.not17, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2544
  %i.l = load i64, ptr %i.k, align 16, !tbaa !110
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 2536
  %i.n = load i64, ptr %i.m, align 8, !tbaa !109
  %i.o = mul i64 %i.n, %i.l                       ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 2576
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !111 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1408 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 2480 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 2564
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 2568
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.r, i8 0, i64 1024, i1 false), !noalias !648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !648
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false), !noalias !648
  %.not83.i = icmp eq i64 %i.o, 0
  br i1 %.not83.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.o, 1
  %i.v = icmp eq i64 %i.o, 1
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.06577.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bj, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %i.o to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06577.i.epil.init
end_hunk_2
