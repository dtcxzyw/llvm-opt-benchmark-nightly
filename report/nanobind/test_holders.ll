Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_holders?download=true
inline.NumInlined: 1757
inline.NumDeleted: 970
begin_hunk_0_@_ZL30nanobind_test_holders_ext_execP7_object:bb.a
  store ptr null, ptr %i.ye, align 16, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #29
  %i.yf = getelementptr inbounds nuw i8, ptr %63, i64 56
  %i.yg = getelementptr inbounds nuw i8, ptr %63, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJSt10unique_ptrI7ExampleSt14default_deleteIS4_EEEE7executeINS_6class_I13UniqueWrapperJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleISB_EES7_E_vJSK_S7_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSQ_jPNS0_12cleanup_listEE_8__invokeES14_S15_jS17_, ptr %i.yg, align 8, !tbaa !168
  %i.yh = getelementptr inbounds nuw i8, ptr %63, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJSt10unique_ptrI7ExampleSt14default_deleteIS4_EEEE7executeINS_6class_I13UniqueWrapperJEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleISB_EES7_E_vJSK_S7_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr, ptr %i.yh, align 8, !tbaa !169
  %i.yi = getelementptr inbounds nuw i8, ptr %63, i64 48
  store ptr %i.ak, ptr %i.yi, align 8, !tbaa !170
  %i.yj = getelementptr inbounds nuw i8, ptr %63, i64 60
  store <2 x i16> splat (i16 2), ptr %i.yj, align 4, !tbaa !171
  %i.yk = getelementptr inbounds nuw i8, ptr %63, i64 80
  store ptr %i.yc, ptr %i.yk, align 8, !tbaa !172
  %i.yl = getelementptr inbounds nuw i8, ptr %63, i64 64
  store ptr @.str.63, ptr %i.yl, align 8, !tbaa !173
  store i32 67, ptr %i.yf, align 8, !tbaa !174
  %i.ym = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.yn = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.ym, ptr noundef nonnull %63) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #29
  store ptr @_ZTI13UniqueWrapper, ptr %i.aj, align 16, !tbaa !164
  %i.yo = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @_ZTI7Example, ptr %i.yo, align 8, !tbaa !164
  %i.yp = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr null, ptr %i.yp, align 16, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #29
  %i.yq = getelementptr inbounds nuw i8, ptr %62, i64 56
  %i.yr = getelementptr inbounds nuw i8, ptr %62, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_25St10unique_ptrI7ExampleSt14default_deleteIS5_EEJP13UniqueWrapperEJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_", ptr %i.yr, align 8, !tbaa !168
  %i.ys = getelementptr inbounds nuw i8, ptr %62, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_25St10unique_ptrI7ExampleSt14default_deleteIS5_EEJP13UniqueWrapperEJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ys, align 8, !tbaa !169
  %i.yt = getelementptr inbounds nuw i8, ptr %62, i64 48
  store ptr %i.aj, ptr %i.yt, align 8, !tbaa !170
  %i.yu = getelementptr inbounds nuw i8, ptr %62, i64 60
  store <2 x i16> splat (i16 1), ptr %i.yu, align 4, !tbaa !171
  %i.yv = getelementptr inbounds nuw i8, ptr %62, i64 80
  store ptr %i.yc, ptr %i.yv, align 8, !tbaa !172
  %i.yw = getelementptr inbounds nuw i8, ptr %62, i64 64
  store ptr @.str.33, ptr %i.yw, align 8, !tbaa !173
  store i32 67, ptr %i.yq, align 8, !tbaa !174
  %i.yx = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.yy = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.yx, ptr noundef nonnull %62) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #29
  %i.yz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %154) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %155) #29
  %.sroa.09.0.copyload.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #29
  %i.za = getelementptr inbounds nuw i8, ptr %130, i64 8
  store ptr @.str.34, ptr %i.za, align 8, !tbaa !161
  %i.zb = getelementptr inbounds nuw i8, ptr %130, i64 64
  store ptr %.sroa.09.0.copyload.i, ptr %i.zb, align 8, !tbaa !162
  %i.zc = getelementptr inbounds nuw i8, ptr %130, i64 16
  store ptr @_ZTI14UniqueWrapper2, ptr %i.zc, align 8, !tbaa !163
  %i.zd = getelementptr inbounds nuw i8, ptr %130, i64 40
  store ptr @_ZN8nanobind6detail9wrap_moveI14UniqueWrapper2EEvPvS3_, ptr %i.zd, align 8, !tbaa !175
  store <2 x i32> <i32 67, i32 45>, ptr %130, align 8, !tbaa !20
  %i.ze = getelementptr inbounds nuw i8, ptr %130, i64 24
  store ptr @_ZN8nanobind6detail13wrap_destructI14UniqueWrapper2EEvPv, ptr %i.ze, align 8, !tbaa !189
  %i.zf = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.zg = call noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef %i.zf, ptr noundef nonnull %130) #28 ; 3 uses
  store ptr %i.zg, ptr %155, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #29
  store ptr @_ZTI14UniqueWrapper2, ptr %i.ai, align 16, !tbaa !164
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @_ZTI7Example, ptr %i.zh, align 8, !tbaa !164
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr null, ptr %i.zi, align 16, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #29
  %i.zj = getelementptr inbounds nuw i8, ptr %61, i64 56
  %i.zk = getelementptr inbounds nuw i8, ptr %61, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJSt10unique_ptrI7ExampleNS_7deleterIS4_EEEEE7executeINS_6class_I14UniqueWrapper2JEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleISB_EES7_E_vJSK_S7_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSQ_jPNS0_12cleanup_listEE_8__invokeES14_S15_jS17_, ptr %i.zk, align 8, !tbaa !168
  %i.zl = getelementptr inbounds nuw i8, ptr %61, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_4initIJSt10unique_ptrI7ExampleNS_7deleterIS4_EEEEE7executeINS_6class_I14UniqueWrapper2JEEEJEEEvRT_DpRKT0_EUlNS_18pointer_and_handleISB_EES7_E_vJSK_S7_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr, ptr %i.zl, align 8, !tbaa !169
  %i.zm = getelementptr inbounds nuw i8, ptr %61, i64 48
  store ptr %i.ai, ptr %i.zm, align 8, !tbaa !170
  %i.zn = getelementptr inbounds nuw i8, ptr %61, i64 60
  store <2 x i16> splat (i16 2), ptr %i.zn, align 4, !tbaa !171
  %i.zo = getelementptr inbounds nuw i8, ptr %61, i64 80
  store ptr %i.zg, ptr %i.zo, align 8, !tbaa !172
  %i.zp = getelementptr inbounds nuw i8, ptr %61, i64 64
  store ptr @.str.63, ptr %i.zp, align 8, !tbaa !173
  store i32 67, ptr %i.zj, align 8, !tbaa !174
  %i.zq = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.zr = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.zq, ptr noundef nonnull %61) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #29
  store ptr @_ZTI14UniqueWrapper2, ptr %i.ah, align 16, !tbaa !164
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_ZTI7Example, ptr %i.zs, align 8, !tbaa !164
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr null, ptr %i.zt, align 16, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #29
  %i.zu = getelementptr inbounds nuw i8, ptr %60, i64 56
  %i.zv = getelementptr inbounds nuw i8, ptr %60, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_26St10unique_ptrI7ExampleNS_7deleterIS5_EEEJP14UniqueWrapper2EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSF_jPNS0_12cleanup_listEE_8__invokeEST_SU_jSW_", ptr %i.zv, align 8, !tbaa !168
  %i.zw = getelementptr inbounds nuw i8, ptr %60, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_26St10unique_ptrI7ExampleNS_7deleterIS5_EEEJP14UniqueWrapper2EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.zw, align 8, !tbaa !169
  %i.zx = getelementptr inbounds nuw i8, ptr %60, i64 48
  store ptr %i.ah, ptr %i.zx, align 8, !tbaa !170
  %i.zy = getelementptr inbounds nuw i8, ptr %60, i64 60
  store <2 x i16> splat (i16 1), ptr %i.zy, align 4, !tbaa !171
  %i.zz = getelementptr inbounds nuw i8, ptr %60, i64 80
  store ptr %i.zg, ptr %i.zz, align 8, !tbaa !172
  %i.aaa = getelementptr inbounds nuw i8, ptr %60, i64 64
  store ptr @.str.33, ptr %i.aaa, align 8, !tbaa !173
  store i32 67, ptr %i.zu, align 8, !tbaa !174
  %i.aab = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.aac = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aab, ptr noundef nonnull %60) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #29
  %i.aad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %155) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #29
  %.sroa.0.0.copyload.i205.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #29
  store ptr @_ZTI7Example, ptr %i.p, align 16, !tbaa !164
  %i.aae = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_ZTI7Example, ptr %i.aae, align 8, !tbaa !164
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr null, ptr %i.aaf, align 16, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29
  %i.aag = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.aah = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_27St10unique_ptrI7ExampleSt14default_deleteIS5_EEJS8_EJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSE_jPNS0_12cleanup_listEE_8__invokeESS_ST_jSV_", ptr %i.aah, align 8, !tbaa !168
  %i.aai = getelementptr inbounds nuw i8, ptr %20, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_27St10unique_ptrI7ExampleSt14default_deleteIS5_EEJS8_EJLm0EEJNS_5scopeENS_4nameENS_5arg_tILj5ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.aai, align 8, !tbaa !169
  %i.aaj = getelementptr inbounds nuw i8, ptr %20, i64 48
  store ptr %i.p, ptr %i.aaj, align 8, !tbaa !170
  %i.aak = getelementptr inbounds nuw i8, ptr %20, i64 60
  store <2 x i16> splat (i16 1), ptr %i.aak, align 4, !tbaa !171
  %i.aal = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.aam = getelementptr inbounds nuw i8, ptr %20, i64 112
  store i32 4, ptr %i.aam, align 8, !tbaa !190
  %i.aan = getelementptr inbounds nuw i8, ptr %20, i64 80
  store ptr %.sroa.0.0.copyload.i205.i, ptr %i.aan, align 8, !tbaa !172
  %i.aao = getelementptr inbounds nuw i8, ptr %20, i64 64
  store ptr @.str.35, ptr %i.aao, align 8, !tbaa !173
  store i32 11, ptr %i.aag, align 8, !tbaa !174
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aal, i8 0, i64 24, i1 false)
  %i.aap = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.aaq = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aap, ptr noundef nonnull %20) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #29
  %.sroa.0.0.copyload.i206.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #29
  store ptr @_ZTI7Example, ptr %i.o, align 16, !tbaa !164
  %i.aar = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_ZTI7Example, ptr %i.aar, align 8, !tbaa !164
  %i.aas = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.aas, align 16, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.aat = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.aau = getelementptr inbounds nuw i8, ptr %19, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_28St10unique_ptrI7ExampleNS_7deleterIS5_EEEJS8_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.aau, align 8, !tbaa !168
  %i.aav = getelementptr inbounds nuw i8, ptr %19, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_28St10unique_ptrI7ExampleNS_7deleterIS5_EEEJS8_EJLm0EEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.aav, align 8, !tbaa !169
  %i.aaw = getelementptr inbounds nuw i8, ptr %19, i64 48
  store ptr %i.o, ptr %i.aaw, align 8, !tbaa !170
  %i.aax = getelementptr inbounds nuw i8, ptr %19, i64 60
  store <2 x i16> splat (i16 1), ptr %i.aax, align 4, !tbaa !171
  %i.aay = getelementptr inbounds nuw i8, ptr %19, i64 80
  store ptr %.sroa.0.0.copyload.i206.i, ptr %i.aay, align 8, !tbaa !172
  %i.aaz = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr @.str.36, ptr %i.aaz, align 8, !tbaa !173
  store i32 3, ptr %i.aat, align 8, !tbaa !174
  %i.aba = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.abb = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aba, ptr noundef nonnull %19) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %156) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #29, !noalias !191
  store ptr @.str.39, ptr %156, align 8, !tbaa !192
  %.sroa.5259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %156, i64 8
  store ptr null, ptr %.sroa.5259.0..sroa_idx.i, align 8, !tbaa !192
  %i.abc = getelementptr inbounds nuw i8, ptr %156, i64 16 ; 2 uses
  store i64 ptrtoint (ptr @_Py_FalseStruct to i64), ptr %i.abc, align 8
  store ptr null, ptr %129, align 8, !tbaa !22
  %i.abd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %129) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #29, !noalias !191
  %.sroa.0.0.copyload.i207.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #29
  store <4 x ptr> <ptr @_ZTI7Example, ptr @_ZTI7Example, ptr @_ZTI7Example, ptr @_ZTI7Example>, ptr %i.n, align 16, !tbaa !164
  %i.abe = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %i.abe, align 16, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.abf = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_29St6vectorISt4pairISt10unique_ptrI7ExampleSt14default_deleteIS7_EESA_ESaISB_EEJSD_bEJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEENS_7arg_v_tILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSL_jPNS0_12cleanup_listEE_8__invokeESZ_S10_jS12_", ptr %i.abf, align 8, !tbaa !168
  %i.abg = getelementptr inbounds nuw i8, ptr %18, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_29St6vectorISt4pairISt10unique_ptrI7ExampleSt14default_deleteIS7_EESA_ESaISB_EEJSD_bEJLm0ELm1EEJNS_5scopeENS_4nameENS_5arg_tILj1ELb0EEENS_7arg_v_tILj1ELb0EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.abg, align 8, !tbaa !169
  %i.abh = getelementptr inbounds nuw i8, ptr %18, i64 48
  store ptr %i.n, ptr %i.abh, align 8, !tbaa !170
  %i.abi = getelementptr inbounds nuw i8, ptr %18, i64 60
  store <2 x i16> splat (i16 2), ptr %i.abi, align 4, !tbaa !171
  %i.abj = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.abk = getelementptr inbounds nuw i8, ptr %18, i64 112
  store i32 0, ptr %i.abk, align 8
  %167 = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.abl = getelementptr inbounds nuw i8, ptr %18, i64 144
  store i32 0, ptr %i.abl, align 8
  %i.abm = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.abn = getelementptr inbounds nuw i8, ptr %18, i64 80
  store ptr %.sroa.0.0.copyload.i207.i, ptr %i.abn, align 8, !tbaa !172
  %i.abo = getelementptr inbounds nuw i8, ptr %18, i64 64
  store ptr @.str.37, ptr %i.abo, align 8, !tbaa !173
  store i32 11, ptr %i.abm, align 8, !tbaa !174
  store ptr @.str.38, ptr %i.abj, align 8, !tbaa !193
  %i.abp = getelementptr inbounds nuw i8, ptr %18, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abp, i8 0, i64 16, i1 false)
  store ptr @.str.39, ptr %167, align 8, !tbaa !193
  %i.abq = getelementptr inbounds nuw i8, ptr %18, i64 128
  store ptr null, ptr %i.abq, align 8, !tbaa !194
  %i.abr = getelementptr inbounds nuw i8, ptr %18, i64 136
  store ptr @_Py_FalseStruct, ptr %i.abr, align 8, !tbaa !188
  %i.abs = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.abt = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.abs, ptr noundef nonnull %18) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #29
  %i.abu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abc) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #29
  %.sroa.0.0.copyload.i208.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #29
  store ptr null, ptr %i.m, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.abv = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.abw = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_30St4pairIiiEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS9_jPNS0_12cleanup_listEE_8__invokeESN_SO_jSQ_", ptr %i.abw, align 8, !tbaa !168
  %i.abx = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_30St4pairIiiEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.abx, align 8, !tbaa !169
  %i.aby = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr %i.m, ptr %i.aby, align 8, !tbaa !170
  %i.abz = getelementptr inbounds nuw i8, ptr %17, i64 60
  store <2 x i16> zeroinitializer, ptr %i.abz, align 4, !tbaa !171
  %i.aca = getelementptr inbounds nuw i8, ptr %17, i64 80
  store ptr %.sroa.0.0.copyload.i208.i, ptr %i.aca, align 8, !tbaa !172
  %i.acb = getelementptr inbounds nuw i8, ptr %17, i64 64
  store ptr @.str.40, ptr %i.acb, align 8, !tbaa !173
  store i32 3, ptr %i.abv, align 8, !tbaa !174
  %i.acc = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.acd = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.acc, ptr noundef nonnull %17) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #29
  %.sroa.0.0.copyload.i209.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #29
  store ptr null, ptr %i.l, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.ace = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.acf = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_31vJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS7_jPNS0_12cleanup_listEE_8__invokeESL_SM_jSO_", ptr %i.acf, align 8, !tbaa !168
  %i.acg = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_31vJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.acg, align 8, !tbaa !169
  %i.ach = getelementptr inbounds nuw i8, ptr %16, i64 48
  store ptr %i.l, ptr %i.ach, align 8, !tbaa !170
  %i.aci = getelementptr inbounds nuw i8, ptr %16, i64 60
  store <2 x i16> zeroinitializer, ptr %i.aci, align 4, !tbaa !171
  %i.acj = getelementptr inbounds nuw i8, ptr %16, i64 80
  store ptr %.sroa.0.0.copyload.i209.i, ptr %i.acj, align 8, !tbaa !172
  %i.ack = getelementptr inbounds nuw i8, ptr %16, i64 64
  store ptr @.str.41, ptr %i.ack, align 8, !tbaa !173
  store i32 3, ptr %i.ace, align 8, !tbaa !174
  %i.acl = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.acm = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.acl, ptr noundef nonnull %16) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #29
  %.sroa.08.0.copyload.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %128) #29
  %i.acn = getelementptr inbounds nuw i8, ptr %128, i64 8
  store ptr @.str.42, ptr %i.acn, align 8, !tbaa !161
  %i.aco = getelementptr inbounds nuw i8, ptr %128, i64 64
  store ptr %.sroa.08.0.copyload.i, ptr %i.aco, align 8, !tbaa !162
  %i.acp = getelementptr inbounds nuw i8, ptr %128, i64 16
  store ptr @_ZTIZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE4Base, ptr %i.acp, align 8, !tbaa !163
  store <2 x i32> <i32 32, i32 7>, ptr %128, align 8, !tbaa !20
  %i.acq = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.acr = call noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef %i.acq, ptr noundef nonnull %128) #28
  store ptr %i.acr, ptr %157, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #29
  %i.acs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %157) #28 ; 0 uses
  %.sroa.07.0.copyload.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #29
  %i.act = getelementptr inbounds nuw i8, ptr %127, i64 8
  store ptr @.str.43, ptr %i.act, align 8, !tbaa !161
  %i.acu = getelementptr inbounds nuw i8, ptr %127, i64 64
  store ptr %.sroa.07.0.copyload.i, ptr %i.acu, align 8, !tbaa !162
  %i.acv = getelementptr inbounds nuw i8, ptr %127, i64 16
  store ptr @_ZTIZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE8Subclass, ptr %i.acv, align 8, !tbaa !163
  store <2 x i32> <i32 32, i32 7>, ptr %127, align 8, !tbaa !20
  %i.acw = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.acx = call noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef %i.acw, ptr noundef nonnull %127) #28
  store ptr %i.acx, ptr %158, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #29
  %i.acy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %158) #28 ; 0 uses
  %.sroa.06.0.copyload.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #29
  %i.acz = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.ada = getelementptr inbounds nuw i8, ptr %126, i64 64
  store ptr %.sroa.06.0.copyload.i, ptr %i.ada, align 8, !tbaa !162
  %i.adb = getelementptr inbounds nuw i8, ptr %126, i64 40
  store ptr @_ZN8nanobind6detail9wrap_moveIZL35nanobind_test_holders_ext_exec_implNS_7module_EE15PolymorphicBaseEEvPvS4_, ptr %i.adb, align 8, !tbaa !175
  store <2 x i32> <i32 35, i32 63>, ptr %126, align 8, !tbaa !20
  store <4 x ptr> <ptr @.str.44, ptr @_ZTIZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE15PolymorphicBase, ptr @_ZN8nanobind6detail13wrap_destructIZL35nanobind_test_holders_ext_exec_implNS_7module_EE15PolymorphicBaseEEvPv, ptr @_ZN8nanobind6detail9wrap_copyIZL35nanobind_test_holders_ext_exec_implNS_7module_EE15PolymorphicBaseEEvPvPKv>, ptr %i.acz, align 8, !tbaa !24
  %i.adc = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.add = call noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef %i.adc, ptr noundef nonnull %126) #28
  store ptr %i.add, ptr %159, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #29
  %i.ade = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %159) #28 ; 0 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #29
  %i.adf = getelementptr inbounds nuw i8, ptr %125, i64 8
  %i.adg = getelementptr inbounds nuw i8, ptr %125, i64 64
  store ptr %.sroa.05.0.copyload.i, ptr %i.adg, align 8, !tbaa !162
  %i.adh = getelementptr inbounds nuw i8, ptr %125, i64 40
  store ptr @_ZN8nanobind6detail9wrap_moveIZL35nanobind_test_holders_ext_exec_implNS_7module_EE19PolymorphicSubclassEEvPvS4_, ptr %i.adh, align 8, !tbaa !175
  store <2 x i32> <i32 35, i32 63>, ptr %125, align 8, !tbaa !20
  store <4 x ptr> <ptr @.str.45, ptr @_ZTIZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE19PolymorphicSubclass, ptr @_ZN8nanobind6detail13wrap_destructIZL35nanobind_test_holders_ext_exec_implNS_7module_EE19PolymorphicSubclassEEvPv, ptr @_ZN8nanobind6detail9wrap_copyIZL35nanobind_test_holders_ext_exec_implNS_7module_EE19PolymorphicSubclassEEvPvPKv>, ptr %i.adf, align 8, !tbaa !24
  %i.adi = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.adj = call noundef ptr @_ZN8nanobind6detail11nb_type_newEPNS0_12nb_internalsEPKNS0_14type_data_initE(ptr noundef %i.adi, ptr noundef nonnull %125) #28
  store ptr %i.adj, ptr %160, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #29
  %i.adk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %160) #28 ; 0 uses
  %.sroa.0.0.copyload.i216.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  store ptr @_ZTIZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE15PolymorphicBase, ptr %i.k, align 16, !tbaa !164
  %i.adl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.adl, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.adm = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.adn = getelementptr inbounds nuw i8, ptr %15, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_32St10unique_ptrIZL35nanobind_test_holders_ext_exec_implS2_E15PolymorphicBaseSt14default_deleteIS5_EEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.adn, align 8, !tbaa !168
  %i.ado = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_32St10unique_ptrIZL35nanobind_test_holders_ext_exec_implS2_E15PolymorphicBaseSt14default_deleteIS5_EEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ado, align 8, !tbaa !169
  %i.adp = getelementptr inbounds nuw i8, ptr %15, i64 48
  store ptr %i.k, ptr %i.adp, align 8, !tbaa !170
  %i.adq = getelementptr inbounds nuw i8, ptr %15, i64 60
  store <2 x i16> zeroinitializer, ptr %i.adq, align 4, !tbaa !171
  %i.adr = getelementptr inbounds nuw i8, ptr %15, i64 80
  store ptr %.sroa.0.0.copyload.i216.i, ptr %i.adr, align 8, !tbaa !172
  %i.ads = getelementptr inbounds nuw i8, ptr %15, i64 64
  store ptr @.str.46, ptr %i.ads, align 8, !tbaa !173
  store i32 3, ptr %i.adm, align 8, !tbaa !174
  %i.adt = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.adu = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.adt, ptr noundef nonnull %15) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  %.sroa.0.0.copyload.i217.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  store ptr @_ZTIZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE15PolymorphicBase, ptr %i.j, align 16, !tbaa !164
  %i.adv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.adv, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.adw = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.adx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_33St10unique_ptrIZL35nanobind_test_holders_ext_exec_implS2_E15PolymorphicBaseSt14default_deleteIS5_EEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.adx, align 8, !tbaa !168
  %i.ady = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_33St10unique_ptrIZL35nanobind_test_holders_ext_exec_implS2_E15PolymorphicBaseSt14default_deleteIS5_EEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.ady, align 8, !tbaa !169
  %i.adz = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.j, ptr %i.adz, align 8, !tbaa !170
  %i.aea = getelementptr inbounds nuw i8, ptr %14, i64 60
  store <2 x i16> zeroinitializer, ptr %i.aea, align 4, !tbaa !171
  %i.aeb = getelementptr inbounds nuw i8, ptr %14, i64 80
  store ptr %.sroa.0.0.copyload.i217.i, ptr %i.aeb, align 8, !tbaa !172
  %i.aec = getelementptr inbounds nuw i8, ptr %14, i64 64
  store ptr @.str.47, ptr %i.aec, align 8, !tbaa !173
  store i32 3, ptr %i.adw, align 8, !tbaa !174
  %i.aed = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.aee = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aed, ptr noundef nonnull %14) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  %.sroa.0.0.copyload.i218.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  store ptr @_ZTIZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE4Base, ptr %i.i, align 16, !tbaa !164
  %i.aef = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.aef, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.aeg = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.aeh = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_34St10unique_ptrIZL35nanobind_test_holders_ext_exec_implS2_E4BaseSt14default_deleteIS5_EEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.aeh, align 8, !tbaa !168
  %i.aei = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_34St10unique_ptrIZL35nanobind_test_holders_ext_exec_implS2_E4BaseSt14default_deleteIS5_EEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.aei, align 8, !tbaa !169
  %i.aej = getelementptr inbounds nuw i8, ptr %13, i64 48
  store ptr %i.i, ptr %i.aej, align 8, !tbaa !170
  %i.aek = getelementptr inbounds nuw i8, ptr %13, i64 60
  store <2 x i16> zeroinitializer, ptr %i.aek, align 4, !tbaa !171
  %i.ael = getelementptr inbounds nuw i8, ptr %13, i64 80
  store ptr %.sroa.0.0.copyload.i218.i, ptr %i.ael, align 8, !tbaa !172
  %i.aem = getelementptr inbounds nuw i8, ptr %13, i64 64
  store ptr @.str.48, ptr %i.aem, align 8, !tbaa !173
  store i32 3, ptr %i.aeg, align 8, !tbaa !174
  %i.aen = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !16
  %i.aeo = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.aen, ptr noundef nonnull %13) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  %.sroa.0.0.copyload.i219.i = load ptr, ptr %166, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store ptr @_ZTIZL35nanobind_test_holders_ext_exec_implN8nanobind7module_EE4Base, ptr %i.h, align 16, !tbaa !164
  %i.aep = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %i.aep, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.aeq = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.aer = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_35St10unique_ptrIZL35nanobind_test_holders_ext_exec_implS2_E4BaseSt14default_deleteIS5_EEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSC_jPNS0_12cleanup_listEE_8__invokeESQ_SR_jST_", ptr %i.aer, align 8, !tbaa !168
  %i.aes = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr @"_ZZN8nanobind6detail11func_createILb0ELb1EZL35nanobind_test_holders_ext_exec_implNS_7module_EE4$_35St10unique_ptrIZL35nanobind_test_holders_ext_exec_implS2_E4BaseSt14default_deleteIS5_EEJETpTnmJEJNS_5scopeENS_4nameEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descr", ptr %i.aes, align 8, !tbaa !169
  %i.aet = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.h, ptr %i.aet, align 8, !tbaa !170
  %i.aeu = getelementptr inbounds nuw i8, ptr %12, i64 60
  store <2 x i16> zeroinitializer, ptr %i.aeu, align 4, !tbaa !171
  %i.aev = getelementptr inbounds nuw i8, ptr %12, i64 80
  store ptr %.sroa.0.0.copyload.i219.i, ptr %i.aev, align 8, !tbaa !172
  %i.aew = getelementptr inbounds nuw i8, ptr %12, i64 64
end_hunk_0
