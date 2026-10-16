Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/server?download=true
inline.NumInlined: 54344
inline.NumDeleted: 20585
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 95
begin_hunk_0_@main:._crit_edge.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6.i
  %i.jq = load i64, ptr %i.ic, align 8, !tbaa !279
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #53
  br label %_ZN7easylog8record_tD2Ev.exit.i

_ZN7easylog8record_tD2Ev.exit.i:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRN7cinatra17coro_http_requestERNS5_18coro_http_responseEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_SB_EEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEESB_EEESG_INSt8__detail14_Node_iteratorISI_Lb0ELb1EEEbEDpOT_.exit.i.i

bb.bo:                                            ; preds = %_ZN7easylog8record_t8_get_tidEv.exit.i.i
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, %bb.be, %bb.bn, %bb.bh, %.invoke.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i

.body9.i:                                         ; preds = %bb.bp, %bb.bm
  %eh.lpad-body10.i = phi { ptr, i32 } [ %i.jt, %bb.bp ], [ %i.jh, %bb.bm ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #43
  br label %.body24.i

.body24.i:                                        ; preds = %.body9.i, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body10.i, %.body9.i ], [ %i.js, %bb.bo ], [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %.body.i.i

bb.bq:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE7emplaceIJS5_EEESt4pairISt23_Rb_tree_const_iteratorIS5_EbEDpOT_.exit.i.i
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.gu, 0
  %i.ju = getelementptr inbounds nuw i8, ptr %i.u, i64 936
  %i.jv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 32
  %i.jw = invoke { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St8functionIFvRN7cinatra17coro_http_requestERNS7_18coro_http_responseEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEESD_EEES4_INSG_14_Node_iteratorISE_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ju, ptr noundef nonnull align 8 dereferenceable(32) %i.jv, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRN7cinatra17coro_http_requestERNS5_18coro_http_responseEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_SB_EEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEESB_EEESG_INSt8__detail14_Node_iteratorISI_Lb0ELb1EEEbEDpOT_.exit.i.i unwind label %bb.as ; 0 uses

_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRN7cinatra17coro_http_requestERNS5_18coro_http_responseEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_SB_EEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEESB_EEESG_INSt8__detail14_Node_iteratorISI_Lb0ELb1EEEbEDpOT_.exit.i.i: ; preds = %bb.bq, %_ZN7easylog8record_tD2Ev.exit.i, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.i.i, %_ZN7easylog6loggerILm0EE8instanceEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.jx = load ptr, ptr %i.au, align 8, !tbaa !314 ; 2 uses
  %.not.i149.i.i = icmp eq ptr %i.jx, null
  br i1 %.not.i149.i.i, label %_ZNSt14_Function_baseD2Ev.exit150.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRN7cinatra17coro_http_requestERNS5_18coro_http_responseEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_SB_EEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEESB_EEESG_INSt8__detail14_Node_iteratorISI_Lb0ELb1EEEbEDpOT_.exit.i.i
  %i.jy = invoke noundef zeroext i1 %i.jx(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit150.i.i unwind label %bb.bs ; 0 uses

bb.bs:                                            ; preds = %bb.br
  %i.jz = landingpad { ptr, i32 }
          catch ptr null
  %i.ka = extractvalue { ptr, i32 } %i.jz, 0
  call void @__clang_call_terminate(ptr %i.ka) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit150.i.i:            ; preds = %bb.br, %_ZNSt13unordered_mapISt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRN7cinatra17coro_http_requestERNS5_18coro_http_responseEEESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_SB_EEE7emplaceIJRKNSt7__cxx1112basic_stringIcS2_SaIcEEESB_EEESG_INSt8__detail14_Node_iteratorISI_Lb0ELb1EEEbEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %i.kb = load ptr, ptr %0, align 8, !tbaa !287   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.ao
  br i1 %i.kc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i152.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit150.i.i
  %i.kd = load i64, ptr %i.ao, align 8, !tbaa !279
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i152.i.i

.body.i.i:                                        ; preds = %.body24.i, %bb.ax, %bb.as, %bb.ar, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i
  %.pn43.pn.i.i = phi { ptr, i32 } [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i.i ], [ %.pn39.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i ], [ %i.hd, %bb.ar ], [ %i.ha, %bb.aq ], [ %.pn.i.i, %.body24.i ], [ %i.he, %bb.as ], [ %i.hk, %bb.ax ] ; 2 uses
  %i.kf = load ptr, ptr %i.au, align 8, !tbaa !314 ; 2 uses
  %.not.i154.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i154.i.i, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %.body.i.i
  %i.kg = invoke noundef zeroext i1 %i.kf(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.bv unwind label %bb.bu     ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #52
  unreachable

bb.bv:                                            ; preds = %.body.i.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  %.pre137 = load ptr, ptr %0, align 8, !tbaa !287 ; 2 uses
  %i.kj = icmp eq ptr %.pre137, %i.ao
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i.i: ; preds = %bb.bv
  %i.kk = load i64, ptr %i.ao, align 8, !tbaa !279
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %.pre137, i64 noundef %i.kl) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #43
  %i.km = load ptr, ptr %9, align 8, !tbaa !287   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.al
  br i1 %i.kn, label %.body51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i152.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit150.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ko = load ptr, ptr %9, align 8, !tbaa !287   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.al
  br i1 %i.kp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i152.i.i
  %i.kq = load i64, ptr %i.al, align 8, !tbaa !279
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #53
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i.i
  %i.ks = load i64, ptr %i.al, align 8, !tbaa !279
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kt) #53
  br label %.body51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i152.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ku = load ptr, ptr %18, align 8, !tbaa !287  ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.ah
  br i1 %i.kv, label %_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50
  %i.kw = load i64, ptr %i.ah, align 8, !tbaa !279
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #53
  br label %_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit

_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  %i.ky = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 16, i1 false)
  %i.kz = getelementptr inbounds nuw i8, ptr %20, i64 24
  store ptr @"_ZNSt17_Function_handlerIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEZ4mainE3$_0E9_M_invokeERKSt9_Any_dataS2_OS6_S9_", ptr %i.kz, align 8, !tbaa !345
  %i.la = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEZ4mainE3$_0E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation", ptr %i.la, align 8, !tbaa !314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ky, i8 0, i64 16, i1 false)
  %i.lb = load i64, ptr %17, align 8, !tbaa !305
  store i64 %i.lb, ptr %21, align 8, !tbaa !305
  store ptr null, ptr %17, align 8, !tbaa !305
  invoke void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EE(ptr noundef nonnull align 8 dereferenceable(664) %11, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %20, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bw unwind label %bb.cm

bb.bw:                                            ; preds = %_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit
  %i.lc = load ptr, ptr %21, align 8, !tbaa !305  ; 3 uses
  %.not.i = icmp eq ptr %i.lc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i: ; preds = %bb.bw
  call void @_ZN7cinatra16coro_http_serverD2Ev(ptr noundef nonnull align 8 dead_on_return(1256) dereferenceable(1256) %i.lc) #43
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef 1256) #53
  br label %_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bw, %_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i
  %i.ld = load ptr, ptr %i.la, align 8, !tbaa !314 ; 2 uses
  %.not.i56 = icmp eq ptr %i.ld, null
  br i1 %.not.i56, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit
  %i.le = invoke noundef zeroext i1 %i.ld(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.by ; 0 uses

bb.by:                                            ; preds = %bb.bx
  %i.lf = landingpad { ptr, i32 }
          catch ptr null
  %i.lg = extractvalue { ptr, i32 } %i.lf, 0
  call void @__clang_call_terminate(ptr %i.lg) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit, %bb.bx
  %i.lh = call i16 @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE5startEv(ptr noundef nonnull align 8 dereferenceable(664) %11) #43
  %i.li = load ptr, ptr %i.ky, align 8, !tbaa !314 ; 2 uses
  %.not.i57 = icmp eq ptr %i.li, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit61, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.lj = invoke noundef zeroext i1 %i.li(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 3)
          to label %_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit61 unwind label %bb.ca ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.lk = landingpad { ptr, i32 }
          catch ptr null
  %i.ll = extractvalue { ptr, i32 } %i.lk, 0
  call void @__clang_call_terminate(ptr %i.ll) #52
  unreachable

_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit61: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  %.pre136 = load ptr, ptr %16, align 8, !tbaa !358 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %.not.i62 = icmp eq ptr %.pre136, null
  br i1 %.not.i62, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit61
  %i.lm = getelementptr inbounds nuw i8, ptr %.pre136, i64 1
  %22 = atomicrmw add ptr %i.lm, i8 -1 acq_rel, align 1
  %.not.i.i63 = icmp eq i8 %22, 1
  br i1 %.not.i.i63, label %bb.cc, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.ln = getelementptr inbounds nuw i8, ptr %.pre136, i64 8 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.pre136, i64 16
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !359 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.lp, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, label %bb.cd, !prof !284

bb.cd:                                            ; preds = %bb.cc
  %i.lq = icmp ne i8 %i.lp, 2
  %i.lr = load ptr, ptr %i.ln, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.lr, null
  %or.cond.i.i.i.i.i.i = select i1 %i.lq, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i: ; preds = %bb.ce, %bb.cd, %bb.cc
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %.pre136, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, %bb.cb, %_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev.exit61
  %i.ls = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !359 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.lu, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit, label %bb.cf, !prof !284

bb.cf:                                            ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i
  %i.lv = icmp ne i8 %i.lu, 2
  %i.lw = load ptr, ptr %i.ls, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.lw, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.lv, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ls) #43
  br label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit

_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i, %bb.cf, %bb.cg
  %i.lx = icmp eq i16 %i.lh, 0
  %i.ly = zext i1 %i.lx to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  call void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %13) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  call void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %11) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  ret i32 %i.ly

bb.ch:                                            ; preds = %._crit_edge.i.i
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ma = load ptr, ptr %12, align 8, !tbaa !287  ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.e
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ch
  %i.mc = load i64, ptr %i.e, align 8, !tbaa !279
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.me = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mf = load ptr, ptr %14, align 8, !tbaa !287  ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.l
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ci
  %i.mh = load i64, ptr %i.l, align 8, !tbaa !279
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.ck:                                            ; preds = %_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE16register_handlerITpTnDaJXadL_Z4echoSt17basic_string_viewIcSt11char_traitsIcEEEEXadL_Z23async_echo_by_coroutineS7_EEXadL_Z22async_echo_by_callbackNS_12context_baseIS7_NS_8protocol17coro_rpc_protocolEEES7_EEXadL_Z20echo_with_attachmentvEEXadL_Z11nested_echoS7_EEXadL_Z23return_error_by_contextNS8_IvSA_EEEEXadL_Z25return_error_by_exceptionvEEXadL_Z21rpc_with_state_by_tagB5cxx11vEEXadL_Z12get_ctx_infovEEXadL_Z25rpc_with_complete_handlervEEXadL_Z3addiiEEXadL_Z27client_oldapi_server_newapiiN11struct_pack10compatibleIiLm0EEEEEXadL_Z27client_newapi_server_oldapiiEEXadL_Z31client_oldapi_server_newapi_retvEEXadL_Z31client_newapi_server_oldapi_retvEEXadL_Z36client_oldapi_server_newapi_ret_voidvEEXadL_Z36client_newapi_server_oldapi_ret_voidvEEEEEvv.exit, %bb.c
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cl:                                            ; preds = %bb.d
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body51:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i
  %i.mm = load ptr, ptr %18, align 8, !tbaa !287  ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.ah
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %.body51
  %i.mo = load i64, ptr %i.ah, align 8, !tbaa !279
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.cm:                                            ; preds = %_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #43
  %i.mr = load ptr, ptr %i.la, align 8, !tbaa !314 ; 2 uses
  %.not.i73 = icmp eq ptr %i.mr, null
  br i1 %.not.i73, label %_ZNSt14_Function_baseD2Ev.exit74, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ms = invoke noundef zeroext i1 %i.mr(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit74 unwind label %bb.co ; 0 uses

bb.co:                                            ; preds = %bb.cn
  %i.mt = landingpad { ptr, i32 }
          catch ptr null
  %i.mu = extractvalue { ptr, i32 } %i.mt, 0
  call void @__clang_call_terminate(ptr %i.mu) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit74:                 ; preds = %bb.cm, %bb.cn
  %i.mv = load ptr, ptr %i.ky, align 8, !tbaa !314 ; 2 uses
  %.not.i75 = icmp eq ptr %i.mv, null
  br i1 %.not.i75, label %_ZNSt14_Function_baseD2Ev.exit76, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit74
  %i.mw = invoke noundef zeroext i1 %i.mv(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit76 unwind label %bb.cq ; 0 uses

bb.cq:                                            ; preds = %bb.cp
  %i.mx = landingpad { ptr, i32 }
          catch ptr null
  %i.my = extractvalue { ptr, i32 } %i.mx, 0
  call void @__clang_call_terminate(ptr %i.my) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit76:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit74, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %.body51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %_ZNSt14_Function_baseD2Ev.exit76
  %.pn16 = phi { ptr, i32 } [ %i.mq, %_ZNSt14_Function_baseD2Ev.exit76 ], [ %.pn43.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %.pn43.pn.i.i, %.body51 ]
  call void @_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #43
  br label %.body

.body:                                            ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.ml, %bb.cl ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  call void @_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %16) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.cr

bb.cr:                                            ; preds = %.body, %bb.ck
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %.body ], [ %i.mk, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cj
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.cr ], [ %i.mj, %bb.cj ]
  call void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %13) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.cs
  %.pn16.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn.pn, %bb.cs ], [ %i.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.me, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  call void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %11) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %.pn16.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %i.lz, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  resume { ptr, i32 } %.pn16.pn.pn.pn.pn.pn
}

; Function Attrs: nounwind
declare noundef i32 @_ZNSt6thread20hardware_concurrencyEv() local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEEC2EmtNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEb(ptr noundef nonnull align 8 dereferenceable(664) %0, i64 noundef %1, i16 noundef zeroext %2, ptr nofreeobj noundef align 8 dereferenceable(32) %3, i64 %4, i1 noundef zeroext %5) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8
  tail call void @_ZN7coro_io15io_context_poolC2Emb(ptr noundef nonnull align 8 dereferenceable(113) %0, i64 noundef %1, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !361
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.c, align 8, !tbaa !439
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.f, ptr %i.e, align 8, !tbaa !440
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 1, ptr %i.g, align 8, !tbaa !441
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
end_hunk_0
begin_hunk_1_@_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE11async_startEv:bb.a
  %i.jm = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43, !noalias !4173
  br label %.body

bb.cj:                                            ; preds = %bb.ch
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43, !noalias !4173
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.ck

bb.ck:                                            ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit.thread, %bb.cj, %_ZN12async_simple4coro6detail8LazyBaseIN8coro_rpc8err_codeELb0EED2Ev.exit
  ret void

.loopexit152:                                     ; preds = %.lr.ph180
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.bt, %bb.bm, %bb.bn, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit102.thread, %bb.ay, %_ZN7coro_io20server_acceptor_base19set_io_threads_poolEPNS_15io_context_poolE.exit
  %lpad.loopexit154 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.cg, %bb.bz, %bb.bu, %bb.ao, %bb.an, %bb.ah, %bb.u, %bb.o, %bb.b, %_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE6acceptEv.exit, %bb.ca, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit63.thread, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit152, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.l, %bb.z, %bb.am, %bb.be, %bb.bs, %bb.ci, %bb.bw, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %bb.bj, %bb.aq, %bb.ae, %bb.t, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.aa, %bb.l ], [ %i.bb, %bb.t ], [ %i.bs, %bb.z ], [ %i.ca, %bb.ae ], [ %i.db, %bb.am ], [ %i.dx, %bb.aq ], [ %i.fp, %bb.be ], [ %i.fx, %bb.bj ], [ %i.gw, %bb.bs ], [ %i.hy, %bb.bw ], [ %i.hy, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.jm, %bb.ci ], [ %lpad.loopexit, %.loopexit152 ], [ %lpad.loopexit154, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit.split-lp.loopexit.split-lp ]
  %i.jn = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.jn) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EE(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr nofreeobj noundef align 8 dereferenceable(32) %1, ptr nofreeobj noundef align 8 dereferenceable(8) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.async_simple::util::move_only_function.136", align 16 ; 9 uses
  %4 = alloca %class.anon.4939, align 8           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !345  ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !345
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !314  ; 4 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !319
  store ptr %i.e, ptr %i.f, align 8, !tbaa !314
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit

_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4176)
  %i.h = load i64, ptr %2, align 8, !tbaa !305, !noalias !4176 ; 2 uses
  store i64 %i.h, ptr %i.g, align 8, !tbaa !305, !alias.scope !4176
  store ptr null, ptr %2, align 8, !tbaa !305, !noalias !4176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #55
          to label %.noexc unwind label %bb.i     ; 6 uses

.noexc:                                           ; preds = %_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.l, align 8, !tbaa !345
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZN12async_simple4util18move_only_functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEEEC2IZN8coro_rpc20coro_rpc_server_baseINSC_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvS4_S8_DpRT_EEDpSt10unique_ptrISK_St14default_deleteISK_EEEUlS4_S8_iE_vvvEEOT_.exit.i, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 16, i1 false), !tbaa.struct !319
  store ptr %i.e, ptr %i.n, align 8, !tbaa !314
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  br label %_ZN12async_simple4util18move_only_functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEEEC2IZN8coro_rpc20coro_rpc_server_baseINSC_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvS4_S8_DpRT_EEDpSt10unique_ptrISK_St14default_deleteISK_EEEUlS4_S8_iE_vvvEEOT_.exit.i

_ZN12async_simple4util18move_only_functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEEEC2IZN8coro_rpc20coro_rpc_server_baseINSC_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvS4_S8_DpRT_EEDpSt10unique_ptrISK_St14default_deleteISK_EEEUlS4_S8_iE_vvvEEOT_.exit.i: ; preds = %bb.c, %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %i.h, ptr %i.o, align 8, !tbaa !305
  store ptr null, ptr %i.g, align 8, !tbaa !305
  store ptr %i.k, ptr %3, align 16, !tbaa !306
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 16, !tbaa !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 16, i1 false), !tbaa.struct !319
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.i, align 8, !tbaa !279
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !306
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !306  ; 2 uses
  store ptr @_ZN12async_simple4util6detail15FunctionHandlerIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEEZN8coro_rpc20coro_rpc_server_baseINSB_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvS5_S9_DpRT_EEDpSt10unique_ptrISJ_St14default_deleteISJ_EEEUlS5_S9_iE_E10_m_managerERNS1_9_any_dataERKSV_NS1_18_manager_operationE, ptr %i.p, align 8, !tbaa !306
  store <2 x ptr> %i.r, ptr %i.j, align 16, !tbaa !306
  store ptr @_ZN12async_simple4util6detail15FunctionHandlerIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEEZN8coro_rpc20coro_rpc_server_baseINSB_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvS5_S9_DpRT_EEDpSt10unique_ptrISJ_St14default_deleteISJ_EEEUlS5_S9_iE_E9_m_invokeERKNS1_9_any_dataES5_OS9_, ptr %i.q, align 8, !tbaa !306
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZN12async_simple4util18move_only_functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEEEC2IZN8coro_rpc20coro_rpc_server_baseINSC_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvS4_S8_DpRT_EEDpSt10unique_ptrISK_St14default_deleteISK_EEEUlS4_S8_iE_vvvEEOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i

bb.d:                                             ; preds = %_ZN12async_simple4util18move_only_functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEEEC2IZN8coro_rpc20coro_rpc_server_baseINSC_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvS4_S8_DpRT_EEDpSt10unique_ptrISK_St14default_deleteISK_EEEUlS4_S8_iE_vvvEEOT_.exit.i
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef zeroext 0)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #52
  unreachable

bb.f:                                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !305 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i, label %_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i.i.i: ; preds = %bb.f
  call void @_ZN7cinatra16coro_http_serverD2Ev(ptr noundef nonnull align 8 dead_on_return(1256) dereferenceable(1256) %.pre) #43
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 1256) #53
  br label %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i: ; preds = %.thread, %_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i.i.i, %bb.f
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !314  ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.v, null
  br i1 %.not.i.i2, label %_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EEENUlS9_SD_iE_D2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i
  %i.w = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 3)
          to label %_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EEENUlS9_SD_iE_D2Ev.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #52
  unreachable

_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EEENUlS9_SD_iE_D2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  ret void

bb.i:                                             ; preds = %_ZNSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEERN7cinatra16coro_http_serverEEEC2EOSB_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EEENUlS9_SD_iE_D2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !305    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit

_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN7cinatra16coro_http_serverD2Ev(ptr noundef nonnull align 8 dead_on_return(1256) dereferenceable(1256) %i.a) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1256) #53
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i16 @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE5startEv(ptr noundef nonnull align 8 dereferenceable(664) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Future", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE11async_startEv(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::Future") align 8 %1, ptr noundef nonnull align 8 dereferenceable(664) %0) #43
  invoke void @_ZN12async_simple6FutureIN8coro_rpc8err_codeEE4waitEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.a = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN12async_simple6FutureIN8coro_rpc8err_codeEE6getTryIS3_EEDcRT_(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc1 unwind label %bb.i

.noexc1:                                          ; preds = %.noexc
  %i.b = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZNR12async_simple3TryIN8coro_rpc8err_codeEE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %.noexc1
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 2, !tbaa !471
  %i.c = load ptr, ptr %1, align 8, !tbaa !358    ; 5 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %2 = atomicrmw add ptr %i.d, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, label %bb.e, !prof !284

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ne i8 %i.g, 2
  %i.i = load ptr, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.c, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.l, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit, label %bb.g, !prof !284

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i
  %i.m = icmp ne i8 %i.l, 2
  %i.n = load ptr, ptr %i.j, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.n, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #43
  br label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit

_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret i16 %.sroa.0.0.copyload.i

bb.i:                                             ; preds = %.noexc1, %.noexc, %bb.a
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #52
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !358    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %1 = atomicrmw add ptr %i.b, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %1, 1
  br i1 %.not.i, label %bb.c, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit, label %bb.d, !prof !284

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.a, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i8, ptr %i.i, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i1 = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i1, label %_ZN12async_simple10LocalStateIN8coro_rpc8err_codeEED2Ev.exit, label %bb.f, !prof !284

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit
  %i.k = icmp ne i8 %i.j, 2
  %i.l = load ptr, ptr %i.h, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.l, null
  %or.cond.i.i.i.i.i3 = select i1 %i.k, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2
  br i1 %or.cond.i.i.i.i.i3, label %_ZN12async_simple10LocalStateIN8coro_rpc8err_codeEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #43
  br label %_ZN12async_simple10LocalStateIN8coro_rpc8err_codeEED2Ev.exit

_ZN12async_simple10LocalStateIN8coro_rpc8err_codeEED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8coro_rpc20coro_rpc_server_baseINS_8config_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.easylog::record_t", align 8 ; 9 uses
  %2 = alloca %"struct.refvalue::meta_string.640", align 1 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !258

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.g = icmp slt i32 %i.f, 4
  br i1 %i.g, label %bb.f, label %bb.u

bb.f:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.h = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.i = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZN7easylog6loggerILm0EE8instanceEv.exit8, !prof !258

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i5 = icmp eq i32 %i.k, 0
  br i1 %.not.i5, label %_ZN7easylog6loggerILm0EE8instanceEv.exit8, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit8

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit8:        ; preds = %bb.i, %bb.g, %bb.f
  %i.n = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit8
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !333
  %i.p = sub nsw i64 %i.h, %.sroa.0.0.copyload.i2.i.i
  %i.q = sdiv i64 %i.p, 1000000
  %i.r = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.s = srem i64 %i.q, %i.r
  %i.t = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.u

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit8, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store i8 91, ptr %2, align 1, !alias.scope !4183
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(23) @__const._ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEED1EvENKUlvE_clEv.prefix, i64 23, i1 false), !tbaa.struct !455
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.962, i64 3, i1 false), !tbaa.struct !456
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 %i.h, i32 noundef 3, i64 26, ptr nonnull %2)
          to label %bb.k unwind label %bb.av

bb.k:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !288  ; 5 uses
  %i.y = icmp sgt i64 %i.x, 9223372036854775782
  br i1 %i.y, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.k
  %i.z = add nsw i64 %i.x, 25                     ; 3 uses
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !287 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ad = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.ad)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.af = phi i64 [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.z, %i.af
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.ag, ptr noundef nonnull align 1 dereferenceable(25) @.str.1035, i64 25, i1 false)
  br label %bb.o

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef %i.x, i64 noundef 0, ptr noundef nonnull @.str.1035, i64 noundef 25)
          to label %bb.o unwind label %bb.av

bb.o:                                             ; preds = %bb.m, %bb.n
  store i64 %i.z, ptr %i.w, align 8, !tbaa !288
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !287
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i8 0, ptr %i.ai, align 1, !tbaa !279
  %i.aj = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %_ZN7easylog6loggerILm0EE8instanceEv.exit13, !prof !258

bb.p:                                             ; preds = %bb.o
  %i.al = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i10 = icmp eq i32 %i.al, 0
  br i1 %.not.i10, label %_ZN7easylog6loggerILm0EE8instanceEv.exit13, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.am = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit13

end_hunk_1
begin_hunk_2_@_ZN4asio6detail16thread_info_baseD2Ev:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !306  ; 2 uses
  %.not.2 = icmp eq ptr %i.e, null
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !306  ; 2 uses
  %.not.3 = icmp eq ptr %i.g, null
  br i1 %.not.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !306  ; 2 uses
  %.not.4 = icmp eq ptr %i.i, null
  br i1 %.not.4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.i) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !306  ; 2 uses
  %.not.5 = icmp eq ptr %i.k, null
  br i1 %.not.5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.k) #43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !306  ; 2 uses
  %.not.6 = icmp eq ptr %i.m, null
  br i1 %.not.6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.m) #43
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !306  ; 2 uses
  %.not.7 = icmp eq ptr %i.o, null
  br i1 %.not.7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.o) #43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !306  ; 2 uses
  %.not.8 = icmp eq ptr %i.q, null
  br i1 %.not.8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.q) #43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !306  ; 2 uses
  %.not.9 = icmp eq ptr %i.s, null
  br i1 %.not.9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.s) #43
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !698
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #29

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #30

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !688  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !692  ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !686
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = atomicrmw add ptr %i.g, i64 %i.d seq_cst, align 8 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !688
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i64 0, ptr %i.j, align 8, !tbaa !692
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !687  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !682, !nonnull !343, !align !538 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load i8, ptr %i.n, align 8, !tbaa !607, !range !342, !noundef !343
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !681, !range !342, !noundef !343
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.t) #43 ; 0 uses
  store i8 1, ptr %i.q, align 8, !tbaa !681
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !688
  br label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.v = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.pre3, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !686    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store i8 1, ptr %i.x, align 8, !tbaa !610
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !647  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 232 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !648 ; 2 uses
  %.not8.i = icmp eq ptr %i.ac, null
  %..i = select i1 %.not8.i, ptr %i.aa, ptr %i.ac
  store ptr %i.z, ptr %..i, align 8, !tbaa !647
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !647
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %.pre4 = load ptr, ptr %0, align 8, !tbaa !686
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.af = phi ptr [ %.pre4, %bb.f ], [ %i.w, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 184 ; 3 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !653
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 232 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !648 ; 2 uses
  %.not.i1 = icmp eq ptr %i.aj, null
  %..i2 = select i1 %.not.i1, ptr %i.ag, ptr %i.aj
  store ptr %i.ah, ptr %..i2, align 8, !tbaa !647
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !648
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !696
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !692  ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !694
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = add nsw i64 %i.d, -1
  %i.i = atomicrmw add ptr %i.g, i64 %i.h seq_cst, align 8 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %_ZN4asio6detail9scheduler13work_finishedEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !694    ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %1 = atomicrmw add ptr %i.k, i64 -1 seq_cst, align 8
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.e, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !607, !range !342, !noundef !343
  %i.o = trunc nuw i8 %i.n to i1                  ; 3 uses
  br i1 %i.o, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i8 1, ptr %i.p, align 8, !tbaa !667
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #43 ; 0 uses
  %.pre.i.i = load i8, ptr %i.m, align 8, !tbaa !607, !range !342
  %i.s = trunc nuw i8 %.pre.i.i to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  store i8 1, ptr %i.t, align 8, !tbaa !667
  br i1 %i.s, label %bb.f, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.f:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !668
  %i.x = or i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !668
  %i.y = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.u) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.f, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 208 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !610, !range !342, !noundef !343
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !608 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.z, align 8, !tbaa !610
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !263
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.j, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.h, %bb.g, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.o, label %bb.i, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.i:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.ai = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.o, label %bb.k, label %.body

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.al = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ak) #43 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.i, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.d, %bb.c, %bb.b
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !696 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store i64 0, ptr %i.an, align 8, !tbaa !692
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !655 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !695 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !682, !nonnull !343, !align !538 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load i8, ptr %i.au, align 8, !tbaa !607, !range !342, !noundef !343
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.m, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !681, !range !342, !noundef !343
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit: ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #43 ; 0 uses
  store i8 1, ptr %i.ax, align 8, !tbaa !681
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !696 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %.pre1 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !647 ; 2 uses
  %.not.i = icmp eq ptr %.pre1, null
  br i1 %.not.i, label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread: ; preds = %bb.m, %bb.l, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit
  %i.bc = phi ptr [ %.pre, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %i.am, %bb.l ], [ %i.am, %bb.m ] ; 2 uses
  %i.bd = phi ptr [ %.pre1, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.bf = load ptr, ptr %0, align 8, !tbaa !694   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 232 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !648 ; 2 uses
  %.not8.i = icmp eq ptr %i.bi, null
  %..i = select i1 %.not8.i, ptr %i.bg, ptr %i.bi
  store ptr %i.bd, ptr %..i, align 8, !tbaa !647
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !647
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  br label %_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit

_ZN4asio6detail8op_queueINS0_19scheduler_operationEE4pushIS2_EEvRNS1_IT_EE.exit: ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit.thread, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lock4lockEv.exit, %_ZN4asio6detail9scheduler13work_finishedEv.exit
  ret void

.body:                                            ; preds = %bb.j, %bb.k
  %i.bl = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.bl) #52
  unreachable
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef align 8 dereferenceable(8)) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #16

declare i32 @pause() local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_cond_destroy(ptr noundef) local_unnamed_addr #14

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio17execution_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !572    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.04.i.i = load ptr, ptr %i.b, align 8, !tbaa !574 ; 2 uses
  %.not5.i.i = icmp eq ptr %.04.i.i, null
  br i1 %.not5.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.noexc
  %.06.i.i = phi ptr [ %.0.i.i, %.noexc ], [ %.04.i.i, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !263
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i)
          to label %.noexc unwind label %bb.c, !inline_history !10

.noexc:                                           ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  %.0.i.i = load ptr, ptr %i.f, align 8, !tbaa !574 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio17execution_context8shutdownEv.exit, label %.lr.ph.i.i, !llvm.loop !11

_ZN4asio17execution_context8shutdownEv.exit:      ; preds = %.noexc
  %.pre = load ptr, ptr %0, align 8, !tbaa !572   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre2 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !578 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.not2.i.i = icmp eq ptr %.pre2, null
  br i1 %.not2.i.i, label %_ZN4asio17execution_context7destroyEv.exit, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i

_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i
  %i.h = phi ptr [ %i.j, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i ], [ %.pre2, %_ZN4asio17execution_context8shutdownEv.exit ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !583  ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #43, !inline_history !4282
  store ptr %i.j, ptr %i.g, align 8, !tbaa !578
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZN4asio17execution_context7destroyEv.exitthread-pre-split, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i, !llvm.loop !13

_ZN4asio17execution_context7destroyEv.exitthread-pre-split: ; preds = %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !572
  br label %_ZN4asio17execution_context7destroyEv.exit

_ZN4asio17execution_context7destroyEv.exit:       ; preds = %_ZN4asio17execution_context7destroyEv.exitthread-pre-split, %_ZN4asio17execution_context8shutdownEv.exit
  %i.n = phi ptr [ %.pr, %_ZN4asio17execution_context7destroyEv.exitthread-pre-split ], [ %.pre, %_ZN4asio17execution_context8shutdownEv.exit ] ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %_ZN4asio17execution_context7destroyEv.exit.thread

_ZN4asio17execution_context7destroyEv.exit.thread: ; preds = %bb.a, %_ZN4asio17execution_context7destroyEv.exit
  %i.p = phi ptr [ %i.n, %_ZN4asio17execution_context7destroyEv.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.q) #43 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 64) #53
  br label %bb.b

bb.b:                                             ; preds = %_ZN4asio17execution_context7destroyEv.exit.thread, %_ZN4asio17execution_context7destroyEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !532  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !572  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.04.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !574 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.04.i.i.i, null
  br i1 %.not5.i.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.noexc.i
  %.06.i.i.i = phi ptr [ %.0.i.i.i, %.noexc.i ], [ %.04.i.i.i, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.06.i.i.i, align 8, !tbaa !263
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i.i)
          to label %.noexc.i unwind label %bb.c, !inline_history !10

.noexc.i:                                         ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32
  %.0.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !574 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN4asio17execution_context8shutdownEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !11

_ZN4asio17execution_context8shutdownEv.exit.i:    ; preds = %.noexc.i
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !572 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 56 ; 2 uses
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !578 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %.pre2.i, null
  br i1 %.not2.i.i.i, label %_ZN4asio17execution_context7destroyEv.exit.thread.i, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i

_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit.i, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i
  %i.j = phi ptr [ %i.l, %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i ], [ %.pre2.i, %_ZN4asio17execution_context8shutdownEv.exit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !583  ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !263
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #43, !inline_history !12
  store ptr %i.l, ptr %.phi.trans.insert.i, align 8, !tbaa !578
  %.not.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i, label %_ZN4asio17execution_context7destroyEv.exit.i, label %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i, !llvm.loop !13

_ZN4asio17execution_context7destroyEv.exit.i:     ; preds = %_ZN4asio6detail16service_registry7destroyEPNS_17execution_context7serviceE.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !572 ; 2 uses
  %i.p = icmp eq ptr %.pr.i, null
  br i1 %i.p, label %_ZN4asio17execution_contextD2Ev.exit, label %_ZN4asio17execution_context7destroyEv.exit.thread.i

_ZN4asio17execution_context7destroyEv.exit.thread.i: ; preds = %_ZN4asio17execution_context8shutdownEv.exit.i, %_ZN4asio17execution_context7destroyEv.exit.i, %bb.b
  %i.q = phi ptr [ %.pr.i, %_ZN4asio17execution_context7destroyEv.exit.i ], [ %i.d, %bb.b ], [ %.pre.i, %_ZN4asio17execution_context8shutdownEv.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #43 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 64) #53
  br label %_ZN4asio17execution_contextD2Ev.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #52
  unreachable

_ZN4asio17execution_contextD2Ev.exit:             ; preds = %_ZN4asio17execution_context7destroyEv.exit.i, %_ZN4asio17execution_context7destroyEv.exit.thread.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 16) #53
  br label %bb.d

bb.d:                                             ; preds = %_ZN4asio17execution_contextD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN4asio10io_contextELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio10io_context4workD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !700, !nonnull !343, !align !538 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %1 = atomicrmw add ptr %i.b, i64 -1 seq_cst, align 8
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !607, !range !342, !noundef !343
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  br i1 %i.f, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %i.g, align 8, !tbaa !667
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #43 ; 0 uses
  %.pre.i.i = load i8, ptr %i.d, align 8, !tbaa !607, !range !342
  %i.j = trunc nuw i8 %.pre.i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i8 1, ptr %i.k, align 8, !tbaa !667
  br i1 %i.j, label %bb.c, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.c:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !668
  %i.o = or i64 %i.n, 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !668
  %i.p = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.l) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.c, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !610, !range !342, !noundef !343
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !608  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.q, align 8, !tbaa !610
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !263
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.g, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.e, %bb.d, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.f, label %bb.f, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.f:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.y) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.f, label %bb.h, label %.body

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #43 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.f, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.a
  ret void

.body:                                            ; preds = %bb.g, %bb.h
  %i.ad = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !700, !nonnull !343, !align !538 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %1 = atomicrmw add ptr %i.e, i64 -1 seq_cst, align 8
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.c, label %_ZN4asio10io_context4workD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !607, !range !342, !noundef !343
  %i.i = trunc nuw i8 %i.h to i1                  ; 3 uses
  br i1 %i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i8 1, ptr %i.j, align 8, !tbaa !667
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #43 ; 0 uses
  %.pre.i.i.i = load i8, ptr %i.g, align 8, !tbaa !607, !range !342
  %i.m = trunc nuw i8 %.pre.i.i.i to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  store i8 1, ptr %i.n, align 8, !tbaa !667
  br i1 %i.m, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !668
  %i.r = or i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !tbaa !668
  %i.s = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.o) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !610, !range !342, !noundef !343
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !608  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.t, align 8, !tbaa !610
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i unwind label %bb.h, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i.i
  br i1 %i.i, label %bb.g, label %_ZN4asio10io_context4workD2Ev.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #43 ; 0 uses
  br label %_ZN4asio10io_context4workD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.i, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ae) #43 ; 0 uses
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h
  %i.ag = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #52
  unreachable

_ZN4asio10io_context4workD2Ev.exit:               ; preds = %bb.b, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZN4asio10io_context4workD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN4asio10io_context4workELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !545  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !591    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.939) #54
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #55 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !328  ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !306
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !306
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !280
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !280
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4291)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !306, !alias.scope !4291
  store ptr null, ptr %i.z, align 8, !tbaa !328, !alias.scope !4291
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !306, !alias.scope !4290
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !530, !alias.scope !4291
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !4286

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN4asio10io_contextEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4293)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !306, !alias.scope !4293
  store ptr null, ptr %i.ae, align 8, !tbaa !328, !alias.scope !4293
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !306, !alias.scope !4292
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !530, !alias.scope !4293
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !4286

_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN4asio10io_contextEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4asio10io_contextEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !546
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #53
end_hunk_2
begin_hunk_3_@_ZN4asio9execution6detail17any_executor_base8query_fnIvNS0_11prefer_onlyINS1_16outstanding_work11untracked_tILi0EEEEEEEvPvPKvSB_:bb.a
.noexc.i.i:                                       ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvSM_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !263
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #43, !inline_history !4501 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %.noexc.i unwind label %bb.b, !inline_history !4501

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43, !inline_history !4501
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvSM_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !263
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #43, !inline_history !4502 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %.noexc.i unwind label %bb.b, !inline_history !4502

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43, !inline_history !4502
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnIvNS0_11prefer_onlyINS1_12relationship6fork_tILi0EEEEEEEvPvPKvSB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !263
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvSQ_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !263
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #43, !inline_history !4503 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %.noexc.i unwind label %bb.b, !inline_history !4503

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43, !inline_history !4503
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvSQ_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !263
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #43, !inline_history !4504 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %.noexc.i unwind label %bb.b, !inline_history !4504

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43, !inline_history !4504
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base8query_fnIvNS0_11prefer_onlyINS1_12relationship14continuation_tILi0EEEEEEEvPvPKvSB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !263
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10require_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvST_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !263
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #43, !inline_history !4505 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %.noexc.i unwind label %bb.b, !inline_history !4505

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43, !inline_history !4505
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base9prefer_fnINS0_12any_executorIJNS0_12context_as_tIRNS_17execution_contextEEENS1_8blocking7never_tILi0EEENS0_11prefer_onlyINS9_10possibly_tILi0EEEEENSC_INS1_16outstanding_work9tracked_tILi0EEEEENSC_INSG_11untracked_tILi0EEEEENSC_INS1_12relationship6fork_tILi0EEEEENSC_INSN_14continuation_tILi0EEEEEEEEvST_EET_PKvSX_(ptr dead_on_unwind noalias writable sret(%"class.asio::execution::any_executor") align 8 %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.asio::execution::bad_executor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %3, align 8, !tbaa !263
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #43, !inline_history !4506 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4asio9execution12bad_executorE, i64 16), ptr %i.a, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4asio9execution12bad_executorE, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %.noexc.i unwind label %bb.b, !inline_history !4506

.noexc.i:                                         ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43, !inline_history !4506
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio10io_context19basic_executor_typeISaIvELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !815
  %i.b = and i64 %i.a, -4                         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZN4asio6detail9scheduler13work_finishedEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !537, !nonnull !343, !align !538 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %1 = atomicrmw add ptr %i.f, i64 -1 seq_cst, align 8
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.c, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !607, !range !342, !noundef !343
  %i.j = trunc nuw i8 %i.i to i1                  ; 3 uses
  br i1 %i.j, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i8 1, ptr %i.k, align 8, !tbaa !667
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #43 ; 0 uses
  %.pre.i.i = load i8, ptr %i.h, align 8, !tbaa !607, !range !342
  %i.n = trunc nuw i8 %.pre.i.i to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  store i8 1, ptr %i.o, align 8, !tbaa !667
  br i1 %i.n, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 160 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !668
  %i.s = or i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !668
  %i.t = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.p) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !610, !range !342, !noundef !343
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !608  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.u, align 8, !tbaa !610
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !263
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.h, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.j, label %bb.g, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br i1 %i.j, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #43 ; 0 uses
  br label %.body

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.g, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.b, %bb.a
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  %i.ah = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #52
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4asio9execution6detail17any_executor_base14target_type_exINS_10io_context19basic_executor_typeISaIvELm4EEEEERKSt9type_infov() #9 comdat align 2 {
bb.a:
  ret ptr @_ZTIN4asio10io_context19basic_executor_typeISaIvELm4EEE
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4asio9execution6detail17any_executor_base8equal_exINS_10io_context19basic_executor_typeISaIvELm4EEEEEbRKS2_S9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !712
  %i.e = load i64, ptr %i.b, align 8, !tbaa !815
  %i.f = load i64, ptr %i.d, align 8, !tbaa !815
  %i.g = icmp eq i64 %i.e, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio9execution6detail17any_executor_base10execute_exINS_10io_context19basic_executor_typeISaIvELm4EEEEEvRKS2_ONS_6detail17executor_functionE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !712
  tail call void @_ZNK4asio10io_context19basic_executor_typeISaIvELm4EE7executeINS_6detail17executor_functionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4asio10io_context19basic_executor_typeISaIvELm4EE7executeINS_6detail17executor_functionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.asio::detail::executor_op<asio::detail::executor_function, std::allocator<void>>::ptr", align 8 ; 10 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !815    ; 2 uses
  %i.b = and i64 %i.a, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge

._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge: ; preds = %bb.a
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E)
  br label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, -4
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !537, !nonnull !343, !align !538
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4asio6detail15keyword_tss_ptrINS0_10call_stackINS0_14thread_contextENS0_16thread_info_baseEE7contextEE6value_E) ; 3 uses
  %.08.i.i = load ptr, ptr %i.h, align 8, !tbaa !676 ; 2 uses
  %.not9.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not9.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread, label %.lr.ph.i.i

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %0, ptr %2, align 8, !tbaa !802
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %_ZN4asio6detail11executor_opINS0_17executor_functionESaIvENS0_19scheduler_operationEE3ptr8allocateERKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.010.i.i = phi ptr [ %.0.i.i, %bb.c ], [ %.08.i.i, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %.010.i.i, align 8, !tbaa !674
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  %.0.i.i = load ptr, ptr %i.l, align 8, !tbaa !676 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %.lr.ph.i.i, !llvm.loop !28

_ZN4asio6detail9scheduler12can_dispatchEv.exit:   ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !675
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  %i.o = load ptr, ptr %1, align 8, !tbaa !805    ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !805
  fence acquire
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !807
  invoke void %i.p(ptr noundef nonnull %i.o, i1 noundef zeroext true)
          to label %_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit unwind label %bb.f, !inline_history !36

_ZN27asio_handler_invoke_helpers6invokeIN4asio6detail17executor_functionES3_EEvRT_RT0_.exit: ; preds = %bb.d, %bb.e
  fence release
  br label %_ZN4asio6detail17executor_functionD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  fence release
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #43 ; 0 uses
  %i.t = load i64, ptr %0, align 8, !tbaa !815
  %i.u = and i64 %i.t, -4
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !537, !nonnull !343, !align !538
  invoke void @_ZN4asio6detail9scheduler25capture_current_exceptionEv(ptr noundef nonnull align 8 dereferenceable(256) %i.x)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_end_catch()
  br label %_ZN4asio6detail17executor_functionD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN4asio6detail17executor_functionD2Ev.exit13 unwind label %bb.k

_ZN4asio6detail9scheduler12can_dispatchEv.exit.thread: ; preds = %bb.c, %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge, %_ZN4asio6detail9scheduler12can_dispatchEv.exit
  %.pre-phi.ph = phi ptr [ %.pre, %._ZN4asio6detail9scheduler12can_dispatchEv.exit.thread_crit_edge ], [ %i.h, %_ZN4asio6detail9scheduler12can_dispatchEv.exit ], [ %i.h, %bb.c ]
  %.pr = load ptr, ptr %.pre-phi.ph, align 8, !tbaa !676 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %0, ptr %2, align 8, !tbaa !802
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4asio6detail21resolver_service_baseC2ERNS_17execution_contextE:bb.a
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i8 1, ptr %i.m, align 8, !tbaa !607
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  invoke void @_ZN4asio6detail11posix_eventC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #43 ; 0 uses
  br label %.body

bb.d:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  store ptr null, ptr %i.q, align 8, !tbaa !608
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  store ptr @_ZN4asio6detail9scheduler16get_default_taskERNS_17execution_contextE, ptr %i.r, align 8, !tbaa !609
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i8 1, ptr %i.t, align 8, !tbaa !610
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 216 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 244
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(26) %i.u, i8 0, i64 26, i1 false)
  store i32 -1, ptr %i.v, align 4, !tbaa !611
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  store ptr null, ptr %i.w, align 8, !tbaa !612
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.x, align 8, !tbaa !900
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.y, align 8, !tbaa !902
  %i.z = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.o, %bb.c ]
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 256) #53
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aa, %bb.e ]
  %i.ac = call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #43 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !902  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !621, !range !342, !noundef !343
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8, !tbaa !669
  %i.i = tail call i32 @pthread_detach(i64 noundef %i.h) #43 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i

_ZN4asio6detail12posix_threadD2Ev.exit.i.i:       ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #53
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i: ; preds = %_ZN4asio6detail12posix_threadD2Ev.exit.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !900  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4asio6detail21resolver_service_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !263
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(256) %i.k) #43, !inline_history !4797
  br label %_ZN4asio6detail21resolver_service_baseD2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #52
  unreachable

_ZN4asio6detail21resolver_service_baseD2Ev.exit:  ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #43 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !902  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !621, !range !342, !noundef !343
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i64, ptr %i.c, align 8, !tbaa !669
  %i.i = tail call i32 @pthread_detach(i64 noundef %i.h) #43 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i

_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i:     ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 16) #53
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i: ; preds = %_ZN4asio6detail12posix_threadD2Ev.exit.i.i.i, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !900  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !263
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(256) %i.k) #43, !inline_history !4798
  br label %_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #52
  unreachable

_ZN4asio6detail16resolver_serviceINS_2ip3tcpEED2Ev.exit: ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEED2Ev.exit.i.i, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = tail call i32 @pthread_mutex_destroy(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #43 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEE8shutdownEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail16resolver_serviceINS_2ip3tcpEE11notify_forkENS_17execution_context10fork_eventE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4asio6detail21resolver_service_base16base_notify_forkENS_17execution_context10fork_eventE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %1)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4asio6detail30execution_context_service_baseINS0_16resolver_serviceINS_2ip3tcpEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #52
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail21resolver_service_base13base_shutdownEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !900  ; 12 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %1 = atomicrmw add ptr %i.c, i64 -1 seq_cst, align 8
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !607, !range !342, !noundef !343
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  br i1 %i.g, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.h, align 8, !tbaa !667
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #43 ; 0 uses
  %.pre.i.i = load i8, ptr %i.e, align 8, !tbaa !607, !range !342
  %i.k = trunc nuw i8 %.pre.i.i to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i8 1, ptr %i.l, align 8, !tbaa !667
  br i1 %i.k, label %bb.d, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

bb.d:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !668
  %i.p = or i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !668
  %i.q = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.m) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i: ; preds = %bb.d, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !610, !range !342, !noundef !343
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !608  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.r, align 8, !tbaa !610
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !263
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i unwind label %bb.h, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.f, %bb.e, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i.i
  br i1 %i.g, label %bb.g, label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.g:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler13work_finishedEv.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %common.resume.sink.split, label %common.resume

common.resume.sink.split:                         ; preds = %bb.h, %bb.m
  %.sink7 = phi ptr [ %i.ae, %bb.m ], [ %i.b, %bb.h ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.ab, %bb.h ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink7, i64 56
  %i.ad = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #43 ; 0 uses
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.m, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.bc, %bb.m ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN4asio6detail9scheduler13work_finishedEv.exit:  ; preds = %bb.b, %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i, %bb.g
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !900 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !607, !range !342, !noundef !343
  %i.ah = trunc nuw i8 %i.ag to i1                ; 3 uses
  br i1 %i.ah, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, label %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i: ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store i8 1, ptr %i.ai, align 8, !tbaa !667
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i: ; preds = %_ZN4asio6detail9scheduler13work_finishedEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ak = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aj) #43 ; 0 uses
  %.pre.i = load i8, ptr %i.af, align 8, !tbaa !607, !range !342
  %i.al = trunc nuw i8 %.pre.i to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 240
  store i8 1, ptr %i.am, align 8, !tbaa !667
  br i1 %i.al, label %bb.i, label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

bb.i:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 160 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !668
  %i.aq = or i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !668
  %i.ar = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.an) #43 ; 0 uses
  br label %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i

_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i: ; preds = %bb.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.i, %_ZN4asio6detail27conditionally_enabled_mutex11scoped_lockC2ERS1_.exit.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 208 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !610, !range !342, !noundef !343
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 168
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !608 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.as, align 8, !tbaa !610
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i unwind label %bb.m, !inline_history !25

_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i: ; preds = %bb.k, %bb.j, %_ZN4asio6detail27conditionally_enabled_event10signal_allERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i.i
  br i1 %i.ah, label %bb.l, label %_ZN4asio6detail9scheduler4stopEv.exit

bb.l:                                             ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.bb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #43 ; 0 uses
  br label %_ZN4asio6detail9scheduler4stopEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ah, label %common.resume.sink.split, label %common.resume

_ZN4asio6detail9scheduler4stopEv.exit:            ; preds = %_ZN4asio6detail9scheduler16stop_all_threadsERNS0_27conditionally_enabled_mutex11scoped_lockE.exit.i, %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !902 ; 4 uses
  %.not1 = icmp eq ptr %i.be, null
  br i1 %.not1, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN4asio6detail9scheduler4stopEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !621, !range !342, !noundef !343
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %_ZN4asio6detail12posix_thread4joinEv.exit.thread, label %_ZN4asio6detail12posix_thread4joinEv.exit

_ZN4asio6detail12posix_thread4joinEv.exit:        ; preds = %bb.n
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !669
  %i.bj = tail call i32 @pthread_join(i64 noundef %i.bi, ptr noundef null) ; 0 uses
  store i8 1, ptr %i.bf, align 8, !tbaa !621
  %.pre = load ptr, ptr %i.bd, align 8, !tbaa !902 ; 2 uses
  %i.bk = icmp eq ptr %.pre, null
  br i1 %i.bk, label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit, label %_ZN4asio6detail12posix_thread4joinEv.exit.thread

_ZN4asio6detail12posix_thread4joinEv.exit.thread: ; preds = %bb.n, %_ZN4asio6detail12posix_thread4joinEv.exit
  %i.bl = phi ptr [ %.pre, %_ZN4asio6detail12posix_thread4joinEv.exit ], [ %i.be, %bb.n ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !621, !range !342, !noundef !343
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN4asio6detail12posix_threadD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4asio6detail12posix_thread4joinEv.exit.thread
  %i.bp = load i64, ptr %i.bl, align 8, !tbaa !669
  %i.bq = tail call i32 @pthread_detach(i64 noundef %i.bp) #43 ; 0 uses
  br label %_ZN4asio6detail12posix_threadD2Ev.exit.i

_ZN4asio6detail12posix_threadD2Ev.exit.i:         ; preds = %bb.o, %_ZN4asio6detail12posix_thread4joinEv.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 16) #53
  br label %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit

_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit: ; preds = %_ZN4asio6detail12posix_thread4joinEv.exit, %_ZN4asio6detail12posix_threadD2Ev.exit.i
  store ptr null, ptr %i.bd, align 8, !tbaa !902
  br label %bb.p

bb.p:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_12posix_threadEE5resetEPS2_.exit, %_ZN4asio6detail9scheduler4stopEv.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !900 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !263
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(256) %i.br) #43, !inline_history !4799
  br label %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit

_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit: ; preds = %bb.p, %bb.q
  store ptr null, ptr %i.a, align 8, !tbaa !900
  br label %bb.r

bb.r:                                             ; preds = %_ZN4asio6detail10scoped_ptrINS0_9schedulerEE5resetEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_4
begin_hunk_5_@_ZN12async_simple4SlotD2Ev:bb.a
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43, !inline_history !58
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43, !inline_history !58
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !284

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !782 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.ab, %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !489 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #53
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !62

_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !763
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !762
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %0, align 8, !tbaa !763   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !762
  %i.al = shl i64 %i.ak, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #53
  br label %_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit

_ZNSt13unordered_mapIhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS1_10SignalTypeEPNS1_6SignalEEEEESt4hashIhESt8equal_toIhESaISt4pairIKhSB_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIhSt4pairIKhPSt6atomicIPN12async_simple4util18move_only_functionIFvNS3_10SignalTypeEPNS3_6SignalEEEEEESaISE_ENSt8__detail10_Select1stESt8equal_toIhESt4hashIhENSG_18_Mod_range_hashingENSG_20_Default_ranged_hashENSG_20_Prime_rehash_policyENSG_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.969)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.k, %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1155
  %i.d = load i64, ptr %1, align 8, !tbaa !1215   ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !1215
  %i.f = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #61
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !5064 ; 8 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS6_SS_E_clES6_SS_.resume, ptr %i.f, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseISt4pairISt10error_codemELb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJS5_bEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS9_IS5_EENS_3TryIS5_EEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS6_SS_E_clES6_SS_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr42.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.reload.addr43.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.reload.addr44.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %.reload.addr42.i, align 8, !tbaa !1215
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr44.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr43.i, align 8, !tbaa !306, !alias.scope !5067
  %index.addr45.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i8 0, ptr %index.addr45.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !306
  %i.j = load ptr, ptr %i.a, align 8
  tail call void %i.j(ptr nonnull %i.a), !inline_history !5064
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.not.i.i4 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i4, label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, label %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5

_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5: ; preds = %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !263
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #43, !inline_history !63
  br label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6

_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6: ; preds = %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !59

bb.f:                                             ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E0_clINS3_IS6_EENS_3TryIS6_EEEEDaSF_SH_ENUlvE_clEvENKUlOSE_E_clISM_EEDaSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1111, align 8           ; 4 uses
  %3 = alloca %"class.std::shared_ptr.394", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1224 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5068, !nonnull !343, !align !538
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.d, ptr %2, align 8, !tbaa !1232
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_JRSt7variantIJS4_S7_S9_EEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #52
  unreachable

_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !328  ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !306
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !306
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !280
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit: ; preds = %_ZN12async_simple3TryISt4pairISt10error_codemEEaSEOS4_.exit, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1233
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %4 = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  switch i64 %4, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit [
    i64 1, label %bb.h
    i64 2, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.t = load ptr, ptr %3, align 16, !tbaa !759
  %i.u = call noundef i64 @_ZN12async_simple6Signal5emitsENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.r) #43 ; 0 uses
  br label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit

bb.g:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !306  ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !973
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr nonnull %i.y)
          to label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit unwind label %bb.g, !inline_history !64

_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit: ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, %bb.f, %bb.i, %bb.h
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !328 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !331
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !332
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !263
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43, !inline_history !58
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43, !inline_history !58
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i4 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !284

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail17DetachedCoroutine12promise_type19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %1) #43
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %1) #54
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 1
  %i.c = load ptr, ptr %1, align 8, !tbaa !698
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.c, %bb.d
  %i.d = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #43
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.f = extractvalue { ptr, i32 } %i.a, 0
  %i.g = call ptr @__cxa_begin_catch(ptr %i.f) #43 ; 2 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !5069
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !263
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #43
  %i.m = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.975, ptr noundef %i.l) #62 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !5069
  %i.o = call i32 @fflush(ptr noundef %i.n)       ; 0 uses
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #43
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %2) #54
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %2, align 8, !tbaa !698
  %.not.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i6, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7:  ; preds = %bb.g, %bb.h
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.merged = phi { ptr, i32 } [ %i.a, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %i.p, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7 ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_JRSt7variantIJS4_S7_S9_EEEEDcOSE_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1151
  %i.c = load ptr, ptr %0, align 8, !tbaa !1232   ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1151  ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !975

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !1151
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEEaSEOSB_EUlOT_T0_E_RSt7variantIJS5_S8_SA_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESH_SK_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE9tryResultEv:bb.a
_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i
  %.str.971.sink = phi ptr [ @.str.970, %_ZSt26__throw_bad_variant_accessb.exit.i.i ], [ @.str.971, %bb.a ]
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.str.971.sink, ptr %i.i, align 8, !tbaa !959
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.cont unwind label %bb.e

_ZSt26__throw_bad_variant_accessb.exit.i.i.cont:  ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke
  unreachable

_ZSt3getISt4pairISt10error_codemEJSt9monostateS2_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.j, align 8, !tbaa !1151
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d, %_ZN12async_simple3TryISt4pairISt10error_codemEEC2ENSt15__exception_ptr13exception_ptrE.exit, %_ZN12async_simple3TryISt4pairISt10error_codemEEC2ENSt15__exception_ptr13exception_ptrE.exit.thread, %_ZSt3getISt4pairISt10error_codemEJSt9monostateS2_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit
  ret void

bb.e:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateSt4pairISt10error_codemES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1151
  switch i8 %i.b, label %bb.b [
    i8 2, label %_ZSt3getILm2EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !975

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !263
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.971, ptr %i.d, align 8, !tbaa !959
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !263
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.970, ptr %i.f, align 8, !tbaa !959
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt3getILm2EJSt9monostateSt4pairISt10error_codemENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERSA_.exit: ; preds = %bb.a
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #37

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #37

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.969)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.k, %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1157
  %i.d = load i64, ptr %1, align 8, !tbaa !1215   ; 3 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  store ptr null, ptr %1, align 8, !tbaa !1215
  %i.f = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #61
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !5070 ; 8 uses

AfterCoroEnd.i:                                   ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS3_SS_E_clES3_SS_.resume, ptr %i.f, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIbLb0EE5startIZZZNS1_25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS6_IbEENS_3TryIbEEEEDaSI_SK_ENUlvE_clEvEUlOSH_E_EEvSR_Q14isLazyCallbackISH_TL0__EENKUlS3_SS_E_clES3_SS_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.reload.addr43.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.reload.addr44.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.d, ptr %.reload.addr.i, align 8, !tbaa !1215
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr44.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr43.i, align 8, !tbaa !306, !alias.scope !5073
  %index.addr45.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i8 0, ptr %index.addr45.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %i.i, align 8, !tbaa !306
  %i.j = load ptr, ptr %i.a, align 8
  tail call void %i.j(ptr nonnull %i.a), !inline_history !5070
  ret void

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.not.i.i4 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i4, label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6, label %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5

_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5: ; preds = %bb.e
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !263
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #43, !inline_history !65
  br label %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6

_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6: ; preds = %_ZNKSt14default_deleteIN12async_simple4coro13LazyLocalBaseEEclEPS2_.exit.i.i5, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !60

bb.f:                                             ; preds = %_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENUlOSE_E_D2Ev.exit6
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #52
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZZZN12async_simple4coro6detail25CollectAllVariadicAwaiterILb0ENS0_4LazyEJSt4pairISt10error_codemEbEE18await_suspend_implIJLm0ELm1EEEEvSt16integer_sequenceImJXspT_EEENSt7__n486116coroutine_handleIvEEENKUlRT_RT0_E_clINS3_IbEENS_3TryIbEEEEDaSF_SH_ENUlvE_clEvENKUlOSE_E_clISM_EEDaSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1124, align 8           ; 4 uses
  %3 = alloca %"class.std::shared_ptr.394", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1227 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5074, !nonnull !343, !align !538
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.d, ptr %2, align 8, !tbaa !1240
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS7_EUlOT_T0_E_JRSt7variantIJS4_bS6_EEEEDcOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN12async_simple3TryIbEaSEOS1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #52
  unreachable

_ZN12async_simple3TryIbEaSEOS1_.exit:             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !328  ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !306
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !306
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN12async_simple3TryIbEaSEOS1_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 4, !tbaa !280
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !280
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit: ; preds = %_ZN12async_simple3TryIbEaSEOS1_.exit, %bb.d, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1233
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %4 = atomicrmw add ptr %i.s, i64 -1 acq_rel, align 8
  switch i64 %4, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit [
    i64 1, label %bb.g
    i64 2, label %bb.f
  ]

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.t = load ptr, ptr %3, align 16, !tbaa !759
  %i.u = call noundef i64 @_ZN12async_simple6Signal5emitsENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef %i.r) #43 ; 0 uses
  br label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !306  ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !973
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr nonnull %i.x)
          to label %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit unwind label %bb.i, !inline_history !64

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  resume { ptr, i32 } %i.z

_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit: ; preds = %_ZNSt10shared_ptrIN12async_simple6SignalEEC2ERKS2_.exit, %bb.f, %bb.h, %bb.g
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !328 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !331
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !332
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !263
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43, !inline_history !58
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !263
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43, !inline_history !58
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i4 = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !284

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #43
  br label %_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12async_simple6SignalELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNKSt7__n486116coroutine_handleIvE6resumeEv.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS7_EUlOT_T0_E_JRSt7variantIJS4_bS6_EEEEDcOSB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !1153
  %i.c = load ptr, ptr %0, align 8, !tbaa !1240   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1153  ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !975

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !1153
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !975

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %1, align 8, !tbaa !746, !range !342, !noundef !343
  store i8 %i.h, ptr %i.c, align 8, !tbaa !746
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = icmp ne i8 %i.e, 2
  %i.j = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.j, null
  %or.cond.i.i.i.i.i.i.i11 = select i1 %i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10
  br i1 %or.cond.i.i.i.i.i.i.i11, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJbEEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.k = load i8, ptr %1, align 8, !tbaa !746, !range !342, !noundef !343
  store i8 %i.k, ptr %i.c, align 8, !tbaa !1242
  store i8 1, ptr %i.d, align 8, !tbaa !1153
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !1237

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.l = load ptr, ptr %1, align 8, !tbaa !698
  store ptr null, ptr %1, align 8, !tbaa !698
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !698  ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !698
  store ptr %i.l, ptr %i.c, align 8, !tbaa !698
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.n = load ptr, ptr %1, align 8, !tbaa !698
  store ptr %i.n, ptr %i.c, align 8, !tbaa !698
  store ptr null, ptr %1, align 8, !tbaa !698
  store i8 2, ptr %i.d, align 8, !tbaa !1153
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit, label %bb.m, !prof !284

bb.m:                                             ; preds = %bb.l
  %i.o = icmp ne i8 %i.e, 2
  %i.p = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  %or.cond.i.i.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_bS5_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !1153
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostatebNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_RSt7variantIJS5_bS7_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESE_SH_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

end_hunk_6
begin_hunk_7_@_ZN7easylog8record_tlsIA26_cEERS0_RKT_:bb.a
  br i1 %cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %1, align 1, !tbaa !279
  store i8 %i.o, ptr %i.n, align 1, !tbaa !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.b)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !288
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !279
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPvEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull align 16 dereferenceable(32) @__const._ZN7easylog8record_tlsIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEEERS0_RKT_.buf, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !306    ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = sub nuw nsw i32 67, %i.g
  %i.i = lshr i32 %i.h, 2                         ; 2 uses
  %i.j = icmp ugt ptr %i.c, inttoptr (i64 255 to ptr)
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.k = add nsw i32 %i.i, -1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.031.i.i = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.k, %.lr.ph.preheader.i.i ] ; 3 uses
  %.02830.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %i.d, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.l = and i64 %.02830.i.i, 15
  %i.m = lshr i64 %.02830.i.i, 4
  %i.n = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.l
  %i.o = load i8, ptr %i.n, align 1, !tbaa !279
  %i.p = zext i32 %.031.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p
  store i8 %i.o, ptr %i.q, align 1, !tbaa !279
  %i.r = and i64 %i.m, 15
  %i.s = lshr i64 %.02830.i.i, 8                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.r
  %i.u = load i8, ptr %i.t, align 1, !tbaa !279
  %i.v = add nsw i32 %.031.i.i, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1, !tbaa !279
  %i.y = add nsw i32 %.031.i.i, -2
  %i.z = icmp ugt i64 %.02830.i.i, 65535
  br i1 %i.z, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.028.lcssa.i.i = phi i64 [ %i.d, %bb.b ], [ %i.s, %.lr.ph.i.i ] ; 4 uses
  %i.aa = icmp samesign ugt i64 %.028.lcssa.i.i, 15
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.ab = and i64 %.028.lcssa.i.i, 15
  %i.ac = lshr i64 %.028.lcssa.i.i, 4
  %i.ad = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %i.ab
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !279
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !279
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.028.pn.i.i = phi i64 [ %i.ac, %bb.c ], [ %.028.lcssa.i.i, %._crit_edge.i.i ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.__digits, i64 %.028.pn.i.i
  %storemerge.i.i = load i8, ptr %storemerge.in.i.i, align 1, !tbaa !279
  %narrow = add nuw nsw i32 %i.i, 2
  %i.ag = zext nneg i32 %narrow to i64
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %bb.d, %bb.a
  %.sink109.i = phi i8 [ %storemerge.i.i, %bb.d ], [ 48, %bb.a ]
  %.sink.i = phi i64 [ %i.ag, %bb.d ], [ 3, %bb.a ] ; 4 uses
  store i8 %.sink109.i, ptr %i.b, align 2, !tbaa !279
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !288 ; 5 uses
  %i.ak = sub i64 9223372036854775807, %i.aj
  %i.al = icmp ult i64 %i.ak, %.sink.i
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.e:                                             ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  %i.am = add i64 %i.aj, %.sink.i                 ; 3 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !287 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.am, %i.as
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 16 %i.a, i64 %.sink.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.sink.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.f, %bb.g
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !288
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !287
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 0, ptr %i.av, align 1, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t7enqueueERNS_11ib_buffer_tE(ptr noundef nonnull align 8 dereferenceable(1352) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.1171", align 8 ; 9 uses
  %3 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %4 = alloca %"struct.refvalue::meta_string.960", align 1 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"class.async_simple::coro::Lazy.955", align 8 ; 8 uses
  %6 = alloca %"class.std::weak_ptr.905", align 16 ; 3 uses
  %7 = alloca %class.anon.1181, align 1           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5120)
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #55, !noalias !5120 ; 5 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !1251, !noalias !5120
  store ptr %i.e, ptr %i.d, align 8, !tbaa !1251, !noalias !5120
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1252, !noalias !5120
  store i64 %i.h, ptr %i.f, align 8, !tbaa !1252, !noalias !5120
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load <2 x ptr>, ptr %i.j, align 8, !tbaa !306, !noalias !5120
  store ptr null, ptr %i.k, align 8, !tbaa !328, !noalias !5120
  store <2 x ptr> %i.l, ptr %i.i, align 8, !tbaa !306, !noalias !5120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 24, i1 false), !noalias !5120
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.n = load i64, ptr %i.b, align 8, !tbaa !1254, !noalias !5120
  store i64 %i.n, ptr %i.m, align 8, !tbaa !1254, !noalias !5120
  store ptr null, ptr %i.b, align 8, !tbaa !1254, !noalias !5120
  store ptr %i.d, ptr %2, align 8, !tbaa !1289, !alias.scope !5120
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1256
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.q ; 2 uses
  %i.t = atomicrmw add ptr %i.s, i64 1 seq_cst, align 8
  %i.u = getelementptr inbounds [616 x i8], ptr %i.o, i64 %i.q
  %i.v = invoke noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %i.u)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i: ; preds = %.noexc
  %i.x = invoke noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNSB_14AllocationModeE0ES9_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc22 unwind label %bb.e

.noexc22:                                         ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i
  br i1 %i.x, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread

_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit.thread: ; preds = %.noexc, %.noexc22
  %8 = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit: ; preds = %.noexc22
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %bb.b, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.b:                                             ; preds = %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE7enqueueEOS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.aa = cmpxchg ptr %i.z, i64 0, i64 1 seq_cst seq_cst, align 8
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.c, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 8
  %i.ae = icmp slt i32 %i.ad, 2
  br i1 %i.ae, label %bb.g, label %bb.u

bb.e:                                             ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE7enqueueEOS9_.exit.i, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.f:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.g:                                             ; preds = %bb.d
  %i.ah = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.ai = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.h unwind label %bb.o       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj monotonic, align 8
  %i.al = icmp slt i64 %i.ak, 1
  br i1 %i.al, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.am, align 8, !tbaa !333
  %i.an = sub nsw i64 %i.ah, %.sroa.0.0.copyload.i2.i.i
  %i.ao = sdiv i64 %i.an, 1000000
  %i.ap = load atomic i64, ptr %i.aj monotonic, align 8
  %i.aq = srem i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8
  %i.at = icmp slt i64 %i.aq, %i.as
  br i1 %i.at, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.u

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %bb.h, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store i8 91, ptr %4, align 1, !alias.scope !5121
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io16ib_buffer_pool_t7enqueueERNS_11ib_buffer_tEENKUlvE_clEv.prefix, i64 17, i1 false), !tbaa.struct !1132
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.962, i64 3, i1 false), !tbaa.struct !456
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 %i.ah, i32 noundef 1, i64 20, ptr nonnull %4)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.au = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA47_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 1 dereferenceable(47) @.str.989)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store ptr %0, ptr %i.a, align 8, !tbaa !1290
  %i.av = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIPN7coro_io16ib_buffer_pool_tEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aw = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA2_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 1 dereferenceable(2) @.str.990)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ax = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ay = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !342, !noundef !343
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.n, !prof !284

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(80) %i.aw)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.r

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.u

bb.o:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.p:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.j
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.r ], [ %i.bc, %bb.q ]
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.bb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.ap

bb.u:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !5122)
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !278, !noalias !5122 ; 2 uses
  %i.bh = load <2 x ptr>, ptr %0, align 8, !tbaa !306, !noalias !5122
  store <2 x ptr> %i.bh, ptr %6, align 16, !tbaa !306, !alias.scope !5122
  %.not.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i, label %.cont, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 12 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279, !noalias !5122
  %.not.i.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !280, !noalias !5122
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !280, !noalias !5122
  br label %.cont

bb.x:                                             ; preds = %bb.v
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4, !noalias !5122 ; 0 uses
  br label %.cont

.cont:                                            ; preds = %bb.x, %bb.w, %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !333
  %spec.select = call i64 @llvm.smax.i64(i64 %i.bo, i64 50)
  invoke void @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::coro::Lazy.955") align 8 %5, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %6, i64 %spec.select)
          to label %bb.y unwind label %bb.ag

bb.y:                                             ; preds = %.cont
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  %i.bp = call noundef i32 @_ZNSt6thread20hardware_concurrencyEv() #43
  %i.bq = invoke noundef nonnull align 8 dereferenceable(113) ptr @_ZN7coro_io17g_io_context_poolINS_15io_context_poolEEERT_j(i32 noundef %i.bp)
          to label %bb.z unwind label %bb.ah      ; 4 uses

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = atomicrmw add ptr %i.br, i64 1 monotonic, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !545
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !591
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = ashr exact i64 %i.bz, 4
  %i.cb = urem i64 %i.bs, %i.ca
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !556
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !555
  %i.cf = load ptr, ptr %5, align 8, !tbaa !1131
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.ce, ptr %i.cg, align 8, !tbaa !1291
  invoke void @_ZN12async_simple4coro6detail8LazyBaseIvLb0EE5startIZN7coro_io16ib_buffer_pool_t7enqueueERNS5_11ib_buffer_tEEUlOT_E_EEvSA_Q14isLazyCallbackIS9_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit unwind label %bb.ah

_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  %i.ch = load ptr, ptr %5, align 8, !tbaa !1131  ; 3 uses
  %.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i, label %_ZN12async_simple4coro6detail8LazyBaseIvLb0EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN12async_simple4coro4LazyIvE13directlyStartIZN7coro_io16ib_buffer_pool_t7enqueueERNS4_11ib_buffer_tEEUlOT_E_EEvS9_PNS_8ExecutorEQsr6detailE14isLazyCallbackIS8_TL0__E.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
end_hunk_7
begin_hunk_8_@_ZN7easylog8record_tlsIPN7coro_io16ib_buffer_pool_tEEERS0_RKT_:bb.a
  store i8 %.sink109.i, ptr %i.b, align 2, !tbaa !279
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !288 ; 5 uses
  %i.ak = sub i64 9223372036854775807, %i.aj
  %i.al = icmp ult i64 %i.ak, %.sink.i
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.e:                                             ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  %i.am = add i64 %i.aj, %.sink.i                 ; 3 uses
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !287 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.aq = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.aq)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ar = load i64, ptr %i.ao, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.as = phi i64 [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.am, %i.as
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 16 %i.a, i64 %.sink.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %.sink.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.f, %bb.g
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !288
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !287
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.am
  store i8 0, ptr %i.av, align 1, !tbaa !279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret ptr %0
}

; Function Attrs: coro_only_destroy_when_complete mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE(ptr dead_on_unwind writable sret(%"class.async_simple::coro::Lazy.955") align 8 %0, ptr nofreeobj noundef align 8 dereferenceable(16) %1, i64 %2) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(264) ptr @_ZnamRKSt9nothrow_t(i64 noundef 264, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #57 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit

.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @_ZZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEmENUlPvmE_8__invokeES4_m, ptr %i.c, align 1
  store ptr @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.resume, ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZN7coro_io16ib_buffer_pool_t27collect_idle_timeout_clientESt8weak_ptrIS0_ENSt6chrono8durationIlSt5ratioILl1ELl1000EEEE.destroy, ptr %destroy.addr, align 8
  %.reload.addr465 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i64 %2, ptr %.spill.addr, align 8
  %.spill.addr420 = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !306
  store <2 x ptr> %i.d, ptr %.spill.addr420, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.reload.addr465, i8 0, i64 32, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !306, !alias.scope !5127
  %index.addr466 = getelementptr inbounds nuw i8, ptr %i.a, i64 253
  store i8 0, ptr %index.addr466, align 1
  br label %AfterCoroEnd

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !306, !alias.scope !5128
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %.from._ZN12async_simple4coro6detail16PromiseAllocatorIvLb1EEnwEm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN3ylt6detail10moodycamel7details9thread_idEvE1x)
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = lshr i64 %i.b, 33
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 6 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %.thread131, label %.preheader142

.preheader142:                                    ; preds = %bb.a, %bb.e
  %.087151 = phi ptr [ %i.ai, %bb.e ], [ %i.l, %bb.a ] ; 4 uses
  %i.m = load i64, ptr %.087151, align 8, !tbaa !1295
  %i.n = add i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.087151, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1296
  br label %bb.b

bb.b:                                             ; preds = %.preheader142, %bb.d
  %.080 = phi i64 [ %i.ag, %bb.d ], [ %i.j, %.preheader142 ]
  %i.q = and i64 %i.n, %.080                      ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5135 ; 3 uses
  %.not103 = icmp eq ptr %.087151, %i.l
  br i1 %.not103, label %.thread134, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader
  %.181 = phi i64 [ %i.ae, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112 ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader ]
  %i.x = load i64, ptr %i.l, align 8, !tbaa !1295
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.181                      ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !1296
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = add i64 %i.z, 1
  br i1 %i.ad, label %bb.f, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.s, 0
  %i.ag = add i64 %i.q, 1
  br i1 %i.af, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.087151, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1297 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread131, label %.preheader142, !llvm.loop !5129

bb.f:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1296
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.v, ptr %i.al, align 8, !tbaa !5135
  br label %.thread134

.thread131:                                       ; preds = %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.thread131
  %.088 = phi ptr [ %i.l, %.thread131 ], [ %i.ck, %bb.o ] ; 3 uses
  %i.aq = load i64, ptr %.088, align 8, !tbaa !1295
  %i.ar = lshr i64 %i.aq, 1
  %.not104 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not104, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic ptr, ptr %i.k acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1295 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not105 = icmp ult i64 %i.ao, %i.av
  br i1 %.not105, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.079.in = phi i64 [ %.079, %.preheader ], [ %i.au, %bb.i ] ; 3 uses
  %.079 = shl i64 %.079.in, 1                     ; 4 uses
  %i.aw = and i64 %.079.in, 9223372036854775807
  %.not106 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not106, label %bb.j, label %.preheader, !llvm.loop !5130

bb.j:                                             ; preds = %.preheader
  %i.ax = shl i64 %.079.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #63 ; 7 uses
  %.not108 = icmp eq ptr %i.az, null
  br i1 %.not108, label %.thread136, label %bb.k

.thread136:                                       ; preds = %bb.j
  %1 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread134

bb.k:                                             ; preds = %bb.j
  store i64 %.079, ptr %i.az, align 8, !tbaa !1295
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 0, %i.bb
  %i.bd = and i64 %i.bc, 7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1296
  %.not107152 = icmp eq i64 %.079, 0
  br i1 %.not107152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.078153 = phi i64 [ %i.bp, %.lr.ph ], [ 0, %bb.k ] ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1296
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.078153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !1296
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.078153
  store atomic i64 0, ptr %i.bj monotonic, align 8
  %i.bk = or disjoint i64 %.078153, 1             ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !1296
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !1296
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk
  store atomic i64 0, ptr %i.bo monotonic, align 8
  %i.bp = add nuw i64 %.078153, 2                 ; 2 uses
  %.not107.1 = icmp eq i64 %i.bp, %.079
  br i1 %.not107.1, label %._crit_edge, label %.lr.ph, !llvm.loop !5131

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.bq, align 8, !tbaa !1297
  store atomic ptr %i.az, ptr %i.k release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %._crit_edge
  %.290.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.i ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.290 = phi ptr [ %.088, %bb.h ], [ %.088, %bb.g ], [ %.290.ph, %.sink.split ] ; 3 uses
  %i.br = load i64, ptr %.290, align 8, !tbaa !1295 ; 2 uses
  %i.bs = lshr i64 %i.br, 1
  %i.bt = lshr i64 %i.br, 2
  %i.bu = add nuw i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.ao, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false) ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader: ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.290, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %2 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  br label %.thread134

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader
  %.0 = phi i64 [ %i.cg, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader ]
  %i.bz = load i64, ptr %.290, align 8, !tbaa !1295
  %i.ca = add i64 %i.bz, -1
  %i.cb = and i64 %i.ca, %.0                      ; 3 uses
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !1296
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = cmpxchg ptr %i.cd, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = add i64 %i.cb, 1
  br i1 %i.cf, label %.thread139, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread139:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1296
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cb
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bw, ptr %i.cj, align 8, !tbaa !5135
  br label %.thread134

bb.o:                                             ; preds = %bb.l
  %i.ck = load atomic ptr, ptr %i.k acquire, align 8
  br label %bb.g, !llvm.loop !5132

.thread134:                                       ; preds = %bb.f, %bb.c, %.thread139, %.thread136, %bb.n
  %.9 = phi ptr [ %i.v, %bb.f ], [ null, %.thread136 ], [ null, %bb.n ], [ %i.bw, %.thread139 ], [ %i.v, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNSB_14AllocationModeE0ES9_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1304
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.k = call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNSB_14AllocationModeE0EEEbRPNSC_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1305 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1318 ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1319 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i ], [ %i.w, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 304 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, !llvm.loop !5136

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 312 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %2 = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %i.ak = icmp eq i32 %2, -2147483647
  br i1 %i.ak, label %bb.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ao, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.am = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = extractvalue { ptr, i1 } %i.am, 0
  %i.ap = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, !llvm.loop !74

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %3 = atomicrmw add ptr %i.x, i32 -2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINSB_5BlockEE28add_knowing_refcount_is_zeroEPSD_.exit.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.ar = call noalias noundef dereferenceable_or_null(328) ptr @malloc(i64 noundef 328) #63 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.ar, null
  br i1 %.not.i9.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 256
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 312
  store ptr null, ptr %i.at, align 8, !tbaa !1320
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.as, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.au, align 8, !tbaa !1322
  br label %.thread

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.av = getelementptr inbounds nuw [328 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.av, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit ], [ %i.ar, %bb.l ], [ %.025.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i20, i64 264
  store atomic i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !1324
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store atomic ptr %.0.i20, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.az, align 8, !tbaa !1304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.m

_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load atomic ptr, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, -1
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !1328
  %i.bg = add i64 %i.bf, -1
  %i.bh = and i64 %i.bg, %i.be
  store atomic i64 %i.bh, ptr %i.bc monotonic, align 8
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !1324
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store atomic ptr null, ptr %i.bj monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bk = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.e
  %i.bm = load i64, ptr %1, align 8, !tbaa !1289
  store i64 %i.bm, ptr %i.bl, align 8, !tbaa !1289
  store ptr null, ptr %1, align 8, !tbaa !1289
  store atomic i64 %i.d, ptr %i.b release, align 8
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge

.critedge:                                        ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21, %.critedge.critedge, %bb.b, %bb.m
  %.3 = phi i1 [ true, %bb.m ], [ false, %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNSB_14AllocationModeE0EEEPNSB_5BlockEv.exit.thread21 ], [ false, %bb.b ], [ false, %.critedge.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.a, null
  br i1 %.not27, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i1 %1 to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit
  %.01128 = phi ptr [ %i.a, %.lr.ph ], [ %i.n, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01128, i64 16 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !342, !noundef !343
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01128, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !1329, !range !342, !noundef !343
  %i.h = icmp eq i8 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01128, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1330 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  br i1 %i.m, label %select.unfold._crit_edge, label %bb.b

select.unfold._crit_edge:                         ; preds = %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit, %bb.a
  br i1 %1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %select.unfold._crit_edge
  %i.o = tail call noalias noundef dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #63 ; 14 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !1330
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !526
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !1329
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %0, ptr %i.t, align 8, !tbaa !1305
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducerE, i64 16), ptr %i.o, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1318
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = or i64 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i64 %i.af, 8
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 16
  %i.aj = or i64 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 32
  %i.al = or i64 %i.ak, %i.aj
  %i.am = add i64 %i.al, 1
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.am, i64 33) ; 2 uses
  %spec.select.i.i = lshr i64 %i.an, 1            ; 2 uses
  %i.ao = and i64 %i.an, -2                       ; 2 uses
  store i64 %i.ao, ptr %i.v, align 8, !tbaa !1336
  %i.ap = shl i64 %spec.select.i.i, 5
  %i.aq = add i64 %i.ap, 39
  %i.ar = tail call noalias noundef ptr @malloc(i64 noundef %i.aq) #63 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %bb.g, label %.loopexit.i.i.i

bb.g:                                             ; preds = %bb.f
  store i64 %spec.select.i.i, ptr %i.v, align 8, !tbaa !1336
  br label %bb.p

.loopexit.i.i.i:                                  ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 0, %i.av
  %i.ax = and i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.ao, ptr %i.ar, align 8, !tbaa !1338
  store atomic i64 -1, ptr %i.az monotonic, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !1339
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr null, ptr %i.bb, align 8, !tbaa !1340
  store i64 0, ptr %i.w, align 8, !tbaa !1341
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !1342
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1343
  store atomic ptr %i.ar, ptr %i.u release, align 8
  br label %bb.p

bb.h:                                             ; preds = %select.unfold._crit_edge
  %i.bc = tail call noalias noundef dereferenceable_or_null(104) ptr @malloc(i64 noundef 104) #63 ; 10 uses
  %.not.i14 = icmp eq ptr %i.bc, null
  br i1 %.not.i14, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNSB_12ProducerBaseE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !1330
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !526
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.bf, i8 0, i64 49, i1 false)
  store ptr %0, ptr %i.bg, align 8, !tbaa !1305
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducerE, i64 16), ptr %i.bc, align 8, !tbaa !263
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 88 ; 2 uses
  store i64 32, ptr %i.bh, align 8, !tbaa !1347
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 96 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !5138
  %i.bj = load atomic ptr, ptr %i.bi monotonic, align 8 ; 6 uses
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %i.bk, label %bb.k, label %bb.j
end_hunk_8
begin_hunk_9_@_ZN7easylog6loggerILm0EE5writeERNS_8record_tE:bb.a
  br label %_ZN7easylog8record_tD2Ev.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN7easylog8appender12write_recordILb1ELb0EEEvRNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(1361) %i.bt, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br label %_ZN7easylog8record_tD2Ev.exit

_ZN7easylog8record_tD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.n, %bb.m, %_ZN7easylog6loggerILm0EE21apply_extra_appendersERNS_8record_tE.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !338
  %i.bz = icmp eq i32 %i.by, 6
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN7easylog8record_tD2Ev.exit
  %i.ca = call noundef ptr @_ZN3ylt4util23b_stacktrace_get_stringEv() ; 2 uses
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ca)
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb), !inline_history !5342 ; 0 uses
  call void @free(ptr noundef %i.ca) #43
  call void @_ZN7easylog6loggerILm0EE5flushEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  call void @exit(i32 noundef 1) #64
  unreachable

bb.p:                                             ; preds = %_ZN7easylog8record_tD2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt4util23b_stacktrace_get_stringEv() local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(8200) ptr @malloc(i64 noundef 8200) #63 ; 4 uses
  %i.b = tail call i32 @backtrace(ptr noundef %i.a, i32 noundef 1024)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8192
  store i32 %i.b, ptr %i.c, align 8, !tbaa !1513
  %i.d = tail call noundef ptr @_ZN3ylt4util22b_stacktrace_to_stringEPNS0_16b_stacktrace_tagE(ptr noundef %i.a)
  tail call void @free(ptr noundef %i.a) #43
  ret ptr %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7easylog6loggerILm0EE5flushEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1481 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.d = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #43
  %i.e = icmp eq i32 %i.d, 35
  br i1 %i.e, label %bb.c, label %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #54
  unreachable

_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.g = tail call noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9) %i.f) #56
  br i1 %i.g, label %bb.d, label %_ZN7easylog8appender5flushEv.exit

bb.d:                                             ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN7easylog8appender5flushEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #43 ; 0 uses
  resume { ptr, i32 } %i.j

_ZN7easylog8appender5flushEv.exit:                ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit.i, %bb.d
  %i.l = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #43 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN7easylog8appender5flushEv.exit, %bb.a
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #39

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %0) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN3ylt6detail10moodycamel7details9thread_idEvE1x)
  %i.b = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.c = lshr i64 %i.b, 33
  %i.d = xor i64 %i.c, %i.b
  %i.e = mul i64 %i.d, -49064778989728563         ; 2 uses
  %i.f = lshr i64 %i.e, 33
  %i.g = xor i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -4265267296055464877       ; 2 uses
  %i.i = lshr i64 %i.h, 33
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = load atomic ptr, ptr %i.k acquire, align 8 ; 6 uses
  %.not150 = icmp eq ptr %i.l, null
  br i1 %.not150, label %.thread131, label %.preheader142

.preheader142:                                    ; preds = %bb.a, %bb.e
  %.087151 = phi ptr [ %i.ai, %bb.e ], [ %i.l, %bb.a ] ; 4 uses
  %i.m = load i64, ptr %.087151, align 8, !tbaa !1491
  %i.n = add i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %.087151, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1492
  br label %bb.b

bb.b:                                             ; preds = %.preheader142, %bb.d
  %.080 = phi i64 [ %i.ag, %bb.d ], [ %i.j, %.preheader142 ]
  %i.q = and i64 %i.n, %.080                      ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load atomic i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5352 ; 3 uses
  %.not103 = icmp eq ptr %.087151, %i.l
  br i1 %.not103, label %.thread134, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader
  %.181 = phi i64 [ %i.ae, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112 ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112.preheader ]
  %i.x = load i64, ptr %i.l, align 8, !tbaa !1491
  %i.y = add i64 %i.x, -1
  %i.z = and i64 %i.y, %.181                      ; 3 uses
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !1492
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z
  %i.ac = cmpxchg ptr %i.ab, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  %i.ae = add i64 %i.z, 1
  br i1 %i.ad, label %bb.f, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112

bb.d:                                             ; preds = %bb.b
  %i.af = icmp eq i64 %i.s, 0
  %i.ag = add i64 %i.q, 1
  br i1 %i.af, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %.087151, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1493 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %.thread131, label %.preheader142, !llvm.loop !5346

bb.f:                                             ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit112
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !1492
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.v, ptr %i.al, align 8, !tbaa !5352
  br label %.thread134

.thread131:                                       ; preds = %bb.e, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.an = atomicrmw add ptr %i.am, i64 1 monotonic, align 8
  %i.ao = add i64 %i.an, 1                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.thread131
  %.088 = phi ptr [ %i.l, %.thread131 ], [ %i.ck, %bb.o ] ; 3 uses
  %i.aq = load i64, ptr %.088, align 8, !tbaa !1491
  %i.ar = lshr i64 %i.aq, 1
  %.not104 = icmp ult i64 %i.ao, %i.ar
  br i1 %.not104, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
  %.0.in.i.not = icmp eq i8 %i.as, 0
  br i1 %.0.in.i.not, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.at = load atomic ptr, ptr %i.k acquire, align 8 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !1491 ; 2 uses
  %i.av = lshr i64 %i.au, 1
  %.not105 = icmp ult i64 %i.ao, %i.av
  br i1 %.not105, label %.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.i, %.preheader
  %.079.in = phi i64 [ %.079, %.preheader ], [ %i.au, %bb.i ] ; 3 uses
  %.079 = shl i64 %.079.in, 1                     ; 4 uses
  %i.aw = and i64 %.079.in, 9223372036854775807
  %.not106 = icmp ult i64 %i.ao, %i.aw
  br i1 %.not106, label %bb.j, label %.preheader, !llvm.loop !5347

bb.j:                                             ; preds = %.preheader
  %i.ax = shl i64 %.079.in, 5
  %i.ay = or disjoint i64 %i.ax, 31
  %i.az = tail call noalias noundef ptr @malloc(i64 noundef %i.ay) #63 ; 7 uses
  %.not108 = icmp eq ptr %i.az, null
  br i1 %.not108, label %.thread136, label %bb.k

.thread136:                                       ; preds = %bb.j
  %1 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  store atomic i8 0, ptr %i.ap monotonic, align 8
  br label %.thread134

bb.k:                                             ; preds = %bb.j
  store i64 %.079, ptr %i.az, align 8, !tbaa !1491
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 0, %i.bb
  %i.bd = and i64 %i.bc, 7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 5 uses
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !1492
  %.not107152 = icmp eq i64 %.079, 0
  br i1 %.not107152, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.078153 = phi i64 [ %i.bp, %.lr.ph ], [ 0, %bb.k ] ; 4 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1492
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.078153
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !1492
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.078153
  store atomic i64 0, ptr %i.bj monotonic, align 8
  %i.bk = or disjoint i64 %.078153, 1             ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !1492
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bk
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !1492
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk
  store atomic i64 0, ptr %i.bo monotonic, align 8
  %i.bp = add nuw i64 %.078153, 2                 ; 2 uses
  %.not107.1 = icmp eq i64 %i.bp, %.079
  br i1 %.not107.1, label %._crit_edge, label %.lr.ph, !llvm.loop !5348

._crit_edge:                                      ; preds = %.lr.ph, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.at, ptr %i.bq, align 8, !tbaa !1493
  store atomic ptr %i.az, ptr %i.k release, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %._crit_edge
  %.290.ph = phi ptr [ %i.az, %._crit_edge ], [ %i.at, %bb.i ]
  store atomic i8 0, ptr %i.ap release, align 8
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.g
  %.290 = phi ptr [ %.088, %bb.h ], [ %.088, %bb.g ], [ %.290.ph, %.sink.split ] ; 3 uses
  %i.br = load i64, ptr %.290, align 8, !tbaa !1491 ; 2 uses
  %i.bs = lshr i64 %i.br, 1
  %i.bt = lshr i64 %i.br, 2
  %i.bu = add nuw i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.ao, %i.bu
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = tail call noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext false) ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader: ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %.290, i64 8 ; 2 uses
  br label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %2 = atomicrmw add ptr %i.am, i64 -1 monotonic, align 8 ; 0 uses
  br label %.thread134

_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader
  %.0 = phi i64 [ %i.cg, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit ], [ %i.j, %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit.preheader ]
  %i.bz = load i64, ptr %.290, align 8, !tbaa !1491
  %i.ca = add i64 %i.bz, -1
  %i.cb = and i64 %i.ca, %.0                      ; 3 uses
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !1492
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = cmpxchg ptr %i.cd, i64 0, i64 %i.b seq_cst monotonic, align 8
  %i.cf = extractvalue { i64, i1 } %i.ce, 1
  %i.cg = add i64 %i.cb, 1
  br i1 %i.cf, label %.thread139, label %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit

.thread139:                                       ; preds = %_ZNSt13__atomic_baseImE23compare_exchange_strongERmmSt12memory_orderS2_.exit
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1492
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cb
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.bw, ptr %i.cj, align 8, !tbaa !5352
  br label %.thread134

bb.o:                                             ; preds = %bb.l
  %i.ck = load atomic ptr, ptr %i.k acquire, align 8
  br label %bb.g, !llvm.loop !5349

.thread134:                                       ; preds = %bb.f, %bb.c, %.thread139, %.thread136, %bb.n
  %.9 = phi ptr [ %i.v, %bb.f ], [ null, %.thread136 ], [ null, %bb.n ], [ %i.bw, %.thread139 ], [ %i.v, %bb.c ]
  ret ptr %.9
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNS6_14AllocationModeE0ES4_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 4 uses
  %i.d = add i64 %i.c, 1
  %i.e = and i64 %i.c, 31                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1516
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8
  %reass.sub = sub i64 %i.h, %i.c
  %i.i = add i64 %reass.sub, 9223372036854775775
  %i.j = icmp ult i64 %i.i, 9223372036854775807
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.k = call noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer24insert_block_index_entryILNS6_14AllocationModeE0EEEbRPNS7_15BlockIndexEntryEm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
  br i1 %i.k, label %bb.d, label %.critedge.critedge

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1517 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = load atomic i64, ptr %i.n monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1503 ; 2 uses
  %.not.i.i = icmp ult i64 %i.o, %i.q
  br i1 %.not.i.i, label %bb.e, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.n, i64 1 monotonic, align 8 ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  br i1 %i.s, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1504 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i, %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 5 uses
  %i.w = load atomic ptr, ptr %i.v acquire, align 8 ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not24.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i
  %.025.i.i.i = phi ptr [ %.114.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i ], [ %i.w, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 2608 ; 6 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 3 uses
  %i.z = and i32 %i.y, 2147483647
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = add i32 %i.y, 1
  %i.ac = cmpxchg ptr %i.x, i32 %i.y, i32 %i.ab acquire monotonic, align 4
  %i.ad = extractvalue { i32, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i, %.lr.ph.i.i.i
  %i.ae = load atomic ptr, ptr %i.v acquire, align 8
  br label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !5353

bb.g:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 2616 ; 2 uses
  %i.ag = load atomic ptr, ptr %i.af monotonic, align 8
  %i.ah = cmpxchg ptr %i.v, ptr %.025.i.i.i, ptr %i.ag acquire monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { ptr, i1 } %i.ah, 1
  br i1 %i.ai, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = extractvalue { ptr, i1 } %i.ah, 0       ; 3 uses
  %2 = atomicrmw add ptr %i.x, i32 -1 acq_rel, align 4
  %i.ak = icmp eq i32 %2, -2147483647
  br i1 %i.ak, label %bb.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.al = load atomic ptr, ptr %i.v monotonic, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %i.ao, %bb.k ] ; 2 uses
  store atomic ptr %.0.i.i.i.i, ptr %i.af monotonic, align 8
  store atomic i32 1, ptr %i.x release, align 8
  %i.am = cmpxchg ptr %i.v, ptr %.0.i.i.i.i, ptr %.025.i.i.i release monotonic, align 8 ; 2 uses
  %i.an = extractvalue { ptr, i1 } %i.am, 1
  br i1 %i.an, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = extractvalue { ptr, i1 } %i.am, 0
  %i.ap = atomicrmw add ptr %i.x, i32 2147483647 release, align 4
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, !llvm.loop !82

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i: ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.114.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %bb.h ], [ %i.aj, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.114.i.i.i, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i: ; preds = %bb.g
  %3 = atomicrmw add ptr %i.x, i32 -2 release, align 4 ; 0 uses
  br label %.thread

.loopexit.i:                                      ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE8FreeListINS6_5BlockEE28add_knowing_refcount_is_zeroEPS8_.exit.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.thread.i
  %i.ar = call noalias noundef dereferenceable_or_null(2632) ptr @malloc(i64 noundef 2632) #63 ; 5 uses
  %.not.i9.i = icmp eq ptr %i.ar, null
  br i1 %.not.i9.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2560
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 2616
  store ptr null, ptr %i.at, align 8, !tbaa !1505
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2624
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.as, i8 0, i64 52, i1 false)
  store i8 1, ptr %i.au, align 8, !tbaa !1507
  br label %.thread

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit: ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE31try_get_block_from_initial_poolEv.exit.i
  %i.av = getelementptr inbounds nuw [2632 x i8], ptr %i.u, i64 %i.r
  br label %.thread

.thread:                                          ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i, %bb.l
  %.0.i20 = phi ptr [ %i.av, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit ], [ %i.ar, %bb.l ], [ %.025.i.i.i, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE28try_get_block_from_free_listEv.exit.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i20, i64 2568
  store atomic i64 0, ptr %i.aw monotonic, align 8
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !1519
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store atomic ptr %.0.i20, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.0.i20, ptr %i.az, align 8, !tbaa !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.m

_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21: ; preds = %.loopexit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load atomic ptr, ptr %i.ba monotonic, align 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8
  %i.be = add i64 %i.bd, -1
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !1523
  %i.bg = add i64 %i.bf, -1
  %i.bh = and i64 %i.bg, %i.be
  store atomic i64 %i.bh, ptr %i.bc monotonic, align 8
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !1519
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store atomic ptr null, ptr %i.bj monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge

bb.m:                                             ; preds = %._crit_edge, %.thread
  %i.bk = phi ptr [ %.pre, %._crit_edge ], [ %.0.i20, %.thread ]
  %i.bl = getelementptr inbounds nuw [80 x i8], ptr %i.bk, i64 %i.e ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 3 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !283
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !287 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !288 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.bq, i64 %i.bv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !287
  %i.bw = load i64, ptr %i.bq, align 8, !tbaa !279
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !279
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !288
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !288
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !287
  store i64 0, ptr %i.bx, align 8, !tbaa !288
  store i8 0, ptr %i.bq, align 8, !tbaa !279
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !283
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !287 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !288 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  br label %_ZN7easylog8record_tC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !287
  %i.ck = load i64, ptr %i.ce, align 8, !tbaa !279
  store i64 %i.ck, ptr %i.cc, align 8, !tbaa !279
  br label %_ZN7easylog8record_tC2EOS0_.exit

_ZN7easylog8record_tC2EOS0_.exit:                 ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !288
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !288
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !287
  store i64 0, ptr %i.cl, align 8, !tbaa !288
  store i8 0, ptr %i.ce, align 8, !tbaa !279
  store atomic i64 %i.d, ptr %i.b release, align 8
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %.critedge

.critedge:                                        ; preds = %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21, %.critedge.critedge, %bb.b, %_ZN7easylog8record_tC2EOS0_.exit
  %.3 = phi i1 [ true, %_ZN7easylog8record_tC2EOS0_.exit ], [ false, %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE17requisition_blockILNS6_14AllocationModeE0EEEPNS6_5BlockEv.exit.thread21 ], [ false, %bb.b ], [ false, %.critedge.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE26recycle_or_create_producerEb(ptr noundef nonnull align 8 dereferenceable(612) %0, i1 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not27 = icmp eq ptr %i.a, null
  br i1 %.not27, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i1 %1 to i8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit
  %.01128 = phi ptr [ %i.a, %.lr.ph ], [ %i.n, %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01128, i64 16 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !342, !noundef !343
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.01128, i64 72
  %i.g = load i8, ptr %i.f, align 8, !tbaa !5355, !range !342, !noundef !343
  %i.h = icmp eq i8 %i.g, %i.b
  br i1 %i.h, label %bb.d, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = cmpxchg ptr %i.c, i8 1, i8 0 acquire monotonic, align 1
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit, label %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit

_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.01128, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1330 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8
  br i1 %i.m, label %select.unfold._crit_edge, label %bb.b

select.unfold._crit_edge:                         ; preds = %_ZNSt6atomicIbE23compare_exchange_strongERbbSt12memory_orderS2_.exit, %bb.a
  br i1 %1, label %bb.e, label %bb.h

bb.e:                                             ; preds = %select.unfold._crit_edge
  %i.o = tail call noalias noundef dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #63 ; 14 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE12add_producerEPNS6_12ProducerBaseE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !1330
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i8 0, ptr %i.q, align 8, !tbaa !526
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.s, align 8, !tbaa !5355
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store ptr %0, ptr %i.t, align 8, !tbaa !1517
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3ylt6detail10moodycamel15ConcurrentQueueIN7easylog8record_tENS1_28ConcurrentQueueDefaultTraitsEE16ExplicitProducerE, i64 16), ptr %i.o, align 8, !tbaa !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1503
  %i.z = add i64 %i.y, -1                         ; 2 uses
  %i.aa = lshr i64 %i.z, 1
  %i.ab = or i64 %i.aa, %i.z                      ; 2 uses
  %i.ac = lshr i64 %i.ab, 2
  %i.ad = or i64 %i.ac, %i.ab                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 4
  %i.af = or i64 %i.ae, %i.ad                     ; 2 uses
  %i.ag = lshr i64 %i.af, 8
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_ZN12HelloService5helloEvEESR_EEvPT0_RKjEUlSB_SI_SL_E_E9_M_invokeERKSt9_Any_dataOSB_SI_OSL_:bb.a
  store i64 %i.p, ptr %i.q, align 8, !tbaa !288, !alias.scope !6006
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43, !noalias !6006
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !6006
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFSt4pairIN8coro_rpc8err_codeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt17basic_string_viewIcS6_ERSt10shared_ptrINS1_14context_info_tINS1_8protocol17coro_rpc_protocolEEEESt7variantIJNSE_20struct_pack_protocolEEEEZNSE_6routerISF_St13unordered_mapE23regist_one_handler_implITnDaXadL_ZN12HelloService5helloEvEESR_EEvPT0_RKjEUlSB_SI_SL_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_ZN12HelloService5helloEvEES8_EEvPT0_RKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN8coro_rpc8protocol6routerINS0_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_ZN12HelloService5helloEvEES6_EEvPT0_RKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS_14context_info_tIS2_EEESt7variantIJNS0_20struct_pack_protocolEEEE_, ptr %0, align 8, !tbaa !624
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_ZN12HelloService5helloEvEES8_EEvPT0_RKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_ZN12HelloService5helloEvEES8_EEvPT0_RKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !1684
  store i64 %i.a, ptr %0, align 8, !tbaa !1684
  br label %_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_ZN12HelloService5helloEvEES8_EEvPT0_RKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN8coro_rpc8protocol6routerINS2_17coro_rpc_protocolESt13unordered_mapE23regist_one_handler_implITnDaXadL_ZN12HelloService5helloEvEES8_EEvPT0_RKjEUlSt17basic_string_viewIcSt11char_traitsIcEERSt10shared_ptrINS1_14context_info_tIS4_EEESt7variantIJNS2_20struct_pack_protocolEEEE_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare { i64, ptr } @_ZN12HelloService5helloEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEE9getFutureEv(ptr dead_on_unwind noalias writable sret(%"class.async_simple::Future") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !463    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.1069)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.g, %bb.g ], [ %i.b, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #43
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !464, !range !342, !noundef !343
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEEC2EPNS_11FutureStateIS2_EE.exit, !prof !284

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.1074)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple6FutureIN8coro_rpc8err_codeEEC2EPNS_11FutureStateIS2_EE.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store i8 1, ptr %i.d, align 8, !tbaa !464
  store ptr %i.a, ptr %0, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !359
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.j, align 8, !tbaa !6007
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = atomicrmw add ptr %i.k, i8 1 monotonic, align 1 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail8LazyBaseIN8coro_rpc8err_codeELb0EE5startIZNS3_20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlONS_3TryIS4_EEE_EEvOT_Q14isLazyCallbackISE_TL0__E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1844, align 8           ; 3 uses
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.from..i, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.969)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %.thread, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.p, %.thread ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

.from..i:                                         ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !483
  %i.d = load ptr, ptr %1, align 8, !tbaa !481    ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !481
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !463  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !463
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !464, !range !342, !noundef !343 ; 2 uses
  store i8 %i.j, ptr %i.h, align 8, !tbaa !464
  store ptr null, ptr %i.f, align 8, !tbaa !463
  store i8 0, ptr %i.i, align 8, !tbaa !464
  %i.k = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #61
          to label %AfterCoroEnd.i unwind label %bb.e, !inline_history !6008 ; 9 uses

AfterCoroEnd.i:                                   ; preds = %.from..i
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIN8coro_rpc8err_codeELb0EE5startIZNS3_20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlONS_3TryIS4_EEE_EEvOT_Q14isLazyCallbackISE_TL0__EENKUlS5_SD_E_clES5_SD_.resume, ptr %i.k, align 8
  %destroy.addr.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_ZZN12async_simple4coro6detail8LazyBaseIN8coro_rpc8err_codeELb0EE5startIZNS3_20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlONS_3TryIS4_EEE_EEvOT_Q14isLazyCallbackISE_TL0__EENKUlS5_SD_E_clES5_SD_.destroy, ptr %destroy.addr.i, align 8
  %.reload.addr.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.reload.addr41.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.reload.addr42.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.d, ptr %.reload.addr.i, align 8, !tbaa !481
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.g, ptr %i.l, align 8, !tbaa !463
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i8 %i.j, ptr %i.m, align 8, !tbaa !464
  store ptr null, ptr %i.e, align 8, !tbaa !463
  store i8 0, ptr %i.h, align 8, !tbaa !464
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr42.i, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %.reload.addr41.i, align 8, !tbaa !306, !alias.scope !6011
  %index.addr43.i = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i8 0, ptr %index.addr43.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.n, align 8, !tbaa !306
  %i.o = load ptr, ptr %i.a, align 8
  invoke void %i.o(ptr nonnull %i.a)
          to label %_ZN12async_simple4coro6detail8LazyBaseIN8coro_rpc8err_codeELb0EED2Ev.exit unwind label %.thread, !inline_history !6008

.thread:                                          ; preds = %AfterCoroEnd.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #43
  br label %common.resume

_ZN12async_simple4coro6detail8LazyBaseIN8coro_rpc8err_codeELb0EED2Ev.exit: ; preds = %AfterCoroEnd.i
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #43
  ret void

bb.e:                                             ; preds = %.from..i
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #43
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr nonnull %i.a)
          to label %common.resume unwind label %bb.f, !inline_history !1

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #52
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Try", align 8 ; 11 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !463    ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %3 = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.c = load atomic i8, ptr %i.a acquire, align 1
  %i.d = and i8 %i.c, 33
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ne i64 %3, 1
  %or.cond.not.i = or i1 %i.f, %i.e
  br i1 %or.cond.not.i, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.1069)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #54
          to label %bb.u unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #43
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %.0.i) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #43
  %i.k = load ptr, ptr %2, align 8, !tbaa !698    ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !698
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #43
  br label %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit

_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit: ; preds = %bb.g, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i8 2, ptr %i.l, align 8, !tbaa !359
  invoke void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9setResultEONS_3TryIS2_EE(ptr noundef nonnull align 8 dereferenceable(81) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.m = load i8, ptr %i.l, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit, label %bb.j, !prof !284

bb.j:                                             ; preds = %bb.i
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #43
  br label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit

_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.p = load ptr, ptr %2, align 8, !tbaa !698
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  invoke void @__cxa_end_catch()
          to label %.noexc unwind label %bb.w

bb.m:                                             ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = load i8, ptr %i.l, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i1 = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i1, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit4, label %bb.n, !prof !284

bb.n:                                             ; preds = %bb.m
  %i.s = icmp ne i8 %i.r, 2
  %i.t = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.t, null
  %or.cond.i.i.i.i3 = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i2
  br i1 %or.cond.i.i.i.i3, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit4, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #43
  br label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit4

_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit4: ; preds = %bb.m, %bb.n, %bb.o
  %i.u = load ptr, ptr %2, align 8, !tbaa !698
  %.not.i5 = icmp eq ptr %i.u, null
  br i1 %.not.i5, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6, label %bb.p

bb.p:                                             ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit4
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6:  ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit4, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.t

.noexc:                                           ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %4 = atomicrmw add ptr %i.v, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %4, 1
  br i1 %.not.i.i, label %bb.q, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE13detachPromiseEv.exit

bb.q:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.y = load i8, ptr %i.x, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.y, -1
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit, label %bb.r, !prof !284

bb.r:                                             ; preds = %bb.q
  %i.z = icmp ne i8 %i.y, 2
  %i.aa = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  %or.cond.i.i.i.i.i = select i1 %i.z, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit: ; preds = %bb.q, %bb.r, %bb.s
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.a, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE13detachPromiseEv.exit

bb.t:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #52
  unreachable

bb.u:                                             ; preds = %bb.d
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE13detachPromiseEv.exit: ; preds = %.noexc, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.v

bb.v:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE13detachPromiseEv.exit, %bb.a
  ret void

bb.w:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.w ], [ %i.q, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit6 ]
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ae) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEE8setValueEOS2_Qntsr3stdE9is_void_vIT_E(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.async_simple::Try", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !463    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.1069)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.i, %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.d = load i16, ptr %1, align 2, !tbaa !471
  store i16 %i.d, ptr %2, align 8, !tbaa !471
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i8 1, ptr %i.e, align 8, !tbaa !359
  invoke void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9setResultEONS_3TryIS2_EE(ptr noundef nonnull align 8 dereferenceable(81) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.f = load i8, ptr %i.e, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit, label %bb.f, !prof !284

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ne i8 %i.f, 2
  %i.h = load ptr, ptr %2, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %or.cond.i.i.i.i = select i1 %i.g, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #43
  br label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit

_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit: ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret void

bb.h:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load i8, ptr %i.e, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i3 = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i3, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit6, label %bb.i, !prof !284

bb.i:                                             ; preds = %bb.h
  %i.k = icmp ne i8 %i.j, 2
  %i.l = load ptr, ptr %2, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i4 = icmp eq ptr %i.l, null
  %or.cond.i.i.i.i5 = select i1 %i.k, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i4
  br i1 %or.cond.i.i.i.i5, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit6, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #43
  br label %_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit6

_ZN12async_simple3TryIN8coro_rpc8err_codeEED2Ev.exit6: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9setResultEONS_3TryIS2_EE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1850, align 8           ; 4 uses
  %i.a = load atomic i8, ptr %0 acquire, align 8
  %i.b = and i8 %i.a, 33
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !622

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1070)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.o, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.e, ptr %2, align 8, !tbaa !1687
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS4_S6_S8_EEEEDcOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #52
  unreachable

_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.h = load atomic i8, ptr %0 acquire, align 8  ; 2 uses
  switch i8 %i.h, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5 [
    i8 0, label %bb.f
    i8 2, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit
  %i.i = cmpxchg ptr %0, i8 0, i8 1 release monotonic, align 1 ; 2 uses
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit: ; preds = %bb.f
  %i.k = extractvalue { i8, i1 } %i.i, 0
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit, %_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit
  %.0 = phi i8 [ %i.k, %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit ], [ %i.h, %_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit ]
  %i.l = cmpxchg ptr %0, i8 %.0, i8 32 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %bb.h, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5

bb.h:                                             ; preds = %bb.g
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(81) %0, i1 noundef zeroext false)
  br label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5: ; preds = %bb.g, %_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1071)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

bb.j:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #43
  br label %common.resume

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(81) %0, i1 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.async_simple::FutureState<coro_rpc::err_code>::ContinuationReference", align 8 ; 5 uses
  %3 = alloca %"class.async_simple::FutureState<coro_rpc::err_code>::ContinuationReference", align 8 ; 7 uses
  %4 = alloca %"class.async_simple::FutureState<coro_rpc::err_code>::ContinuationReference", align 8 ; 5 uses
  %5 = alloca %"class.std::function.350", align 8 ; 9 uses
  %6 = alloca %class.anon.1857, align 8           ; 6 uses
  %7 = alloca %"class.std::function.350", align 8 ; 9 uses
  %8 = alloca %class.anon.1858, align 8           ; 6 uses
  %i.a = load atomic i8, ptr %0 monotonic, align 8
  %i.b = icmp eq i8 %i.a, 32
  br i1 %i.b, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !622

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1072)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.bf, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.merged23, %bb.bf ], [ %i.ah, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !6013, !range !342, !noundef !343
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1690 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %or.cond = or i1 %1, %i.j
  br i1 %or.cond, label %bb.f, label %_ZNK12async_simple11FutureStateIN8coro_rpc8err_codeEE23currentThreadInExecutorEv.exit

_ZNK12async_simple11FutureStateIN8coro_rpc8err_codeEE23currentThreadInExecutorEv.exit: ; preds = %bb.e
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.i), !inline_history !6012
  br i1 %i.n, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNK12async_simple11FutureStateIN8coro_rpc8err_codeEE23currentThreadInExecutorEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %0, ptr %2, align 8, !tbaa !1692
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i8 1 monotonic, align 1 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i8 1 monotonic, align 1 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.u, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1694
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit unwind label %bb.o, !inline_history !1695

_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit: ; preds = %bb.h
  %9 = atomicrmw add ptr %i.q, i8 -1 monotonic, align 1
  %i.z = icmp eq i8 %9, 1
  br i1 %i.z, label %bb.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i

bb.i:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %10 = atomicrmw add ptr %i.o, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %10, 1
  br i1 %.not.i.i.i, label %bb.l, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

bb.l:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !359 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.m, !prof !284

bb.m:                                             ; preds = %bb.l
  %i.af = icmp ne i8 %i.ae, 2
  %i.ag = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.af, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %bb.bg

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %common.resume

bb.p:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit, %_ZNK12async_simple11FutureStateIN8coro_rpc8err_codeEE23currentThreadInExecutorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.aj = atomicrmw add ptr %i.ai, i8 1 monotonic, align 1 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.al = atomicrmw add ptr %i.ak, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %0, ptr %4, align 8, !tbaa !1692
  %i.am = atomicrmw add ptr %i.ai, i8 1 monotonic, align 1 ; 0 uses
  %i.an = atomicrmw add ptr %i.ak, i8 1 monotonic, align 1 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6014 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1690 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %0, ptr %6, align 8, !tbaa !1692
  store ptr null, ptr %3, align 8, !tbaa !1692
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.au, align 8, !tbaa !1692
  store ptr null, ptr %6, align 8, !tbaa !1692
  store ptr %i.au, ptr %5, align 8, !tbaa !306
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.av, align 8, !tbaa !705
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.at, align 8, !tbaa !314
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !314 ; 2 uses
  %.not.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i29, label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #52
  unreachable

_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br i1 %i.az, label %bb.ap, label %bb.ai

bb.v:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Function_baseD2Ev.exit33

bb.w:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !314 ; 2 uses
  %.not.i32 = icmp eq ptr %i.bg, null
  br i1 %.not.i32, label %_ZNSt14_Function_baseD2Ev.exit33, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit33 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit33:                 ; preds = %bb.x, %bb.w, %bb.v
  %.pn16 = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bf, %bb.w ], [ %i.bf, %bb.x ]
  call void @_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.am

bb.z:                                             ; preds = %bb.p
  %i.bk = load i8, ptr %i.e, align 8, !tbaa !6013, !range !342, !noundef !343
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1690 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  store ptr %0, ptr %8, align 8, !tbaa !1692
  store ptr null, ptr %3, align 8, !tbaa !1692
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.bo = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55
          to label %bb.aa unwind label %bb.ae     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bq = xor i8 %i.bk, 1
  store ptr %0, ptr %i.bo, align 8, !tbaa !1692
  store ptr null, ptr %8, align 8, !tbaa !1692
  store ptr %i.bo, ptr %7, align 8, !tbaa !306
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bp, align 8, !tbaa !705
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.bn, align 8, !tbaa !314
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !263
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.ap, i8 %i.bq)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !314 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bv, null
  br i1 %.not.i35, label %_ZNSt14_Function_baseD2Ev.exit36, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit36 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #52
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Function_baseD2Ev.exit46

bb.af:                                            ; preds = %bb.aa
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !314 ; 2 uses
  %.not.i45 = icmp eq ptr %i.cb, null
  br i1 %.not.i45, label %_ZNSt14_Function_baseD2Ev.exit46, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit46 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit46:                 ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ae ], [ %i.ca, %bb.af ], [ %i.ca, %bb.ag ]
  call void @_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.am

_ZNSt14_Function_baseD2Ev.exit36:                 ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br i1 %i.bu, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit36
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.1073)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #54
          to label %bb.bi unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr nonnull %i.cf) #43
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZNSt14_Function_baseD2Ev.exit46, %_ZNSt14_Function_baseD2Ev.exit33
  %.pn18 = phi { ptr, i32 } [ %i.ch, %bb.al ], [ %i.cg, %bb.ak ], [ %.pn16, %_ZNSt14_Function_baseD2Ev.exit33 ], [ %.pn, %_ZNSt14_Function_baseD2Ev.exit46 ] ; 3 uses
  %.210 = extractvalue { ptr, i32 } %.pn18, 1
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #43
  %i.cj = icmp eq i32 %.210, %i.ci
  br i1 %i.cj, label %bb.an, label %bb.bf

bb.an:                                            ; preds = %bb.am
  %.2 = extractvalue { ptr, i32 } %.pn18, 0
  %i.ck = call ptr @__cxa_begin_catch(ptr %.2) #43 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cm)
          to label %bb.ao unwind label %bb.bd

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.be

bb.ap:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit36, %bb.ao, %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit
  %11 = atomicrmw add ptr %i.ak, i8 -1 monotonic, align 1
  %i.cn = icmp eq i8 %11, 1
  br i1 %i.cn, label %bb.aq, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i48

bb.aq:                                            ; preds = %bb.ap
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i54, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i48, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i48 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i48: ; preds = %bb.ar, %bb.aq, %bb.ap
  %12 = atomicrmw add ptr %i.ai, i8 -1 acq_rel, align 1
  %.not.i.i.i49 = icmp eq i8 %12, 1
  br i1 %.not.i.i.i49, label %bb.at, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit55

bb.at:                                            ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i48
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !359 ; 2 uses
  %.not.i.i.i.i.i.i50 = icmp eq i8 %i.cv, -1
  br i1 %.not.i.i.i.i.i.i50, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i53, label %bb.au, !prof !284

bb.au:                                            ; preds = %bb.at
  %i.cw = icmp ne i8 %i.cv, 2
  %i.cx = load ptr, ptr %i.ct, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.cx, null
  %or.cond.i.i.i.i.i.i.i52 = select i1 %i.cw, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i51
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i53, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i53

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i53: ; preds = %bb.av, %bb.au, %bb.at
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit55

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit55: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i48, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.cy = load ptr, ptr %3, align 8, !tbaa !1692  ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i56, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit64, label %bb.aw

bb.aw:                                            ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit55
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %13 = atomicrmw add ptr %i.cz, i8 -1 monotonic, align 1
  %i.da = icmp eq i8 %13, 1
  br i1 %i.da, label %bb.ax, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i57

bb.ax:                                            ; preds = %bb.aw
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i63, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i57, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 2 uses
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i57 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i57: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %14 = atomicrmw add ptr %i.dg, i8 -1 acq_rel, align 1
  %.not.i.i.i58 = icmp eq i8 %14, 1
  br i1 %.not.i.i.i58, label %bb.ba, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit64

bb.ba:                                            ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !359 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.dj, -1
  br i1 %.not.i.i.i.i.i.i59, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i62, label %bb.bb, !prof !284

bb.bb:                                            ; preds = %bb.ba
  %i.dk = icmp ne i8 %i.dj, 2
  %i.dl = load ptr, ptr %i.dh, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.dl, null
  %or.cond.i.i.i.i.i.i.i61 = select i1 %i.dk, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i60
  br i1 %or.cond.i.i.i.i.i.i.i61, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i62, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i62

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i62: ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.cy, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit64

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit64: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit55, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i57, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.bg

bb.bd:                                            ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.bh

bb.be:                                            ; preds = %bb.ao
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.am
  %.merged23 = phi { ptr, i32 } [ %.pn18, %bb.am ], [ %i.dn, %bb.be ], [ %i.dm, %bb.bd ]
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %common.resume

bb.bg:                                            ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit64, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit
  ret void

bb.bh:                                            ; preds = %bb.bd
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #52
  unreachable

bb.bi:                                            ; preds = %bb.aj
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS4_S6_S8_EEEEDcOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !359
  %i.c = load ptr, ptr %0, align 8, !tbaa !1687   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !359   ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !975

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !359
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !975

bb.f:                                             ; preds = %bb.e
  %i.h = load i16, ptr %1, align 8, !tbaa !471
  store i16 %i.h, ptr %i.c, align 8, !tbaa !471
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = icmp ne i8 %i.e, 2
  %i.j = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.j, null
  %or.cond.i.i.i.i.i.i.i11 = select i1 %i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10
  br i1 %or.cond.i.i.i.i.i.i.i11, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.k = load i16, ptr %1, align 8, !tbaa !471
  store i16 %i.k, ptr %i.c, align 8, !tbaa !471
  store i8 1, ptr %i.d, align 8, !tbaa !359
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !1237

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.l = load ptr, ptr %1, align 8, !tbaa !698
  store ptr null, ptr %1, align 8, !tbaa !698
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !698  ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !698
  store ptr %i.l, ptr %i.c, align 8, !tbaa !698
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.n = load ptr, ptr %1, align 8, !tbaa !698
  store ptr %i.n, ptr %i.c, align 8, !tbaa !698
  store ptr null, ptr %1, align 8, !tbaa !698
  store i8 2, ptr %i.d, align 8, !tbaa !359
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit, label %bb.m, !prof !284

bb.m:                                             ; preds = %bb.l
  %i.o = icmp ne i8 %i.e, 2
  %i.p = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  %or.cond.i.i.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S5_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %i.c) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S5_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S5_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !359
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOSA_EUlOT_T0_E_RSt7variantIJS5_S7_S9_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESG_SJ_.exit: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S5_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, %bb.l, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS6_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS4_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.f, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.c, align 8, !tbaa !263
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1694
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1692   ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReference6detachEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !1692   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReference6detachEv.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, label %bb.g, !prof !284

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.i, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReference6detachEv.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReference6detachEv.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1692   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !1692   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.g, !prof !284

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.i, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit: ; preds = %bb.a, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1692   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !1692   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = load i8, ptr %i.l, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.g, !prof !284

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.i, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit: ; preds = %bb.a, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i
  ret void
}

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306
  tail call void @_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_, ptr %0, align 8, !tbaa !624
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !306
  store ptr %i.a, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1692 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1692
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<coro_rpc::err_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.a = load ptr, ptr %0, align 8, !tbaa !1692   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !1692
  store ptr null, ptr %0, align 8, !tbaa !1692
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1694
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit unwind label %bb.j, !inline_history !1695

_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.i, i8 -1 monotonic, align 1
  %i.j = icmp eq i8 %2, 1
  br i1 %i.j, label %bb.d, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.n, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i8 %i.p, 2
  %i.r = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.a, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1692 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %1 = atomicrmw add ptr %i.d, i8 -1 monotonic, align 1
  %i.e = icmp eq i8 %1, 1
  br i1 %i.e, label %bb.d, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1692 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %2 = atomicrmw add ptr %i.l, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i8 %i.o, 2
  %i.q = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.k, i64 noundef 88) #53
  br label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit

_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306
  tail call void @_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_, ptr %0, align 8, !tbaa !624
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !306
  store ptr %i.a, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1692 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1692
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS6_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<coro_rpc::err_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.a = load ptr, ptr %0, align 8, !tbaa !1692   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !1692
  store ptr null, ptr %0, align 8, !tbaa !1692
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1694
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit unwind label %bb.j, !inline_history !1695

_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.i, i8 -1 monotonic, align 1
  %i.j = icmp eq i8 %2, 1
  br i1 %i.j, label %bb.d, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryIN8coro_rpc8err_codeEEEEEclES6_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.n, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i8, ptr %i.o, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i8 %i.p, 2
  %i.r = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.a, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !1692 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %1 = atomicrmw add ptr %i.d, i8 -1 monotonic, align 1
  %i.e = icmp eq i8 %1, 1
  br i1 %i.e, label %bb.d, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #52
  unreachable

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1692 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %2 = atomicrmw add ptr %i.l, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i8, ptr %i.n, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i8 %i.o, 2
  %i.q = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.k, i64 noundef 88) #53
  br label %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit

_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEbENUlvE0_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8coro_rpc20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlvE2_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8coro_rpc20coro_rpc_server_baseINS3_8config_tEE11async_startEvEUlvE2_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !6016
  tail call void @_ZN7coro_io15io_context_pool3runEv(ptr noundef nonnull align 8 dereferenceable(113) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIN8coro_rpc8err_codeEEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i16, ptr %1, align 2, !tbaa !450
  %i.c = icmp ne i16 %i.b, 0
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext %i.c)
          to label %_ZNSolsEb.exit unwind label %bb.k ; 0 uses

_ZNSolsEb.exit:                                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !6021)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6022)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1370, !noalias !6023 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZNSolsEb.exit
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1371, !noalias !6023 ; 2 uses
  %i.j = icmp ugt ptr %i.g, %i.i
  %.08.i9.i.i = select i1 %i.j, ptr %i.g, ptr %i.i ; 2 uses
  %.not.i.i = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1372, !noalias !6023
  %i.n = ptrtoint ptr %.08.i9.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.p, ptr %i.q, align 8, !tbaa !288, !noalias !6023
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !287, !noalias !6023
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !279, !noalias !6023
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZNSolsEb.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !283, !alias.scope !6023
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !287, !noalias !6023 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 7 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.z = load i64, ptr %i.y, align 8, !tbaa !288, !noalias !6023 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.v, ptr %3, align 8, !tbaa !287, !alias.scope !6023
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !279, !noalias !6023
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !279, !alias.scope !6023
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !288, !noalias !6023
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.ad = phi i64 [ %i.z, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !288, !alias.scope !6023
  store ptr %i.w, ptr %i.t, align 8, !tbaa !287, !noalias !6023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ae, i8 0, i64 9, i1 false), !noalias !6023
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %i.w, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8, !tbaa !287, !alias.scope !6023 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.u
  br i1 %i.ai, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !287   ; 3 uses
  %i.al = load i64, ptr %i.af, align 8, !tbaa !288 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !288 ; 5 uses
  %i.ao = sub i64 9223372036854775807, %i.an
  %i.ap = icmp ult i64 %i.ao, %i.al
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aq = add i64 %i.an, %i.al                    ; 3 uses
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !287 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.au = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.au)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.av = load i64, ptr %i.as, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8
  %i.aw = phi i64 [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i8 ]
  %.not.i.i.i = icmp ugt i64 %i.aq, %i.aw
  br i1 %.not.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not8.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.an ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.al, 1
  br i1 %cond.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = load i8, ptr %i.ak, align 1, !tbaa !279
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !279
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.ak, i64 %i.al, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %i.an, i64 noundef 0, ptr noundef %i.ak, i64 noundef %i.al)
          to label %bb.j unwind label %bb.l
end_hunk_10
begin_hunk_11_@_ZN7coro_io6detail24ib_socket_shared_state_t15add_recv_bufferENS_11ib_buffer_tEm:bb.a
  br i1 %.not.i.i.i.i, label %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 3 uses
  %i.it = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279, !noalias !6110
  %.not.i.i.i.i.i = icmp eq i8 %i.it, 0
  br i1 %.not.i.i.i.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iu = load i32, ptr %i.is, align 4, !tbaa !280, !noalias !6110
  %i.iv = add nsw i32 %i.iu, 1
  store i32 %i.iv, ptr %i.is, align 4, !tbaa !280, !noalias !6110
  br label %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit

bb.bn:                                            ; preds = %bb.bl
  %i.iw = atomicrmw volatile add ptr %i.is, i32 1 acq_rel, align 4, !noalias !6110 ; 0 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !1272
  br label %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit

_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit: ; preds = %bb.bk, %bb.bm, %bb.bn
  %i.ix = phi ptr [ %i.io, %bb.bk ], [ %i.io, %bb.bm ], [ %.pre, %bb.bn ]
  invoke void @_ZN7coro_io16ib_buffer_pool_t10get_bufferEi(ptr dead_on_unwind nonnull writable sret(%"struct.coro_io::ib_buffer_t") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1352) %i.ix, i32 noundef -1)
          to label %bb.bo unwind label %bb.bw

bb.bo:                                            ; preds = %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit
  %i.iy = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN7coro_io11ib_buffer_taSEOS0_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.bp unwind label %bb.bx     ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #43
  %i.iz = load ptr, ptr %i.ip, align 8, !tbaa !328 ; 8 uses
  %.not.i.i = icmp eq ptr %i.iz, null
  br i1 %.not.i.i, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 4 uses
  %i.jb = load atomic i64, ptr %i.ja acquire, align 8 ; 2 uses
  %i.jc = icmp eq i64 %i.jb, 4294967297
  %i.jd = trunc i64 %i.jb to i32                  ; 2 uses
  br i1 %i.jc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.ja, align 8, !tbaa !331
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 12
  store i32 0, ptr %i.je, align 4, !tbaa !332
  %i.jf = load ptr, ptr %i.iz, align 8, !tbaa !263
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #43, !inline_history !72
  %i.ji = load ptr, ptr %i.iz, align 8, !tbaa !263
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8
  call void %i.jk(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #43, !inline_history !72
  br label %bb.bz

bb.bs:                                            ; preds = %bb.bq
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i54 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i54, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jm = add nsw i32 %i.jd, -1
  store i32 %i.jm, ptr %i.ja, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.jn = atomicrmw volatile add ptr %i.ja, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i = phi i32 [ %i.jd, %bb.bt ], [ %i.jn, %bb.bu ]
  %i.jo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.jo, label %bb.bv, label %bb.bz, !prof !284

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #43
  br label %bb.bz

bb.bw:                                            ; preds = %_ZNK7coro_io11ib_device_t15get_buffer_poolEv.exit
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bo
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #43
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn17 = phi { ptr, i32 } [ %i.jq, %bb.bx ], [ %i.jp, %bb.bw ]
  call void @_ZNSt12__shared_ptrIN7coro_io16ib_buffer_pool_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.cd

bb.bz:                                            ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.br, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %.pr = load ptr, ptr %i.ij, align 8             ; 2 uses
  %.not63 = icmp eq ptr %.pr, null
  br i1 %.not63, label %.thread59, label %.thread

.thread:                                          ; preds = %bb.bj, %bb.bz
  %.in = phi ptr [ %i.ik, %bb.bj ], [ %.pr, %bb.bz ]
  %i.jr = ptrtoint ptr %.in to i64
  %i.js = load <2 x ptr>, ptr %1, align 8, !tbaa !306
  store <2 x ptr> %i.js, ptr %7, align 16, !tbaa !306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 16, i1 false)
  %i.jt = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !1251
  store ptr %i.jv, ptr %i.jt, align 16, !tbaa !1251
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !1252
  store i64 %i.jy, ptr %i.jw, align 8, !tbaa !1252
  %i.jz = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kc = load <2 x ptr>, ptr %i.ka, align 8, !tbaa !306
  store ptr null, ptr %i.kb, align 8, !tbaa !328
  store <2 x ptr> %i.kc, ptr %i.jz, align 16, !tbaa !306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ju, i8 0, i64 24, i1 false)
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %i.jr, ptr %i.kd, align 16, !tbaa !1254
  store ptr null, ptr %i.ij, align 8, !tbaa !1254
  %i.ke = invoke { i32, ptr } @_ZN7coro_io6detail15ib_buffer_queue9push_recvENS_11ib_buffer_tEPNS0_24ib_socket_shared_state_tE(ptr noundef nonnull align 8 dereferenceable(33) %i.d, ptr nofreeobj noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull %0)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.thread
  %i.kf = extractvalue { i32, ptr } %i.ke, 0
  %.not64 = icmp eq i32 %i.kf, 0
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #43
  br i1 %.not64, label %bb.cc, label %.thread59

.thread59:                                        ; preds = %bb.bz, %bb.ca
  call void @_ZN7coro_io6detail24ib_socket_shared_state_t5closeEb(ptr noundef nonnull align 8 dereferenceable(464) %0, i1 noundef zeroext true)
  br label %bb.cc

bb.cb:                                            ; preds = %.thread
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #43
  br label %bb.cd

bb.cc:                                            ; preds = %_ZNK7coro_io6detail13circle_bufferISt4pairISt10error_codemEE4sizeEv.exit53, %.thread59, %bb.ca, %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void

bb.cd:                                            ; preds = %bb.cb, %bb.by, %bb.ba
  %.pn19 = phi { ptr, i32 } [ %i.kg, %bb.cb ], [ %.pn17, %bb.by ], [ %.pn.pn, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7coro_io16ib_buffer_pool_t10get_bufferEi(ptr dead_on_unwind noalias writable sret(%"struct.coro_io::ib_buffer_t") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1352) %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.1171", align 8 ; 11 uses
  %4 = alloca %"struct.coro_io::ib_buffer_t", align 16 ; 17 uses
  %5 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %6 = alloca %"struct.refvalue::meta_string.960", align 1 ; 7 uses
  %7 = alloca %"class.easylog::record_t", align 8 ; 7 uses
  %8 = alloca %"struct.refvalue::meta_string.960", align 1 ; 7 uses
  %9 = alloca %struct.memory_owner_t, align 8     ; 12 uses
  %10 = alloca %"struct.coro_io::ib_buffer_t", align 8 ; 7 uses
  %11 = alloca %struct.memory_owner_t, align 8    ; 7 uses
  %12 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %13 = alloca %"struct.refvalue::meta_string.960", align 1 ; 7 uses
  %14 = alloca %"struct.coro_io::ib_buffer_t", align 16 ; 11 uses
  %15 = alloca %"class.easylog::record_t", align 8 ; 11 uses
  %16 = alloca %"struct.refvalue::meta_string.960", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr null, ptr %3, align 8, !tbaa !1355
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1248
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8 ; 3 uses
  %i.d = getelementptr inbounds [616 x i8], ptr %i.a, i64 %i.c
  %i.e = invoke noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  br i1 %i.e, label %.sink.split.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.f = xor i64 %i.c, 1                          ; 2 uses
  %i.g = getelementptr inbounds [616 x i8], ptr %i.a, i64 %i.f
  %i.h = invoke noundef zeroext i1 @_ZN3ylt6detail10moodycamel15ConcurrentQueueISt10unique_ptrIN7coro_io16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS6_EENS1_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS9_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc60 unwind label %bb.h

.noexc60:                                         ; preds = %bb.b
  br i1 %i.h, label %.sink.split.i, label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE11try_dequeueERS7_.exit

.sink.split.i:                                    ; preds = %.noexc60, %.noexc
  %.sink10.i = phi i64 [ %i.c, %.noexc ], [ %i.f, %.noexc60 ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.sink10.i
  %17 = atomicrmw add ptr %i.j, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE11try_dequeueERS7_.exit

_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE11try_dequeueERS7_.exit: ; preds = %.sink.split.i, %.noexc60
  %i.k = load ptr, ptr %3, align 8, !tbaa !1289   ; 6 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.ck

bb.c:                                             ; preds = %_ZN7coro_io6detail12client_queueISt10unique_ptrINS_16ib_buffer_pool_t16ib_buffer_impl_tESt14default_deleteIS4_EEE11try_dequeueERS7_.exit
  %i.l = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !258

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.f, %bb.d, %bb.c
  %i.q = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.r = icmp slt i32 %i.q, 2
  br i1 %i.r, label %bb.i, label %bb.aa

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.ab
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.t = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.u = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.j, label %_ZN7easylog6loggerILm0EE8instanceEv.exit64, !prof !258

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i61 = icmp eq i32 %i.w, 0
  br i1 %.not.i61, label %_ZN7easylog6loggerILm0EE8instanceEv.exit64, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit64

bb.m:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit64:       ; preds = %bb.l, %bb.j, %bb.i
  %i.z = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit64
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !333
  %i.ab = sub nsw i64 %i.t, %.sroa.0.0.copyload.i2.i.i
  %i.ac = sdiv i64 %i.ab, 1000000
  %i.ad = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.ae = srem i64 %i.ac, %i.ad
  %i.af = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.ag = icmp slt i64 %i.ae, %i.af
  br i1 %i.ag, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.aa

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit64, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store i8 91, ptr %6, align 1, !alias.scope !6123
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(17) @__const._ZZN7coro_io16ib_buffer_pool_t10get_bufferEiENKUlvE_clEv.prefix, i64 17, i1 false), !tbaa.struct !1132
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.962, i64 3, i1 false), !tbaa.struct !456
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 %i.t, i32 noundef 1, i64 20, ptr nonnull %6)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !288 ; 5 uses
  %i.ak = icmp sgt i64 %i.aj, 9223372036854775748
  br i1 %i.ak, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
          to label %.noexc66 unwind label %bb.y

.noexc66:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.n
  %i.al = add nsw i64 %i.aj, 59                   ; 3 uses
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !287 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ap = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ap)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ar = phi i64 [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.al, %i.ar
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.as, ptr noundef nonnull align 1 dereferenceable(59) @.str.1111, i64 59, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 noundef %i.aj, i64 noundef 0, ptr noundef nonnull @.str.1111, i64 noundef 59)
          to label %bb.r unwind label %bb.y

bb.r:                                             ; preds = %bb.p, %bb.q
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !288
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !287
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  store i8 0, ptr %i.au, align 1, !tbaa !279
  %i.av = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.s, label %_ZN7easylog6loggerILm0EE8instanceEv.exit71, !prof !258

bb.s:                                             ; preds = %bb.r
  %i.ax = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i68 = icmp eq i32 %i.ax, 0
  br i1 %.not.i68, label %_ZN7easylog6loggerILm0EE8instanceEv.exit71, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit71

bb.v:                                             ; preds = %bb.t
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body69

_ZN7easylog6loggerILm0EE8instanceEv.exit71:       ; preds = %bb.u, %bb.s, %bb.r
  %i.ba = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !342, !noundef !343
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.w, !prof !284

bb.w:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit71
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.y

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit71, %bb.w
  %i.bc = load ptr, ptr %i.ah, align 8, !tbaa !287 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.an
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit
  %i.be = load i64, ptr %i.an, align 8, !tbaa !279
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !287 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN7easylog8record_tD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !279
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #53
  br label %_ZN7easylog8record_tD2Ev.exit

end_hunk_11
begin_hunk_12_@_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE17_M_default_appendEm:bb.a
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1269 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1270   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2152
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 288230376151711743         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !261
  %i.q = add i64 %.057.i.i.i.prol, -1             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !6967

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.08.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %1, 8
  br i1 %i.s, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !261
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 48
  store ptr null, ptr %i.u, align 8, !tbaa !261
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 80
  store ptr null, ptr %i.v, align 8, !tbaa !261
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 112
  store ptr null, ptr %i.w, align 8, !tbaa !261
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 144
  store ptr null, ptr %i.x, align 8, !tbaa !261
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 176
  store ptr null, ptr %i.y, align 8, !tbaa !261
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 208
  store ptr null, ptr %i.z, align 8, !tbaa !261
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 240
  store ptr null, ptr %i.aa, align 8, !tbaa !261
  %i.ab = add i64 %.057.i.i.i, -8                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.7 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.7, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !6968

_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i.i ]
  store ptr %.lcssa, ptr %i.a, align 8, !tbaa !1269
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i64 %i.n, %1
  br i1 %i.ad, label %bb.d, label %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1221) #54
  unreachable

_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ae = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 288230376151711743) ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #55 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.f ; 3 uses
  %xtraiter44 = and i64 %1, 7                     ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol

.lr.ph.i.i.i30.prol:                              ; preds = %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i30.prol
  %.08.i.i.i31.prol = phi ptr [ %i.al, %.lr.ph.i.i.i30.prol ], [ %i.ai, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i32.prol = phi i64 [ %i.ak, %.lr.ph.i.i.i30.prol ], [ %1, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ]
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i30.prol ], [ 0, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !261
  %i.ak = add i64 %.057.i.i.i32.prol, -1          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 32 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !6969

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ai, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.al, %.lr.ph.i.i.i30.prol ]
  %.057.i.i.i32.unr = phi i64 [ %1, %_ZNKSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.ak, %.lr.ph.i.i.i30.prol ]
  %i.am = icmp ult i64 %1, 8
  br i1 %i.am, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %.lr.ph.i.i.i30.prol.loopexit, %.lr.ph.i.i.i30
  %.08.i.i.i31 = phi ptr [ %i.aw, %.lr.ph.i.i.i30 ], [ %.08.i.i.i31.unr, %.lr.ph.i.i.i30.prol.loopexit ] ; 9 uses
  %.057.i.i.i32 = phi i64 [ %i.av, %.lr.ph.i.i.i30 ], [ %.057.i.i.i32.unr, %.lr.ph.i.i.i30.prol.loopexit ]
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 16
  store ptr null, ptr %i.an, align 8, !tbaa !261
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 48
  store ptr null, ptr %i.ao, align 8, !tbaa !261
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 80
  store ptr null, ptr %i.ap, align 8, !tbaa !261
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 112
  store ptr null, ptr %i.aq, align 8, !tbaa !261
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 144
  store ptr null, ptr %i.ar, align 8, !tbaa !261
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 176
  store ptr null, ptr %i.as, align 8, !tbaa !261
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 208
  store ptr null, ptr %i.at, align 8, !tbaa !261
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 240
  store ptr null, ptr %i.au, align 8, !tbaa !261
  %i.av = add i64 %.057.i.i.i32, -8               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 256
  %.not.i.i.i33.7 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i33.7, label %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !6968

_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i37 ], [ %i.ah, %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35 ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35 ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6975)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.sroa.0.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %.0911.i.i.i, align 8, !tbaa !279, !noalias !6974
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i64 16, i1 false), !tbaa.struct !319, !alias.scope !6976
  store <2 x i64> %.sroa.0.i.i.i.i.i.i.i.i.sroa.0.0.copyload, ptr %.012.i.i.i, align 8, !tbaa !279, !noalias !6975
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !306, !alias.scope !6974
  %i.bc = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !306, !alias.scope !6975
  store ptr null, ptr %i.ay, align 8, !tbaa !306, !alias.scope !6975
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !306, !alias.scope !6975
  store <2 x ptr> %i.bc, ptr %i.ax, align 8, !tbaa !306, !alias.scope !6974
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.not.i.i.i38 = icmp eq ptr %i.bd, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i37, !llvm.loop !6973

_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE13_M_deallocateEPS7_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !2152
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bh) #53
  br label %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE13_M_deallocateEPS7_m.exit41

_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE13_M_deallocateEPS7_m.exit41: ; preds = %_ZNSt6vectorIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %bb.e
  store ptr %i.ah, ptr %0, align 8, !tbaa !1270
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %1
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !1269
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !2152
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEEmS7_ET_S9_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN12async_simple4util18move_only_functionIFvSt4pairISt10error_codemEEEESaIS7_EE13_M_deallocateEPS7_m.exit41, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Try.2640", align 8 ; 11 uses
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2156   ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %3 = atomicrmw add ptr %i.b, i64 -1 acq_rel, align 8
  %i.c = load atomic i8, ptr %i.a acquire, align 1
  %i.d = and i8 %i.c, 33
  %i.e = icmp ne i8 %i.d, 0
  %i.f = icmp ne i64 %3, 1
  %or.cond.not.i = or i1 %i.f, %i.e
  br i1 %or.cond.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.1069)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #54
          to label %bb.r unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #43
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  %.0.i = extractvalue { ptr, i32 } %.pn.i, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %.0.i) #43 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %2) #43
  %i.k = load ptr, ptr %2, align 8, !tbaa !698    ; 2 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !698
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #43
  br label %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit

_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit: ; preds = %bb.g, %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i8 2, ptr %i.l, align 8, !tbaa !977
  invoke void @_ZN12async_simple11FutureStateISt10error_codeE9setResultEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(89) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.m = load i8, ptr %i.l, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.j, !prof !284

bb.j:                                             ; preds = %bb.i
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #43
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit

_ZN12async_simple3TryISt10error_codeED2Ev.exit:   ; preds = %bb.i, %bb.j, %bb.k
  %i.p = load ptr, ptr %2, align 8, !tbaa !698
  %.not.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i1, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  invoke void @__cxa_end_catch()
          to label %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit unwind label %bb.w

bb.m:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2ENSt15__exception_ptr13exception_ptrE.exit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = load i8, ptr %i.l, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i2 = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i2, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit5, label %bb.n, !prof !284

bb.n:                                             ; preds = %bb.m
  %i.s = icmp ne i8 %i.r, 2
  %i.t = load ptr, ptr %1, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i3 = icmp eq ptr %i.t, null
  %or.cond.i.i.i.i4 = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i3
  br i1 %or.cond.i.i.i.i4, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit5, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #43
  br label %_ZN12async_simple3TryISt10error_codeED2Ev.exit5

_ZN12async_simple3TryISt10error_codeED2Ev.exit5:  ; preds = %bb.m, %bb.n, %bb.o
  %i.u = load ptr, ptr %2, align 8, !tbaa !698
  %.not.i6 = icmp eq ptr %i.u, null
  br i1 %.not.i6, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7, label %bb.p

bb.p:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit5
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7:  ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit5, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #52
  unreachable

bb.r:                                             ; preds = %bb.d
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %4 = atomicrmw add ptr %i.x, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %4, 1
  br i1 %.not.i, label %bb.s, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

bb.s:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !977  ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.aa, -1
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.t, !prof !284

bb.t:                                             ; preds = %bb.s
  %i.ab = icmp ne i8 %i.aa, 2
  %i.ac = load ptr, ptr %i.y, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  %or.cond.i.i.i.i.i = select i1 %i.ab, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.y) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit: ; preds = %bb.s, %bb.t, %bb.u
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE13detachPromiseEv.exit, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.v

bb.v:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit, %bb.a
  ret void

bb.w:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.w ], [ %i.q, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7 ]
  %i.ae = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ae) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE9setResultEONS_3TryIS1_EE(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.2644, align 8           ; 4 uses
  %i.a = load atomic i8, ptr %0 acquire, align 8
  %i.b = and i8 %i.a, 33
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !622

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1070)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.o, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.e, ptr %2, align 8, !tbaa !2159
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #52
  unreachable

_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.h = load atomic i8, ptr %0 acquire, align 8  ; 2 uses
  switch i8 %i.h, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5 [
    i8 0, label %bb.f
    i8 2, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %i.i = cmpxchg ptr %0, i8 0, i8 1 release monotonic, align 1 ; 2 uses
  %i.j = extractvalue { i8, i1 } %i.i, 1
  br i1 %i.j, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit: ; preds = %bb.f
  %i.k = extractvalue { i8, i1 } %i.i, 0
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %.0 = phi i8 [ %i.k, %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit ], [ %i.h, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit ]
  %i.l = cmpxchg ptr %0, i8 %.0, i8 32 release monotonic, align 1
  %i.m = extractvalue { i8, i1 } %i.l, 1
  br i1 %i.m, label %bb.h, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5

bb.h:                                             ; preds = %bb.g
  call void @_ZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(89) %0, i1 noundef zeroext false)
  br label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5: ; preds = %bb.g, %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit
  %i.n = call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull @.str.1071)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

bb.j:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit5
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.n) #43
  br label %common.resume

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(89) %0, i1 noundef zeroext %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  %3 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 7 uses
  %4 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  %5 = alloca %"class.std::function.350", align 8 ; 9 uses
  %6 = alloca %class.anon.2647, align 8           ; 6 uses
  %7 = alloca %"class.std::function.350", align 8 ; 9 uses
  %8 = alloca %class.anon.2648, align 8           ; 6 uses
  %i.a = load atomic i8, ptr %0 monotonic, align 8
  %i.b = icmp eq i8 %i.a, 32
  br i1 %i.b, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !622

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1072)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.bf, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %.merged23, %bb.bf ], [ %i.ah, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !6979, !range !342, !noundef !343
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.p, label %bb.e

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !6980 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %or.cond = or i1 %1, %i.j
  br i1 %or.cond, label %bb.f, label %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit

_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit: ; preds = %bb.e
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !263
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(40) %i.i), !inline_history !6977
  br i1 %i.n, label %bb.f, label %bb.p

bb.f:                                             ; preds = %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %0, ptr %2, align 8, !tbaa !2168
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.p = atomicrmw add ptr %i.o, i8 1 monotonic, align 1 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i8 1 monotonic, align 1 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.u, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2170
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.o, !inline_history !2171

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.h
  %9 = atomicrmw add ptr %i.q, i8 -1 monotonic, align 1
  %i.z = icmp eq i8 %9, 1
  br i1 %i.z, label %bb.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.i:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %10 = atomicrmw add ptr %i.o, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %10, 1
  br i1 %.not.i.i.i, label %bb.l, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.l:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.m, !prof !284

bb.m:                                             ; preds = %bb.l
  %i.af = icmp ne i8 %i.ae, 2
  %i.ag = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.af, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %0, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %bb.bg

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %common.resume

bb.p:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit, %_ZNK12async_simple11FutureStateISt10error_codeE23currentThreadInExecutorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.aj = atomicrmw add ptr %i.ai, i8 1 monotonic, align 1 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.al = atomicrmw add ptr %i.ak, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %0, ptr %4, align 8, !tbaa !2168
  %i.am = atomicrmw add ptr %i.ai, i8 1 monotonic, align 1 ; 0 uses
  %i.an = atomicrmw add ptr %i.ak, i8 1 monotonic, align 1 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !6981 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.q, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !6980 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %0, ptr %6, align 8, !tbaa !2168
  store ptr null, ptr %3, align 8, !tbaa !2168
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.au = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55
          to label %bb.r unwind label %bb.v       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.au, align 8, !tbaa !2168
  store ptr null, ptr %6, align 8, !tbaa !2168
  store ptr %i.au, ptr %5, align 8, !tbaa !306
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.av, align 8, !tbaa !705
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.at, align 8, !tbaa !314
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !263
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !314 ; 2 uses
  %.not.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i29, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #52
  unreachable

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br i1 %i.az, label %bb.ap, label %bb.ai

bb.v:                                             ; preds = %bb.q
  %i.be = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Function_baseD2Ev.exit33

bb.w:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !314 ; 2 uses
  %.not.i32 = icmp eq ptr %i.bg, null
  br i1 %.not.i32, label %_ZNSt14_Function_baseD2Ev.exit33, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit33 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit33:                 ; preds = %bb.x, %bb.w, %bb.v
  %.pn16 = phi { ptr, i32 } [ %i.be, %bb.v ], [ %i.bf, %bb.w ], [ %i.bf, %bb.x ]
  call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.am

bb.z:                                             ; preds = %bb.p
  %i.bk = load i8, ptr %i.e, align 8, !tbaa !6979, !range !342, !noundef !343
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !6980 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  store ptr %0, ptr %8, align 8, !tbaa !2168
  store ptr null, ptr %3, align 8, !tbaa !2168
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.bo = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55
          to label %bb.aa unwind label %bb.ae     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bq = xor i8 %i.bk, 1
  store ptr %0, ptr %i.bo, align 8, !tbaa !2168
  store ptr null, ptr %8, align 8, !tbaa !2168
  store ptr %i.bo, ptr %7, align 8, !tbaa !306
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bp, align 8, !tbaa !705
  store ptr @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.bn, align 8, !tbaa !314
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !263
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.ap, i8 %i.bq)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.bv = load ptr, ptr %i.bn, align 8, !tbaa !314 ; 2 uses
  %.not.i35 = icmp eq ptr %i.bv, null
  br i1 %.not.i35, label %_ZNSt14_Function_baseD2Ev.exit36, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit36 unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #52
  unreachable

bb.ae:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %_ZNSt14_Function_baseD2Ev.exit46

bb.af:                                            ; preds = %bb.aa
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 2 uses
  %i.cb = load ptr, ptr %i.bn, align 8, !tbaa !314 ; 2 uses
  %.not.i45 = icmp eq ptr %i.cb, null
  br i1 %.not.i45, label %_ZNSt14_Function_baseD2Ev.exit46, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cc = invoke noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit46 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit46:                 ; preds = %bb.ag, %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.ae ], [ %i.ca, %bb.af ], [ %i.ca, %bb.ag ]
  call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.am

_ZNSt14_Function_baseD2Ev.exit36:                 ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br i1 %i.bu, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, %_ZNSt14_Function_baseD2Ev.exit36
  %i.cf = call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull @.str.1073)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @__cxa_throw(ptr nonnull %i.cf, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #54
          to label %bb.bi unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.cg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @__cxa_free_exception(ptr nonnull %i.cf) #43
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ch = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %_ZNSt14_Function_baseD2Ev.exit46, %_ZNSt14_Function_baseD2Ev.exit33
  %.pn18 = phi { ptr, i32 } [ %i.ch, %bb.al ], [ %i.cg, %bb.ak ], [ %.pn16, %_ZNSt14_Function_baseD2Ev.exit33 ], [ %.pn, %_ZNSt14_Function_baseD2Ev.exit46 ] ; 3 uses
  %.210 = extractvalue { ptr, i32 } %.pn18, 1
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #43
  %i.cj = icmp eq i32 %.210, %i.ci
  br i1 %i.cj, label %bb.an, label %bb.bf

bb.an:                                            ; preds = %bb.am
  %.2 = extractvalue { ptr, i32 } %.pn18, 0
  %i.ck = call ptr @__cxa_begin_catch(ptr %.2) #43 ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %bb.ao unwind label %bb.bd

bb.ao:                                            ; preds = %bb.an
  invoke void @__cxa_end_catch()
          to label %bb.ap unwind label %bb.be

bb.ap:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit36, %bb.ao, %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit
  %11 = atomicrmw add ptr %i.ak, i8 -1 monotonic, align 1
  %i.cn = icmp eq i8 %11, 1
  br i1 %i.cn, label %bb.aq, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48

bb.aq:                                            ; preds = %bb.ap
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i54, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void %i.cp(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.cq, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  call void @__clang_call_terminate(ptr %i.cs) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48: ; preds = %bb.ar, %bb.aq, %bb.ap
  %12 = atomicrmw add ptr %i.ai, i8 -1 acq_rel, align 1
  %.not.i.i.i49 = icmp eq i8 %12, 1
  br i1 %.not.i.i.i49, label %bb.at, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55

bb.at:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i.i.i50 = icmp eq i8 %i.cv, -1
  br i1 %.not.i.i.i.i.i.i50, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53, label %bb.au, !prof !284

bb.au:                                            ; preds = %bb.at
  %i.cw = icmp ne i8 %i.cv, 2
  %i.cx = load ptr, ptr %i.ct, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i51 = icmp eq ptr %i.cx, null
  %or.cond.i.i.i.i.i.i.i52 = select i1 %i.cw, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i51
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ct) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53: ; preds = %bb.av, %bb.au, %bb.at
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %0, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i48, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.cy = load ptr, ptr %3, align 8, !tbaa !2168  ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i56, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64, label %bb.aw

bb.aw:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %13 = atomicrmw add ptr %i.cz, i8 -1 monotonic, align 1
  %i.da = icmp eq i8 %13, 1
  br i1 %i.da, label %bb.ax, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57

bb.ax:                                            ; preds = %bb.aw
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i63, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %14 = atomicrmw add ptr %i.dg, i8 -1 acq_rel, align 1
  %.not.i.i.i58 = icmp eq i8 %14, 1
  br i1 %.not.i.i.i58, label %bb.ba, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64

bb.ba:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.dj, -1
  br i1 %.not.i.i.i.i.i.i59, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62, label %bb.bb, !prof !284

bb.bb:                                            ; preds = %bb.ba
  %i.dk = icmp ne i8 %i.dj, 2
  %i.dl = load ptr, ptr %i.dh, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i60 = icmp eq ptr %i.dl, null
  %or.cond.i.i.i.i.i.i.i61 = select i1 %i.dk, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i60
  br i1 %or.cond.i.i.i.i.i.i.i61, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dh) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62: ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.cy, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit55, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i57, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %bb.bg

bb.bd:                                            ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bf unwind label %bb.bh

bb.be:                                            ; preds = %bb.ao
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.am
  %.merged23 = phi { ptr, i32 } [ %.pn18, %bb.am ], [ %i.dn, %bb.be ], [ %i.dm, %bb.bd ]
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %common.resume

bb.bg:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit64, %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit
  ret void

bb.bh:                                            ; preds = %bb.bd
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #52
  unreachable

bb.bi:                                            ; preds = %bb.aj
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !977
  %i.c = load ptr, ptr %0, align 8, !tbaa !2159   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !977   ; 7 uses
  switch i8 %i.b, label %bb.o [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.i
    i8 -1, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.c [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !975

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #43
  br label %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  store i8 0, ptr %i.d, align 8, !tbaa !977
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.e:                                             ; preds = %bb.a
  switch i8 %i.e, label %bb.g [
    i8 1, label %bb.f
    i8 -1, label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i
  ], !prof !975

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 16, i1 false), !tbaa.struct !564
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.g:                                             ; preds = %bb.e
  %i.h = icmp ne i8 %i.e, 2
  %i.i = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10 = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i.i11 = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i10
  br i1 %or.cond.i.i.i.i.i.i.i11, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  store i8 -1, ptr %i.d, align 8, !tbaa !977
  br label %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i

_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i.i, %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, ptr noundef nonnull align 8 dereferenceable(17) %1, i64 16, i1 false), !tbaa.struct !564
  store i8 1, ptr %i.d, align 8, !tbaa !977
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.i:                                             ; preds = %bb.a
  %cond.i.i.i.i = icmp eq i8 %i.e, 2
  br i1 %cond.i.i.i.i, label %bb.j, label %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, !prof !1237

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  %i.j = load ptr, ptr %1, align 8, !tbaa !698
  store ptr null, ptr %1, align 8, !tbaa !698
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !698  ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !698
  store ptr %i.j, ptr %i.c, align 8, !tbaa !698
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.i
  %i.l = load ptr, ptr %1, align 8, !tbaa !698
  store ptr %i.l, ptr %i.c, align 8, !tbaa !698
  store ptr null, ptr %1, align 8, !tbaa !698
  store i8 2, ptr %i.d, align 8, !tbaa !977
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.l:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit, label %bb.m, !prof !284

bb.m:                                             ; preds = %bb.l
  %i.m = icmp ne i8 %i.e, 2
  %i.n = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  %or.cond.i.i.i.i.i.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.c) #43
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  store i8 -1, ptr %i.d, align 8, !tbaa !977
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit

bb.o:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_RSt7variantIJS5_S6_S8_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESF_SI_.exit: ; preds = %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S4_S6_EEEEDcOT0_DpOT1_.exit.i.i.i.i.i, %bb.l, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS5_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.i.i.i.i, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS3_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.f, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEJS2_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.c, align 8, !tbaa !263
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2170
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2168   ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !2168   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.g, !prof !284

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReference6detachEv.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2168   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !2168   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.g, !prof !284

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %bb.a, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2168   ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %1 = atomicrmw add ptr %i.b, i8 -1 monotonic, align 1
  %i.c = icmp eq i8 %1, 1
  br i1 %i.c, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !2168   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %2 = atomicrmw add ptr %i.j, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.g, !prof !284

bb.g:                                             ; preds = %bb.f
  %i.n = icmp ne i8 %i.m, 2
  %i.o = load ptr, ptr %i.k, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.i, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %bb.a, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4util6detail14_function_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void %i.b(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306
  tail call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_, ptr %0, align 8, !tbaa !624
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !306
  store ptr %i.a, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2168 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !2168
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.a = load ptr, ptr %0, align 8, !tbaa !2168   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !2168
  store ptr null, ptr %0, align 8, !tbaa !2168
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2170
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.j, !inline_history !2171

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.i, i8 -1 monotonic, align 1
  %i.j = icmp eq i8 %2, 1
  br i1 %i.j, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.n, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i8 %i.p, 2
  %i.r = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2168 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %1 = atomicrmw add ptr %i.d, i8 -1 monotonic, align 1
  %i.e = icmp eq i8 %1, 1
  br i1 %i.e, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !2168 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %2 = atomicrmw add ptr %i.l, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i8 %i.o, 2
  %i.q = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.k, i64 noundef 96) #53
  br label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306
  tail call void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt17_Function_handlerIFvvEZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.f
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_, ptr %0, align 8, !tbaa !624
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !306
  store ptr %i.a, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !306
  %i.c = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #55 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !2168 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !2168
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = atomicrmw add ptr %i.e, i8 1 monotonic, align 1 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.h = atomicrmw add ptr %i.g, i8 1 monotonic, align 1 ; 0 uses
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i: ; preds = %bb.e, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !306
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E15_M_init_functorIRKS5_EEvRSt9_Any_dataOT_.exit.i, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::FutureState<std::error_code>::ContinuationReference", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.a = load ptr, ptr %0, align 8, !tbaa !2168   ; 9 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !2168
  store ptr null, ptr %0, align 8, !tbaa !2168
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 8) #43 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt17bad_function_call, i64 16), ptr %i.d, align 8, !tbaa !263
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt17bad_function_call, ptr nonnull @_ZNSt17bad_function_callD1Ev) #54
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2170
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit unwind label %bb.j, !inline_history !2171

_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %2 = atomicrmw add ptr %i.i, i8 -1 monotonic, align 1
  %i.j = icmp eq i8 %2, 1
  br i1 %i.j, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i

bb.d:                                             ; preds = %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i: ; preds = %bb.e, %bb.d, %_ZNK12async_simple4util18move_only_functionIFvONS_3TryISt10error_codeEEEEclES5_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = atomicrmw add ptr %i.n, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.q = icmp ne i8 %i.p, 2
  %i.r = load ptr, ptr %i.f, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.q, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple11FutureStateISt10error_codeE21ContinuationReferenceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Function_base13_Base_managerIZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbEUlvE0_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !2168 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %1 = atomicrmw add ptr %i.d, i8 -1 monotonic, align 1
  %i.e = icmp eq i8 %1, 1
  br i1 %i.e, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !261  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 noundef zeroext 0)
          to label %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #52
  unreachable

_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !2168 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %2 = atomicrmw add ptr %i.l, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %2, 1
  br i1 %.not.i.i.i.i, label %bb.g, label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i8, ptr %i.n, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.h, !prof !284

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ne i8 %i.o, 2
  %i.q = load ptr, ptr %i.m, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.p, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.k, i64 noundef 96) #53
  br label %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit

_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit: ; preds = %bb.b, %_ZN12async_simple11FutureStateISt10error_codeE17derefContinuationEv.exit.i.i.i, %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #53
  br label %bb.j

bb.j:                                             ; preds = %_ZZN12async_simple11FutureStateISt10error_codeE20scheduleContinuationEbENUlvE0_D2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK7coro_io10ib_deleterclEP6ibv_qp(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.easylog::record_t", align 8 ; 9 uses
  %3 = alloca %"struct.refvalue::meta_string.648", align 1 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = invoke i32 @ibv_destroy_qp(ptr noundef nonnull %1)
          to label %bb.c unwind label %bb.ad      ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not8 = icmp eq i32 %i.a, 0
  br i1 %.not8, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.e, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, !prof !258

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN7easylog6loggerILm0EE8instanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit

bb.h:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit:         ; preds = %bb.g, %bb.e, %bb.d
  %i.g = load atomic i32, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance monotonic, align 8
  %i.h = icmp slt i32 %i.g, 6
  br i1 %i.h, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit
  %i.i = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.j = load atomic i8, ptr @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.j, label %_ZN7easylog6loggerILm0EE8instanceEv.exit12, !prof !258

bb.j:                                             ; preds = %bb.i
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  %.not.i9 = icmp eq i32 %i.l, 0
  br i1 %.not.i9, label %_ZN7easylog6loggerILm0EE8instanceEv.exit12, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN7easylog6loggerILm0EEC2Ev(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN7easylog6loggerILm0EE8instanceEvE8instance)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN7easylog6loggerILm0EED2Ev, ptr nonnull @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, ptr nonnull @__dso_handle) #43 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %_ZN7easylog6loggerILm0EE8instanceEv.exit12

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7easylog6loggerILm0EE8instanceEvE8instance) #43
  br label %.body

_ZN7easylog6loggerILm0EE8instanceEv.exit12:       ; preds = %bb.l, %bb.j, %bb.i
  %i.o = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit12
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 24), align 8, !tbaa !333
  %i.q = sub nsw i64 %i.i, %.sroa.0.0.copyload.i2.i.i
  %i.r = sdiv i64 %i.q, 1000000
  %i.s = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 8) monotonic, align 8
  %i.t = srem i64 %i.r, %i.s
  %i.u = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7easylog6loggerILm0EE8instanceEvE8instance, i64 16) monotonic, align 8
  %i.v = icmp slt i64 %i.t, %i.u
  br i1 %i.v, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.ac

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %_ZN7easylog6loggerILm0EE8instanceEv.exit12, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store i8 91, ptr %3, align 1, !alias.scope !6986
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(16) @__const._ZZNK7coro_io10ib_deleterclEP6ibv_qpENKUlvE_clEv.prefix, i64 16, i1 false), !tbaa.struct !1435
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.962, i64 3, i1 false), !tbaa.struct !456
  invoke void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 %i.i, i32 noundef 5, i64 19, ptr nonnull %3)
          to label %bb.n unwind label %bb.ad

bb.n:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !288  ; 5 uses
  %i.z = icmp sgt i64 %i.y, 9223372036854775785
  br i1 %i.z, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.n
  %i.aa = add nsw i64 %i.y, 22                    ; 3 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !287 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ae = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.ae)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !279
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ag = phi i64 [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.aa, %i.ag
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ah, ptr noundef nonnull align 1 dereferenceable(22) @.str.1222, i64 22, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef %i.y, i64 noundef 0, ptr noundef nonnull @.str.1222, i64 noundef 22)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.o, %bb.p
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !288
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !287
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aa
  store i8 0, ptr %i.aj, align 1, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #58 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !263, !noalias !6987
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !noalias !6987
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i32 noundef %i.a)
          to label %_ZNKSt10error_code7messageB5cxx11Ev.exit unwind label %bb.ad, !inline_history !20

_ZNKSt10error_code7messageB5cxx11Ev.exit:         ; preds = %bb.q
  %i.ao = load ptr, ptr %4, align 8, !tbaa !287   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !288 ; 6 uses
  %i.ar = load i64, ptr %i.x, align 8, !tbaa !288 ; 5 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16

.invoke:                                          ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.910) #54
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i16: ; preds = %_ZNKSt10error_code7messageB5cxx11Ev.exit
  %i.au = add i64 %i.ar, %i.aq                    ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN7coro_io6detail4copyEPvSt4spanI7ibv_sgeLm18446744073709551615EES3_:bb.a
.lr.ph.split:                                     ; preds = %.lr.ph, %bb.b
  %.01932 = phi i64 [ %i.o, %bb.b ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.024.031 = phi ptr [ %i.p, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.024.031, i64 12
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %.split

bb.b:                                             ; preds = %.lr.ph.split
  %i.f = add i64 %.01932, %3
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %.sroa.024.031, align 8, !tbaa !1730
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.024.031, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1729
  %i.l = zext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.i, i64 %i.l, i1 false)
  %i.m = load i32, ptr %i.j, align 8, !tbaa !1729
  %i.n = zext i32 %i.m to i64
  %i.o = add i64 %.01932, %i.n                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.024.031, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.a
  br i1 %i.q, label %._crit_edge, label %.lr.ph.split

.split:                                           ; preds = %.lr.ph.split, %.lr.ph
  %.sroa.024.0.lcssa.split = phi ptr [ %1, %.lr.ph ], [ %.sroa.024.031, %.lr.ph.split ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.024.0.lcssa.split, i64 12
  %i.s = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
  %i.t = load atomic i32, ptr %i.s monotonic, align 8
  %i.u = icmp slt i32 %i.t, 5
  br i1 %i.u, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.split
  %i.v = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #43 ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv() ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.0.0.copyload.i2.i.i = load i64, ptr %i.aa, align 8, !tbaa !333
  %i.ab = sub nsw i64 %i.v, %.sroa.0.0.copyload.i2.i.i
  %i.ac = sdiv i64 %i.ab, 1000000
  %i.ad = load atomic i64, ptr %i.x monotonic, align 8
  %i.ae = srem i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8
  %i.ah = icmp slt i64 %i.ae, %i.ag
  br i1 %i.ah, label %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread, label %bb.i

_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread: ; preds = %bb.c, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store i64 7507060127235729755, ptr %6, align 8, !alias.scope !7423
  %.sroa.0.i.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i48 54100233973872, ptr %.sroa.0.i.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7423
  %.sroa.0.i.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) %.sroa.0.i.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.962, i64 3, i1 false), !tbaa.struct !456
  call void @_ZN7easylog8record_tC2INSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEEEET_NS_8SeverityESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %5, i64 %i.v, i32 noundef 4, i64 16, ptr nonnull %6)
  %i.ai = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIA31_cEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 1 dereferenceable(31) @.str.1127)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.aj = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN7easylog8record_tlsIjEERS0_RKT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.r)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN7easylog6loggerILm0EE8instanceEv()
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.al = load atomic i8, ptr @_ZN7easylog6loggerILm0EE13has_destruct_E seq_cst, align 1, !range !342, !noundef !343
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, label %bb.g, !prof !284

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN7easylog6loggerILm0EE5writeERNS_8record_tE(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.aj)
          to label %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit unwind label %bb.h

_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit:   ; preds = %bb.f, %bb.g
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7easylog8record_tD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.l

bb.i:                                             ; preds = %_ZN7easylog6loggerILm0EE8check_tmENSt6chrono10time_pointINS2_3_V212system_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEE.exit, %_ZN7easylog6loggerILm0EEpLERNS_8record_tE.exit, %.split
  %i.ao = call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull @.str.1128)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #54
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ao) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.k ], [ %i.an, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7coro_io6detail26async_send_callback_helperD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !515  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #53
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  tail call void @_ZN7coro_io11ib_buffer_tD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple7PromiseISt10error_codeE9getFutureEv(ptr dead_on_unwind noalias writable sret(%"class.async_simple::Future.2960") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2156   ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN12async_simple11logicAssertEbPKc.exit, !prof !284

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.1069)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.g, %bb.g ], [ %i.b, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #43
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !2276, !range !342, !noundef !343
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %_ZN12async_simple6FutureISt10error_codeEC2EPNS_11FutureStateIS1_EE.exit, !prof !284

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.1074)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN12async_simple6FutureISt10error_codeEC2EPNS_11FutureStateIS1_EE.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  store i8 1, ptr %i.d, align 8, !tbaa !2276
  store ptr %i.a, ptr %0, align 8, !tbaa !2279
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.i, align 8, !tbaa !977
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.j, align 8, !tbaa !2280
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = atomicrmw add ptr %i.k, i8 1 monotonic, align 1 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2279   ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %1 = atomicrmw add ptr %i.b, i8 -1 acq_rel, align 1
  %.not.i.i = icmp eq i8 %1, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.d, !prof !284

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.f, !prof !284

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.k = icmp ne i8 %i.j, 2
  %i.l = load ptr, ptr %i.h, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.l, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.k, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #43
  br label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit

_ZN12async_simple6FutureISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2279   ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %1 = atomicrmw add ptr %i.b, i8 -1 acq_rel, align 1
  %.not.i = icmp eq i8 %1, 1
  br i1 %.not.i, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.e, -1
  br i1 %.not.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.d, !prof !284

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i8 %i.e, 2
  %i.g = load ptr, ptr %i.c, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  %or.cond.i.i.i.i.i = select i1 %i.f, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.a, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i8, ptr %i.i, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i1 = icmp eq i8 %i.j, -1
  br i1 %.not.i.i.i.i1, label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit, label %bb.f, !prof !284

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit
  %i.k = icmp ne i8 %i.j, 2
  %i.l = load ptr, ptr %i.h, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2 = icmp eq ptr %i.l, null
  %or.cond.i.i.i.i.i3 = select i1 %i.k, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2
  br i1 %or.cond.i.i.i.i.i3, label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #43
  br label %_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit

_ZN12async_simple10LocalStateISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.async_simple::Try.2640", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %"class.std::unique_ptr.2966", align 8 ; 8 uses
  %8 = alloca %"class.async_simple::Future.2960", align 8 ; 15 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %10 = alloca %"class.async_simple::SignalException", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::shared_ptr.2974", align 8 ; 8 uses
  %13 = alloca %class.anon.2977, align 8          ; 8 uses
  %14 = alloca %class.anon.2978, align 8          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7433)
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #55, !noalias !7433 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2279, !noalias !7433
  store ptr %i.b, ptr %i.a, align 8, !tbaa !2279, !noalias !7433
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !977, !noalias !7433 ; 2 uses
  switch i8 %i.f, label %bb.d [
    i8 0, label %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 -1, label %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false), !tbaa.struct !564, !noalias !7433
  br label %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !698, !noalias !7433
  store ptr %i.g, ptr %i.c, align 8, !tbaa !698, !noalias !7433
  store ptr null, ptr %i.d, align 8, !tbaa !698, !noalias !7433
  br label %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.d:                                             ; preds = %bb.a
  unreachable

_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 %i.f, ptr %i.h, align 8, !tbaa !977, !noalias !7433
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1203, !noalias !7433
  store ptr null, ptr %i.j, align 8, !tbaa !1203, !noalias !7433
  store ptr %i.k, ptr %i.i, align 8, !tbaa !2280, !noalias !7433
  store ptr null, ptr %0, align 8, !tbaa !2279, !noalias !7433
  store ptr %i.a, ptr %7, align 8, !tbaa !2282, !alias.scope !7433
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.l, ptr %11, align 8, !tbaa !283
  %i.m = invoke noalias noundef nonnull dereferenceable(51) ptr @_Znwm(i64 noundef 51) #55
          to label %.noexc23 unwind label %bb.ab  ; 3 uses

.noexc23:                                         ; preds = %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  store ptr %i.m, ptr %11, align 8, !tbaa !287
  store i64 50, ptr %i.l, align 8, !tbaa !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.m, ptr noundef nonnull align 1 dereferenceable(50) @.str.1314, i64 50, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 50, ptr %i.n, align 8, !tbaa !288
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 50
  store i8 0, ptr %i.o, align 1, !tbaa !279
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.e unwind label %bb.ac

bb.e:                                             ; preds = %.noexc23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12async_simple15SignalExceptionE, i64 16), ptr %10, align 8, !tbaa !263
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 1, ptr %i.p, align 8, !tbaa !1382
  %i.q = call ptr @__cxa_allocate_exception(i64 noundef 24) #43, !noalias !7434 ; 5 uses
  %i.r = call ptr @__cxa_init_primary_exception(ptr noundef %i.q, ptr noundef nonnull @_ZTIN12async_simple15SignalExceptionE, ptr noundef nonnull @_ZNSt15__exception_ptr12__dest_thunkIN12async_simple15SignalExceptionEEEvPv) #43, !noalias !7434 ; 0 uses
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %10) #43, !noalias !7434
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12async_simple15SignalExceptionE, i64 16), ptr %i.q, align 8, !tbaa !263, !noalias !7434
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i64, ptr %i.p, align 8, !tbaa !1382, !noalias !7434
  store i64 %i.t, ptr %i.s, align 8, !tbaa !1382, !noalias !7434
  call void @_ZNSt15__exception_ptr13exception_ptrC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %i.q) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !7435)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43, !noalias !7435
  %i.u = load ptr, ptr %9, align 8, !tbaa !698, !noalias !7435 ; 2 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !698, !noalias !7435
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #43, !noalias !7435
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !698, !noalias !7435 ; 2 uses
  store ptr %.pr.i, ptr %5, align 8, !tbaa !698, !noalias !7435
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i, label %_ZN12async_simple3TryISt10error_codeED2Ev.exit.i

_ZN12async_simple3TryISt10error_codeED2Ev.exit.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #43, !noalias !7435
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !698, !noalias !7435
  %.pre9.i = load ptr, ptr %6, align 8, !tbaa !698, !noalias !7435
  %i.v = icmp eq ptr %.pre9.i, null
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 2, ptr %i.w, align 8, !tbaa !977, !noalias !7435
  store ptr null, ptr %8, align 8, !tbaa !2279, !alias.scope !7435
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %.pre.i, ptr %i.x, align 8, !tbaa !698, !alias.scope !7435
  store ptr null, ptr %5, align 8, !tbaa !698, !noalias !7435
  store i8 2, ptr %i.y, align 8, !tbaa !977, !alias.scope !7435
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.z, align 8, !tbaa !2280, !alias.scope !7435
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #43, !noalias !7435
  %.pre = load ptr, ptr %8, align 8, !tbaa !2283
  br label %bb.g

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.ab, align 8
  store i8 2, ptr %i.aa, align 8, !tbaa !977, !alias.scope !7435
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr null, ptr %i.ac, align 8, !tbaa !2280, !alias.scope !7435
  br label %bb.g

bb.g:                                             ; preds = %_ZN12async_simple3TryISt10error_codeED2Ev.exit.i, %bb.f, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i
  %i.ad = phi ptr [ null, %_ZN12async_simple3TryISt10error_codeED2Ev.exit.i ], [ %.pre, %bb.f ], [ null, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43, !noalias !7435
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !2283
  store ptr %i.ad, ptr %0, align 8, !tbaa !2283
  store ptr %i.ae, ptr %8, align 8, !tbaa !2283
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12async_simple10LocalStateISt10error_codeEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.af) ; 0 uses
  %i.ah = load ptr, ptr %8, align 8, !tbaa !2279  ; 5 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %15 = atomicrmw add ptr %i.ai, i8 -1 acq_rel, align 1
  %.not.i.i25 = icmp eq i8 %15, 1
  br i1 %.not.i.i25, label %bb.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.al, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.j, !prof !284

bb.j:                                             ; preds = %bb.i
  %i.am = icmp ne i8 %i.al, 2
  %i.an = load ptr, ptr %i.aj, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  %or.cond.i.i.i.i.i.i = select i1 %i.am, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.ah, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.h, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.ap, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.l, !prof !284

bb.l:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.aq = icmp ne i8 %i.ap, 2
  %i.ar = load ptr, ptr %i.af, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.ar, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.aq, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.af) #43
  br label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit

_ZN12async_simple6FutureISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, %bb.l, %bb.m
  %i.as = load ptr, ptr %9, align 8, !tbaa !698
  %.not.i26 = icmp eq ptr %i.as, null
  br i1 %.not.i26, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN12async_simple6FutureISt10error_codeED2Ev.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, %bb.n
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #43
  %i.at = load ptr, ptr %11, align 8, !tbaa !287  ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.l
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.av = load i64, ptr %i.l, align 8, !tbaa !279
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  call void @llvm.experimental.noalias.scope.decl(metadata !7436)
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.ay = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #55
          to label %bb.o unwind label %bb.ad      ; 6 uses

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  store i32 1, ptr %i.az, align 8, !tbaa !331, !noalias !7436
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 1, ptr %i.ba, align 4, !tbaa !332, !noalias !7436
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ay, align 8, !tbaa !263, !noalias !7436
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  store i8 1, ptr %i.bb, align 8, !tbaa !526, !noalias !7436
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !328, !alias.scope !7436
  store ptr %i.bb, ptr %12, align 8, !tbaa !2285, !alias.scope !7436
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #43
  store ptr %1, ptr %13, align 8, !tbaa !306
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %2, ptr %i.bc, align 8, !tbaa !2290
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %3, ptr %i.bd, align 8, !tbaa !2291
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !2292
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  store ptr %i.ay, ptr %i.bf, align 8, !tbaa !328
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 2, ptr %i.az, align 8, !tbaa !280
  br label %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit

bb.q:                                             ; preds = %bb.o
  %i.bh = atomicrmw volatile add ptr %i.az, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit

_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit:     ; preds = %bb.p, %bb.q
  %.not.i28 = icmp eq ptr %4, null
  br i1 %.not.i28, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit
  %i.bi = invoke noundef zeroext i1 @_ZN12async_simple4Slot7emplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPS0_EUlDpOT_E_EEEbNS_10SignalTypeESK_(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %i.bi, label %bb.t, label %_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit

bb.t:                                             ; preds = %bb.s, %_ZNSt10shared_ptrISt6atomicIbEEC2ERKS2_.exit
  br label %_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit

bb.u:                                             ; preds = %bb.r
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #52
  unreachable

_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit: ; preds = %bb.s, %bb.t
  %.0.i = phi i1 [ true, %bb.t ], [ false, %bb.s ] ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !328 ; 8 uses
  %.not.i.i.i29 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i29, label %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bm, align 8, !tbaa !331
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !332
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !263
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #43, !inline_history !7432
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !263
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #43, !inline_history !7432
  br label %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i30 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i30, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %bb.y ], [ %i.bz, %bb.z ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.aa, label %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit, !prof !284

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #43
  br label %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit

_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit: ; preds = %_ZN12async_simple12signalHelper10tryEmplaceIJZNS_4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS3_11LazyPromiseIS5_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E_EEEbSI_SL_.exit, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  %.pre46 = load ptr, ptr %i.ax, align 8, !tbaa !328 ; 9 uses
  br i1 %.0.i, label %bb.ae, label %bb.ai

bb.ab:                                            ; preds = %_ZSt11make_uniqueIN12async_simple6FutureISt10error_codeEEJS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.ac:                                            ; preds = %.noexc23
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %11, align 8, !tbaa !287  ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.l
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.ac
  %i.cf = load i64, ptr %i.l, align 8, !tbaa !279
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.ab
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.ab ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.cc, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.ax

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ae:                                            ; preds = %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit
  %i.ci = load ptr, ptr %7, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #43
  store ptr %0, ptr %14, align 8, !tbaa !2301
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %1, ptr %i.cj, align 8, !tbaa !306
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %2, ptr %i.ck, align 8, !tbaa !2302
  %i.cl = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %3, ptr %i.cl, align 8, !tbaa !2303
  %i.cm = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.cn = load ptr, ptr %12, align 8, !tbaa !2292
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !2292
  %i.co = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr null, ptr %i.ax, align 8, !tbaa !328
  store ptr %.pre46, ptr %i.co, align 8, !tbaa !328
  store ptr null, ptr %12, align 8, !tbaa !2292
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.cq = ptrtoint ptr %i.ci to i64
  store i64 %i.cq, ptr %i.cp, align 8, !tbaa !2282
  store ptr null, ptr %7, align 8, !tbaa !2282
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !2279 ; 2 uses
  %.not.i36 = icmp eq ptr %i.cr, null
  br i1 %.not.i36, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN12async_simple11FutureStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E25await_suspend_cancellableINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E0_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(89) %i.cr, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %.thread unwind label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  invoke void @_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E25await_suspend_cancellableINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEEUlDpOT_E0_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %.thread unwind label %bb.ah

.thread:                                          ; preds = %bb.ag, %bb.af
  call void @_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E0_D2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E0_D2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %14) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  call void @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #43
  br label %bb.aw

bb.ai:                                            ; preds = %_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E_D2Ev.exit
  %.not.i.i39 = icmp eq ptr %.pre46, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre46, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cu, align 8, !tbaa !331
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre46, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !332
  %i.cz = load ptr, ptr %.pre46, align 8, !tbaa !263
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %.pre46) #43, !inline_history !128
  %i.dc = load ptr, ptr %.pre46, align 8, !tbaa !263
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %.pre46) #43, !inline_history !128
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i40 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i40, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i = phi i32 [ %i.cx, %bb.am ], [ %i.dh, %bb.an ]
  %i.di = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.di, label %bb.ao, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !284

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre46) #43
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.thread, %bb.ai, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.dj = load ptr, ptr %7, align 8, !tbaa !2282  ; 5 uses
  %.not.i41 = icmp eq ptr %i.dj, null
  br i1 %.not.i41, label %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !2279 ; 5 uses
  %.not.i.i.i42 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i42, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %16 = atomicrmw add ptr %i.dl, i8 -1 acq_rel, align 1
  %.not.i.i.i.i43 = icmp eq i8 %16, 1
  br i1 %.not.i.i.i.i43, label %bb.ar, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.do, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.as, !prof !284

bb.as:                                            ; preds = %bb.ar
  %i.dp = icmp ne i8 %i.do, 2
  %i.dq = load ptr, ptr %i.dm, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i44 = icmp eq ptr %i.dq, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.dp, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i44
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.at, %bb.as, %bb.ar
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.dk, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, %bb.aq, %bb.ap
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i1.i.i.i = icmp eq i8 %i.dt, -1
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i, label %bb.au, !prof !284

bb.au:                                            ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i
  %i.du = icmp ne i8 %i.dt, 2
  %i.dv = load ptr, ptr %i.dr, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.i = icmp eq ptr %i.dv, null
  %or.cond.i.i.i.i.i3.i.i.i = select i1 %i.du, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.dr) #43
  br label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i: ; preds = %bb.av, %bb.au, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 40) #53
  br label %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  ret i1 %.0.i

bb.aw:                                            ; preds = %bb.ah, %bb.ad
  %.pn19 = phi { ptr, i32 } [ %i.ct, %bb.ah ], [ %i.ch, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.aw ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  call void @_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.350", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2279   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12async_simple11FutureStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(89) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2305 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = load i64, ptr %1, align 8, !tbaa !306
  store i64 %i.g, ptr %2, align 8, !tbaa !306
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseISt10error_codeEEEEE9_M_invokeERKSt9_Any_data, ptr %i.e, align 8, !tbaa !705
  store ptr @_ZNSt17_Function_handlerIFvvENSt7__n486116coroutine_handleIN12async_simple4coro6detail11LazyPromiseISt10error_codeEEEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.d, align 8, !tbaa !314
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2306
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr nofreeobj noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.i)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !314  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #52
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !314  ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i2.i.i, label %_ZNSt14_Function_baseD2Ev.exit3.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit3.i.i unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #52
  unreachable

_ZNSt14_Function_baseD2Ev.exit3.i.i:              ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.r

bb.k:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %1, align 8, !tbaa !2307   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr nonnull %i.w), !inline_history !7437
  br label %_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit

_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit: ; preds = %bb.e, %bb.f, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZN12async_simple10LocalStateISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotEENUlDpOT_E0_D2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2282 ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2279 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %1 = atomicrmw add ptr %i.d, i8 -1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %1, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.e, !prof !284

bb.e:                                             ; preds = %bb.d
  %i.h = icmp ne i8 %i.g, 2
  %i.i = load ptr, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.c, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i.i, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i1.i.i.i = icmp eq i8 %i.l, -1
  br i1 %.not.i.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i, label %bb.g, !prof !284

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i
  %i.m = icmp ne i8 %i.l, 2
  %i.n = load ptr, ptr %i.j, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.i = icmp eq ptr %i.n, null
  %or.cond.i.i.i.i.i3.i.i.i = select i1 %i.m, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #43
  br label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i: ; preds = %bb.h, %bb.g, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #53
  br label %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !328  ; 8 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !tbaa !331
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !332
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !263
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #43, !inline_history !128
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !263
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #43, !inline_history !128
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i1 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !284

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #43
  br label %_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrISt6atomicIbELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !331
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !332
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #43, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !263
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #43, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !284

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #43
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN12async_simple6FutureISt10error_codeEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2282   ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2279 ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %1 = atomicrmw add ptr %i.c, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %1, 1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.e, !prof !284

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ne i8 %i.f, 2
  %i.h = load ptr, ptr %i.d, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.g, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.b, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq i8 %i.k, -1
  br i1 %.not.i.i.i.i1.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit, label %bb.g, !prof !284

bb.g:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.l = icmp ne i8 %i.k, 2
  %i.m = load ptr, ptr %i.i, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i = icmp eq ptr %i.m, null
  %or.cond.i.i.i.i.i3.i.i = select i1 %i.l, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i, label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i) #43
  br label %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit

_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i, %bb.g, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #53
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt14default_deleteIN12async_simple6FutureISt10error_codeEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__exception_ptr12__dest_thunkIN12async_simple15SignalExceptionEEEvPv(ptr noundef %0) #7 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !263
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN12async_simple10LocalStateISt10error_codeEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.2644, align 8           ; 4 uses
  %3 = alloca %class.anon.2644, align 8           ; 4 uses
  %4 = alloca %"class.async_simple::Try.2640", align 8 ; 8 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !977   ; 2 uses
  switch i8 %i.c, label %bb.e [
    i8 0, label %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 -1, label %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 16, i1 false), !tbaa.struct !564
  br label %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !698
  store ptr %i.d, ptr %4, align 8, !tbaa !698
  store ptr null, ptr %0, align 8, !tbaa !698
  br label %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i

bb.e:                                             ; preds = %bb.b
  unreachable

_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  store i8 %i.c, ptr %i.a, align 8, !tbaa !977
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %0, ptr %3, align 8, !tbaa !2159
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #52
  unreachable

_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit.i: ; preds = %_ZN12async_simple3TryISt10error_codeEC2EOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %1, ptr %2, align 8, !tbaa !2159
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateSt10error_codeNSt15__exception_ptr13exception_ptrEEEaSEOS8_EUlOT_T0_E_JRSt7variantIJS4_S5_S7_EEEEDcOSC_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit4.i unwind label %bb.g

bb.g:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #52
  unreachable

_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit4.i: ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.i = load i8, ptr %i.a, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.h, !prof !284

bb.h:                                             ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit4.i
  %i.j = icmp ne i8 %i.i, 2
  %i.k = load ptr, ptr %4, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  %or.cond.i.i.i.i.i = select i1 %i.j, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #43
  br label %_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZN12async_simple3TryISt10error_codeEaSEOS2_.exit4.i, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !1203
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1203
  store ptr %i.o, ptr %i.l, align 8, !tbaa !1203
  store ptr %i.n, ptr %i.m, align 8, !tbaa !1203
  br label %bb.j

bb.j:                                             ; preds = %_ZSt4swapIN12async_simple3TryISt10error_codeEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyISt6atomicIbEEEvRS0_PT_.exit:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #53
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceISt6atomicIbESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !618  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !279
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #43
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

end_hunk_13
begin_hunk_14_@_ZNSt23_Sp_counted_ptr_inplaceIN12async_simple4coro6detail10CountEventESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !279
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #43
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12async_simple4Slot7emplaceIJZNS_4coro6detail17CollectAnyAwaiterINS2_4LazyIN8coro_rpc8err_codeEEESaIS8_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlNS_10SignalTypeEPNS_6SignalEE_EEEbSE_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.397", align 8 ; 8 uses
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !622

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.942)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.h, %bb.e ], [ %i.y, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8314)
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #55, !noalias !8314 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !261, !noalias !8314
  %i.g = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #55
          to label %_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZNS0_4coro6detail17CollectAnyAwaiterINS8_4LazyIN8coro_rpc8err_codeEEESaISE_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlS3_S5_E_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.e, !noalias !8314 ; 4 uses

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #53, !noalias !8314
  br label %common.resume

_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZNS0_4coro6detail17CollectAnyAwaiterINS8_4LazyIN8coro_rpc8err_codeEEESaISE_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlS3_S5_E_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.i = load i64, ptr %2, align 8, !tbaa !306, !noalias !8314
  store i64 %i.i, ptr %i.g, align 8, !tbaa !306, !noalias !8314
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load <2 x ptr>, ptr %i.k, align 8, !tbaa !306, !noalias !8314
  store ptr null, ptr %i.l, align 8, !tbaa !328, !noalias !8314
  store <2 x ptr> %i.m, ptr %i.j, align 8, !tbaa !306, !noalias !8314
  store ptr null, ptr %i.k, align 8, !tbaa !2841, !noalias !8314
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !2830, !noalias !8314
  store i64 %i.p, ptr %i.n, align 8, !tbaa !2830, !noalias !8314
  store ptr %i.g, ptr %i.e, align 8, !tbaa !306, !noalias !8314
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_ZN12async_simple4util6detail15FunctionHandlerIFvNS_10SignalTypeEPNS_6SignalEEZNS_4coro6detail17CollectAnyAwaiterINS7_4LazyIN8coro_rpc8err_codeEEESaISD_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlS3_S5_E_E9_m_invokeERKNS1_9_any_dataEOS3_OS5_, ptr %i.q, align 8, !tbaa !755, !noalias !8314
  store ptr @_ZN12async_simple4util6detail15FunctionHandlerIFvNS_10SignalTypeEPNS_6SignalEEZNS_4coro6detail17CollectAnyAwaiterINS7_4LazyIN8coro_rpc8err_codeEEESaISD_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlS3_S5_E_E10_m_managerERNS1_9_any_dataERKSL_NS1_18_manager_operationE, ptr %i.f, align 8, !tbaa !261, !noalias !8314
  store ptr %i.e, ptr %3, align 8, !tbaa !756, !alias.scope !8314
  %i.r = invoke noundef ptr @_ZN12async_simple4Slot11loadHandlerILb1EEEPSt6atomicIPNS_4util18move_only_functionIFvNS_10SignalTypeEPNS_6SignalEEEEES5_(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZNS0_4coro6detail17CollectAnyAwaiterINS8_4LazyIN8coro_rpc8err_codeEEESaISE_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlS3_S5_E_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.s = icmp ugt i64 %1, 4294967295
  br i1 %i.s, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !759
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = and i64 %i.w, %1
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.i, label %bb.s

bb.h:                                             ; preds = %_ZSt11make_uniqueIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEJZNS0_4coro6detail17CollectAnyAwaiterINS8_4LazyIN8coro_rpc8err_codeEEESaISE_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlS3_S5_E_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEESt14default_deleteIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  br label %common.resume

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.z = load atomic ptr, ptr %i.r acquire, align 8 ; 8 uses
  %i.aa = icmp eq ptr %i.z, @_ZN12async_simple6detail21SignalSlotSharedState14HandlerManager10emittedTagE
  br i1 %i.aa, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %3, align 8, !tbaa !756   ; 7 uses
  store ptr null, ptr %3, align 8, !tbaa !756
  %i.ac = cmpxchg ptr %i.r, ptr %i.z, ptr %i.ab release monotonic, align 8
  %i.ad = extractvalue { ptr, i1 } %i.ac, 1       ; 2 uses
  br i1 %i.ad, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp eq ptr %i.ab, null
  br i1 %i.ae, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.ag(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i8 noundef zeroext 0)
          to label %.sink.split unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #52
  unreachable

bb.o:                                             ; preds = %bb.j
  %i.aj = icmp eq ptr %i.z, null
  br i1 %i.aj, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !261 ; 2 uses
  %.not.i14 = icmp eq ptr %i.al, null
  br i1 %.not.i14, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void %i.al(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 noundef zeroext 0)
          to label %.sink.split unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #52
  unreachable

.sink.split:                                      ; preds = %bb.q, %bb.p, %bb.m, %bb.l
  %.sink = phi ptr [ %i.ab, %bb.m ], [ %i.ab, %bb.l ], [ %i.z, %bb.p ], [ %i.z, %bb.q ]
  tail call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 32) #53
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.i, %bb.o, %bb.k, %bb.g
  %.2 = phi i1 [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.o ], [ false, %bb.k ], [ %i.ad, %.sink.split ]
  %i.ao = load ptr, ptr %3, align 8, !tbaa !756   ; 5 uses
  %.not.i16 = icmp eq ptr %i.ao, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEESt14default_deleteIS7_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEEclEPS7_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 noundef zeroext 0)
          to label %_ZNKSt14default_deleteIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEEclEPS7_.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #52
  unreachable

_ZNKSt14default_deleteIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEEclEPS7_.exit.i: ; preds = %bb.u, %bb.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #53
  br label %_ZNSt10unique_ptrIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEESt14default_deleteIS7_EED2Ev.exit

_ZNSt10unique_ptrIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEESt14default_deleteIS7_EED2Ev.exit: ; preds = %bb.s, %_ZNKSt14default_deleteIN12async_simple4util18move_only_functionIFvNS0_10SignalTypeEPNS0_6SignalEEEEEclEPS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4util6detail15FunctionHandlerIFvNS_10SignalTypeEPNS_6SignalEEZNS_4coro6detail17CollectAnyAwaiterINS7_4LazyIN8coro_rpc8err_codeEEESaISD_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlS3_S5_E_E9_m_invokeERKNS1_9_any_dataEOS3_OS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !306    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2841
  %3 = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2830
  %i.f = add i64 %i.e, 1
  %i.g = icmp eq i64 %3, %i.f
  br i1 %i.g, label %bb.b, label %_ZSt6invokeIRZN12async_simple4coro6detail17CollectAnyAwaiterINS1_4LazyIN8coro_rpc8err_codeEEESaIS7_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlNS0_10SignalTypeEPNS0_6SignalEE_JSD_SF_EENSt13invoke_resultIT_JDpT0_EE4typeEOSJ_DpOSK_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !973  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr nonnull %i.h), !inline_history !8315
  br label %_ZSt6invokeIRZN12async_simple4coro6detail17CollectAnyAwaiterINS1_4LazyIN8coro_rpc8err_codeEEESaIS7_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlNS0_10SignalTypeEPNS0_6SignalEE_JSD_SF_EENSt13invoke_resultIT_JDpT0_EE4typeEOSJ_DpOSK_.exit

_ZSt6invokeIRZN12async_simple4coro6detail17CollectAnyAwaiterINS1_4LazyIN8coro_rpc8err_codeEEESaIS7_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlNS0_10SignalTypeEPNS0_6SignalEE_JSD_SF_EENSt13invoke_resultIT_JDpT0_EE4typeEOSJ_DpOSK_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple4util6detail15FunctionHandlerIFvNS_10SignalTypeEPNS_6SignalEEZNS_4coro6detail17CollectAnyAwaiterINS7_4LazyIN8coro_rpc8err_codeEEESaISD_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlS3_S5_E_E10_m_managerERNS1_9_any_dataERKSL_NS1_18_manager_operationE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %cond.i = icmp eq i8 %2, 0
  br i1 %cond.i, label %bb.b, label %_ZN12async_simple4util6detail14_function_base13_base_managerIZNS_4coro6detail17CollectAnyAwaiterINS4_4LazyIN8coro_rpc8err_codeEEESaISA_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlNS_10SignalTypeEPNS_6SignalEE_E10_m_managerERNS1_9_any_dataERKSL_NS1_18_manager_operationE.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !306    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN12async_simple4util6detail14_function_base13_base_managerIZNS_4coro6detail17CollectAnyAwaiterINS4_4LazyIN8coro_rpc8err_codeEEESaISA_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlNS_10SignalTypeEPNS_6SignalEE_E10_m_managerERNS1_9_any_dataERKSL_NS1_18_manager_operationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !328  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZZN12async_simple4coro6detail17CollectAnyAwaiterINS0_4LazyIN8coro_rpc8err_codeEEESaIS6_EE13await_suspendENSt7__n486116coroutine_handleIvEEENUlNS_10SignalTypeEPNS_6SignalEE_D2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.e, align 8, !tbaa !331
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !332
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #43, !inline_history !8316
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !263
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #43, !inline_history !8316
  br label %_ZZN12async_simple4coro6detail17CollectAnyAwaiterINS0_4LazyIN8coro_rpc8err_codeEEESaIS6_EE13await_suspendENSt7__n486116coroutine_handleIvEEENUlNS_10SignalTypeEPNS_6SignalEE_D2Ev.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !279
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !280
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.g ], [ %i.r, %bb.h ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.i, label %_ZZN12async_simple4coro6detail17CollectAnyAwaiterINS0_4LazyIN8coro_rpc8err_codeEEESaIS6_EE13await_suspendENSt7__n486116coroutine_handleIvEEENUlNS_10SignalTypeEPNS_6SignalEE_D2Ev.exit.i.i, !prof !284

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #43
  br label %_ZZN12async_simple4coro6detail17CollectAnyAwaiterINS0_4LazyIN8coro_rpc8err_codeEEESaIS6_EE13await_suspendENSt7__n486116coroutine_handleIvEEENUlNS_10SignalTypeEPNS_6SignalEE_D2Ev.exit.i.i

_ZZN12async_simple4coro6detail17CollectAnyAwaiterINS0_4LazyIN8coro_rpc8err_codeEEESaIS6_EE13await_suspendENSt7__n486116coroutine_handleIvEEENUlNS_10SignalTypeEPNS_6SignalEE_D2Ev.exit.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #53
  br label %_ZN12async_simple4util6detail14_function_base13_base_managerIZNS_4coro6detail17CollectAnyAwaiterINS4_4LazyIN8coro_rpc8err_codeEEESaISA_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlNS_10SignalTypeEPNS_6SignalEE_E10_m_managerERNS1_9_any_dataERKSL_NS1_18_manager_operationE.exit

_ZN12async_simple4util6detail14_function_base13_base_managerIZNS_4coro6detail17CollectAnyAwaiterINS4_4LazyIN8coro_rpc8err_codeEEESaISA_EE13await_suspendENSt7__n486116coroutine_handleIvEEEUlNS_10SignalTypeEPNS_6SignalEE_E10_m_managerERNS1_9_any_dataERKSL_NS1_18_manager_operationE.exit: ; preds = %bb.a, %bb.b, %_ZZN12async_simple4coro6detail17CollectAnyAwaiterINS0_4LazyIN8coro_rpc8err_codeEEESaIS6_EE13await_suspendENSt7__n486116coroutine_handleIvEEENUlNS_10SignalTypeEPNS_6SignalEE_D2Ev.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN12async_simple4coro6detail17CollectAnyAwaiterINS0_4LazyIN8coro_rpc8err_codeEEESaIS6_EE13await_suspendENSt7__n486116coroutine_handleIvEEENUlONS_3TryIS5_EEE_clESE_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1850, align 8           ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2833   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2841
  %3 = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2835
  %i.f = add i64 %i.e, 1
  %i.g = icmp eq i64 %3, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #55, !noalias !8319 ; 4 uses
  store i64 -1, ptr %i.h, align 8, !tbaa !2838, !noalias !8319
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !noalias !8319
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2836 ; 4 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !2836
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEESt14default_deleteIS6_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i8, ptr %i.m, align 8, !tbaa !359   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.n, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEEEclEPS6_.exit.i.i.i.i, label %bb.d, !prof !284

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ne i8 %i.n, 2
  %i.p = load ptr, ptr %i.l, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.o, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEEEclEPS6_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #43
  br label %_ZNKSt14default_deleteIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEEEclEPS6_.exit.i.i.i.i

_ZNKSt14default_deleteIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEEEclEPS6_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 24) #53
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !2836
  br label %_ZNSt10unique_ptrIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEEEclEPS6_.exit.i.i.i.i, %bb.b
  %i.q = phi ptr [ %.pre, %_ZNKSt14default_deleteIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEEEclEPS6_.exit.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !2834
  store i64 %i.s, ptr %i.q, align 8, !tbaa !2838
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  store ptr %i.t, ptr %2, align 8, !tbaa !1687
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEEaSEOS9_EUlOT_T0_E_JRSt7variantIJS4_S6_S8_EEEEDcOSD_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEESt14default_deleteIS6_EED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #52
  unreachable

_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit: ; preds = %_ZNSt10unique_ptrIN12async_simple4coro6detail16CollectAnyResultIN8coro_rpc8err_codeEEESt14default_deleteIS6_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1215
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1010 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !759
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !8320
  %i.ae = call noundef i64 @_ZN12async_simple6Signal5emitsENS_10SignalTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 noundef %i.ad) #43 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN12async_simple3TryIN8coro_rpc8err_codeEEaSEOS3_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !973 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr nonnull %i.ag), !inline_history !64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12async_simple4coro6detail11LazyPromiseIN8coro_rpc8err_codeEE9tryResultEv(ptr dead_on_unwind noalias writable sret(%"class.async_simple::Try") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i8, ptr %i.b, align 8, !tbaa !359
  switch i8 %i.c, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke [
    i8 2, label %bb.b
    i8 1, label %_ZSt3getIN8coro_rpc8err_codeEJSt9monostateS1_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i
  ], !prof !974

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateN8coro_rpc8err_codeES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !698  ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !698
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.thread: ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !698
  br label %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit.thread

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %bb.c
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  %.pr = load ptr, ptr %2, align 8, !tbaa !698    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !698
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit.thread, label %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit

_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit.thread: ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.f, align 8, !tbaa !359
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #43
  %.pr4 = load ptr, ptr %2, align 8, !tbaa !698
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.g, align 8, !tbaa !359
  %.not.i1 = icmp eq ptr %.pr4, null
  br i1 %.not.i1, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #43
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZSt26__throw_bad_variant_accessb.exit.i.i:       ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i
  %.str.971.sink = phi ptr [ @.str.970, %_ZSt26__throw_bad_variant_accessb.exit.i.i ], [ @.str.971, %bb.a ]
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.h, align 8, !tbaa !263
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.str.971.sink, ptr %i.i, align 8, !tbaa !959
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.cont unwind label %bb.e

_ZSt26__throw_bad_variant_accessb.exit.i.i.cont:  ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke
  unreachable

_ZSt3getIN8coro_rpc8err_codeEJSt9monostateS1_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.j = load i16, ptr %i.a, align 8, !tbaa !471
  store i16 %i.j, ptr %0, align 8, !tbaa !471
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.k, align 8, !tbaa !359
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.d, %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit, %_ZN12async_simple3TryIN8coro_rpc8err_codeEEC2ENSt15__exception_ptr13exception_ptrE.exit.thread, %_ZSt3getIN8coro_rpc8err_codeEJSt9monostateS1_NSt15__exception_ptr13exception_ptrEEERT_RSt7variantIJDpT0_EE.exit
  ret void

bb.e:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.invoke, %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #52
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3getINSt15__exception_ptr13exception_ptrEJSt9monostateN8coro_rpc8err_codeES1_EERT_RSt7variantIJDpT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !359
  switch i8 %i.b, label %bb.b [
    i8 2, label %_ZSt3getILm2EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i
  ], !prof !975

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !263
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @.str.971, ptr %i.d, align 8, !tbaa !959
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i:         ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.e, align 8, !tbaa !263
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @.str.970, ptr %i.f, align 8, !tbaa !959
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #54
  unreachable

_ZSt3getILm2EJSt9monostateN8coro_rpc8err_codeENSt15__exception_ptr13exception_ptrEEERNSt19variant_alternativeIXT_ESt7variantIJDpT0_EEE4typeERS9_.exit: ; preds = %bb.a
  ret ptr %0
}

end_hunk_14
begin_hunk_15_@_ZN12async_simple4util6detail15FunctionHandlerIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEEZN8coro_rpc20coro_rpc_server_baseINSB_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvS5_S9_DpRT_EEDpSt10unique_ptrISJ_St14default_deleteISJ_EEEUlS5_S9_iE_E10_m_managerERNS1_9_any_dataERKSV_NS1_18_manager_operationE:bb.a
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN12async_simple4util6detail14_function_base13_base_managerIZN8coro_rpc20coro_rpc_server_baseINS4_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISJ_St14default_deleteISJ_EEEUlSE_SI_iE_E10_m_managerERNS1_9_any_dataERKSV_NS1_18_manager_operationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN7cinatra16coro_http_serverD2Ev(ptr noundef nonnull align 8 dead_on_return(1256) dereferenceable(1256) %i.d) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1256) #53
  br label %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i.i.i

_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN7cinatra16coro_http_serverEEclEPS1_.exit.i.i.i.i.i, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !314  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EEENUlS9_SD_iE_D2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i.i.i
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 3)
          to label %_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EEENUlS9_SD_iE_D2Ev.exit.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #52
  unreachable

_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EEENUlS9_SD_iE_D2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt10_Head_baseILm0ESt10unique_ptrIN7cinatra16coro_http_serverESt14default_deleteIS2_EELb0EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #53
  br label %_ZN12async_simple4util6detail14_function_base13_base_managerIZN8coro_rpc20coro_rpc_server_baseINS4_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISJ_St14default_deleteISJ_EEEUlSE_SI_iE_E10_m_managerERNS1_9_any_dataERKSV_NS1_18_manager_operationE.exit

_ZN12async_simple4util6detail14_function_base13_base_managerIZN8coro_rpc20coro_rpc_server_baseINS4_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISJ_St14default_deleteISJ_EEEUlSE_SI_iE_E10_m_managerERNS1_9_any_dataERKSV_NS1_18_manager_operationE.exit: ; preds = %bb.a, %bb.b, %_ZZN8coro_rpc20coro_rpc_server_baseINS_8config_tEE13add_subserverIJN7cinatra16coro_http_serverEEEEvSt8functionIFvON7coro_io16socket_wrapper_tESt17basic_string_viewIcSt11char_traitsIcEEDpRT_EEDpSt10unique_ptrISE_St14default_deleteISE_EEENUlS9_SD_iE_D2Ev.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple6FutureIN8coro_rpc8err_codeEE4waitEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.async_simple::Promise.1839", align 8 ; 10 uses
  %2 = alloca %"class.async_simple::Future", align 8 ; 10 uses
  %3 = alloca %"class.std::mutex", align 8        ; 7 uses
  %4 = alloca %"class.std::condition_variable", align 8 ; 8 uses
  %5 = alloca %"struct.std::atomic.61", align 1   ; 7 uses
  %6 = alloca %class.anon.4944, align 8           ; 9 uses
  %7 = alloca %"class.std::unique_lock.1427", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !358    ; 2 uses
  %.not.i = icmp ne ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp ne i8 %i.c, 0                       ; 2 uses
  %i.e = select i1 %.not.i, i1 true, i1 %i.d
  br i1 %i.e, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !622

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.1316)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %.pn.pn.pn, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  br i1 %i.d, label %_ZNK12async_simple6FutureIN8coro_rpc8err_codeEE9hasResultEv.exit.thread, label %_ZNK12async_simple6FutureIN8coro_rpc8err_codeEE9hasResultEv.exit

_ZNK12async_simple6FutureIN8coro_rpc8err_codeEE9hasResultEv.exit: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.h = load atomic i8, ptr %i.a acquire, align 1
  %i.i = and i8 %i.h, 33
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.e, label %_ZNK12async_simple6FutureIN8coro_rpc8err_codeEE9hasResultEv.exit.thread

bb.e:                                             ; preds = %_ZNK12async_simple6FutureIN8coro_rpc8err_codeEE9hasResultEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.j = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #55 ; 7 uses
  store i8 0, ptr %i.j, align 1, !tbaa !459
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !461
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 0, ptr %i.l, align 1, !tbaa !461
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i8 0, ptr %i.m, align 8, !tbaa !359
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.n, i8 0, i64 25, i1 false)
  store ptr %i.j, ptr %1, align 8, !tbaa !463
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i8 0, ptr %i.o, align 8, !tbaa !464
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8 ; 0 uses
  %i.r = atomicrmw add ptr %i.k, i8 1 monotonic, align 1 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  invoke void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEE9getFutureEv(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::Future") align 8 %2, ptr noundef nonnull align 8 dereferenceable(9) %1)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !358
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr null, ptr %i.t, align 8, !tbaa !1690
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store i8 0, ptr %5, align 1, !tbaa !526
  %i.u = load ptr, ptr %0, align 8, !tbaa !358
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  store ptr %3, ptr %6, align 8, !tbaa !2892
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.v, align 8, !tbaa !10404
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %5, ptr %i.w, align 8, !tbaa !2285
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !463
  store ptr %i.y, ptr %i.x, align 8, !tbaa !463
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load i8, ptr %i.o, align 8, !tbaa !464, !range !342, !noundef !343
  store i8 %i.aa, ptr %i.z, align 8, !tbaa !464
  store ptr null, ptr %1, align 8, !tbaa !463
  store i8 0, ptr %i.o, align 8, !tbaa !464
  invoke void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE15setContinuationIZNS_6FutureIS2_E4waitEvEUlONS_3TryIS2_EEE_EEvOT_(ptr noundef nonnull align 8 dereferenceable(81) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.g unwind label %bb.s

bb.g:                                             ; preds = %bb.f
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.x) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  store ptr %3, ptr %7, align 8, !tbaa !4023
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ac = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %3) #43 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ac) #54
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  store i8 1, ptr %i.ab, align 8, !tbaa !4024
  %i.ad = load atomic i8, ptr %5 monotonic, align 1, !range !342, !noundef !343
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.noexc9
  invoke void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(9) %7)
          to label %.noexc9 unwind label %bb.u

.noexc9:                                          ; preds = %.lr.ph.i
  %i.af = load atomic i8, ptr %5 monotonic, align 1, !range !342, !noundef !343
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i, !llvm.loop !10403

.loopexit:                                        ; preds = %.noexc9, %bb.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !10405
  %i.ai = load ptr, ptr %2, align 8, !tbaa !10405
  store ptr %i.ai, ptr %0, align 8, !tbaa !10405
  store ptr %i.ah, ptr %2, align 8, !tbaa !10405
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN12async_simple10LocalStateIN8coro_rpc8err_codeEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.am = load i8, ptr %i.ab, align 8, !tbaa !4024, !range !342, !noundef !343
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.j, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.j:                                             ; preds = %.loopexit
  %i.ao = load ptr, ptr %7, align 8, !tbaa !4023  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #43 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.loopexit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %i.aq = load ptr, ptr %2, align 8, !tbaa !358   ; 5 uses
  %.not.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i11, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %8 = atomicrmw add ptr %i.ar, i8 -1 acq_rel, align 1
  %.not.i.i12 = icmp eq i8 %8, 1
  br i1 %.not.i.i12, label %bb.m, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !359 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.au, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, label %bb.n, !prof !284

bb.n:                                             ; preds = %bb.m
  %i.av = icmp ne i8 %i.au, 2
  %i.aw = load ptr, ptr %i.as, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  %or.cond.i.i.i.i.i.i = select i1 %i.av, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #43
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(81) %i.aq, i64 noundef 88) #53
  br label %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i

_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEED2Ev.exit.i, %bb.l, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !359 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.ay, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit, label %bb.p, !prof !284

bb.p:                                             ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i
  %i.az = icmp ne i8 %i.ay, 2
  %i.ba = load ptr, ptr %i.aj, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.ba, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.az, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) #43
  br label %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit

_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE9detachOneEv.exit.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %_ZNK12async_simple6FutureIN8coro_rpc8err_codeEE9hasResultEv.exit.thread

_ZNK12async_simple6FutureIN8coro_rpc8err_codeEE9hasResultEv.exit.thread: ; preds = %_ZN12async_simple11logicAssertEbPKc.exit, %_ZNK12async_simple6FutureIN8coro_rpc8err_codeEE9hasResultEv.exit, %_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev.exit
  ret void

bb.r:                                             ; preds = %bb.e
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.x) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  br label %bb.x

bb.t:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit14

bb.u:                                             ; preds = %.lr.ph.i
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bf = load i8, ptr %i.ab, align 8, !tbaa !4024, !range !342, !noundef !343
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit14

bb.v:                                             ; preds = %bb.u
  %i.bh = load ptr, ptr %7, align 8, !tbaa !4023  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i13, label %_ZNSt11unique_lockISt5mutexED2Ev.exit14, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bh) #43 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit14

_ZNSt11unique_lockISt5mutexED2Ev.exit14:          ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.be, %bb.u ], [ %i.be, %bb.v ], [ %i.be, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit14, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt11unique_lockISt5mutexED2Ev.exit14 ], [ %i.bc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  call void @_ZN12async_simple6FutureIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #43
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.bb, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE15setContinuationIZNS_6FutureIS2_E4waitEvEUlONS_3TryIS2_EEE_EEvOT_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.4946, align 8           ; 7 uses
  %i.a = load atomic i8, ptr %0 acquire, align 8
  %i.b = and i8 %i.a, 34
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %_ZN12async_simple11logicAssertEbPKc.exit, label %bb.b, !prof !622

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #43 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.1315)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #54
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.r, %bb.f ], [ %i.y, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #43
  br label %common.resume

_ZN12async_simple11logicAssertEbPKc.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !463  ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !463
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !464, !range !342, !noundef !343 ; 2 uses
  store i8 %i.j, ptr %i.h, align 8, !tbaa !464
  store ptr null, ptr %i.f, align 8, !tbaa !463
  store i8 0, ptr %i.i, align 8, !tbaa !464
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !261
  %i.l = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #55
          to label %bb.e unwind label %bb.f       ; 4 uses

bb.e:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.g, ptr %i.n, align 8, !tbaa !463
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %i.j, ptr %i.o, align 8, !tbaa !464
  store ptr null, ptr %i.e, align 8, !tbaa !463
  store i8 0, ptr %i.h, align 8, !tbaa !464
  store ptr %i.l, ptr %i.m, align 8, !tbaa !306
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN12async_simple4util6detail15FunctionHandlerIFvONS_3TryIN8coro_rpc8err_codeEEEEZNS_11FutureStateIS5_E15setContinuationIZNS_6FutureIS5_E4waitEvEUlS7_E_EEvOT_EUlS7_E_E9_m_invokeERKNS1_9_any_dataES7_, ptr %i.p, align 8, !tbaa !1694
  store ptr @_ZN12async_simple4util6detail15FunctionHandlerIFvONS_3TryIN8coro_rpc8err_codeEEEEZNS_11FutureStateIS5_E15setContinuationIZNS_6FutureIS5_E4waitEvEUlS7_E_EEvOT_EUlS7_E_E10_m_managerERNS1_9_any_dataERKSJ_NS1_18_manager_operationE, ptr %i.k, align 8, !tbaa !261
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  %i.q = load atomic i8, ptr %0 acquire, align 8  ; 2 uses
  switch i8 %i.q, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit6 [
    i8 0, label %bb.g
    i8 1, label %bb.h
  ]

bb.f:                                             ; preds = %_ZN12async_simple11logicAssertEbPKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12async_simple7PromiseIN8coro_rpc8err_codeEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %common.resume

bb.g:                                             ; preds = %bb.e
  %i.s = cmpxchg ptr %0, i8 0, i8 2 release monotonic, align 1 ; 2 uses
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit: ; preds = %bb.g
  %i.u = extractvalue { i8, i1 } %i.s, 0
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit, %bb.e
  %.0 = phi i8 [ %i.u, %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit ], [ %i.q, %bb.e ]
  %i.v = cmpxchg ptr %0, i8 %.0, i8 32 release monotonic, align 1
  %i.w = extractvalue { i8, i1 } %i.v, 1
  br i1 %i.w, label %bb.i, label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit6

bb.i:                                             ; preds = %bb.h
  call void @_ZN12async_simple11FutureStateIN8coro_rpc8err_codeEE20scheduleContinuationEb(ptr noundef nonnull align 8 dereferenceable(81) %0, i1 noundef zeroext true)
  br label %_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit.thread

_ZNSt6atomicIN12async_simple6detail5StateEE23compare_exchange_strongERS2_S2_St12memory_orderS5_.exit6: ; preds = %bb.h, %bb.e
end_hunk_15
begin_hunk_16_@_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.resume:resume.entry
  %.reload87 = load ptr, ptr %.reload.addr86, align 8, !tbaa !11961 ; 4 uses
  store i8 0, ptr %i.b, align 1, !tbaa !459
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !461
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %i.d, align 1, !tbaa !461
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !977
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.f, i8 0, i64 25, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8 ; 0 uses
  %i.j = atomicrmw add ptr %i.c, i8 1 monotonic, align 1 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.reload87, i64 328 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.reload87, i64 344 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !2151, !range !342, !noundef !343
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.from.57, label %.from.55

.from.57:                                         ; preds = %bb.a
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !2283
  %i.p = getelementptr inbounds nuw i8, ptr %.reload87, i64 336 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !746, !range !342, !noundef !343
  store i8 0, ptr %i.p, align 8, !tbaa !746
  store i8 %i.q, ptr %i.g, align 8, !tbaa !746
  br label %bb.b

.from.55:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.reload87, i64 336
  store i8 0, ptr %i.r, align 8, !tbaa !2276
  store i8 0, ptr %i.g, align 8, !tbaa !2276
  store i8 1, ptr %i.l, align 8, !tbaa !2151
  br label %bb.b

bb.b:                                             ; preds = %.from.55, %.from.57
  %.sink.i = phi ptr [ %i.o, %.from.57 ], [ null, %.from.55 ]
  store ptr %i.b, ptr %i.k, align 8, !tbaa !2283
  store ptr %.sink.i, ptr %2, align 8, !tbaa !2283
  call void @_ZN12async_simple7PromiseISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %2) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  invoke void @_ZN12async_simple7PromiseISt10error_codeE9getFutureEv(ptr dead_on_unwind nonnull writable sret(%"class.async_simple::Future.2960") align 8 %.reload.addr89, ptr noundef nonnull align 8 dereferenceable(9) %i.k)
          to label %bb.c unwind label %.from.75

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !11962)
  call void @llvm.experimental.noalias.scope.decl(metadata !11963)
  %i.s = load ptr, ptr %.reload.addr89, align 8, !tbaa !2279, !noalias !11964 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load i8, ptr %i.u, align 8, !tbaa !977, !noalias !11964 ; 4 uses
  switch i8 %i.v, label %bb.d [
    i8 0, label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit
    i8 1, label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread.i.i
    i8 2, label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread3.i.i
    i8 -1, label %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit
  ]

_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread.i.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1203, !noalias !11964
  store ptr null, ptr %i.w, align 8, !tbaa !1203, !noalias !11964
  store ptr null, ptr %.reload.addr89, align 8, !tbaa !2279, !noalias !11964
  store ptr %i.s, ptr %.reload.addr88, align 8, !tbaa !2279, !alias.scope !11965
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread

_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread3.i.i: ; preds = %bb.c
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !698, !noalias !11964
  store ptr null, ptr %i.t, align 8, !tbaa !698, !noalias !11964
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1203, !noalias !11964
  store ptr null, ptr %i.aa, align 8, !tbaa !1203, !noalias !11964
  store ptr null, ptr %.reload.addr89, align 8, !tbaa !2279, !noalias !11964
  store ptr %i.s, ptr %.reload.addr88, align 8, !tbaa !2279, !alias.scope !11966
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !698, !alias.scope !11967
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread

bb.d:                                             ; preds = %bb.c
  unreachable

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread: ; preds = %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread.i.i, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread3.i.i
  %.ph4.i.i = phi ptr [ %i.x, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread.i.i ], [ %i.ab, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread.from._ZNO12async_simple6FutureISt10error_codeE7coAwaitEPNS_8ExecutorE.exit.thread3.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 %i.v, ptr %i.ad, align 8, !tbaa !977, !alias.scope !11967
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.ph4.i.i, ptr %i.ae, align 8, !tbaa !2280, !alias.scope !11967
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit: ; preds = %bb.c, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1203, !noalias !11964
  store ptr null, ptr %i.af, align 8, !tbaa !1203, !noalias !11964
  store ptr null, ptr %.reload.addr89, align 8, !tbaa !2279, !noalias !11964
  store ptr %i.s, ptr %.reload.addr88, align 8, !tbaa !2279, !alias.scope !11967
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i8 %i.v, ptr %i.ah, align 8, !tbaa !977, !alias.scope !11967
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !2280, !alias.scope !11967
  %.not.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit: ; preds = %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit
  %i.aj = load atomic i8, ptr %i.s acquire, align 1
  %i.ak = and i8 %i.aj, 33
  %.not = icmp eq i8 %i.ak, 0
  br i1 %.not, label %AfterCoroSave45, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

AfterCoroSave45:                                  ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit
  store i8 1, ptr %index.addr, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1291 ; 5 uses
  %.not.i.i2 = icmp eq ptr %i.am, null
  br i1 %.not.i.i2, label %.noexc3, label %bb.e

bb.e:                                             ; preds = %AfterCoroSave45
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !263
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %i.am)
          to label %.noexc3 unwind label %.from.73, !inline_history !11958

.noexc3:                                          ; preds = %bb.e, %AfterCoroSave45
  %.011.i.i = phi ptr [ null, %AfterCoroSave45 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1214 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.as, null
  br i1 %.not14.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc3
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1010 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.au, null
  br i1 %.not15.i.i, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = invoke noundef zeroext i1 @_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE25await_suspend_cancellableINS1_11LazyPromiseIS3_EEEEbNSt7__n486116coroutine_handleIT_EEPNS_8ExecutorEPvPNS_4SlotE(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr88, ptr nonnull %0, ptr noundef %i.am, ptr noundef %.011.i.i, ptr noundef nonnull %i.au)
          to label %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit unwind label %.from.73

.thread.i.i:                                      ; preds = %bb.f, %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  %i.aw = ptrtoint ptr %0 to i64
  store i64 %i.aw, ptr %1, align 8, !tbaa !306
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.am, ptr %i.ax, align 8, !tbaa !2305
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.011.i.i, ptr %i.ay, align 8, !tbaa !2306
  invoke void @_ZN12async_simple6FutureISt10error_codeE15setContinuationIZNS_4coro6detail13FutureAwaiterIS1_E13await_suspendINS5_11LazyPromiseIS1_EEEEbNSt7__n486116coroutine_handleIT_EEEUlONS_3TryIS1_EEE_EEvOSD_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr88, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit.thread unwind label %.from.73

_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit.thread: ; preds = %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  br label %CoroEnd

_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit: ; preds = %bb.g
  br i1 %i.av, label %CoroEnd, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from.AfterCoroSuspend47: ; preds = %resume.entry
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread

.from.78:                                         ; preds = %AfterCoroSuspend
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  br label %.from.77

.from.75:                                         ; preds = %bb.b
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.77

.from.73:                                         ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread, %.noexc, %bb.e, %bb.g, %.thread.i.i
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.reload.addr88) #43
  call void @_ZN12async_simple6FutureISt10error_codeED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.reload.addr89) #43
  br label %.from.77

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread: ; preds = %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from.AfterCoroSuspend47, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread
  %i.bd = phi ptr [ %i.ad, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from._ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit.thread ], [ %i.ah, %_ZN12async_simple4coro6detail15LazyPromiseBase15await_transformINS_6FutureISt10error_codeEEEEDaOT_.exit ], [ %i.az, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread.from.AfterCoroSuspend47 ], [ %i.ah, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit ], [ %i.ah, %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit ]
  %i.be = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN12async_simple6FutureISt10error_codeE6getTryIS2_EEDcRT_(ptr noundef nonnull align 8 dereferenceable(40) %.reload.addr88)
          to label %.noexc unwind label %.from.73

.noexc:                                           ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeE11await_readyEv.exit.thread
  %i.bf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNR12async_simple3TryISt10error_codeE5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.h unwind label %.from.73   ; 2 uses

bb.h:                                             ; preds = %.noexc
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 8, !tbaa !280
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !563
  %i.bg = load ptr, ptr %.reload.addr88, align 8, !tbaa !2279 ; 5 uses
  %.not.i.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i15, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %3 = atomicrmw add ptr %i.bh, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %3, 1
  br i1 %.not.i.i.i, label %bb.j, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bk, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.k, !prof !284

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp ne i8 %i.bk, 2
  %i.bm = load ptr, ptr %i.bi, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.bl, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bi) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.bg, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, %bb.i, %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bo = load i8, ptr %i.bd, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq i8 %i.bo, -1
  br i1 %.not.i.i.i.i1.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit, label %bb.m, !prof !284

bb.m:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.bp = icmp ne i8 %i.bo, 2
  %i.bq = load ptr, ptr %i.bn, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i = icmp eq ptr %i.bq, null
  %or.cond.i.i.i.i.i3.i.i = select i1 %i.bp, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bn) #43
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit: ; preds = %bb.n, %bb.m, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.br = load ptr, ptr %.reload.addr89, align 8, !tbaa !2279 ; 5 uses
  %.not.i = icmp eq ptr %i.br, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %4 = atomicrmw add ptr %i.bs, i8 -1 acq_rel, align 1
  %.not.i.i16 = icmp eq i8 %4, 1
  br i1 %.not.i.i16, label %bb.p, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.bv, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.q, !prof !284

bb.q:                                             ; preds = %bb.p
  %i.bw = icmp ne i8 %i.bv, 2
  %i.bx = load ptr, ptr %i.bt, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bx, null
  %or.cond.i.i.i.i.i.i = select i1 %i.bw, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bt) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.br, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.o, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.bz, -1
  br i1 %.not.i.i.i.i1.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.s, !prof !284

bb.s:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cb = icmp ne i8 %i.bz, 2
  %i.cc = load ptr, ptr %i.ca, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.cc, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.cb, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ca) #43
  br label %_ZN12async_simple6FutureISt10error_codeED2Ev.exit

_ZN12async_simple6FutureISt10error_codeED2Ev.exit: ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, %bb.s, %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.cf = load i8, ptr %i.cd, align 8, !tbaa !977 ; 2 uses
  %.not.i.i.i.i.i17 = icmp eq i8 %i.cf, -1
  br i1 %.not.i.i.i.i.i17, label %.thread30, label %bb.u, !prof !284

bb.u:                                             ; preds = %_ZN12async_simple6FutureISt10error_codeED2Ev.exit
  %i.cg = icmp ne i8 %i.cf, 2
  %i.ch = load ptr, ptr %i.ce, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i18 = icmp eq ptr %i.ch, null
  %or.cond.i.i.i.i.i.i19 = select i1 %i.cg, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i18
  br i1 %or.cond.i.i.i.i.i.i19, label %.thread30, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.ce) #43
  br label %.thread30

.thread30:                                        ; preds = %bb.v, %bb.u, %_ZN12async_simple6FutureISt10error_codeED2Ev.exit
  store i32 %.sroa.0.0.copyload.i, ptr %i.ce, align 8, !tbaa !280
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.21.0.copyload.i, ptr %.sroa.528.0..sroa_idx, align 8, !tbaa !563
  store i8 1, ptr %i.cd, align 8, !tbaa !977
  br label %bb.w

.from.77:                                         ; preds = %.from.73, %.from.75, %.from.78
  %.pn9.pn.pn = phi { ptr, i32 } [ %i.ba, %.from.78 ], [ %i.bc, %.from.73 ], [ %i.bb, %.from.75 ]
  %.3 = extractvalue { ptr, i32 } %.pn9.pn.pn, 0
  %i.ci = call ptr @__cxa_begin_catch(ptr %.3) #43 ; 0 uses
  call void @_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeE19unhandled_exceptionEv(ptr noundef nonnull align 8 dereferenceable(48) %.reload.addr92) #43
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.thread30, %.from.77
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %.reload.addr92, align 8, !tbaa !306 ; 2 uses
  %i.cj = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8
  musttail call void %i.cj(ptr nonnull %.sroa.0.0.copyload.i.i)
  ret void

CoroEnd:                                          ; preds = %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit.thread, %_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.__await_suspend_wrapper__await.exit
  ret void

bb.x:                                             ; preds = %.from.77
  %i.ck = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  store i8 2, ptr %index.addr, align 8
  resume { ptr, i32 } %i.ck
}

; Function Attrs: coro_only_destroy_when_complete mustprogress nounwind uwtable
define internal void @_ZN7coro_io6detail24ib_socket_shared_state_t18waiting_write_overEv.destroy(ptr noundef nonnull align 8 dereferenceable(160) %0) #51 align 2 personality ptr @__gxx_personality_v0 {
resume.entry:
  %.reload.addr89 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 1
  br i1 %i.a, label %bb.a, label %AfterCoroSuspend, !prof !11968

bb.a:                                             ; preds = %resume.entry
  %.reload.addr88 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %.reload.addr88, align 8, !tbaa !2279 ; 5 uses
  %.not.i.i15 = icmp eq ptr %i.c, null
  br i1 %.not.i.i15, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %1 = atomicrmw add ptr %i.d, i8 -1 acq_rel, align 1
  %.not.i.i.i = icmp eq i8 %1, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.d, !prof !284

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ne i8 %i.g, 2
  %i.i = load ptr, ptr %i.e, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.c, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i.i, %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load i8, ptr %i.b, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq i8 %i.k, -1
  br i1 %.not.i.i.i.i1.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit, label %bb.f, !prof !284

bb.f:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.l = icmp ne i8 %i.k, 2
  %i.m = load ptr, ptr %i.j, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i = icmp eq ptr %i.m, null
  %or.cond.i.i.i.i.i3.i.i = select i1 %i.l, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i.i
  br i1 %or.cond.i.i.i.i.i3.i.i, label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j) #43
  br label %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit

_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit: ; preds = %bb.g, %bb.f, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i.i
  %i.n = load ptr, ptr %.reload.addr89, align 8, !tbaa !2279 ; 5 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %2 = atomicrmw add ptr %i.o, i8 -1 acq_rel, align 1
  %.not.i.i16 = icmp eq i8 %2, 1
  br i1 %.not.i.i16, label %bb.i, label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i8, ptr %i.q, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.r, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.j, !prof !284

bb.j:                                             ; preds = %bb.i
  %i.s = icmp ne i8 %i.r, 2
  %i.t = load ptr, ptr %i.p, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  %or.cond.i.i.i.i.i.i = select i1 %i.s, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #43
  br label %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i

_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(89) %i.n, i64 noundef 96) #53
  br label %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i

_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i: ; preds = %_ZN12async_simple11FutureStateISt10error_codeED2Ev.exit.i, %bb.h, %_ZN12async_simple4coro6detail13FutureAwaiterISt10error_codeED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load i8, ptr %i.u, align 8, !tbaa !977   ; 2 uses
  %.not.i.i.i.i1.i = icmp eq i8 %i.v, -1
  br i1 %.not.i.i.i.i1.i, label %AfterCoroSuspend, label %bb.l, !prof !284

bb.l:                                             ; preds = %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = icmp ne i8 %i.v, 2
  %i.y = load ptr, ptr %i.w, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i = icmp eq ptr %i.y, null
  %or.cond.i.i.i.i.i3.i = select i1 %i.x, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i2.i
  br i1 %or.cond.i.i.i.i.i3.i, label %AfterCoroSuspend, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %i.w) #43
  br label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %resume.entry, %bb.m, %bb.l, %_ZN12async_simple11FutureStateISt10error_codeE9detachOneEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i8, ptr %i.z, align 8, !tbaa !977  ; 2 uses
  %.not.i.i.i20 = icmp eq i8 %i.ab, -1
  br i1 %.not.i.i.i20, label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit, label %bb.n, !prof !284

bb.n:                                             ; preds = %AfterCoroSuspend
  %i.ac = icmp ne i8 %i.ab, 2
  %i.ad = load ptr, ptr %i.aa, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  %or.cond.i.i.i.i = select i1 %i.ac, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(17) %i.aa) #43
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit

_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit: ; preds = %AfterCoroSuspend, %bb.n, %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.0.copyload.i = load ptr, ptr %i.ae, align 8
  invoke void %.0.copyload.i(ptr noundef nonnull %0, i64 noundef 160)
          to label %CoroEnd unwind label %bb.p

bb.p:                                             ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #52
  unreachable

CoroEnd:                                          ; preds = %_ZN12async_simple4coro6detail11LazyPromiseISt10error_codeED2Ev.exit
  ret void
}

; Function Attrs: coro_only_destroy_when_complete inlinehint mustprogress uwtable
define internal void @_ZN7coro_io6detail15async_send_implEPvRNS_11ib_socket_tESt4spanI7ibv_sgeLm18446744073709551615EEm.resume(ptr noundef nonnull align 8 dereferenceable(216) %0) #49 personality ptr @__gxx_personality_v0 {
resume.entry:
  %1 = alloca %"struct.coro_io::detail::async_send_callback_helper", align 8 ; 15 uses
  %2 = alloca %"class.async_simple::util::move_only_function.904", align 8 ; 11 uses
  %3 = alloca %"struct.std::pair.1012", align 8   ; 6 uses
  %4 = alloca %"struct.coro_io::ib_buffer_t", align 16 ; 11 uses
  %5 = alloca %"class.easylog::record_t", align 8 ; 14 uses
  %6 = alloca %"struct.std::pair.1012", align 8   ; 6 uses
  %7 = alloca %"class.std::optional.2944", align 8 ; 7 uses
  %8 = alloca %"struct.std::pair.2061", align 8   ; 6 uses
  %.reload.addr351 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %.reload.addr352 = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.reload.addr353 = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %.reload.addr356 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %index.addr = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %index = load i8, ptr %index.addr, align 8
  %i.a = icmp eq i8 %index, 0
  br i1 %i.a, label %AfterCoroSuspend, label %AfterCoroSuspend238, !prof !11988

AfterCoroSuspend:                                 ; preds = %resume.entry
  %.reload.addr341 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %.reload342 = load i64, ptr %.reload.addr341, align 8, !tbaa !4114
  %i.b = icmp eq i64 %.reload342, 0
  br i1 %i.b, label %bb.a, label %bb.b, !prof !284

bb.a:                                             ; preds = %AfterCoroSuspend
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store i32 0, ptr %8, align 8, !tbaa !280
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.c, ptr %.sroa.4174.0..sroa_idx, align 8, !tbaa !563
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.d, align 8, !tbaa !4092
  call void @_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E(ptr noundef nonnull align 8 dereferenceable(56) %.reload.addr356, ptr noundef nonnull align 8 dereferenceable(20) %8) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.bb

bb.b:                                             ; preds = %AfterCoroSuspend
  %.reload.addr312 = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.reload313 = load ptr, ptr %.reload.addr312, align 8, !tbaa !4114
  %i.e = getelementptr inbounds nuw i8, ptr %.reload313, i64 48 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1040 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1057 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1141
  %.not.i = icmp eq i32 %i.j, -1
  br i1 %.not.i, label %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread, label %_ZNK7coro_io11ib_socket_t7is_openEv.exit

_ZNK7coro_io11ib_socket_t7is_openEv.exit:         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.l = load atomic i8, ptr %i.k seq_cst, align 8, !range !342, !noundef !343
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread, label %bb.f

_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread:  ; preds = %_ZNK7coro_io11ib_socket_t7is_openEv.exit, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = load i8, ptr %i.n, align 8, !tbaa !1151  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit, label %bb.d, !prof !284

bb.d:                                             ; preds = %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread
  %i.r = icmp ne i8 %i.q, 2
  %i.s = load ptr, ptr %i.p, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  %or.cond.i.i.i.i.i.i = select i1 %i.r, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(25) %i.p) #43
  br label %_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit

_ZN12async_simple4coro6detail11LazyPromiseISt4pairISt10error_codemEE12return_valueIS3_IS4_iEEEvOT_Qsr3stdE16is_convertible_vIOTL0__S9_E.exit: ; preds = %bb.e, %bb.d, %_ZNK7coro_io11ib_socket_t7is_openEv.exit.thread
  store i32 107, ptr %i.p, align 8, !tbaa !280
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %.sroa.5168.0..sroa_idx, align 8, !tbaa !563
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.t, align 8, !tbaa !1236
  store i8 1, ptr %i.n, align 8, !tbaa !1151
  br label %bb.bb

bb.f:                                             ; preds = %_ZNK7coro_io11ib_socket_t7is_openEv.exit
  %.reload311 = load ptr, ptr %.reload.addr312, align 8, !tbaa !4114 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.reload311, i64 120
  %i.v = load i32, ptr %i.u, align 8, !tbaa !4095 ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.w, i64 262144)
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !1040 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2198 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 196
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !1268 ; 4 uses
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZNK7coro_io11ib_socket_t18sent_request_countEv.exit.from., label %bb.g

_ZNK7coro_io11ib_socket_t18sent_request_countEv.exit.from.: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1269
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !1270
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5
  %i.al = zext i32 %i.ac to i64
  %i.am = zext i32 %i.aa to i64
  %i.an = sub nsw i64 %i.al, %i.am
  %i.ao = add nsw i64 %i.an, %i.ak
  br label %_ZNK7coro_io11ib_socket_t18sent_request_countEv.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ap, label %bb.h, label %_ZNK7coro_io11ib_socket_t18sent_request_countEv.exit.from.250

bb.h:                                             ; preds = %bb.g
end_hunk_16
