Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/fit?download=true
inline.NumInlined: 1715
inline.NumDeleted: 635
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt6vectorIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EEaSERKSG_:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSt6vectorISG_SaISG_EEEENS1_IPSG_SL_EEET0_T_SQ_SP_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSt6vectorISG_SaISG_EEEENS1_IPSG_SL_EEET0_T_SQ_SP_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSF_ET0_T_SH_SG_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSaISE_EE13_M_deallocateEPSE_m.exit
  %i.af = load ptr, ptr %0, align 8, !tbaa !132
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %reass.sub.fr
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !137
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelE5ngl_tSt6vectorISG_SaISG_EEEENS1_IPSG_SL_EEET0_T_SQ_SP_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !146
  %i.c = load ptr, ptr %1, align 8, !tbaa !144    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !147
  %i.i = load ptr, ptr %0, align 8, !tbaa !144    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, !prof !139

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !145

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.r, ptr %i.o, align 8, !tbaa !19
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #27
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !147
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !146  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !145

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.z, ptr %i.i, align 8, !tbaa !19
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !145

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !144
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !146 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !144
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !146
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !19
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !145

bb.r:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !19
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !19
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !144
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !146
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_2clERKSt6vectorIZL22common_params_fit_implS0_S2_S4_S5_S7_S8_jSB_SC_E5ngl_tSaISF_EERKSE_IP24ggml_backend_buffer_typeSaISL_EERS1_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((16, 20)) %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !112
  %i.b = load ptr, ptr %0, align 8, !tbaa !363, !nonnull !61, !align !153
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 7 uses
  %.not219 = icmp eq i64 %i.c, 0
  br i1 %.not219, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !364, !nonnull !61, !align !153
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.f, ptr %i.g, align 8, !tbaa !113
  br label %._crit_edge217

.lr.ph:                                           ; preds = %bb.a
  %.val69 = load ptr, ptr %1, align 8, !tbaa !132 ; 10 uses
  %.not220 = icmp eq i64 %i.c, 1
  br i1 %.not220, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %22 = load i32, ptr %.val69, align 4, !tbaa !138
  br label %.lr.ph216

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !61, !align !153
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %min.iters.check = icmp ult i64 %i.c, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us
  %i.k = and i64 %i.c, 7                          ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = select i1 %i.l, i64 8, i64 %i.k
  %n.vec = sub i64 %i.c, %i.m                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi448 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %index
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %index
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %index
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %index
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %index
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.ac = load i32, ptr %i.n, align 4, !tbaa !138
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !138
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !138
  %i.af = load i32, ptr %i.t, align 4, !tbaa !138
  %i.ag = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 1
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 2
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.af, i64 3 ; 2 uses
  %i.ak = load i32, ptr %i.v, align 4, !tbaa !138
  %i.al = load i32, ptr %i.x, align 4, !tbaa !138
  %i.am = load i32, ptr %i.z, align 4, !tbaa !138
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !138
  %i.ao = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 1
  %i.aq = insertelement <4 x i32> %i.ap, i32 %i.am, i64 2
  %i.ar = insertelement <4 x i32> %i.aq, i32 %i.an, i64 3 ; 2 uses
  %i.as = add <4 x i32> %vec.phi, %i.aj           ; 2 uses
  %i.at = add <4 x i32> %vec.phi448, %i.ar        ; 2 uses
  %i.au = uitofp <4 x i32> %i.aj to <4 x float>
  %i.av = uitofp <4 x i32> %i.ar to <4 x float>
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !114
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !114
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !334

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.at, %i.as
  %i.az = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.split.us, %middle.block
  %.ph = phi i32 [ 0, %.lr.ph.split.us ], [ %i.az, %middle.block ]
  %.060198.us.ph = phi i64 [ 0, %.lr.ph.split.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ba = phi i32 [ %i.bd, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %.060198.us = phi i64 [ %i.bg, %scalar.ph ], [ %.060198.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %.val69, i64 %.060198.us
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !138 ; 2 uses
  %i.bd = add i32 %i.ba, %i.bc                    ; 2 uses
  %i.be = uitofp i32 %i.bc to float
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.060198.us
  store float %i.be, ptr %i.bf, align 4, !tbaa !114
  %i.bg = add nuw i64 %.060198.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.c
  br i1 %exitcond.not, label %.lr.ph216, label %scalar.ph, !llvm.loop !335

.lr.ph216:                                        ; preds = %scalar.ph, %.lr.ph.split.preheader
  %.us-phi = phi i32 [ %22, %.lr.ph.split.preheader ], [ %i.bd, %scalar.ph ] ; 2 uses
  store i32 %.us-phi, ptr %i.a, align 8, !tbaa !112
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !365, !nonnull !61, !align !154
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !364, !nonnull !61, !align !153
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !71
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !113
  %i.bo = add i32 %i.bj, 1
  %i.bp = sub i32 %i.bo, %.us-phi
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.val67.pre = load ptr, ptr %1, align 8, !tbaa !132
  br label %bb.b

._crit_edge217:                                   ; preds = %._crit_edge210, %.thread
  %.057.lcssa = phi i64 [ 0, %.thread ], [ %.158.lcssa, %._crit_edge210 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !366, !nonnull !61, !align !153
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !72 ; 2 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %.057.lcssa
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !115
  ret void

bb.b:                                             ; preds = %.lr.ph216, %._crit_edge210
  %i.cv = phi i64 [ %i.c, %.lr.ph216 ], [ %i.dd, %._crit_edge210 ]
  %.val66200 = phi ptr [ %.val67.pre, %.lr.ph216 ], [ %.val66200258, %._crit_edge210 ] ; 3 uses
  %.056214 = phi i64 [ 0, %.lr.ph216 ], [ %i.de, %._crit_edge210 ] ; 5 uses
  %.057213 = phi i64 [ 0, %.lr.ph216 ], [ %.158.lcssa, %._crit_edge210 ] ; 2 uses
  %.059212 = phi i32 [ %i.bp, %.lr.ph216 ], [ %.lcssa130, %._crit_edge210 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %.val66200, i64 %.056214 ; 2 uses
  %.val70 = load i32, ptr %i.cw, align 4, !tbaa !138 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 4
  %.val71 = load i32, ptr %i.cx, align 4, !tbaa !142
  %i.cy = sub i32 %.val70, %.val71
  %i.cz = add i32 %i.cy, %.059212                 ; 3 uses
  %i.da = add i32 %.val70, %.059212               ; 2 uses
  %i.db = icmp ult i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph209.preheader, label %._crit_edge210

.lr.ph209.preheader:                              ; preds = %bb.b
  %i.dc = zext i32 %i.cz to i64                   ; 2 uses
  br label %.lr.ph209

._crit_edge210.loopexit:                          ; preds = %bb.cu
  %.pre262.a = load ptr, ptr %0, align 8, !tbaa !363
  %.pre263 = load i64, ptr %.pre262.a, align 8, !tbaa !19
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %._crit_edge210.loopexit, %bb.b
  %i.dd = phi i64 [ %i.cv, %bb.b ], [ %.pre263, %._crit_edge210.loopexit ] ; 2 uses
  %.val66200258 = phi ptr [ %.val66200, %bb.b ], [ %.val66, %._crit_edge210.loopexit ]
  %.158.lcssa = phi i64 [ %.057213, %bb.b ], [ %i.dh, %._crit_edge210.loopexit ] ; 2 uses
  %.lcssa130 = phi i32 [ %i.da, %bb.b ], [ %i.xk, %._crit_edge210.loopexit ]
  %i.de = add nuw i64 %.056214, 1                 ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  br i1 %i.df, label %bb.b, label %._crit_edge217, !llvm.loop !336

.lr.ph209:                                        ; preds = %.lr.ph209.preheader, %bb.cu
  %indvars.iv = phi i64 [ %i.dc, %.lr.ph209.preheader ], [ %indvars.iv.next, %bb.cu ] ; 35 uses
  %i.dg = phi ptr [ %.val66200, %.lr.ph209.preheader ], [ %.val66, %bb.cu ]
  %.158201 = phi i64 [ %.057213, %.lr.ph209.preheader ], [ %i.dh, %bb.cu ] ; 4 uses
  %i.dh = add i64 %.158201, 1                     ; 3 uses
  %i.di = load ptr, ptr %i.bq, align 8, !tbaa !367, !nonnull !61, !align !153
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !19
  %.not = icmp ult i64 %i.dh, %i.dj
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %.lr.ph209
  %i.dk = load ptr, ptr %i.cp, align 8, !tbaa !366, !nonnull !61, !align !153
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !72 ; 2 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %.158201
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !115
  %i.do = call ptr @__cxa_allocate_exception(i64 16) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  %i.dp = load ptr, ptr %i.bq, align 8, !tbaa !367, !nonnull !61, !align !153
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !19
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, i64 noundef %i.dq)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.94, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.95)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV27common_params_fit_exception, i64 16), ptr %i.do, align 8, !tbaa !64
  invoke void @__cxa_throw(ptr nonnull %i.do, ptr nonnull @_ZTI27common_params_fit_exception, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.cv unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread: ; preds = %bb.c
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load ptr, ptr %19, align 8, !tbaa !104  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !105
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.h ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.dt, %bb.i ] ; 4 uses
  %.1 = phi i1 [ true, %bb.h ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.i ] ; 2 uses
  %i.dz = load ptr, ptr %20, align 8, !tbaa !104  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !105
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %i.ee = load ptr, ptr %21, align 8, !tbaa !104  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread: ; preds = %bb.d
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %21, align 8, !tbaa !104  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.thread
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !105
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #27
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.en = load i64, ptr %i.ef, align 8, !tbaa !105
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eo) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
  br i1 %.1, label %bb.j, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #24
end_hunk_0
