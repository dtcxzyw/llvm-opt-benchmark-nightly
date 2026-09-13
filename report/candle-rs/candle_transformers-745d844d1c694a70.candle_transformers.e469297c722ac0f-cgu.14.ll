Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.14?download=true
inline.NumInlined: 4409
inline.NumDeleted: 292
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMNtNtNtCs1dZk1kIfPhr_19candle_transformers6models7pixtral5llavaNtB2_19MultiModalProjector3new:bb.a
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
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul nnan <2 x double> %i.e, <double 2.000000e+00, double 4.000000e+00> ; 2 uses
  %i.g = extractelement <2 x double> %i.f, i64 0
  %i.h = fadd double %i.g, 3.000000e+00
  %i.i = fmul nnan double %1, 5.000000e-01
  %i.j = fadd nnan double %1, 1.000000e+00
  %i.k = fmul nnan double %i.j, 5.000000e-01
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 1, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double 1.000000e+00, ptr %i.m, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = fadd <2 x double> %i.f, splat (double 1.000000e+00)
  store <2 x double> %i.n, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.h, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x double> <double 5.000000e+00, double 0.000000e+00>, ptr %.sroa.75.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.i, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %1, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.k, ptr %.sroa.69.0..sroa_idx, align 8
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
  %.sroa.0.0 = phi double [ %i.i, %bb.c ], [ %i.af, %bb.h ], [ %1, %bb.i ], [ +qnan, %bb.b ]
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
  %1 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ai)
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
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249) #24, !noalias !3905
  unreachable

_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq.exit233: ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !3904, !noalias !3906, !noundef !5
  %i.bf = udiv i64 %i.be, %i.bb                   ; 3 uses
  store i64 %i.bf, ptr %i.b, align 8, !noalias !3905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3905
  %i.bg = lshr i64 %i.bf, 1
  %.sroa.05.0.i.i.i229 = sub nuw i64 %i.bf, %i.bg
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.bh, align 8, !noalias !3905
  %.sroa.4.0..sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.05.0.i.i.i229, ptr %.sroa.4.0..sroa_idx.i230, align 8, !noalias !3905
  %.sroa.5.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %.sroa.5.0..sroa_idx.i231, align 8, !noalias !3905
  %.sroa.6.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 1, ptr %.sroa.6.0..sroa_idx.i232, align 8, !noalias !3905
  store ptr %3, ptr %i.a, align 8, !noalias !3905
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.bi, align 8, !noalias !3905
  call void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq0EE9from_iterB3k_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3905
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bl = load i64, ptr %i.aa, align 8, !range !14, !noundef !5
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 2305843009213693952
  call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store ptr %i.bk, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.bp, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.bq, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr %i.ad, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.af, ptr %.sroa.53.0..sroa_idx, align 8
  call void @_RINvNtNtCsgCecv3eZDcN_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterfENCNvMs0_NtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybridNtB2v_21GraniteMoeHybridCache3new0EfEB2z_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq.exit233, %_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newINtNtCsgCecv3eZDcN_5alloc3vec3VecfEECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.y, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %4)
  %i.br = load i64, ptr %i.y, align 8, !range !8, !noundef !5 ; 2 uses
  %.not202 = icmp eq i64 %i.br, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  br i1 %.not202, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5116.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5113.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.br, ptr %i.bu, align 8
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bt, ptr %.sroa.4115.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit284

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store ptr %i.bt, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5 ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor11arange_stepmECs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.q, i32 noundef 0, i32 noundef %i.bx, i32 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %4)
          to label %bb.k unwind label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit235: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit255, %bb.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit237, %bb.n, %bb.j
  %.pn227 = phi { ptr, i32 } [ %i.cb, %bb.j ], [ %.pn225, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit237 ], [ %.pn225, %bb.n ], [ %.pn219, %bb.at ], [ %.pn219, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers.exit255 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3907)
end_hunk_0
begin_hunk_1_@_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8flatten_NtNtB8_5shape1DjECs1dZk1kIfPhr_19candle_transformers
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8flatten_NtNtB8_5shape1DjECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 -1, 3), i64, i64 noundef range(i64 0, 2), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvMs_NtNtCs1dZk1kIfPhr_19candle_transformers6models3phiNtB3j_15RotaryEmbedding3new0EE9from_iterB3n_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvMs_NtNtCs1dZk1kIfPhr_19candle_transformers6models8llama2_cNtB3j_5Cache3new0EE9from_iterB3n_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newRSfECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjjEECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.minimumnum.f64(double, double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtCsltEA4u8Pgfu_11candle_core7indexerNtNtB7_6tensor6TensorINtB5_7IndexOpTjjEE1iCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracing6conv2d(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs2_NtNtCs1dZk1kIfPhr_19candle_transformers6models12with_tracingNtB5_6Conv2dNtCsltEA4u8Pgfu_11candle_core6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor12broadcast_asTjjjjEECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core6tensordINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtB5_6TensorE3sub(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), double noundef, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QTensor10dequantize(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor12broadcast_asRSjECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor10where_cond(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models13quantized_phi19precomput_freqs_cis0EE9from_iterB3k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models14quantized_phi319precomput_freqs_cis0EE9from_iterB3k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3newfECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), float noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1B_7step_by6StepByINtNtNtB1F_3ops5range5RangejEENCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models16granitemoehybrid26calculate_default_inv_freq0EE9from_iterB3k_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor11arange_stepxECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3abs(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3neg(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range14RangeInclusivejENCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3mpt16build_alibi_bias0EE9from_iterB35_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtB1B_4take4TakeINtNtB1B_5chain5ChainINtNtB1B_7step_by6StepByINtNtB1B_4skip4SkipINtNtNtB1F_5slice4iter4IterfEEEIB35_B3L_EEEEE9from_iterCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7reshapeTjujjEECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_3ops5range5RangejEINtNtB1z_3map3MapB2q_NCNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3mpt8get_mask00ENCB3i_0EE9from_iterB3o_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor10from_sliceTjjEhECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_3ops5range5RangejEINtNtB1z_3map3MapB2q_NCNCNvNtNtCs1dZk1kIfPhr_19candle_transformers6models3phi8get_mask00ENCB3i_0EE9from_iterB3o_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3exp(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsJ_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3DivBG_E3divCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor13from_vec_implTjjjjEfECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor13broadcast_div(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7maximumRBG_ECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorNtNtNtCsf3Ta7LF998c_4core3ops5arith3Sub3subCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8sum_implNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 3), i64, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjjjjEECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCs3NyA1pFSltE_9candle_nn11var_builderINtB6_14VarBuilderArgsINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtB6_13SimpleBackendEL_EE3getTjEECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor3sqr(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor12mean_keepdimNtNtB8_5shape1DECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef range(i64 0, 3), i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor4sqrt(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs2ZSzJGZRtAv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor4silu(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8gelu_erf(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MulINtNtBY_6result6ResultBF_NtNtB7_5error5ErrorEE3mulCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtCs2ZSzJGZRtAv_12tracing_core10subscriber10SubscriberNtNtCsf3Ta7LF998c_4core6marker4SendNtB1D_4SyncEL_E9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs3NyA1pFSltE_9candle_nn11var_builder10TensorDataINtNtB7_5boxed3BoxDNtBJ_13SimpleBackendEL_EEE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QMatMulNtB7_6Module7forward(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor12mean_keepdimjECs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsB_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MulBG_E3mulCs1dZk1kIfPhr_19candle_transformers(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsr_NtCsltEA4u8Pgfu_11candle_core6tensorRNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs2ZSzJGZRtAv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs11_NtNtCs9BYqgaV0uAw_14regex_automata4util10primitivesNtB6_9PatternIDNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsixB2fhfFqiD_12regex_syntax5error5ErrorNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs9BYqgaV0uAw_14regex_automata3nfa8thompson5error10BuildErrorNtB6_5Debug3fmtCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef align 16 dereferenceable(48), i32 noundef, ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_4IterTjjEjENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #12

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { noreturn }
attributes #23 = { cold }
attributes #24 = { noinline noreturn }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { noinline }
attributes #27 = { nounwind }
attributes #28 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{i64 0, i64 -9223372036854775807}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 -1, i64 -9223372036854775764}
!9 = !{i64 0, i64 16}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{i64 -1, i64 -9223372036854775808}
!13 = !{i64 0, i64 3}
!14 = !{i64 0, i64 -9223372036854775808}
!15 = !{i64 1, i64 536870913}
!16 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!17 = !{i64 1, i64 0}
!18 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!19 = !{i64 8}
!20 = !{i8 0, i8 3}
!21 = !{i64 -1, i64 3}
!22 = !{i8 -2, i8 9}
!23 = !{i64 0, i64 15}
!24 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!25 = !{i8 0, i8 14}
!26 = !{i8 0, i8 2}
!27 = !{!"branch_weights", i32 4001, i32 4000000}
!28 = distinct !{!28, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers"}
!29 = distinct !{!29, !28, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!30 = distinct !{!30, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned"}
!31 = distinct !{!31, !30, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 0"}
!32 = distinct !{!32, !28, !"_RNvYNvYeNtNtCsgCecv3eZDcN_5alloc6borrow7ToOwned8to_ownedINtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTReEE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 1"}
!33 = distinct !{!33, !30, !"_RNvXs2_NtCsgCecv3eZDcN_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 1"}
!34 = distinct !{!34, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers"}
!35 = distinct !{!35, !34, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers: argument 1"}
!36 = distinct !{!36, !34, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!37 = !{!29}
!38 = !{!31}
!39 = !{!36, !35, !31, !33, !29, !32}
!40 = !{!36, !31, !29}
!41 = !{!31, !29}
!42 = !{!33, !32}
!43 = distinct !{!43, !"_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB19_3VecdEEENtNtNtB9_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers"}
!44 = distinct !{!44, !43, !"_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB19_3VecdEEENtNtNtB9_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!45 = distinct !{!45, !"_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecdEEIB1c_dEENtNtNtB9_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers"}
!46 = distinct !{!46, !45, !"_RNvXsi_NtNtNtCsf3Ta7LF998c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB1g_3VecdEEIB1c_dEENtNtNtB9_6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!47 = distinct !{!47, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdEdNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs1dZk1kIfPhr_19candle_transformers"}
!48 = distinct !{!48, !47, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdEdNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!49 = distinct !{!49, !47, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdEdNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs1dZk1kIfPhr_19candle_transformers: argument 0:Peel0"}
!50 = distinct !{!50, !"_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCs1dZk1kIfPhr_19candle_transformers"}
!51 = distinct !{!51, !50, !"_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 0:Peel0"}
!52 = distinct !{!52, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers"}
!53 = distinct !{!53, !52, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers: argument 0:Peel0"}
!54 = distinct !{!54, !"_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecdEEEINtB5_8FuseImplBY_E4nextCs1dZk1kIfPhr_19candle_transformers"}
!55 = distinct !{!55, !54, !"_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecdEEEINtB5_8FuseImplBY_E4nextCs1dZk1kIfPhr_19candle_transformers: argument 1:Peel0"}
!56 = distinct !{!56, !54, !"_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecdEEEINtB5_8FuseImplBY_E4nextCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!57 = distinct !{!57, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers"}
!58 = distinct !{!58, !57, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers: argument 1:Peel0"}
!59 = distinct !{!59, !57, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!60 = distinct !{!60, !50, !"_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!61 = distinct !{!61, !52, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!62 = distinct !{!62, !54, !"_RNvXs9_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4fuseINtB5_4FuseINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB13_3VecdEEEINtB5_8FuseImplBY_E4nextCs1dZk1kIfPhr_19candle_transformers: argument 1"}
!63 = distinct !{!63, !57, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecdEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers: argument 1"}
!64 = distinct !{!64, !100}
!65 = distinct !{!65, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdEdNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs1dZk1kIfPhr_19candle_transformers"}
!66 = distinct !{!66, !65, !"_RINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdEdNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!67 = distinct !{!67, !"_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCs1dZk1kIfPhr_19candle_transformers"}
!68 = distinct !{!68, !67, !"_RNvYNvYINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextINtNtNtB13_3ops8function6FnOnceTQB5_EE9call_onceCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!69 = distinct !{!69, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers"}
!70 = distinct !{!70, !69, !"_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterdENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!71 = distinct !{!71, !"_RNvMNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5statsNtB2_8Quantile3add"}
!72 = distinct !{!72, !71, !"_RNvMNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5statsNtB2_8Quantile3add: argument 0"}
!73 = distinct !{!73, !10, !11}
!74 = distinct !{!74, !"_RNvMNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5statsNtB2_8Quantile9parabolic"}
!75 = distinct !{!75, !74, !"_RNvMNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5statsNtB2_8Quantile9parabolic: argument 0"}
!76 = distinct !{!76, !"_RNvMNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5statsNtB2_8Quantile6linear"}
!77 = distinct !{!77, !76, !"_RNvMNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5statsNtB2_8Quantile6linear: argument 0"}
!78 = distinct !{!78, !11, !10}
!79 = distinct !{!79, !"_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats"}
!80 = distinct !{!80, !79, !"_RNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats: argument 0"}
!81 = distinct !{!81, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSd16sort_unstable_byNCNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats0EB10_"}
!82 = distinct !{!82, !81, !"_RINvMNtCsf3Ta7LF998c_4core5sliceSd16sort_unstable_byNCNvNtNtNtNtCs1dZk1kIfPhr_19candle_transformers6models16stable_diffusion6uni_pc5stats11sort_floats0EB10_: argument 0"}
!83 = !{!48, !46, !44}
!84 = !{!53, !51, !49, !46, !44}
!85 = !{!49, !46, !44}
!86 = !{!55}
!87 = !{!55, !46, !44}
!88 = !{!56}
!89 = !{!58}
!90 = !{!58, !55, !46, !44}
!91 = !{!59, !56}
!92 = !{!58, !55}
!93 = !{!46, !44}
!94 = !{!61, !60, !48, !46, !44}
!95 = !{!62, !46, !44}
!96 = !{!62}
!97 = !{!63}
!98 = !{!63, !62, !46, !44}
!99 = !{!63, !62}
!100 = !{!"llvm.loop.peeled.count", i32 1}
!101 = !{!66, !46, !44}
!102 = !{!70, !68, !66, !46, !44}
!103 = !{!72}
!104 = !{!75, !72}
!105 = !{!77, !72}
!106 = !{!82, !80, !72}
!107 = distinct !{!107, !"_RNCINvMs5_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtB8_17MmapedSafetensors5multiReEs0_0Cs1dZk1kIfPhr_19candle_transformers"}
!108 = distinct !{!108, !107, !"_RNCINvMs5_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtB8_17MmapedSafetensors5multiReEs0_0Cs1dZk1kIfPhr_19candle_transformers: argument 1"}
!109 = distinct !{!109, !107, !"_RNCINvMs5_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtB8_17MmapedSafetensors5multiReEs0_0Cs1dZk1kIfPhr_19candle_transformers: argument 0"}
!110 = !{!109, !108}
!111 = !{!108}
!112 = distinct !{!112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!113 = distinct !{!113, !112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueSNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!114 = distinct !{!114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!115 = distinct !{!115, !114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!116 = distinct !{!116, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!117 = distinct !{!117, !116, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!118 = distinct !{!118, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!119 = distinct !{!119, !118, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!120 = distinct !{!120, !114, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0:It1"}
!121 = distinct !{!121, !116, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0:It1"}
!122 = distinct !{!122, !118, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0:It1"}
!123 = distinct !{!123, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!124 = distinct !{!124, !123, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!125 = distinct !{!125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!126 = distinct !{!126, !125, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!127 = distinct !{!127, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!128 = distinct !{!128, !127, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!129 = !{!113}
!130 = !{!115}
!131 = !{!117}
!132 = !{!119}
!133 = !{!119, !117, !115, !113}
!134 = !{!120}
!135 = !{!121}
!136 = !{!122}
!137 = !{!122, !121, !120, !113}
!138 = !{!122, !121, !120}
!139 = !{!124}
!140 = !{!126}
!141 = !{!128}
!142 = !{!128, !126, !124, !113}
!143 = !{!128, !126, !124}
!144 = distinct !{!144, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers"}
!145 = distinct !{!145, !144, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn6linear6LinearECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!146 = distinct !{!146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!147 = distinct !{!147, !146, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!148 = distinct !{!148, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!149 = distinct !{!149, !148, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!150 = distinct !{!150, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!151 = distinct !{!151, !150, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!152 = distinct !{!152, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers"}
!153 = distinct !{!153, !152, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!154 = distinct !{!154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!155 = distinct !{!155, !154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!156 = distinct !{!156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!157 = distinct !{!157, !156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!158 = distinct !{!158, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
!159 = distinct !{!159, !158, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers: argument 0"}
!160 = distinct !{!160, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers"}
!161 = distinct !{!161, !160, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!162 = distinct !{!162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers"}
!163 = distinct !{!163, !162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!164 = distinct !{!164, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers"}
!165 = distinct !{!165, !164, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs1dZk1kIfPhr_19candle_transformers: argument 0"}
!166 = distinct !{!166, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1dZk1kIfPhr_19candle_transformers"}
end_hunk_1
