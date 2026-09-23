Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.14?download=true
inline.NumInlined: 4409
inline.NumDeleted: 292
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models12paddleocr_vl6visionNtB2_13PosEmbedCache6insert:bb.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7pixtral5llavaNtB2_19MultiModalProjector3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(256) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 16               ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 8)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.l, %bb.m, %bb.n, %bb.b, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.j, %bb.b ], [ %i.z, %bb.n ], [ %i.z, %bb.m ], [ %i.z, %bb.l ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2) #23
          to label %bb.t unwind label %bb.s

bb.b:                                             ; preds = %bb.p, %bb.c, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.d, i64 noundef %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.k = load i64, ptr %i.d, align 8, !range !8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.639.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.635.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.k, ptr %0, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %.sroa.538.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.e, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.o, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE11push_prefixReECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 8)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(16) %i.e) #23
          to label %.body unwind label %bb.s

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCs3NyA1pFSltE_9candle_nn6linear6linear(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, i64 noundef %i.i, i64 noundef %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = load i64, ptr %i.b, align 8, !range !8, !noundef !5 ; 2 uses
  %.not54 = icmp eq i64 %i.r, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  br i1 %.not54, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.651.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.647.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.r, ptr %0, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.449.0..sroa_idx, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %.sroa.550.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3699)
  call void @llvm.experimental.noalias.scope.decl(metadata !3700)
  call void @llvm.experimental.noalias.scope.decl(metadata !3701)
  call void @llvm.experimental.noalias.scope.decl(metadata !3702)
  %i.w = load ptr, ptr %i.e, align 16, !alias.scope !3703, !nonnull !5, !noundef !5
  %i.x = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !3703
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3704)
  %i.aa = load ptr, ptr %i.p, align 8, !alias.scope !3705, !noundef !5 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.body, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !3706
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.n, label %.body

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #26
          to label %.body unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i: ; preds = %bb.k, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !3707)
  %i.ae = load ptr, ptr %i.p, align 8, !alias.scope !3708, !noundef !5 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i
  %i.ag = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !3709
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit unwind label %bb.b

bb.q:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.r:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ak = load i64, ptr %i.aj, align 8, !range !23, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.am = load double, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ak, ptr %i.an, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.am, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load <2 x ptr>, ptr %i.e, align 16
  store <2 x ptr> %i.ao, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.v, ptr %.sroa.827.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers.exit: ; preds = %bb.e, %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit.i, %bb.o, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3NyA1pFSltE_9candle_nn11var_builder14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBE_13SimpleBackendEL_EEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40) %2)
  ret void

bb.s:                                             ; preds = %bb.g, %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.t:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5statsNtB2_8Quantile3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 8 captures(none) dereferenceable(176) %0, double noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = fcmp oge double %1, 0.000000e+00
  %i.b = fcmp ole double %1, 1.000000e+00
  %spec.select.i = and i1 %i.a, %i.b
  br i1 %spec.select.i, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.d = fmul nnan double %1, 5.000000e-01
  %i.e = fadd nnan double %1, 1.000000e+00
  %i.f = fmul nnan double %i.e, 5.000000e-01
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %2 = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %1, i64 1
  %3 = shufflevector <4 x double> %2, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %4 = fmul nnan <4 x double> %3, <double -0.000000e+00, double 2.000000e+00, double 4.000000e+00, double 2.000000e+00>
  %5 = fadd <4 x double> %4, <double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 3.000000e+00>
  store <4 x double> %5, ptr %i.h, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x double> <double 5.000000e+00, double 0.000000e+00>, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.d, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %1, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.f, ptr %.sroa.69.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double 1.000000e+00, ptr %.sroa.710.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RNvMNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5statsNtB2_8Quantile8quantile(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 7 uses
  %i.f = icmp ugt i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %bb.f, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load double, ptr %i.h, align 8, !noundef !5
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <2 x double>, ptr %i.j, align 8
  store <2 x double> %i.l, ptr %i.c, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load <2 x double>, ptr %i.k, align 8
  store <2 x double> %i.n, ptr %i.m, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3714
  store ptr %i.a, ptr %i.b, align 8, !noalias !3714
  %i.o = icmp eq i64 %i.e, 1
  br i1 %i.o, label %_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit, label %bb.e, !prof !24

bb.e:                                             ; preds = %bb.d
  call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftdNCINvMB8_Sd16sort_unstable_byNCNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats0E0EB22_(ptr noalias nofree noundef nonnull align 8 %i.c, i64 noundef range(i64 1, 6) %i.e, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit

_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3714
  %i.p = uitofp nneg i64 %i.e to double
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load double, ptr %i.q, align 8, !noundef !5
  %i.s = fmul double %i.r, %i.p
  %i.t = fadd double %i.s, -1.000000e+00          ; 2 uses
  %i.u = call double @llvm.ceil.f64(double %i.t)  ; 4 uses
  %i.v = fcmp oeq double %i.t, %i.u
  %i.w = fcmp oge double %i.u, 0.000000e+00
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.g, label %_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit._crit_edge

_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit._crit_edge: ; preds = %_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit
  %.pre = add nsw i64 %i.e, -1
  br label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.i, %bb.h, %bb.c
  %.sroa.0.0 = phi double [ %i.i, %bb.c ], [ %i.af, %bb.h ], [ %i.aj, %bb.i ], [ +qnan, %bb.b ]
  ret double %.sroa.0.0

bb.g:                                             ; preds = %_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit
  %i.x = call i64 @llvm.fptoui.sat.i64.f64(double %i.u) ; 2 uses
  %i.y = add nsw i64 %i.e, -1                     ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit._crit_edge, %bb.g
  %.pre-phi = phi i64 [ %.pre, %_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats.exit._crit_edge ], [ %i.y, %bb.g ]
  %i.aa = call nsz double @llvm.maximumnum.f64(double %i.u, double 0.000000e+00)
  %i.ab = call double @llvm.round.f64(double %i.aa)
  %i.ac = call i64 @llvm.fptoui.sat.i64.f64(double %i.ab)
  %i.ad = call i64 @llvm.umin.i64(i64 %i.ac, i64 %.pre-phi)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.x
  %i.ah = load <2 x double>, ptr %i.ag, align 8
  %i.ai = fmul <2 x double> %i.ah, splat (double 5.000000e-01)
  %i.aj = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybridNtB5_21GraniteMoeHybridCache3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i1 noundef zeroext %1, i8 noundef range(i8 0, 14) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.0103 = alloca [72 x i8], align 8         ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 11 uses
  %i.i = alloca [80 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 11 uses
  %i.m = alloca [80 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 9 uses
  %i.o = alloca [80 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 11 uses
  %i.q = alloca [80 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 13 uses
  %i.s = alloca [80 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 13 uses
  %i.u = alloca [80 x i8], align 8                ; 9 uses
  %i.v = alloca [8 x i8], align 8                 ; 13 uses
  %i.w = alloca [80 x i8], align 8                ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 12 uses
  %i.y = alloca [80 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 11 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [56 x i8], align 8               ; 10 uses
  %i.ac = alloca [4 x i8], align 4                ; 4 uses
  %i.ad = alloca [4 x i8], align 4                ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ah = load i8, ptr %i.ag, align 4, !range !20, !noundef !5
  %cond = icmp eq i8 %i.ah, 0
  br i1 %cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3902
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !3901, !noalias !3903, !noundef !5 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #24, !noalias !3902
  unreachable

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq.exit: ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !3901, !noalias !3903, !noundef !5
  %i.an = udiv i64 %i.am, %i.aj                   ; 3 uses
  store i64 %i.an, ptr %i.d, align 8, !noalias !3902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3902
  %i.ao = lshr i64 %i.an, 1
  %.sroa.05.0.i.i.i = sub nuw i64 %i.an, %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ap, align 8, !noalias !3902
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.05.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3902
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3902
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3902
  store ptr %3, ptr %i.c, align 8, !noalias !3902
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.aq, align 8, !noalias !3902
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq0EE9from_iterB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3902
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ar = load i64, ptr %i.af, align 8, !noundef !5
  %i.as = uitofp i64 %i.ar to float
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.au = load <2 x float>, ptr %i.at, align 4
  %i.av = insertelement <2 x float> poison, float %i.as, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = fdiv <2 x float> %i.aw, %i.au           ; 2 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0
  store float %i.ay, ptr %i.ad, align 4
  %i.az = extractelement <2 x float> %i.ax, i64 1
  store float %i.az, ptr %i.ac, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3904)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3905
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !3904, !noalias !3906, !noundef !5 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq.exit233

bb.e:                                             ; preds = %bb.d
end_hunk_0
