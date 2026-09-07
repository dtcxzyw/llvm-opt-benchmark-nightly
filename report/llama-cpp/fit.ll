Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/fit?download=true
inline.NumInlined: 1715
inline.NumDeleted: 635
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z17common_fit_paramsPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level:bb.a
  br i1 %i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.f) #24 ; 2 uses
  %i.k = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.m = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #24
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.m, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._Z17common_fit_paramsPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, ptr noundef %i.q)
          to label %.sink.split unwind label %bb.q

bb.k:                                             ; preds = %bb.f
  %i.r = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #24
  %i.s = icmp eq i32 %i.g, %i.r
  br i1 %i.s, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.f) #24 ; 2 uses
  %i.u = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.w = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #24
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.w, i32 noundef 4, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._Z17common_fit_paramsPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, ptr noundef %i.aa)
          to label %.sink.split unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

bb.q:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

.sink.split:                                      ; preds = %bb.h, %bb.j, %bb.m, %bb.o
  %.019.ph = phi i32 [ 2, %bb.m ], [ 2, %bb.o ], [ 1, %bb.j ], [ 1, %bb.h ]
  tail call void @__cxa_end_catch()
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.c, %bb.e
  %.019 = phi i32 [ 0, %bb.e ], [ 0, %bb.c ], [ %.019.ph, %.sink.split ]
  %i.ad = tail call i64 @llama_time_us()
  %i.ae = tail call noundef i32 @_Z30common_log_get_verbosity_tholdv()
  %i.af = icmp sgt i32 %i.ae, 3
  br i1 %i.af, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call noundef ptr @_Z15common_log_mainv()
  %i.ah = sub nsw i64 %i.ad, %i.a
  %i.ai = sitofp i64 %i.ah to double
  %i.aj = fmul nnan double %i.ai, f0x3EB0C6F7A0B5ED8D
  tail call void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ag, i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._Z17common_fit_paramsPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, double noundef %i.aj)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  ret i32 %.019

bb.u:                                             ; preds = %bb.q, %bb.p, %bb.k
  %.merged = phi { ptr, i32 } [ %i.ab, %bb.p ], [ %i.e, %bb.k ], [ %i.ac, %bb.q ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.q, %bb.p
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #29
  unreachable
}

declare i64 @llama_time_us() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 13 uses
  %i.e = alloca ptr, align 8                      ; 13 uses
  %i.f = alloca ptr, align 8                      ; 3 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 2 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %9 = alloca %struct.llama_model_params, align 8 ; 5 uses
  %10 = alloca %"class.std::vector.5", align 8    ; 18 uses
  %i.j = alloca i32, align 4                      ; 12 uses
  %i.k = alloca i32, align 4                      ; 10 uses
  %i.l = alloca i32, align 4                      ; 15 uses
  %11 = alloca %"class.std::vector.0", align 8    ; 9 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %12 = alloca %class.anon.39, align 8            ; 13 uses
  %13 = alloca %"class.std::vector.0", align 16   ; 20 uses
  %14 = alloca %"class.std::vector.0", align 16   ; 6 uses
  %i.n = alloca i64, align 8                      ; 33 uses
  %15 = alloca %"class.std::vector.22", align 8   ; 22 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %17 = alloca %"class.std::vector.0", align 8    ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %class.anon.49, align 1            ; 4 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %22 = alloca %class.anon.51, align 8            ; 12 uses
  %23 = alloca %class.anon.52, align 8            ; 22 uses
  %24 = alloca %"class.std::allocator.18", align 1 ; 4 uses
  %25 = alloca %"class.std::vector.0", align 8    ; 10 uses
  %26 = alloca %"class.std::vector.53", align 8   ; 28 uses
  %27 = alloca %"class.std::vector.58", align 8   ; 37 uses
  %28 = alloca %"class.std::vector.40", align 8   ; 33 uses
  %29 = alloca %"class.std::vector.58", align 8   ; 9 uses
  %30 = alloca %"class.std::vector.40", align 8   ; 15 uses
  %31 = alloca %"class.std::vector.58", align 8   ; 7 uses
  %32 = alloca %"class.std::vector.40", align 8   ; 8 uses
  %33 = alloca %"class.std::vector.58", align 8   ; 16 uses
  %34 = alloca %"class.std::vector.40", align 8   ; 15 uses
  %35 = alloca %"class.std::vector.58", align 8   ; 11 uses
  %36 = alloca %"class.std::vector.40", align 8   ; 7 uses
  %37 = alloca %"class.std::vector.58", align 8   ; 12 uses
  %38 = alloca %"class.std::vector.53", align 8   ; 17 uses
  %39 = alloca %"class.std::vector.40", align 16  ; 17 uses
  %40 = alloca %"class.std::vector.40", align 16  ; 7 uses
  %41 = alloca %"class.std::vector.40", align 16  ; 7 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !66
  store ptr %1, ptr %i.d, align 8, !tbaa !68
  store ptr %2, ptr %i.e, align 8, !tbaa !70
  store ptr %3, ptr %i.f, align 8, !tbaa !71
  store ptr %4, ptr %i.g, align 8, !tbaa !72
  store ptr %7, ptr %i.h, align 8, !tbaa !74
  store i32 %8, ptr %i.i, align 4, !tbaa !75
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !196
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN27common_params_fit_exceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.38)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTI27common_params_fit_exception, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.s) #24
  br label %bb.tz

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llama_model_default_params(ptr dead_on_unwind nonnull writable sret(%struct.llama_model_params) align 8 %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i32 0, ptr %i.j, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  store i32 0, ptr %i.k, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  store i32 0, ptr %i.l, align 4, !tbaa !53
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !70   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 133
  %i.w = load i8, ptr %i.v, align 1, !tbaa !197, !range !60, !noundef !61
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %.sroa.speculated1166 = call i32 @llvm.umax.i32(i32 %i.z, i32 1)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aa = phi i32 [ %.sroa.speculated1166, %bb.f ], [ 1, %bb.e ] ; 5 uses
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !86
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  store i32 0, ptr %i.m, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr %i.h, ptr %12, align 8, !tbaa !198
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %11, ptr %i.ad, align 8, !tbaa !199
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.m, ptr %i.ae, align 8, !tbaa !200
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.e, ptr %i.af, align 8, !tbaa !201
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.i, ptr %i.ag, align 8, !tbaa !91
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %10, ptr %i.ah, align 8, !tbaa !202
  %i.ai = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp sgt i32 %i.ai, 3
  br i1 %i.aj, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ak = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ak, i32 noundef 2, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.tw

bb.l:                                             ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !75
  invoke fastcc void @_ZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_level(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef %i.am, ptr noundef %i.an, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, i32 noundef %i.ap)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %i.k, align 4, !tbaa !53
  %umul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.aq, i32 %i.aa) ; 2 uses
  %umul.value = extractvalue { i32, i1 } %umul, 0
  %umul.overflow = extractvalue { i32, i1 } %umul, 1
  %42 = select i1 %umul.overflow, i32 -1, i32 %umul.value ; 9 uses
  %umul1229 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 %i.aa) ; 2 uses
  %umul.value1230 = extractvalue { i32, i1 } %umul1229, 0
  %umul.overflow1231 = extractvalue { i32, i1 } %umul1229, 1
  %43 = select i1 %umul.overflow1231, i32 -1, i32 %umul.value1230 ; 5 uses
  br i1 %i.ac, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !70
  store i32 %42, ptr %i.ar, align 8, !tbaa !86
  %i.as = icmp ugt i32 %i.aa, 1
  br i1 %i.as, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.au = icmp sgt i32 %i.at, 3
  br i1 %i.au, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.av = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.av, i32 noundef 2, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i32 noundef %42, i32 noundef %i.aa)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit1011

bb.t:                                             ; preds = %bb.y, %bb.r, %bb.q, %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.tu

bb.u:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.bb = load i32, ptr %i.i, align 4, !tbaa !75
  invoke fastcc void @_ZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_level(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef %i.ay, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, i32 noundef %i.bb)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bc = load ptr, ptr %13, align 16, !tbaa !17  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !21
  %i.bf = load <2 x ptr>, ptr %14, align 16, !tbaa !93
  store <2 x ptr> %i.bf, ptr %13, align 16, !tbaa !93
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !21
  store ptr %i.bh, ptr %i.bd, align 16, !tbaa !21
  %.not.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = ptrtoint ptr %i.bc to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bk) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.tu

bb.y:                                             ; preds = %bb.n, %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit, %bb.m
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_0clERSt6vectorI24llama_device_memory_dataSaISF_EE"(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.z unwind label %bb.t

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.bo = load ptr, ptr %10, align 8, !tbaa !48   ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  store i64 %i.bs, ptr %i.n, align 8, !tbaa !19
  %i.bt = icmp ugt i64 %i.bs, 1152921504606846975
  br i1 %i.bt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #25
          to label %.noexc unwind label %.thread1221

.noexc:                                           ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.not = icmp eq ptr %i.bn, %i.bo
  br i1 %.not, label %.thread, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i

.thread:                                          ; preds = %bb.ab
  %i.bu = load i64, ptr %5, align 8, !tbaa !19
  %i.bv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %.thread1957 unwind label %.thread2119 ; 3 uses

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.ab
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #26
          to label %.lr.ph.preheader unwind label %.thread1221 ; 3 uses

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.br
  br label %.lr.ph

.thread1221:                                      ; preds = %bb.aa, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit1009

.thread2119:                                      ; preds = %.thread
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit1009

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605
  %i.ca = phi i64 [ %i.cr, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605 ], [ %i.bs, %.lr.ph.preheader ]
  %.03841481 = phi i64 [ %i.cs, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.01119.01480 = phi ptr [ %.sroa.01119.5, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605 ], [ %i.bw, %.lr.ph.preheader ] ; 6 uses
  %.sroa.25.01479 = phi ptr [ %.sroa.25.2, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605 ], [ %i.bw, %.lr.ph.preheader ] ; 6 uses
  %.sroa.33.01478 = phi ptr [ %.sroa.33.5, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605 ], [ %i.bx, %.lr.ph.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.03841481
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !19 ; 2 uses
  %.not.i.i596 = icmp eq ptr %.sroa.25.01479, %.sroa.33.01478
  br i1 %.not.i.i596, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph
  store i64 %i.cc, ptr %.sroa.25.01479, align 8, !tbaa !19
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605

bb.ad:                                            ; preds = %.lr.ph
  %i.cd = ptrtoint ptr %.sroa.25.01479 to i64
  %i.ce = ptrtoint ptr %.sroa.01119.01480 to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.ae, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i597

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #25
          to label %.noexc603 unwind label %.loopexit.split-lp1319

.noexc603:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i597: ; preds = %bb.ad
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i598 = call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i598, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i.i.i.i599 = icmp ne i64 %i.cl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i599)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #26
          to label %.noexc604 unwind label %.loopexit1318 ; 4 uses

.noexc604:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i597
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store i64 %i.cc, ptr %i.co, align 8, !tbaa !19
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.af, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i602

bb.af:                                            ; preds = %.noexc604
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr align 8 %.sroa.01119.01480, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i602

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i602: ; preds = %bb.af, %.noexc604
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01119.01480, i64 noundef %i.cf) #27
  %.pre.pre = load i64, ptr %i.n, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605

_ZNSt6vectorIlSaIlEE9push_backEOl.exit605:        ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i602, %bb.ac
  %i.cr = phi i64 [ %.pre.pre, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i602 ], [ %i.ca, %bb.ac ] ; 6 uses
  %.sroa.33.5 = phi ptr [ %i.cq, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i602 ], [ %.sroa.33.01478, %bb.ac ] ; 4 uses
  %.pn1229 = phi ptr [ %i.co, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i602 ], [ %.sroa.25.01479, %bb.ac ]
  %.sroa.01119.5 = phi ptr [ %i.cn, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i602 ], [ %.sroa.01119.01480, %bb.ac ] ; 4 uses
  %.sroa.25.2 = getelementptr inbounds nuw i8, ptr %.pn1229, i64 8
  %i.cs = add nuw i64 %.03841481, 1               ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  br i1 %i.ct, label %.lr.ph, label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, !llvm.loop !171

.loopexit1318:                                    ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i597
  %lpad.loopexit1320 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ts

.loopexit.split-lp1319:                           ; preds = %bb.ae
  %lpad.loopexit.split-lp1321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ts

.thread1957:                                      ; preds = %.thread
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 16
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit605
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.cw = icmp ugt i64 %i.cr, 288230376151711743
  br i1 %i.cw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #25
          to label %.noexc608 unwind label %bb.ai

.noexc608:                                        ; preds = %bb.ag
  unreachable

end_hunk_0
begin_hunk_1_@_ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level:bb.a
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.jk = load i64, ptr %.sroa.01085.1.lcssa, align 8, !tbaa !19
  %i.jl = load i64, ptr %.sroa.01119.119401961, align 8, !tbaa !19
  %.not424 = icmp slt i64 %i.jk, %i.jl
  br i1 %.not424, label %.preheader1300.preheader, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jm = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ce unwind label %bb.be

bb.ce:                                            ; preds = %bb.cd
  %i.jn = icmp sgt i32 %i.jm, 3
  br i1 %i.jn, label %bb.cf, label %.thread1209

bb.cf:                                            ; preds = %bb.ce
  %i.jo = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.cg unwind label %bb.be

bb.cg:                                            ; preds = %bb.cf
  %i.jp = load i64, ptr %.sroa.01085.1.lcssa, align 8, !tbaa !19
  %i.jq = sdiv i64 %i.jp, 1048576
  %i.jr = load i64, ptr %.sroa.01119.119401961, align 8, !tbaa !19
  %i.js = sdiv i64 %i.jr, 1048576
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.jo, i32 noundef 2, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %i.jq, i64 noundef %i.js)
          to label %.thread1209 unwind label %bb.be

bb.ch:                                            ; preds = %.lr.ph1512
  %i.jt = add nuw i64 %.03921511, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.jt, %i.jj
  br i1 %exitcond.not, label %.critedge, label %.lr.ph1512, !llvm.loop !173

.lr.ph1512:                                       ; preds = %bb.cb, %bb.ch
  %.03921511 = phi i64 [ %i.jt, %bb.ch ], [ 0, %bb.cb ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01085.1.lcssa, i64 %.03921511
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !19
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01119.119401961, i64 %.03921511
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !19
  %i.jy = icmp slt i64 %i.jv, %i.jx
  br i1 %i.jy, label %.critedge498, label %bb.ch

.critedge:                                        ; preds = %bb.ch, %bb.cb
  %i.jz = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ci unwind label %bb.cl

bb.ci:                                            ; preds = %.critedge
  %i.ka = icmp sgt i32 %i.jz, 3
  br i1 %i.ka, label %bb.cj, label %bb.td

bb.cj:                                            ; preds = %bb.ci
  %i.kb = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.ck unwind label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.kb, i32 noundef 2, ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %bb.td unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %.critedge
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.tq

.critedge498:                                     ; preds = %.lr.ph1512, %..critedge498_crit_edge
  %i.kd = phi i64 [ %.pre1697.a, %..critedge498_crit_edge ], [ %i.jj, %.lr.ph1512 ] ; 2 uses
  %.sroa.01085.3 = phi ptr [ null, %..critedge498_crit_edge ], [ %.sroa.01085.1.lcssa, %.lr.ph1512 ] ; 3 uses
  %.sroa.18.3 = phi ptr [ null, %..critedge498_crit_edge ], [ %.sroa.18.1.lcssa, %.lr.ph1512 ] ; 3 uses
  %.1407 = phi i64 [ %i.gk, %..critedge498_crit_edge ], [ %.0406.lcssa, %.lr.ph1512 ] ; 2 uses
  %.1405 = phi i64 [ %i.gl, %..critedge498_crit_edge ], [ %.0404.lcssa, %.lr.ph1512 ] ; 2 uses
  %.1403 = phi i64 [ %i.gj, %..critedge498_crit_edge ], [ %.0402.lcssa, %.lr.ph1512 ] ; 2 uses
  %.1401 = phi i64 [ 0, %..critedge498_crit_edge ], [ %.0400.lcssa, %.lr.ph1512 ] ; 2 uses
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %.thread1190, label %.preheader1300.preheader

.preheader1300.preheader:                         ; preds = %bb.cc, %.critedge498
  %.14012046 = phi i64 [ %.1401, %.critedge498 ], [ %.0400.lcssa, %bb.cc ] ; 3 uses
  %.14032043 = phi i64 [ %.1403, %.critedge498 ], [ %.0402.lcssa, %bb.cc ] ; 3 uses
  %.14052040 = phi i64 [ %.1405, %.critedge498 ], [ %.0404.lcssa, %bb.cc ] ; 2 uses
  %.14072039 = phi i64 [ %.1407, %.critedge498 ], [ %.0406.lcssa, %bb.cc ] ; 3 uses
  %.sroa.18.32007 = phi ptr [ %.sroa.18.3, %.critedge498 ], [ %.sroa.18.1.lcssa, %bb.cc ] ; 7 uses
  %.sroa.01085.31974 = phi ptr [ %.sroa.01085.3, %.critedge498 ], [ %.sroa.01085.1.lcssa, %bb.cc ] ; 7 uses
  %i.kf = phi i64 [ %i.kd, %.critedge498 ], [ 1, %bb.cc ] ; 5 uses
  %min.iters.check = icmp ult i64 %i.kf, 4
  br i1 %min.iters.check, label %.preheader1300.preheader2373, label %vector.ph

vector.ph:                                        ; preds = %.preheader1300.preheader
  %n.vec = and i64 %i.kf, -4                      ; 3 uses
  %i.kg = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.14052040, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.kg, %vector.ph ], [ %i.kj, %vector.body ]
  %vec.phi2293 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.kk, %vector.body ]
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01119.119401961, i64 %index ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %wide.load = load <2 x i64>, ptr %i.kh, align 8, !tbaa !19
  %wide.load2294 = load <2 x i64>, ptr %i.ki, align 8, !tbaa !19
  %i.kj = sub <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.kk = sub <2 x i64> %vec.phi2293, %wide.load2294 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.kk, %i.kj
  %i.km = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.kf, %n.vec
  br i1 %cmp.n, label %.loopexit2312, label %.preheader1300.preheader2373

.preheader1300.preheader2373:                     ; preds = %.preheader1300.preheader, %middle.block
  %.03891514.ph = phi i64 [ 0, %.preheader1300.preheader ], [ %n.vec, %middle.block ]
  %.03901513.ph = phi i64 [ %.14052040, %.preheader1300.preheader ], [ %i.km, %middle.block ]
  br label %.preheader1300.a

.preheader1300.a:                                 ; preds = %.preheader1300.preheader2373, %.preheader1300.a
  %.03891514 = phi i64 [ %i.kq, %.preheader1300.a ], [ %.03891514.ph, %.preheader1300.preheader2373 ] ; 2 uses
  %.03901513 = phi i64 [ %i.kp, %.preheader1300.a ], [ %.03901513.ph, %.preheader1300.preheader2373 ]
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01119.119401961, i64 %.03891514
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !19
  %i.kp = sub nsw i64 %.03901513, %i.ko           ; 2 uses
  %i.kq = add nuw i64 %.03891514, 1               ; 2 uses
  %exitcond1676.not = icmp eq i64 %i.kq, %i.kf
  br i1 %exitcond1676.not, label %.loopexit2312, label %.preheader1300.a, !llvm.loop !175

.loopexit2312:                                    ; preds = %.preheader1300.a, %middle.block
  %.lcssa2276 = phi i64 [ %i.km, %middle.block ], [ %i.kp, %.preheader1300.a ] ; 3 uses
  %i.kr = icmp slt i64 %.lcssa2276, 0
  br i1 %i.kr, label %bb.cm, label %bb.ep

.thread1190:                                      ; preds = %.critedge498
  %i.ks = load i64, ptr %.sroa.01119.119401961, align 8, !tbaa !19
  %i.kt = sub nsw i64 %.1405, %i.ks               ; 2 uses
  %i.ku = icmp slt i64 %i.kt, 0
  br i1 %i.ku, label %.thread1193, label %bb.ep

bb.cm:                                            ; preds = %.loopexit2312
  %i.kv = icmp eq i64 %i.kf, 1
  br i1 %i.kv, label %.thread1193, label %bb.cr

.thread1193:                                      ; preds = %.thread1190, %bb.cm
  %.14012045 = phi i64 [ %.14012046, %bb.cm ], [ %.1401, %.thread1190 ] ; 2 uses
  %.14032042 = phi i64 [ %.14032043, %bb.cm ], [ %.1403, %.thread1190 ] ; 2 uses
  %.14072038 = phi i64 [ %.14072039, %bb.cm ], [ %.1407, %.thread1190 ] ; 2 uses
  %.sroa.18.32006 = phi ptr [ %.sroa.18.32007, %bb.cm ], [ %.sroa.18.3, %.thread1190 ] ; 5 uses
  %.sroa.01085.31973 = phi ptr [ %.sroa.01085.31974, %bb.cm ], [ %.sroa.01085.3, %.thread1190 ] ; 5 uses
  %.139111921195 = phi i64 [ %.lcssa2276, %bb.cm ], [ %i.kt, %.thread1190 ]
  %i.kw = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.cn unwind label %bb.cq

bb.cn:                                            ; preds = %.thread1193
  %i.kx = icmp sgt i32 %i.kw, 3
  br i1 %i.kx, label %bb.co, label %bb.cv

bb.co:                                            ; preds = %bb.cn
  %i.ky = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.cp unwind label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.kz = load i64, ptr %.sroa.01119.119401961, align 8, !tbaa !19
  %i.la = sdiv i64 %i.kz, 1048576
  %i.lb = sub nsw i64 0, %.139111921195
  %i.lc = lshr i64 %i.lb, 20
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ky, i32 noundef 2, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %i.la, i64 noundef %i.lc)
          to label %bb.cv unwind label %bb.cq

bb.cq:                                            ; preds = %.invoke2205, %bb.en, %bb.el, %bb.ek, %bb.ej, %bb.eh, %bb.eg, %bb.ee, %bb.cu, %bb.ct, %bb.cr, %bb.cp, %bb.co, %.thread1193
  %.sroa.18.32036 = phi ptr [ %.sroa.18.32005, %.invoke2205 ], [ %.sroa.18.32005, %bb.en ], [ %.sroa.18.32005, %bb.el ], [ %.sroa.18.32005, %bb.ek ], [ %.sroa.18.32005, %bb.ej ], [ %.sroa.18.32005, %bb.eh ], [ %.sroa.18.32006, %.thread1193 ], [ %.sroa.18.32005, %bb.eg ], [ %.sroa.18.32005, %bb.ee ], [ %.sroa.18.32007, %bb.cu ], [ %.sroa.18.32007, %bb.ct ], [ %.sroa.18.32007, %bb.cr ], [ %.sroa.18.32006, %bb.cp ], [ %.sroa.18.32006, %bb.co ]
  %.sroa.01085.32003 = phi ptr [ %.sroa.01085.31972, %.invoke2205 ], [ %.sroa.01085.31972, %bb.en ], [ %.sroa.01085.31972, %bb.el ], [ %.sroa.01085.31972, %bb.ek ], [ %.sroa.01085.31972, %bb.ej ], [ %.sroa.01085.31972, %bb.eh ], [ %.sroa.01085.31973, %.thread1193 ], [ %.sroa.01085.31972, %bb.eg ], [ %.sroa.01085.31972, %bb.ee ], [ %.sroa.01085.31974, %bb.cu ], [ %.sroa.01085.31974, %bb.ct ], [ %.sroa.01085.31974, %bb.cr ], [ %.sroa.01085.31973, %bb.cp ], [ %.sroa.01085.31973, %bb.co ]
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.tq

bb.cr:                                            ; preds = %bb.cm
  %i.le = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.cs unwind label %bb.cq

bb.cs:                                            ; preds = %bb.cr
  %i.lf = icmp sgt i32 %i.le, 3
  br i1 %i.lf, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.lg = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.cu unwind label %bb.cq

bb.cu:                                            ; preds = %bb.ct
  %i.lh = sub nsw i64 0, %.lcssa2276
  %i.li = lshr i64 %i.lh, 20
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.lg, i32 noundef 2, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %i.li)
          to label %bb.cv unwind label %bb.cq

bb.cv:                                            ; preds = %bb.cs, %bb.cu, %bb.cn, %bb.cp
  %.14012044 = phi i64 [ %.14012046, %bb.cs ], [ %.14012046, %bb.cu ], [ %.14012045, %bb.cn ], [ %.14012045, %bb.cp ]
  %.14032041 = phi i64 [ %.14032043, %bb.cs ], [ %.14032043, %bb.cu ], [ %.14032042, %bb.cn ], [ %.14032042, %bb.cp ] ; 2 uses
  %.14072037 = phi i64 [ %.14072039, %bb.cs ], [ %.14072039, %bb.cu ], [ %.14072038, %bb.cn ], [ %.14072038, %bb.cp ] ; 3 uses
  %.sroa.18.32005 = phi ptr [ %.sroa.18.32007, %bb.cs ], [ %.sroa.18.32007, %bb.cu ], [ %.sroa.18.32006, %bb.cn ], [ %.sroa.18.32006, %bb.cp ] ; 16 uses
  %.sroa.01085.31972 = phi ptr [ %.sroa.01085.31974, %bb.cs ], [ %.sroa.01085.31974, %bb.cu ], [ %.sroa.01085.31973, %bb.cn ], [ %.sroa.01085.31973, %bb.cp ] ; 16 uses
  br i1 %i.ac, label %bb.cw, label %bb.el

bb.cw:                                            ; preds = %bb.cv
  %i.lj = icmp ult i32 %43, %42
  br i1 %i.lj, label %bb.cx, label %bb.ed

bb.cx:                                            ; preds = %bb.cw
  %i.lk = load i64, ptr %i.n, align 8, !tbaa !19  ; 7 uses
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %.thread1196, label %.preheader1299.preheader

.preheader1299.preheader:                         ; preds = %bb.cx
  %min.iters.check2296 = icmp ult i64 %i.lk, 4
  br i1 %min.iters.check2296, label %.preheader1299.preheader2369, label %vector.ph2297

vector.ph2297:                                    ; preds = %.preheader1299.preheader
  %n.vec2298 = and i64 %i.lk, -4                  ; 3 uses
  %i.lm = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.14072037, i64 0
  br label %vector.body2299

vector.body2299:                                  ; preds = %vector.body2299, %vector.ph2297
  %index2300 = phi i64 [ 0, %vector.ph2297 ], [ %index.next2305, %vector.body2299 ] ; 2 uses
  %vec.phi2301 = phi <2 x i64> [ %i.lm, %vector.ph2297 ], [ %i.lp, %vector.body2299 ]
  %vec.phi2302 = phi <2 x i64> [ zeroinitializer, %vector.ph2297 ], [ %i.lq, %vector.body2299 ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01119.119401961, i64 %index2300 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %wide.load2303 = load <2 x i64>, ptr %i.ln, align 8, !tbaa !19
  %wide.load2304 = load <2 x i64>, ptr %i.lo, align 8, !tbaa !19
  %i.lp = sub <2 x i64> %vec.phi2301, %wide.load2303 ; 2 uses
  %i.lq = sub <2 x i64> %vec.phi2302, %wide.load2304 ; 2 uses
  %index.next2305 = add nuw i64 %index2300, 4     ; 2 uses
  %i.lr = icmp eq i64 %index.next2305, %n.vec2298
  br i1 %i.lr, label %middle.block2306, label %vector.body2299, !llvm.loop !176

middle.block2306:                                 ; preds = %vector.body2299
  %bin.rdx2307 = add <2 x i64> %i.lq, %i.lp
  %i.ls = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx2307) ; 2 uses
  %cmp.n2308 = icmp eq i64 %i.lk, %n.vec2298
  br i1 %cmp.n2308, label %.loopexit2311, label %.preheader1299.preheader2369

.preheader1299.preheader2369:                     ; preds = %.preheader1299.preheader, %middle.block2306
  %.03851516.ph = phi i64 [ 0, %.preheader1299.preheader ], [ %n.vec2298, %middle.block2306 ]
  %.03861515.ph = phi i64 [ %.14072037, %.preheader1299.preheader ], [ %i.ls, %middle.block2306 ]
  br label %.preheader1299

.thread1196:                                      ; preds = %bb.cx
  %i.lt = load i64, ptr %.sroa.01119.119401961, align 8, !tbaa !19
  %i.lu = sub nsw i64 %.14072037, %i.lt
  %.pre1698 = load ptr, ptr %i.d, align 8, !tbaa !68
  br label %bb.cz

.preheader1299:                                   ; preds = %.preheader1299.preheader2369, %.preheader1299
  %.03851516 = phi i64 [ %i.ly, %.preheader1299 ], [ %.03851516.ph, %.preheader1299.preheader2369 ] ; 2 uses
  %.03861515 = phi i64 [ %i.lx, %.preheader1299 ], [ %.03861515.ph, %.preheader1299.preheader2369 ]
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01119.119401961, i64 %.03851516
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !19
  %i.lx = sub nsw i64 %.03861515, %i.lw           ; 2 uses
  %i.ly = add nuw i64 %.03851516, 1               ; 2 uses
  %exitcond1677.not = icmp eq i64 %i.ly, %i.lk
  br i1 %exitcond1677.not, label %.loopexit2311, label %.preheader1299, !llvm.loop !177

.loopexit2311:                                    ; preds = %.preheader1299, %middle.block2306
  %.lcssa2275 = phi i64 [ %i.ls, %middle.block2306 ], [ %i.lx, %.preheader1299 ] ; 2 uses
  %.not1233 = icmp eq i64 %i.lk, 1
  %.pre1699 = load ptr, ptr %i.d, align 8, !tbaa !68 ; 3 uses
  br i1 %.not1233, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %.loopexit2311
  %i.lz = getelementptr inbounds nuw i8, ptr %.pre1699, i64 16
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !112
  %i.mb = load i32, ptr %i.j, align 4, !tbaa !53
  %.sroa.speculated1078 = call i32 @llvm.umin.i32(i32 %i.mb, i32 %i.ma)
  %i.mc = zext i32 %.sroa.speculated1078 to i64
  %i.md = sdiv i64 %.14012044, %i.mc
  %i.me = add i64 %i.lk, 1
  %i.mf = mul i64 %i.md, %i.me
  %i.mg = load i32, ptr %i.l, align 4, !tbaa !53
  %i.mh = icmp eq i32 %i.mg, 0
  %i.mi = select i1 %i.mh, i64 2, i64 6
  %i.mj = udiv i64 %i.mf, %i.mi
  %i.mk = sub i64 %.lcssa2275, %i.mj
  br label %bb.cz

bb.cz:                                            ; preds = %.thread1196, %bb.cy, %.loopexit2311
  %i.ml = phi ptr [ %.pre1699, %bb.cy ], [ %.pre1699, %.loopexit2311 ], [ %.pre1698, %.thread1196 ]
  %.2388 = phi i64 [ %i.mk, %bb.cy ], [ %.lcssa2275, %.loopexit2311 ], [ %i.lu, %.thread1196 ] ; 2 uses
  %i.mm = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  store i32 %43, ptr %i.mm, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.mn = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.mo = load i32, ptr %i.i, align 4, !tbaa !75
  invoke fastcc void @_ZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_level(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef %i.mn, ptr noundef %i.ml, ptr noundef nonnull %i.mm, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, i32 noundef %i.mo)
          to label %bb.da unwind label %bb.dd

bb.da:                                            ; preds = %bb.cz
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_0clERSt6vectorI24llama_device_memory_dataSaISF_EE"(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.mp = load i64, ptr %i.n, align 8, !tbaa !19  ; 5 uses
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %bb.dc, label %.preheader1297.a

.preheader1297.a:                                 ; preds = %bb.db
  %i.mr = load ptr, ptr %17, align 8, !tbaa !17   ; 3 uses
  %xtraiter = and i64 %i.mp, 1
  %i.ms = icmp eq i64 %i.mp, 1
  br i1 %i.ms, label %.epil.preheader, label %.preheader1297.new

.preheader1297.new:                               ; preds = %.preheader1297.a
  %unroll_iter = and i64 %i.mp, -2
  br label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.mt = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !93 ; 3 uses
  %i.mv = getelementptr inbounds i8, ptr %i.mu, i64 -24
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !107
  %i.mx = getelementptr inbounds i8, ptr %i.mu, i64 -16
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !108
  %i.mz = add i64 %i.my, %i.mw
  %i.na = getelementptr inbounds i8, ptr %i.mu, i64 -8
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !42
  %i.nc = add i64 %i.mz, %i.nb
  br label %.loopexit1298

bb.dd:                                            ; preds = %bb.cz
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit647

bb.de:                                            ; preds = %bb.da
  %i.ne = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.df:                                            ; preds = %bb.df, %.preheader1297.new
  %.03811518 = phi i64 [ 0, %.preheader1297.new ], [ %i.nz, %bb.df ] ; 3 uses
  %.03821517 = phi i64 [ 0, %.preheader1297.new ], [ %i.ny, %bb.df ]
  %niter = phi i64 [ 0, %.preheader1297.new ], [ %niter.next.1, %bb.df ]
  %i.nf = getelementptr inbounds nuw [40 x i8], ptr %i.mr, i64 %.03811518 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !107
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !108
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !42
  %i.nm = add i64 %i.nh, %.03821517
  %i.nn = add i64 %i.nm, %i.nj
  %i.no = add i64 %i.nn, %i.nl
  %i.np = getelementptr inbounds nuw [40 x i8], ptr %i.mr, i64 %.03811518 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 56
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !107
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 64
  %i.nt = load i64, ptr %i.ns, align 8, !tbaa !108
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !42
  %i.nw = add i64 %i.nr, %i.no
  %i.nx = add i64 %i.nw, %i.nt
  %i.ny = add i64 %i.nx, %i.nv                    ; 3 uses
  %i.nz = add nuw i64 %.03811518, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit1298.loopexit.unr-lcssa, label %bb.df, !llvm.loop !178

.loopexit1298.loopexit.unr-lcssa:                 ; preds = %bb.df
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1298, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit1298.loopexit.unr-lcssa, %.preheader1297.a
  %.03811518.epil.init = phi i64 [ 0, %.preheader1297.a ], [ %i.nz, %.loopexit1298.loopexit.unr-lcssa ]
  %.03821517.epil.init = phi i64 [ 0, %.preheader1297.a ], [ %i.ny, %.loopexit1298.loopexit.unr-lcssa ]
  %lcmp.mod2391 = trunc i64 %i.mp to i1
  call void @llvm.assume(i1 %lcmp.mod2391)
  %i.oa = getelementptr inbounds nuw [40 x i8], ptr %i.mr, i64 %.03811518.epil.init ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !107
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !108
  %i.of = getelementptr inbounds nuw i8, ptr %i.oa, i64 32
  %i.og = load i64, ptr %i.of, align 8, !tbaa !42
  %i.oh = add i64 %i.oc, %.03821517.epil.init
  %i.oi = add i64 %i.oh, %i.oe
  %i.oj = add i64 %i.oi, %i.og
  br label %.loopexit1298

.loopexit1298:                                    ; preds = %.epil.preheader, %.loopexit1298.loopexit.unr-lcssa, %bb.dc
  %.1383 = phi i64 [ %i.nc, %bb.dc ], [ %i.ny, %.loopexit1298.loopexit.unr-lcssa ], [ %i.oj, %.epil.preheader ] ; 4 uses
  %i.ok = icmp sgt i64 %.2388, %.1383
  br i1 %i.ok, label %bb.dg, label %bb.du

bb.dg:                                            ; preds = %.loopexit1298
  %44 = sub nuw i32 %42, %43
  %45 = zext i32 %44 to i64                       ; 2 uses
  %i.ol = sub nsw i64 %.2388, %.1383
  %i.om = mul nuw nsw i64 %i.ol, %45
  %i.on = sub nsw i64 %.14032041, %.1383          ; 2 uses
  %i.oo = sdiv i64 %i.om, %i.on
  %i.op = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !86
  %i.or = trunc i64 %i.oo to i32
  %i.os = add i32 %i.oq, %i.or                    ; 2 uses
  %i.ot = shl i32 %i.aa, 8
  %i.ou = urem i32 %i.os, %i.ot
  %i.ov = sub i32 %i.os, %i.ou
  %.sroa.speculated1073 = call i32 @llvm.umax.i32(i32 %i.ov, i32 %43) ; 2 uses
  store i32 %.sroa.speculated1073, ptr %i.op, align 8, !tbaa !86
  %i.ow = sdiv i64 %i.on, %45
  %i.ox = sub i32 %42, %.sroa.speculated1073
  %i.oy = zext i32 %i.ox to i64
  %i.oz = mul nsw i64 %i.ow, %i.oy
  %i.pa = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.dh unwind label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.pb = icmp sgt i32 %i.pa, 3
  br i1 %i.pb, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.pc = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.dj unwind label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.pd = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !86
  %i.pf = sdiv i64 %i.oz, 1048576
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.pc, i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i32 noundef %42, i32 noundef %i.pe, i64 noundef %i.pf)
          to label %bb.dl unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dt, %bb.ds, %bb.dq, %bb.dp, %bb.do, %bb.dm, %bb.dj, %bb.di, %bb.dg
  %i.pg = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dl:                                            ; preds = %bb.dj, %bb.dh
  %i.ph = load i64, ptr %i.n, align 8, !tbaa !19
  %i.pi = icmp ugt i64 %i.ph, 1
  br i1 %i.pi, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pj = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.dn unwind label %bb.dk

bb.dn:                                            ; preds = %bb.dm
  %i.pk = icmp sgt i32 %i.pj, 3
  br i1 %i.pk, label %bb.do, label %.critedge502

bb.do:                                            ; preds = %bb.dn
  %i.pl = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.dp unwind label %bb.dk

bb.dp:                                            ; preds = %bb.do
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.pl, i32 noundef 2, ptr noundef nonnull @.str.51, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %.critedge502 unwind label %bb.dk

bb.dq:                                            ; preds = %bb.dl
  %i.pm = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.dr unwind label %bb.dk

bb.dr:                                            ; preds = %bb.dq
  %i.pn = icmp sgt i32 %i.pm, 3
  br i1 %i.pn, label %bb.ds, label %.critedge500

bb.ds:                                            ; preds = %bb.dr
  %i.po = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.dt unwind label %bb.dk

bb.dt:                                            ; preds = %bb.ds
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.po, i32 noundef 2, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %.critedge500 unwind label %bb.dk

bb.du:                                            ; preds = %.loopexit1298
  %i.pp = sub nsw i64 %.14032041, %.1383
  %i.pq = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.dv unwind label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.pr = icmp sgt i32 %i.pq, 3
  br i1 %i.pr, label %bb.dw, label %.critedge500

bb.dw:                                            ; preds = %bb.dv
  %i.ps = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.pt = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !86
  %i.pv = sdiv i64 %i.pp, 1048576
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ps, i32 noundef 2, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i32 noundef %42, i32 noundef %i.pu, i64 noundef %i.pv)
          to label %.critedge500 unwind label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.du
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

.critedge500:                                     ; preds = %bb.dt, %bb.dr, %bb.dv, %bb.dx
  %i.px = load ptr, ptr %17, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i642 = icmp eq ptr %i.px, null
  br i1 %.not.i.i.i642, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit643, label %bb.dz

bb.dz:                                            ; preds = %.critedge500
  %i.py = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !21
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = ptrtoint ptr %i.px to i64
  %i.qc = sub i64 %i.qa, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %i.px, i64 noundef %i.qc) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit643

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit643: ; preds = %.critedge500, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.ep

.critedge502:                                     ; preds = %bb.dp, %bb.dn
  %i.qd = load ptr, ptr %17, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i644 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i.i644, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit645, label %bb.ea

bb.ea:                                            ; preds = %.critedge502
  %i.qe = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !21
  %i.qg = ptrtoint ptr %i.qf to i64
  %i.qh = ptrtoint ptr %i.qd to i64
  %i.qi = sub i64 %i.qg, %i.qh
  call void @_ZdlPvm(ptr noundef nonnull %i.qd, i64 noundef %i.qi) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit645

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit645: ; preds = %.critedge502, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.td

bb.eb:                                            ; preds = %bb.dy, %bb.dk, %bb.de
  %.pn = phi { ptr, i32 } [ %i.pg, %bb.dk ], [ %i.pw, %bb.dy ], [ %i.ne, %bb.de ] ; 2 uses
  %i.qj = load ptr, ptr %17, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i646 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i.i646, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit647, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !21
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qj to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qj, i64 noundef %i.qo) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit647

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit647: ; preds = %bb.ec, %bb.eb, %bb.dd
  %.pn.pn = phi { ptr, i32 } [ %i.nd, %bb.dd ], [ %.pn, %bb.eb ], [ %.pn, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.tq

bb.ed:                                            ; preds = %bb.cw
  %i.qp = icmp eq i32 %6, -1
  br i1 %i.qp, label %bb.ee, label %bb.eh

bb.ee:                                            ; preds = %bb.ed
  %i.qq = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ef unwind label %bb.cq

bb.ef:                                            ; preds = %bb.ee
  %i.qr = icmp sgt i32 %i.qq, 3
  br i1 %i.qr, label %bb.eg, label %bb.ep

bb.eg:                                            ; preds = %bb.ef
  %i.qs = invoke noundef ptr @_Z15common_log_mainv()
          to label %.invoke2205 unwind label %bb.cq

bb.eh:                                            ; preds = %bb.ed
  %i.qt = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ei unwind label %bb.cq

bb.ei:                                            ; preds = %bb.eh
  %i.qu = icmp sgt i32 %i.qt, 3
  br i1 %i.qu, label %bb.ej, label %bb.ep

bb.ej:                                            ; preds = %bb.ei
  %i.qv = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.ek unwind label %bb.cq

bb.ek:                                            ; preds = %bb.ej
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.qv, i32 noundef 2, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i32 noundef %42, i32 noundef %43)
          to label %bb.ep unwind label %bb.cq

bb.el:                                            ; preds = %bb.cv
  %i.qw = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.em unwind label %bb.cq

bb.em:                                            ; preds = %bb.el
  %i.qx = icmp sgt i32 %i.qw, 3
  br i1 %i.qx, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.qy = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.eo unwind label %bb.cq

bb.eo:                                            ; preds = %bb.en
  %i.qz = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ra = load i32, ptr %i.qz, align 8, !tbaa !86
  br label %.invoke2205

.invoke2205:                                      ; preds = %bb.eg, %bb.eo
  %i.rb = phi ptr [ %i.qy, %bb.eo ], [ %i.qs, %bb.eg ]
  %i.rc = phi ptr [ @.str.55, %bb.eo ], [ @.str.53, %bb.eg ]
  %i.rd = phi i32 [ %i.ra, %bb.eo ], [ %42, %bb.eg ]
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.rb, i32 noundef 2, ptr noundef nonnull %i.rc, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i32 noundef %i.rd)
          to label %bb.ep unwind label %bb.cq

bb.ep:                                            ; preds = %.invoke2205, %.thread1190, %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit643, %bb.ef, %bb.ek, %bb.ei, %bb.em, %.loopexit2312
  %.sroa.18.32004 = phi ptr [ %.sroa.18.3, %.thread1190 ], [ %.sroa.18.32005, %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit643 ], [ %.sroa.18.32007, %.loopexit2312 ], [ %.sroa.18.32005, %bb.ef ], [ %.sroa.18.32005, %bb.ek ], [ %.sroa.18.32005, %bb.ei ], [ %.sroa.18.32005, %.invoke2205 ], [ %.sroa.18.32005, %bb.em ] ; 12 uses
  %.sroa.01085.31971 = phi ptr [ %.sroa.01085.3, %.thread1190 ], [ %.sroa.01085.31972, %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit643 ], [ %.sroa.01085.31974, %.loopexit2312 ], [ %.sroa.01085.31972, %bb.ef ], [ %.sroa.01085.31972, %bb.ek ], [ %.sroa.01085.31972, %bb.ei ], [ %.sroa.01085.31972, %.invoke2205 ], [ %.sroa.01085.31972, %bb.em ] ; 12 uses
  %i.re = load i64, ptr %i.n, align 8, !tbaa !19  ; 3 uses
  %i.rf = icmp eq i64 %i.re, 0
  br i1 %i.rf, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.rg = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, ptr noundef nonnull @.str.56)
          to label %.invoke2203 unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.rh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.rg) #24
  br label %bb.tq

bb.es:                                            ; preds = %bb.ep
  %i.ri = load ptr, ptr %i.d, align 8, !tbaa !68  ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !112
  %i.rl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !112
  %.not429 = icmp eq i32 %i.rk, %i.rm
  br i1 %.not429, label %bb.fb, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.rn = call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.ro = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rq = load i32, ptr %i.rp, align 8, !tbaa !112
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i32 noundef %i.rq) #24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull @.str.57, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.eu unwind label %bb.ex

bb.eu:                                            ; preds = %bb.et
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.58)
          to label %bb.ev unwind label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.rn, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.ew unwind label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV27common_params_fit_exception, i64 16), ptr %i.rn, align 8, !tbaa !64
  invoke void @__cxa_throw(ptr nonnull %i.rn, ptr nonnull @_ZTI27common_params_fit_exception, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.ua unwind label %bb.ez

bb.ex:                                            ; preds = %bb.et
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655

bb.ey:                                            ; preds = %bb.eu
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652

bb.ez:                                            ; preds = %bb.ev, %bb.ew
  %.0378 = phi i1 [ false, %bb.ew ], [ true, %bb.ev ] ; 2 uses
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = load ptr, ptr %18, align 8, !tbaa !104  ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650: ; preds = %bb.ez
  %i.rx = load i64, ptr %i.rv, align 8, !tbaa !105
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.ry) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650, %bb.ey
  %.1379 = phi i1 [ true, %bb.ey ], [ %.0378, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650 ], [ %.0378, %bb.ez ] ; 2 uses
  %.pn482 = phi { ptr, i32 } [ %i.rs, %bb.ey ], [ %i.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i650 ], [ %i.rt, %bb.ez ] ; 2 uses
  %i.rz = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !105
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653, %bb.ex
  %.2380 = phi i1 [ true, %bb.ex ], [ %.1379, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653 ], [ %.1379, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652 ]
  %.pn482.pn = phi { ptr, i32 } [ %i.rr, %bb.ex ], [ %.pn482, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i653 ], [ %.pn482, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit652 ] ; 2 uses
  %i.se = load ptr, ptr %20, align 8, !tbaa !104  ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.sg = icmp eq ptr %i.se, %i.sf
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655
  %i.sh = load i64, ptr %i.sf, align 8, !tbaa !105
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.se, i64 noundef %i.si) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i656
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br i1 %.2380, label %bb.fa, label %bb.tq

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit658
  call void @__cxa_free_exception(ptr %i.rn) #24
  br label %bb.tq

bb.fb:                                            ; preds = %bb.es
  %.not430 = icmp eq i64 %i.re, 1
  br i1 %.not430, label %bb.fn, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.sj = load ptr, ptr %i.f, align 8, !tbaa !71
  %.not431 = icmp eq ptr %i.sj, null
  br i1 %.not431, label %bb.fd, label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.sk = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.sk, ptr noundef nonnull @.str.59)
          to label %.invoke2203 unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sk) #24
  br label %bb.tq

bb.ff:                                            ; preds = %bb.fc
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !113 ; 2 uses
  %.not432 = icmp eq ptr %i.sn, null
  br i1 %.not432, label %.loopexit1296, label %.preheader1295

bb.fg:                                            ; preds = %.preheader1295
  %i.so = add nuw i64 %.03771519, 1               ; 2 uses
  %exitcond1679.not = icmp eq i64 %i.so, %i.re
  br i1 %exitcond1679.not, label %.loopexit1296, label %.preheader1295, !llvm.loop !179

.preheader1295:                                   ; preds = %bb.ff, %bb.fg
  %.03771519 = phi i64 [ %i.so, %bb.fg ], [ 0, %bb.ff ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %.03771519
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !114
  %i.sr = fcmp une float %i.sq, 0.000000e+00
  br i1 %i.sr, label %bb.fh, label %bb.fg

bb.fh:                                            ; preds = %.preheader1295
  %i.ss = call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ss, ptr noundef nonnull @.str.60)
          to label %bb.fi unwind label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV27common_params_fit_exception, i64 16), ptr %i.ss, align 8, !tbaa !64
  invoke void @__cxa_throw(ptr nonnull %i.ss, ptr nonnull @_ZTI27common_params_fit_exception, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.ua unwind label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.st = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ss) #24
  br label %bb.tq

bb.fk:                                            ; preds = %bb.fi
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %bb.tq

.loopexit1296:                                    ; preds = %bb.fg, %bb.ff
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ri, i64 20
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !196
  %i.sx = icmp eq i32 %i.sw, 2
  br i1 %i.sx, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %.loopexit1296
  %i.sy = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.sy, ptr noundef nonnull @.str.61)
          to label %.invoke2203 unwind label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.sz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.sy) #24
  br label %bb.tq

bb.fn:                                            ; preds = %.loopexit1296, %bb.fb
  %i.ta = load ptr, ptr %i.g, align 8, !tbaa !72
  %.not433 = icmp eq ptr %i.ta, null
  br i1 %.not433, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.88) #25
  unreachable

_ZNKSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 288                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 32025597350190193)
  %i.l = select i1 %i.j, i64 32025597350190193, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 288
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EEC2EOS6_(ptr noundef nonnull align 8 dereferenceable(288) %i.q, ptr noundef nonnull align 8 dereferenceable(288) %2) #24
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EEC2EOS6_(ptr noundef nonnull align 8 dereferenceable(288) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(288) %.0911.i.i.i) #24
  tail call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %.0911.i.i.i) #24
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 288 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 288 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !395

_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 288 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 3 uses
  tail call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EEC2EOS6_(ptr noundef nonnull align 8 dereferenceable(288) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(288) %.0911.i.i.i19) #24
  tail call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EED2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %.0911.i.i.i19) #24
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 288 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 288 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !395

_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !152
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #27
  br label %_ZNSt12_Vector_baseISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !150
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !151
  %i.aa = getelementptr inbounds nuw [288 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !152
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.016 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.01215 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 3 uses
  store ptr %i.b, ptr %.016, align 8, !tbaa !102
  %i.c = load ptr, ptr %.01215, align 8, !tbaa !104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !106  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !19
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.016, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.016, align 8, !tbaa !104
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.h, ptr %i.b, align 8, !tbaa !105
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !105
  store i8 %i.j, ptr %i.i, align 1, !tbaa !105
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !106
  %i.m = load ptr, ptr %.016, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !396

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #29
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !20}
!1 = distinct !{!1, !20}
!2 = distinct !{!2, !20}
!3 = distinct !{!3, !20}
!4 = distinct !{!4, !20}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS24llama_device_memory_data", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!15, !14, i64 16}
!22 = !{!"_ZTS27llama_memory_breakdown_data", !18, i64 0, !18, i64 8, !18, i64 16}
!23 = !{!"_ZTS24llama_device_memory_data", !18, i64 0, !18, i64 8, !22, i64 16}
!24 = !{!23, !18, i64 32}
!25 = !{!"_ZTSZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_levelEN11user_data_t3$_0E", !13, i64 0, !13, i64 8}
!26 = !{!"_ZTS14ggml_log_level", !9, i64 0}
!27 = !{!"_ZTSZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_levelE11user_data_t", !25, i64 0, !26, i64 16}
!28 = !{!27, !26, i64 16}
!29 = !{!"_ZTS15llama_load_mode", !9, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"bool", !9, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!27, !13, i64 0}
!34 = !{!27, !13, i64 8}
!35 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!36 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!37 = !{!"_ZTSSt18_Rb_tree_node_base", !35, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!38 = !{!"_ZTSSt15_Rb_tree_header", !37, i64 0, !18, i64 32}
!39 = !{!38, !36, i64 16}
!40 = !{!"p1 _ZTS24ggml_backend_buffer_type", !13, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!22, !18, i64 16}
!43 = !{!23, !18, i64 8}
!44 = !{!23, !18, i64 0}
!45 = !{!"any p2 pointer", !13, i64 0}
!46 = !{!"p2 _ZTS19ggml_backend_device", !45, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIP19ggml_backend_deviceSaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!47, !46, i64 0}
!49 = !{!47, !46, i64 8}
!50 = !{!47, !46, i64 16}
!51 = !{!"p1 _ZTS19ggml_backend_device", !13, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!10, !10, i64 0}
!54 = !{!"p1 _ZTS32llama_model_tensor_buft_override", !13, i64 0}
!55 = !{!"_ZTS16llama_split_mode", !9, i64 0}
!56 = !{!"_ZTS15llama_lazy_mode", !9, i64 0}
!57 = !{!"p1 float", !13, i64 0}
!58 = !{!"p1 _ZTS23llama_model_kv_override", !13, i64 0}
!59 = !{!"_ZTS18llama_model_params", !46, i64 0, !54, i64 8, !10, i64 16, !55, i64 20, !29, i64 24, !56, i64 28, !10, i64 32, !57, i64 40, !13, i64 48, !13, i64 56, !58, i64 64, !31, i64 72, !31, i64 73, !31, i64 74, !31, i64 75, !31, i64 76, !31, i64 77}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!38, !36, i64 8}
!63 = !{!"vtable pointer", !8, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"p1 omnipotent char", !13, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"p1 _ZTS18llama_model_params", !13, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"p1 _ZTS20llama_context_params", !13, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!57, !57, i64 0}
!72 = !{!54, !54, i64 0}
!73 = !{!"p1 _ZTS22common_fit_extra_model", !13, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!26, !26, i64 0}
!76 = !{!"_ZTS18llama_context_type", !9, i64 0}
!77 = !{!"_ZTS23llama_rope_scaling_type", !9, i64 0}
!78 = !{!"_ZTS18llama_pooling_type", !9, i64 0}
!79 = !{!"_ZTS20llama_attention_type", !9, i64 0}
!80 = !{!"_ZTS21llama_flash_attn_type", !9, i64 0}
!81 = !{!"float", !9, i64 0}
!82 = !{!"_ZTS9ggml_type", !9, i64 0}
!83 = !{!"p1 _ZTS24llama_sampler_seq_config", !13, i64 0}
!84 = !{!"p1 _ZTS13llama_context", !13, i64 0}
!85 = !{!"_ZTS20llama_context_params", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !76, i64 36, !77, i64 40, !78, i64 44, !79, i64 48, !80, i64 52, !81, i64 56, !81, i64 60, !81, i64 64, !81, i64 68, !81, i64 72, !81, i64 76, !10, i64 80, !81, i64 84, !13, i64 88, !13, i64 96, !82, i64 104, !82, i64 108, !13, i64 112, !13, i64 120, !31, i64 128, !31, i64 129, !31, i64 130, !31, i64 131, !31, i64 132, !31, i64 133, !83, i64 136, !18, i64 144, !84, i64 152}
!86 = !{!85, !10, i64 0}
!87 = !{!"p2 _ZTS22common_fit_extra_model", !45, i64 0}
!88 = !{!"p1 _ZTSSt6vectorI24llama_device_memory_dataSaIS0_EE", !13, i64 0}
!89 = !{!"p1 int", !13, i64 0}
!90 = !{!"p2 _ZTS20llama_context_params", !45, i64 0}
!91 = !{!13, !13, i64 0}
!92 = !{!"p1 _ZTSSt6vectorIP19ggml_backend_deviceSaIS1_EE", !13, i64 0}
!93 = !{!14, !14, i64 0}
!94 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!96 = !{!95, !94, i64 0}
!97 = !{!95, !94, i64 8}
!98 = !{!95, !94, i64 16}
!99 = !{!46, !46, i64 0}
!100 = !{!94, !94, i64 0}
!101 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !65, i64 0}
!102 = !{!101, !65, i64 0}
!103 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !101, i64 0, !18, i64 8, !9, i64 16}
!104 = !{!103, !65, i64 0}
!105 = !{!9, !9, i64 0}
!106 = !{!103, !18, i64 8}
!107 = !{!22, !18, i64 0}
!108 = !{!22, !18, i64 8}
!109 = !{!23, !18, i64 16}
!110 = !{!"llvm.loop.isvectorized", i32 1}
!111 = !{!"llvm.loop.unroll.runtime.disable"}
!112 = !{!59, !10, i64 16}
!113 = !{!59, !57, i64 40}
!114 = !{!81, !81, i64 0}
!115 = !{!59, !54, i64 8}
!116 = !{!"_ZTS32llama_model_tensor_buft_override", !65, i64 0, !40, i64 8}
!117 = !{!116, !65, i64 0}
!118 = !{!116, !40, i64 8}
!119 = !{!"p1 long", !13, i64 0}
!120 = !{!"p2 float", !45, i64 0}
!121 = !{!"p2 _ZTS32llama_model_tensor_buft_override", !45, i64 0}
!122 = !{!"p2 _ZTS18llama_model_params", !45, i64 0}
!123 = !{!"p2 omnipotent char", !45, i64 0}
!124 = !{!"branch_weights", i32 1, i32 1048575}
!125 = !{!"p2 _ZTS24ggml_backend_buffer_type", !45, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIP24ggml_backend_buffer_typeSaIS1_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!126, !125, i64 0}
!128 = !{!126, !125, i64 8}
!129 = !{!126, !125, i64 16}
!130 = !{!"p1 _ZTSZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_t", !13, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE17_Vector_impl_dataE", !130, i64 0, !130, i64 8, !130, i64 16}
!132 = !{!131, !130, i64 0}
!133 = !{!131, !130, i64 16}
!134 = !{!"_ZTS23common_layer_fraction_t", !9, i64 0}
!135 = !{!"_ZTSZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_t", !10, i64 0, !10, i64 4, !134, i64 8}
!136 = !{!135, !134, i64 8}
!137 = !{!131, !130, i64 8}
!138 = !{!135, !10, i64 0}
!139 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!140 = !{!134, !134, i64 0}
!141 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !140}
!142 = !{!135, !10, i64 4}
!143 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!144 = !{!143, !119, i64 0}
!145 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!146 = !{!143, !119, i64 8}
!147 = !{!143, !119, i64 16}
!148 = !{!"p1 _ZTSSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EE", !13, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm9EESaIS7_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!150 = !{!149, !148, i64 0}
!151 = !{!149, !148, i64 8}
!152 = !{!149, !148, i64 16}
!153 = !{i64 8}
!154 = !{i64 4}
!155 = !{!37, !36, i64 24}
!156 = !{!37, !36, i64 16}
end_hunk_2
