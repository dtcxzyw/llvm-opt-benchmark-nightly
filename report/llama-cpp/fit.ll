Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/fit?download=true
inline.NumInlined: 1715
inline.NumDeleted: 635
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_level:bb.a
  ret void

bb.bp:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.split136, %.split136.us, %.split, %.split.us, %.split139.us, %bb.av, %bb.am, %bb.ar, %bb.y, %bb.z, %bb.ac, %bb.bg
  %.pn104.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.av ], [ %i.es, %bb.bg ], [ %i.cr, %bb.ac ], [ %i.de, %bb.am ], [ %i.ch, %bb.y ], [ %i.ci, %bb.z ], [ %.pn99, %bb.ar ], [ %i.bl, %.split136.us ], [ %i.bk, %.split.us ], [ %i.bm, %.split139.us ], [ %i.ca, %.split ], [ %i.cd, %.split136 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt3mapIP24ggml_backend_buffer_type27llama_memory_breakdown_dataSt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #24
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.r
  %.pn104.pn.pn.pn = phi { ptr, i32 } [ %.pn104.pn.pn, %bb.bp ], [ %i.bo, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fb = ptrtoint ptr %i.aa to i64
  %i.fc = ptrtoint ptr %i.z to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.fd) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit: ; preds = %bb.br, %bb.bq, %bb.h, %bb.d
  %.pn112 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.r, %bb.h ], [ %.pn104.pn.pn.pn, %bb.br ], [ %.pn104.pn.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  resume { ptr, i32 } %.pn112

bb.bs:                                            ; preds = %bb.x
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_Z17common_fit_paramsPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i64 @llama_time_us()
  invoke fastcc void @_ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = icmp sgt i32 %i.b, 3
  br i1 %i.c, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.d = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.d, i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__._Z17common_fit_paramsPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %bb.r unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI27common_params_fit_exception
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.f = extractvalue { ptr, i32 } %i.e, 0        ; 2 uses
  %i.g = extractvalue { ptr, i32 } %i.e, 1        ; 2 uses
  %i.h = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI27common_params_fit_exception) #24
  %i.i = icmp eq i32 %i.g, %i.h
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
  %i.aa = phi i32 [ %.sroa.speculated1166, %bb.f ], [ 1, %bb.e ] ; 4 uses
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
  %i.ar = zext i32 %i.aq to i64
  %i.as = zext i32 %i.aa to i64                   ; 2 uses
  %i.at = mul nuw i64 %i.ar, %i.as
  %.sroa.speculated1159 = call i64 @llvm.umin.i64(i64 %i.at, i64 4294967295) ; 3 uses
  %i.au = trunc nuw i64 %.sroa.speculated1159 to i32 ; 7 uses
  %i.av = zext i32 %6 to i64
  %i.aw = mul nuw i64 %i.as, %i.av                ; 2 uses
  %.sroa.speculated1145 = call i64 @llvm.umin.i64(i64 %i.aw, i64 4294967295) ; 2 uses
  %i.ax = trunc nuw i64 %.sroa.speculated1145 to i32 ; 3 uses
  br i1 %i.ac, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !70
  store i32 %i.au, ptr %i.ay, align 8, !tbaa !86
  %i.az = icmp ugt i32 %i.aa, 1
  br i1 %i.az, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.ba = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bb = icmp sgt i32 %i.ba, 3
  br i1 %i.bb, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bc = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.bc, i32 noundef 2, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i32 noundef %i.au, i32 noundef %i.aa)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.l
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit1011

bb.t:                                             ; preds = %bb.y, %bb.r, %bb.q, %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.tu

bb.u:                                             ; preds = %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !66
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.bh = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.bi = load i32, ptr %i.i, align 4, !tbaa !75
  invoke fastcc void @_ZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_level(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, i32 noundef %i.bi)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bj = load ptr, ptr %13, align 16, !tbaa !17  ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !21
  %i.bm = load <2 x ptr>, ptr %14, align 16, !tbaa !93
  store <2 x ptr> %i.bm, ptr %13, align 16, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !21
  store ptr %i.bo, ptr %i.bk, align 16, !tbaa !21
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.br) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.tu

bb.y:                                             ; preds = %bb.n, %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit, %bb.m
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_0clERSt6vectorI24llama_device_memory_dataSaISF_EE"(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.z unwind label %bb.t

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 2 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !48   ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
end_hunk_0
begin_hunk_1_@_ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level:bb.a
  %i.amv = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.lq unwind label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %.val551 = load ptr, ptr %27, align 8, !tbaa !132
  %i.amw = getelementptr inbounds nuw [12 x i8], ptr %.val551, i64 %indvars.iv
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !138
  %i.amy = trunc nuw nsw i64 %indvars.iv to i32
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.amv, i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i32 noundef %i.amy, i32 noundef %i.amx)
          to label %.loopexit1269 unwind label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.ln, %bb.lm, %bb.ll
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %bb.lt

.loopexit1269:                                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit788, %bb.it, %bb.lo, %bb.lq
  %i.ana = phi ptr [ %i.adz, %bb.lq ], [ %i.adz, %bb.it ], [ %i.adz, %bb.lo ], [ %i.ama, %_ZNSt6vectorIlSaIlEED2Ev.exit788 ]
  %.val5831715 = phi ptr [ %i.ady, %bb.lq ], [ %i.ady, %bb.it ], [ %i.ady, %bb.lo ], [ %.val5532406, %_ZNSt6vectorIlSaIlEED2Ev.exit788 ]
  %i.anb = load ptr, ptr %30, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i792 = icmp eq ptr %i.anb, null
  br i1 %.not.i.i.i792, label %_ZNSt6vectorIlSaIlEED2Ev.exit793, label %bb.ls

bb.ls:                                            ; preds = %.loopexit1269
  %i.anc = load ptr, ptr %i.acz, align 8, !tbaa !147
  %i.and = ptrtoint ptr %i.anc to i64
  %i.ane = ptrtoint ptr %i.anb to i64
  %i.anf = sub i64 %i.and, %i.ane
  call void @_ZdlPvm(ptr noundef nonnull %i.anb, i64 noundef %i.anf) #27
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit793

_ZNSt6vectorIlSaIlEED2Ev.exit793:                 ; preds = %.loopexit1269, %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  br label %bb.lv

bb.lt:                                            ; preds = %bb.is, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit791, %bb.lr
  %i.ang = phi ptr [ %i.adz, %bb.lr ], [ %i.amq, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit791 ], [ %i.adz, %bb.is ] ; 2 uses
  %.val5532410 = phi ptr [ %i.ady, %bb.lr ], [ %.val5532411, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit791 ], [ %i.ady, %bb.is ] ; 2 uses
  %.pn462.pn.pn.pn = phi { ptr, i32 } [ %i.amz, %bb.lr ], [ %.pn462.pn, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit791 ], [ %i.afn, %bb.is ] ; 2 uses
  %i.anh = load ptr, ptr %30, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i794 = icmp eq ptr %i.anh, null
  br i1 %.not.i.i.i794, label %bb.lz, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.ani = load ptr, ptr %i.acz, align 8, !tbaa !147
  %i.anj = ptrtoint ptr %i.ani to i64
  %i.ank = ptrtoint ptr %i.anh to i64
  %i.anl = sub i64 %i.anj, %i.ank
  call void @_ZdlPvm(ptr noundef nonnull %i.anh, i64 noundef %i.anl) #27
  br label %bb.lz

bb.lv:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit793, %bb.ik
  %i.anm = phi ptr [ %i.ana, %_ZNSt6vectorIlSaIlEED2Ev.exit793 ], [ %i.adz, %bb.ik ] ; 2 uses
  %.val585 = phi ptr [ %.val5831715, %_ZNSt6vectorIlSaIlEED2Ev.exit793 ], [ %i.ady, %bb.ik ] ; 3 uses
  %i.ann = load ptr, ptr %13, align 16, !tbaa !17
  %i.ano = getelementptr inbounds nuw [40 x i8], ptr %i.ann, i64 %indvars.iv
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ano, i64 8
  %i.anq = load i64, ptr %i.anp, align 8, !tbaa !43
  %i.anr = load ptr, ptr %28, align 8, !tbaa !144
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %i.anr, i64 %indvars.iv
  %i.ant = load i64, ptr %i.ans, align 8, !tbaa !19
  %i.anu = sub nsw i64 %i.anq, %i.ant
  %i.anv = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.lw unwind label %.thread2102

bb.lw:                                            ; preds = %bb.lv
  %i.anw = icmp sgt i32 %i.anv, 3
  br i1 %i.anw, label %bb.lx, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit797

bb.lx:                                            ; preds = %bb.lw
  %i.anx = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.ly unwind label %.thread2102

bb.ly:                                            ; preds = %bb.lx
  %i.any = load ptr, ptr %15, align 8, !tbaa !96
  %i.anz = getelementptr inbounds nuw [32 x i8], ptr %i.any, i64 %indvars.iv
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !104
  %.val550 = load ptr, ptr %27, align 8, !tbaa !132
  %i.aob = getelementptr inbounds nuw [12 x i8], ptr %.val550, i64 %indvars.iv
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !138
  %i.aod = load ptr, ptr %28, align 8, !tbaa !144
  %i.aoe = getelementptr inbounds nuw [8 x i8], ptr %i.aod, i64 %indvars.iv
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !19
  %i.aog = sdiv i64 %i.aof, 1048576
  %i.aoh = sdiv i64 %i.anu, 1048576
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.anx, i32 noundef 2, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, ptr noundef %i.aoa, i32 noundef %i.aoc, i64 noundef %i.aog, i64 noundef %i.aoh)
          to label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit797 unwind label %.thread2102

.thread2102:                                      ; preds = %bb.lv, %bb.lx, %bb.ly
  %i.aoi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ma

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit797: ; preds = %bb.ly, %bb.lw
  %i.aoj = ptrtoint ptr %i.anm to i64
  %i.aok = ptrtoint ptr %.val585 to i64
  %i.aol = sub i64 %i.aoj, %i.aok
  call void @_ZdlPvm(ptr noundef nonnull %.val585, i64 noundef %i.aol) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aom = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next1683 = add nsw i64 %indvars.iv1682, -1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.aom, label %bb.ih, label %._crit_edge1553, !llvm.loop !189

bb.lz:                                            ; preds = %bb.ir, %bb.lt, %bb.lu
  %i.aon = phi ptr [ %i.adz, %bb.ir ], [ %i.ang, %bb.lt ], [ %i.ang, %bb.lu ]
  %.val5532409 = phi ptr [ %i.ady, %bb.ir ], [ %.val5532410, %bb.lt ], [ %.val5532410, %bb.lu ] ; 2 uses
  %.pn462.pn.pn.pn.pn = phi { ptr, i32 } [ %i.afm, %bb.ir ], [ %.pn462.pn.pn.pn, %bb.lt ], [ %.pn462.pn.pn.pn, %bb.lu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #24
  %.not.i.i.i798 = icmp eq ptr %.val5532409, null
  br i1 %.not.i.i.i798, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit799, label %bb.ma

bb.ma:                                            ; preds = %.thread2102, %bb.lz
  %i.aoo = phi ptr [ %i.anm, %.thread2102 ], [ %i.aon, %bb.lz ]
  %.pn462.pn.pn.pn.pn.pn2113 = phi { ptr, i32 } [ %i.aoi, %.thread2102 ], [ %.pn462.pn.pn.pn.pn, %bb.lz ]
  %.val5832112 = phi ptr [ %.val585, %.thread2102 ], [ %.val5532409, %bb.lz ] ; 2 uses
  %i.aop = ptrtoint ptr %i.aoo to i64
  %i.aoq = ptrtoint ptr %.val5832112 to i64
  %i.aor = sub i64 %i.aop, %i.aoq
  call void @_ZdlPvm(ptr noundef nonnull %.val5832112, i64 noundef %i.aor) #27
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit799

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit799: ; preds = %.loopexit1278, %.loopexit.split-lp1279, %bb.ma, %bb.lz
  %.pn462.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn462.pn.pn.pn.pn.pn2113, %bb.ma ], [ %.pn462.pn.pn.pn.pn, %bb.lz ], [ %lpad.loopexit1280, %.loopexit1278 ], [ %lpad.loopexit.split-lp1281, %.loopexit.split-lp1279 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.ti

bb.mb:                                            ; preds = %._crit_edge1553
  %i.aos = load ptr, ptr %i.d, align 8, !tbaa !68
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_2clERKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EERS1_"(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(80) %i.aos)
          to label %bb.sy unwind label %bb.ic

bb.mc:                                            ; preds = %._crit_edge1553
  %i.aot = load i64, ptr %i.n, align 8, !tbaa !19 ; 3 uses
  %i.aou = trunc i64 %i.aot to i32
  %.03161554 = add i32 %i.aou, -1                 ; 2 uses
  %i.aov = icmp sgt i32 %.03161554, -1
  br i1 %i.aov, label %.lr.ph1558, label %._crit_edge1561

.lr.ph1558:                                       ; preds = %bb.mc
  %.val549 = load ptr, ptr %27, align 8, !tbaa !132 ; 2 uses
  %i.aow = zext nneg i32 %.03161554 to i64        ; 2 uses
  %i.aox = getelementptr inbounds nuw [12 x i8], ptr %.val549, i64 %i.aow
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !138
  %.not4422290 = icmp eq i32 %i.aoy, 0
  br i1 %.not4422290, label %._crit_edge1559, label %.lr.ph2292, !llvm.loop !190

.lr.ph2292:                                       ; preds = %.lr.ph1558
  br label %bb.md, !llvm.loop !190

bb.md:                                            ; preds = %.lr.ph2292, %bb.me
  %indvars.iv16872291 = phi i64 [ %i.aow, %.lr.ph2292 ], [ %indvars.iv.next1688, %bb.me ] ; 3 uses
  %i.aoz = icmp sgt i64 %indvars.iv16872291, 0
  br i1 %i.aoz, label %bb.me, label %._crit_edge1561, !llvm.loop !190

bb.me:                                            ; preds = %bb.md
  %indvars.iv.next1688 = add nsw i64 %indvars.iv16872291, -1 ; 2 uses
  %i.apa = getelementptr inbounds nuw [12 x i8], ptr %.val549, i64 %indvars.iv.next1688
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !138
  %.not442 = icmp eq i32 %i.apb, 0
  br i1 %.not442, label %.._crit_edge1559_crit_edge, label %bb.md, !llvm.loop !190

.._crit_edge1559_crit_edge:                       ; preds = %bb.me
  br label %._crit_edge1559, !llvm.loop !190

._crit_edge1559:                                  ; preds = %.._crit_edge1559_crit_edge, %.lr.ph1558
  %.03171555.lcssa = phi i64 [ %indvars.iv16872291, %.._crit_edge1559_crit_edge ], [ %i.aot, %.lr.ph1558 ]
  br label %._crit_edge1561, !llvm.loop !190

._crit_edge1561:                                  ; preds = %bb.md, %._crit_edge1559, %bb.mc
  %.0317.lcssa = phi i64 [ %.03171555.lcssa, %._crit_edge1559 ], [ %i.aot, %bb.mc ], [ 0, %bb.md ] ; 3 uses
  %i.apc = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.mf unwind label %bb.mi

bb.mf:                                            ; preds = %._crit_edge1561
  %i.apd = icmp sgt i32 %i.apc, 3
  br i1 %i.apd, label %bb.mg, label %bb.mj

bb.mg:                                            ; preds = %bb.mf
  %i.ape = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.mh unwind label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ape, i32 noundef 2, ptr noundef nonnull @.str.75, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %bb.mj unwind label %bb.mi

bb.mi:                                            ; preds = %._crit_edge1587, %bb.mh, %bb.mg, %._crit_edge1561
  %i.apf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ti

bb.mj:                                            ; preds = %bb.mh, %bb.mf
  %i.apg = load i64, ptr %i.n, align 8            ; 3 uses
  %i.aph = icmp ult i64 %.0317.lcssa, %i.apg
  br i1 %i.aph, label %.lr.ph1582, label %.preheader

.lr.ph1582:                                       ; preds = %bb.mj
  %i.api = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.apq = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.apv = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.apw = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 6 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %41, i64 16
  %i.aqa = getelementptr inbounds nuw i8, ptr %40, i64 16
  br label %bb.mk

.preheader:                                       ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974, %bb.mj
  %i.aqb = phi i64 [ %i.apg, %bb.mj ], [ %i.bhc, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ]
  %.1.lcssa = phi i64 [ %.0317.lcssa, %bb.mj ], [ %.6, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ]
  %.01584 = add i64 %.1.lcssa, 1                  ; 2 uses
  %i.aqc = icmp ult i64 %.01584, %i.aqb
  br i1 %i.aqc, label %.lr.ph1586, label %._crit_edge1587

.lr.ph1586:                                       ; preds = %.preheader
  %i.aqd = load ptr, ptr %13, align 16, !tbaa !17
  %.val511 = load ptr, ptr %27, align 8
  br label %bb.ss

bb.mk:                                            ; preds = %.lr.ph1582, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974
  %i.aqe = phi i64 [ %i.apg, %.lr.ph1582 ], [ %i.bhc, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ] ; 3 uses
  %.03151579 = phi i64 [ 0, %.lr.ph1582 ], [ %i.bha, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ] ; 37 uses
  %.11578 = phi i64 [ %.0317.lcssa, %.lr.ph1582 ], [ %.6, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit974 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  %.val10.i800 = load ptr, ptr %27, align 8, !tbaa !132 ; 6 uses
  %.val11.i801 = load ptr, ptr %i.aca, align 8, !tbaa !137 ; 4 uses
  %i.aqf = ptrtoint ptr %.val11.i801 to i64
  %i.aqg = ptrtoint ptr %.val10.i800 to i64
  %i.aqh = sub i64 %i.aqf, %i.aqg                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %.not.i.i.i.i802 = icmp eq ptr %.val11.i801, %.val10.i800
  br i1 %.not.i.i.i.i802, label %.noexc814.thread, label %bb.ml

.noexc814.thread:                                 ; preds = %bb.mk
  %i.aqi = getelementptr inbounds nuw i8, ptr null, i64 %i.aqh
  store i64 0, ptr %33, align 8
  store ptr %i.aqi, ptr %i.apj, align 8, !tbaa !133
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815

bb.ml:                                            ; preds = %bb.mk
  %i.aqj = sdiv exact i64 %i.aqh, 12
  %i.aqk = icmp ugt i64 %i.aqj, 768614336404564650
  br i1 %i.aqk, label %.noexc.i.i812, label %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i803, !prof !139

.noexc.i.i812:                                    ; preds = %bb.ml
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc813 unwind label %.loopexit.split-lp1253

.noexc813:                                        ; preds = %.noexc.i.i812
  unreachable

_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i803: ; preds = %bb.ml
  %i.aql = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqh) #26
          to label %.noexc814 unwind label %.loopexit1252 ; 4 uses

.noexc814:                                        ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i803
  store ptr %i.aql, ptr %33, align 8, !tbaa !132
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqh
  store ptr %i.aqm, ptr %i.apj, align 8, !tbaa !133
  br label %.lr.ph.i.i.i.i.i807

.lr.ph.i.i.i.i.i807:                              ; preds = %.noexc814, %.lr.ph.i.i.i.i.i807
  %.09.i.i.i.i.i808 = phi ptr [ %i.aqo, %.lr.ph.i.i.i.i.i807 ], [ %i.aql, %.noexc814 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i809 = phi ptr [ %i.aqn, %.lr.ph.i.i.i.i.i807 ], [ %.val10.i800, %.noexc814 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i808, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.06.08.i.i.i.i.i809, i64 12, i1 false), !tbaa.struct !141
  %i.aqn = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i809, i64 12 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i808, i64 12 ; 2 uses
  %.not.i.i.i.i.i810 = icmp eq ptr %i.aqn, %.val11.i801
  br i1 %.not.i.i.i.i.i810, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815, label %.lr.ph.i.i.i.i.i807, !llvm.loop !186

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815: ; preds = %.lr.ph.i.i.i.i.i807, %.noexc814.thread
  %i.aqp = phi ptr [ null, %.noexc814.thread ], [ %i.aql, %.lr.ph.i.i.i.i.i807 ] ; 4 uses
  %.0.lcssa.i.i.i.i.i811 = phi ptr [ null, %.noexc814.thread ], [ %i.aqo, %.lr.ph.i.i.i.i.i807 ]
  store ptr %.0.lcssa.i.i.i.i.i811, ptr %i.api, align 8, !tbaa !137
  %i.aqq = icmp ult i64 %.11578, %i.aqe
  %i.aqr = add i64 %i.aqe, -1                     ; 4 uses
  br i1 %i.aqq, label %.lr.ph1564, label %._crit_edge1565

.lr.ph1564:                                       ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815
  %i.aqs = getelementptr inbounds nuw [12 x i8], ptr %i.aqp, i64 %.03151579 ; 2 uses
  br label %bb.mm

._crit_edge1565:                                  ; preds = %bb.mm, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit815
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_3clES0_RKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EE"(ptr dead_on_unwind noalias writable align 8 %34, ptr noundef nonnull align 8 dereferenceable(88) %23, ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.mn unwind label %bb.mr

.loopexit1252:                                    ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i803
  %lpad.loopexit1254 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit978

.loopexit.split-lp1253:                           ; preds = %.noexc.i.i812
  %lpad.loopexit.split-lp1255 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit978

bb.mm:                                            ; preds = %.lr.ph1564, %bb.mm
  %.03141563 = phi i64 [ %.11578, %.lr.ph1564 ], [ %i.are, %bb.mm ] ; 4 uses
  %i.aqt = icmp uge i64 %.03141563, %i.aqr
  %i.aqu = getelementptr inbounds nuw [12 x i8], ptr %i.aqp, i64 %.03141563
  %i.aqv = load i32, ptr %i.aqu, align 4, !tbaa !138
  %i.aqw = sext i1 %i.aqt to i32
  %i.aqx = add i32 %i.aqv, %i.aqw                 ; 2 uses
  %i.aqy = load i32, ptr %i.aqs, align 4, !tbaa !138
  %i.aqz = add i32 %i.aqy, %i.aqx
  store i32 %i.aqz, ptr %i.aqs, align 4, !tbaa !138
  %i.ara = getelementptr inbounds nuw [12 x i8], ptr %i.aqp, i64 %.03141563 ; 3 uses
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !138
  %i.arc = sub i32 %i.arb, %i.aqx
  store i32 %i.arc, ptr %i.ara, align 4, !tbaa !138
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 4
  store i32 0, ptr %i.ard, align 4, !tbaa !142
  %i.are = add nuw i64 %.03141563, 1              ; 2 uses
  %exitcond1690.not = icmp eq i64 %i.are, %i.aqe
  br i1 %exitcond1690.not, label %._crit_edge1565, label %bb.mm, !llvm.loop !191

bb.mn:                                            ; preds = %._crit_edge1565
  %i.arf = load ptr, ptr %34, align 8, !tbaa !144
  %i.arg = getelementptr inbounds nuw [8 x i8], ptr %i.arf, i64 %.03151579
  %i.arh = load i64, ptr %i.arg, align 8, !tbaa !19
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01050.0.lcssa20562065207020802086, i64 %.03151579 ; 6 uses
  %i.arj = load i64, ptr %i.ari, align 8, !tbaa !19
  %i.ark = icmp sgt i64 %i.arh, %i.arj
  br i1 %i.ark, label %bb.mo, label %bb.pm

bb.mo:                                            ; preds = %bb.mn
  %i.arl = getelementptr inbounds nuw [12 x i8], ptr %i.aqp, i64 %.03151579 ; 2 uses
  %.val508 = load i32, ptr %i.arl, align 4, !tbaa !138
  %i.arm = getelementptr i8, ptr %i.arl, i64 4
  %.val509 = load i32, ptr %i.arm, align 4, !tbaa !142
  %i.arn = getelementptr inbounds nuw [12 x i8], ptr %.val10.i800, i64 %.03151579 ; 2 uses
  %.val506 = load i32, ptr %i.arn, align 4, !tbaa !138
  %i.aro = getelementptr i8, ptr %i.arn, i64 4
  %.val507 = load i32, ptr %i.aro, align 4, !tbaa !142
  %i.arp = add i32 %.val509, %.val506
  %i.arq = sub i32 %.val508, %i.arp
  %i.arr = add i32 %i.arq, %.val507               ; 2 uses
  %i.ars = icmp ugt i32 %i.arr, 1
  br i1 %i.ars, label %.lr.ph1576, label %.loopexit1247

.lr.ph1576:                                       ; preds = %bb.mo, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930
  %.val5311723 = phi ptr [ %.val531, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %.val10.i800, %bb.mo ] ; 15 uses
  %.val11.i819 = phi ptr [ %.val11.i8191718, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %.val11.i801, %bb.mo ] ; 6 uses
  %.03131574 = phi i32 [ %i.ayr, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %i.arr, %bb.mo ] ; 2 uses
  %.21573 = phi i64 [ %.3, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ], [ %.11578, %bb.mo ] ; 5 uses
  %i.art = zext i32 %.03131574 to i64
  %i.aru = load i64, ptr %i.ari, align 8, !tbaa !19
  %i.arv = load ptr, ptr %28, align 8, !tbaa !144
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.arv, i64 %.03151579
  %i.arx = load i64, ptr %i.arw, align 8, !tbaa !19 ; 2 uses
  %i.ary = sub nsw i64 %i.aru, %i.arx
  %i.arz = mul nsw i64 %i.ary, %i.art
  %i.asa = load ptr, ptr %34, align 8, !tbaa !144
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %.03151579
  %i.asc = load i64, ptr %i.asb, align 8, !tbaa !19
  %i.asd = sub nsw i64 %i.asc, %i.arx
  %i.ase = sdiv i64 %i.arz, %i.asd
  %i.asf = trunc i64 %i.ase to i32
  %.sroa.speculated1023 = call i32 @llvm.umax.i32(i32 %i.asf, i32 1)
  %i.asg = add i32 %.03131574, -1
  %.sroa.speculated1018 = call i32 @llvm.umin.i32(i32 %i.asg, i32 %.sroa.speculated1023)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #24
  %i.ash = ptrtoint ptr %.val11.i819 to i64
  %i.asi = ptrtoint ptr %.val5311723 to i64       ; 2 uses
  %i.asj = sub i64 %i.ash, %i.asi                 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %35, i8 0, i64 24, i1 false)
  %.not.i.i.i.i820 = icmp eq ptr %.val11.i819, %.val5311723
  br i1 %.not.i.i.i.i820, label %.noexc832.thread, label %bb.mp

.noexc832.thread:                                 ; preds = %.lr.ph1576
  %i.ask = getelementptr inbounds nuw i8, ptr null, i64 %i.asj ; 2 uses
  store i64 0, ptr %35, align 8
  store ptr %i.ask, ptr %i.apl, align 8, !tbaa !133
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833

bb.mp:                                            ; preds = %.lr.ph1576
  %i.asl = sdiv exact i64 %i.asj, 12
  %i.asm = icmp ugt i64 %i.asl, 768614336404564650
  br i1 %i.asm, label %.noexc.i.i830, label %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i821, !prof !139

.noexc.i.i830:                                    ; preds = %bb.mp
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc831 unwind label %.loopexit.split-lp

.noexc831:                                        ; preds = %.noexc.i.i830
  unreachable

_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i821: ; preds = %bb.mp
  %i.asn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asj) #26
          to label %.noexc832 unwind label %.loopexit1248 ; 5 uses

.noexc832:                                        ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i821
  store ptr %i.asn, ptr %35, align 8, !tbaa !132
  store ptr %i.asn, ptr %i.apk, align 8, !tbaa !137
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 %i.asj ; 2 uses
  store ptr %i.aso, ptr %i.apl, align 8, !tbaa !133
  br label %.lr.ph.i.i.i.i.i825

.lr.ph.i.i.i.i.i825:                              ; preds = %.noexc832, %.lr.ph.i.i.i.i.i825
  %.09.i.i.i.i.i826 = phi ptr [ %i.asq, %.lr.ph.i.i.i.i.i825 ], [ %i.asn, %.noexc832 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i827 = phi ptr [ %i.asp, %.lr.ph.i.i.i.i.i825 ], [ %.val5311723, %.noexc832 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i826, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.06.08.i.i.i.i.i827, i64 12, i1 false), !tbaa.struct !141
  %i.asp = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i827, i64 12 ; 2 uses
  %i.asq = getelementptr i8, ptr %.09.i.i.i.i.i826, i64 12 ; 2 uses
  %.not.i.i.i.i.i828 = icmp eq ptr %i.asp, %.val11.i819
  br i1 %.not.i.i.i.i.i828, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833, label %.lr.ph.i.i.i.i.i825, !llvm.loop !186

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833: ; preds = %.lr.ph.i.i.i.i.i825, %.noexc832.thread
  %i.asr = phi ptr [ %i.ask, %.noexc832.thread ], [ %i.aso, %.lr.ph.i.i.i.i.i825 ] ; 2 uses
  %i.ass = phi ptr [ null, %.noexc832.thread ], [ %i.asn, %.lr.ph.i.i.i.i.i825 ] ; 17 uses
  %.0.lcssa.i.i.i.i.i829 = phi ptr [ null, %.noexc832.thread ], [ %i.asq, %.lr.ph.i.i.i.i.i825 ] ; 8 uses
  store ptr %.0.lcssa.i.i.i.i.i829, ptr %i.apk, align 8, !tbaa !137
  %i.ast = load i64, ptr %i.n, align 8, !tbaa !19 ; 3 uses
  %i.asu = icmp ult i64 %.21573, %i.ast
  br i1 %i.asu, label %.lr.ph1568, label %._crit_edge1569

.lr.ph1568:                                       ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833
  %i.asv = getelementptr inbounds nuw [12 x i8], ptr %i.ass, i64 %.03151579 ; 2 uses
  br label %bb.mq

bb.mq:                                            ; preds = %.lr.ph1568, %bb.ms
  %.03111567 = phi i32 [ 0, %.lr.ph1568 ], [ %i.atg, %bb.ms ] ; 2 uses
  %.03121566 = phi i64 [ %.21573, %.lr.ph1568 ], [ %i.ath, %bb.ms ] ; 3 uses
  %i.asw = sub i32 %.sroa.speculated1018, %.03111567 ; 2 uses
  %i.asx = getelementptr inbounds nuw [12 x i8], ptr %i.ass, i64 %.03121566 ; 3 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 4 ; 2 uses
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !53 ; 3 uses
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.asz, i32 %i.asw) ; 4 uses
  %i.ata = load i32, ptr %i.asx, align 4, !tbaa !138
  %i.atb = sub i32 %i.ata, %.sroa.speculated
  store i32 %i.atb, ptr %i.asx, align 4, !tbaa !138
  %i.atc = sub nuw i32 %i.asz, %.sroa.speculated
  store i32 %i.atc, ptr %i.asy, align 4, !tbaa !142
  %i.atd = load i32, ptr %i.asv, align 4, !tbaa !138
  %i.ate = add i32 %i.atd, %.sroa.speculated
  store i32 %i.ate, ptr %i.asv, align 4, !tbaa !138
  %.not449.not = icmp ugt i32 %i.asz, %i.asw
  br i1 %.not449.not, label %._crit_edge1569, label %bb.ms

bb.mr:                                            ; preds = %._crit_edge1565
  %i.atf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit976

.loopexit1248:                                    ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i821
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit932

.loopexit.split-lp:                               ; preds = %.noexc.i.i830
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit932

bb.ms:                                            ; preds = %bb.mq
  %i.atg = add i32 %.sroa.speculated, %.03111567
  %i.ath = add nuw i64 %.03121566, 1              ; 2 uses
  %exitcond1691.not = icmp eq i64 %i.ath, %i.ast
  br i1 %exitcond1691.not, label %._crit_edge1569, label %bb.mq, !llvm.loop !192

._crit_edge1569:                                  ; preds = %bb.ms, %bb.mq, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833
  %.0312.lcssa = phi i64 [ %.21573, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEC2ERKSG_.exit833 ], [ %.03121566, %bb.mq ], [ %i.ast, %bb.ms ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #24
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_3clES0_RKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EE"(ptr dead_on_unwind noalias writable align 8 %36, ptr noundef nonnull align 8 dereferenceable(88) %23, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.mt unwind label %bb.ob

bb.mt:                                            ; preds = %._crit_edge1569
  %i.ati = load ptr, ptr %36, align 8, !tbaa !144 ; 20 uses
  %i.atj = getelementptr inbounds nuw [8 x i8], ptr %i.ati, i64 %.03151579
  %i.atk = load i64, ptr %i.atj, align 8, !tbaa !19
  %i.atl = load i64, ptr %i.ari, align 8, !tbaa !19
  %.not450 = icmp sgt i64 %i.atk, %i.atl
  %i.atm = ptrtoint ptr %.0.lcssa.i.i.i.i.i829 to i64
  %i.atn = ptrtoint ptr %i.ass to i64
  %i.ato = sub i64 %i.atm, %i.atn                 ; 22 uses
  br i1 %.not450, label %bb.oc, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %.val37.i840 = load ptr, ptr %i.apm, align 8, !tbaa !133
  %i.atp = ptrtoint ptr %.val37.i840 to i64
  %i.atq = sub i64 %i.atp, %i.asi                 ; 2 uses
  %i.atr = icmp ugt i64 %i.ato, %i.atq
  br i1 %i.atr, label %bb.mv, label %bb.mx

bb.mv:                                            ; preds = %bb.mu
  %i.ats = sdiv exact i64 %i.ato, 12
  %i.att = icmp ugt i64 %i.ats, 768614336404564650
  br i1 %i.att, label %.invoke2315, label %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE11_M_allocateEm.exit.i.i851, !prof !139

.invoke2315:                                      ; preds = %bb.ng, %bb.mv, %bb.oo, %bb.od
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.cont2316 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit.split-lp

.cont2316:                                        ; preds = %.invoke2315
  unreachable

_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE11_M_allocateEm.exit.i.i851: ; preds = %bb.mv
  %i.atu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ato) #26
          to label %.noexc858 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit ; 4 uses

.noexc858:                                        ; preds = %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE11_M_allocateEm.exit.i.i851
  %.not7.i.i.i.i.i.i852 = icmp eq ptr %i.ass, %.0.lcssa.i.i.i.i.i829
  br i1 %.not7.i.i.i.i.i.i852, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i854, label %.lr.ph.i.i.i.i.preheader.i.i853

.lr.ph.i.i.i.i.preheader.i.i853:                  ; preds = %.noexc858
  %i.atv = add i64 %i.ato, -12
  %i.atw = urem i64 %i.atv, 12
  %i.atx = sub i64 %i.ato, %i.atw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.atu, ptr readonly align 4 %i.ass, i64 %i.atx, i1 false)
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i854

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i854: ; preds = %.lr.ph.i.i.i.i.preheader.i.i853, %.noexc858
  %.not.i.i855 = icmp eq ptr %.val5311723, null
  br i1 %.not.i.i855, label %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i856, label %bb.mw

bb.mw:                                            ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i854
  call void @_ZdlPvm(ptr noundef nonnull %.val5311723, i64 noundef %i.atq) #27
  br label %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i856

_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i856: ; preds = %bb.mw, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i854
  store ptr %i.atu, ptr %27, align 8, !tbaa !132
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atu, i64 %i.ato
  store ptr %i.aty, ptr %i.apm, align 8, !tbaa !133
  br label %.loopexit1246

bb.mx:                                            ; preds = %bb.mu
  %.not24.i842 = icmp ult i64 %i.asj, %i.ato
  br i1 %.not24.i842, label %bb.nc, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.atz = icmp sgt i64 %i.ato, 12
  br i1 %i.atz, label %bb.mz, label %bb.na, !prof !145

bb.mz:                                            ; preds = %bb.my
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val5311723, ptr align 4 %i.ass, i64 %i.ato, i1 false)
  br label %.loopexit1246

bb.na:                                            ; preds = %bb.my
  %i.aua = icmp eq i64 %i.ato, 12
  br i1 %i.aua, label %bb.nb, label %.loopexit1246

bb.nb:                                            ; preds = %bb.na
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.val5311723, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ass, i64 12, i1 false), !tbaa.struct !141
  br label %.loopexit1246

bb.nc:                                            ; preds = %bb.mx
  %i.aub = icmp sgt i64 %i.asj, 12
  br i1 %i.aub, label %bb.nd, label %bb.ne, !prof !145

bb.nd:                                            ; preds = %bb.nc
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val5311723, ptr align 4 %i.ass, i64 %i.asj, i1 false)
  br label %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843

bb.ne:                                            ; preds = %bb.nc
  %i.auc = icmp eq i64 %i.asj, 12
  br i1 %i.auc, label %bb.nf, label %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843

bb.nf:                                            ; preds = %bb.ne
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.val5311723, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ass, i64 12, i1 false), !tbaa.struct !141
  br label %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843

_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843: ; preds = %bb.nf, %bb.ne, %bb.nd
  %.not9.i.i.i.i.i846 = icmp eq ptr %i.asr, %.0.lcssa.i.i.i.i.i829
  br i1 %.not9.i.i.i.i.i846, label %.loopexit1246, label %.lr.ph.i.i.i.i.i847

.lr.ph.i.i.i.i.i847:                              ; preds = %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843, %.lr.ph.i.i.i.i.i847
  %.011.i.i.i.i.i848 = phi ptr [ %i.aue, %.lr.ph.i.i.i.i.i847 ], [ %.val11.i819, %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843 ] ; 2 uses
  %.0810.i.i.i.i.i849 = phi ptr [ %i.aud, %.lr.ph.i.i.i.i.i847 ], [ %i.asr, %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.011.i.i.i.i.i848, ptr noundef nonnull readonly align 4 dereferenceable(12) %.0810.i.i.i.i.i849, i64 12, i1 false), !tbaa.struct !141
  %i.aud = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i849, i64 12 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i848, i64 12
  %.not.i.i.i.i.i850 = icmp eq ptr %i.aud, %.0.lcssa.i.i.i.i.i829
  br i1 %.not.i.i.i.i.i850, label %.loopexit1246.loopexit, label %.lr.ph.i.i.i.i.i847, !llvm.loop !0

.loopexit1246.loopexit:                           ; preds = %.lr.ph.i.i.i.i.i847
  %.pre1720 = load ptr, ptr %27, align 8, !tbaa !132
  br label %.loopexit1246

.loopexit1246:                                    ; preds = %.loopexit1246.loopexit, %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843, %bb.nb, %bb.na, %bb.mz, %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i856
  %.val5311722 = phi ptr [ %.pre1720, %.loopexit1246.loopexit ], [ %.val5311723, %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i843 ], [ %.val5311723, %bb.nb ], [ %.val5311723, %bb.na ], [ %.val5311723, %bb.mz ], [ %i.atu, %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i856 ] ; 4 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.val5311722, i64 %i.ato ; 3 uses
  store ptr %i.auf, ptr %i.aca, align 8, !tbaa !137
  %i.aug = load ptr, ptr %i.apn, align 8, !tbaa !146
  %i.auh = ptrtoint ptr %i.aug to i64             ; 2 uses
  %i.aui = ptrtoint ptr %i.ati to i64             ; 3 uses
  %i.auj = sub i64 %i.auh, %i.aui                 ; 12 uses
  %i.auk = load ptr, ptr %i.apo, align 8, !tbaa !147
  %i.aul = load ptr, ptr %28, align 8, !tbaa !144 ; 7 uses
  %i.aum = ptrtoint ptr %i.auk to i64
  %i.aun = ptrtoint ptr %i.aul to i64             ; 2 uses
  %i.auo = sub i64 %i.aum, %i.aun                 ; 2 uses
  %i.aup = icmp ugt i64 %i.auj, %i.auo
  br i1 %i.aup, label %bb.ng, label %bb.nl

bb.ng:                                            ; preds = %.loopexit1246
  %i.auq = icmp ugt i64 %i.auj, 9223372036854775800
  br i1 %i.auq, label %.invoke2315, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i873, !prof !139

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i873: ; preds = %bb.ng
  %i.aur = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.auj) #26
          to label %.noexc878 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit ; 4 uses

.noexc878:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i873
  %i.aus = icmp samesign ugt i64 %i.auj, 8
  br i1 %i.aus, label %bb.nh, label %bb.ni, !prof !145

bb.nh:                                            ; preds = %.noexc878
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aur, ptr nonnull align 8 %i.ati, i64 %i.auj, i1 false)
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i874

bb.ni:                                            ; preds = %.noexc878
  %i.aut = icmp eq i64 %i.auj, 8
  br i1 %i.aut, label %bb.nj, label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i874

bb.nj:                                            ; preds = %bb.ni
  %i.auu = load i64, ptr %i.ati, align 8, !tbaa !19
  store i64 %i.auu, ptr %i.aur, align 8, !tbaa !19
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i874

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i874: ; preds = %bb.nj, %bb.ni, %bb.nh
  %.not.i.i875 = icmp eq ptr %i.aul, null
  br i1 %.not.i.i875, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i876, label %bb.nk

bb.nk:                                            ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i874
  call void @_ZdlPvm(ptr noundef nonnull %i.aul, i64 noundef %i.auo) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i876

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i876: ; preds = %bb.nk, %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i874
  store ptr %i.aur, ptr %28, align 8, !tbaa !144
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aur, i64 %i.auj
  store ptr %i.auv, ptr %i.apo, align 8, !tbaa !147
  br label %bb.nx

bb.nl:                                            ; preds = %.loopexit1246
  %i.auw = load ptr, ptr %i.app, align 8, !tbaa !146 ; 3 uses
  %i.aux = ptrtoint ptr %i.auw to i64
  %i.auy = sub i64 %i.aux, %i.aun                 ; 5 uses
  %.not24.i861 = icmp ult i64 %i.auy, %i.auj
  br i1 %.not24.i861, label %bb.nq, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.auz = icmp sgt i64 %i.auj, 8
  br i1 %i.auz, label %bb.nn, label %bb.no, !prof !145

bb.nn:                                            ; preds = %bb.nm
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aul, ptr nonnull align 8 %i.ati, i64 %i.auj, i1 false)
  br label %bb.nx

bb.no:                                            ; preds = %bb.nm
  %i.ava = icmp eq i64 %i.auj, 8
  br i1 %i.ava, label %bb.np, label %bb.nx

bb.np:                                            ; preds = %bb.no
  %i.avb = load i64, ptr %i.ati, align 8, !tbaa !19
  store i64 %i.avb, ptr %i.aul, align 8, !tbaa !19
  br label %bb.nx

bb.nq:                                            ; preds = %bb.nl
  %i.avc = icmp sgt i64 %i.auy, 8
  br i1 %i.avc, label %bb.nr, label %bb.ns, !prof !145

bb.nr:                                            ; preds = %bb.nq
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aul, ptr nonnull align 8 %i.ati, i64 %i.auy, i1 false)
  %.pre25.i866 = load ptr, ptr %i.app, align 8, !tbaa !146 ; 2 uses
  %.pre26.i867 = load ptr, ptr %28, align 8, !tbaa !144
  %.pre28.i869 = ptrtoint ptr %.pre25.i866 to i64
  %.pre29.i870 = ptrtoint ptr %.pre26.i867 to i64
  %.pre31.i871 = sub i64 %.pre28.i869, %.pre29.i870
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i862

bb.ns:                                            ; preds = %bb.nq
  %i.avd = icmp eq i64 %i.auy, 8
  br i1 %i.avd, label %bb.nt, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i862

bb.nt:                                            ; preds = %bb.ns
  %i.ave = load i64, ptr %i.ati, align 8, !tbaa !19
  store i64 %i.ave, ptr %i.aul, align 8, !tbaa !19
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i862

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i862:            ; preds = %bb.nt, %bb.ns, %bb.nr
  %.pre-phi32.i864 = phi i64 [ %.pre31.i871, %bb.nr ], [ %i.auy, %bb.ns ], [ 8, %bb.nt ]
  %i.avf = phi ptr [ %.pre25.i866, %bb.nr ], [ %i.auw, %bb.ns ], [ %i.auw, %bb.nt ] ; 2 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.ati, i64 %.pre-phi32.i864 ; 3 uses
  %i.avh = ptrtoint ptr %i.avg to i64
  %i.avi = sub i64 %i.auh, %i.avh                 ; 3 uses
  %i.avj = icmp sgt i64 %i.avi, 8
  br i1 %i.avj, label %bb.nu, label %bb.nv, !prof !145

bb.nu:                                            ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i862
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.avf, ptr align 8 %i.avg, i64 %i.avi, i1 false)
  br label %bb.nx

bb.nv:                                            ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i862
  %i.avk = icmp eq i64 %i.avi, 8
  br i1 %i.avk, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.avl = load i64, ptr %i.avg, align 8, !tbaa !19
  store i64 %i.avl, ptr %i.avf, align 8, !tbaa !19
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv, %bb.nu, %bb.np, %bb.no, %bb.nn, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i876
  %i.avm = load ptr, ptr %28, align 8, !tbaa !144
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avm, i64 %i.auj
  store ptr %i.avn, ptr %i.app, align 8, !tbaa !146
  %i.avo = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.ny unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

bb.ny:                                            ; preds = %bb.nx
  %i.avp = icmp sgt i32 %i.avo, 3
  br i1 %i.avp, label %bb.nz, label %_ZNSt6vectorIlSaIlEED2Ev.exit928

bb.nz:                                            ; preds = %bb.ny
  %i.avq = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.oa unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

bb.oa:                                            ; preds = %bb.nz
  %i.avr = getelementptr inbounds nuw [12 x i8], ptr %.val5311722, i64 %.03151579 ; 2 uses
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !138
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avr, i64 4
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !142
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.avq, i32 noundef 2, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %.03151579, i32 noundef %i.avs, i32 noundef %i.avu, i64 noundef %.0312.lcssa)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit928 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

bb.ob:                                            ; preds = %._crit_edge1569
  %i.avv = landingpad { ptr, i32 }
          cleanup
  br label %bb.pk

_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit:        ; preds = %bb.nx, %bb.nz, %bb.oa, %bb.pf, %bb.ph, %bb.pi, %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE11_M_allocateEm.exit.i.i851, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i873, %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE11_M_allocateEm.exit.i.i898, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i920
  %lpad.loopexit1249 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit881

_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit.split-lp: ; preds = %.invoke2315
  %lpad.loopexit.split-lp1250 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit881

_ZNSt6vectorIlSaIlEED2Ev.exit881:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit.split-lp, %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit
  %lpad.phi1251 = phi { ptr, i32 } [ %lpad.loopexit1249, %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit ], [ %lpad.loopexit.split-lp1250, %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit.split-lp ]
  %i.avw = load ptr, ptr %i.aps, align 8, !tbaa !147
  %i.avx = ptrtoint ptr %i.avw to i64
  %i.avy = ptrtoint ptr %i.ati to i64
  %i.avz = sub i64 %i.avx, %i.avy
  call void @_ZdlPvm(ptr noundef nonnull %i.ati, i64 noundef %i.avz) #27
  %.val579.pre = load ptr, ptr %35, align 8
  br label %bb.pk

bb.oc:                                            ; preds = %bb.mt
  %.val36.i886 = load ptr, ptr %33, align 8, !tbaa !132 ; 7 uses
  %.val37.i887 = load ptr, ptr %i.apj, align 8, !tbaa !133
  %i.awa = ptrtoint ptr %.val37.i887 to i64
  %i.awb = ptrtoint ptr %.val36.i886 to i64       ; 2 uses
  %i.awc = sub i64 %i.awa, %i.awb                 ; 2 uses
  %i.awd = icmp ugt i64 %i.ato, %i.awc
  br i1 %i.awd, label %bb.od, label %bb.of

bb.od:                                            ; preds = %bb.oc
  %i.awe = sdiv exact i64 %i.ato, 12
  %i.awf = icmp ugt i64 %i.awe, 768614336404564650
  br i1 %i.awf, label %.invoke2315, label %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE11_M_allocateEm.exit.i.i898, !prof !139

_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE11_M_allocateEm.exit.i.i898: ; preds = %bb.od
  %i.awg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ato) #26
          to label %.noexc905 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit ; 3 uses

.noexc905:                                        ; preds = %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE11_M_allocateEm.exit.i.i898
  %.not7.i.i.i.i.i.i899 = icmp eq ptr %i.ass, %.0.lcssa.i.i.i.i.i829
  br i1 %.not7.i.i.i.i.i.i899, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i901, label %.lr.ph.i.i.i.i.preheader.i.i900

.lr.ph.i.i.i.i.preheader.i.i900:                  ; preds = %.noexc905
  %i.awh = add i64 %i.ato, -12
  %i.awi = urem i64 %i.awh, 12
  %i.awj = sub i64 %i.ato, %i.awi
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.awg, ptr readonly align 4 %i.ass, i64 %i.awj, i1 false)
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i901

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i901: ; preds = %.lr.ph.i.i.i.i.preheader.i.i900, %.noexc905
  %.not.i.i902 = icmp eq ptr %.val36.i886, null
  br i1 %.not.i.i902, label %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i903, label %bb.oe

bb.oe:                                            ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i901
  call void @_ZdlPvm(ptr noundef nonnull %.val36.i886, i64 noundef %i.awc) #27
  br label %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i903

_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i903: ; preds = %bb.oe, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKSE_SG_EEEEPSE_mT_SO_.exit.i901
  store ptr %i.awg, ptr %33, align 8, !tbaa !132
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.ato
  store ptr %i.awk, ptr %i.apj, align 8, !tbaa !133
  br label %.loopexit

bb.of:                                            ; preds = %bb.oc
  %.val29.i888 = load ptr, ptr %i.api, align 8, !tbaa !137 ; 2 uses
  %i.awl = ptrtoint ptr %.val29.i888 to i64
  %i.awm = sub i64 %i.awl, %i.awb                 ; 5 uses
  %.not24.i889 = icmp ult i64 %i.awm, %i.ato
  br i1 %.not24.i889, label %bb.ok, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.awn = icmp sgt i64 %i.ato, 12
  br i1 %i.awn, label %bb.oh, label %bb.oi, !prof !145

bb.oh:                                            ; preds = %bb.og
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val36.i886, ptr align 4 %i.ass, i64 %i.ato, i1 false)
  br label %.loopexit

bb.oi:                                            ; preds = %bb.og
  %i.awo = icmp eq i64 %i.ato, 12
  br i1 %i.awo, label %bb.oj, label %.loopexit

bb.oj:                                            ; preds = %bb.oi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.val36.i886, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ass, i64 12, i1 false), !tbaa.struct !141
  br label %.loopexit

bb.ok:                                            ; preds = %bb.of
  %i.awp = icmp sgt i64 %i.awm, 12
  br i1 %i.awp, label %bb.ol, label %bb.om, !prof !145

bb.ol:                                            ; preds = %bb.ok
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val36.i886, ptr align 4 %i.ass, i64 %i.awm, i1 false)
  br label %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i890

bb.om:                                            ; preds = %bb.ok
  %i.awq = icmp eq i64 %i.awm, 12
  br i1 %i.awq, label %bb.on, label %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i890

bb.on:                                            ; preds = %bb.om
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.val36.i886, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ass, i64 12, i1 false), !tbaa.struct !141
  br label %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i890

_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i890: ; preds = %bb.on, %bb.om, %bb.ol
  %i.awr = getelementptr inbounds nuw i8, ptr %i.ass, i64 %i.awm ; 2 uses
  %.not9.i.i.i.i.i893 = icmp eq ptr %i.awr, %.0.lcssa.i.i.i.i.i829
  br i1 %.not9.i.i.i.i.i893, label %.loopexit, label %.lr.ph.i.i.i.i.i894

.lr.ph.i.i.i.i.i894:                              ; preds = %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i890, %.lr.ph.i.i.i.i.i894
  %.011.i.i.i.i.i895 = phi ptr [ %i.awt, %.lr.ph.i.i.i.i.i894 ], [ %.val29.i888, %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i890 ] ; 2 uses
  %.0810.i.i.i.i.i896 = phi ptr [ %i.aws, %.lr.ph.i.i.i.i.i894 ], [ %i.awr, %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i890 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.011.i.i.i.i.i895, ptr noundef nonnull readonly align 4 dereferenceable(12) %.0810.i.i.i.i.i896, i64 12, i1 false), !tbaa.struct !141
  %i.aws = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i896, i64 12 ; 2 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i895, i64 12
  %.not.i.i.i.i.i897 = icmp eq ptr %i.aws, %.0.lcssa.i.i.i.i.i829
  br i1 %.not.i.i.i.i.i897, label %.loopexit, label %.lr.ph.i.i.i.i.i894, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i894, %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit.i890, %bb.oj, %bb.oi, %bb.oh, %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit.i903
  %i.awu = load ptr, ptr %33, align 8, !tbaa !132 ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awu, i64 %i.ato
  store ptr %i.awv, ptr %i.api, align 8, !tbaa !137
  %i.aww = load ptr, ptr %i.apn, align 8, !tbaa !146
  %i.awx = ptrtoint ptr %i.aww to i64             ; 2 uses
  %i.awy = ptrtoint ptr %i.ati to i64             ; 3 uses
  %i.awz = sub i64 %i.awx, %i.awy                 ; 12 uses
  %i.axa = load ptr, ptr %i.apq, align 8, !tbaa !147
  %i.axb = load ptr, ptr %34, align 8, !tbaa !144 ; 7 uses
  %i.axc = ptrtoint ptr %i.axa to i64
  %i.axd = ptrtoint ptr %i.axb to i64             ; 2 uses
  %i.axe = sub i64 %i.axc, %i.axd                 ; 2 uses
  %i.axf = icmp ugt i64 %i.awz, %i.axe
  br i1 %i.axf, label %bb.oo, label %bb.ot

bb.oo:                                            ; preds = %.loopexit
  %i.axg = icmp ugt i64 %i.awz, 9223372036854775800
  br i1 %i.axg, label %.invoke2315, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i920, !prof !139

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i920: ; preds = %bb.oo
  %i.axh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.awz) #26
          to label %.noexc925 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit ; 4 uses

.noexc925:                                        ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i920
  %i.axi = icmp samesign ugt i64 %i.awz, 8
  br i1 %i.axi, label %bb.op, label %bb.oq, !prof !145

bb.op:                                            ; preds = %.noexc925
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.axh, ptr nonnull align 8 %i.ati, i64 %i.awz, i1 false)
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i921

bb.oq:                                            ; preds = %.noexc925
  %i.axj = icmp eq i64 %i.awz, 8
  br i1 %i.axj, label %bb.or, label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i921

bb.or:                                            ; preds = %bb.oq
  %i.axk = load i64, ptr %i.ati, align 8, !tbaa !19
  store i64 %i.axk, ptr %i.axh, align 8, !tbaa !19
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i921

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i921: ; preds = %bb.or, %bb.oq, %bb.op
  %.not.i.i922 = icmp eq ptr %i.axb, null
  br i1 %.not.i.i922, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i923, label %bb.os

bb.os:                                            ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i921
  call void @_ZdlPvm(ptr noundef nonnull %i.axb, i64 noundef %i.axe) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i923

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i923: ; preds = %bb.os, %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit.i921
  store ptr %i.axh, ptr %34, align 8, !tbaa !144
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axh, i64 %i.awz
  store ptr %i.axl, ptr %i.apq, align 8, !tbaa !147
  br label %bb.pf

bb.ot:                                            ; preds = %.loopexit
  %i.axm = load ptr, ptr %i.apr, align 8, !tbaa !146 ; 3 uses
  %i.axn = ptrtoint ptr %i.axm to i64
  %i.axo = sub i64 %i.axn, %i.axd                 ; 5 uses
  %.not24.i908 = icmp ult i64 %i.axo, %i.awz
  br i1 %.not24.i908, label %bb.oy, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.axp = icmp sgt i64 %i.awz, 8
  br i1 %i.axp, label %bb.ov, label %bb.ow, !prof !145

bb.ov:                                            ; preds = %bb.ou
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axb, ptr nonnull align 8 %i.ati, i64 %i.awz, i1 false)
  br label %bb.pf

bb.ow:                                            ; preds = %bb.ou
  %i.axq = icmp eq i64 %i.awz, 8
  br i1 %i.axq, label %bb.ox, label %bb.pf

bb.ox:                                            ; preds = %bb.ow
  %i.axr = load i64, ptr %i.ati, align 8, !tbaa !19
  store i64 %i.axr, ptr %i.axb, align 8, !tbaa !19
  br label %bb.pf

bb.oy:                                            ; preds = %bb.ot
  %i.axs = icmp sgt i64 %i.axo, 8
  br i1 %i.axs, label %bb.oz, label %bb.pa, !prof !145

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axb, ptr nonnull align 8 %i.ati, i64 %i.axo, i1 false)
  %.pre25.i913 = load ptr, ptr %i.apr, align 8, !tbaa !146 ; 2 uses
  %.pre26.i914 = load ptr, ptr %34, align 8, !tbaa !144
  %.pre28.i916 = ptrtoint ptr %.pre25.i913 to i64
  %.pre29.i917 = ptrtoint ptr %.pre26.i914 to i64
  %.pre31.i918 = sub i64 %.pre28.i916, %.pre29.i917
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909

bb.pa:                                            ; preds = %bb.oy
  %i.axt = icmp eq i64 %i.axo, 8
  br i1 %i.axt, label %bb.pb, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909

bb.pb:                                            ; preds = %bb.pa
  %i.axu = load i64, ptr %i.ati, align 8, !tbaa !19
  store i64 %i.axu, ptr %i.axb, align 8, !tbaa !19
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909:            ; preds = %bb.pb, %bb.pa, %bb.oz
  %.pre-phi32.i911 = phi i64 [ %.pre31.i918, %bb.oz ], [ %i.axo, %bb.pa ], [ 8, %bb.pb ]
  %i.axv = phi ptr [ %.pre25.i913, %bb.oz ], [ %i.axm, %bb.pa ], [ %i.axm, %bb.pb ] ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.ati, i64 %.pre-phi32.i911 ; 3 uses
  %i.axx = ptrtoint ptr %i.axw to i64
  %i.axy = sub i64 %i.awx, %i.axx                 ; 3 uses
  %i.axz = icmp sgt i64 %i.axy, 8
  br i1 %i.axz, label %bb.pc, label %bb.pd, !prof !145

bb.pc:                                            ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.axv, ptr align 8 %i.axw, i64 %i.axy, i1 false)
  br label %bb.pf

bb.pd:                                            ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit.i909
  %i.aya = icmp eq i64 %i.axy, 8
  br i1 %i.aya, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.ayb = load i64, ptr %i.axw, align 8, !tbaa !19
  store i64 %i.ayb, ptr %i.axv, align 8, !tbaa !19
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %bb.pc, %bb.ox, %bb.ow, %bb.ov, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i923
  %i.ayc = load ptr, ptr %34, align 8, !tbaa !144
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 %i.awz
  store ptr %i.ayd, ptr %i.apr, align 8, !tbaa !146
  %i.aye = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.pg unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

bb.pg:                                            ; preds = %bb.pf
  %i.ayf = icmp sgt i32 %i.aye, 3
  br i1 %i.ayf, label %bb.ph, label %_ZNSt6vectorIlSaIlEED2Ev.exit928

bb.ph:                                            ; preds = %bb.pg
  %i.ayg = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.pi unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

bb.pi:                                            ; preds = %bb.ph
  %i.ayh = getelementptr inbounds nuw [12 x i8], ptr %i.awu, i64 %.03151579 ; 2 uses
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !138
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayh, i64 4
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !142
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.ayg, i32 noundef 2, ptr noundef nonnull @.str.77, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %.03151579, i32 noundef %i.ayi, i32 noundef %i.ayk, i64 noundef %.0312.lcssa)
          to label %_ZNSt6vectorIlSaIlEED2Ev.exit928 unwind label %_ZNSt6vectorIlSaIlEED2Ev.exit881.loopexit

_ZNSt6vectorIlSaIlEED2Ev.exit928:                 ; preds = %bb.pg, %bb.pi, %bb.ny, %bb.oa
  %.pre-phi = phi i64 [ %i.awy, %bb.pg ], [ %i.awy, %bb.pi ], [ %i.aui, %bb.ny ], [ %i.aui, %bb.oa ]
  %.val531 = phi ptr [ %.val5311723, %bb.pg ], [ %.val5311723, %bb.pi ], [ %.val5311722, %bb.ny ], [ %.val5311722, %bb.oa ] ; 3 uses
  %.val11.i8191718 = phi ptr [ %.val11.i819, %bb.pg ], [ %.val11.i819, %bb.pi ], [ %i.auf, %bb.ny ], [ %i.auf, %bb.oa ]
  %.3 = phi i64 [ %.21573, %bb.pg ], [ %.21573, %bb.pi ], [ %.0312.lcssa, %bb.ny ], [ %.0312.lcssa, %bb.oa ] ; 2 uses
  %.val532 = load ptr, ptr %33, align 8, !tbaa !132
  %i.ayl = getelementptr inbounds nuw [12 x i8], ptr %.val532, i64 %.03151579 ; 2 uses
  %.val504 = load i32, ptr %i.ayl, align 4, !tbaa !138
  %i.aym = getelementptr i8, ptr %i.ayl, i64 4
  %.val505 = load i32, ptr %i.aym, align 4, !tbaa !142
  %i.ayn = getelementptr inbounds nuw [12 x i8], ptr %.val531, i64 %.03151579 ; 2 uses
  %.val = load i32, ptr %i.ayn, align 4, !tbaa !138
  %i.ayo = getelementptr i8, ptr %i.ayn, i64 4
  %.val503 = load i32, ptr %i.ayo, align 4, !tbaa !142
  %i.ayp = add i32 %.val505, %.val
  %i.ayq = sub i32 %.val504, %i.ayp
  %i.ayr = add i32 %i.ayq, %.val503               ; 2 uses
  %i.ays = load ptr, ptr %i.aps, align 8, !tbaa !147
  %i.ayt = ptrtoint ptr %i.ays to i64
  %i.ayu = sub i64 %i.ayt, %.pre-phi
  call void @_ZdlPvm(ptr noundef nonnull %i.ati, i64 noundef %i.ayu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %.val581 = load ptr, ptr %35, align 8           ; 3 uses
  %.not.i.i.i929 = icmp eq ptr %.val581, null
  br i1 %.not.i.i.i929, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930, label %bb.pj

bb.pj:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit928
  %.val582 = load ptr, ptr %i.apl, align 8
  %i.ayv = ptrtoint ptr %.val582 to i64
  %i.ayw = ptrtoint ptr %.val581 to i64
  %i.ayx = sub i64 %i.ayv, %i.ayw
  call void @_ZdlPvm(ptr noundef nonnull %.val581, i64 noundef %i.ayx) #27
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit928, %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  %i.ayy = icmp ugt i32 %i.ayr, 1
  br i1 %i.ayy, label %.lr.ph1576, label %.loopexit1247, !llvm.loop !193

bb.pk:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit881, %bb.ob
  %.val579 = phi ptr [ %.val579.pre, %_ZNSt6vectorIlSaIlEED2Ev.exit881 ], [ %i.ass, %bb.ob ] ; 3 uses
  %.pn451 = phi { ptr, i32 } [ %lpad.phi1251, %_ZNSt6vectorIlSaIlEED2Ev.exit881 ], [ %i.avv, %bb.ob ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #24
  %.not.i.i.i931 = icmp eq ptr %.val579, null
  br i1 %.not.i.i.i931, label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit932, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %.val580 = load ptr, ptr %i.apl, align 8
  %i.ayz = ptrtoint ptr %.val580 to i64
  %i.aza = ptrtoint ptr %.val579 to i64
  %i.azb = sub i64 %i.ayz, %i.aza
  call void @_ZdlPvm(ptr noundef nonnull %.val579, i64 noundef %i.azb) #27
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit932

_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit932: ; preds = %.loopexit1248, %.loopexit.split-lp, %bb.pl, %bb.pk
  %.pn451.pn = phi { ptr, i32 } [ %.pn451, %bb.pl ], [ %.pn451, %bb.pk ], [ %lpad.loopexit, %.loopexit1248 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #24
  br label %bb.sp

bb.pm:                                            ; preds = %bb.mn
  %i.azc = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %bb.pn unwind label %bb.ps     ; 0 uses

bb.pn:                                            ; preds = %bb.pm
  %i.azd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %bb.po unwind label %bb.ps     ; 0 uses

bb.po:                                            ; preds = %bb.pn
  %i.aze = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.pp unwind label %bb.ps

bb.pp:                                            ; preds = %bb.po
  %i.azf = icmp sgt i32 %i.aze, 3
  br i1 %i.azf, label %bb.pq, label %..loopexit1247_crit_edge

..loopexit1247_crit_edge:                         ; preds = %bb.pp
  %.val528.pre = load ptr, ptr %27, align 8, !tbaa !132
  br label %.loopexit1247

bb.pq:                                            ; preds = %bb.pp
  %i.azg = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.pr unwind label %bb.ps

bb.pr:                                            ; preds = %bb.pq
  %.val530 = load ptr, ptr %27, align 8, !tbaa !132 ; 2 uses
  %i.azh = getelementptr inbounds nuw [12 x i8], ptr %.val530, i64 %.03151579 ; 2 uses
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !138
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azh, i64 4
  %i.azk = load i32, ptr %i.azj, align 4, !tbaa !142
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.azg, i32 noundef 2, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level, i64 noundef %.03151579, i32 noundef %i.azi, i32 noundef %i.azk, i64 noundef %i.aqr)
          to label %.loopexit1247 unwind label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pq, %bb.po, %bb.pn, %bb.pm
  %i.azl = landingpad { ptr, i32 }
          cleanup
  br label %bb.sp

.loopexit1247:                                    ; preds = %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930, %..loopexit1247_crit_edge, %bb.mo, %bb.pr
  %.val528 = phi ptr [ %.val528.pre, %..loopexit1247_crit_edge ], [ %.val530, %bb.pr ], [ %.val10.i800, %bb.mo ], [ %.val531, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ] ; 4 uses
  %.4 = phi i64 [ %i.aqr, %..loopexit1247_crit_edge ], [ %i.aqr, %bb.pr ], [ %.11578, %bb.mo ], [ %.3, %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit930 ] ; 6 uses
  %i.azm = getelementptr inbounds nuw [12 x i8], ptr %.val528, i64 %.4
  %i.azn = load i32, ptr %i.azm, align 4, !tbaa !138
  %i.azo = load i64, ptr %i.n, align 8, !tbaa !19
  %i.azp = add i64 %i.azo, -1                     ; 2 uses
  %i.azq = icmp uge i64 %.03151579, %i.azp
  %i.azr = zext i1 %i.azq to i32
  %i.azs = icmp ugt i32 %i.azn, %i.azr
  br i1 %i.azs, label %bb.pt, label %bb.sh

bb.pt:                                            ; preds = %.loopexit1247
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24
  %.val11.i934 = load ptr, ptr %i.aca, align 8, !tbaa !137 ; 3 uses
  %i.azt = ptrtoint ptr %.val11.i934 to i64
  %i.azu = ptrtoint ptr %.val528 to i64
  %i.azv = sub i64 %i.azt, %i.azu                 ; 5 uses
  %.not.i.i.i.i935 = icmp ne ptr %.val11.i934, %.val528
  call void @llvm.assume(i1 %.not.i.i.i.i935)
  %i.azw = sdiv exact i64 %i.azv, 12
  %i.azx = icmp ugt i64 %i.azw, 768614336404564650
  br i1 %i.azx, label %.noexc.i.i945, label %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i936, !prof !139

.noexc.i.i945:                                    ; preds = %bb.pt
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc946 unwind label %.loopexit.split-lp1258

.noexc946:                                        ; preds = %.noexc.i.i945
  unreachable

_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i936: ; preds = %bb.pt
  %i.azy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.azv) #26
          to label %.noexc947 unwind label %.loopexit1257 ; 8 uses

.noexc947:                                        ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i936
  store ptr %i.azy, ptr %37, align 8, !tbaa !132
  store ptr %i.azy, ptr %i.apt, align 8, !tbaa !137
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 %i.azv
  store ptr %i.azz, ptr %i.apu, align 8, !tbaa !133
  br label %.lr.ph.i.i.i.i.i940

.lr.ph.i.i.i.i.i940:                              ; preds = %.noexc947, %.lr.ph.i.i.i.i.i940
  %.09.i.i.i.i.i941 = phi ptr [ %i.bab, %.lr.ph.i.i.i.i.i940 ], [ %i.azy, %.noexc947 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i942 = phi ptr [ %i.baa, %.lr.ph.i.i.i.i.i940 ], [ %.val528, %.noexc947 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i941, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.06.08.i.i.i.i.i942, i64 12, i1 false), !tbaa.struct !141
  %i.baa = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i942, i64 12 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i941, i64 12 ; 2 uses
  %.not.i.i.i.i.i943 = icmp eq ptr %i.baa, %.val11.i934
  br i1 %.not.i.i.i.i.i943, label %bb.pu, label %.lr.ph.i.i.i.i.i940, !llvm.loop !186

bb.pu:                                            ; preds = %.lr.ph.i.i.i.i.i940
  store ptr %i.bab, ptr %i.apt, align 8, !tbaa !137
  %i.bac = getelementptr inbounds nuw [12 x i8], ptr %i.azy, i64 %.4 ; 3 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 4
  %i.bae = load <2 x i32>, ptr %i.bac, align 4, !tbaa !53
  %i.baf = add <2 x i32> %i.bae, splat (i32 -1)
  store <2 x i32> %i.baf, ptr %i.bac, align 4, !tbaa !53
  %i.bag = getelementptr inbounds nuw [12 x i8], ptr %i.azy, i64 %.03151579 ; 3 uses
  %i.bah = load <2 x i32>, ptr %i.bag, align 4, !tbaa !53
  %i.bai = add <2 x i32> %i.bah, splat (i32 1)
  store <2 x i32> %i.bai, ptr %i.bag, align 4, !tbaa !53
  %i.baj = load i32, ptr %i.bad, align 4, !tbaa !142
  %i.bak = icmp eq i32 %i.baj, 0
  %i.bal = zext i1 %i.bak to i64
  %spec.select = add i64 %.4, %i.bal              ; 7 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bag, i64 8 ; 3 uses
  store i32 2, ptr %i.bam, align 4, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #24
  %i.ban = load ptr, ptr %i.apv, align 8, !tbaa !128 ; 2 uses
  %i.bao = load ptr, ptr %26, align 8, !tbaa !127 ; 4 uses
  %i.bap = ptrtoint ptr %i.ban to i64
  %i.baq = ptrtoint ptr %i.bao to i64
  %i.bar = sub i64 %i.bap, %i.baq                 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %.not.i.i.i.i949 = icmp eq ptr %i.ban, %i.bao
  br i1 %.not.i.i.i.i949, label %.thread1199, label %bb.pv

.thread1199:                                      ; preds = %bb.pu
  %i.bas = getelementptr inbounds i8, ptr null, i64 %i.bar ; 2 uses
  store i64 0, ptr %38, align 8
  store ptr %i.bas, ptr %i.apx, align 8, !tbaa !129
  br label %bb.pz

bb.pv:                                            ; preds = %bb.pu
  %i.bat = icmp ugt i64 %i.bar, 9223372036854775800
  br i1 %i.bat, label %.noexc.i.i950, label %_ZNSt15__new_allocatorIP24ggml_backend_buffer_typeE8allocateEmPKv.exit.i.i.i.i, !prof !139

.noexc.i.i950:                                    ; preds = %bb.pv
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc951 unwind label %.loopexit.split-lp1263

.noexc951:                                        ; preds = %.noexc.i.i950
  unreachable

_ZNSt15__new_allocatorIP24ggml_backend_buffer_typeE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.pv
  %i.bau = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bar) #26
          to label %.noexc952 unwind label %.loopexit1262 ; 5 uses

.noexc952:                                        ; preds = %_ZNSt15__new_allocatorIP24ggml_backend_buffer_typeE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.bau, ptr %38, align 8, !tbaa !127
  store ptr %i.bau, ptr %i.apw, align 8, !tbaa !128
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 %i.bar ; 4 uses
  store ptr %i.bav, ptr %i.apx, align 8, !tbaa !129
  %i.baw = icmp samesign ugt i64 %i.bar, 8
  br i1 %i.baw, label %bb.pw, label %bb.px, !prof !209

bb.pw:                                            ; preds = %.noexc952
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bau, ptr align 8 %i.bao, i64 %i.bar, i1 false)
  br label %bb.pz

bb.px:                                            ; preds = %.noexc952
  %i.bax = icmp eq i64 %i.bar, 8
  br i1 %i.bax, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  %i.bay = load ptr, ptr %i.bao, align 8, !tbaa !41
  store ptr %i.bay, ptr %i.bau, align 8, !tbaa !41
  br label %bb.pz

.loopexit1257:                                    ; preds = %_ZNSt15__new_allocatorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tE8allocateEmPKv.exit.i.i.i.i936
  %lpad.loopexit1259 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit970

.loopexit.split-lp1258:                           ; preds = %.noexc.i.i945
  %lpad.loopexit.split-lp1260 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EED2Ev.exit970

bb.pz:                                            ; preds = %bb.py, %bb.px, %bb.pw, %.thread1199
  %i.baz = phi ptr [ %i.bav, %bb.pw ], [ %i.bav, %bb.px ], [ %i.bav, %bb.py ], [ %i.bas, %.thread1199 ]
  store ptr %i.baz, ptr %i.apw, align 8, !tbaa !128
  %i.bba = icmp ult i64 %.03151579, %i.azp
  br i1 %i.bba, label %bb.qa, label %bb.qd

bb.qa:                                            ; preds = %bb.pz
  %i.bbb = load ptr, ptr %10, align 8, !tbaa !48
  %i.bbc = getelementptr inbounds nuw [8 x i8], ptr %i.bbb, i64 %.03151579
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !52
  %i.bbf = invoke ptr @ggml_backend_dev_buffer_type(ptr noundef %i.bbe)
          to label %bb.qb unwind label %bb.qc

bb.qb:                                            ; preds = %bb.qa
  %i.bbg = load ptr, ptr %38, align 8, !tbaa !127
  %i.bbh = getelementptr inbounds nuw [8 x i8], ptr %i.bbg, i64 %.03151579
  store ptr %i.bbf, ptr %i.bbh, align 8, !tbaa !41
  br label %bb.qd

.loopexit1262:                                    ; preds = %_ZNSt15__new_allocatorIP24ggml_backend_buffer_typeE8allocateEmPKv.exit.i.i.i.i
  %lpad.loopexit1264 = landingpad { ptr, i32 }
          cleanup
  br label %bb.sg

.loopexit.split-lp1263:                           ; preds = %.noexc.i.i950
  %lpad.loopexit.split-lp1265 = landingpad { ptr, i32 }
          cleanup
  br label %bb.sg

bb.qc:                                            ; preds = %bb.qg, %bb.qf, %bb.qd, %bb.qa
  %i.bbi = landingpad { ptr, i32 }
          cleanup
  br label %bb.se

bb.qd:                                            ; preds = %bb.pz, %bb.qb
  %i.bbj = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.qe unwind label %bb.qc

bb.qe:                                            ; preds = %bb.qd
  %i.bbk = icmp sgt i32 %i.bbj, 3
  br i1 %i.bbk, label %bb.qf, label %bb.qh

bb.qf:                                            ; preds = %bb.qe
  %i.bbl = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.qg unwind label %bb.qc

bb.qg:                                            ; preds = %bb.qf
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.bbl, i32 noundef 2, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__._ZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_level)
          to label %bb.qh unwind label %bb.qc

bb.qh:                                            ; preds = %bb.qg, %bb.qe
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  invoke fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_3clES0_RKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EE"(ptr dead_on_unwind noalias writable align 8 %39, ptr noundef nonnull align 8 dereferenceable(88) %23, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.qi unwind label %bb.qs

bb.qi:                                            ; preds = %bb.qh
  %i.bbm = load ptr, ptr %39, align 16, !tbaa !144 ; 2 uses
  %i.bbn = getelementptr inbounds nuw [8 x i8], ptr %i.bbm, i64 %.03151579
  %i.bbo = load i64, ptr %i.bbn, align 8, !tbaa !19
  %i.bbp = load i64, ptr %i.ari, align 8, !tbaa !19
  %i.bbq = icmp slt i64 %i.bbo, %i.bbp
  br i1 %i.bbq, label %bb.qj, label %bb.rk

bb.qj:                                            ; preds = %bb.qi
  %i.bbr = add i64 %.03151579, 1                  ; 6 uses
  %i.bbs = load i64, ptr %i.n, align 8, !tbaa !19
  %i.bbt = icmp eq i64 %i.bbr, %i.bbs
  br i1 %i.bbt, label %bb.ql, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.bbu = getelementptr inbounds nuw [8 x i8], ptr %i.bbm, i64 %i.bbr
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !19
  %i.bbw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01050.0.lcssa20562065207020802086, i64 %i.bbr
  %i.bbx = load i64, ptr %i.bbw, align 8, !tbaa !19
  %i.bby = icmp slt i64 %i.bbv, %i.bbx
  br i1 %i.bby, label %bb.ql, label %bb.rk

bb.ql:                                            ; preds = %bb.qk, %bb.qj
  %i.bbz = invoke fastcc noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %37)
          to label %bb.qm unwind label %bb.qt     ; 0 uses

bb.qm:                                            ; preds = %bb.ql
  %i.bca = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP24ggml_backend_buffer_typeSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.qn unwind label %bb.qt     ; 0 uses

bb.qn:                                            ; preds = %bb.qm
  %i.bcb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %39)
          to label %bb.qo unwind label %bb.qt     ; 0 uses

bb.qo:                                            ; preds = %bb.qn
  %i.bcc = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.qp unwind label %bb.qt

bb.qp:                                            ; preds = %bb.qo
  %i.bcd = icmp sgt i32 %i.bcc, 3
  br i1 %i.bcd, label %bb.qq, label %bb.qu

bb.qq:                                            ; preds = %bb.qp
  %i.bce = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.qr unwind label %bb.qt

bb.qr:                                            ; preds = %bb.qq
  %.val521 = load ptr, ptr %27, align 8, !tbaa !132
  %i.bcf = getelementptr inbounds nuw [12 x i8], ptr %.val521, i64 %.03151579 ; 2 uses
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !138
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcf, i64 4
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !142
end_hunk_1
