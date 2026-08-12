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
  br i1 %.not, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !60  ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 786452
  %i.g = load float, ptr %i.f, align 4, !tbaa !61 ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn oeq float %i.g, 1.000000e+02
  %i.i = fmul reassoc nsz arcp contract afn float %i.g, f0x3C23D70A ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !63
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !64
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 786440
  %i.q = load float, ptr %i.p, align 4, !tbaa !65 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 786444
  %i.s = load float, ptr %i.r, align 4, !tbaa !66
  %i.t = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.s ; 4 uses
  %i.u = shl nsw i64 %i.l, 2
  %i.v = mul i64 %i.u, %i.o                       ; 2 uses
  %.not38 = icmp eq i64 %i.v, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 786456
  %i.x = load float, ptr %i.w, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 786436
  %i.z = load float, ptr %i.y, align 4, !tbaa !68 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 786464
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69
  %.not99.i = icmp eq i32 %i.ab, 0
  %.neg7.i.i = fsub reassoc nsz arcp contract afn float f0xC2F87377, %i.q
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 524288
  %i.ad = insertelement <4 x float> poison, float %i.x, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = insertelement <2 x float> poison, float %i.t, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ap = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ai
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  br label %bb.c

._crit_edge:                                      ; preds = %_process_pixel.exit, %bb.b
  tail call void @llvm.x86.sse.sfence()
  br label %bb.ay

bb.c:                                             ; preds = %.lr.ph, %_process_pixel.exit
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.ny, %_process_pixel.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.037 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.037
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load float, ptr %i.ar, align 4, !tbaa !11
  %i.av = fmul reassoc nsz arcp contract afn float %i.au, 8.620690e-03
  %i.aw = fadd reassoc nsz arcp contract afn float %i.av, f0x3E0D3DCB ; 6 uses
  %i.ax = fcmp reassoc nsz arcp contract afn ogt float %i.aw, f0x3E53DCB1
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aw, %i.aw
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.aw
  %i.ba = fmul reassoc nsz arcp contract afn float %i.aw, f0x3E038026
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, f0xBC911AA6
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ax, float %i.az, float %i.bb ; 8 uses
  %i.bd = fmul reassoc nsz arcp contract afn float %i.bc, f0x3E82DEFC
  %i.be = fmul reassoc nsz arcp contract afn float %i.bc, f0x3FC10BA0
  %i.bf = load <2 x float>, ptr %i.at, align 4, !tbaa !11
  %i.bg = fmul reassoc nsz arcp contract afn <2 x float> %i.bf, <float 2.000000e-03, float 5.000000e-03> ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = fsub reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bg
  %i.bk = fadd reassoc nsz arcp contract afn <2 x float> %i.bi, %i.bg
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.bm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bl, splat (float f0x3E53DCB1)
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bl
  %i.bo = fmul reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bl
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, splat (float f0x3E038026)
  %i.bq = fadd reassoc nsz arcp contract afn <2 x float> %i.bp, splat (float f0xBC911AA6)
  %i.br = select <2 x i1> %i.bm, <2 x float> %i.bo, <2 x float> %i.bq ; 4 uses
  %i.bs = extractelement <2 x float> %i.br, i64 1 ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, 9.642000e-01
  %i.bu = extractelement <2 x float> %i.br, i64 0 ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, f0x3F532CA5
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bs, f0x3FA61CF4
  %i.bx = fsub reassoc nsz arcp contract afn float %i.bw, %i.bd
  %i.by = fmul reassoc nsz arcp contract afn float %i.bu, f0xBD2CB230
  %i.bz = fadd reassoc nsz arcp contract afn float %i.bx, %i.by ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn <2 x float> %i.br, <float 1.000000e+00, float f0x3F066D1A> ; 2 uses
  %i.cb = fadd reassoc nsz arcp contract afn float %i.bt, %i.bc ; 2 uses
  %i.cc = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.cb, i64 0
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.cd, <float 0.000000e+00, float f0x3C8AC481>
  %i.cf = insertelement <2 x float> <float f0x3F7FE762, float poison>, float %i.be, i64 1 ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn <2 x float> %i.cf, %i.ca
  %i.ch = fsub reassoc nsz arcp contract afn <2 x float> %i.cf, %i.ca
  %i.ci = shufflevector <2 x float> %i.cg, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cj = fadd reassoc nsz arcp contract afn <2 x float> %i.ce, %i.ci ; 2 uses
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cb, %i.bv
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, 0.000000e+00 ; 2 uses
  br i1 %i.h, label %.loopexit.i, label %.preheader113.preheader.i

.preheader113.preheader.i:                        ; preds = %bb.c
  %i.cm = fsub reassoc nsz arcp contract afn float %i.bz, %i.bc
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.i
  %i.co = fadd reassoc nsz arcp contract afn float %i.cn, %i.bc
  %i.cp = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fsub reassoc nsz arcp contract afn <2 x float> %i.cj, %i.cq
  %i.cs = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, %i.ag
  %i.ct = fadd reassoc nsz arcp contract afn <2 x float> %i.cs, %i.cq
  %i.cu = fsub reassoc nsz arcp contract afn float %i.cl, %i.bc
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.i
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, %i.bc
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader113.preheader.i, %bb.c
  %.sroa.0141.0.i = phi nsz float [ %i.bz, %bb.c ], [ %i.co, %.preheader113.preheader.i ] ; 4 uses
  %.sroa.29.0.i = phi nsz float [ %i.cl, %bb.c ], [ %i.cw, %.preheader113.preheader.i ] ; 2 uses
  %i.cx = phi <2 x float> [ %i.cj, %bb.c ], [ %i.ct, %.preheader113.preheader.i ] ; 3 uses
  br i1 %.not99.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.loopexit.i
  %i.cy = extractelement <2 x float> %i.cx, i64 1 ; 3 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt float %.sroa.0141.0.i, %i.cy
  %..i.i = select reassoc nsz arcp contract afn i1 %i.cz, float %.sroa.0141.0.i, float %i.cy ; 2 uses
  %i.da = extractelement <2 x float> %i.cx, i64 0 ; 3 uses
  %i.db = fcmp reassoc nsz arcp contract afn ogt float %..i.i, %i.da
  %i.dc = select reassoc nsz arcp contract afn i1 %i.db, float %..i.i, float %i.da ; 5 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.an ; 2 uses
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.dd, f0x37800000
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.df = bitcast float %i.dd to i32              ; 2 uses
  %i.dg = and i32 %i.df, 8388607
  %i.dh = or disjoint i32 %i.dg, 1056964608
  %i.di = uitofp reassoc nsz arcp contract afn i32 %i.df to float
  %i.dj = fmul reassoc nnan nsz arcp contract afn float %i.di, f0x34000000
  %i.dk = bitcast i32 %i.dh to float              ; 2 uses
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, f0x3EB444F9
  %.neg.i.i = fmul reassoc nnan nsz arcp contract afn float %i.dk, f0xBFBFBF75
  %.neg6.i.i = fdiv reassoc nsz arcp contract afn float -1.725880e+00, %i.dl
  %i.dm = fadd reassoc nsz arcp contract afn float %.neg7.i.i, %i.dj
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %.neg.i.i
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %.neg6.i.i
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.t
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dq = phi reassoc nsz arcp contract afn float [ %i.dp, %bb.e ], [ f0x37800000, %bb.d ] ; 3 uses
  %i.dr = fcmp reassoc nsz arcp contract afn ogt float %i.dq, 1.000000e+00
  %i.ds = fcmp reassoc nsz arcp contract afn olt float %i.dq, 0.000000e+00
  %i.dt = select reassoc nsz arcp contract afn i1 %i.ds, float 0.000000e+00, float %i.dq
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, 6.553600e+04
  %i.dv = select i1 %i.dr, float 6.553600e+04, float %i.du ; 3 uses
  %i.dw = fcmp reassoc nsz arcp contract afn ogt float %i.dv, 6.553500e+04
  %i.dx = fcmp reassoc nsz arcp contract afn olt float %i.dv, 0.000000e+00
  %i.dy = select reassoc nsz arcp contract afn i1 %i.dx, float 0.000000e+00, float %i.dv
  %i.dz = fptoui float %i.dy to i64
  %i.ea = select i1 %i.dw, i64 65535, i64 %i.dz   ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ea
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !11 ; 5 uses
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ec, %.sroa.0141.0.i
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.ed, %i.dc
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ec, %i.cy
  %i.eg = fdiv reassoc nsz arcp contract afn float %i.ef, %i.dc
  %i.eh = fmul reassoc nsz arcp contract afn float %i.ec, %i.da
  %i.ei = fdiv reassoc nsz arcp contract afn float %i.eh, %i.dc
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ec, %.sroa.29.0.i
  %i.ek = fdiv reassoc nsz arcp contract afn float %i.ej, %i.dc
  br label %bb.aa

bb.g:                                             ; preds = %.loopexit.i
  %i.el = fmul reassoc nsz arcp contract afn float %.sroa.0141.0.i, %i.ao ; 2 uses
  %i.em = fmul reassoc nsz arcp contract afn <2 x float> %i.cx, %i.ap ; 3 uses
  %i.en = fmul reassoc nsz arcp contract afn float %.sroa.29.0.i, %i.aq ; 2 uses
  %bc = bitcast <2 x float> %i.em to <2 x i32>
  %i.eo = extractelement <2 x i32> %bc, i64 1     ; 2 uses
  %6 = and i32 %i.eo, 8388607
  %7 = or disjoint i32 %6, 1065353216
  %8 = bitcast i32 %7 to float                    ; 5 uses
  %9 = lshr i32 %i.eo, 23
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -127
  %12 = sitofp i32 %11 to float
  %13 = insertelement <2 x float> %i.em, float %i.en, i64 1
  %14 = bitcast <2 x float> %13 to <2 x i32>      ; 2 uses
  %15 = lshr <2 x i32> %14, splat (i32 23)
  %16 = and <2 x i32> %15, splat (i32 255)
  %17 = add nsw <2 x i32> %16, splat (i32 -127)
  %18 = sitofp <2 x i32> %17 to <2 x float>
  %i.ep = fmul reassoc nnan nsz arcp contract afn float %8, f0x3D74552F
  %i.eq = fadd reassoc nnan nsz arcp contract afn float %i.ep, f0xBEEE7397
  %i.er = fmul reassoc nnan nsz arcp contract afn float %i.eq, %8
  %i.es = fadd reassoc nnan nsz arcp contract afn float %i.er, f0x3FBD96DD
  %i.et = fmul reassoc nnan nsz arcp contract afn float %i.es, %8
  %i.eu = fadd reassoc nnan nsz arcp contract afn float %i.et, f0xC02153F6
  %i.ev = fmul reassoc nnan nsz arcp contract afn float %i.eu, %8
  %i.ew = fadd reassoc nnan nsz arcp contract afn float %i.ev, f0x4038D96C
  %i.ex = fadd reassoc nnan nsz arcp contract afn float %8, -1.000000e+00
  %i.ey = fmul reassoc nsz arcp contract afn float %i.ew, %i.ex
  %19 = and <2 x i32> %14, splat (i32 8388607)
  %i.ez = or disjoint <2 x i32> %19, splat (i32 1065353216)
  %i.fa = bitcast <2 x i32> %i.ez to <2 x float>  ; 5 uses
  %i.fb = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fa, splat (float f0x3D74552F)
  %i.fc = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fb, splat (float f0xBEEE7397)
  %i.fd = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fc, %i.fa
  %i.fe = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fd, splat (float f0x3FBD96DD)
  %i.ff = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fe, %i.fa
  %i.fg = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.ff, splat (float f0xC02153F6)
  %i.fh = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.fg, %i.fa
  %i.fi = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fh, splat (float f0x4038D96C)
  %i.fj = fadd reassoc nnan nsz arcp contract afn <2 x float> %i.fa, splat (float -1.000000e+00)
  %i.fk = fmul reassoc nsz arcp contract afn <2 x float> %i.fi, %i.fj
  %i.fl = fcmp reassoc nsz arcp contract afn ogt float %i.el, f0x37800000
  br i1 %i.fl, label %bb.h, label %.preheader.preheader.i

bb.h:                                             ; preds = %bb.g
  %i.fm = bitcast float %i.el to i32              ; 2 uses
  %i.fn = and i32 %i.fm, 8388607
  %i.fo = or disjoint i32 %i.fn, 1065353216
  %i.fp = bitcast i32 %i.fo to float              ; 5 uses
  %i.fq = fmul reassoc nnan nsz arcp contract afn float %i.fp, f0x3D74552F
  %i.fr = fadd reassoc nnan nsz arcp contract afn float %i.fq, f0xBEEE7397
  %i.fs = fmul reassoc nnan nsz arcp contract afn float %i.fr, %i.fp
  %i.ft = fadd reassoc nnan nsz arcp contract afn float %i.fs, f0x3FBD96DD
  %i.fu = fmul reassoc nnan nsz arcp contract afn float %i.ft, %i.fp
  %i.fv = fadd reassoc nnan nsz arcp contract afn float %i.fu, f0xC02153F6
  %i.fw = fmul reassoc nnan nsz arcp contract afn float %i.fv, %i.fp
  %i.fx = fadd reassoc nnan nsz arcp contract afn float %i.fw, f0x4038D96C
  %i.fy = fadd reassoc nnan nsz arcp contract afn float %i.fp, -1.000000e+00
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fx, %i.fy
  %i.ga = lshr i32 %i.fm, 23
  %i.gb = add nsw i32 %i.ga, -127
  %i.gc = sitofp i32 %i.gb to float
  %20 = fsub reassoc nsz arcp contract afn float %i.gc, %i.q
  %21 = fadd reassoc nsz arcp contract afn float %20, %i.fz
  %i.gd = fmul reassoc nsz arcp contract afn float %21, %i.t
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.h, %bb.g
  %i.ge = phi reassoc nsz arcp contract afn float [ %i.gd, %bb.h ], [ f0x37800000, %bb.g ] ; 3 uses
  %i.gf = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.em, splat (float f0x37800000) ; 2 uses
  %i.gg = fsub reassoc nsz arcp contract afn float %12, %i.q
  %22 = fadd reassoc nsz arcp contract afn float %i.gg, %i.ey
  %i.gh = fmul reassoc nsz arcp contract afn float %22, %i.t
  %i.gi = extractelement <2 x i1> %i.gf, i64 1
  %i.gj = select reassoc nsz arcp contract afn i1 %i.gi, float %i.gh, float f0x37800000 ; 3 uses
  %i.gk = fsub reassoc nsz arcp contract afn <2 x float> %18, %i.ak
  %i.gl = extractelement <2 x i1> %i.gf, i64 0
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.en, f0x37800000
  %23 = fadd reassoc nsz arcp contract afn <2 x float> %i.gk, %i.fk
  %i.gn = fmul reassoc nsz arcp contract afn <2 x float> %23, %i.am ; 2 uses
  %i.go = extractelement <2 x float> %i.gn, i64 0
  %i.gp = select reassoc nsz arcp contract afn i1 %i.gl, float %i.go, float f0x37800000 ; 3 uses
  %i.gq = extractelement <2 x float> %i.gn, i64 1
  %i.gr = select reassoc nsz arcp contract afn i1 %i.gm, float %i.gq, float f0x37800000 ; 3 uses
  %i.gs = fcmp reassoc nsz arcp contract afn ogt float %i.ge, 1.000000e+00
  br i1 %i.gs, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.preheader.preheader.i
  %i.gt = fcmp reassoc nsz arcp contract afn olt float %i.ge, 0.000000e+00
  br i1 %i.gt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.preheader.preheader.i
  %i.gu = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.preheader.preheader.i ], [ %i.ge, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gu, 6.553600e+04 ; 3 uses
  %i.gw = fcmp reassoc nsz arcp contract afn ogt float %i.gv, 6.553500e+04
  br i1 %i.gw, label %.preheader.1.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gx = fcmp reassoc nsz arcp contract afn olt float %i.gv, 0.000000e+00
  br i1 %i.gx, label %.preheader.1.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gy = fptoui float %i.gv to i64
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.m, %bb.l, %bb.k
  %i.gz = phi i64 [ 65535, %bb.k ], [ %i.gy, %bb.m ], [ 0, %bb.l ]
  %i.ha = fcmp reassoc nsz arcp contract afn ogt float %i.gj, 1.000000e+00
  br i1 %i.ha, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.preheader.1.i
  %i.hb = fcmp reassoc nsz arcp contract afn olt float %i.gj, 0.000000e+00
  br i1 %i.hb, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.preheader.1.i
  %i.hc = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.preheader.1.i ], [ %i.gj, %bb.o ], [ 0.000000e+00, %bb.n ] ; 2 uses
  %i.hd = fmul reassoc nsz arcp contract afn float %i.hc, 6.553600e+04 ; 3 uses
  %i.he = fcmp reassoc nsz arcp contract afn ogt float %i.hd, 6.553500e+04
  br i1 %i.he, label %.preheader.2.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hf = fcmp reassoc nsz arcp contract afn olt float %i.hd, 0.000000e+00
  br i1 %i.hf, label %.preheader.2.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hg = fptoui float %i.hd to i64
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.r, %bb.q, %bb.p
  %i.hh = phi i64 [ 65535, %bb.p ], [ %i.hg, %bb.r ], [ 0, %bb.q ]
  %i.hi = fcmp reassoc nsz arcp contract afn ogt float %i.gp, 1.000000e+00
  br i1 %i.hi, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.preheader.2.i
  %i.hj = fcmp reassoc nsz arcp contract afn olt float %i.gp, 0.000000e+00
  br i1 %i.hj, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.preheader.2.i
  %i.hk = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.preheader.2.i ], [ %i.gp, %bb.t ], [ 0.000000e+00, %bb.s ] ; 2 uses
  %i.hl = fmul reassoc nsz arcp contract afn float %i.hk, 6.553600e+04 ; 3 uses
  %i.hm = fcmp reassoc nsz arcp contract afn ogt float %i.hl, 6.553500e+04
  br i1 %i.hm, label %.preheader.3.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hn = fcmp reassoc nsz arcp contract afn olt float %i.hl, 0.000000e+00
  br i1 %i.hn, label %.preheader.3.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ho = fptoui float %i.hl to i64
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.w, %bb.v, %bb.u
  %i.hp = phi i64 [ 65535, %bb.u ], [ %i.ho, %bb.w ], [ 0, %bb.v ]
  %i.hq = fcmp reassoc nsz arcp contract afn ogt float %i.gr, 1.000000e+00
  br i1 %i.hq, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %.preheader.3.i
  %i.hr = fcmp reassoc nsz arcp contract afn olt float %i.gr, 0.000000e+00
  br i1 %i.hr, label %.thread175.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hs = fmul reassoc nsz arcp contract afn float %i.gr, 6.553600e+04 ; 3 uses
  %i.ht = fcmp reassoc nsz arcp contract afn ogt float %i.hs, 6.553500e+04
  br i1 %i.ht, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hu = fcmp reassoc nsz arcp contract afn olt float %i.hs, 0.000000e+00
  br i1 %i.hu, label %.thread.i, label %.thread175.i

.thread175.i:                                     ; preds = %bb.z, %bb.x
  %i.hv = phi float [ %i.hs, %bb.z ], [ 0.000000e+00, %bb.x ]
  %i.hw = fptoui float %i.hv to i64
  br label %.thread.i

.thread.i:                                        ; preds = %.thread175.i, %bb.z, %bb.y, %.preheader.3.i
  %i.hx = phi i64 [ 65535, %bb.y ], [ %i.hw, %.thread175.i ], [ 0, %bb.z ], [ 65535, %.preheader.3.i ]
  %.reass35 = fmul reassoc nsz arcp contract afn float %i.gu, f0x46937A01
  %.reass36 = fmul reassoc nsz arcp contract afn float %i.hc, f0x47363D62
  %i.hy = fadd reassoc nsz arcp contract afn float %.reass36, %.reass35
  %.reass = fmul reassoc nsz arcp contract afn float %i.hk, f0x40B3B9D6
  %i.hz = fadd reassoc nsz arcp contract afn float %i.hy, %.reass ; 3 uses
  %i.ia = fcmp reassoc nsz arcp contract afn ogt float %i.hz, 6.553500e+04
  %i.ib = fcmp reassoc nsz arcp contract afn olt float %i.hz, 0.000000e+00
  %i.ic = select reassoc nsz arcp contract afn i1 %i.ib, float 0.000000e+00, float %i.hz
  %i.id = fptosi float %i.ic to i32
  %i.ie = sext i32 %i.id to i64
  %i.if = select i1 %i.ia, i64 65535, i64 %i.ie
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.gz
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !11 ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hh
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !11 ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hp
  %i.il = load float, ptr %i.ik, align 4, !tbaa !11 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hx
  %i.in = load float, ptr %i.im, align 4, !tbaa !11
  %i.io = fmul reassoc nsz arcp contract afn float %i.ih, f0x3E937A01
  %i.ip = fmul reassoc nsz arcp contract afn float %i.ij, f0x3F363D62
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, %i.io
  %i.ir = fmul reassoc nsz arcp contract afn float %i.il, f0x38B3B9D6
  %i.is = fadd reassoc nsz arcp contract afn float %i.iq, %i.ir
  br label %bb.aa

bb.aa:                                            ; preds = %.thread.i, %bb.f
  %.sroa.0130.0.i = phi nsz float [ %i.ih, %.thread.i ], [ %i.ee, %bb.f ]
  %.sroa.13.0.i = phi nsz float [ %i.ij, %.thread.i ], [ %i.eg, %bb.f ]
  %.sroa.24.0.i = phi nsz float [ %i.il, %.thread.i ], [ %i.ei, %bb.f ]
  %.sroa.35.0.i = phi nsz float [ %i.in, %.thread.i ], [ %i.ek, %bb.f ]
  %.089.i = phi nsz float [ %i.is, %.thread.i ], [ %i.ec, %bb.f ] ; 8 uses
  %.pn = phi i64 [ %i.if, %.thread.i ], [ %i.ea, %bb.f ]
  %.084.in.i = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %.pn
  %.084.i = load float, ptr %.084.in.i, align 4, !tbaa !11 ; 4 uses
  %i.it = fsub reassoc nsz arcp contract afn float %.sroa.0130.0.i, %.089.i
  %i.iu = fmul reassoc nsz arcp contract afn float %.084.i, %i.it
  %i.iv = fadd reassoc nsz arcp contract afn float %i.iu, %.089.i ; 3 uses
  %i.iw = fcmp reassoc nsz arcp contract afn ogt float %i.iv, 1.000000e+00
  br i1 %i.iw, label %bb.ao, label %bb.am

bb.ab:                                            ; preds = %bb.ax
  %i.ix = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.nm) #23
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ax
  %i.iy = fmul reassoc nsz arcp contract afn float %i.mz, f0x410137F7
  %i.iz = fadd reassoc nsz arcp contract afn float %i.iy, f0x3E0D3DCB
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ja = phi reassoc nsz arcp contract afn float [ %i.ix, %bb.ab ], [ %i.iz, %bb.ac ]
  %i.jb = fcmp reassoc nsz arcp contract afn ogt float %i.ng, f0x3C111AA7
  br i1 %i.jb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jc = fmul reassoc nsz arcp contract afn float %i.ng, f0x40F92F69
  %i.jd = fadd reassoc nsz arcp contract afn float %i.jc, f0x3E0D3DCB
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.je = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ng) #23
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jf = phi reassoc nsz arcp contract afn float [ %i.je, %bb.af ], [ %i.jd, %bb.ae ] ; 2 uses
  %i.jg = fmul reassoc nsz arcp contract afn float %i.nk, f0x3F9B2B9B ; 2 uses
  %i.jh = fcmp reassoc nsz arcp contract afn ogt float %i.jg, f0x3C111AA7
  br i1 %i.jh, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ji = fmul reassoc nsz arcp contract afn float %i.nk, f0x41170A26
  %i.jj = fadd reassoc nsz arcp contract afn float %i.ji, f0x3E0D3DCB
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.jk = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jg) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jl = phi reassoc nsz arcp contract afn float [ %i.jk, %bb.ai ], [ %i.jj, %bb.ah ]
  %i.jm = fmul reassoc nsz arcp contract afn float %i.nl, 0.000000e+00 ; 3 uses
  %i.jn = fcmp reassoc nsz arcp contract afn ogt float %i.jm, f0x3C111AA7
  br i1 %i.jn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jo = fadd reassoc nsz arcp contract afn float %i.jm, f0x3E0D3DCB
  br label %_process_pixel.exit

bb.al:                                            ; preds = %bb.aj
  %i.jp = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.jm) #23
  br label %_process_pixel.exit

bb.am:                                            ; preds = %bb.aa
  %i.jq = fcmp reassoc nsz arcp contract afn olt float %i.iv, 0.000000e+00
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
