Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_ndarray?download=true
inline.NumInlined: 2079
inline.NumDeleted: 1057
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS0_5shapeIJLl10ELln1EEEENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE:bb.a
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !341
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_43iJNS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.480", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = and i32 %2, -2
  %i.c = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr %i.a, i32 noundef %i.b, ptr noundef %3) #24
  br i1 %i.c, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_43iJNS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !114
  store ptr null, ptr %4, align 8, !tbaa !114
  %i.e = invoke ptr @PyLong_FromLong(i64 noundef 0) #27
          to label %_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #26
  unreachable

_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit.i: ; preds = %bb.b
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_43iJNS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_43iJNS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj0ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit": ; preds = %bb.a, %_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit.i
  %.0.i = phi ptr [ %i.e, %_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit.i ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.h = load ptr, ptr %4, align 8, !tbaa !114
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 4 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !114
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 0, i32 2, i32 73730>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 67, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store <2 x i64> splat (i64 2), ptr %i.a, align 16, !tbaa !27
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.h = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.i = trunc i32 %2 to i1
  %i.j = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.h, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.i, ptr noundef %3) #24 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !343    ; 2 uses
  %.not10 = icmp eq ptr %i.k, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp ne ptr %i.j, null                   ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.j) #24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.j, ptr %0, align 8, !tbaa !343
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.l, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_44iJNS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.480", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr %i.a, i32 noundef %2, ptr noundef %3) #24
  br i1 %i.b, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_44iJNS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !114
  store ptr null, ptr %4, align 8, !tbaa !114
  %i.d = invoke ptr @PyLong_FromLong(i64 noundef 0) #27
          to label %_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit.i: ; preds = %bb.b
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.c) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_44iJNS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_44iJNS_7ndarrayIJfNS_8c_contigENS0_5shapeIJLl2ELl2EEEEEEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit": ; preds = %bb.a, %_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit.i
  %.0.i = phi ptr [ %i.d, %_ZN8nanobind6detail11type_casterIiiE8from_cppEiNS_9rv_policyEPNS0_12cleanup_listE.exit.i ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.g = load ptr, ptr %4, align 8, !tbaa !114
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_45vJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.220", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr %i.a, i32 noundef %2, ptr noundef %3) #24
  br i1 %i.b, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_45vJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.112, ptr noundef %i.g) #27 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !59
  %i.k = sext i32 %i.j to i64
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, i64 noundef %i.k) #27 ; 0 uses
  %i.m = load i32, ptr %i.i, align 8, !tbaa !59
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !345
  %i.r = icmp eq i32 %i.q, 1
  %i.s = zext i1 %i.r to i32
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.116, i32 noundef %i.s) #27 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !346
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, i32 noundef %i.v) #27 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 28
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.x, align 4 ; 3 uses
  %.sroa.019.0.extract.trunc.i = trunc i32 %.sroa.0.0.copyload.i.i to i8
  %.sroa.420.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload.i.i, 8
  %.sroa.420.0.extract.trunc.i = trunc i32 %.sroa.420.0.extract.shift.i to i8 ; 4 uses
  %.sroa.521.0.extract.shift.i = lshr i32 %.sroa.0.0.copyload.i.i, 16 ; 4 uses
  switch i8 %.sroa.019.0.extract.trunc.i, label %bb.f [
    i8 0, label %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit.thread.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 5, label %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit19.i
  ]

_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit.thread.i: ; preds = %._crit_edge.i
  %i.y = icmp eq i8 %.sroa.420.0.extract.trunc.i, 16
  %i.z = icmp eq i32 %.sroa.521.0.extract.shift.i, 1
  %spec.select.i = and i1 %i.z, %i.y
  %i.aa = zext i1 %spec.select.i to i32
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i
  %i.ab = icmp eq i8 %.sroa.420.0.extract.trunc.i, 32
  %i.ac = icmp eq i32 %.sroa.521.0.extract.shift.i, 1
  %spec.select27.i = and i1 %i.ac, %i.ab
  %i.ad = zext i1 %spec.select27.i to i32
  br label %bb.f

bb.d:                                             ; preds = %._crit_edge.i
  %i.ae = icmp eq i8 %.sroa.420.0.extract.trunc.i, 32
  %i.af = icmp eq i32 %.sroa.521.0.extract.shift.i, 1
  %spec.select28.i = and i1 %i.af, %i.ae
  %i.ag = zext i1 %spec.select28.i to i32
  br label %bb.f

_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit19.i:      ; preds = %._crit_edge.i
  %i.ah = icmp eq i8 %.sroa.420.0.extract.trunc.i, 64
  %i.ai = icmp eq i32 %.sroa.521.0.extract.shift.i, 1
  %spec.select29.i = and i1 %i.ai, %i.ah
  %i.aj = zext i1 %spec.select29.i to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.030.i = phi i64 [ 0, %.lr.ph.i ], [ %i.as, %bb.e ] ; 5 uses
  %i.ak = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.030.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !27
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.114, i64 noundef %.030.i, i64 noundef %i.am) #27 ; 0 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.030.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !27
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.115, i64 noundef %.030.i, i64 noundef %i.aq) #27 ; 0 uses
  %i.as = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.at = load i32, ptr %i.i, align 8, !tbaa !59
  %i.au = sext i32 %i.at to i64
  %i.av = icmp ult i64 %i.as, %i.au
  br i1 %i.av, label %bb.e, label %._crit_edge.i, !llvm.loop !344

bb.f:                                             ; preds = %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit19.i, %bb.d, %bb.c, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit.thread.i, %._crit_edge.i
  %5 = phi i32 [ 0, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit19.i ], [ 0, %._crit_edge.i ], [ %i.ag, %bb.d ], [ 0, %bb.c ], [ 0, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit.thread.i ]
  %6 = phi i32 [ 0, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit19.i ], [ 0, %._crit_edge.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ %i.aa, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit.thread.i ]
  %7 = phi i32 [ 0, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit19.i ], [ 0, %._crit_edge.i ], [ 0, %bb.d ], [ %i.ad, %bb.c ], [ 0, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit.thread.i ]
  %8 = phi i32 [ %i.aj, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit19.i ], [ 0, %._crit_edge.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %_ZNK8nanobind6dlpack5dtypeeqERKS1_.exit.thread.i ]
  %i.aw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.118, i32 noundef %6, i32 noundef %7, i32 noundef %5, i32 noundef %8) #27 ; 0 uses
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_45vJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_45vJRKNS_7ndarrayIJEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSB_jPNS0_12cleanup_listEE_clESP_SQ_jSS_.exit": ; preds = %bb.a, %bb.f
  %.0.i = phi ptr [ @_Py_NoneStruct, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ax = load ptr, ptr %4, align 8, !tbaa !58
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.ax) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef nonnull ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_46vJNS_7ndarrayIJhNS0_5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_"(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.498", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !13
  %i.b = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJhNS0_5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr %i.a, i32 noundef %2, ptr noundef %3) #24
  br i1 %i.b, label %bb.b, label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_46vJNS_7ndarrayIJhNS0_5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.d, align 8, !tbaa !25
  %.sroa.74.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.74.8.copyload = load ptr, ptr %.sroa.74.8..sroa_idx, align 8, !tbaa !53 ; 3 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !tbaa !53 ; 3 uses
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.10.8.copyload = load i64, ptr %.sroa.10.8..sroa_idx, align 8, !tbaa !27
  store ptr null, ptr %4, align 8, !tbaa !116
  %i.e = load i64, ptr %.sroa.74.8.copyload, align 8, !tbaa !27 ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_46clENS_7ndarrayIJhNS_6detail5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEE.exit", label %.preheader4.i.preheader

.preheader4.i.preheader:                          ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.74.8.copyload, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.9.8.copyload, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.9.8.copyload, i64 16
  %i.i = getelementptr i8, ptr %.sroa.5.8.copyload, i64 %.sroa.10.8.copyload
  %.pre = load i64, ptr %i.f, align 8, !tbaa !27
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %.preheader4.i.preheader, %._crit_edge.i
  %i.j = phi i64 [ %i.l, %._crit_edge.i ], [ %.pre, %.preheader4.i.preheader ]
  %i.k = phi i64 [ %i.m, %._crit_edge.i ], [ %i.e, %.preheader4.i.preheader ]
  %.0137.i = phi i64 [ %i.n, %._crit_edge.i ], [ 0, %.preheader4.i.preheader ] ; 2 uses
  %.not9.i = icmp eq i64 %i.j, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader4.i, %bb.c
  %.0126.i = phi i64 [ %i.p, %bb.c ], [ 0, %.preheader4.i ] ; 2 uses
  br label %bb.d

._crit_edge.loopexit.i:                           ; preds = %bb.c
  %.pre.i = load i64, ptr %.sroa.74.8.copyload, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader4.i
  %i.l = phi i64 [ %i.q, %._crit_edge.loopexit.i ], [ 0, %.preheader4.i ]
  %i.m = phi i64 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.k, %.preheader4.i ] ; 2 uses
  %i.n = add nuw i64 %.0137.i, 1                  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  br i1 %i.o, label %.preheader4.i, label %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_46clENS_7ndarrayIJhNS_6detail5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEE.exit", !llvm.loop !347

bb.c:                                             ; preds = %bb.d
  %i.p = add nuw i64 %.0126.i, 1                  ; 2 uses
  %i.q = load i64, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.preheader.i, label %._crit_edge.loopexit.i, !llvm.loop !348

bb.d:                                             ; preds = %bb.d, %.preheader.i
  %.05.i = phi i64 [ 0, %.preheader.i ], [ %i.af, %bb.d ] ; 2 uses
  %i.s = load i64, ptr %.sroa.9.8.copyload, align 8, !tbaa !27
  %i.t = mul nsw i64 %i.s, %.0137.i
  %i.u = load i64, ptr %i.g, align 8, !tbaa !27
  %i.v = mul nsw i64 %i.u, %.0126.i
  %i.w = load i64, ptr %i.h, align 8, !tbaa !27
  %i.x = mul nsw i64 %i.w, %.05.i
  %i.y = getelementptr i8, ptr %i.i, i64 %i.t
  %i.z = getelementptr i8, ptr %i.y, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.x    ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = zext i8 %i.ab to i16
  %i.ad = shl nuw nsw i16 %i.ac, 1
  %.sroa.speculated.i = call i16 @llvm.umin.i16(i16 %i.ad, i16 255)
  %i.ae = trunc nuw i16 %.sroa.speculated.i to i8
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !16
  %i.af = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, 3
  br i1 %exitcond.not.i, label %bb.c, label %bb.d, !llvm.loop !349

"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_46clENS_7ndarrayIJhNS_6detail5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEE.exit": ; preds = %._crit_edge.i, %bb.b
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.c) #24
  br label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_46vJNS_7ndarrayIJhNS0_5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit"

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_46vJNS_7ndarrayIJhNS0_5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSE_jPNS0_12cleanup_listEE_clESS_ST_jSV_.exit": ; preds = %bb.a, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_46clENS_7ndarrayIJhNS_6detail5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEE.exit"
  %.0.i = phi ptr [ @_Py_NoneStruct, %"_ZZL35nanobind_test_ndarray_ext_exec_implN8nanobind7module_EENK4$_46clENS_7ndarrayIJhNS_6detail5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEE.exit" ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ag = load ptr, ptr %4, align 8, !tbaa !116
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.ag) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_7ndarrayIJhNS0_5shapeIJLln1ELln1ELl3EEEENS_8c_contigENS_6device3cpuEEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 5 uses
  %4 = alloca %"struct.nanobind::detail::ndarray_config", align 16 ; 7 uses
  %i.b = icmp ne ptr %1, @_Py_NoneStruct
  %i.c = and i32 %2, 4
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !116
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef %i.d) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  tail call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef null) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store <4 x i32> <i32 0, i32 1, i32 3, i32 67585>, ptr %4, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 67, ptr %i.e, align 16, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 -1, i64 16, i1 false)
  store i64 3, ptr %i.h, align 16, !tbaa !27
  store ptr %i.a, ptr %i.g, align 8, !tbaa !51
  %i.i = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !15
  %i.j = trunc i32 %2 to i1
  %i.k = call noundef ptr @_ZN8nanobind6detail14ndarray_importEPNS0_12nb_internalsEP7_objectPKNS0_14ndarray_configEbPNS0_12cleanup_listE(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %i.j, ptr noundef %3) #24 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !351    ; 2 uses
  %.not10 = icmp eq ptr %i.l, null
  br i1 %.not10, label %bb.e, label %bb.d, !prof !52

bb.d:                                             ; preds = %bb.c
  call void @_ZN8nanobind6detail15ndarray_dec_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.l) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = icmp ne ptr %i.k, null                   ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g, !prof !52

bb.f:                                             ; preds = %bb.e
  %i.n = call noundef ptr @_ZN8nanobind6detail15ndarray_inc_refEPNS0_14ndarray_handleE(ptr noundef nonnull %i.k) #24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !54
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.k, ptr %0, align 8, !tbaa !351
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.m, %bb.g ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_47iJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS7_jPNS0_12cleanup_listEE_8__invokeESL_SM_jSO_"(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree readnone captures(none) %3) #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr @destruct_count, align 4, !tbaa !24
  %i.b = sext i32 %i.a to i64
  %i.c = invoke ptr @PyLong_FromLong(i64 noundef %i.b) #27
          to label %"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_47iJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_47iJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS7_jPNS0_12cleanup_listEE_clESL_SM_jSO_.exit": ; preds = %bb.a
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define internal noundef ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_ndarray_ext_exec_implNS_7module_EE4$_48NS_7ndarrayIJfNS0_5shapeIJLl2ELl4EEEEEEEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_"(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr noundef %3) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::ndarray_create_args", align 8 ; 12 uses
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %5 = alloca %"class.nanobind::capsule", align 8 ; 7 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znam(i64 noundef 32) #31, !noalias !354 ; 4 uses
  store <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, ptr %i.b, align 4, !tbaa !109, !noalias !354
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> <float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00>, ptr %i.c, align 4, !tbaa !109, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !354
end_hunk_0
