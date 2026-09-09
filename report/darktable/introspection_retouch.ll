Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_retouch?download=true
inline.NumInlined: 227
inline.NumDeleted: 64
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 25
begin_hunk_0_@image_rgb2lab:bb.a
  %i.ag = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.s) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = phi reassoc nsz arcp contract afn float [ %i.ag, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.u, f0x3F9B2B9B ; 2 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.ai, f0x3C111AA7
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = fmul reassoc nsz arcp contract afn float %i.u, f0x41170A26
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, f0x3E0D3DCB
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ai) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.an = phi reassoc nsz arcp contract afn float [ %i.am, %bb.i ], [ %i.al, %bb.h ]
  %i.ao = fmul reassoc nsz arcp contract afn float %i.w, 0.000000e+00 ; 3 uses
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.ao, f0x3C111AA7
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ao, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ao) #29
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.k, %bb.l
  %i.as = phi reassoc nsz arcp contract afn float [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  %i.at = fmul reassoc nsz arcp contract afn float %i.ah, 1.160000e+02
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ac, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.an, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.as, i64 3
  %i.ay = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.ah, i64 1
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.ba = fsub reassoc nsz arcp contract afn <4 x float> %i.ax, %i.az
  %i.bb = fmul reassoc nsz arcp contract afn <4 x float> %i.ba, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.bb, ptr %i.d, align 4, !tbaa !12
  %i.bc = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

declare void @dt_bilateral_splat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_blur(ptr noundef) local_unnamed_addr #3

declare void @dt_bilateral_slice(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_bilateral_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @image_lab2rgb(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a                   ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.ph

.lr.ph.preheader20:                               ; preds = %vector.body, %.lr.ph.preheader
  %.017.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.d = and i64 %i.c, 7                          ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.e, i64 8, i64 %i.d
  %n.vec = sub i64 %i.c, %i.f                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g ; 2 uses
  %wide.vec = load <32 x float>, ptr %i.h, align 4, !tbaa !12 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec18 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec19 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.i = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec18, splat (float 2.000000e-03)
  %i.j = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 8.620690e-03)
  %i.k = fadd reassoc nsz arcp contract afn <8 x float> %i.j, splat (float f0x3E0D3DCB) ; 7 uses
  %i.l = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec19, splat (float 5.000000e-03)
  %i.m = fadd reassoc nsz arcp contract afn <8 x float> %i.k, %i.i ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.m, splat (float f0x3E53DCB1)
  %i.o = fmul reassoc nsz arcp contract afn <8 x float> %i.m, %i.m
  %i.p = fmul reassoc nsz arcp contract afn <8 x float> %i.o, %i.m
  %i.q = fmul reassoc nsz arcp contract afn <8 x float> %i.m, splat (float f0x3E038026)
  %i.r = fadd reassoc nsz arcp contract afn <8 x float> %i.q, splat (float f0xBC911AA6)
  %i.s = select reassoc nsz arcp contract afn <8 x i1> %i.n, <8 x float> %i.p, <8 x float> %i.r ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.k, splat (float f0x3E53DCB1)
  %i.u = fmul reassoc nsz arcp contract afn <8 x float> %i.k, %i.k
  %i.v = fmul reassoc nsz arcp contract afn <8 x float> %i.u, %i.k
  %i.w = fmul reassoc nsz arcp contract afn <8 x float> %i.k, splat (float f0x3E038026)
  %i.x = fadd reassoc nsz arcp contract afn <8 x float> %i.w, splat (float f0xBC911AA6)
  %i.y = select reassoc nsz arcp contract afn <8 x i1> %i.t, <8 x float> %i.v, <8 x float> %i.x ; 3 uses
  %i.z = fsub reassoc nsz arcp contract afn <8 x float> %i.k, %i.l ; 5 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.z, splat (float f0x3E53DCB1)
  %i.ab = fmul reassoc nsz arcp contract afn <8 x float> %i.z, %i.z
  %i.ac = fmul reassoc nsz arcp contract afn <8 x float> %i.ab, %i.z
  %i.ad = fmul reassoc nsz arcp contract afn <8 x float> %i.z, splat (float f0x3E038026)
  %i.ae = fadd reassoc nsz arcp contract afn <8 x float> %i.ad, splat (float f0xBC911AA6)
  %i.af = select reassoc nsz arcp contract afn <8 x i1> %i.aa, <8 x float> %i.ac, <8 x float> %i.ae ; 3 uses
  %i.ag = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float 9.642000e-01)
  %i.ah = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x3F532CA5)
  %i.ai = fmul reassoc nsz arcp contract afn <8 x float> %i.s, splat (float f0x3D8E11AE)
  %i.aj = fmul reassoc nsz arcp contract afn <8 x float> %i.y, splat (float f0xBE6A7CB9)
  %i.ak = fadd reassoc nsz arcp contract afn <8 x float> %i.ai, %i.aj
  %i.al = fmul reassoc nsz arcp contract afn <8 x float> %i.af, splat (float f0x3F94602A)
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.ak, %i.al
  %i.an = fadd reassoc nsz arcp contract afn <8 x float> %i.y, %i.ag
  %i.ao = fadd reassoc nsz arcp contract afn <8 x float> %i.an, %i.ah
  %i.ap = fmul reassoc nsz arcp contract afn <8 x float> %i.ao, zeroinitializer
  %i.aq = shufflevector <8 x float> %i.s, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ar = fmul reassoc nsz arcp contract afn <16 x float> %i.aq, <float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0x404162F2, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831, float f0xBF719831>
  %i.as = shufflevector <8 x float> %i.y, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.at = fmul reassoc nsz arcp contract afn <16 x float> %i.as, <float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0xBFCEF57D, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420, float f0x3FF54420>
  %i.au = fadd reassoc nsz arcp contract afn <16 x float> %i.ar, %i.at
  %i.av = shufflevector <8 x float> %i.af, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aw = fmul reassoc nsz arcp contract afn <16 x float> %i.av, <float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0xBECF35E2, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F, float f0x3CE2116F>
  %i.ax = fadd reassoc nsz arcp contract afn <16 x float> %i.au, %i.aw
  %i.ay = shufflevector <8 x float> %i.am, <8 x float> %i.ap, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.ax, <16 x float> %i.ay, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.h, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %.lr.ph.preheader20, label %vector.body, !llvm.loop !390

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader20, %.lr.ph
  %.017 = phi i64 [ %i.cs, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader20 ] ; 2 uses
  %.idx = shl i64 %.017, 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !12
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bc, 2.000000e-03
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bd, 8.620690e-03
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, f0x3E0D3DCB ; 4 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bf, 5.000000e-03
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bi, %i.bg ; 2 uses
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bi, %i.bj
  %i.bm = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1 ; 5 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, splat (float f0x3E53DCB1)
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bn
  %i.bq = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bk, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bl, i64 3 ; 4 uses
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.bu = fmul reassoc nsz arcp contract afn <4 x float> %i.bs, %i.bs
  %i.bv = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bn
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, splat (float f0x3E038026)
  %i.bx = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, splat (float f0x3E038026)
  %i.by = fadd reassoc nsz arcp contract afn <2 x float> %i.bw, splat (float f0xBC911AA6)
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.bt, splat (float f0x3E53DCB1)
  %i.ca = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, %i.bs
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.cc = fadd reassoc nsz arcp contract afn <4 x float> %i.bx, splat (float f0xBC911AA6)
  %i.cd = select <2 x i1> %i.bo, <2 x float> %i.bv, <2 x float> %i.by
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.cf = select <4 x i1> %i.bz, <4 x float> %i.cb, <4 x float> %i.cc ; 2 uses
  %i.cg = shufflevector <4 x float> <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float poison>, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ch = fmul reassoc nsz arcp contract afn <4 x float> %i.cg, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 9.642000e-01> ; 2 uses
  %i.ci = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, <float f0xBFCEF57D, float f0xBF719831, float f0xBE6A7CB9, float f0x3F532CA5>
  %i.cj = shufflevector <4 x float> %i.cf, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.ck = fmul reassoc nsz arcp contract afn <4 x float> %i.cj, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ce, %i.ch
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %i.ce, %i.ch
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cn, %i.ci ; 2 uses
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.ck
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.cr, ptr %i.ba, align 4, !tbaa !12
  %i.cs = add nuw i64 %.017, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !391
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #22

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_rgb_matrix_to_lab(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #23 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call fastcc void @dt_ioppr_apply_trc(ptr noundef nonnull readonly %0, ptr noundef %i.a, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %4, i32 noundef %5)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %7 = load <3 x float>, ptr %i.a, align 16, !tbaa !12 ; 3 uses
  %i.d = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.e = shufflevector <3 x float> %7, <3 x float> poison, <4 x i32> zeroinitializer
  %i.f = fmul reassoc nsz arcp contract afn <4 x float> %i.d, %i.e
  %i.g = load <4 x float>, ptr %i.b, align 4, !tbaa !12
  %8 = shufflevector <3 x float> %7, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.h = fmul reassoc nsz arcp contract afn <4 x float> %i.g, %8
  %i.i = fadd reassoc nsz arcp contract afn <4 x float> %i.h, %i.f
  %i.j = load <4 x float>, ptr %i.c, align 4, !tbaa !12
  %9 = shufflevector <3 x float> %7, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.k = fmul reassoc nsz arcp contract afn <4 x float> %i.j, %9
  %i.l = fadd reassoc nsz arcp contract afn <4 x float> %i.i, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %10 = load <3 x float>, ptr %0, align 4, !tbaa !12 ; 3 uses
  %i.o = load <4 x float>, ptr %2, align 4, !tbaa !12
  %i.p = shufflevector <3 x float> %10, <3 x float> poison, <4 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <4 x float> %i.o, %i.p
  %i.r = load <4 x float>, ptr %i.m, align 4, !tbaa !12
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.s = fmul reassoc nsz arcp contract afn <4 x float> %i.r, %11
  %i.t = fadd reassoc nsz arcp contract afn <4 x float> %i.s, %i.q
  %i.u = load <4 x float>, ptr %i.n, align 4, !tbaa !12
  %12 = shufflevector <3 x float> %10, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.v = fmul reassoc nsz arcp contract afn <4 x float> %i.u, %12
  %i.w = fadd reassoc nsz arcp contract afn <4 x float> %i.t, %i.v
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

dt_ioppr_rgb_matrix_to_xyz.exit:                  ; preds = %bb.b, %bb.c
  %i.x = phi <4 x float> [ %i.w, %bb.c ], [ %i.l, %bb.b ] ; 4 uses
  %i.y = extractelement <4 x float> %i.x, i64 0   ; 2 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, f0x3F84C0A6 ; 2 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ogt float %i.z, f0x3C111AA7
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit
  %i.ab = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.z) #29
  br label %bb.f

bb.e:                                             ; preds = %dt_ioppr_rgb_matrix_to_xyz.exit
  %i.ac = fmul reassoc nsz arcp contract afn float %i.y, f0x410137F7
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, f0x3E0D3DCB
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = phi reassoc nsz arcp contract afn float [ %i.ab, %bb.d ], [ %i.ad, %bb.e ]
  %i.af = extractelement <4 x float> %i.x, i64 1  ; 3 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ogt float %i.af, f0x3C111AA7
  br i1 %i.ag, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = fmul reassoc nsz arcp contract afn float %i.af, f0x40F92F69
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, f0x3E0D3DCB
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.af) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi reassoc nsz arcp contract afn float [ %i.aj, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %i.al = extractelement <4 x float> %i.x, i64 2  ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, f0x3F9B2B9B ; 2 uses
  %i.an = fcmp reassoc nsz arcp contract afn ogt float %i.am, f0x3C111AA7
  br i1 %i.an, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = fmul reassoc nsz arcp contract afn float %i.al, f0x41170A26
  %i.ap = fadd reassoc nsz arcp contract afn float %i.ao, f0x3E0D3DCB
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aq = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.am) #29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi reassoc nsz arcp contract afn float [ %i.aq, %bb.k ], [ %i.ap, %bb.j ]
  %i.as = extractelement <4 x float> %i.x, i64 3
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, 0.000000e+00 ; 3 uses
  %i.au = fcmp reassoc nsz arcp contract afn ogt float %i.at, f0x3C111AA7
  br i1 %i.au, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = fadd reassoc nsz arcp contract afn float %i.at, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.n:                                             ; preds = %bb.l
  %i.aw = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.at) #29
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.m, %bb.n
  %i.ax = phi reassoc nsz arcp contract afn float [ %i.aw, %bb.n ], [ %i.av, %bb.m ]
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ak, 1.160000e+02
  %i.az = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.ae, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ar, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ax, i64 3
  %i.bd = insertelement <4 x float> <float 1.600000e+01, float poison, float poison, float 0.000000e+00>, float %i.ak, i64 1
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.bf = fsub reassoc nsz arcp contract afn <4 x float> %i.bc, %i.be
  %i.bg = fmul reassoc nsz arcp contract afn <4 x float> %i.bf, <float 1.000000e+00, float 5.000000e+02, float -2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.bg, ptr %1, align 4, !tbaa !12
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_ioppr_apply_trc(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4) unnamed_addr #23 {
bb.a:
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !267    ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !12   ; 4 uses
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = fsub reassoc nsz arcp contract afn float %i.w, %i.u
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.r
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.u
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = load float, ptr %3, align 4, !tbaa !12
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ad, float %i.af)
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %i.ai = phi reassoc nsz arcp contract afn float [ %i.ah, %bb.d ], [ %i.z, %bb.c ], [ %i.h, %bb.a ]
  store float %i.ai, ptr %1, align 4, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !267 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !12
  %i.am = fcmp reassoc nsz arcp contract afn ult float %i.al, 0.000000e+00
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !12 ; 4 uses
  br i1 %i.am, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.ao, 1.000000e+00
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = load float, ptr %i.aq, align 4, !tbaa !12
  %i.au = fmul reassoc nsz arcp contract afn float %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !12
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.aw)
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.as
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.b ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.b
  %..i.1 = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.b
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %..i.1, float 0.000000e+00 ; 3 uses
  %i.bd = fcmp reassoc nsz arcp contract afn olt float %i.bc, %i.d
  %i.be = select reassoc nsz arcp contract afn i1 %i.bd, float %i.bc, float %i.d
  %i.bf = fptosi float %i.be to i32               ; 2 uses
  %i.bg = sitofp reassoc nsz arcp contract afn i32 %i.bf to float
  %i.bh = fsub reassoc nnan nsz arcp contract afn float %i.bc, %i.bg
  %i.bi = sext i32 %i.bf to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fmul reassoc nsz arcp contract afn float %i.bn, %i.bh
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.bk
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g
  %i.bq = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.g ], [ %i.bp, %bb.h ], [ %i.ao, %bb.e ]
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bq, ptr %i.br, align 4, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !267 ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = fcmp reassoc nsz arcp contract afn ult float %i.bu, 0.000000e+00
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12 ; 4 uses
  br i1 %i.bv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = fcmp reassoc nsz arcp contract afn olt float %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !12
  %i.cc = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 32
end_hunk_0
