Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_stl?download=true
inline.NumInlined: 5730
inline.NumDeleted: 3094
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL31nanobind_test_stl_ext_exec_implN8nanobind7module_E:bb.a
  store ptr @.str.62, ptr %i.agv, align 8, !tbaa !331
  store i32 11, ptr %i.agm, align 8, !tbaa !39
  store ptr @.str.60, ptr %i.agr, align 8, !tbaa !345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ags, i8 0, i64 16, i1 false)
  %i.agw = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.agx = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.agw, ptr noundef nonnull %56) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #32
  %.sroa.0.0.copyload.i205 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw) #32
  store ptr @_ZTI7Movable, ptr %i.aw, align 16, !tbaa !29
  %i.agy = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.agy, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #32
  %i.agz = getelementptr inbounds nuw i8, ptr %55, i64 56
  %i.aha = getelementptr inbounds nuw i8, ptr %55, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_46St8optionalI7MovableEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSA_jPNS0_12cleanup_listEE_8__invokeESO_SP_jSR_", ptr %i.aha, align 8, !tbaa !35
  %i.ahb = getelementptr inbounds nuw i8, ptr %55, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_46St8optionalI7MovableEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ahb, align 8, !tbaa !36
  %i.ahc = getelementptr inbounds nuw i8, ptr %55, i64 48
  store ptr %i.aw, ptr %i.ahc, align 8, !tbaa !37
  %i.ahd = getelementptr inbounds nuw i8, ptr %55, i64 60
  store <2 x i16> zeroinitializer, ptr %i.ahd, align 4, !tbaa !38
  %i.ahe = getelementptr inbounds nuw i8, ptr %55, i64 80
  store ptr %.sroa.0.0.copyload.i205, ptr %i.ahe, align 8, !tbaa !330
  %i.ahf = getelementptr inbounds nuw i8, ptr %55, i64 64
  store ptr @.str.63, ptr %i.ahf, align 8, !tbaa !331
  store i32 3, ptr %i.agz, align 8, !tbaa !39
  %i.ahg = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.ahh = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ahg, ptr noundef nonnull %55) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw) #32
  %.sroa.0.0.copyload.i206 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av) #32
  store ptr @_ZTI7Movable, ptr %i.av, align 16, !tbaa !29
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr null, ptr %i.ahi, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #32
  %i.ahj = getelementptr inbounds nuw i8, ptr %54, i64 56
  %i.ahk = getelementptr inbounds nuw i8, ptr %54, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_47PSt8optionalIP7MovableEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.ahk, align 8, !tbaa !35
  %i.ahl = getelementptr inbounds nuw i8, ptr %54, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_47PSt8optionalIP7MovableEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ahl, align 8, !tbaa !36
  %i.ahm = getelementptr inbounds nuw i8, ptr %54, i64 48
  store ptr %i.av, ptr %i.ahm, align 8, !tbaa !37
  %i.ahn = getelementptr inbounds nuw i8, ptr %54, i64 60
  store <2 x i16> zeroinitializer, ptr %i.ahn, align 4, !tbaa !38
  %i.aho = getelementptr inbounds nuw i8, ptr %54, i64 80
  store ptr %.sroa.0.0.copyload.i206, ptr %i.aho, align 8, !tbaa !330
  %i.ahp = getelementptr inbounds nuw i8, ptr %54, i64 64
  store ptr @.str.64, ptr %i.ahp, align 8, !tbaa !331
  store i32 3, ptr %i.ahj, align 8, !tbaa !39
  %i.ahq = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.ahr = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ahq, ptr noundef nonnull %54) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av) #32
  %.sroa.0.0.copyload.i207 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au) #32
  store ptr @_ZTI7Movable, ptr %i.au, align 16, !tbaa !29
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr null, ptr %i.ahs, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #32
  %i.aht = getelementptr inbounds nuw i8, ptr %53, i64 56
  %i.ahu = getelementptr inbounds nuw i8, ptr %53, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_48St8optionalI7MovableEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSA_jPNS0_12cleanup_listEE_8__invokeESO_SP_jSR_", ptr %i.ahu, align 8, !tbaa !35
  %i.ahv = getelementptr inbounds nuw i8, ptr %53, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_48St8optionalI7MovableEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ahv, align 8, !tbaa !36
  %i.ahw = getelementptr inbounds nuw i8, ptr %53, i64 48
  store ptr %i.au, ptr %i.ahw, align 8, !tbaa !37
  %i.ahx = getelementptr inbounds nuw i8, ptr %53, i64 60
  store <2 x i16> zeroinitializer, ptr %i.ahx, align 4, !tbaa !38
  %i.ahy = getelementptr inbounds nuw i8, ptr %53, i64 80
  store ptr %.sroa.0.0.copyload.i207, ptr %i.ahy, align 8, !tbaa !330
  %i.ahz = getelementptr inbounds nuw i8, ptr %53, i64 64
  store ptr @.str.65, ptr %i.ahz, align 8, !tbaa !331
  store i32 3, ptr %i.aht, align 8, !tbaa !39
  %i.aia = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.aib = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aia, ptr noundef nonnull %53) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %207) #32
  store ptr @.str.60, ptr %207, align 8, !tbaa !347
  %i.aic = getelementptr inbounds nuw i8, ptr %207, i64 8
  store ptr null, ptr %i.aic, align 8, !tbaa !348
  %i.aid = getelementptr inbounds nuw i8, ptr %207, i64 16 ; 2 uses
  store i64 ptrtoint (ptr @_Py_NoneStruct to i64), ptr %i.aid, align 8
  store ptr null, ptr %208, align 8, !tbaa !27
  %.sroa.0.0.copyload.i208 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at) #32
  store ptr null, ptr %i.at, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #32
  %i.aie = getelementptr inbounds nuw i8, ptr %52, i64 56
  %i.aif = getelementptr inbounds nuw i8, ptr %52, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_49St8optionalIiEJRS5_EJLm0EEJNS_5scopeENS_4nameENS_7arg_v_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.aif, align 8, !tbaa !35
  %i.aig = getelementptr inbounds nuw i8, ptr %52, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_49St8optionalIiEJRS5_EJLm0EEJNS_5scopeENS_4nameENS_7arg_v_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.aig, align 8, !tbaa !36
  %i.aih = getelementptr inbounds nuw i8, ptr %52, i64 48
  store ptr %i.at, ptr %i.aih, align 8, !tbaa !37
  %i.aii = getelementptr inbounds nuw i8, ptr %52, i64 60
  store <2 x i16> splat (i16 1), ptr %i.aii, align 4, !tbaa !38
  %i.aij = getelementptr inbounds nuw i8, ptr %52, i64 88
  %i.aik = getelementptr inbounds nuw i8, ptr %52, i64 96
  %i.ail = getelementptr inbounds nuw i8, ptr %52, i64 104
  %i.aim = getelementptr inbounds nuw i8, ptr %52, i64 112
  store i32 4, ptr %i.aim, align 8, !tbaa !344
  %i.ain = getelementptr inbounds nuw i8, ptr %52, i64 80
  store ptr %.sroa.0.0.copyload.i208, ptr %i.ain, align 8, !tbaa !330
  %i.aio = getelementptr inbounds nuw i8, ptr %52, i64 64
  store ptr @.str.66, ptr %i.aio, align 8, !tbaa !331
  store i32 11, ptr %i.aie, align 8, !tbaa !39
  store ptr @.str.60, ptr %i.aij, align 8, !tbaa !345
  store ptr null, ptr %i.aik, align 8, !tbaa !349
  store ptr @_Py_NoneStruct, ptr %i.ail, align 8, !tbaa !350
  %i.aip = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.aiq = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aip, ptr noundef nonnull %52) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at) #32
  %i.air = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aid) #31 ; 0 uses
  %i.ais = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %208) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %207) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %209) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #32, !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #32, !noalias !352
  store ptr null, ptr %51, align 8, !tbaa !27, !noalias !352
  %i.ait = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %51) #31, !noalias !352 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #32, !noalias !352
  store ptr @.str.60, ptr %209, align 8, !tbaa !44
  %.sroa.5351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %209, i64 8
  store ptr null, ptr %.sroa.5351.0..sroa_idx, align 8, !tbaa !44
  %i.aiu = getelementptr inbounds nuw i8, ptr %209, i64 16 ; 2 uses
  store i64 ptrtoint (ptr @_Py_NoneStruct to i64), ptr %i.aiu, align 8
  store ptr null, ptr %189, align 8, !tbaa !27
  %i.aiv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %189) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %189) #32, !noalias !351
  %.sroa.0.0.copyload.i209 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #32
  store ptr null, ptr %i.as, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #32
  %i.aiw = getelementptr inbounds nuw i8, ptr %50, i64 56
  %i.aix = getelementptr inbounds nuw i8, ptr %50, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_50St8optionalIiEJRS5_EJLm0EEJNS_5scopeENS_4nameENS_7arg_v_tILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.aix, align 8, !tbaa !35
  %i.aiy = getelementptr inbounds nuw i8, ptr %50, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_50St8optionalIiEJRS5_EJLm0EEJNS_5scopeENS_4nameENS_7arg_v_tILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.aiy, align 8, !tbaa !36
  %i.aiz = getelementptr inbounds nuw i8, ptr %50, i64 48
  store ptr %i.as, ptr %i.aiz, align 8, !tbaa !37
  %i.aja = getelementptr inbounds nuw i8, ptr %50, i64 60
  store <2 x i16> splat (i16 1), ptr %i.aja, align 4, !tbaa !38
  %i.ajb = getelementptr inbounds nuw i8, ptr %50, i64 88
  %i.ajc = getelementptr inbounds nuw i8, ptr %50, i64 96
  %i.ajd = getelementptr inbounds nuw i8, ptr %50, i64 104
  %i.aje = getelementptr inbounds nuw i8, ptr %50, i64 112
  store i32 4, ptr %i.aje, align 8, !tbaa !344
  %i.ajf = getelementptr inbounds nuw i8, ptr %50, i64 80
  store ptr %.sroa.0.0.copyload.i209, ptr %i.ajf, align 8, !tbaa !330
  %i.ajg = getelementptr inbounds nuw i8, ptr %50, i64 64
  store ptr @.str.67, ptr %i.ajg, align 8, !tbaa !331
  store i32 11, ptr %i.aiw, align 8, !tbaa !39
  store ptr @.str.60, ptr %i.ajb, align 8, !tbaa !345
  store ptr null, ptr %i.ajc, align 8, !tbaa !349
  store ptr @_Py_NoneStruct, ptr %i.ajd, align 8, !tbaa !350
  %i.ajh = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.aji = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ajh, ptr noundef nonnull %50) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #32
  %i.ajj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aiu) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #32
  %.sroa.0.0.copyload.i210 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar) #32
  store ptr @_ZTI13NonAssignable, ptr %i.ar, align 16, !tbaa !29
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr @_ZTI13NonAssignable, ptr %i.ajk, align 8, !tbaa !29
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr null, ptr %i.ajl, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #32
  %i.ajm = getelementptr inbounds nuw i8, ptr %49, i64 56
  %i.ajn = getelementptr inbounds nuw i8, ptr %49, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_51St8optionalI13NonAssignableEJRS6_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_", ptr %i.ajn, align 8, !tbaa !35
  %i.ajo = getelementptr inbounds nuw i8, ptr %49, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_51St8optionalI13NonAssignableEJRS6_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ajo, align 8, !tbaa !36
  %i.ajp = getelementptr inbounds nuw i8, ptr %49, i64 48
  store ptr %i.ar, ptr %i.ajp, align 8, !tbaa !37
  %i.ajq = getelementptr inbounds nuw i8, ptr %49, i64 60
  store <2 x i16> splat (i16 1), ptr %i.ajq, align 4, !tbaa !38
  %i.ajr = getelementptr inbounds nuw i8, ptr %49, i64 88
  %i.ajs = getelementptr inbounds nuw i8, ptr %49, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajr, i8 0, i64 24, i1 false)
  store i32 4, ptr %i.ajs, align 8, !tbaa !344
  %i.ajt = getelementptr inbounds nuw i8, ptr %49, i64 80
  store ptr %.sroa.0.0.copyload.i210, ptr %i.ajt, align 8, !tbaa !330
  %i.aju = getelementptr inbounds nuw i8, ptr %49, i64 64
  store ptr @.str.68, ptr %i.aju, align 8, !tbaa !331
  store i32 11, ptr %i.ajm, align 8, !tbaa !39
  %i.ajv = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.ajw = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ajv, ptr noundef nonnull %49) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar) #32
  %.sroa.0.0.copyload.i211 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #32
  store ptr null, ptr %i.aq, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #32
  %217 = getelementptr inbounds nuw i8, ptr %48, i64 56
  %i.ajx = getelementptr inbounds nuw i8, ptr %48, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_52dJfSt8optionalIiEEJLm0ELm1EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS9_jPNS0_12cleanup_listEE_8__invokeESN_SO_jSQ_", ptr %i.ajx, align 8, !tbaa !35
  %i.ajy = getelementptr inbounds nuw i8, ptr %48, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_52dJfSt8optionalIiEEJLm0ELm1EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ajy, align 8, !tbaa !36
  %i.ajz = getelementptr inbounds nuw i8, ptr %48, i64 48
  store ptr %i.aq, ptr %i.ajz, align 8, !tbaa !37
  %i.aka = getelementptr inbounds nuw i8, ptr %48, i64 60
  store <2 x i16> splat (i16 2), ptr %i.aka, align 4, !tbaa !38
  %i.akb = getelementptr inbounds nuw i8, ptr %48, i64 88
  %i.akc = getelementptr inbounds nuw i8, ptr %48, i64 120
  %i.akd = getelementptr inbounds nuw i8, ptr %48, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.akb, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.akc, i8 0, i64 24, i1 false)
  store i32 4, ptr %i.akd, align 8, !tbaa !344
  %i.ake = getelementptr inbounds nuw i8, ptr %48, i64 80
  store ptr %.sroa.0.0.copyload.i211, ptr %i.ake, align 8, !tbaa !330
  %i.akf = getelementptr inbounds nuw i8, ptr %48, i64 64
  store ptr @.str.69, ptr %i.akf, align 8, !tbaa !331
  store i32 11, ptr %217, align 8, !tbaa !39
  %i.akg = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.akh = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.akg, ptr noundef nonnull %48) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #32
  %.sroa.0.0.copyload.i212 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #32
  store ptr @_ZTI8Copyable, ptr %i.ap, align 16, !tbaa !29
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aki, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #32
  %i.akj = getelementptr inbounds nuw i8, ptr %47, i64 56
  %i.akk = getelementptr inbounds nuw i8, ptr %47, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_53vJRSt7variantIJ8CopyableiEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_", ptr %i.akk, align 8, !tbaa !35
  %i.akl = getelementptr inbounds nuw i8, ptr %47, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_53vJRSt7variantIJ8CopyableiEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.akl, align 8, !tbaa !36
  %i.akm = getelementptr inbounds nuw i8, ptr %47, i64 48
  store ptr %i.ap, ptr %i.akm, align 8, !tbaa !37
  %i.akn = getelementptr inbounds nuw i8, ptr %47, i64 60
  store <2 x i16> splat (i16 1), ptr %i.akn, align 4, !tbaa !38
  %i.ako = getelementptr inbounds nuw i8, ptr %47, i64 80
  store ptr %.sroa.0.0.copyload.i212, ptr %i.ako, align 8, !tbaa !330
  %i.akp = getelementptr inbounds nuw i8, ptr %47, i64 64
  store ptr @.str.70, ptr %i.akp, align 8, !tbaa !331
  store i32 3, ptr %i.akj, align 8, !tbaa !39
  %i.akq = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.akr = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.akq, ptr noundef nonnull %47) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #32
  %.sroa.0.0.copyload.i213 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #32
  store ptr @_ZTI8Copyable, ptr %i.ao, align 16, !tbaa !29
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %i.aks, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #32
  %i.akt = getelementptr inbounds nuw i8, ptr %46, i64 56
  %i.aku = getelementptr inbounds nuw i8, ptr %46, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_54vJRSt7variantIJSt9monostatei8CopyableEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.aku, align 8, !tbaa !35
  %i.akv = getelementptr inbounds nuw i8, ptr %46, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_54vJRSt7variantIJSt9monostatei8CopyableEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.akv, align 8, !tbaa !36
  %i.akw = getelementptr inbounds nuw i8, ptr %46, i64 48
  store ptr %i.ao, ptr %i.akw, align 8, !tbaa !37
  %i.akx = getelementptr inbounds nuw i8, ptr %46, i64 60
  store <2 x i16> splat (i16 1), ptr %i.akx, align 4, !tbaa !38
  %i.aky = getelementptr inbounds nuw i8, ptr %46, i64 88
  %i.akz = getelementptr inbounds nuw i8, ptr %46, i64 96
  %i.ala = getelementptr inbounds nuw i8, ptr %46, i64 112
  store i32 4, ptr %i.ala, align 8, !tbaa !344
  %i.alb = getelementptr inbounds nuw i8, ptr %46, i64 80
  store ptr %.sroa.0.0.copyload.i213, ptr %i.alb, align 8, !tbaa !330
  %i.alc = getelementptr inbounds nuw i8, ptr %46, i64 64
  store ptr @.str.71, ptr %i.alc, align 8, !tbaa !331
  store i32 11, ptr %i.akt, align 8, !tbaa !39
  store ptr @.str.60, ptr %i.aky, align 8, !tbaa !345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.akz, i8 0, i64 16, i1 false)
  %i.ald = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.ale = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ald, ptr noundef nonnull %46) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #32
  %.sroa.0.0.copyload.i214 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #32
  store ptr @_ZTI8Copyable, ptr %i.an, align 16, !tbaa !29
  %i.alf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.alf, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #32
  %i.alg = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.alh = getelementptr inbounds nuw i8, ptr %45, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_55vJRSt7variantIJP8CopyableiEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.alh, align 8, !tbaa !35
  %i.ali = getelementptr inbounds nuw i8, ptr %45, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_55vJRSt7variantIJP8CopyableiEEEJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ali, align 8, !tbaa !36
  %i.alj = getelementptr inbounds nuw i8, ptr %45, i64 48
  store ptr %i.an, ptr %i.alj, align 8, !tbaa !37
  %i.alk = getelementptr inbounds nuw i8, ptr %45, i64 60
  store <2 x i16> splat (i16 1), ptr %i.alk, align 4, !tbaa !38
  %i.all = getelementptr inbounds nuw i8, ptr %45, i64 80
  store ptr %.sroa.0.0.copyload.i214, ptr %i.all, align 8, !tbaa !330
  %i.alm = getelementptr inbounds nuw i8, ptr %45, i64 64
  store ptr @.str.72, ptr %i.alm, align 8, !tbaa !331
  store i32 3, ptr %i.alg, align 8, !tbaa !39
  %i.aln = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.alo = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aln, ptr noundef nonnull %45) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #32
  %.sroa.0.0.copyload.i215 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #32
  store ptr @_ZTI8Copyable, ptr %i.am, align 16, !tbaa !29
  %i.alp = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr null, ptr %i.alp, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #32
  %i.alq = getelementptr inbounds nuw i8, ptr %44, i64 56
  %i.alr = getelementptr inbounds nuw i8, ptr %44, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_56vJRSt7variantIJP8CopyableiEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.alr, align 8, !tbaa !35
  %i.als = getelementptr inbounds nuw i8, ptr %44, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_56vJRSt7variantIJP8CopyableiEEEJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.als, align 8, !tbaa !36
  %i.alt = getelementptr inbounds nuw i8, ptr %44, i64 48
  store ptr %i.am, ptr %i.alt, align 8, !tbaa !37
  %i.alu = getelementptr inbounds nuw i8, ptr %44, i64 60
  store <2 x i16> splat (i16 1), ptr %i.alu, align 4, !tbaa !38
  %i.alv = getelementptr inbounds nuw i8, ptr %44, i64 88
  %i.alw = getelementptr inbounds nuw i8, ptr %44, i64 96
  %i.alx = getelementptr inbounds nuw i8, ptr %44, i64 112
  store i32 4, ptr %i.alx, align 8, !tbaa !344
  %i.aly = getelementptr inbounds nuw i8, ptr %44, i64 80
  store ptr %.sroa.0.0.copyload.i215, ptr %i.aly, align 8, !tbaa !330
  %i.alz = getelementptr inbounds nuw i8, ptr %44, i64 64
  store ptr @.str.73, ptr %i.alz, align 8, !tbaa !331
  store i32 11, ptr %i.alq, align 8, !tbaa !39
  store ptr @.str.60, ptr %i.alv, align 8, !tbaa !345
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alw, i8 0, i64 16, i1 false)
  %i.ama = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.amb = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ama, ptr noundef nonnull %44) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #32
  %.sroa.0.0.copyload.i216 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #32
  store ptr @_ZTI8Copyable, ptr %i.al, align 16, !tbaa !29
  %i.amc = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr null, ptr %i.amc, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #32
  %i.amd = getelementptr inbounds nuw i8, ptr %43, i64 56
  %i.ame = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_57St7variantIJ8CopyableiEEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSA_jPNS0_12cleanup_listEE_8__invokeESO_SP_jSR_", ptr %i.ame, align 8, !tbaa !35
  %i.amf = getelementptr inbounds nuw i8, ptr %43, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_57St7variantIJ8CopyableiEEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.amf, align 8, !tbaa !36
  %i.amg = getelementptr inbounds nuw i8, ptr %43, i64 48
  store ptr %i.al, ptr %i.amg, align 8, !tbaa !37
  %i.amh = getelementptr inbounds nuw i8, ptr %43, i64 60
  store <2 x i16> zeroinitializer, ptr %i.amh, align 4, !tbaa !38
  %i.ami = getelementptr inbounds nuw i8, ptr %43, i64 80
  store ptr %.sroa.0.0.copyload.i216, ptr %i.ami, align 8, !tbaa !330
  %i.amj = getelementptr inbounds nuw i8, ptr %43, i64 64
  store ptr @.str.74, ptr %i.amj, align 8, !tbaa !331
  store i32 3, ptr %i.amd, align 8, !tbaa !39
  %i.amk = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.aml = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.amk, ptr noundef nonnull %43) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #32
  %.sroa.0.0.copyload.i217 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #32
  store ptr @_ZTI8Copyable, ptr %i.ak, align 16, !tbaa !29
  %i.amm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr null, ptr %i.amm, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #32
  %i.amn = getelementptr inbounds nuw i8, ptr %42, i64 56
  %i.amo = getelementptr inbounds nuw i8, ptr %42, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_58St7variantIJSt9monostate8CopyableiEEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSB_jPNS0_12cleanup_listEE_8__invokeESP_SQ_jSS_", ptr %i.amo, align 8, !tbaa !35
  %i.amp = getelementptr inbounds nuw i8, ptr %42, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_58St7variantIJSt9monostate8CopyableiEEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.amp, align 8, !tbaa !36
  %i.amq = getelementptr inbounds nuw i8, ptr %42, i64 48
  store ptr %i.ak, ptr %i.amq, align 8, !tbaa !37
  %i.amr = getelementptr inbounds nuw i8, ptr %42, i64 60
  store <2 x i16> zeroinitializer, ptr %i.amr, align 4, !tbaa !38
  %i.ams = getelementptr inbounds nuw i8, ptr %42, i64 80
  store ptr %.sroa.0.0.copyload.i217, ptr %i.ams, align 8, !tbaa !330
  %i.amt = getelementptr inbounds nuw i8, ptr %42, i64 64
  store ptr @.str.75, ptr %i.amt, align 8, !tbaa !331
  store i32 3, ptr %i.amn, align 8, !tbaa !39
  %i.amu = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.amv = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.amu, ptr noundef nonnull %42) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #32
  store ptr @.str.60, ptr %210, align 8, !tbaa !347
  %i.amw = getelementptr inbounds nuw i8, ptr %210, i64 8
  store ptr null, ptr %i.amw, align 8, !tbaa !348
  %i.amx = getelementptr inbounds nuw i8, ptr %210, i64 16 ; 2 uses
  store i64 ptrtoint (ptr @_Py_NoneStruct to i64), ptr %i.amx, align 8
  store ptr null, ptr %211, align 8, !tbaa !27
  %.sroa.0.0.copyload.i218 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #32
  store ptr null, ptr %i.aj, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #32
  %i.amy = getelementptr inbounds nuw i8, ptr %41, i64 56
  %i.amz = getelementptr inbounds nuw i8, ptr %41, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_59St7variantIJSt9monostateNS_4listENS_5tupleEiEEJRS8_EJLm0EEJNS_5scopeENS_4nameENS_7arg_v_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_", ptr %i.amz, align 8, !tbaa !35
  %i.ana = getelementptr inbounds nuw i8, ptr %41, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL31nanobind_test_stl_ext_exec_implNS_7module_EE4$_59St7variantIJSt9monostateNS_4listENS_5tupleEiEEJRS8_EJLm0EEJNS_5scopeENS_4nameENS_7arg_v_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ana, align 8, !tbaa !36
  %i.anb = getelementptr inbounds nuw i8, ptr %41, i64 48
  store ptr %i.aj, ptr %i.anb, align 8, !tbaa !37
  %i.anc = getelementptr inbounds nuw i8, ptr %41, i64 60
  store <2 x i16> splat (i16 1), ptr %i.anc, align 4, !tbaa !38
  %i.and = getelementptr inbounds nuw i8, ptr %41, i64 88
  %i.ane = getelementptr inbounds nuw i8, ptr %41, i64 96
  %i.anf = getelementptr inbounds nuw i8, ptr %41, i64 104
  %i.ang = getelementptr inbounds nuw i8, ptr %41, i64 112
  store i32 4, ptr %i.ang, align 8, !tbaa !344
  %i.anh = getelementptr inbounds nuw i8, ptr %41, i64 80
  store ptr %.sroa.0.0.copyload.i218, ptr %i.anh, align 8, !tbaa !330
  %i.ani = getelementptr inbounds nuw i8, ptr %41, i64 64
  store ptr @.str.76, ptr %i.ani, align 8, !tbaa !331
  store i32 11, ptr %i.amy, align 8, !tbaa !39
  store ptr @.str.60, ptr %i.and, align 8, !tbaa !345
  store ptr null, ptr %i.ane, align 8, !tbaa !349
  store ptr @_Py_NoneStruct, ptr %i.anf, align 8, !tbaa !350
  %i.anj = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !24
  %i.ank = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.anj, ptr noundef nonnull %41) #31 ; 0 uses
end_hunk_0
