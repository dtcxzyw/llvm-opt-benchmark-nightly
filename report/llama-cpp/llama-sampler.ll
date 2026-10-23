Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-sampler?download=true
inline.NumInlined: 6714
inline.NumDeleted: 2633
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZL29llama_sampler_backend_supportP13llama_samplerP24ggml_backend_buffer_type:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN27llama_sampler_backend_probeD2Ev.exit
  %.4 = phi i1 [ %.not24.not.not.not.not.not, %_ZN27llama_sampler_backend_probeD2Ev.exit ], [ true, %bb.a ]
  ret i1 %.4
}

declare ptr @ggml_backend_buft_get_device(ptr noundef) local_unnamed_addr #7

declare ptr @ggml_graph_node(ptr noundef, i32 noundef) local_unnamed_addr #7

declare zeroext i1 @ggml_backend_dev_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @ggml_backend_dev_name(ptr noundef) local_unnamed_addr #7

declare ptr @ggml_op_name(i32 noundef) local_unnamed_addr #7

declare ptr @ggml_reshape_1d(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i64 @ggml_nelements(ptr noundef) local_unnamed_addr #7

declare ptr @ggml_argmax(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @ggml_set_name(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.50, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !87
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !87
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !113    ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !87
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %i.h
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #12

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nounwind
declare noundef double @_ZNKSt13random_device13_M_getentropyEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #12

declare void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #7

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL23llama_sampler_dist_namePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN21llama_sampler_backend8get_nameEv(ptr noundef nonnull align 8 dereferenceable(66) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL25llama_sampler_dist_acceptP13llama_sampleri(ptr nofree noundef readonly captures(none) %0, i32 %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5080
  %i.d = load i8, ptr %i.c, align 8, !tbaa !129, !range !78, !noundef !79
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 10096 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !716
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 10088
  %i.i = load i64, ptr %i.h, align 8, !tbaa !291
  %.not = icmp ult i64 %i.g, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.k = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000)
  %i.l = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.m = fdiv x86_fp80 %i.k, %i.l
  %i.n = fptoui x86_fp80 %i.m to i64              ; 2 uses
  %i.o = add i64 %i.n, 52
  %i.p = udiv i64 %i.o, %i.n
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  br label %select.unfold.i.i.i.i

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit: ; preds = %select.unfold.i.i.i.i
  %i.q = load i64, ptr %i.f, align 8, !tbaa !716
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.f, align 8, !tbaa !716
  br label %bb.d

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %bb.c
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.c ], [ %i.t, %select.unfold.i.i.i.i ]
  %i.s = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.j) ; 0 uses
  %i.t = add i64 %.023.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit, label %select.unfold.i.i.i.i, !llvm.loop !8

bb.d:                                             ; preds = %bb.a, %bb.b, %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL24llama_sampler_dist_applyP13llama_samplerP22llama_token_data_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((16, 24)) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93   ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8, !tbaa !94
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %i.f, align 8, !tbaa !94
  %i.g = icmp eq i64 %i.d, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000)
  %i.j = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.k = fdiv x86_fp80 %i.i, %i.j
  %i.l = fptoui x86_fp80 %i.k to i64              ; 2 uses
  %i.m = add i64 %i.l, 52
  %i.n = udiv i64 %i.m, %i.l
  %spec.select.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  br label %select.unfold.i.i.i.i

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit: ; preds = %select.unfold.i.i.i.i
  %i.o = load ptr, ptr %1, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !292
  br label %bb.m

select.unfold.i.i.i.i:                            ; preds = %select.unfold.i.i.i.i, %bb.d
  %.023.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %bb.d ], [ %i.r, %select.unfold.i.i.i.i ]
  %i.q = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.h) ; 0 uses
  %i.r = add i64 %.023.i.i.i.i, -1                ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit, label %select.unfold.i.i.i.i, !llvm.loop !8

bb.e:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %1, align 8, !tbaa !92     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !290 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !95, !range !78, !noundef !79
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.x = add i64 %i.d, -1                         ; 3 uses
  %xtraiter = and i64 %i.x, 1
  %i.y = icmp eq i64 %i.d, 2
  br i1 %i.y, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.x, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.04870 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.06369 = phi float [ %i.u, %.lr.ph.preheader.new ], [ %.sroa.speculated.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %.04870
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !86 ; 2 uses
  %i.ac = fcmp olt float %.06369, %i.ab
  %.sroa.speculated = select i1 %i.ac, float %i.ab, float %.06369 ; 2 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %.04870
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !86 ; 2 uses
  %i.ag = fcmp olt float %.sroa.speculated, %i.af
  %.sroa.speculated.1 = select i1 %i.ag, float %i.af, float %.sroa.speculated ; 3 uses
  %i.ah = add nuw i64 %.04870, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !717

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04870.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.ah, %.loopexit.loopexit.unr-lcssa ]
  %.06369.epil.init = phi float [ %i.u, %.lr.ph.preheader ], [ %.sroa.speculated.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod99 = trunc i64 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %.04870.epil.init
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !86 ; 2 uses
  %i.al = fcmp olt float %.06369.epil.init, %i.ak
  %.sroa.speculated.epil = select i1 %i.al, float %i.ak, float %.06369.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e
  %.164 = phi float [ %i.u, %bb.e ], [ %.sroa.speculated.1, %.loopexit.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph.epil.preheader ]
  br label %bb.i

bb.f:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.an = tail call x86_fp80 @llvm.log.f80(x86_fp80 f0x401F8000000000000000)
  %i.ao = tail call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ap = fdiv x86_fp80 %i.an, %i.ao
  %i.aq = fptoui x86_fp80 %i.ap to i64            ; 2 uses
  %i.ar = add i64 %i.aq, 52
  %i.as = udiv i64 %i.ar, %i.aq
  %spec.select.i.i.i.i52 = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  br label %select.unfold.i.i.i.i53

bb.g:                                             ; preds = %select.unfold.i.i.i.i53
  %i.at = fdiv double %i.ax, %i.ba                ; 2 uses
  %i.au = fcmp ult double %i.at, 1.000000e+00
  br i1 %i.au, label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit59, label %bb.h, !prof !107

select.unfold.i.i.i.i53:                          ; preds = %select.unfold.i.i.i.i53, %bb.f
  %.023.i.i.i.i54 = phi i64 [ %spec.select.i.i.i.i52, %bb.f ], [ %i.bb, %select.unfold.i.i.i.i53 ]
  %.01422.i.i.i.i55 = phi double [ 1.000000e+00, %bb.f ], [ %i.ba, %select.unfold.i.i.i.i53 ] ; 2 uses
  %.01521.i.i.i.i56 = phi double [ 0.000000e+00, %bb.f ], [ %i.ax, %select.unfold.i.i.i.i53 ]
  %i.av = tail call noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %i.am)
  %i.aw = uitofp i64 %i.av to double
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %.01422.i.i.i.i55, double %.01521.i.i.i.i56) ; 2 uses
  %i.ay = fpext double %.01422.i.i.i.i55 to x86_fp80
  %i.az = fmul x86_fp80 %i.ay, f0x401F8000000000000000
  %i.ba = fptrunc x86_fp80 %i.az to double        ; 2 uses
  %i.bb = add i64 %.023.i.i.i.i54, -1             ; 2 uses
  %.not.i.i.i.i57 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i.i57, label %bb.g, label %select.unfold.i.i.i.i53, !llvm.loop !8

bb.h:                                             ; preds = %bb.g
  br label %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit59

_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit59: ; preds = %bb.g, %bb.h
  %.016.i.i.i.i58 = phi double [ f0x3FEFFFFFFFFFFFFF, %bb.h ], [ %i.at, %bb.g ]
  %i.bc = fadd double %.016.i.i.i.i58, 0.000000e+00
  %i.bd = fmul double %i.bn, %i.bc
  %i.be = load i64, ptr %i.c, align 8, !tbaa !93  ; 3 uses
  %.not.a = icmp eq i64 %i.be, 0
  br i1 %.not.a, label %._crit_edge.thread, label %.lr.ph76

.lr.ph76:                                         ; preds = %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit59
  %i.bf = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %.loopexit, %bb.i
  %.04672 = phi i64 [ 0, %.loopexit ], [ %i.bo, %bb.i ] ; 2 uses
  %.04771 = phi double [ 0.000000e+00, %.loopexit ], [ %i.bn, %bb.i ]
  %i.bg = getelementptr inbounds nuw [12 x i8], ptr %i.s, i64 %.04672 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !290
  %i.bj = fsub float %i.bi, %.164
  %i.bk = tail call float @expf(float noundef %i.bj) #40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store float %i.bk, ptr %i.bl, align 4, !tbaa !292
  %i.bm = fpext float %i.bk to double
  %i.bn = fadd double %.04771, %i.bm              ; 3 uses
  %i.bo = add nuw i64 %.04672, 1                  ; 2 uses
  %exitcond81.not = icmp eq i64 %i.bo, %i.d
  br i1 %exitcond81.not, label %bb.f, label %bb.i, !llvm.loop !718

._crit_edge:                                      ; preds = %._crit_edge83
  %i.bp = trunc nuw i8 %.1 to i1
  br i1 %i.bp, label %bb.m, label %._crit_edge.thread

bb.j:                                             ; preds = %.lr.ph76, %._crit_edge83
  %.075 = phi i64 [ 0, %.lr.ph76 ], [ %i.bx, %._crit_edge83 ] ; 4 uses
  %.04374 = phi i8 [ 0, %.lr.ph76 ], [ %.1, %._crit_edge83 ]
  %.04473 = phi double [ 0.000000e+00, %.lr.ph76 ], [ %.145, %._crit_edge83 ] ; 2 uses
  %i.bq = trunc nuw i8 %.04374 to i1
  %.phi.trans.insert = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %.075
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre = load float, ptr %.phi.trans.insert84, align 4, !tbaa !292
  %.pre85 = fpext float %.pre to double           ; 2 uses
  br i1 %i.bq, label %._crit_edge83, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = fadd double %.04473, %.pre85            ; 3 uses
  %i.bs = fcmp ult double %i.br, %i.bd
  br i1 %i.bs, label %._crit_edge83, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %.075, ptr %i.f, align 8, !tbaa !94
  br label %._crit_edge83

._crit_edge83:                                    ; preds = %bb.j, %bb.k, %bb.l
  %.145 = phi double [ %i.br, %bb.l ], [ %i.br, %bb.k ], [ %.04473, %bb.j ]
  %.1 = phi i8 [ 1, %bb.l ], [ 0, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.bf, i64 %.075
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = fdiv double %.pre85, %i.bn
  %i.bw = fptrunc double %i.bv to float
  store float %i.bw, ptr %i.bu, align 4, !tbaa !292
  %i.bx = add nuw i64 %.075, 1                    ; 2 uses
  %exitcond82.not = icmp eq i64 %i.bx, %i.be
  br i1 %exitcond82.not, label %._crit_edge, label %bb.j, !llvm.loop !719

._crit_edge.thread:                               ; preds = %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit59, %._crit_edge
  %i.by = add i64 %i.be, -1
  store i64 %i.by, ptr %i.f, align 8, !tbaa !94
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_.exit, %._crit_edge.thread, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL24llama_sampler_dist_resetP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !126
  %i.e = tail call fastcc noundef i32 @_ZL12get_rng_seedj(i32 noundef %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 %i.e, ptr %i.f, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 4 uses
  %i.h = zext i32 %i.e to i64                     ; 2 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !111
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %i.h, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  %.011.i = phi i64 [ 1, %bb.a ], [ %i.v, %bb.c ] ; 4 uses
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %.011.i
  %i.j = lshr i64 %store_forwarded, 30
  %i.k = xor i64 %i.j, %store_forwarded
  %i.l = mul nuw nsw i64 %i.k, 1812433253
  %i.m = add nuw i64 %i.l, %.011.i                ; 2 uses
  %i.n = and i64 %i.m, 4294967295                 ; 2 uses
  store i64 %i.n, ptr %i.i, align 8, !tbaa !111
  %i.o = add nuw nsw i64 %.011.i, 1               ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.o, 624
  br i1 %exitcond.not.i, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr [8 x i8], ptr %i.g, i64 %i.o
  %i.q = lshr i64 %i.n, 30
  %i.r = xor i64 %i.q, %i.m
  %i.s = mul i64 %i.r, 1812433253
  %i.t = add i64 %i.s, %i.o
  %i.u = and i64 %i.t, 4294967295                 ; 2 uses
  store i64 %i.u, ptr %i.p, align 8, !tbaa !111
  %i.v = add nuw nsw i64 %.011.i, 2
  br label %bb.b

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm.exit: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 5072
  store i64 624, ptr %i.w, align 8, !tbaa !128
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 5088
end_hunk_0
begin_hunk_1_@"_ZSt14__partial_sortIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_":bb.a

.lr.ph.split.split.us.split.i:                    ; preds = %.lr.ph.split.split.us.i
  %.sroa.3.0..sroa_idx.i.i.i26.us52.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.us35.pre.i = load float, ptr %i.am, align 4, !tbaa !290
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.split.split.us.split.i
  %.val.us35.i = phi float [ %.val.us35.pre.i, %.lr.ph.split.split.us.split.i ], [ %.val.us3560.i, %bb.n ] ; 2 uses
  %.032.us33.i = phi ptr [ %1, %.lr.ph.split.split.us.split.i ], [ %i.ci, %bb.n ] ; 5 uses
  %i.cd = getelementptr i8, ptr %.032.us33.i, i64 4
  %.0.val.us34.i = load float, ptr %i.cd, align 4, !tbaa !290
  %i.ce = fcmp ogt float %.0.val.us34.i, %.val.us35.i
  br i1 %i.ce, label %._crit_edge.i.i14.us36.i, label %bb.n

._crit_edge.i.i14.us36.i:                         ; preds = %bb.m
  %.sroa.04.0.copyload.i11.us37.i = load i64, ptr %.032.us33.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.us38.i = getelementptr inbounds nuw i8, ptr %.032.us33.i, i64 8
  %.sroa.4.0.copyload.i13.us39.i = load float, ptr %.sroa.4.0..sroa_idx.i12.us38.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.us33.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  store i64 %.sroa.04.0.copyload.i11.us37.i, ptr %0, align 4
  store float %.sroa.4.0.copyload.i13.us39.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.us52.i, align 4, !tbaa !86
  %i.cf = lshr i64 %.sroa.04.0.copyload.i11.us37.i, 32
  %i.cg = trunc nuw i64 %i.cf to i32
  %i.ch = bitcast i32 %i.cg to float
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i14.us36.i, %bb.m
  %.val.us3560.i = phi float [ %i.ch, %._crit_edge.i.i14.us36.i ], [ %.val.us35.i, %bb.m ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.032.us33.i, i64 12 ; 2 uses
  %i.cj = icmp ult ptr %i.ci, %2
  br i1 %i.cj, label %bb.m, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !748

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %.sroa.3.0..sroa_idx.i.i.i26.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.pre.i = load float, ptr %i.am, align 4, !tbaa !290
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.split.split.i
  %.val.i = phi float [ %.val.pre.i, %.lr.ph.split.split.i ], [ %.val58.i, %bb.p ] ; 2 uses
  %.032.i = phi ptr [ %1, %.lr.ph.split.split.i ], [ %i.cp, %bb.p ] ; 5 uses
  %i.ck = getelementptr i8, ptr %.032.i, i64 4
  %.0.val.i = load float, ptr %i.ck, align 4, !tbaa !290
  %i.cl = fcmp ogt float %.0.val.i, %.val.i
  br i1 %i.cl, label %._crit_edge.i.i14.i, label %bb.p

._crit_edge.i.i14.i:                              ; preds = %bb.o
  %.sroa.04.0.copyload.i11.i = load i64, ptr %.032.i, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %.032.i, i64 8
  %.sroa.4.0.copyload.i13.i = load float, ptr %.sroa.4.0..sroa_idx.i12.i, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.032.i, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  store i64 %.sroa.04.0.copyload.i11.i, ptr %0, align 4
  store float %.sroa.4.0.copyload.i13.i, ptr %.sroa.3.0..sroa_idx.i.i.i26.i, align 4, !tbaa !86
  %i.cm = lshr i64 %.sroa.04.0.copyload.i11.i, 32
  %i.cn = trunc nuw i64 %i.cm to i32
  %i.co = bitcast i32 %i.cn to float
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i14.i, %bb.o
  %.val58.i = phi float [ %.val.i, %bb.o ], [ %i.co, %._crit_edge.i.i14.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.032.i, i64 12 ; 2 uses
  %i.cq = icmp ult ptr %i.cp, %2
  br i1 %i.cq, label %bb.o, label %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !748

"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %bb.p, %bb.n, %bb.l, %bb.k, %"_ZSt11__make_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit.i"
  %i.cr = icmp sgt i64 %i.c, 12
  br i1 %i.cr, label %.lr.ph.i5, label %"_ZSt11__sort_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit"

.lr.ph.i5:                                        ; preds = %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit", %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i"
  %.01.i = phi ptr [ %i.cs, %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i" ], [ %1, %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit" ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.01.i, i64 -12 ; 4 uses
  %.sroa.04.0.copyload.i.i6 = load i64, ptr %i.cs, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i7 = getelementptr inbounds i8, ptr %.01.i, i64 -4
  %.sroa.4.0.copyload.i.i8 = load float, ptr %.sroa.4.0..sroa_idx.i.i7, align 4, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !289
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.b                     ; 3 uses
  %i.cv = sdiv exact i64 %i.cu, 12                ; 3 uses
  %i.cw = add nsw i64 %i.cv, -1
  %i.cx = sdiv i64 %i.cw, 2
  %i.cy = icmp sgt i64 %i.cu, 24
  br i1 %i.cy, label %.lr.ph.i.i.i21, label %._crit_edge.i.i.i9

.lr.ph.i.i.i21:                                   ; preds = %.lr.ph.i5, %.lr.ph.i.i.i21
  %.035.i.i.i22 = phi i64 [ %spec.select.i.i.i25, %.lr.ph.i.i.i21 ], [ 0, %.lr.ph.i5 ] ; 2 uses
  %i.cz = shl i64 %.035.i.i.i22, 1                ; 3 uses
  %i.da = add i64 %i.cz, 2                        ; 2 uses
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.da
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.cz
  %i.dd = getelementptr i8, ptr %i.db, i64 4
  %.val.i.i.i23 = load float, ptr %i.dd, align 4, !tbaa !290
  %i.de = getelementptr i8, ptr %i.dc, i64 16
  %.val34.i.i.i24 = load float, ptr %i.de, align 4, !tbaa !290
  %i.df = fcmp ogt float %.val.i.i.i23, %.val34.i.i.i24
  %i.dg = or disjoint i64 %i.cz, 1
  %spec.select.i.i.i25 = select i1 %i.df, i64 %i.dg, i64 %i.da ; 4 uses
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %spec.select.i.i.i25
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.035.i.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.di, ptr noundef nonnull align 4 dereferenceable(12) %i.dh, i64 12, i1 false), !tbaa.struct !289
  %i.dj = icmp slt i64 %spec.select.i.i.i25, %i.cx
  br i1 %i.dj, label %.lr.ph.i.i.i21, label %._crit_edge.i.i.i9, !llvm.loop !745

._crit_edge.i.i.i9:                               ; preds = %.lr.ph.i.i.i21, %.lr.ph.i5
  %.0.lcssa.i.i.i10 = phi i64 [ 0, %.lr.ph.i5 ], [ %spec.select.i.i.i25, %.lr.ph.i.i.i21 ] ; 5 uses
  %i.dk = and i64 %i.cv, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i9
  %i.dm = add nsw i64 %i.cv, -2
  %i.dn = ashr exact i64 %i.dm, 1
  %i.do = icmp eq i64 %.0.lcssa.i.i.i10, %i.dn
  br i1 %i.do, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.q
  %i.dp = shl nuw nsw i64 %.0.lcssa.i.i.i10, 1
  %i.dq = or disjoint i64 %i.dp, 1                ; 2 uses
  %i.dr = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0.lcssa.i.i.i10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ds, ptr noundef nonnull align 4 dereferenceable(12) %i.dr, i64 12, i1 false), !tbaa.struct !289
  br label %.lr.ph.i.i.i.i12

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i9
  %.not.i.i11 = icmp eq i64 %.0.lcssa.i.i.i10, 0
  br i1 %.not.i.i11, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i", label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %bb.r, %.thread.i.i
  %.1.i2.i.i = phi i64 [ %i.dq, %.thread.i.i ], [ %.0.lcssa.i.i.i10, %bb.r ]
  %.sroa.0.sroa.2.0.extract.shift.i.i.i.i13 = lshr i64 %.sroa.04.0.copyload.i.i6, 32
  %.sroa.0.sroa.2.0.extract.trunc.i.i.i.i14 = trunc nuw i64 %.sroa.0.sroa.2.0.extract.shift.i.i.i.i13 to i32
  %i.dt = bitcast i32 %.sroa.0.sroa.2.0.extract.trunc.i.i.i.i14 to float
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i12
  %.0135.i.i.i.i15 = phi i64 [ %.1.i2.i.i, %.lr.ph.i.i.i.i12 ], [ %.0610.i.i.i.i17, %bb.t ] ; 3 uses
  %.06.in.i.i.i.i16 = add nsw i64 %.0135.i.i.i.i15, -1
  %.0610.i.i.i.i17 = lshr i64 %.06.in.i.i.i.i16, 1 ; 3 uses
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0610.i.i.i.i17 ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 4
  %.val.i.i.i.i18 = load float, ptr %i.dv, align 4, !tbaa !290
  %i.dw = fcmp ogt float %.val.i.i.i.i18, %i.dt
  br i1 %i.dw, label %bb.t, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i"

bb.t:                                             ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.0135.i.i.i.i15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dx, ptr noundef nonnull align 4 dereferenceable(12) %i.du, i64 12, i1 false), !tbaa.struct !289
  %.not3.i.i = icmp eq i64 %.0610.i.i.i.i17, 0
  br i1 %.not3.i.i, label %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i", label %bb.s, !llvm.loop !746

"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i": ; preds = %bb.t, %bb.s, %bb.r
  %.013.lcssa.i.i.i.i19 = phi i64 [ 0, %bb.r ], [ 0, %bb.t ], [ %.0135.i.i.i.i15, %bb.s ]
  %i.dy = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i19 ; 2 uses
  store i64 %.sroa.04.0.copyload.i.i6, ptr %i.dy, align 4
  %.sroa.3.0..sroa_idx.i.i.i.i20 = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store float %.sroa.4.0.copyload.i.i8, ptr %.sroa.3.0..sroa_idx.i.i.i.i20, align 4, !tbaa !86
  %i.dz = icmp sgt i64 %i.cu, 12
  br i1 %i.dz, label %.lr.ph.i5, label %"_ZSt11__sort_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit", !llvm.loop !749

"_ZSt11__sort_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_RT0_.exit": ; preds = %"_ZSt10__pop_heapIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_RT0_.exit.i", %"_ZSt13__heap_selectIP16llama_token_dataN9__gnu_cxx5__ops15_Iter_comp_iterIZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorIS0_SaIS0_EEE3$_0EEEvT_SE_SE_T0_.exit"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #26

declare ptr @ggml_top_k(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL24llama_sampler_top_p_namePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN21llama_sampler_backend8get_nameEv(ptr noundef nonnull align 8 dereferenceable(66) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL25llama_sampler_top_p_applyP13llama_samplerP22llama_token_data_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !139
  %i.e = fcmp ult float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !93   ; 13 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 294, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.65) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !92     ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !290 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !95, !range !78, !noundef !79 ; 2 uses
  %.not55.i = icmp eq i8 %i.l, 0
  %2 = icmp ne i64 %i.g, 1
  %or.cond.i = and i1 %2, %.not55.i
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %.lr.ph38.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.m = add i64 %i.g, -1                         ; 3 uses
  %xtraiter = and i64 %i.m, 1
  %i.n = icmp eq i64 %i.g, 2
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02735.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %.03234.i = phi float [ %i.j, %.lr.ph.i.preheader.new ], [ %.sroa.speculated.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.02735.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !86 ; 2 uses
  %i.r = fcmp olt float %.03234.i, %i.q
  %.sroa.speculated.i = select i1 %i.r, float %i.q, float %.03234.i ; 2 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.02735.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load float, ptr %i.t, align 4, !tbaa !86 ; 2 uses
  %i.v = fcmp olt float %.sroa.speculated.i, %i.u
  %.sroa.speculated.i.1 = select i1 %i.v, float %i.u, float %.sroa.speculated.i ; 3 uses
  %i.w = add nuw i64 %.02735.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph38.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

.lr.ph38.preheader.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph38.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.02735.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.w, %.lr.ph38.preheader.i.loopexit.unr-lcssa ]
  %.03234.i.epil.init = phi float [ %i.j, %.lr.ph.i.preheader ], [ %.sroa.speculated.i.1, %.lr.ph38.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.02735.i.epil.init
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !86 ; 2 uses
  %i.aa = fcmp olt float %.03234.i.epil.init, %i.z
  %.sroa.speculated.i.epil = select i1 %i.aa, float %i.z, float %.03234.i.epil.init
  br label %.lr.ph38.preheader.i

.lr.ph38.preheader.i:                             ; preds = %.lr.ph.i.epil.preheader, %.lr.ph38.preheader.i.loopexit.unr-lcssa, %bb.d
  %.150.i = phi float [ %i.j, %bb.d ], [ %.sroa.speculated.i.1, %.lr.ph38.preheader.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil.preheader ]
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph38.i, %.lr.ph38.preheader.i
  %.02837.i = phi i64 [ %i.ai, %.lr.ph38.i ], [ 0, %.lr.ph38.preheader.i ] ; 2 uses
  %.02936.i = phi float [ %i.ah, %.lr.ph38.i ], [ 0.000000e+00, %.lr.ph38.preheader.i ]
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.02837.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !290
  %i.ae = fsub float %i.ad, %.150.i
  %i.af = tail call float @expf(float noundef %i.ae) #40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store float %i.af, ptr %i.ag, align 4, !tbaa !292
  %i.ah = fadd float %.02936.i, %i.af             ; 3 uses
  %i.ai = add nuw i64 %.02837.i, 1                ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.ai, %i.g
  br i1 %exitcond45.not.i, label %.lr.ph42.i.preheader, label %.lr.ph38.i, !llvm.loop !10

.lr.ph42.i.preheader:                             ; preds = %.lr.ph38.i
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %.lr.ph42.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph42.i.preheader
  %i.aj = and i64 %i.g, 3                         ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = select i1 %i.ak, i64 4, i64 %i.aj
  %n.vec = sub i64 %i.g, %i.al                    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %index
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %index
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %index
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 20 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 44 ; 2 uses
  %i.au = load float, ptr %i.aq, align 4, !tbaa !292
  %i.av = load float, ptr %i.ar, align 4, !tbaa !292
  %i.aw = load float, ptr %i.as, align 4, !tbaa !292
  %i.ax = load float, ptr %i.at, align 4, !tbaa !292
  %i.ay = insertelement <4 x float> poison, float %i.au, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 1
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 2
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 3
  %i.bc = fdiv <4 x float> %i.bb, %broadcast.splat ; 4 uses
  %i.bd = extractelement <4 x float> %i.bc, i64 0
  store float %i.bd, ptr %i.aq, align 4, !tbaa !292
  %i.be = extractelement <4 x float> %i.bc, i64 1
  store float %i.be, ptr %i.ar, align 4, !tbaa !292
  %i.bf = extractelement <4 x float> %i.bc, i64 2
  store float %i.bf, ptr %i.as, align 4, !tbaa !292
  %i.bg = extractelement <4 x float> %i.bc, i64 3
  store float %i.bg, ptr %i.at, align 4, !tbaa !292
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %.lr.ph42.i.preheader76, label %vector.body, !llvm.loop !750

.lr.ph42.i.preheader76:                           ; preds = %vector.body, %.lr.ph42.i.preheader
  %.041.i.ph = phi i64 [ 0, %.lr.ph42.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader76, %.lr.ph42.i
  %.041.i = phi i64 [ %i.bm, %.lr.ph42.i ], [ %.041.i.ph, %.lr.ph42.i.preheader76 ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.041.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !292
  %i.bl = fdiv float %i.bk, %i.ah
  store float %i.bl, ptr %i.bj, align 4, !tbaa !292
  %i.bm = add nuw i64 %.041.i, 1                  ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.bm, %i.g
  br i1 %exitcond46.not.i, label %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit, label %.lr.ph42.i, !llvm.loop !751

_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit: ; preds = %.lr.ph42.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 5 uses
  %3 = trunc nuw i8 %i.l to i1                    ; 2 uses
  %i.bo = icmp ult i64 %i.g, 1025
  %or.cond.not = or i1 %i.bo, %3
  br i1 %or.cond.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit
  tail call fastcc void @_ZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorI16llama_token_dataSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 256, ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !83
  br label %bb.h

bb.f:                                             ; preds = %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit
  br i1 %3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = trunc i64 %i.g to i32
  tail call fastcc void @_ZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayi(ptr noundef nonnull %1, i32 noundef %i.bq)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.046 = phi i64 [ %i.g, %bb.f ], [ %i.g, %bb.g ], [ 256, %bb.e ]
  %.045 = phi ptr [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.bp, %bb.e ]
  %i.br = load i64, ptr %i.f, align 8, !tbaa !93  ; 3 uses
  %.not63 = icmp eq i64 %i.br, 0
  br i1 %.not63, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.m
  %i.bt = phi i64 [ %i.br, %.lr.ph ], [ %i.cg, %bb.m ] ; 3 uses
  %.060 = phi i64 [ 0, %.lr.ph ], [ %i.ch, %bb.m ] ; 4 uses
  %.04459 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bx, %bb.m ]
  %.158 = phi ptr [ %.045, %.lr.ph ], [ %.2, %bb.m ] ; 2 uses
  %.14757 = phi i64 [ %.046, %.lr.ph ], [ %.248, %bb.m ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %.158, i64 %.060
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !292
  %i.bx = fadd float %.04459, %i.bw               ; 2 uses
  %i.by = load float, ptr %i.c, align 4, !tbaa !139
  %i.bz = fcmp ult float %i.bx, %i.by
  br i1 %i.bz, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = add nuw i64 %.060, 1                    ; 2 uses
  %i.cb = load i64, ptr %i.bs, align 8, !tbaa !140
  %.not = icmp ult i64 %i.ca, %i.cb
  br i1 %.not, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = load i8, ptr %i.k, align 8, !tbaa !95, !range !78, !noundef !79
  %.not51 = icmp eq i8 %i.cc, 0
  %i.cd = add i64 %.14757, -1
  %4 = icmp eq i64 %.060, %i.cd
  %or.cond53.not = select i1 %.not51, i1 %4, i1 false
  br i1 %or.cond53.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ce = trunc i64 %i.bt to i32
  tail call fastcc void @_ZL35llama_token_data_array_partial_sortRK22llama_token_data_arrayiRSt6vectorI16llama_token_dataSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
  %i.cf = load ptr, ptr %i.bn, align 8, !tbaa !83
  %.pre = load i64, ptr %i.f, align 8, !tbaa !93
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cg = phi i64 [ %i.bt, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %.248 = phi i64 [ %.14757, %bb.k ], [ %i.bt, %bb.l ]
  %.2 = phi ptr [ %.158, %bb.k ], [ %i.cf, %bb.l ]
  %i.ch = add nuw i64 %.060, 1                    ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  br i1 %i.ci, label %bb.i, label %._crit_edge, !llvm.loop !752

._crit_edge:                                      ; preds = %bb.m, %bb.j
  %.043 = phi i64 [ %i.ca, %bb.j ], [ %i.br, %bb.m ] ; 5 uses
  %i.cj = load i8, ptr %i.k, align 8, !tbaa !95, !range !78, !noundef !79
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.r, label %bb.n

._crit_edge.thread:                               ; preds = %bb.h
  %i.cl = load i8, ptr %i.k, align 8, !tbaa !95, !range !78, !noundef !79
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.r, label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

bb.n:                                             ; preds = %._crit_edge
  %i.cn = load ptr, ptr %i.bn, align 8, !tbaa !83 ; 2 uses
  %i.co = load ptr, ptr %1, align 8, !tbaa !92    ; 2 uses
  %i.cp = icmp ugt i64 %.043, 1
  br i1 %i.cp, label %bb.o, label %bb.p, !prof !221

bb.o:                                             ; preds = %bb.n
  %.idx = mul nuw nsw i64 %.043, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.co, ptr align 4 %i.cn, i64 %.idx, i1 false)
  br label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

bb.p:                                             ; preds = %bb.n
  %i.cq = icmp eq i64 %.043, 1
  br i1 %i.cq, label %bb.q, label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.co, ptr noundef nonnull align 4 dereferenceable(12) %i.cn, i64 12, i1 false), !tbaa.struct !289
  br label %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit

_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit: ; preds = %._crit_edge.thread, %bb.o, %bb.p, %bb.q
  %.0436972 = phi i64 [ %.043, %bb.o ], [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %._crit_edge.thread ]
  store i8 1, ptr %i.k, align 8, !tbaa !95
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread, %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit, %._crit_edge
  %.04370 = phi i64 [ 0, %._crit_edge.thread ], [ %.0436972, %_ZSt4copyIP16llama_token_dataS1_ET0_T_S3_S2_.exit ], [ %.043, %._crit_edge ]
  store i64 %.04370, ptr %i.f, align 8, !tbaa !93
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZL25llama_sampler_top_p_clonePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !139 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.f = load i64, ptr %i.e, align 8, !tbaa !140
  %i.g = fcmp ult float %i.d, 1.000000e+00
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37, !inline_history !753 ; 2 uses
  store ptr @.str.15, ptr %i.h, align 8, !tbaa !135
  br label %llama_sampler_init_top_p.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #37, !inline_history !754 ; 6 uses
  invoke void @_ZN21llama_sampler_backendC2EPKc(ptr noundef nonnull align 8 dereferenceable(66) %i.i, ptr noundef nonnull @.str.16)
          to label %bb.d unwind label %bb.e, !inline_history !754

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  store float %i.d, ptr %i.j, align 4, !tbaa !139
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %i.f, ptr %i.k, align 8, !tbaa !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  br label %llama_sampler_init_top_p.exit

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 104) #39, !inline_history !754
  resume { ptr, i32 } %i.m

llama_sampler_init_top_p.exit:                    ; preds = %bb.b, %bb.d
  %_ZL21llama_sampler_top_p_i.sink.i = phi ptr [ @_ZL21llama_sampler_top_p_i, %bb.d ], [ @_ZL21llama_sampler_empty_i, %bb.b ]
  %.sink.i = phi ptr [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  %i.n = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37, !inline_history !754 ; 3 uses
  store ptr %_ZL21llama_sampler_top_p_i.sink.i, ptr %i.n, align 16, !tbaa !53
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.sink.i, ptr %i.o, align 8, !tbaa !54
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL24llama_sampler_top_p_freeP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #39
  br label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i

_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !87
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !113  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN19llama_sampler_top_pD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !87
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #39
  br label %_ZN19llama_sampler_top_pD2Ev.exit

_ZN19llama_sampler_top_pD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 104) #39
  br label %bb.d

bb.d:                                             ; preds = %_ZN19llama_sampler_top_pD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZL32llama_sampler_top_p_backend_initP13llama_samplerP24ggml_backend_buffer_typej(ptr noundef %0, ptr noundef %1, i32 %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.c = tail call fastcc noundef zeroext i1 @_ZL29llama_sampler_backend_supportP13llama_samplerP24ggml_backend_buffer_type(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !116, !range !78, !noundef !79
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %_ZN21llama_sampler_backend4initEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 552, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.48) #38
  unreachable

_ZN21llama_sampler_backend4initEb.exit:           ; preds = %bb.a
  %i.g = zext i1 %i.c to i8
  store i8 1, ptr %i.d, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 %i.g, ptr %i.h, align 1, !tbaa !117
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_data(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %3, align 8, !tbaa !285    ; 2 uses
  %i.d = tail call i64 @ggml_nelements(ptr noundef %i.c)
  %i.e = tail call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.c, i64 noundef %i.d) ; 4 uses
  %i.f = tail call ptr @ggml_argsort(ptr noundef %1, ptr noundef %i.e, i32 noundef 1) ; 4 uses
  %i.g = tail call ptr @ggml_set_name(ptr noundef %i.f, ptr noundef nonnull @.str.66) ; 0 uses
  %i.h = tail call i64 @ggml_nrows(ptr noundef %i.e)
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1638, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.77) #38
  unreachable

"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit": ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !111
  %i.l = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %i.e, i64 noundef 1, i64 noundef %i.k)
  %i.m = tail call noundef ptr @ggml_get_rows(ptr noundef %1, ptr noundef %i.l, ptr noundef %i.f) ; 3 uses
  %i.n = tail call ptr @ggml_set_name(ptr noundef %i.m, ptr noundef nonnull @.str.67) ; 0 uses
  %i.o = tail call i64 @ggml_nelements(ptr noundef %i.m)
  %i.p = tail call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.m, i64 noundef %i.o) ; 2 uses
  %i.q = tail call ptr @ggml_soft_max(ptr noundef %1, ptr noundef %i.p) ; 2 uses
  %i.r = tail call ptr @ggml_set_name(ptr noundef %i.q, ptr noundef nonnull @.str.68) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !286  ; 4 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit"
  %i.u = tail call i64 @ggml_nrows(ptr noundef nonnull %i.t)
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit63", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 1638, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.77) #38
  unreachable

"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit63": ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !111
  %i.y = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef nonnull %i.t, i64 noundef 1, i64 noundef %i.x)
  %i.z = tail call noundef ptr @ggml_get_rows(ptr noundef %1, ptr noundef %i.y, ptr noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit", %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit63"
  %storemerge = phi ptr [ %i.z, %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit63" ], [ %i.f, %"_ZZL33llama_sampler_top_p_backend_applyP13llama_samplerP12ggml_contextP11ggml_cgraphP18llama_sampler_dataENK3$_0clEP11ggml_tensorS9_.exit" ] ; 2 uses
  store ptr %storemerge, ptr %i.s, align 8, !tbaa !286
  %i.aa = tail call ptr @ggml_set_name(ptr noundef %storemerge, ptr noundef nonnull @.str.69) ; 0 uses
  %i.ab = tail call ptr @ggml_cumsum(ptr noundef %1, ptr noundef %i.q) ; 2 uses
  %i.ac = tail call ptr @ggml_set_name(ptr noundef %i.ab, ptr noundef nonnull @.str.70) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !139
  %i.af = tail call ptr @ggml_scale_bias(ptr noundef %1, ptr noundef %i.ab, float noundef -1.000000e+00, float noundef %i.ae) ; 2 uses
  %i.ag = tail call ptr @ggml_set_name(ptr noundef %i.af, ptr noundef nonnull @.str.71) ; 0 uses
  %i.ah = tail call ptr @ggml_step(ptr noundef %1, ptr noundef %i.af) ; 4 uses
  %i.ai = tail call ptr @ggml_set_name(ptr noundef %i.ah, ptr noundef nonnull @.str.72) ; 0 uses
  %i.aj = tail call ptr @ggml_sum(ptr noundef %1, ptr noundef %i.ah) ; 2 uses
  %i.ak = tail call ptr @ggml_set_name(ptr noundef %i.aj, ptr noundef nonnull @.str.73) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !111
  %i.an = add nsw i64 %i.am, -1
  %i.ao = sitofp i64 %i.an to float
  %i.ap = tail call ptr @ggml_clamp(ptr noundef %1, ptr noundef %i.aj, float noundef 0.000000e+00, float noundef %i.ao) ; 2 uses
  %i.aq = tail call ptr @ggml_scale_bias(ptr noundef %1, ptr noundef %i.ap, float noundef 0.000000e+00, float noundef 1.000000e+00) ; 2 uses
  %i.ar = tail call ptr @ggml_set_name(ptr noundef %i.aq, ptr noundef nonnull @.str.74) ; 0 uses
  %i.as = load i64, ptr %i.al, align 8, !tbaa !111
  %i.at = tail call ptr @ggml_reshape_2d(ptr noundef %1, ptr noundef %i.ah, i64 noundef 1, i64 noundef %i.as)
  %i.au = tail call ptr @ggml_cast(ptr noundef %1, ptr noundef %i.ap, i32 noundef 26)
  %i.av = tail call ptr @ggml_set_rows(ptr noundef %1, ptr noundef %i.at, ptr noundef %i.aq, ptr noundef %i.au)
  %i.aw = load i64, ptr %i.al, align 8, !tbaa !111
  %i.ax = tail call ptr @ggml_reshape_1d(ptr noundef %1, ptr noundef %i.av, i64 noundef %i.aw)
  %i.ay = tail call ptr @ggml_log(ptr noundef %1, ptr noundef %i.ax) ; 2 uses
  %i.az = tail call ptr @ggml_set_name(ptr noundef %i.ay, ptr noundef nonnull @.str.75) ; 0 uses
  %i.ba = tail call ptr @ggml_add(ptr noundef %1, ptr noundef %i.p, ptr noundef %i.ay) ; 2 uses
  store ptr %i.ba, ptr %3, align 8, !tbaa !285
  %i.bb = tail call ptr @ggml_set_name(ptr noundef %i.ba, ptr noundef nonnull @.str.76) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL32llama_sampler_backend_copy_stateI19llama_sampler_top_pEvPK13llama_samplerPS1_(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) #14 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !93   ; 4 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 294, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.65) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !95, !range !78, !noundef !79
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = trunc i64 %i.b to i32
  tail call fastcc void @_ZL43llama_token_data_array_partial_sort_inplaceP22llama_token_data_arrayi(ptr noundef nonnull %0, i32 noundef %i.f)
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.pre = phi i64 [ %.pre.pre, %bb.e ], [ %i.b, %bb.d ], [ %i.b, %bb.c ] ; 9 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !92     ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !290 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !95, !range !78, !noundef !79
  %.not55 = icmp eq i8 %i.k, 0
  %2 = icmp ugt i64 %.pre, 1
  %or.cond.not = select i1 %.not55, i1 %2, i1 false
  br i1 %or.cond.not, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.l = add i64 %.pre, -1                        ; 3 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i64 %.pre, 2
  br i1 %i.m, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02735 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 3 uses
  %.03234 = phi float [ %i.i, %.lr.ph.preheader.new ], [ %.sroa.speculated.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %.02735
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !86 ; 2 uses
  %i.q = fcmp olt float %.03234, %i.p
  %.sroa.speculated = select i1 %i.q, float %i.p, float %.03234 ; 2 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %.02735
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load float, ptr %i.s, align 4, !tbaa !86 ; 2 uses
  %i.u = fcmp olt float %.sroa.speculated, %i.t
  %.sroa.speculated.1 = select i1 %i.u, float %i.t, float %.sroa.speculated ; 3 uses
  %i.v = add nuw i64 %.02735, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph38.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

.loopexit:                                        ; preds = %bb.f
  %.not43 = icmp eq i64 %.pre, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader.loopexit.unr-lcssa:            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph38.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02735.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.v, %.lr.ph38.preheader.loopexit.unr-lcssa ]
  %.03234.epil.init = phi float [ %i.i, %.lr.ph.preheader ], [ %.sroa.speculated.1, %.lr.ph38.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod59 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %.02735.epil.init
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !86 ; 2 uses
  %i.z = fcmp olt float %.03234.epil.init, %i.y
  %.sroa.speculated.epil = select i1 %i.z, float %i.y, float %.03234.epil.init
  br label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.lr.ph.epil.preheader, %.lr.ph38.preheader.loopexit.unr-lcssa, %.loopexit
  %.150 = phi float [ %i.i, %.loopexit ], [ %.sroa.speculated.1, %.lr.ph38.preheader.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph.epil.preheader ]
  br label %.lr.ph38

.lr.ph42.preheader:                               ; preds = %.lr.ph38
  %min.iters.check = icmp ult i64 %.pre, 5
  br i1 %min.iters.check, label %.lr.ph42.preheader57, label %vector.ph

.lr.ph42.preheader57:                             ; preds = %vector.body, %.lr.ph42.preheader
  %.041.ph = phi i64 [ 0, %.lr.ph42.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph42

vector.ph:                                        ; preds = %.lr.ph42.preheader
  %i.aa = and i64 %.pre, 3                        ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = select i1 %i.ab, i64 4, i64 %i.aa
  %n.vec = sub i64 %.pre, %i.ac                   ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bf, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %index
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %index
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %index
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %index
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 20 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 44 ; 2 uses
  %i.al = load float, ptr %i.ah, align 4, !tbaa !292
  %i.am = load float, ptr %i.ai, align 4, !tbaa !292
  %i.an = load float, ptr %i.aj, align 4, !tbaa !292
  %i.ao = load float, ptr %i.ak, align 4, !tbaa !292
  %i.ap = insertelement <4 x float> poison, float %i.al, i64 0
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 1
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 3
  %i.at = fdiv <4 x float> %i.as, %broadcast.splat ; 4 uses
  %i.au = extractelement <4 x float> %i.at, i64 0
  store float %i.au, ptr %i.ah, align 4, !tbaa !292
  %i.av = extractelement <4 x float> %i.at, i64 1
  store float %i.av, ptr %i.ai, align 4, !tbaa !292
  %i.aw = extractelement <4 x float> %i.at, i64 2
  store float %i.aw, ptr %i.aj, align 4, !tbaa !292
  %i.ax = extractelement <4 x float> %i.at, i64 3
  store float %i.ax, ptr %i.ak, align 4, !tbaa !292
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %.lr.ph42.preheader57, label %vector.body, !llvm.loop !755

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38
  %.02837 = phi i64 [ %i.bg, %.lr.ph38 ], [ 0, %.lr.ph38.preheader ] ; 2 uses
  %.02936 = phi float [ %i.bf, %.lr.ph38 ], [ 0.000000e+00, %.lr.ph38.preheader ]
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %.02837 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !290
  %i.bc = fsub float %i.bb, %.150
  %i.bd = tail call float @expf(float noundef %i.bc) #40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store float %i.bd, ptr %i.be, align 4, !tbaa !292
  %i.bf = fadd float %.02936, %i.bd               ; 3 uses
  %i.bg = add nuw i64 %.02837, 1                  ; 2 uses
  %exitcond45.not = icmp eq i64 %i.bg, %.pre
  br i1 %exitcond45.not, label %.lr.ph42.preheader, label %.lr.ph38, !llvm.loop !10

._crit_edge:                                      ; preds = %.lr.ph42, %.loopexit
  ret void

.lr.ph42:                                         ; preds = %.lr.ph42.preheader57, %.lr.ph42
  %.041 = phi i64 [ %i.bl, %.lr.ph42 ], [ %.041.ph, %.lr.ph42.preheader57 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %.041
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !292
  %i.bk = fdiv float %i.bj, %i.bf
  store float %i.bk, ptr %i.bi, align 4, !tbaa !292
  %i.bl = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond46.not = icmp eq i64 %i.bl, %.pre
  br i1 %exitcond46.not, label %._crit_edge, label %.lr.ph42, !llvm.loop !756
}

declare ptr @ggml_argsort(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @ggml_set_rows(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @ggml_log(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @ggml_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i64 @ggml_nrows(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL24llama_sampler_min_p_namePK13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = tail call noundef ptr @_ZN21llama_sampler_backend8get_nameEv(ptr noundef nonnull align 8 dereferenceable(66) %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL25llama_sampler_min_p_applyP13llama_samplerP22llama_token_data_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !142 ; 2 uses
  %i.e = fcmp ugt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !93   ; 6 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZNSt6vectorI16llama_token_dataSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !95, !range !78, !noundef !79
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %xtraiter = and i64 %i.g, 1
  %i.l = icmp eq i64 %i.g, 1
  br i1 %i.l, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %i.g, -2
  br label %bb.d

.lr.ph.preheader.unr-lcssa:                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.unr-lcssa, %.preheader
  %.04283.epil.init = phi i64 [ 0, %.preheader ], [ %i.aa, %.lr.ph.preheader.unr-lcssa ]
  %.07182.epil.init = phi float [ f0xFF7FFFFF, %.preheader ], [ %.sroa.speculated.1, %.lr.ph.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %.04283.epil.init
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !86 ; 2 uses
  %i.p = fcmp olt float %.07182.epil.init, %i.o
  %.sroa.speculated.epil = select i1 %i.p, float %i.o, float %.07182.epil.init
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.unr-lcssa, %.epil.preheader
end_hunk_1
begin_hunk_2_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE16_M_allocate_nodeIJRKS7_EEEPS8_DpOT_:bb.a
  tail call void @__clang_call_terminate(ptr %i.ad) #41
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17llama_sampler_dryD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN11ring_bufferIiED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !200
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #39
  br label %_ZN11ring_bufferIiED2Ev.exit

_ZN11ring_bufferIiED2Ev.exit:                     ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !233  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN11ring_bufferIiED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i ], [ %i.j, %_ZN11ring_bufferIiED2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !214 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #39
  %.not.i.i.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i1, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN11ring_bufferIiED2Ev.exit
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !202
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !203
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !202  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.s = load i64, ptr %i.m, align 8, !tbaa !203
  %i.t = shl i64 %i.s, 3
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #39
  br label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !199  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !200
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !224 ; 2 uses
  %.not5.i.i.i.i2 = icmp eq ptr %i.ad, null
  br i1 %.not5.i.i.i.i2, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i4 = phi ptr [ %i.ae, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.ad, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  %i.ae = load ptr, ptr %.06.i.i.i.i4, align 8, !tbaa !214 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i4, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !199 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i3
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i4, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !200
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #39
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i3
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i4, i64 noundef 40) #39
  %.not.i.i.i.i5 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i5, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i3, !llvm.loop !7

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !208
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !209
  %i.ap = shl i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %i.ap, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.ab, align 8, !tbaa !208 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i
  %i.at = load i64, ptr %i.an, align 8, !tbaa !209
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #39
  br label %_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit

_ZNSt18unordered_multimapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_ZL29llama_sampler_adaptive_p_namePK13llama_sampler(ptr nofree readnone captures(none) %0) #14 {
bb.a:
  ret ptr @.str.293
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL31llama_sampler_adaptive_p_acceptP13llama_sampleri(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5048 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !245
  %i.e = icmp eq i32 %i.d, %1
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, -1
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 3804, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.294) #38
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 5052
  %i.g = load i32, ptr %i.f, align 4, !tbaa !246  ; 2 uses
  %.not15 = icmp eq i32 %i.g, -1
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 3805, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.295) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 5024
  %i.i = sext i32 %i.g to i64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !297
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load float, ptr %i.k, align 4, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !242
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 5016 ; 2 uses
  %i.p = load <2 x float>, ptr %i.o, align 8, !tbaa !86
  %i.q = insertelement <2 x float> poison, float %i.n, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.l, i64 0
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.p, <2 x float> %i.s)
  store <2 x float> %i.t, ptr %i.o, align 8, !tbaa !86
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  store i32 -1, ptr %i.c, align 8, !tbaa !245
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 5052
  store i32 -1, ptr %i.u, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30llama_sampler_adaptive_p_applyP13llama_samplerP22llama_token_data_array(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !93   ; 17 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 294, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.65) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !92     ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !290 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !95, !range !78, !noundef !79
  %.not55.i = icmp eq i8 %i.i, 0
  %2 = icmp ne i64 %i.d, 1
  %or.cond.i = and i1 %2, %.not55.i
  br i1 %or.cond.i, label %.lr.ph.i.preheader, label %.lr.ph38.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.j = add i64 %i.d, -1                         ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %i.k = icmp eq i64 %i.d, 2
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.j, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.02735.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %.03234.i = phi float [ %i.g, %.lr.ph.i.preheader.new ], [ %.sroa.speculated.i.1, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.02735.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !86 ; 2 uses
  %i.o = fcmp olt float %.03234.i, %i.n
  %.sroa.speculated.i = select i1 %i.o, float %i.n, float %.03234.i ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.02735.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !86 ; 2 uses
  %i.s = fcmp olt float %.sroa.speculated.i, %i.r
  %.sroa.speculated.i.1 = select i1 %i.s, float %i.r, float %.sroa.speculated.i ; 3 uses
  %i.t = add nuw i64 %.02735.i, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph38.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !9

.lr.ph38.preheader.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph38.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph38.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.02735.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.t, %.lr.ph38.preheader.i.loopexit.unr-lcssa ]
  %.03234.i.epil.init = phi float [ %i.g, %.lr.ph.i.preheader ], [ %.sroa.speculated.i.1, %.lr.ph38.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod118 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.02735.i.epil.init
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !86 ; 2 uses
  %i.x = fcmp olt float %.03234.i.epil.init, %i.w
  %.sroa.speculated.i.epil = select i1 %i.x, float %i.w, float %.03234.i.epil.init
  br label %.lr.ph38.preheader.i

.lr.ph38.preheader.i:                             ; preds = %.lr.ph.i.epil.preheader, %.lr.ph38.preheader.i.loopexit.unr-lcssa, %bb.c
  %.150.i = phi float [ %i.g, %bb.c ], [ %.sroa.speculated.i.1, %.lr.ph38.preheader.i.loopexit.unr-lcssa ], [ %.sroa.speculated.i.epil, %.lr.ph.i.epil.preheader ]
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph38.i, %.lr.ph38.preheader.i
  %.02837.i = phi i64 [ %i.af, %.lr.ph38.i ], [ 0, %.lr.ph38.preheader.i ] ; 2 uses
  %.02936.i = phi float [ %i.ae, %.lr.ph38.i ], [ 0.000000e+00, %.lr.ph38.preheader.i ]
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.02837.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !290
  %i.ab = fsub float %i.aa, %.150.i
  %i.ac = tail call float @expf(float noundef %i.ab) #40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store float %i.ac, ptr %i.ad, align 4, !tbaa !292
  %i.ae = fadd float %.02936.i, %i.ac             ; 3 uses
  %i.af = add nuw i64 %.02837.i, 1                ; 2 uses
  %exitcond45.not.i = icmp eq i64 %i.af, %i.d
  br i1 %exitcond45.not.i, label %.lr.ph42.i.preheader, label %.lr.ph38.i, !llvm.loop !10

.lr.ph42.i.preheader:                             ; preds = %.lr.ph38.i
  %min.iters.check = icmp ult i64 %i.d, 5
  br i1 %min.iters.check, label %.lr.ph42.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph42.i.preheader
  %i.ag = and i64 %i.d, 3                         ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %i.ah, i64 4, i64 %i.ag
  %n.vec = sub i64 %i.d, %i.ai                    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %index
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %index
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %index
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 20 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 44 ; 2 uses
  %i.ar = load float, ptr %i.an, align 4, !tbaa !292
  %i.as = load float, ptr %i.ao, align 4, !tbaa !292
  %i.at = load float, ptr %i.ap, align 4, !tbaa !292
  %i.au = load float, ptr %i.aq, align 4, !tbaa !292
  %i.av = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 1
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 2
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 3
  %i.az = fdiv <4 x float> %i.ay, %broadcast.splat ; 4 uses
  %i.ba = extractelement <4 x float> %i.az, i64 0
  store float %i.ba, ptr %i.an, align 4, !tbaa !292
  %i.bb = extractelement <4 x float> %i.az, i64 1
  store float %i.bb, ptr %i.ao, align 4, !tbaa !292
  %i.bc = extractelement <4 x float> %i.az, i64 2
  store float %i.bc, ptr %i.ap, align 4, !tbaa !292
  %i.bd = extractelement <4 x float> %i.az, i64 3
  store float %i.bd, ptr %i.aq, align 4, !tbaa !292
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %.lr.ph42.i.preheader115, label %vector.body, !llvm.loop !1304

.lr.ph42.i.preheader115:                          ; preds = %vector.body, %.lr.ph42.i.preheader
  %.041.i.ph = phi i64 [ 0, %.lr.ph42.i.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader115, %.lr.ph42.i
  %.041.i = phi i64 [ %i.bj, %.lr.ph42.i ], [ %.041.i.ph, %.lr.ph42.i.preheader115 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.041.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !292
  %i.bi = fdiv float %i.bh, %i.ae
  store float %i.bi, ptr %i.bg, align 4, !tbaa !292
  %i.bj = add nuw i64 %.041.i, 1                  ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.bj, %i.d
  br i1 %exitcond46.not.i, label %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit, label %.lr.ph42.i, !llvm.loop !1305

_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit: ; preds = %.lr.ph42.i
  %i.bk = load float, ptr %i.b, align 8, !tbaa !241
  %i.bl = fcmp olt float %i.bk, 0.000000e+00
  br i1 %i.bl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bn = tail call fastcc noundef i32 @_ZL17llama_sample_distP22llama_token_data_arrayRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE(ptr nonnull %i.e, i64 %i.d, ptr noundef nonnull align 8 dereferenceable(5000) %i.bm)
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !94
  br label %bb.m

bb.e:                                             ; preds = %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 5024 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 5032 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !636 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !297 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 2                 ; 3 uses
  %i.by = icmp ugt i64 %i.d, %i.bx
  br i1 %i.by, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = icmp ult i64 %i.d, %i.bx
  br i1 %i.bz, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %i.bs, %i.ca
  br i1 %.not.i.i, label %.lr.ph, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.g
  store ptr %i.ca, ptr %i.br, align 8, !tbaa !636
  br label %.lr.ph

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.e
  %i.cb = sub nuw i64 %i.d, %i.bx
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.cb)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !93  ; 2 uses
  %.not = icmp eq i64 %.pre, 0
  br i1 %.not, label %.cont, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %bb.g, %bb.f, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.cc = phi i64 [ %.pre, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %i.d, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ] ; 10 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !92    ; 15 uses
  %i.ce = load ptr, ptr %i.bq, align 8, !tbaa !297 ; 8 uses
  %min.iters.check95 = icmp ult i64 %i.cc, 17
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.memcheck

scalar.ph94.preheader:                            ; preds = %vector.body98, %vector.memcheck, %.lr.ph
  %.04375.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec97, %vector.body98 ] ; 4 uses
  %i.cf = sub i64 %i.cc, %.04375.ph
  %xtraiter119 = and i64 %i.cf, 3                 ; 2 uses
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol

scalar.ph94.prol:                                 ; preds = %scalar.ph94.preheader, %scalar.ph94.prol
  %.04375.prol = phi i64 [ %i.ck, %scalar.ph94.prol ], [ %.04375.ph, %scalar.ph94.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph94.prol ], [ 0, %scalar.ph94.preheader ]
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %.04375.prol
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !292
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.04375.prol
  store float %i.ci, ptr %i.cj, align 4, !tbaa !86
  %i.ck = add nuw i64 %.04375.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter119
  br i1 %prol.iter.cmp.not, label %scalar.ph94.prol.loopexit, label %scalar.ph94.prol, !llvm.loop !1306

scalar.ph94.prol.loopexit:                        ; preds = %scalar.ph94.prol, %scalar.ph94.preheader
  %.04375.unr = phi i64 [ %.04375.ph, %scalar.ph94.preheader ], [ %i.ck, %scalar.ph94.prol ]
  %i.cl = sub i64 %.04375.ph, %i.cc
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %.cont, label %scalar.ph94

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cn = shl i64 %i.cc, 2
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.cn
  %i.cp = getelementptr nuw i8, ptr %i.cd, i64 8
  %i.cq = mul i64 %i.cc, 12
  %i.cr = getelementptr i8, ptr %i.cd, i64 %i.cq
  %bound0 = icmp ult ptr %i.ce, %i.cr
  %bound1 = icmp ult ptr %i.cp, %i.co
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph94.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %vector.memcheck
  %i.cs = and i64 %i.cc, 7                        ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 0
  %i.cu = select i1 %i.ct, i64 8, i64 %i.cs
  %n.vec97 = sub i64 %i.cc, %i.cu                 ; 2 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph96
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next100, %vector.body98 ] ; 10 uses
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %index99
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %index99
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %index99
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %index99
  %i.cz = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %index99
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %index99
  %i.db = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %index99
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %index99
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 68
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 92
  %i.dl = load float, ptr %i.dd, align 4, !tbaa !292, !alias.scope !1315
  %i.dm = load float, ptr %i.de, align 4, !tbaa !292, !alias.scope !1315
  %i.dn = load float, ptr %i.df, align 4, !tbaa !292, !alias.scope !1315
  %i.do = load float, ptr %i.dg, align 4, !tbaa !292, !alias.scope !1315
  %i.dp = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 1
  %i.dr = insertelement <4 x float> %i.dq, float %i.dn, i64 2
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 3
  %i.dt = load float, ptr %i.dh, align 4, !tbaa !292, !alias.scope !1315
  %i.du = load float, ptr %i.di, align 4, !tbaa !292, !alias.scope !1315
  %i.dv = load float, ptr %i.dj, align 4, !tbaa !292, !alias.scope !1315
  %i.dw = load float, ptr %i.dk, align 4, !tbaa !292, !alias.scope !1315
  %i.dx = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.du, i64 1
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 2
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 3
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index99 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x float> %i.ds, ptr %i.eb, align 4, !tbaa !86, !alias.scope !1316, !noalias !1315
  store <4 x float> %i.ea, ptr %i.ec, align 4, !tbaa !86, !alias.scope !1316, !noalias !1315
  %index.next100 = add nuw i64 %index99, 8        ; 2 uses
  %i.ed = icmp eq i64 %index.next100, %n.vec97
  br i1 %i.ed, label %scalar.ph94.preheader, label %vector.body98, !llvm.loop !1310

.cont:                                            ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %.not89 = phi i1 [ true, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ false, %scalar.ph94 ], [ false, %scalar.ph94.prol.loopexit ]
  %i.ee = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE6resizeEm.exit ], [ %i.cc, %scalar.ph94 ], [ %i.cc, %scalar.ph94.prol.loopexit ] ; 10 uses
  %i.ef = load float, ptr %i.b, align 8, !tbaa !86 ; 3 uses
  %i.eg = fcmp olt float %i.ef, 0.000000e+00
  %i.eh = fcmp ogt float %i.ef, 1.000000e+00
  %.mux = select i1 %i.eg, float 0.000000e+00, float %i.ef
  %i.ei = select i1 %i.eh, float 1.000000e+00, float %.mux ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 5020
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !1317 ; 2 uses
  %i.el = fcmp oeq float %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.i, label %bb.h

scalar.ph94:                                      ; preds = %scalar.ph94.prol.loopexit, %scalar.ph94
  %.04375 = phi i64 [ %i.ff, %scalar.ph94 ], [ %.04375.unr, %scalar.ph94.prol.loopexit ] ; 6 uses
  %i.em = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %.04375
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load float, ptr %i.en, align 4, !tbaa !292
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.04375
  store float %i.eo, ptr %i.ep, align 4, !tbaa !86
  %i.eq = add nuw i64 %.04375, 1                  ; 2 uses
  %i.er = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load float, ptr %i.es, align 4, !tbaa !292
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.eq
  store float %i.et, ptr %i.eu, align 4, !tbaa !86
  %i.ev = add nuw i64 %.04375, 2                  ; 2 uses
  %i.ew = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !292
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ev
  store float %i.ey, ptr %i.ez, align 4, !tbaa !86
  %i.fa = add nuw i64 %.04375, 3                  ; 2 uses
  %i.fb = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !292
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.fa
  store float %i.fd, ptr %i.fe, align 4, !tbaa !86
  %i.ff = add nuw i64 %.04375, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ff, %i.cc
  br i1 %exitcond.not.3, label %.cont, label %scalar.ph94, !llvm.loop !1311

bb.h:                                             ; preds = %.cont
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 5016
  %i.fh = load float, ptr %i.fg, align 8, !tbaa !1318
  %i.fi = fneg float %i.fh
  %i.fj = fdiv float %i.fi, %i.ek
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.ei, float 2.000000e+00, float %i.fj)
  br label %bb.i

bb.i:                                             ; preds = %.cont, %bb.h
  %i.fl = phi float [ %i.fk, %bb.h ], [ %i.ei, %.cont ] ; 2 uses
  %i.fm = fcmp olt float %i.fl, 0.000000e+00
  %i.fn = select i1 %i.fm, float 0.000000e+00, float %i.fl ; 2 uses
  %i.fo = fcmp ogt float %i.fn, 1.000000e+00
  %.sroa.speculated = select i1 %i.fo, float 1.000000e+00, float %i.fn
  br i1 %.not89, label %._crit_edge.thread, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.i
  %i.fp = load ptr, ptr %1, align 8, !tbaa !92
  br label %bb.j

._crit_edge.thread:                               ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 294, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.65) #38
  unreachable

._crit_edge:                                      ; preds = %bb.l
  %i.fq = load ptr, ptr %1, align 8, !tbaa !92    ; 11 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !290 ; 3 uses
  %i.ft = load i8, ptr %i.h, align 8, !tbaa !95, !range !78, !noundef !79
  %.not55.i51 = icmp eq i8 %i.ft, 0
  %3 = icmp ne i64 %i.ee, 1
  %or.cond.i52 = and i1 %3, %.not55.i51
  br i1 %or.cond.i52, label %.lr.ph.i52.preheader, label %.lr.ph38.preheader.i57

.lr.ph.i52.preheader:                             ; preds = %._crit_edge
  %i.fu = add i64 %i.ee, -1                       ; 3 uses
  %xtraiter121 = and i64 %i.fu, 1
  %i.fv = icmp eq i64 %i.ee, 2
  br i1 %i.fv, label %.lr.ph.i52.epil.preheader, label %.lr.ph.i52.preheader.new

.lr.ph.i52.preheader.new:                         ; preds = %.lr.ph.i52.preheader
  %unroll_iter125 = and i64 %i.fu, -2
  br label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %.lr.ph.i52, %.lr.ph.i52.preheader.new
  %.02735.i53 = phi i64 [ 1, %.lr.ph.i52.preheader.new ], [ %i.ge, %.lr.ph.i52 ] ; 3 uses
  %.03234.i54 = phi float [ %i.fs, %.lr.ph.i52.preheader.new ], [ %.sroa.speculated.i55.1, %.lr.ph.i52 ] ; 2 uses
  %niter126 = phi i64 [ 0, %.lr.ph.i52.preheader.new ], [ %niter126.next.1, %.lr.ph.i52 ]
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %.02735.i53
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !86 ; 2 uses
  %i.fz = fcmp olt float %.03234.i54, %i.fy
  %.sroa.speculated.i55 = select i1 %i.fz, float %i.fy, float %.03234.i54 ; 2 uses
  %i.ga = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %.02735.i53
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !86 ; 2 uses
  %i.gd = fcmp olt float %.sroa.speculated.i55, %i.gc
  %.sroa.speculated.i55.1 = select i1 %i.gd, float %i.gc, float %.sroa.speculated.i55 ; 3 uses
  %i.ge = add nuw i64 %.02735.i53, 2              ; 2 uses
  %niter126.next.1 = add nuw i64 %niter126, 2     ; 2 uses
  %niter126.ncmp.1 = icmp eq i64 %niter126.next.1, %unroll_iter125
  br i1 %niter126.ncmp.1, label %.lr.ph38.preheader.i57.loopexit.unr-lcssa, label %.lr.ph.i52, !llvm.loop !9

.lr.ph38.preheader.i57.loopexit.unr-lcssa:        ; preds = %.lr.ph.i52
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.lr.ph38.preheader.i57, label %.lr.ph.i52.epil.preheader

.lr.ph.i52.epil.preheader:                        ; preds = %.lr.ph38.preheader.i57.loopexit.unr-lcssa, %.lr.ph.i52.preheader
  %.02735.i53.epil.init = phi i64 [ 1, %.lr.ph.i52.preheader ], [ %i.ge, %.lr.ph38.preheader.i57.loopexit.unr-lcssa ]
  %.03234.i54.epil.init = phi float [ %i.fs, %.lr.ph.i52.preheader ], [ %.sroa.speculated.i55.1, %.lr.ph38.preheader.i57.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod124 = trunc i64 %i.fu to i1
  tail call void @llvm.assume(i1 %lcmp.mod124)
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %.02735.i53.epil.init
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !86 ; 2 uses
  %i.gi = fcmp olt float %.03234.i54.epil.init, %i.gh
  %.sroa.speculated.i55.epil = select i1 %i.gi, float %i.gh, float %.03234.i54.epil.init
  br label %.lr.ph38.preheader.i57

.lr.ph38.preheader.i57:                           ; preds = %.lr.ph.i52.epil.preheader, %.lr.ph38.preheader.i57.loopexit.unr-lcssa, %._crit_edge
  %.150.i58 = phi float [ %i.fs, %._crit_edge ], [ %.sroa.speculated.i55.1, %.lr.ph38.preheader.i57.loopexit.unr-lcssa ], [ %.sroa.speculated.i55.epil, %.lr.ph.i52.epil.preheader ]
  br label %.lr.ph38.i59

.lr.ph38.i59:                                     ; preds = %.lr.ph38.i59, %.lr.ph38.preheader.i57
  %.02837.i60 = phi i64 [ %i.gq, %.lr.ph38.i59 ], [ 0, %.lr.ph38.preheader.i57 ] ; 2 uses
  %.02936.i61 = phi float [ %i.gp, %.lr.ph38.i59 ], [ 0.000000e+00, %.lr.ph38.preheader.i57 ]
  %i.gj = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %.02837.i60 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !290
  %i.gm = fsub float %i.gl, %.150.i58
  %i.gn = tail call float @expf(float noundef %i.gm) #40 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store float %i.gn, ptr %i.go, align 4, !tbaa !292
  %i.gp = fadd float %.02936.i61, %i.gn           ; 3 uses
  %i.gq = add nuw i64 %.02837.i60, 1              ; 2 uses
  %exitcond45.not.i62 = icmp eq i64 %i.gq, %i.ee
  br i1 %exitcond45.not.i62, label %.lr.ph42.i64.preheader, label %.lr.ph38.i59, !llvm.loop !10

.lr.ph42.i64.preheader:                           ; preds = %.lr.ph38.i59
  %min.iters.check104 = icmp ult i64 %i.ee, 5
  br i1 %min.iters.check104, label %.lr.ph42.i64.preheader114, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph42.i64.preheader
  %i.gr = and i64 %i.ee, 3                        ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0
  %i.gt = select i1 %i.gs, i64 4, i64 %i.gr
  %n.vec106 = sub i64 %i.ee, %i.gt                ; 2 uses
  %broadcast.splatinsert107 = insertelement <4 x float> poison, float %i.gp, i64 0
  %broadcast.splat108 = shufflevector <4 x float> %broadcast.splatinsert107, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next111, %vector.body109 ] ; 5 uses
  %i.gu = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %index110
  %i.gv = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %index110
  %i.gw = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %index110
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %index110
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 20 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 44 ; 2 uses
  %i.hc = load float, ptr %i.gy, align 4, !tbaa !292
  %i.hd = load float, ptr %i.gz, align 4, !tbaa !292
  %i.he = load float, ptr %i.ha, align 4, !tbaa !292
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !292
  %i.hg = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.hh = insertelement <4 x float> %i.hg, float %i.hd, i64 1
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 2
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 3
  %i.hk = fdiv <4 x float> %i.hj, %broadcast.splat108 ; 4 uses
  %i.hl = extractelement <4 x float> %i.hk, i64 0
  store float %i.hl, ptr %i.gy, align 4, !tbaa !292
  %i.hm = extractelement <4 x float> %i.hk, i64 1
  store float %i.hm, ptr %i.gz, align 4, !tbaa !292
  %i.hn = extractelement <4 x float> %i.hk, i64 2
  store float %i.hn, ptr %i.ha, align 4, !tbaa !292
  %i.ho = extractelement <4 x float> %i.hk, i64 3
  store float %i.ho, ptr %i.hb, align 4, !tbaa !292
  %index.next111 = add nuw i64 %index110, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next111, %n.vec106
  br i1 %i.hp, label %.lr.ph42.i64.preheader114, label %vector.body109, !llvm.loop !1312

.lr.ph42.i64.preheader114:                        ; preds = %vector.body109, %.lr.ph42.i64.preheader
  %.041.i65.ph = phi i64 [ 0, %.lr.ph42.i64.preheader ], [ %n.vec106, %vector.body109 ]
  br label %.lr.ph42.i64

.lr.ph42.i64:                                     ; preds = %.lr.ph42.i64.preheader114, %.lr.ph42.i64
  %.041.i65 = phi i64 [ %i.hu, %.lr.ph42.i64 ], [ %.041.i65.ph, %.lr.ph42.i64.preheader114 ] ; 2 uses
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %i.fq, i64 %.041.i65
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !292
  %i.ht = fdiv float %i.hs, %i.gp
  store float %i.ht, ptr %i.hr, align 4, !tbaa !292
  %i.hu = add nuw i64 %.041.i65, 1                ; 2 uses
  %exitcond46.not.i66 = icmp eq i64 %i.hu, %i.ee
  br i1 %exitcond46.not.i66, label %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit69, label %.lr.ph42.i64, !llvm.loop !1313

_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit69: ; preds = %.lr.ph42.i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hw = tail call fastcc noundef i32 @_ZL17llama_sample_distP22llama_token_data_arrayRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE(ptr nonnull %i.fq, i64 %i.ee, ptr noundef nonnull align 8 dereferenceable(5000) %i.hv) ; 2 uses
  %i.hx = sext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.hx, ptr %i.hy, align 8, !tbaa !94
  %i.hz = load ptr, ptr %1, align 8, !tbaa !92
  %i.ia = getelementptr inbounds [12 x i8], ptr %i.hz, i64 %i.hx
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !98
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 5048
  store i32 %i.ib, ptr %i.ic, align 8, !tbaa !245
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 5052
  store i32 %i.hw, ptr %i.id, align 4, !tbaa !246
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph77, %bb.l
  %.076 = phi i64 [ 0, %.lr.ph77 ], [ %i.is, %bb.l ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [12 x i8], ptr %i.fp, i64 %.076 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 4 ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !290
  %i.ih = fcmp oeq float %i.ig, -inf
  br i1 %i.ih, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !292
  %i.ik = fsub float %i.ij, %.sroa.speculated
  %i.il = fmul float %i.ik, f0x40555555
  %i.im = tail call noundef float @llvm.fabs.f32(float %i.il) ; 3 uses
  %i.in = fmul float %i.im, 1.000000e+01
  %i.io = fmul float %i.im, %i.in
  %i.ip = fadd float %i.im, 1.000000e+00
  %i.iq = fdiv float %i.io, %i.ip
  %i.ir = fsub float 5.000000e+00, %i.iq
  store float %i.ir, ptr %i.if, align 4, !tbaa !290
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.is = add nuw i64 %.076, 1                    ; 2 uses
  %exitcond80.not = icmp eq i64 %i.is, %i.ee
  br i1 %exitcond80.not, label %._crit_edge, label %bb.j, !llvm.loop !1314

bb.m:                                             ; preds = %_ZL26llama_sampler_softmax_implP22llama_token_data_arrayb.exit69, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL30llama_sampler_adaptive_p_resetP13llama_sampler(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 9 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !241
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !242
  %i.f = fsub float 1.000000e+00, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 5016
  %i.h = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.c, i64 0
  %i.i = insertelement <2 x float> poison, float %i.f, i64 0
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.k = fdiv <2 x float> %i.h, %i.j
  store <2 x float> %i.k, ptr %i.g, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 5048
  store i32 -1, ptr %i.l, align 8, !tbaa !245
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 5052
  store i32 -1, ptr %i.m, align 4, !tbaa !246
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !243
  %i.p = tail call fastcc noundef i32 @_ZL12get_rng_seedj(i32 noundef %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.p, ptr %i.q, align 4, !tbaa !244
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.s = zext i32 %i.p to i64                     ; 2 uses
  store i64 %i.s, ptr %i.r, align 8, !tbaa !111
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
end_hunk_2
