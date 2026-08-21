Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_filmic?download=true
inline.NumInlined: 128
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 31
begin_hunk_0_@default_colorspace:bb.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @legacy_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(60) ptr @malloc(i64 noundef 60) #22 ; 6 uses
  %i.b = load <8 x float>, ptr %1, align 4, !tbaa !11
  store <8 x float> %i.b, ptr %i.a, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !11
  store <2 x float> %i.e, ptr %i.d, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float %i.g, ptr %i.h, align 4, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.j = load float, ptr %i.i, align 4, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float %i.j, ptr %i.k, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 %i.m, ptr %i.n, align 4, !tbaa !20
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noalias dereferenceable_or_null(60) ptr @malloc(i64 noundef 60) #22 ; 6 uses
  %i.p = load <8 x float>, ptr %1, align 4, !tbaa !11
  store <8 x float> %i.p, ptr %i.o, align 4, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load <2 x float>, ptr %i.q, align 4, !tbaa !11
  store <2 x float> %i.s, ptr %i.r, align 4, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load float, ptr %i.t, align 4, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store float %i.u, ptr %i.v, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.x = load float, ptr %i.w, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store float %i.x, ptr %i.y, align 4, !tbaa !18
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !25
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink74 = phi ptr [ %i.o, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sink72 = phi i32 [ %i.ad, %bb.c ], [ 0, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sink74, i64 56
  store i32 %.sink72, ptr %i.ae, align 4, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.sink74, i64 44
  store float 1.000000e+02, ptr %i.af, align 4, !tbaa !27
  store ptr %.sink74, ptr %3, align 8, !tbaa !28
  store i32 60, ptr %4, align 4, !tbaa !30
  store i32 3, ptr %5, align 4, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define void @init_presets(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %struct.dt_iop_filmic_params_t, align 8 ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float -1.200000e+01, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 9 uses
  store <4 x float> <float 2.250000e+00, float 1.618000e+00, float 6.000000e+01, float 7.000000e+01>, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 7 uses
  store <8 x float> <float 2.540000e+01, float -7.050000e+00, float 1.950000e+00, float 0.000000e+00, float 1.800000e+01, float 0.000000e+00, float 1.000000e+02, float 2.200000e+00>, ptr %1, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = tail call i32 (...) %i.i() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.2, ptr noundef nonnull %i.g, i32 noundef %i.j, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  store float 1.800000e+01, ptr %1, align 8, !tbaa !40
  store float 2.750000e+00, ptr %i.d, align 8, !tbaa !41
  store <2 x float> <float -7.550000e+00, float 2.450000e+00>, ptr %i.f, align 4, !tbaa !11
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.l = call i32 (...) %i.k() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.g, i32 noundef %i.l, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  store float 1.277000e+01, ptr %1, align 8, !tbaa !40
  store float 3.000000e+00, ptr %i.d, align 8, !tbaa !41
  store <2 x float> <float -8.050000e+00, float 2.950000e+00>, ptr %i.f, align 4, !tbaa !11
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.n = call i32 (...) %i.m() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.g, i32 noundef %i.n, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  store float 9.000000e+00, ptr %1, align 8, !tbaa !40
  store float 3.500000e+00, ptr %i.d, align 8, !tbaa !41
  store <2 x float> <float -8.550000e+00, float 3.450000e+00>, ptr %i.f, align 4, !tbaa !11
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.p = call i32 (...) %i.o() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.g, i32 noundef %i.p, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  store float 6.380000e+00, ptr %1, align 8, !tbaa !40
  store float 3.750000e+00, ptr %i.d, align 8, !tbaa !41
  store <2 x float> <float -9.050000e+00, float 3.950000e+00>, ptr %i.f, align 4, !tbaa !11
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.r = call i32 (...) %i.q() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.g, i32 noundef %i.r, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  store float 4.500000e+00, ptr %1, align 8, !tbaa !40
  store float 4.250000e+00, ptr %i.d, align 8, !tbaa !41
  store <2 x float> <float -9.550000e+00, float 4.450000e+00>, ptr %i.f, align 4, !tbaa !11
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.t = call i32 (...) %i.s() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.g, i32 noundef %i.t, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  store float 3.190000e+00, ptr %1, align 8, !tbaa !40
  store float 4.500000e+00, ptr %i.d, align 8, !tbaa !41
  store <2 x float> <float -1.005000e+01, float 4.950000e+00>, ptr %i.f, align 4, !tbaa !11
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.v = call i32 (...) %i.u() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.8, ptr noundef nonnull %i.g, i32 noundef %i.v, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  store float 2.250000e+00, ptr %1, align 8, !tbaa !40
  store float 5.000000e+00, ptr %i.d, align 8, !tbaa !41
  store <2 x float> <float -1.055000e+01, float 5.450000e+00>, ptr %i.f, align 4, !tbaa !11
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.x = call i32 (...) %i.w() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.g, i32 noundef %i.x, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  store float 6.000000e+00, ptr %i.d, align 8, !tbaa !41
  store float f0x40CE6666, ptr %i.e, align 8, !tbaa !42
  store <2 x float> <float 1.125000e+00, float -1.155000e+01>, ptr %1, align 8, !tbaa !11
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.z = call i32 (...) %i.y() #20
  call void @dt_gui_presets_add_generic(ptr noundef nonnull @.str.10, ptr noundef nonnull %i.g, i32 noundef %i.z, ptr noundef nonnull %1, i32 noundef 60, i32 noundef 1, i32 noundef 3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @dt_gui_presets_add_generic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !43
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !60  ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 786452
  %i.g = load float, ptr %i.f, align 4, !tbaa !61 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn oeq float %i.g, 1.000000e+02
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !63
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !64
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 786440
  %i.p = load float, ptr %i.o, align 4, !tbaa !65 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 786444
  %i.r = load float, ptr %i.q, align 4, !tbaa !66
  %i.s = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.r ; 4 uses
  %i.t = shl nsw i64 %i.k, 2
  %i.u = mul i64 %i.t, %i.n                       ; 2 uses
  %.not38 = icmp eq i64 %i.u, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 786456
  %i.w = load float, ptr %i.v, align 4, !tbaa !67
  %i.x = fmul reassoc nsz arcp contract afn float %i.g, f0x3C23D70A
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 786436
  %i.z = load float, ptr %i.y, align 4, !tbaa !68 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 786464
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69
  %.not99.i = icmp eq i32 %i.ab, 0
  %.neg7.i.i = fsub reassoc nsz arcp contract afn float f0xC2F87377, %i.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 524288
  %i.ad = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x float> poison, float %i.s, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ap = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ai
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  br label %.loopexit.i

._crit_edge:                                      ; preds = %_process_pixel.exit, %bb.b
  tail call void @llvm.x86.sse.sfence()
  br label %bb.ax

.loopexit.i:                                      ; preds = %.lr.ph, %_process_pixel.exit
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.of, %_process_pixel.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.037 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.037
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %i.av = load float, ptr %i.ar, align 4, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !11
  %i.ay = fmul reassoc nsz arcp contract afn float %i.au, 2.000000e-03
  %i.az = fmul reassoc nsz arcp contract afn float %i.av, 8.620690e-03
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, f0x3E0D3DCB ; 3 uses
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ax, 5.000000e-03
  %i.bc = fadd reassoc nsz arcp contract afn float %i.ba, %i.ay
  %i.bd = fsub reassoc nsz arcp contract afn float %i.ba, %i.bb ; 5 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt float %i.bd, f0x3E53DCB1
  %i.bf = fmul reassoc nsz arcp contract afn float %i.bd, %i.bd
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.bd
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bd, f0x3E038026
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, f0xBC911AA6
  %i.bj = select reassoc nsz arcp contract afn i1 %i.be, float %i.bg, float %i.bi ; 3 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, f0x3F532CA5
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bj, f0x3F7FE762
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.ba, i64 1 ; 5 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, splat (float f0x3E53DCB1)
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bn
  %i.bq = fmul reassoc nsz arcp contract afn <2 x float> %i.bp, %i.bn
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, splat (float f0x3E038026)
  %i.bs = fadd reassoc nsz arcp contract afn <2 x float> %i.br, splat (float f0xBC911AA6)
  %i.bt = select <2 x i1> %i.bo, <2 x float> %i.bq, <2 x float> %i.bs ; 5 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 9.642000e-01
  %i.bw = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float f0x3F066D1A, float f0x3E82DEFC>
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = fmul reassoc nsz arcp contract afn <2 x float> %i.bt, <float f0x3FA61CF4, float f0x3FC10BA0>
  %i.bz = fsub reassoc nsz arcp contract afn <2 x float> %i.by, %i.bx
  %i.ca = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <2 x float> %i.cb, <float f0xBD2CB230, float f0x3C8AC481>
  %i.cd = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.cc
  %i.ce = extractelement <2 x float> %i.bt, i64 1
  %i.cf = fadd reassoc nsz arcp contract afn float %i.bv, %i.ce ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 0.000000e+00
  %i.ch = fadd reassoc nsz arcp contract afn float %i.cg, %i.bl
  %i.ci = fadd reassoc nsz arcp contract afn float %i.cf, %i.bk
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, 0.000000e+00
  %i.ck = insertelement <4 x float> poison, float %i.ch, i64 2
  %i.cl = insertelement <4 x float> %i.ck, float %i.cj, i64 3
  %i.cm = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.co = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cp = fsub reassoc nsz arcp contract afn <4 x float> %i.cn, %i.co
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %i.cp, %i.ag
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %i.cq, %i.co
  %i.cs = select i1 %i.h, <4 x float> %i.cn, <4 x float> %i.cr ; 7 uses
  br i1 %.not99.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  %i.ct = extractelement <4 x float> %i.cs, i64 0 ; 2 uses
  %i.cu = extractelement <4 x float> %i.cs, i64 1 ; 2 uses
  %i.cv = fcmp reassoc nsz arcp contract afn ogt float %i.ct, %i.cu
  %..i.i = select reassoc nsz arcp contract afn i1 %i.cv, float %i.ct, float %i.cu ; 2 uses
  %i.cw = extractelement <4 x float> %i.cs, i64 2 ; 2 uses
  %i.cx = fcmp reassoc nsz arcp contract afn ogt float %..i.i, %i.cw
  %i.cy = select reassoc nsz arcp contract afn i1 %i.cx, float %..i.i, float %i.cw ; 2 uses
  %i.cz = fmul reassoc nsz arcp contract afn float %i.cy, %i.an ; 2 uses
  %i.da = fcmp reassoc nsz arcp contract afn ogt float %i.cz, f0x37800000
  br i1 %i.da, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.db = bitcast float %i.cz to i32              ; 2 uses
  %i.dc = and i32 %i.db, 8388607
  %i.dd = or disjoint i32 %i.dc, 1056964608
  %i.de = uitofp reassoc nsz arcp contract afn i32 %i.db to float
  %i.df = fmul reassoc nnan nsz arcp contract afn float %i.de, f0x34000000
  %i.dg = bitcast i32 %i.dd to float              ; 2 uses
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, f0x3EB444F9
  %.neg.i.i = fmul reassoc nnan nsz arcp contract afn float %i.dg, f0xBFBFBF75
  %.neg6.i.i = fdiv reassoc nsz arcp contract afn float -1.725880e+00, %i.dh
  %i.di = fadd reassoc nsz arcp contract afn float %.neg7.i.i, %i.df
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %.neg.i.i
  %i.dk = fadd reassoc nsz arcp contract afn float %i.dj, %.neg6.i.i
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.dm = phi reassoc nsz arcp contract afn float [ %i.dl, %bb.d ], [ f0x37800000, %bb.c ] ; 3 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ogt float %i.dm, 1.000000e+00
  %i.do = fcmp reassoc nsz arcp contract afn olt float %i.dm, 0.000000e+00
  %i.dp = select reassoc nsz arcp contract afn i1 %i.do, float 0.000000e+00, float %i.dm
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dp, 6.553600e+04
  %i.dr = select i1 %i.dn, float 6.553600e+04, float %i.dq ; 3 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ogt float %i.dr, 6.553500e+04
  %i.dt = fcmp reassoc nsz arcp contract afn olt float %i.dr, 0.000000e+00
  %i.du = select reassoc nsz arcp contract afn i1 %i.dt, float 0.000000e+00, float %i.dr
  %i.dv = fptoui float %i.du to i64
  %i.dw = select i1 %i.ds, i64 65535, i64 %i.dv   ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !11 ; 2 uses
  %i.dz = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eb = fmul reassoc nsz arcp contract afn <4 x float> %i.ea, %i.cs
  %i.ec = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = fdiv reassoc nsz arcp contract afn <4 x float> %i.eb, %i.ed
  br label %bb.z

bb.f:                                             ; preds = %.loopexit.i
  %i.ef = extractelement <4 x float> %i.cs, i64 0
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ef, %i.ao ; 2 uses
  %i.eh = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.ei = fmul reassoc nsz arcp contract afn <2 x float> %i.eh, %i.ap ; 3 uses
  %i.ej = extractelement <4 x float> %i.cs, i64 3
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.aq ; 2 uses
  %bc = bitcast <2 x float> %i.ei to <2 x i32>
  %i.el = extractelement <2 x i32> %bc, i64 0     ; 2 uses
  %6 = and i32 %i.el, 8388607
  %7 = or disjoint i32 %6, 1065353216
  %8 = bitcast i32 %7 to float                    ; 5 uses
  %i.em = lshr i32 %i.el, 23
  %9 = and i32 %i.em, 255
  %10 = add nsw i32 %9, -127
  %11 = sitofp i32 %10 to float
  %12 = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %13 = insertelement <2 x float> %12, float %i.ek, i64 1
  %14 = bitcast <2 x float> %13 to <2 x i32>      ; 2 uses
  %15 = lshr <2 x i32> %14, splat (i32 23)
  %16 = and <2 x i32> %15, splat (i32 255)
  %17 = add nsw <2 x i32> %16, splat (i32 -127)
  %18 = sitofp <2 x i32> %17 to <2 x float>
  %i.en = fmul reassoc nnan nsz arcp contract afn float %8, f0x3D74552F
  %i.eo = fadd reassoc nnan nsz arcp contract afn float %i.en, f0xBEEE7397
  %i.ep = fmul reassoc nnan nsz arcp contract afn float %i.eo, %8
  %i.eq = fadd reassoc nnan nsz arcp contract afn float %i.ep, f0x3FBD96DD
  %i.er = fmul reassoc nnan nsz arcp contract afn float %i.eq, %8
  %i.es = fadd reassoc nnan nsz arcp contract afn float %i.er, f0xC02153F6
  %i.et = fmul reassoc nnan nsz arcp contract afn float %i.es, %8
  %i.eu = fadd reassoc nnan nsz arcp contract afn float %i.et, f0x4038D96C
  %i.ev = fadd reassoc nnan nsz arcp contract afn float %8, -1.000000e+00
  %i.ew = fmul reassoc nsz arcp contract afn float %i.eu, %i.ev
  %19 = and <2 x i32> %14, splat (i32 8388607)
  %i.ex = or disjoint <2 x i32> %19, splat (i32 1065353216)
  %i.ey = bitcast <2 x i32> %i.ex to <2 x float>  ; 5 uses
  %i.ez = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.ey, splat (float f0x3D74552F)
  %i.fa = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.ez, splat (float f0xBEEE7397)
  %i.fb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fa, %i.ey
  %i.fc = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fb, splat (float f0x3FBD96DD)
  %i.fd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fc, %i.ey
  %i.fe = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fd, splat (float f0xC02153F6)
  %i.ff = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fe, %i.ey
  %i.fg = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.ff, splat (float f0x4038D96C)
  %i.fh = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.ey, splat (float -1.000000e+00)
  %i.fi = fmul reassoc nsz arcp contract afn <2 x float> %i.fg, %i.fh
  %i.fj = fcmp reassoc nsz arcp contract afn ogt float %i.eg, f0x37800000
  br i1 %i.fj, label %bb.g, label %.preheader.preheader.i

bb.g:                                             ; preds = %bb.f
  %i.fk = bitcast float %i.eg to i32              ; 2 uses
  %i.fl = and i32 %i.fk, 8388607
  %i.fm = or disjoint i32 %i.fl, 1065353216
  %i.fn = bitcast i32 %i.fm to float              ; 5 uses
  %i.fo = fmul reassoc nnan nsz arcp contract afn float %i.fn, f0x3D74552F
  %i.fp = fadd reassoc nnan nsz arcp contract afn float %i.fo, f0xBEEE7397
  %i.fq = fmul reassoc nnan nsz arcp contract afn float %i.fp, %i.fn
  %i.fr = fadd reassoc nnan nsz arcp contract afn float %i.fq, f0x3FBD96DD
  %i.fs = fmul reassoc nnan nsz arcp contract afn float %i.fr, %i.fn
  %i.ft = fadd reassoc nnan nsz arcp contract afn float %i.fs, f0xC02153F6
  %i.fu = fmul reassoc nnan nsz arcp contract afn float %i.ft, %i.fn
  %i.fv = fadd reassoc nnan nsz arcp contract afn float %i.fu, f0x4038D96C
  %i.fw = fadd reassoc nnan nsz arcp contract afn float %i.fn, -1.000000e+00
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fv, %i.fw
  %i.fy = lshr i32 %i.fk, 23
  %i.fz = add nsw i32 %i.fy, -127
  %i.ga = sitofp i32 %i.fz to float
  %20 = fsub reassoc nsz arcp contract afn float %i.ga, %i.p
  %21 = fadd reassoc nsz arcp contract afn float %20, %i.fx
  %i.gb = fmul reassoc nsz arcp contract afn float %21, %i.s
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.g, %bb.f
  %i.gc = phi reassoc nsz arcp contract afn float [ %i.gb, %bb.g ], [ f0x37800000, %bb.f ] ; 3 uses
  %i.gd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ei, splat (float f0x37800000) ; 2 uses
  %i.ge = fsub reassoc nsz arcp contract afn float %11, %i.p
  %22 = fadd reassoc nsz arcp contract afn float %i.ge, %i.ew
  %i.gf = fmul reassoc nsz arcp contract afn float %22, %i.s
  %i.gg = extractelement <2 x i1> %i.gd, i64 0
  %i.gh = select reassoc nsz arcp contract afn i1 %i.gg, float %i.gf, float f0x37800000 ; 3 uses
  %i.gi = fsub reassoc nsz arcp contract afn <2 x float> %18, %i.ak
  %i.gj = extractelement <2 x i1> %i.gd, i64 1
  %i.gk = fcmp reassoc nsz arcp contract afn ogt float %i.ek, f0x37800000
  %23 = fadd reassoc nsz arcp contract afn <2 x float> %i.gi, %i.fi
  %i.gl = fmul reassoc nsz arcp contract afn <2 x float> %23, %i.am ; 2 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0
  %i.gn = select reassoc nsz arcp contract afn i1 %i.gj, float %i.gm, float f0x37800000 ; 3 uses
  %i.go = extractelement <2 x float> %i.gl, i64 1
  %i.gp = select reassoc nsz arcp contract afn i1 %i.gk, float %i.go, float f0x37800000 ; 3 uses
  %i.gq = fcmp reassoc nsz arcp contract afn ogt float %i.gc, 1.000000e+00
  br i1 %i.gq, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.preheader.preheader.i
  %i.gr = fcmp reassoc nsz arcp contract afn olt float %i.gc, 0.000000e+00
  br i1 %i.gr, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.preheader.preheader.i
  %i.gs = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.preheader.preheader.i ], [ %i.gc, %bb.i ], [ 0.000000e+00, %bb.h ] ; 2 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %i.gs, 6.553600e+04 ; 3 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ogt float %i.gt, 6.553500e+04
  br i1 %i.gu, label %.preheader.1.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gv = fcmp reassoc nsz arcp contract afn olt float %i.gt, 0.000000e+00
  br i1 %i.gv, label %.preheader.1.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gw = fptoui float %i.gt to i64
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.l, %bb.k, %bb.j
  %i.gx = phi i64 [ 65535, %bb.j ], [ %i.gw, %bb.l ], [ 0, %bb.k ]
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.gh, 1.000000e+00
  br i1 %i.gy, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.preheader.1.i
  %i.gz = fcmp reassoc nsz arcp contract afn olt float %i.gh, 0.000000e+00
  br i1 %i.gz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.preheader.1.i
  %i.ha = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.preheader.1.i ], [ %i.gh, %bb.n ], [ 0.000000e+00, %bb.m ] ; 2 uses
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, 6.553600e+04 ; 3 uses
  %i.hc = fcmp reassoc nsz arcp contract afn ogt float %i.hb, 6.553500e+04
  br i1 %i.hc, label %.preheader.2.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hd = fcmp reassoc nsz arcp contract afn olt float %i.hb, 0.000000e+00
  br i1 %i.hd, label %.preheader.2.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.he = fptoui float %i.hb to i64
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.q, %bb.p, %bb.o
  %i.hf = phi i64 [ 65535, %bb.o ], [ %i.he, %bb.q ], [ 0, %bb.p ]
  %i.hg = fcmp reassoc nsz arcp contract afn ogt float %i.gn, 1.000000e+00
  br i1 %i.hg, label %bb.t, label %bb.r

bb.r:                                             ; preds = %.preheader.2.i
  %i.hh = fcmp reassoc nsz arcp contract afn olt float %i.gn, 0.000000e+00
  br i1 %i.hh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.preheader.2.i
  %i.hi = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.preheader.2.i ], [ %i.gn, %bb.s ], [ 0.000000e+00, %bb.r ] ; 2 uses
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, 6.553600e+04 ; 3 uses
  %i.hk = fcmp reassoc nsz arcp contract afn ogt float %i.hj, 6.553500e+04
  br i1 %i.hk, label %.preheader.3.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hl = fcmp reassoc nsz arcp contract afn olt float %i.hj, 0.000000e+00
  br i1 %i.hl, label %.preheader.3.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hm = fptoui float %i.hj to i64
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.v, %bb.u, %bb.t
  %i.hn = phi i64 [ 65535, %bb.t ], [ %i.hm, %bb.v ], [ 0, %bb.u ]
  %i.ho = fcmp reassoc nsz arcp contract afn ogt float %i.gp, 1.000000e+00
  br i1 %i.ho, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %.preheader.3.i
  %i.hp = fcmp reassoc nsz arcp contract afn olt float %i.gp, 0.000000e+00
  br i1 %i.hp, label %.thread175.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hq = fmul reassoc nsz arcp contract afn float %i.gp, 6.553600e+04 ; 3 uses
  %i.hr = fcmp reassoc nsz arcp contract afn ogt float %i.hq, 6.553500e+04
  br i1 %i.hr, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hs = fcmp reassoc nsz arcp contract afn olt float %i.hq, 0.000000e+00
  br i1 %i.hs, label %.thread.i, label %.thread175.i

.thread175.i:                                     ; preds = %bb.y, %bb.w
  %i.ht = phi float [ %i.hq, %bb.y ], [ 0.000000e+00, %bb.w ]
  %i.hu = fptoui float %i.ht to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread175.i, %bb.y, %bb.x, %.preheader.3.i
  %i.hv = phi i64 [ 65535, %bb.x ], [ %i.hu, %.thread175.i ], [ 0, %bb.y ], [ 65535, %.preheader.3.i ]
  %.reass35 = fmul reassoc nsz arcp contract afn float %i.gs, f0x46937A01
  %.reass36 = fmul reassoc nsz arcp contract afn float %i.ha, f0x47363D62
  %i.hw = fadd reassoc nsz arcp contract afn float %.reass36, %.reass35
  %.reass = fmul reassoc nsz arcp contract afn float %i.hi, f0x40B3B9D6
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hw, %.reass ; 3 uses
  %i.hy = fcmp reassoc nsz arcp contract afn ogt float %i.hx, 6.553500e+04
  %i.hz = fcmp reassoc nsz arcp contract afn olt float %i.hx, 0.000000e+00
  %i.ia = select reassoc nsz arcp contract afn i1 %i.hz, float 0.000000e+00, float %i.hx
  %i.ib = fptosi float %i.ia to i32
  %i.ic = sext i32 %i.ib to i64
  %i.id = select i1 %i.hy, i64 65535, i64 %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gx
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hf
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hn
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hv
  %i.ii = load float, ptr %i.ie, align 4, !tbaa !11 ; 2 uses
  %i.ij = load float, ptr %i.if, align 4, !tbaa !11 ; 2 uses
  %i.ik = load float, ptr %i.ig, align 4, !tbaa !11 ; 2 uses
  %i.il = load float, ptr %i.ih, align 4, !tbaa !11
  %i.im = fmul reassoc nsz arcp contract afn float %i.ii, f0x3E937A01
  %i.in = fmul reassoc nsz arcp contract afn float %i.ij, f0x3F363D62
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, %i.im
  %i.ip = fmul reassoc nsz arcp contract afn float %i.ik, f0x38B3B9D6
  %i.iq = fadd reassoc nsz arcp contract afn float %i.io, %i.ip
  %i.ir = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.is = insertelement <4 x float> %i.ir, float %i.ij, i64 1
  %i.it = insertelement <4 x float> %i.is, float %i.ik, i64 2
  %i.iu = insertelement <4 x float> %i.it, float %i.il, i64 3
  br label %bb.z

bb.z:                                             ; preds = %.thread.i, %bb.e
  %.pn = phi i64 [ %i.id, %.thread.i ], [ %i.dw, %bb.e ]
  %.090.i = phi nsz float [ %i.iq, %.thread.i ], [ %i.dy, %bb.e ] ; 8 uses
  %i.iv = phi <4 x float> [ %i.iu, %.thread.i ], [ %i.ee, %bb.e ] ; 4 uses
  %.091.in.i = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %.pn
  %.091.i = load float, ptr %.091.in.i, align 4, !tbaa !11 ; 4 uses
  %i.iw = extractelement <4 x float> %i.iv, i64 0
  %i.ix = fsub reassoc nsz arcp contract afn float %i.iw, %.090.i
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, %.091.i
  %i.iz = fadd reassoc nsz arcp contract afn float %i.iy, %.090.i ; 3 uses
  %i.ja = fcmp reassoc nsz arcp contract afn ogt float %i.iz, 1.000000e+00
  br i1 %i.ja, label %bb.an, label %bb.al

bb.aa:                                            ; preds = %bb.aw
  %i.jb = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.nt) #23
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aw
  %i.jc = fmul reassoc nsz arcp contract afn float %i.ng, f0x410137F7
  %i.jd = fadd reassoc nsz arcp contract afn float %i.jc, f0x3E0D3DCB
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.je = phi reassoc nsz arcp contract afn float [ %i.jb, %bb.aa ], [ %i.jd, %bb.ab ]
  %i.jf = fcmp reassoc nsz arcp contract afn ogt float %i.nn, f0x3C111AA7
  br i1 %i.jf, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jg = fmul reassoc nsz arcp contract afn float %i.nn, f0x40F92F69
  %i.jh = fadd reassoc nsz arcp contract afn float %i.jg, f0x3E0D3DCB
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ji = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.nn) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jj = phi reassoc nsz arcp contract afn float [ %i.ji, %bb.ae ], [ %i.jh, %bb.ad ] ; 2 uses
  %i.jk = fmul reassoc nsz arcp contract afn float %i.nr, f0x3F9B2B9B ; 2 uses
  %i.jl = fcmp reassoc nsz arcp contract afn ogt float %i.jk, f0x3C111AA7
  br i1 %i.jl, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jm = fmul reassoc nsz arcp contract afn float %i.nr, f0x41170A26
  %i.jn = fadd reassoc nsz arcp contract afn float %i.jm, f0x3E0D3DCB
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.jo = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jk) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jp = phi reassoc nsz arcp contract afn float [ %i.jo, %bb.ah ], [ %i.jn, %bb.ag ]
  %i.jq = fmul reassoc nsz arcp contract afn float %i.ns, 0.000000e+00 ; 3 uses
  %i.jr = fcmp reassoc nsz arcp contract afn ogt float %i.jq, f0x3C111AA7
  br i1 %i.jr, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.js = fadd reassoc nsz arcp contract afn float %i.jq, f0x3E0D3DCB
  br label %_process_pixel.exit

bb.ak:                                            ; preds = %bb.ai
  %i.jt = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jq) #23
  br label %_process_pixel.exit

end_hunk_0
begin_hunk_1_@color_picker_apply:bb.a
  %i.fj = atomicrmw sub ptr %i.fi, i32 1 seq_cst, align 4 ; 0 uses
  br label %sanitize_latitude.exit.i15

sanitize_latitude.exit.i15:                       ; preds = %bb.l, %bb.k
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !133
  tail call void @dt_dev_add_history_item(ptr noundef %i.fk, ptr noundef nonnull %0, i32 noundef 1) #20
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !134
  tail call void @gtk_widget_queue_draw(ptr noundef %i.fm) #20
  br label %apply_auto_grey.exit

bb.m:                                             ; preds = %bb.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !137
  %i.fp = icmp eq ptr %1, %i.fo
  br i1 %i.fp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !129 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ft = load float, ptr %i.fs, align 16, !tbaa !11
  %i.fu = fmul reassoc nsz arcp contract afn float %i.ft, 8.620690e-03
  %i.fv = fadd reassoc nsz arcp contract afn float %i.fu, f0x3E0D3DCB ; 5 uses
  %i.fw = fcmp reassoc nsz arcp contract afn ogt float %i.fv, f0x3E53DCB1
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fv, %i.fv
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fv
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fv, f0x3E038026
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, f0xBC911AA6
  %i.gb = select reassoc nsz arcp contract afn i1 %i.fw, float %i.fy, float %i.ga ; 2 uses
  %i.gc = fmul reassoc nsz arcp contract afn float %i.gb, 1.000000e+02
  store float %i.gc, ptr %i.fr, align 4, !tbaa !40
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ge = load float, ptr %i.gd, align 16, !tbaa !11
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !135
  %i.gh = fmul reassoc nsz arcp contract afn float %i.gg, f0x3C6C5F03
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, f0x3FB8AA3B
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.gk = load float, ptr %i.gj, align 16, !tbaa !11
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.gn = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gk, i64 1
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.go, splat (float 8.620690e-03)
  %i.gq = fadd reassoc nsz arcp contract afn <2 x float> %i.gp, splat (float f0x3E0D3DCB) ; 5 uses
  %i.gr = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gq, splat (float f0x3E53DCB1)
  %i.gs = fmul reassoc nsz arcp contract afn <2 x float> %i.gq, %i.gq
  %i.gt = fmul reassoc nsz arcp contract afn <2 x float> %i.gs, %i.gq
  %i.gu = fmul reassoc nsz arcp contract afn <2 x float> %i.gq, splat (float f0x3E038026)
  %i.gv = fadd reassoc nsz arcp contract afn <2 x float> %i.gu, splat (float f0xBC911AA6)
  %i.gw = select <2 x i1> %i.gr, <2 x float> %i.gt, <2 x float> %i.gv
  %i.gx = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fdiv reassoc nsz arcp contract afn <2 x float> %i.gw, %i.gy ; 2 uses
  %i.ha = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.gz, splat (float f0x37800000)
  %i.hb = select <2 x i1> %i.ha, <2 x float> %i.gz, <2 x float> splat (float f0x37800000)
  %i.hc = tail call reassoc nnan nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.hb)
  %i.hd = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = fmul reassoc nsz arcp contract afn <2 x float> %i.hc, %i.he
  store <2 x float> %i.hf, ptr %i.gl, align 4, !tbaa !11
  %i.hg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !89
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 104
  %i.hi = atomicrmw add ptr %i.hh, i32 1 seq_cst, align 4 ; 0 uses
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !86
  %i.hk = load float, ptr %i.fr, align 4, !tbaa !40
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.hj, float noundef %i.hk) #20
  %i.hl = load ptr, ptr %i.az, align 8, !tbaa !131
  %i.hm = load float, ptr %i.gl, align 4, !tbaa !130
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.hl, float noundef %i.hm) #20
  %i.hn = load ptr, ptr %i.b, align 8, !tbaa !132
  %i.ho = load float, ptr %i.gm, align 4, !tbaa !42
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.hn, float noundef %i.ho) #20
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !89
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 104
  %i.hr = atomicrmw sub ptr %i.hq, i32 1 seq_cst, align 4 ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 3 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !41
  %i.hu = load float, ptr %i.gm, align 4, !tbaa !42
  %i.hv = load float, ptr %i.gl, align 4, !tbaa !130
  %i.hw = fsub reassoc nsz arcp contract afn float %i.hu, %i.hv
  %i.hx = fmul reassoc nsz arcp contract afn float %i.hw, 9.900000e-01 ; 2 uses
  %i.hy = fcmp reassoc nsz arcp contract afn ogt float %i.ht, %i.hx
  br i1 %i.hy, label %bb.o, label %apply_autotune.exit

bb.o:                                             ; preds = %bb.n
  store float %i.hx, ptr %i.hs, align 4, !tbaa !41
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !89
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 104
  %i.ib = atomicrmw add ptr %i.ia, i32 1 seq_cst, align 4 ; 0 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !136
  %i.ie = load float, ptr %i.hs, align 4, !tbaa !41
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.id, float noundef %i.ie) #20
  %i.if = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !89
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 104
  %i.ih = atomicrmw sub ptr %i.ig, i32 1 seq_cst, align 4 ; 0 uses
  br label %apply_autotune.exit

apply_autotune.exit:                              ; preds = %bb.n, %bb.o
  %i.ii = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !133
  tail call void @dt_dev_add_history_item(ptr noundef %i.ii, ptr noundef nonnull %0, i32 noundef 1) #20
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !134
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ik) #20
  br label %apply_auto_grey.exit

bb.p:                                             ; preds = %bb.m
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.11) #20
  br label %apply_auto_grey.exit

apply_auto_grey.exit:                             ; preds = %sanitize_latitude.exit.i15, %bb.j, %sanitize_latitude.exit.i, %bb.f, %Log2.exit.i, %bb.b, %apply_autotune.exit, %bb.p
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden void @compute_curve_lut(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef captures(none) initializes((0, 16), (24, 36)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !42 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !130 ; 3 uses
  %i.e = fsub reassoc nsz arcp contract afn float %i.b, %i.d ; 7 uses
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.d)
  %i.g = fdiv reassoc nsz arcp contract afn float %i.f, %i.e ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !138 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !139 ; 6 uses
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %i.i, %i.k
  br i1 %i.l, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fcmp reassoc nsz arcp contract afn olt float %i.i, 0.000000e+00
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %. = phi float [ %i.k, %bb.b ], [ %i.k, %bb.c ], [ %i.i, %bb.a ]
  %i.n = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.b ], [ %i.i, %bb.c ], [ %i.k, %bb.a ]
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, f0x3C23D70A ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load float, ptr %i.p, align 4, !tbaa !140 ; 4 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.k, %i.q ; 2 uses
  %i.s = select reassoc nsz arcp contract afn i1 %i.r, float %i.q, float %.
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, f0x3C23D70A
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load float, ptr %i.u, align 4, !tbaa !141
  %i.w = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.t, float %i.w) ; 10 uses
  %i.y = fcmp reassoc nsz arcp contract afn ogt float %i.q, 1.000000e+02
  %.270 = select reassoc nsz arcp contract afn i1 %i.r, float %i.k, float %i.q
  %i.z = fmul reassoc nsz arcp contract afn float %.270, f0x3C23D70A
  %i.aa = select i1 %i.y, float 1.000000e+00, float %i.z ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !41 ; 3 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.e, 9.900000e-01 ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn ogt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.ac, f0x3C23D70A
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  %i.ag = phi reassoc nsz arcp contract afn float [ f0x3C23D70A, %bb.e ], [ %i.ac, %bb.f ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !33 ; 3 uses
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.ai, 5.000000e+01
  br i1 %i.aj, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.ai, -5.000000e+01
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = fmul reassoc nsz arcp contract afn float %i.ai, f0x3C23D70A
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.am = phi float [ 5.000000e-01, %bb.g ], [ %i.al, %bb.i ], [ -5.000000e-01, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ao = load float, ptr %i.an, align 4, !tbaa !142 ; 6 uses
  %i.ap = fdiv reassoc nsz arcp contract afn float %i.ag, %i.e ; 2 uses
  %i.aq = fdiv reassoc nsz arcp contract afn float %i.d, %i.e
  %i.ar = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aq)
  %i.as = fmul reassoc nsz arcp contract afn float %i.ap, %i.ar
  %i.at = fsub reassoc nsz arcp contract afn float %i.g, %i.as ; 2 uses
  %i.au = fmul reassoc nsz arcp contract afn float %i.ap, %i.b
  %i.av = fdiv reassoc nsz arcp contract afn float %i.au, %i.e
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, %i.g ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.ao, %i.g
  %i.ay = fsub reassoc nsz arcp contract afn float %i.x, %i.ax
  %i.az = fmul reassoc nsz arcp contract afn float %i.ao, %i.at
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ao, %i.aw
  %square = fmul reassoc nsz arcp contract afn float %i.ao, %i.ao
  %i.bb = fadd reassoc nsz arcp contract afn float %square, 1.000000e+00
  %sqrt = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.bb) ; 2 uses
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ag, %i.e
  %i.bd = fmul reassoc nsz arcp contract afn float %i.am, %i.bc
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bd, %i.e ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.ao
  %i.bg = fdiv reassoc nsz arcp contract afn float %i.bf, %sqrt
  %6 = fadd reassoc nsz arcp contract afn float %i.bg, %i.ay ; 2 uses
  %i.bh = fadd reassoc nsz arcp contract afn float %6, %i.az ; 3 uses
  %i.bi = fadd reassoc nsz arcp contract afn float %6, %i.ba ; 3 uses
  %i.bj = fdiv reassoc nsz arcp contract afn float %i.be, %sqrt ; 2 uses
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, %i.at ; 3 uses
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bj, %i.aw ; 3 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt float %i.bk, %i.g
  %i.bn = fcmp reassoc nsz arcp contract afn olt float %i.bk, 0.000000e+00
  %i.bo = select reassoc nsz arcp contract afn i1 %i.bn, float 0.000000e+00, float %i.bk
  %i.bp = select reassoc nsz arcp contract afn i1 %i.bm, float %i.g, float %i.bo ; 6 uses
  %i.bq = fcmp reassoc nsz arcp contract afn ogt float %i.bl, 1.000000e+00
  %i.br = fcmp reassoc nsz arcp contract afn olt float %i.bl, %i.g
  %i.bs = select reassoc nsz arcp contract afn i1 %i.br, float %i.g, float %i.bl
  %i.bt = select reassoc nsz arcp contract afn i1 %i.bq, float 1.000000e+00, float %i.bs ; 6 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %i.bh, %i.x
  %i.bv = fcmp reassoc nsz arcp contract afn olt float %i.bh, %i.o
  %i.bw = select reassoc nsz arcp contract afn i1 %i.bv, float %i.o, float %i.bh
  %i.bx = select reassoc nsz arcp contract afn i1 %i.bu, float %i.x, float %i.bw ; 4 uses
  %i.by = fcmp reassoc nsz arcp contract afn ogt float %i.bi, %i.aa
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %i.bi, %i.x
  %i.ca = select reassoc nsz arcp contract afn i1 %i.bz, float %i.x, float %i.bi
  %i.cb = select reassoc nsz arcp contract afn i1 %i.by, float %i.aa, float %i.ca ; 4 uses
  %i.cc = fcmp reassoc nsz arcp contract afn oeq float %i.bp, %i.g
  %i.cd = fcmp reassoc nsz arcp contract afn oeq float %i.bx, %i.x
  %or.cond271 = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond271, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = fcmp reassoc nsz arcp contract afn oeq float %i.bp, 0.000000e+00
  %i.cf = fcmp reassoc nsz arcp contract afn oeq float %i.bx, %i.o
  %or.cond272 = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond272, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cg = phi i1 [ true, %bb.l ], [ false, %bb.k ]
  %i.ch = phi i1 [ false, %bb.l ], [ true, %bb.k ]
  %i.ci = fcmp reassoc nsz arcp contract afn oeq float %i.bt, %i.g
  %i.cj = fcmp reassoc nsz arcp contract afn oeq float %i.cb, %i.x
  %or.cond273 = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond273, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = fcmp reassoc nsz arcp contract afn oeq float %i.bt, 1.000000e+00
  %i.cl = fcmp reassoc nsz arcp contract afn oeq float %i.cb, %i.aa
  %or.cond274 = select i1 %i.ck, i1 %i.cl, i1 false
  br i1 %or.cond274, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br i1 %i.cg, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 4, ptr %5, align 4, !tbaa !143
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !11
  store float %i.bp, ptr %i.cn, align 4, !tbaa !11
  store float %i.g, ptr %i.co, align 4, !tbaa !11
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float 1.000000e+00, ptr %i.cp, align 4, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.o, ptr %i.cq, align 4, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.bx, ptr %i.cr, align 4, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.x, ptr %i.cs, align 4, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  store float %i.aa, ptr %i.ct, align 4, !tbaa !11
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.t, label %.sink.split

bb.q:                                             ; preds = %bb.n
  store i32 4, ptr %5, align 4, !tbaa !143
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float 0.000000e+00, ptr %i.cu, align 4, !tbaa !11
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.not267 = icmp eq ptr %4, null                 ; 2 uses
  br i1 %i.ch, label %.thread295, label %bb.r

bb.r:                                             ; preds = %bb.q
  store float %i.g, ptr %i.cv, align 4, !tbaa !11
  store float %i.bt, ptr %i.cw, align 4, !tbaa !11
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !11
  store float %i.o, ptr %i.cy, align 4, !tbaa !11
  store float %i.x, ptr %i.cz, align 4, !tbaa !11
  store float %i.cb, ptr %i.da, align 4, !tbaa !11
  store float %i.aa, ptr %i.db, align 4, !tbaa !11
  br i1 %.not267, label %bb.t, label %.sink.split

bb.s:                                             ; preds = %bb.o
  store i32 3, ptr %5, align 4, !tbaa !143
  store float 0.000000e+00, ptr %i.cm, align 4, !tbaa !11
  store float %i.g, ptr %i.cn, align 4, !tbaa !11
  store float 1.000000e+00, ptr %i.co, align 4, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.o, ptr %i.dc, align 4, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.x, ptr %i.dd, align 4, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float %i.aa, ptr %i.de, align 4, !tbaa !11
  %.not268 = icmp eq ptr %4, null
  br i1 %.not268, label %bb.t, label %.sink.split

.thread295:                                       ; preds = %bb.q
  store float %i.bp, ptr %i.cv, align 4, !tbaa !11
  store float %i.bt, ptr %i.cw, align 4, !tbaa !11
  store float 1.000000e+00, ptr %i.cx, align 4, !tbaa !11
  store float %i.o, ptr %i.cy, align 4, !tbaa !11
  store float %i.bx, ptr %i.cz, align 4, !tbaa !11
  store float %i.cb, ptr %i.da, align 4, !tbaa !11
  store float %i.aa, ptr %i.db, align 4, !tbaa !11
  br i1 %.not267, label %bb.t, label %.sink.split

.sink.split:                                      ; preds = %.thread295, %bb.s, %bb.r, %bb.p
  %.sink349 = phi float [ %i.bp, %bb.p ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.r ], [ %i.bp, %.thread295 ]
  %.sink = phi float [ 1.000000e+00, %bb.p ], [ 1.000000e+00, %bb.s ], [ %i.bt, %bb.r ], [ %i.bt, %.thread295 ]
  %wide.trip.count315.ph = phi i64 [ 4, %bb.p ], [ 3, %bb.s ], [ 4, %bb.r ], [ 4, %.thread295 ]
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 786468
  store float %.sink349, ptr %i.df, align 4, !tbaa !145
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 786472
  store float %.sink, ptr %i.dg, align 4, !tbaa !146
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.r, %.thread295, %bb.s, %bb.p
  %wide.trip.count315 = phi i64 [ 3, %bb.s ], [ 4, %bb.r ], [ 4, %.thread295 ], [ 4, %bb.p ], [ %wide.trip.count315.ph, %.sink.split ] ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !147 ; 3 uses
  %.not269 = icmp eq i32 %i.di, 3
  br i1 %.not269, label %.lr.ph300, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.dj = add i32 %i.di, -1
  %or.cond275 = icmp ult i32 %i.dj, 2
  %.0244 = select i1 %or.cond275, i32 %i.di, i32 0
  %i.dk = tail call noalias dereferenceable_or_null(200) ptr @malloc(i64 noundef 200) #22 ; 9 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 184 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 188
  %i.dn = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #22
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 192 ; 2 uses
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !148
  store i32 %.0244, ptr %i.dk, align 8, !tbaa !153
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.dq, align 4, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 24 ; 5 uses
  %xtraiter = and i64 %wide.trip.count315, 3      ; 3 uses
  %i.du = icmp ult i64 %wide.trip.count315, 4
  br i1 %i.du, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count315, -4
  br label %bb.v

.unr-lcssa:                                       ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %.epil.init = phi i8 [ 0, %.lr.ph ], [ %i.go, %.unr-lcssa ]
  %lcmp.mod475 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod475)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.u ] ; 3 uses
  %i.dv = phi i8 [ %.epil.init, %.epil.preheader ], [ %i.ed, %bb.u ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.epil
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !11
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.epil
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !11
  %i.ea = zext i8 %i.dv to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.ea ; 2 uses
  store float %i.dx, ptr %i.eb, align 8, !tbaa !154
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store float %i.dz, ptr %i.ec, align 4, !tbaa !156
  %i.ed = add i8 %i.dv, 1                         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.u, !llvm.loop !157

.epilog-lcssa:                                    ; preds = %bb.u, %.unr-lcssa
  %.lcssa473 = phi i8 [ %i.go, %.unr-lcssa ], [ %i.ed, %bb.u ]
  store i8 %.lcssa473, ptr %i.dp, align 4, !tbaa !159
  store i32 %3, ptr %i.dl, align 8, !tbaa !160
  store i32 65536, ptr %i.dm, align 4, !tbaa !161
  %i.ee = tail call i32 @CurveDataSample(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dl) #20 ; 0 uses
  %.not.i.i = icmp ne ptr %1, null
  %i.ef = icmp sgt i32 %3, 0
  %or.cond.i.i = and i1 %.not.i.i, %i.ef
end_hunk_1
