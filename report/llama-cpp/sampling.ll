Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/sampling?download=true
inline.NumInlined: 2328
inline.NumDeleted: 1054
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0
@.str.3 = private unnamed_addr constant [31 x i8] c"penalty_present must be finite\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%llguidance\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/llama-cpp/llama.cpp/common/sampling.cpp\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"llguidance (cmake -DLLAMA_LLGUIDANCE=ON) is not enabled\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"GGML_ASSERT(%s) failed\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"false && \22unknown trigger type\22\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"failed to parse grammar\00", align 1
@_ZTISt13runtime_error = external constant ptr
@.str.15 = private unnamed_addr constant [17 x i8] c"vocab != nullptr\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"%s: prefill token: %d = %s\0A\00", align 1
@__func__._Z19common_sampler_initPK11llama_modelR22common_params_sampling = private unnamed_addr constant [20 x i8] c"common_sampler_init\00", align 1
@_ZTISt9exception = external constant ptr
@.str.17 = private unnamed_addr constant [41 x i8] c"%s: grammar accepted prefill token (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [81 x i8] c"%s: error initializing grammar sampler for grammar:\0A%s\0A\0AGeneration prompt:\0A'%s'\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"%s: reasoning-budget accepted prefill token (%d)\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"false && \22unknown sampler type\22\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"false && \22unknown mirostat version\22\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"%s: backend sampling is not compatible with grammar, disabling\0A\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"%s: backend sampling is not compatible with reasoning budget, disabling\0A\00", align 1
@.str.24 = private unnamed_addr constant [49 x i8] c"(src->grmr == nullptr) == (dst->grmr == nullptr)\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"(src->rbudget == nullptr) == (dst->rbudget == nullptr)\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"%s:    sampling time = %10.2f ms\0A\00", align 1
@__func__._Z17common_perf_printPK13llama_contextPK14common_sampler = private unnamed_addr constant [18 x i8] c"common_perf_print\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"%s:    samplers time = %10.2f ms / %5d tokens\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"%s:        load time = %10.2f ms\0A\00", align 1
@.str.29 = private unnamed_addr constant [93 x i8] c"%s: prompt eval time = %10.2f ms / %5d tokens (%8.2f ms per token, %8.2f tokens per second)\0A\00", align 1
@.str.30 = private unnamed_addr constant [93 x i8] c"%s:        eval time = %10.2f ms / %5d runs   (%8.2f ms per token, %8.2f tokens per second)\0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"%s:       total time = %10.2f ms / %5d tokens\0A\00", align 1
@.str.32 = private unnamed_addr constant [100 x i8] c"%s: unaccounted time = %10.2f ms / %5.1f %%      (total - sampling - prompt eval - eval) / (total)\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"%s:    graphs reused = %10d\0A\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"%s: Backend sampler selected token: '%d'. Will not run any CPU samplers\0A\00", align 1
@__func__._Z21common_sampler_sampleP14common_samplerP13llama_contextib = private unnamed_addr constant [22 x i8] c"common_sampler_sample\00", align 1
@.str.35 = private unnamed_addr constant [86 x i8] c"!gsmpl->grmr && \22using grammar in combination with backend sampling is not supported\22\00", align 1
@.str.36 = private unnamed_addr constant [98 x i8] c"!gsmpl->rbudget && \22using reasoning budget in combination with backend sampling is not supported\22\00", align 1
@.str.37 = private unnamed_addr constant [96 x i8] c"cur_p.selected != -1 && \22no selected token during sampling - check your sampling configuration\22\00", align 1
@.str.38 = private unnamed_addr constant [74 x i8] c"idxs.size() == draft.size() + 1 && \22idxs.size() must be draft.size() + 1\22\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"logits \00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.42 = private unnamed_addr constant [83 x i8] c"id != LLAMA_TOKEN_NULL && \22null token in the sampling history - should not happen\22\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"dry\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"top_k\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"typ_p\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"top_p\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"top_n_sigma\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"min_p\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"xtc\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"infill\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"penalties\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"adaptive_p\00", align 1
@_ZZ31common_sampler_types_from_namesRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE16sampler_name_mapB5cxx11 = internal global %"class.std::unordered_map" zeroinitializer, align 8
@_ZGVZ31common_sampler_types_from_namesRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE16sampler_name_mapB5cxx11 = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.54 = private unnamed_addr constant [42 x i8] c"%s: unable to match sampler by name '%s'\0A\00", align 1
@__func__._Z31common_sampler_types_from_namesRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE = private unnamed_addr constant [32 x i8] c"common_sampler_types_from_names\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"%s: unable to match sampler by char '%c'\0A\00", align 1
@__func__._Z31common_sampler_types_from_charsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = private unnamed_addr constant [32 x i8] c"common_sampler_types_from_chars\00", align 1
@_ZTVSt9exception = external constant { [5 x ptr] }, align 8
@.str.56 = private unnamed_addr constant [18 x i8] c"logits != nullptr\00", align 1
@.str.57 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"nucleus\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"typ\00", align 1
@.str.61 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.67 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.68 = private unnamed_addr constant [33 x i8] c"ring buffer: index out of bounds\00", align 1
@switch.table._Z26common_sampler_type_to_chr19common_sampler_type = private unnamed_addr constant [12 x i8] c"dkpm?ytxiesa", align 1

; Function Attrs: mustprogress uwtable
define void @_ZNK22common_params_sampling5printB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(482) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load <4 x float>, ptr %i.e, align 8, !tbaa !66
  %i.g = fpext <4 x float> %i.f to <4 x double>   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load float, ptr %i.h, align 8, !tbaa !67
  %i.j = fpext float %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load i32, ptr %i.m, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !71
  %i.s = fpext float %i.r to double
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load float, ptr %i.t, align 8, !tbaa !72
  %i.v = fpext float %i.u to double
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.x = load float, ptr %i.w, align 4, !tbaa !73
  %i.y = fpext float %i.x to double
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load float, ptr %i.z, align 8, !tbaa !74
  %i.ab = fpext float %i.aa to double
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !75
  %i.ae = fpext float %i.ad to double
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ag = load float, ptr %i.af, align 8, !tbaa !76
  %i.ah = fpext float %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !77
  %i.ak = fpext float %i.aj to double
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.am = load i32, ptr %i.al, align 4, !tbaa !78
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load float, ptr %i.an, align 8, !tbaa !79
  %i.ap = fpext float %i.ao to double
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !80
  %i.as = fpext float %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.au = load float, ptr %i.at, align 4, !tbaa !81
  %i.av = fpext float %i.au to double
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !82
  %i.ay = fpext float %i.ax to double
  %i.az = extractelement <4 x double> %i.g, i64 0
  %i.ba = extractelement <4 x double> %i.g, i64 1
  %i.bb = extractelement <4 x double> %i.g, i64 2
  %i.bc = extractelement <4 x double> %i.g, i64 3
  %i.bd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1024, ptr noundef nonnull @.str, i32 noundef %i.d, double noundef %i.az, double noundef %i.ba, double noundef %i.bb, double noundef %i.bc, double noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, double noundef %i.s, double noundef %i.v, double noundef %i.y, double noundef %i.ab, double noundef %i.ae, double noundef %i.ah, double noundef %i.ak, i32 noundef %i.am, double noundef %i.ap, double noundef %i.as, double noundef %i.av, double noundef %i.ay) #28 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !83
  %i.bf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !84
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.bh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !85
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.bi, ptr %i.be, align 8, !tbaa !86
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.bj = phi ptr [ %i.bh, %.noexc.i ], [ %i.be, %bb.a ] ; 2 uses
  switch i64 %i.bf, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.bk = load i8, ptr %i.b, align 16, !tbaa !86
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !86
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr nonnull align 16 %i.b, i64 %i.bf, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !84  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !87
  %i.bn = load ptr, ptr %0, align 8, !tbaa !85
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bl
  store i8 0, ptr %i.bo, align 1, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_Z19common_sampler_initPK11llama_modelR22common_params_sampling(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(482) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector", align 8       ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::vector.21", align 8    ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::vector.26", align 8    ; 13 uses
  %10 = alloca [1 x %"class.std::vector.21"], align 8 ; 13 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !220 ; 2 uses
  %or.cond = tail call i1 @llvm.is.fpclass.f32(float %i.e, /* (nan inf zero nsub nnorm) */ i32 639)
  %i.f = fdiv float 1.000000e+00, %i.e
  %i.g = fcmp ueq float %i.f, +inf
  %or.cond731 = or i1 %or.cond, %i.g
  br i1 %or.cond731, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #28
  br label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit518

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !221
  %i.l = tail call float @llvm.fabs.f32(float %i.k)
  %i.m = fcmp ueq float %i.l, +inf
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.n) #28
  br label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit518

bb.i:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !222
  %i.r = tail call float @llvm.fabs.f32(float %i.q)
  %i.s = fcmp ueq float %i.r, +inf
  br i1 %i.s, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #29
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.t) #28
  br label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit518

bb.m:                                             ; preds = %bb.i
  %i.v = tail call ptr @llama_model_get_vocab(ptr noundef %0) ; 13 uses
  %i.w = tail call i8 @llama_sampler_chain_default_params() ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.y = load i8, ptr %i.x, align 1, !tbaa !223, !range !88, !noundef !89
  %i.z = tail call ptr @llama_sampler_chain_init(i8 %i.y) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !87 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.m
  %spec.select.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 11)
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !85
  %bcmp = tail call i32 @bcmp(ptr %i.af, ptr nonnull @.str.4, i64 %spec.select.i.i)
  %.not.i = icmp eq i32 %bcmp, 0
  %i.ag = icmp ugt i64 %i.ad, 10
  %or.cond716 = and i1 %i.ag, %.not.i
  br i1 %or.cond716, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.5, i32 noundef 217, ptr noundef nonnull @.str.6) #29
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread: ; preds = %bb.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !90 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !90 ; 2 uses
  %.not717971 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not717971, label %.thread1282, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.pre1156 = load ptr, ptr %i.as, align 8, !tbaa !91 ; 3 uses
  %.pre1157 = load ptr, ptr %2, align 8, !tbaa !92 ; 3 uses
  %i.aw = ptrtoint ptr %.sroa.10644.1 to i64      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ay = ptrtoint ptr %.pre1156 to i64
  %i.az = ptrtoint ptr %.pre1157 to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1152921504606846975
  br i1 %i.bc, label %bb.o, label %bb.p

.thread1282:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %._crit_edge986

bb.o:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #29
          to label %.noexc unwind label %bb.bd

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %._crit_edge
  %.not718 = icmp eq ptr %.pre1156, %.pre1157
  br i1 %.not718, label %._crit_edge986, label %_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKcSaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.p
  %i.be = ashr exact i64 %i.ba, 2
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #30
          to label %.lr.ph985.preheader unwind label %bb.bd ; 3 uses

bb.q:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.0636.0977 = phi ptr [ %i.ai, %.lr.ph ], [ %i.hb, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 8 uses
  %.sroa.14.0975 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 10 uses
  %.sroa.10644.0974 = phi ptr [ null, %.lr.ph ], [ %.sroa.10644.1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 7 uses
  %.sroa.0639.0972 = phi ptr [ null, %.lr.ph ], [ %.sroa.0639.1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 12 uses
  %i.bg = load i32, ptr %.sroa.0636.0977, align 8, !tbaa !95
  switch i32 %i.bg, label %bb.bb [
    i32 1, label %bb.r
    i32 2, label %bb.y
    i32 3, label %bb.ad
    i32 0, label %bb.av
  ]

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0636.0977, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_Z12regex_escapeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr %i.as, align 8, !tbaa !91 ; 7 uses
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !96
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !83
  %i.bl = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.au
  br i1 %i.bm, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.bn = load i64, ptr %i.av, align 8, !tbaa !87 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nuw nsw i64 %i.bn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !85
  %i.bq = load i64, ptr %i.au, align 8, !tbaa !86
  store i64 %i.bq, ptr %i.bk, align 8, !tbaa !86
  %.pre = load i64, ptr %i.av, align 8, !tbaa !87
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
end_hunk_0
begin_hunk_1_@_Z19common_sampler_initPK11llama_modelR22common_params_sampling:bb.a
bb.bi:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0619.0981, i64 noundef %i.hl) #31
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bi, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %i.hr
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIPKcSaIS1_EE9push_backEOS1_.exit:     ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.be
  %.sroa.0619.4 = phi ptr [ %i.ht, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0619.0981, %bb.be ] ; 2 uses
  %.pn729 = phi ptr [ %i.hu, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.12625.0982, %bb.be ]
  %.sroa.18628.4 = phi ptr [ %i.hw, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.18628.0983, %bb.be ] ; 2 uses
  %.sroa.12625.2 = getelementptr inbounds nuw i8, ptr %.pn729, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0616.0984, i64 32 ; 2 uses
  %.not719 = icmp eq ptr %i.hx, %.pre1156
  br i1 %.not719, label %._crit_edge986.loopexit, label %.lr.ph985

.loopexit.split-lp760.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i.i, %bb.bg
  %lpad.loopexit.split-lp1579 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bj:                                            ; preds = %._crit_edge986
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !99, !range !88, !noundef !89
  %i.ia = trunc nuw i8 %i.hz to i1
  %i.ib = load ptr, ptr %i.ab, align 8, !tbaa !85 ; 2 uses
  br i1 %i.ia, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ic = ptrtoint ptr %.sroa.0619.0.lcssa to i64
  %i.id = sub i64 %.sroa.12625.0.lcssa, %i.ic
  %i.ie = ashr exact i64 %i.id, 3
  %i.if = ptrtoint ptr %.sroa.0639.0.lcssa127312891299 to i64
  %i.ig = sub i64 %.sroa.10644.0.lcssa127712881300, %i.if
  %i.ih = ashr exact i64 %i.ig, 2
  %i.ii = invoke ptr @llama_sampler_init_grammar_lazy_patterns(ptr noundef %i.v, ptr noundef %i.ib, ptr noundef nonnull @.str.13, ptr noundef %.sroa.0619.0.lcssa, i64 noundef %i.ie, ptr noundef %.sroa.0639.0.lcssa127312891299, i64 noundef %i.ih)
          to label %bb.bm unwind label %bb.bd

bb.bl:                                            ; preds = %bb.bj
  %i.ij = invoke ptr @llama_sampler_init_grammar(ptr noundef %i.v, ptr noundef %i.ib, ptr noundef nonnull @.str.13)
          to label %bb.bm unwind label %bb.bd

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge986
  %.0181 = phi ptr [ null, %._crit_edge986 ], [ %i.ii, %bb.bk ], [ %i.ij, %bb.bl ] ; 3 uses
  %.not.i.i.i265 = icmp eq ptr %.sroa.0619.0.lcssa, null
  br i1 %.not.i.i.i265, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ik = ptrtoint ptr %.sroa.18628.0.lcssa to i64
  %i.il = ptrtoint ptr %.sroa.0619.0.lcssa to i64
  %i.im = sub i64 %i.ik, %i.il
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0619.0.lcssa, i64 noundef %i.im) #31
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit:                ; preds = %bb.bm, %bb.bn
  %.not.i.i.i266 = icmp eq ptr %.sroa.0639.0.lcssa127312891299, null
  br i1 %.not.i.i.i266, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit
  %i.in = ptrtoint ptr %.sroa.14.0.lcssa127812871301 to i64
  %i.io = ptrtoint ptr %.sroa.0639.0.lcssa127312891299 to i64
  %i.ip = sub i64 %i.in, %i.io
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0639.0.lcssa127312891299, i64 noundef %i.ip) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit, %bb.bo
  %i.iq = load ptr, ptr %2, align 8, !tbaa !92    ; 3 uses
  %i.ir = load ptr, ptr %i.he, align 8, !tbaa !91 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.iq, %i.ir
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ix, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.iq, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.is = load ptr, ptr %.05.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !86
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i267 = icmp eq ptr %i.ix, %i.ir
  br i1 %.not.i.i.i267, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !92
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.iy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.iq, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.iy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !96
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = ptrtoint ptr %i.iy to i64
  %i.jd = sub i64 %i.jb, %i.jc
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jd) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.not = icmp eq ptr %.0181, null                ; 3 uses
  br i1 %.not, label %bb.bt, label %bb.bx

bb.bq:                                            ; preds = %.loopexit.split-lp760.loopexit.split-lp, %bb.bd
  %.sroa.14.0.lcssa1279 = phi ptr [ %.sroa.14.0.lcssa1280, %bb.bd ], [ %.sroa.14.1, %.loopexit.split-lp760.loopexit.split-lp ] ; 2 uses
  %.sroa.0639.0.lcssa1274 = phi ptr [ %.sroa.0639.0.lcssa1275, %bb.bd ], [ %.sroa.0639.1, %.loopexit.split-lp760.loopexit.split-lp ] ; 2 uses
  %.sroa.0619.2 = phi ptr [ %.sroa.0619.1, %bb.bd ], [ %.sroa.0619.0981, %.loopexit.split-lp760.loopexit.split-lp ] ; 3 uses
  %.sroa.18628.2 = phi ptr [ %.sroa.18628.1, %bb.bd ], [ %.sroa.18628.0983, %.loopexit.split-lp760.loopexit.split-lp ]
  %.pn207 = phi { ptr, i32 } [ %i.hh, %bb.bd ], [ %lpad.loopexit.split-lp1579, %.loopexit.split-lp760.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %.sroa.0619.2, null
  br i1 %.not.i.i.i268, label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit269, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.je = ptrtoint ptr %.sroa.18628.2 to i64
  %i.jf = ptrtoint ptr %.sroa.0619.2 to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0619.2, i64 noundef %i.jg) #31
  br label %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit269

_ZNSt6vectorIPKcSaIS1_EED2Ev.exit269:             ; preds = %.loopexit.split-lp765.loopexit.split-lp, %bb.br, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %.sroa.0639.0962 = phi ptr [ %.sroa.0639.0.lcssa1274, %bb.bq ], [ %.sroa.0639.0.lcssa1274, %bb.br ], [ %.sroa.0639.0972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.sroa.0639.0972, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %.sroa.0639.0972, %.loopexit.split-lp765.loopexit.split-lp ] ; 3 uses
  %.sroa.14.0933 = phi ptr [ %.sroa.14.0.lcssa1279, %bb.bq ], [ %.sroa.14.0.lcssa1279, %bb.br ], [ %.sroa.14.0975, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.sroa.14.0975, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %.sroa.14.0975, %.loopexit.split-lp765.loopexit.split-lp ]
  %.pn218.pn = phi { ptr, i32 } [ %.pn207, %bb.bq ], [ %.pn207, %bb.br ], [ %.pn216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ], [ %.pn213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ], [ %lpad.loopexit.split-lp1588, %.loopexit.split-lp765.loopexit.split-lp ]
  %.not.i.i.i270 = icmp eq ptr %.sroa.0639.0962, null
  br i1 %.not.i.i.i270, label %_ZNSt6vectorIiSaIiEED2Ev.exit271, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit269
  %i.jh = ptrtoint ptr %.sroa.14.0933 to i64
  %i.ji = ptrtoint ptr %.sroa.0639.0962 to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0639.0962, i64 noundef %i.jj) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit271

_ZNSt6vectorIiSaIiEED2Ev.exit271:                 ; preds = %_ZNSt6vectorIPKcSaIS1_EED2Ev.exit269, %bb.bs
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit518

bb.bt:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.jk = load i64, ptr %i.ac, align 8, !tbaa !87
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, ptr noundef nonnull @.str.14)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  call void @__cxa_throw(ptr nonnull %i.jm, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.jm) #28
  br label %_ZNSt6vectorIP13llama_samplerSaIS1_EED2Ev.exit518

bb.bx:                                            ; preds = %bb.bt, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !87
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.cu, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %.not187 = icmp eq ptr %i.v, null
  br i1 %.not187, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.5, i32 noundef 281, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15) #29
          to label %bb.ca unwind label %bb.jy

bb.ca:                                            ; preds = %bb.bz
  unreachable

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_Z15common_tokenizePK11llama_vocabRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.21") align 8 %7, ptr noundef nonnull %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.jo, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %.preheader753 unwind label %bb.cj

.preheader753:                                    ; preds = %bb.cb
  %i.js = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !101
  %i.ju = load ptr, ptr %7, align 8, !tbaa !102   ; 4 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  %.not1045 = icmp eq ptr %i.jt, %i.ju
  br i1 %.not1045, label %._crit_edge995, label %.lr.ph994

.lr.ph994:                                        ; preds = %.preheader753
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.jx = load i32, ptr %i.ju, align 4, !tbaa !98
  invoke void @_Z21common_token_to_pieceB5cxx11PK11llama_vocabib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.v, i32 noundef %i.jx, i1 noundef zeroext true)
          to label %bb.cc unwind label %.loopexit.split-lp1146

bb.cc:                                            ; preds = %.lr.ph994
  %i.jy = load ptr, ptr %8, align 8, !tbaa !85
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !86
  %i.ka = sext i8 %i.jz to i32
  %i.kb = call i32 @isspace(i32 noundef %i.ka) #32
  %.not188.peel = icmp eq i32 %i.kb, 0
  br i1 %.not188.peel, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kc = load ptr, ptr %i.jo, align 8, !tbaa !85
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !86
  %i.ke = sext i8 %i.kd to i32
  %i.kf = call i32 @isspace(i32 noundef %i.ke) #32
  %.not189.peel = icmp eq i32 %i.kf, 0
  br i1 %.not189.peel, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit286.peel, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.kg = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.cf unwind label %.loopexit754.loopexit.split-lp

bb.cf:                                            ; preds = %bb.ce
  %i.kh = icmp sgt i32 %i.kg, 4
  br i1 %i.kh, label %bb.cg, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278.peel

bb.cg:                                            ; preds = %bb.cf
  %i.ki = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.ch unwind label %.loopexit754.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  %i.kj = load ptr, ptr %7, align 8, !tbaa !102
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !98
  %i.kl = load ptr, ptr %8, align 8, !tbaa !85
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ki, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__._Z19common_sampler_initPK11llama_modelR22common_params_sampling, i32 noundef %i.kk, ptr noundef %i.kl)
          to label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278.peel unwind label %.loopexit754.loopexit.split-lp

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278.peel: ; preds = %bb.ch, %bb.cf
  %i.km = load ptr, ptr %7, align 8, !tbaa !102
  %i.kn = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30
          to label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283.peel unwind label %.loopexit754.loopexit.split-lp ; 3 uses

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283.peel: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278.peel
  %i.ko = load i32, ptr %i.km, align 4, !tbaa !98
  store i32 %i.ko, ptr %i.kn, align 4, !tbaa !98
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit286.peel

_ZNSt6vectorIiSaIiEE9push_backERKi.exit286.peel:  ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283.peel, %bb.cd
  %.sroa.0604.1.peel = phi ptr [ null, %bb.cd ], [ %i.kn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283.peel ] ; 2 uses
  %.sroa.10.1.peel = phi ptr [ null, %bb.cd ], [ %i.kp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283.peel ] ; 4 uses
  %i.kq = load ptr, ptr %8, align 8, !tbaa !85    ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %11
  br i1 %i.kr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i288.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287.peel: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit286.peel
  %i.ks = load i64, ptr %11, align 8, !tbaa !86
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i288.peel: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit286.peel
  %12 = load i64, ptr %i.jw, align 8, !tbaa !87
  %13 = icmp ult i64 %12, 16
  call void @llvm.assume(i1 %13)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i288.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.ku = load ptr, ptr %i.js, align 8, !tbaa !101
  %i.kv = load ptr, ptr %7, align 8, !tbaa !102   ; 3 uses
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = ptrtoint ptr %i.kv to i64               ; 2 uses
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = icmp ugt i64 %i.ky, 4
  br i1 %i.kz, label %.peel.next, label %._crit_edge995

._crit_edge995:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel, %.preheader753
  %.sroa.0604.0.lcssa = phi ptr [ null, %.preheader753 ], [ %.sroa.0604.1.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ], [ %.sroa.0604.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ]
  %.sroa.10.0.lcssa = phi ptr [ null, %.preheader753 ], [ %.sroa.10.1.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ], [ %.sroa.10.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ]
  %.sroa.15.0.lcssa = phi ptr [ null, %.preheader753 ], [ %.sroa.10.1.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ], [ %.sroa.15.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ]
  %.lcssa880 = phi ptr [ %i.ju, %.preheader753 ], [ %i.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ], [ %i.mr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ] ; 2 uses
  %.lcssa = phi i64 [ %i.jv, %.preheader753 ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ], [ %i.mt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ]
  %.not.i.i.i272 = icmp eq ptr %.lcssa880, null
  br i1 %.not.i.i.i272, label %_ZNSt6vectorIiSaIiEED2Ev.exit273, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge995
  %i.la = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !103
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = sub i64 %i.lc, %.lcssa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa880, i64 noundef %i.ld) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit273

_ZNSt6vectorIiSaIiEED2Ev.exit273:                 ; preds = %._crit_edge995, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.cu

bb.cj:                                            ; preds = %bb.cb
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit291

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289
  %i.lf = phi ptr [ %i.mr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ], [ %i.kv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ]
  %.0179993 = phi i64 [ %i.mp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ] ; 4 uses
  %.sroa.15.0992 = phi ptr [ %.sroa.15.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ], [ %.sroa.10.1.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ] ; 5 uses
  %.sroa.10.0991 = phi ptr [ %.sroa.10.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ], [ %.sroa.10.1.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ] ; 3 uses
  %.sroa.0604.0990 = phi ptr [ %.sroa.0604.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289 ], [ %.sroa.0604.1.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.peel ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %.0179993
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !98
  invoke void @_Z21common_token_to_pieceB5cxx11PK11llama_vocabib(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.v, i32 noundef %i.lh, i1 noundef zeroext true)
          to label %bb.ck unwind label %.loopexit1145

.loopexit1145:                                    ; preds = %.peel.next
  %lpad.loopexit1147 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

.loopexit.split-lp1146:                           ; preds = %.lr.ph994
  %lpad.loopexit.split-lp1148 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

.loopexit754.loopexit.split-lp:                   ; preds = %bb.ce, %bb.cg, %bb.ch, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278.peel
  %lpad.loopexit.split-lp1151 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit754

.loopexit.split-lp755.loopexit.split-lp:          ; preds = %bb.ck, %bb.cm, %bb.cn, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278, %.loopexit1153
  %lpad.loopexit.split-lp1566 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit754

.loopexit754:                                     ; preds = %.loopexit754.loopexit.split-lp, %.loopexit.split-lp755.loopexit.split-lp
  %.sroa.15.09921105 = phi ptr [ %.sroa.15.0992, %.loopexit.split-lp755.loopexit.split-lp ], [ null, %.loopexit754.loopexit.split-lp ] ; 2 uses
  %.sroa.0604.09901100 = phi ptr [ %.sroa.0604.0990, %.loopexit.split-lp755.loopexit.split-lp ], [ null, %.loopexit754.loopexit.split-lp ] ; 2 uses
  %lpad.phi758 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1566, %.loopexit.split-lp755.loopexit.split-lp ], [ %lpad.loopexit.split-lp1151, %.loopexit754.loopexit.split-lp ] ; 2 uses
  %i.li = load ptr, ptr %8, align 8, !tbaa !85    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %11
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274: ; preds = %.loopexit754
  %i.lk = load i64, ptr %11, align 8, !tbaa !86
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276

bb.ck:                                            ; preds = %.peel.next
  %i.lm = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.cl unwind label %.loopexit.split-lp755.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck
  %i.ln = icmp sgt i32 %i.lm, 4
  br i1 %i.ln, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.lo = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.cn unwind label %.loopexit.split-lp755.loopexit.split-lp

bb.cn:                                            ; preds = %bb.cm
  %i.lp = load ptr, ptr %7, align 8, !tbaa !102
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %.0179993
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !98
  %i.ls = load ptr, ptr %8, align 8, !tbaa !85
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.lo, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__._Z19common_sampler_initPK11llama_modelR22common_params_sampling, i32 noundef %i.lr, ptr noundef %i.ls)
          to label %bb.co unwind label %.loopexit.split-lp755.loopexit.split-lp

bb.co:                                            ; preds = %bb.cn, %bb.cl
  %i.lt = load ptr, ptr %7, align 8, !tbaa !102
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %.0179993 ; 2 uses
  %.not.i277 = icmp eq ptr %.sroa.10.0991, %.sroa.15.0992
  br i1 %.not.i277, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !98
  store i32 %i.lv, ptr %.sroa.10.0991, align 4, !tbaa !98
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit286

bb.cq:                                            ; preds = %bb.co
  %i.lw = ptrtoint ptr %.sroa.15.0992 to i64
  %i.lx = ptrtoint ptr %.sroa.0604.0990 to i64
  %i.ly = sub i64 %i.lw, %i.lx                    ; 6 uses
  %i.lz = icmp eq i64 %i.ly, 9223372036854775804
  br i1 %i.lz, label %.loopexit1153, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278

.loopexit1153:                                    ; preds = %bb.cq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #29
          to label %.noexc284 unwind label %.loopexit.split-lp755.loopexit.split-lp

.noexc284:                                        ; preds = %.loopexit1153
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278: ; preds = %bb.cq
  %i.ma = ashr exact i64 %i.ly, 2                 ; 3 uses
  %.sroa.speculated.i.i.i279 = call i64 @llvm.umax.i64(i64 %i.ma, i64 1)
  %i.mb = add nsw i64 %.sroa.speculated.i.i.i279, %i.ma ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.ma
  %i.md = call i64 @llvm.umin.i64(i64 %i.mb, i64 2305843009213693951)
  %i.me = select i1 %i.mc, i64 2305843009213693951, i64 %i.md ; 3 uses
  %.not.i.i.i280 = icmp ne i64 %i.me, 0
  call void @llvm.assume(i1 %.not.i.i.i280)
  %i.mf = shl nuw nsw i64 %i.me, 2
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #30
          to label %.noexc285 unwind label %.loopexit.split-lp755.loopexit.split-lp ; 4 uses

.noexc285:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i278
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 %i.ly ; 2 uses
  %i.mi = load i32, ptr %i.lu, align 4, !tbaa !98
  store i32 %i.mi, ptr %i.mh, align 4, !tbaa !98
  %i.mj = icmp sgt i64 %i.ly, 0
  br i1 %i.mj, label %bb.cr, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i281

bb.cr:                                            ; preds = %.noexc285
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mg, ptr align 4 %.sroa.0604.0990, i64 %i.ly, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i281

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i281: ; preds = %bb.cr, %.noexc285
  %.not.i17.i.i282 = icmp eq ptr %.sroa.0604.0990, null
  br i1 %.not.i17.i.i282, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i281
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0604.0990, i64 noundef %i.ly) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283: ; preds = %bb.cs, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i281
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %i.me
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit286

_ZNSt6vectorIiSaIiEE9push_backERKi.exit286:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283, %bb.cp
  %.sroa.0604.1 = phi ptr [ %.sroa.0604.0990, %bb.cp ], [ %i.mg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283 ] ; 2 uses
  %.sroa.10.0991.pn = phi ptr [ %.sroa.10.0991, %bb.cp ], [ %i.mh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283 ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.0992, %bb.cp ], [ %i.mk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i283 ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.sroa.10.0991.pn, i64 4 ; 2 uses
  %i.ml = load ptr, ptr %8, align 8, !tbaa !85    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %11
  br i1 %i.mm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit286
  %i.mn = load i64, ptr %11, align 8, !tbaa !86
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit286, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i287
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.mp = add nuw i64 %.0179993, 1                ; 2 uses
  %i.mq = load ptr, ptr %i.js, align 8, !tbaa !101
  %i.mr = load ptr, ptr %7, align 8, !tbaa !102   ; 3 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = ashr exact i64 %i.mu, 2
  %i.mw = icmp ult i64 %i.mp, %i.mv
  br i1 %i.mw, label %.peel.next, label %._crit_edge995, !llvm.loop !218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276: ; preds = %.loopexit754, %.loopexit1145, %.loopexit.split-lp1146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274
  %.sroa.15.09921104 = phi ptr [ %.sroa.15.09921105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274 ], [ null, %.loopexit.split-lp1146 ], [ %.sroa.15.0992, %.loopexit1145 ], [ %.sroa.15.09921105, %.loopexit754 ] ; 2 uses
  %.sroa.0604.09901099 = phi ptr [ %.sroa.0604.09901100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274 ], [ null, %.loopexit.split-lp1146 ], [ %.sroa.0604.0990, %.loopexit1145 ], [ %.sroa.0604.09901100, %.loopexit754 ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %lpad.phi758, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274 ], [ %lpad.loopexit.split-lp1148, %.loopexit.split-lp1146 ], [ %lpad.loopexit1147, %.loopexit1145 ], [ %lpad.phi758, %.loopexit754 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.mx = load ptr, ptr %7, align 8, !tbaa !102   ; 3 uses
  %.not.i.i.i290 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i290, label %_ZNSt6vectorIiSaIiEED2Ev.exit291, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %i.my = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !103
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit291

_ZNSt6vectorIiSaIiEED2Ev.exit291:                 ; preds = %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276, %bb.cj
  %.sroa.0604.2 = phi ptr [ null, %bb.cj ], [ %.sroa.0604.09901099, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %.sroa.0604.09901099, %bb.ct ]
  %.sroa.15.2 = phi ptr [ null, %bb.cj ], [ %.sroa.15.09921104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %.sroa.15.09921104, %bb.ct ]
  %.pn.pn = phi { ptr, i32 } [ %i.le, %bb.cj ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276 ], [ %.pn, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt6vectorI16llama_logit_biasSaIS0_EED2Ev.exit327

bb.cu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit273, %bb.bx
  %.sroa.0604.3 = phi ptr [ null, %bb.bx ], [ %.sroa.0604.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit273 ] ; 30 uses
  %.sroa.10.2 = phi ptr [ null, %bb.bx ], [ %.sroa.10.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit273 ] ; 4 uses
  %.sroa.15.3 = phi ptr [ null, %bb.bx ], [ %.sroa.15.0.lcssa, %_ZNSt6vectorIiSaIiEED2Ev.exit273 ] ; 24 uses
  br i1 %.not, label %.loopexit752, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.nd = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ne = load i8, ptr %i.nd, align 8, !tbaa !99, !range !88, !noundef !89
  %i.nf = trunc nuw i8 %i.ne to i1
  br i1 %i.nf, label %.loopexit752, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ng = load i32, ptr %i.aa, align 8, !tbaa !104
  %i.nh = and i32 %i.ng, -2
  %spec.select.i = icmp ne i32 %i.nh, 2
  %.not7201001 = icmp eq ptr %.sroa.0604.3, %.sroa.10.2
  %or.cond1044 = select i1 %spec.select.i, i1 true, i1 %.not7201001
  br i1 %or.cond1044, label %.loopexit752, label %.lr.ph1003

.lr.ph1003:                                       ; preds = %bb.cw, %bb.dg
  %.sroa.0601.01002 = phi ptr [ %i.ny, %bb.dg ], [ %.sroa.0604.3, %bb.cw ] ; 3 uses
  %i.ni = load i32, ptr %.sroa.0601.01002, align 4, !tbaa !98
  invoke void @llama_sampler_accept(ptr noundef nonnull %.0181, i32 noundef %i.ni)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %.lr.ph1003
  %i.nj = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %bb.cx
  %i.nk = icmp sgt i32 %i.nj, 4
  br i1 %i.nk, label %bb.cz, label %bb.dg

bb.cz:                                            ; preds = %bb.cy
  %i.nl = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.nm = load i32, ptr %.sroa.0601.01002, align 4, !tbaa !98
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.nl, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._Z19common_sampler_initPK11llama_modelR22common_params_sampling, i32 noundef %i.nm)
          to label %bb.dg unwind label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cx, %.lr.ph1003
  %i.nn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.no = extractvalue { ptr, i32 } %i.nn, 1
  %i.np = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.nq = icmp eq i32 %i.no, %i.np
  br i1 %i.nq, label %bb.dc, label %_ZNSt6vectorI16llama_logit_biasSaIS0_EED2Ev.exit327

bb.dc:                                            ; preds = %bb.db
  %i.nr = extractvalue { ptr, i32 } %i.nn, 0
  %i.ns = call ptr @__cxa_begin_catch(ptr %i.nr) #28 ; 0 uses
  %i.nt = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.nu = icmp sgt i32 %i.nt, 0
  br i1 %i.nu, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.nv = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.nw = load ptr, ptr %i.ab, align 8, !tbaa !85
  %i.nx = load ptr, ptr %i.jo, align 8, !tbaa !85
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.nv, i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__._Z19common_sampler_initPK11llama_modelR22common_params_sampling, ptr noundef %i.nw, ptr noundef %i.nx)
          to label %bb.di unwind label %bb.dh

bb.dg:                                            ; preds = %bb.da, %bb.cy
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0601.01002, i64 4 ; 2 uses
  %.not720 = icmp eq ptr %i.ny, %.sroa.10.2
  br i1 %.not720, label %.loopexit752, label %.lr.ph1003

bb.dh:                                            ; preds = %bb.di, %bb.df, %bb.de, %bb.dc
  %i.nz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorI16llama_logit_biasSaIS0_EED2Ev.exit327 unwind label %bb.ke

bb.di:                                            ; preds = %bb.df, %bb.dd
  %i.oa = call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9exception, i64 16), ptr %i.oa, align 8, !tbaa !230
  invoke void @__cxa_throw(ptr nonnull %i.oa, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #29
          to label %bb.kf unwind label %bb.dh

.loopexit752:                                     ; preds = %bb.dg, %bb.cw, %bb.cv, %bb.cu
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !105 ; 4 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !105 ; 2 uses
  %i.of = icmp eq ptr %i.oc, %i.oe
  br i1 %i.of, label %.loopexit744, label %bb.dj

bb.dj:                                            ; preds = %.loopexit752
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !106
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !106
  %i.ok = icmp eq ptr %i.oh, %i.oj
  br i1 %i.ok, label %.loopexit744, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !99, !range !88, !noundef !89
  %i.on = trunc nuw i8 %i.om to i1
  br i1 %i.on, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !107
  %i.oq = icmp sgt i32 %i.op, -1
  br i1 %i.oq, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.os = load i8, ptr %i.or, align 8, !tbaa !231, !range !88, !noundef !89
  %i.ot = trunc nuw i8 %i.os to i1
  br i1 %i.ot, label %bb.dn, label %.loopexit744

bb.dn:                                            ; preds = %bb.dk, %bb.dl, %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ou = ptrtoint ptr %i.oe to i64
  %i.ov = ptrtoint ptr %i.oc to i64
  %i.ow = sub i64 %i.ou, %i.ov                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.ox = icmp ugt i64 %i.ow, 9223372036854775804
  br i1 %i.ox, label %.noexc.i.i293, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !108

.noexc.i.i293:                                    ; preds = %bb.dn
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc294 unwind label %bb.dz

.noexc294:                                        ; preds = %.noexc.i.i293
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.dn
  %i.oy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ow) #30
          to label %.noexc295 unwind label %bb.dz ; 4 uses

.noexc295:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.oy, ptr %10, align 8, !tbaa !102
  %i.oz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ow ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.pa, ptr %i.pb, align 8, !tbaa !103
  %i.pc = icmp samesign ugt i64 %i.ow, 4
  br i1 %i.pc, label %bb.do, label %bb.dp, !prof !109

bb.do:                                            ; preds = %.noexc295
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.oy, ptr align 4 %i.oc, i64 %i.ow, i1 false)
  br label %bb.dr

bb.dp:                                            ; preds = %.noexc295
  %i.pd = icmp eq i64 %i.ow, 4
end_hunk_1
