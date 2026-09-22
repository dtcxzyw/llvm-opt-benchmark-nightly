Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalancergb?download=true
inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@commit_params:bb.a
  %i.ajj = fdiv reassoc nsz arcp contract afn float %i.ajf, %i.aji
  store float %i.ajj, ptr %i.aje, align 4, !tbaa !12
  %i.ajk = or disjoint i64 %.0151.i, 1            ; 2 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.ajk ; 2 uses
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !12
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.ajk
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !12
  %i.ajp = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ajo, float 1.000000e+00)
  %i.ajq = fdiv reassoc nsz arcp contract afn float %i.ajm, %i.ajp
  store float %i.ajq, ptr %i.ajl, align 4, !tbaa !12
  %i.ajr = or disjoint i64 %.0151.i, 2            ; 2 uses
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.ajr ; 2 uses
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !12
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.ajr
  %i.ajv = load float, ptr %i.aju, align 8, !tbaa !12
  %i.ajw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ajv, float 1.000000e+00)
  %i.ajx = fdiv reassoc nsz arcp contract afn float %i.ajt, %i.ajw
  store float %i.ajx, ptr %i.ajs, align 4, !tbaa !12
  %i.ajy = or disjoint i64 %.0151.i, 3            ; 2 uses
  %i.ajz = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.ajy ; 2 uses
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !12
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.ajy
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !12
  %i.akd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.akc, float 1.000000e+00)
  %i.ake = fdiv reassoc nsz arcp contract afn float %i.aka, %i.akd
  store float %i.ake, ptr %i.ajz, align 4, !tbaa !12
  %i.akf = add nuw nsw i64 %.0151.i, 4            ; 2 uses
  %exitcond152.not.i.3 = icmp eq i64 %i.akf, 512
  br i1 %exitcond152.not.i.3, label %.sink.split, label %.preheader.i, !llvm.loop !255

.sink.split:                                      ; preds = %vector.body, %.preheader.i, %.loopexit
  %.sink = phi ptr [ %i.py, %.loopexit ], [ %i.aak, %.preheader.i ], [ %i.aak, %vector.body ]
  tail call void @free(ptr noundef nonnull %.sink) #19
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split, %bb.z
  store i32 1, ptr %i.or, align 16, !tbaa !167
  br label %bb.ap

bb.ap:                                            ; preds = %bb.y, %bb.ao, %bb.w
  ret void
}

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #3

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define void @init_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((16, 24)) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 256) #19 ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %dt_calloc_aligned.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  br label %dt_calloc_aligned.exit

dt_calloc_aligned.exit:                           ; preds = %bb.a, %bb.b
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 64) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.b, align 16, !tbaa !41
  %i.c = tail call ptr @dt_alloc_aligned(i64 noundef 2048) #19 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 64) ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.c, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i32 0, ptr %i.e, align 16, !tbaa !167
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr null, ptr %i.f, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_pipe(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !41  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.d) #19
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  tail call void @free(ptr noundef %i.e) #19
  store ptr null, ptr %i.a, align 16, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @pipe_RGB_to_Ych(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = tail call ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef %0, ptr noundef %1) #19 ; 16 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 896 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 852
  %i.f = load i32, ptr %i.e, align 4, !tbaa !172
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  %i.h = load i32, ptr %i.g, align 64, !tbaa !173
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call fastcc void @dt_ioppr_apply_trc(ptr noundef readonly %2, ptr noundef %i.a, ptr noundef nonnull readonly %i.j, ptr noundef nonnull readonly %i.i, i32 noundef %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load float, ptr %i.d, align 64, !tbaa !12
  %i.p = load float, ptr %i.k, align 16, !tbaa !12
  %i.q = load float, ptr %i.m, align 32, !tbaa !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 900
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 932
  %i.u = load float, ptr %i.n, align 8, !tbaa !12 ; 2 uses
  %i.v = load float, ptr %i.a, align 16, !tbaa !12 ; 2 uses
  %i.w = load float, ptr %i.l, align 4, !tbaa !12 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.o
  %i.y = fmul reassoc nsz arcp contract afn float %i.w, %i.p
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = fmul reassoc nsz arcp contract afn float %i.u, %i.q
  %i.ab = fadd reassoc nsz arcp contract afn float %i.z, %i.aa
  %i.ac = load <2 x float>, ptr %i.r, align 4, !tbaa !12
  %i.ad = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul reassoc nsz arcp contract afn <2 x float> %i.ac, %i.ae
  %i.ag = load <2 x float>, ptr %i.s, align 4, !tbaa !12
  %i.ah = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ag, %i.ai
  %i.ak = fadd reassoc nsz arcp contract afn <2 x float> %i.aj, %i.af
  %i.al = load <2 x float>, ptr %i.t, align 4, !tbaa !12
  %i.am = insertelement <2 x float> poison, float %i.u, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.al, %i.an
  %i.ap = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

bb.d:                                             ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.d, align 4, !tbaa !12
  %i.av = load float, ptr %i.aq, align 4, !tbaa !12
  %i.aw = load float, ptr %i.as, align 4, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 900
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 932
  %i.ba = load float, ptr %i.at, align 4, !tbaa !12 ; 2 uses
  %i.bb = load float, ptr %2, align 4, !tbaa !12  ; 2 uses
  %i.bc = load float, ptr %i.ar, align 4, !tbaa !12 ; 2 uses
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bb, %i.au
  %i.be = fmul reassoc nsz arcp contract afn float %i.bc, %i.av
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %i.bd
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ba, %i.aw
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, %i.bg
  %i.bi = load <2 x float>, ptr %i.ax, align 4, !tbaa !12
  %i.bj = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bk
  %i.bm = load <2 x float>, ptr %i.ay, align 4, !tbaa !12
  %i.bn = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bo
  %i.bq = fadd reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bl
  %i.br = load <2 x float>, ptr %i.az, align 4, !tbaa !12
  %i.bs = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul reassoc nsz arcp contract afn <2 x float> %i.br, %i.bt
  %i.bv = fadd reassoc nsz arcp contract afn <2 x float> %i.bq, %i.bu
  br label %dt_ioppr_rgb_matrix_to_xyz.exit

dt_ioppr_rgb_matrix_to_xyz.exit:                  ; preds = %bb.c, %bb.d
  %.sroa.010.0 = phi nsz float [ %i.bh, %bb.d ], [ %i.ab, %bb.c ] ; 3 uses
  %i.bw = phi <2 x float> [ %i.bv, %bb.d ], [ %i.ap, %bb.c ] ; 2 uses
  %4 = fmul reassoc nsz arcp contract afn float %.sroa.010.0, f0x3F7D4DA9
  %i.bx = extractelement <2 x float> %i.bw, i64 0 ; 3 uses
  %5 = fmul reassoc nsz arcp contract afn float %i.bx, f0x3D23F6FB
  %6 = fsub reassoc nsz arcp contract afn float %4, %5
  %i.by = extractelement <2 x float> %i.bw, i64 1 ; 3 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, f0x3D3470F4
  %7 = fadd reassoc nsz arcp contract afn float %6, %i.bz ; 3 uses
  %8 = fmul reassoc nsz arcp contract afn float %.sroa.010.0, f0x3BB11DFF
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bx, f0x3F80DA42
  %9 = fsub reassoc nsz arcp contract afn float %i.ca, %8
  %10 = fmul reassoc nsz arcp contract afn float %i.by, f0xBAE61976
  %11 = fadd reassoc nsz arcp contract afn float %9, %10 ; 3 uses
  %12 = fmul reassoc nsz arcp contract afn float %.sroa.010.0, 4.039210e-04
  %13 = fmul reassoc nsz arcp contract afn float %i.bx, f0x3C7704B2
  %14 = fsub reassoc nsz arcp contract afn float %13, %12
  %15 = fmul reassoc nsz arcp contract afn float %i.by, f0x3FA6AB48
  %16 = fadd reassoc nsz arcp contract afn float %14, %15 ; 3 uses
  %17 = fmul reassoc nsz arcp contract afn float %7, 2.570850e-01
  %18 = fmul reassoc nsz arcp contract afn float %11, f0x3F5C2539
  %19 = fadd reassoc nsz arcp contract afn float %18, %17
  %20 = fmul reassoc nsz arcp contract afn float %16, -3.106100e-02
  %21 = fadd reassoc nsz arcp contract afn float %19, %20 ; 3 uses
  %22 = fmul reassoc nsz arcp contract afn float %7, 3.944270e-01
  %23 = fmul reassoc nsz arcp contract afn float %11, 1.175800e+00
  %24 = fsub reassoc nsz arcp contract afn float %23, %22
  %25 = fmul reassoc nsz arcp contract afn float %16, 1.064230e-01
  %26 = fadd reassoc nsz arcp contract afn float %24, %25 ; 3 uses
  %27 = fmul reassoc nsz arcp contract afn float %7, 6.485600e-02
  %28 = fmul reassoc nsz arcp contract afn float %11, 7.625000e-02
  %29 = fsub reassoc nsz arcp contract afn float %27, %28
  %30 = fmul reassoc nsz arcp contract afn float %16, 5.590670e-01
  %i.cb = fadd reassoc nsz arcp contract afn float %29, %30 ; 2 uses
  %31 = fadd reassoc nsz arcp contract afn float %26, %21
  %i.cc = fadd reassoc nsz arcp contract afn float %31, %i.cb ; 4 uses
  %i.cd = fcmp reassoc nsz arcp contract afn oeq float %i.cc, 0.000000e+00 ; 3 uses
  %32 = fdiv reassoc nsz arcp contract afn float %21, %i.cc
  %33 = fdiv reassoc nsz arcp contract afn float %26, %i.cc
  %34 = fdiv reassoc nsz arcp contract afn float %i.cb, %i.cc
  %.sroa.0.0.i.i = select nsz i1 %i.cd, float 0.000000e+00, float %32 ; 2 uses
  %.sroa.6.0.i.i = select nsz i1 %i.cd, float 0.000000e+00, float %33 ; 2 uses
  %.sroa.8.0.i.i = select nsz i1 %i.cd, float 0.000000e+00, float %34 ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn float %21, f0x3F309D77
  %i.cf = fmul reassoc nsz arcp contract afn float %26, f0x3EB2573F
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, %i.ce
  %35 = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i.i, f0x3F8B3A63
  %36 = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i, f0xBF2AAAAB
  %37 = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i.i, f0x3CA8E841
  %38 = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i.i, f0xBDB3A62D
  %39 = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i.i, f0x3FD55555
  %40 = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i.i, f0xBD53224F
  %41 = fadd reassoc nsz arcp contract afn float %35, f0xBE604727
  %42 = fadd reassoc nsz arcp contract afn float %41, %36
  %43 = fadd reassoc nsz arcp contract afn float %42, %37 ; 2 uses
  %44 = fadd reassoc nsz arcp contract afn float %38, -5.437140e-01
  %45 = fadd reassoc nsz arcp contract afn float %44, %39
  %46 = fadd reassoc nsz arcp contract afn float %45, %40 ; 2 uses
  %47 = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %46, float noundef %43) #25 ; 4 uses
  %48 = fcmp reassoc nsz arcp contract afn une float %47, 0.000000e+00 ; 2 uses
  %49 = fdiv reassoc nsz arcp contract afn float %43, %47
  %50 = select reassoc nsz arcp contract afn i1 %48, float %49, float 1.000000e+00
  %51 = fdiv reassoc nsz arcp contract afn float %46, %47
  %52 = select reassoc nsz arcp contract afn i1 %48, float %51, float 0.000000e+00
  store float %i.cg, ptr %3, align 4, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %47, ptr %i.ch, align 4, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %50, ptr %i.ci, align 4, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %52, ptr %i.cj, align 4, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %dt_ioppr_rgb_matrix_to_xyz.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 15 uses
  %i.b = alloca [4 x float], align 16             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !52  ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  call void @pipe_RGB_to_Ych(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  call void @pipe_RGB_to_Ych(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val = load float, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.val59 = load float, ptr %i.j, align 4, !tbaa !12
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %.val59, float %.val)
  %i.l = tail call i32 (...) @dt_key_modifier_state() #19
  %i.m = and i32 %i.l, 4
  %.not = icmp eq i32 %i.m, 0
  %i.n = fmul reassoc nsz arcp contract afn float %i.k, f0x42652EE0
  %.v = select i1 %.not, float 2.100000e+02, float 3.000000e+01
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %.v ; 8 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !123
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = atomicrmw add ptr %i.q, i32 1 seq_cst, align 4 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !175  ; 2 uses
  %i.u = icmp eq ptr %1, %i.t
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store float %i.o, ptr %i.v, align 4, !tbaa !155
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !12
  %i.y = load float, ptr %i.a, align 16, !tbaa !12
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store float %i.z, ptr %i.aa, align 4, !tbaa !154
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.t, float noundef %i.o) #19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !176
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !154
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ac, float noundef %i.ad) #19
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !177 ; 2 uses
  %i.af = icmp eq ptr %1, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store float %i.o, ptr %i.ag, align 4, !tbaa !158
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  %i.aj = load float, ptr %i.a, align 16, !tbaa !12
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ai
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  store float %i.ak, ptr %i.al, align 4, !tbaa !157
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ae, float noundef %i.o) #19
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !178
  %i.ao = load float, ptr %i.al, align 4, !tbaa !157
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.an, float noundef %i.ao) #19
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !179 ; 2 uses
  %i.ar = icmp eq ptr %1, %i.aq
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store float %i.o, ptr %i.as, align 4, !tbaa !164
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !12
  %i.av = load float, ptr %i.a, align 16, !tbaa !12
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store float %i.aw, ptr %i.ax, align 4, !tbaa !163
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.aq, float noundef %i.o) #19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !180
  %i.ba = load float, ptr %i.ax, align 4, !tbaa !163
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.az, float noundef %i.ba) #19
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !181 ; 2 uses
  %i.bd = icmp eq ptr %1, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store float %i.o, ptr %i.be, align 4, !tbaa !161
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !12
  %i.bh = load float, ptr %i.a, align 16, !tbaa !12
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 28 ; 2 uses
  store float %i.bi, ptr %i.bj, align 4, !tbaa !160
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bc, float noundef %i.o) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !182
  %i.bm = load float, ptr %i.bj, align 4, !tbaa !160
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bl, float noundef %i.bm) #19
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !183 ; 2 uses
  %i.bp = icmp eq ptr %1, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = load float, ptr %i.b, align 16, !tbaa !12
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.bq) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store float %i.br, ptr %i.bs, align 4, !tbaa !166
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bo, float noundef %i.br) #19
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !184 ; 2 uses
  %i.bv = icmp eq ptr %1, %i.bu
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bw = load float, ptr %i.a, align 16, !tbaa !12 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store float %i.bw, ptr %i.bx, align 4, !tbaa !19
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bu, float noundef %i.bw) #19
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.m, %bb.j, %bb.f, %bb.b
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !123
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = atomicrmw sub ptr %i.bz, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @gui_changed(ptr noundef nonnull %0, ptr noundef %1, ptr poison)
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !260
  tail call void @dt_dev_add_history_item(ptr noundef %i.cb, ptr noundef nonnull %0, i32 noundef 1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare i32 @dt_key_modifier_state(...) local_unnamed_addr #3

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #10

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x [4 x float]], align 64       ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !52  ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !174  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2760
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !261  ; 2 uses
  %.not62 = icmp eq ptr %i.j, null
  br i1 %.not62, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef nonnull %i.j) #19 ; 3 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %.thread, label %bb.d

end_hunk_0
