Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-model-loader?download=true
inline.NumInlined: 7519
inline.NumDeleted: 3217
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_S14_S14_T0_S15_T1_T2_":bb.a
  br i1 %i.br, label %bb.ag, label %.outer, !llvm.loop !1383

bb.ag:                                            ; preds = %bb.af
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %5 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = ashr exact i64 %i.bv, 3                 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 1
  br i1 %i.bx, label %bb.ah, label %bb.ai, !prof !141

bb.ah:                                            ; preds = %bb.ag
  %i.by = sub nsw i64 0, %i.bw
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.by
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bz, ptr align 8 %5, i64 %i.bv, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_S14_T0_S15_T1_T2_.exit"

bb.ai:                                            ; preds = %bb.ag
  %i.ca = icmp eq i64 %i.bv, 8
  br i1 %i.ca, label %bb.aj, label %"_ZSt21__move_merge_adaptiveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_S14_T0_S15_T1_T2_.exit"

bb.aj:                                            ; preds = %bb.ai
  %i.cb = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16
  %i.cc = load ptr, ptr %5, align 8, !tbaa !247
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !247
  br label %"_ZSt21__move_merge_adaptiveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_S14_T0_S15_T1_T2_.exit"

bb.ak:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIPP11ggml_tensorNS_17__normal_iteratorISZ_SI_ISY_SaISY_EEEEEEbT_T0_.exit.i", %.split.i30
  %i.cd = load ptr, ptr %.0.i, align 8, !tbaa !247
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 2 uses
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !247
  %i.cf = icmp eq ptr %5, %.0.i
  br i1 %i.cf, label %"_ZSt21__move_merge_adaptiveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_S14_T0_S15_T1_T2_.exit", label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cg = getelementptr inbounds i8, ptr %.0.i, i64 -8
  br label %bb.aa, !llvm.loop !1383

"_ZSt21__move_merge_adaptiveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_S14_T0_S15_T1_T2_.exit": ; preds = %bb.m, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.y, %bb.x, %bb.w, %bb.v, %bb.p, %bb.o, %bb.n, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_S14_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.0.016, %1
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0.019 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %bb.r ] ; 7 uses
  %.pn18 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.019, %bb.r ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.0.019, align 8, !tbaa !247 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !247    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !320  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.f)
  %i.h = xor i1 %i.g, true
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i1 [ false, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !320  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.k)
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = phi i32 [ 0, %bb.d ], [ %i.n, %bb.e ]
  %i.p = zext i1 %i.i to i32
  %.not13.i.i = icmp ne i32 %i.o, %i.p            ; 2 uses
  %.not14.i.i = xor i1 %i.i, true
  %brmerge.i.i = or i1 %.not13.i.i, %.not14.i.i
  br i1 %brmerge.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit", label %.split

.split:                                           ; preds = %bb.f
  %i.q = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.c)
  %i.r = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.d)
  %i.s = icmp ugt i64 %i.q, %i.r
  br i1 %i.s, label %bb.g, label %bb.k

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit": ; preds = %bb.f
  %.mux.i.i = and i1 %i.i, %.not13.i.i
  br i1 %.mux.i.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit"
  %i.t = load ptr, ptr %.sroa.0.019, align 8, !tbaa !247
  %i.u = ptrtoint ptr %.sroa.0.019 to i64
  %i.v = sub i64 %i.u, %i.b                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !141

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.pn18, i64 16
  %i.z = sub nsw i64 0, %i.w
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.v, 8
  br i1 %i.ab, label %bb.j, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn18, i64 8
  %i.ad = load ptr, ptr %0, align 8, !tbaa !247
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !247
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %bb.h, %bb.i, %bb.j
  store ptr %i.t, ptr %0, align 8, !tbaa !247
  br label %bb.r

bb.k:                                             ; preds = %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit"
  %i.ae = load ptr, ptr %.sroa.0.019, align 8, !tbaa !247 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.q, %bb.k
  %.sroa.03.0.i = phi ptr [ %.sroa.0.019, %bb.k ], [ %.sroa.0.0.i, %bb.q ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8 ; 3 uses
  %i.ag = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !247 ; 2 uses
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !320 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.ah)
  %i.aj = xor i1 %i.ai, true
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ak = phi i1 [ false, %bb.l ], [ %i.aj, %bb.m ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !320 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not12.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.am)
  %i.ao = xor i1 %i.an, true
  %i.ap = zext i1 %i.ao to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aq = phi i32 [ 0, %bb.n ], [ %i.ap, %bb.o ]
  %i.ar = zext i1 %i.ak to i32
  %.not13.i.i.i = icmp ne i32 %i.aq, %i.ar        ; 2 uses
  %.not14.i.i.i = xor i1 %i.ak, true
  %brmerge.i.i.i = or i1 %.not13.i.i.i, %.not14.i.i.i
  br i1 %brmerge.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIP11ggml_tensorNS_17__normal_iteratorIPSY_SI_ISY_SaISY_EEEEEEbRT_T0_.exit.i", label %.split.i

.split.i:                                         ; preds = %bb.p
  %i.as = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.ae)
  %i.at = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.ag)
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.q, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIP11ggml_tensorNS_17__normal_iteratorIPSY_SI_ISY_SaISY_EEEEEEbRT_T0_.exit.i": ; preds = %bb.p
  %.mux.i.i.i = and i1 %i.ak, %.not13.i.i.i
  br i1 %.mux.i.i.i, label %bb.q, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_T0_.exit"

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIP11ggml_tensorNS_17__normal_iteratorIPSY_SI_ISY_SaISY_EEEEEEbRT_T0_.exit.i", %.split.i
  %i.av = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !247
  store ptr %i.av, ptr %.sroa.03.0.i, align 8, !tbaa !247
  br label %bb.l, !llvm.loop !1384

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_T0_.exit": ; preds = %.split.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIP11ggml_tensorNS_17__normal_iteratorIPSY_SI_ISY_SaISY_EEEEEEbRT_T0_.exit.i"
  store ptr %i.ae, ptr %.sroa.03.0.i, align 8, !tbaa !247
  br label %bb.r

bb.r:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_T0_.exit"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !1385

.loopexit:                                        ; preds = %bb.r, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEET0_T_S15_S15_S15_S14_T1_"(ptr %0, ptr %1, ptr %2, ptr %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond17 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond17, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.020 = phi ptr [ %i.x, %bb.h ], [ %4, %bb.a ]  ; 3 uses
  %.sroa.014.019 = phi ptr [ %.sroa.014.1, %bb.h ], [ %0, %bb.a ] ; 4 uses
  %.sroa.010.018 = phi ptr [ %.sroa.010.1, %bb.h ], [ %2, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.sroa.010.018, align 8, !tbaa !247 ; 2 uses
  %i.d = load ptr, ptr %.sroa.014.019, align 8, !tbaa !247 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !320  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.f)
  %i.h = xor i1 %i.g, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = phi i1 [ false, %.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !320  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.k, null
  br i1 %.not12.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.k)
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i32 [ 0, %bb.c ], [ %i.n, %bb.d ]
  %i.p = zext i1 %i.i to i32
  %.not13.i.i = icmp ne i32 %i.o, %i.p            ; 2 uses
  %.not14.i.i = xor i1 %i.i, true
  %brmerge.i.i = or i1 %.not13.i.i, %.not14.i.i
  br i1 %brmerge.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit", label %.split

.split:                                           ; preds = %bb.e
  %i.q = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.c)
  %i.r = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.d)
  %i.s = icmp ugt i64 %i.q, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit": ; preds = %bb.e
  %.mux.i.i = and i1 %i.i, %.not13.i.i
  br i1 %.mux.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit"
  %i.t = load ptr, ptr %.sroa.010.018, align 8, !tbaa !247
  store ptr %i.t, ptr %.020, align 8, !tbaa !247
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit"
  %i.v = load ptr, ptr %.sroa.014.019, align 8, !tbaa !247
  store ptr %i.v, ptr %.020, align 8, !tbaa !247
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.019, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.010.1 = phi ptr [ %i.u, %bb.f ], [ %.sroa.010.018, %bb.g ] ; 3 uses
  %.sroa.014.1 = phi ptr [ %.sroa.014.019, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  %i.y = icmp ne ptr %.sroa.014.1, %1
  %i.z = icmp ne ptr %.sroa.010.1, %3
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !32

.critedge:                                        ; preds = %bb.h, %bb.a
  %.sroa.010.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.010.1, %bb.h ] ; 3 uses
  %.sroa.014.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.014.1, %bb.h ] ; 3 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.x, %bb.h ] ; 3 uses
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = ptrtoint ptr %.sroa.014.0.lcssa to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp sgt i64 %i.ac, 8
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !141

bb.i:                                             ; preds = %.critedge
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa, ptr align 8 %.sroa.014.0.lcssa, i64 %i.ac, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %.critedge
  %i.ae = icmp eq i64 %i.ac, 8
  br i1 %i.ae, label %bb.k, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %.sroa.014.0.lcssa, align 8, !tbaa !247
  store ptr %i.af, ptr %.0.lcssa, align 8, !tbaa !247
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ag = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.ac ; 2 uses
  %i.ah = ptrtoint ptr %3 to i64
  %i.ai = ptrtoint ptr %.sroa.010.0.lcssa to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 8
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !141

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %.sroa.010.0.lcssa, i64 %i.aj, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit9

bb.m:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.al = icmp eq i64 %i.aj, 8
  br i1 %i.al, label %bb.n, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit9

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %.sroa.010.0.lcssa, align 8, !tbaa !247
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !247
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit9

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit9: ; preds = %bb.l, %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt12__move_mergeIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEET0_T_S15_S15_S15_S14_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.024 = phi ptr [ %.1, %bb.h ], [ %0, %bb.a ]   ; 4 uses
  %.01623 = phi ptr [ %.117, %bb.h ], [ %2, %bb.a ] ; 4 uses
  %.sroa.0.021 = phi ptr [ %i.w, %bb.h ], [ %4, %bb.a ] ; 3 uses
  %.016.val = load ptr, ptr %.01623, align 8, !tbaa !247 ; 2 uses
  %.0.val = load ptr, ptr %.024, align 8, !tbaa !247 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.016.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !320  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.e)
  %i.g = xor i1 %i.f, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.h = phi i1 [ false, %.lr.ph ], [ %i.g, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !320  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.j, null
  br i1 %.not12.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.j)
  %i.l = xor i1 %i.k, true
  %i.m = zext i1 %i.l to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ 0, %bb.c ], [ %i.m, %bb.d ]
  %i.o = zext i1 %i.h to i32
  %.not13.i.i = icmp ne i32 %i.n, %i.o            ; 2 uses
  %.not14.i.i = xor i1 %i.h, true
  %brmerge.i.i = or i1 %.not13.i.i, %.not14.i.i
  br i1 %brmerge.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIPP11ggml_tensorSZ_EEbT_T0_.exit", label %.split

.split:                                           ; preds = %bb.e
  %i.p = tail call i64 @ggml_nbytes(ptr noundef nonnull %.016.val)
  %i.q = tail call i64 @ggml_nbytes(ptr noundef nonnull %.0.val)
  %i.r = icmp ugt i64 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIPP11ggml_tensorSZ_EEbT_T0_.exit": ; preds = %bb.e
  %.mux.i.i = and i1 %i.h, %.not13.i.i
  br i1 %.mux.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIPP11ggml_tensorSZ_EEbT_T0_.exit"
  %i.s = load ptr, ptr %.01623, align 8, !tbaa !247
  store ptr %i.s, ptr %.sroa.0.021, align 8, !tbaa !247
  %i.t = getelementptr inbounds nuw i8, ptr %.01623, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclIPP11ggml_tensorSZ_EEbT_T0_.exit"
  %i.u = load ptr, ptr %.024, align 8, !tbaa !247
  store ptr %i.u, ptr %.sroa.0.021, align 8, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %.024, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117 = phi ptr [ %i.t, %bb.f ], [ %.01623, %bb.g ] ; 3 uses
  %.1 = phi ptr [ %.024, %bb.f ], [ %i.v, %bb.g ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 8 ; 2 uses
  %i.x = icmp ne ptr %.1, %1
  %i.y = icmp ne ptr %.117, %3
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.w, %bb.h ] ; 3 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.h ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.h ] ; 3 uses
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = ptrtoint ptr %.0.lcssa to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp sgt i64 %i.ac, 8
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !141

bb.i:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0.0.lcssa, ptr align 8 %.0.lcssa, i64 %i.ac, i1 false)
  br label %_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ae = icmp eq i64 %i.ac, 8
  br i1 %i.ae, label %bb.k, label %_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %.0.lcssa, align 8, !tbaa !247
  store ptr %i.af, ptr %.sroa.0.0.lcssa, align 8, !tbaa !247
  br label %_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.ac ; 2 uses
  %i.ah = ptrtoint ptr %3 to i64
  %i.ai = ptrtoint ptr %.016.lcssa to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp sgt i64 %i.aj, 8
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !141

bb.l:                                             ; preds = %_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ag, ptr align 8 %.016.lcssa, i64 %i.aj, i1 false)
  br label %_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit18

bb.m:                                             ; preds = %_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %i.al = icmp eq i64 %i.aj, 8
  br i1 %i.al, label %bb.n, label %_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit18

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %.016.lcssa, align 8, !tbaa !247
  store ptr %i.am, ptr %i.ag, align 8, !tbaa !247
  br label %_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit18

_ZSt4moveIPP11ggml_tensorN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit18: ; preds = %bb.l, %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjSG_EEEPS5_ISt10unique_ptrI11llama_mlockSt14default_deleteISS_EESaISV_EEPFbfPvESZ_E3$_1EEEvT_S14_S14_T0_S15_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond89 = or i1 %i.a, %i.b
  br i1 %or.cond89, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.cj, %tailrecurse ] ; 4 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.ci, %tailrecurse ] ; 4 uses
  %.tr8392 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr90 = phi ptr [ %0, %.lr.ph ], [ %i.ch, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8695, %.tr8594
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr8392, align 8, !tbaa !247 ; 2 uses
  %i.g = load ptr, ptr %.tr90, align 8, !tbaa !247 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !320  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.i)
  %i.k = xor i1 %i.j, true
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i1 [ false, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !320  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.n, null
  br i1 %.not12.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call zeroext i1 @ggml_backend_buffer_is_host(ptr noundef nonnull %i.n)
  %i.p = xor i1 %i.o, true
  %i.q = zext i1 %i.p to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = phi i32 [ 0, %bb.e ], [ %i.q, %bb.f ]
  %i.s = zext i1 %i.l to i32
  %.not13.i.i = icmp ne i32 %i.r, %i.s            ; 2 uses
  %.not14.i.i = xor i1 %i.l, true
  %brmerge.i.i = or i1 %.not13.i.i, %.not14.i.i
  br i1 %brmerge.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit", label %.split

.split:                                           ; preds = %bb.g
  %i.t = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.f)
  %i.u = tail call i64 @ggml_nbytes(ptr noundef nonnull %i.g)
  %i.v = icmp ugt i64 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %.loopexit

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit": ; preds = %bb.g
  %.mux.i.i = and i1 %i.l, %.not13.i.i
  br i1 %.mux.i.i, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.split, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN18llama_model_loader13load_all_dataEP12ggml_contextRSt13unordered_mapIjP19ggml_backend_bufferSt4hashIjESt8equal_toIjESaISt4pairIKjS7_EEEPSt6vectorISt10unique_ptrI11llama_mlockSt14default_deleteISK_EESaISN_EEPFbfPvESR_E3$_1EclINS_17__normal_iteratorIPP11ggml_tensorSI_ISZ_SaISZ_EEEES13_EEbT_T0_.exit"
  %i.w = load ptr, ptr %.tr90, align 8, !tbaa !247
  %i.x = load ptr, ptr %.tr8392, align 8, !tbaa !247
  store ptr %i.x, ptr %.tr90, align 8, !tbaa !247
  store ptr %i.w, ptr %.tr8392, align 8, !tbaa !247
  br label %.loopexit

bb.i:                                             ; preds = %bb.b
  %i.y = icmp sgt i64 %.tr8594, %.tr8695
  %i.z = ptrtoint ptr %.tr8392 to i64             ; 4 uses
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPP11ggml_tensorSt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.i
end_hunk_0
