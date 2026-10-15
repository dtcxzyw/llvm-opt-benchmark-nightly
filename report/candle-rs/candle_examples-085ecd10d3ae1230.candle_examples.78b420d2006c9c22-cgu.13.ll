Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_examples-085ecd10d3ae1230.candle_examples.78b420d2006c9c22-cgu.13?download=true
inline.NumInlined: 128
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs2_NtCsamv9RYRPgRi_15candle_examples6bs1770NtB6_20ChannelLoudnessMeter4pushINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterfEEB8_:bb.a
  store float %i.bq, ptr %i.s, align 8
  store float %i.aw, ptr %i.r, align 4
  %i.br = extractelement <2 x float> %i.bk, i64 0
  store float %i.br, ptr %i.u, align 8
  store float %i.bp, ptr %i.t, align 4
  %i.bs = fmul float %i.bp, %i.bp
  %i.bt = load float, ptr %i.w, align 4, !noundef !4
  %i.bu = fadd float %i.bs, %i.bt                 ; 2 uses
  %i.bv = fadd float %i.ad, %i.bu                 ; 4 uses
  %i.bw = fsub float %i.bv, %i.ad
  %i.bx = fsub float %i.bu, %i.bw
  store float %i.bx, ptr %i.w, align 4
  store float %i.bv, ptr %i.v, align 8
  %i.by = add i32 %i.ac, 1                        ; 3 uses
  store i32 %i.by, ptr %i.x, align 4
  %i.bz = load i32, ptr %i.c, align 8, !noundef !4
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.d, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !77
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.sroa.7.0.copyload, ptr %i.a, align 8, !noalias !77
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.cb, align 8, !noalias !77
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !77
  ret void

bb.d:                                             ; preds = %bb.c
  %i.cc = fmul float %i.f, %i.bv
  %i.cd = load i64, ptr %i.y, align 8, !alias.scope !78, !noundef !4 ; 3 uses
  %i.ce = load i64, ptr %0, align 8, !range !6, !alias.scope !78, !noundef !4
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #17
          to label %bb.g unwind label %bb.b

bb.f:                                             ; preds = %bb.c, %bb.g
  %i.cg = phi i32 [ %i.by, %bb.c ], [ 0, %bb.g ]
  %i.ch = phi float [ %i.bv, %bb.c ], [ 0.000000e+00, %bb.g ]
  %i.ci = icmp eq ptr %i.ae, %.sroa.9.0.copyload
  br i1 %i.ci, label %._crit_edge, label %bb.c

bb.g:                                             ; preds = %bb.d, %bb.e
  %i.cj = load ptr, ptr %i.z, align 8, !alias.scope !78, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cd
  store float %i.cc, ptr %i.ck, align 4
  %i.cl = add i64 %i.cd, 1
  store i64 %i.cl, ptr %i.y, align 8, !alias.scope !78
  store float 0.000000e+00, ptr %i.v, align 8
  store i32 0, ptr %i.x, align 4
  br label %bb.f

bb.h:                                             ; preds = %bb.b
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !75
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value5ValueECsamv9RYRPgRi_15candle_examples(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.a = load i8, ptr %0, align 8, !range !94, !alias.scope !93, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 1, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 3, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 4, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 5, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 6, label %bb.c
    i8 7, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 8, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 9, label %bb.e
    i8 10, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit
    i8 11, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs0_NvNtNtCs1fJj97VvEPD_9minijinja5value6object1__NtB7_9DynObjectNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !97, !nonnull !4, !noundef !4
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !97
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs1fJj97VvEPD_9minijinja5error5ErrorE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #17
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !100, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !100
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceE9drop_slowCs1fJj97VvEPD_9minijinja(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #17
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !103, !nonnull !4, !noundef !4
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !103
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCs1fJj97VvEPD_9minijinja(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #17
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1fJj97VvEPD_9minijinja5value9ValueReprECsamv9RYRPgRi_15candle_examples.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsamv9RYRPgRi_15candle_examples6bs177020ChannelLoudnessMeterEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsamv9RYRPgRi_15candle_examples6bs177012Windows100msINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBE_5PowerEEEBG_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1j_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerEEB1j_.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsamv9RYRPgRi_15candle_examples6bs177012Windows100msINtNtCsgCecv3eZDcN_5alloc3vec3VecNtBE_5PowerEEEBG_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsamv9RYRPgRi_15candle_examples6bs17705PowerENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, errnomem: write) uwtable
define void @_RNvMs2_NtCsamv9RYRPgRi_15candle_examples6bs1770NtB5_20ChannelLoudnessMeter3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 112)) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = udiv i32 %1, 10
  %i.b = uitofp i32 %1 to float
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = insertelement <2 x float> poison, float %i.b, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = fdiv <2 x float> <float f0x45A520A1, float f0x42EF9CBC>, %i.d ; 2 uses
  %i.f = extractelement <2 x float> %i.e, i64 0
  %i.g = tail call noundef float @tanf(float noundef %i.f) #18, !noalias !108 ; 3 uses
  %2 = insertelement <2 x float> poison, float %i.g, i64 0
  %3 = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %4 = fmul <2 x float> %3, <float f0x3FA11DC5, float 1.000000e+00>
  %5 = fdiv <2 x float> %4, splat (float f0x3F350970) ; 3 uses
  %6 = extractelement <2 x float> %5, i64 1
  %i.h = fadd float %6, 1.000000e+00
  %7 = fmul float %i.g, %i.g                      ; 3 uses
  %8 = fadd float %7, %i.h                        ; 2 uses
  %i.i = extractelement <2 x float> %5, i64 0
  %9 = fadd float %i.i, f0x3FCADCD9
  %10 = fadd float %7, %9
  %11 = fdiv float %10, %8
  %12 = fsub <2 x float> <float f0x3FCADCD9, float 1.000000e+00>, %5
  %13 = insertelement <4 x float> poison, float %7, i64 0
  %14 = shufflevector <4 x float> %13, <4 x float> poison, <4 x i32> zeroinitializer
  %15 = shufflevector <2 x float> %12, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %16 = shufflevector <4 x float> <float f0xBFCADCD9, float poison, float -1.000000e+00, float poison>, <4 x float> %15, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %17 = fadd <4 x float> %14, %16
  %18 = fmul <4 x float> %17, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %19 = insertelement <4 x float> poison, float %8, i64 0
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> zeroinitializer
  %21 = fdiv <4 x float> %18, %20                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.j = extractelement <2 x float> %i.e, i64 1
  %22 = tail call noundef float @tanf(float noundef %i.j) #18, !noalias !109 ; 3 uses
  %23 = fmul float %22, %22                       ; 2 uses
  %24 = fdiv float %22, f0x3F00156F               ; 2 uses
  %25 = fadd float %24, 1.000000e+00
  %26 = fadd float %23, %25
  %27 = fsub float 1.000000e+00, %24
  %.sroa.89.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.89.0..sroa_idx, i8 0, i64 16, i1 false)
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.a, ptr %28, align 8
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %30 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %30, ptr %29, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %11, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %31 = shufflevector <4 x float> %21, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %31, ptr %.sroa.6.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = insertelement <2 x float> poison, float %23, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = insertelement <2 x float> <float -1.000000e+00, float poison>, float %27, i64 1
  %i.n = fadd <2 x float> %i.m, %32
  %i.o = fmul <2 x float> %i.n, <float 2.000000e+00, float 1.000000e+00>
  %i.p = insertelement <2 x float> poison, float %26, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x float> %i.o, %i.q
  store <2 x float> %i.r, ptr %i.k, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> <float 1.000000e+00, float -2.000000e+00>, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float 1.000000e+00, ptr %.sroa.78.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.s, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtB6_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueEE13new_uninit_inCsamv9RYRPgRi_15candle_examples() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 320, 729) 640, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsamv9RYRPgRi_15candle_examples() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 320, 729) 728, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1u_EE13new_uninit_inCsamv9RYRPgRi_15candle_examples() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 320, 729) 640, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodemNtNtCs1fJj97VvEPD_9minijinja5value5ValueEE13new_uninit_inCsamv9RYRPgRi_15candle_examples() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(416) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 320, 729) 416, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 416) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeINtNtB6_6borrow3CoweENtNtCs1fJj97VvEPD_9minijinja5value5ValueEE13new_uninit_inCsamv9RYRPgRi_15candle_examples() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 320, 729) 544, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsaPlfBUY5LAj_10serde_json5value5ValueEE13new_uninit_inCsamv9RYRPgRi_15candle_examples() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 320, 729) 632, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCs1fJj97VvEPD_9minijinja5value5ValueB1p_EE13new_uninit_inCsamv9RYRPgRi_15candle_examples() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 320, 729) 544, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodemNtNtCs1fJj97VvEPD_9minijinja5value5ValueEE13new_uninit_inCsamv9RYRPgRi_15candle_examples() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(320) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 320, 729) 320, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 320) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsamv9RYRPgRi_15candle_examples5audio18normalize_loudness(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 10 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 11 uses
  %i.h = alloca [80 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [80 x i8], align 8                ; 9 uses
  %i.k = alloca [8 x i8], align 8                 ; 11 uses
  %i.l = alloca [80 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sqr(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  %i.m = load i64, ptr %i.f, align 8, !range !176, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.m, -1
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.567.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.564.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.m, ptr %0, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.466.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsamv9RYRPgRi_15candle_examples.exit144

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.o, ptr %i.g, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8mean_all(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.f unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsamv9RYRPgRi_15candle_examples.exit128: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsamv9RYRPgRi_15candle_examples.exit130, %bb.i, %bb.e
  %.pn124 = phi { ptr, i32 } [ %i.s, %bb.e ], [ %.pn122, %bb.i ], [ %.pn122, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECsamv9RYRPgRi_15candle_examples.exit130 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.p = load ptr, ptr %i.g, align 8, !alias.scope !180, !nonnull !4, !noundef !4
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !180
end_hunk_0
