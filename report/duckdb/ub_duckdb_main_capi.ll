inline.NumInlined: 10466
inline.NumDeleted: 4631
begin_hunk_0_@duckdb_table_function_bind_get_result_column_count:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @duckdb_table_function_bind_get_result_column_type(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1309, !nonnull !41, !align !87 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %.not10 = icmp ult i64 %1, %i.i
  br i1 %.not10, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35 ; 3 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #38
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.j, %bb.d ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define ptr @duckdb_table_function_bind_get_result_column_name(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1308, !nonnull !41, !align !87 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !214
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 5
  %.not8 = icmp ult i64 %1, %i.i
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %1)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.k, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @duckdb_register_copy_function(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.129", align 8 ; 12 uses
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.g = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1440
  %.not.not = icmp eq ptr %i.i, null
  br i1 %.not.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr @_ZN6duckdb12_GLOBAL__N_111CCopyToBindERNS_13ClientContextERNS_21CopyFunctionBindInputERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERKNS5_INS_11LogicalTypeELb1ESaISG_EEE, ptr %i.j, align 8, !tbaa !1471
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 176
  store ptr @_ZN6duckdb12_GLOBAL__N_117CCopyToGlobalInitERNS_13ClientContextERNS_12FunctionDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr %i.k, align 8, !tbaa !1472
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr @_ZN6duckdb12_GLOBAL__N_116CCopyToLocalInitERNS_16ExecutionContextERNS_12FunctionDataE, ptr %i.l, align 8, !tbaa !1473
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr @_ZN6duckdb12_GLOBAL__N_111CCopyToSinkERNS_16ExecutionContextERNS_12FunctionDataERNS_18GlobalFunctionDataERNS_17LocalFunctionDataERNS_9DataChunkE, ptr %i.m, align 8, !tbaa !1474
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr @_ZN6duckdb12_GLOBAL__N_114CCopyToCombineERNS_16ExecutionContextERNS_12FunctionDataERNS_18GlobalFunctionDataERNS_17LocalFunctionDataE, ptr %i.n, align 8, !tbaa !1475
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 208
  store ptr @_ZN6duckdb12_GLOBAL__N_115CCopyToFinalizeERNS_13ClientContextERNS_12FunctionDataERNS_18GlobalFunctionDataE, ptr %i.o, align 8, !tbaa !1476
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1457
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %i.r = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_13ClientContextELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %0, ptr %2, align 8, !tbaa !161
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !1477
  store ptr @"_ZNSt17_Function_handlerIFvvEZ29duckdb_register_copy_functionE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.t, align 8, !tbaa !168
  store ptr @"_ZNSt17_Function_handlerIFvvEZ29duckdb_register_copy_functionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.s, align 8, !tbaa !171
  invoke void @_ZN6duckdb13ClientContext24RunFunctionInTransactionERKSt8functionIFvvEEb(ptr noundef nonnull align 8 dereferenceable(512) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.k:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !171 ; 2 uses
  %.not.i27 = icmp eq ptr %i.aa, null
  br i1 %.not.i27, label %_ZNSt14_Function_baseD2Ev.exit28, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit28 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit28:                 ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit28, %bb.j
  %.pn = phi { ptr, i32 } [ %i.z, %_ZNSt14_Function_baseD2Ev.exit28 ], [ %i.y, %bb.j ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.ae = call ptr @__cxa_begin_catch(ptr %.0) #36 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n, %_ZNSt14_Function_baseD2Ev.exit, %bb.d, %bb.a
  %.3 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %_ZNSt14_Function_baseD2Ev.exit ], [ 1, %bb.n ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_111CCopyToBindERNS_13ClientContextERNS_21CopyFunctionBindInputERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISB_EEERKNS5_INS_11LogicalTypeELb1ESaISG_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::(anonymous namespace)::CCopyFunctionToInternalBindInfo", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35, !noalias !1479 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_115CCopyToBindInfoE, i64 16), ptr %i.c, align 8, !tbaa !11, !noalias !1479
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !1479
  %i.e = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.c)
          to label %6 unwind label %bb.r          ; 0 uses

6:                                                ; preds = %bb.a
  %7 = icmp eq ptr %i.c, %2
  br i1 %7, label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %6
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.a, align 8, !tbaa !147
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108  ; 8 uses
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !147
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEaSERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEC2ERKS2_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !104
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #36, !inline_history !1482
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #36, !inline_history !1482
  br label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEaSERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i5.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i5.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEaSERKS2_.exit, !prof !24

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #36
  br label %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEaSERKS2_.exit

_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEaSERKS2_.exit: ; preds = %6, %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEC2ERKS2_.exit.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1402 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEaSERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store ptr %1, ptr %5, align 8, !tbaa !569
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.ag, align 8, !tbaa !1483
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.ah, align 8, !tbaa !1257
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.ai, align 8, !tbaa !1258
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.b, ptr %i.aj, align 8, !tbaa !1484
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i8 1, ptr %i.ak, align 8, !tbaa !1403
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 4 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.an, align 8, !tbaa !34
  store i8 0, ptr %i.am, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  invoke void %i.af(ptr noundef nonnull %5)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1428
  %i.aq = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.c)
          to label %bb.n unwind label %bb.s       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !1435
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1429
  %i.au = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.c)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.at, ptr %i.av, align 8, !tbaa !1485
  %i.aw = load i8, ptr %i.ak, align 8, !tbaa !1403, !range !40, !noundef !41
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.w unwind label %bb.s

bb.r:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_EED2Ev.exit21

bb.s:                                             ; preds = %bb.m, %bb.n, %bb.q, %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ay) #36
  br label %bb.v

bb.u:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.am
  br i1 %i.bd, label %_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.bc) #38
  br label %_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit

_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_EED2Ev.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.s ], [ %i.bb, %bb.t ]
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.am
  br i1 %i.bf, label %_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.be) #38
  br label %_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit18

_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit18: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_EED2Ev.exit21

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEaSERKS2_.exit, %_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  ret void

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_115CCopyToBindInfoESt14default_deleteIS2_EED2Ev.exit21: ; preds = %_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit18, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN6duckdb12_GLOBAL__N_131CCopyFunctionToInternalBindInfoD2Ev.exit18 ], [ %i.az, %bb.r ]
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #36, !inline_history !1486
  resume { ptr, i32 } %.pn.pn

bb.w:                                             ; preds = %bb.q
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_117CCopyToGlobalInitERNS_13ClientContextERNS_12FunctionDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.1300") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::(anonymous namespace)::CCopyToGlobalInitInfo", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_16CopyFunctionInfoELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #35, !noalias !1487 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118CCopyToGlobalStateE, i64 16), ptr %i.c, align 8, !tbaa !11, !noalias !1487
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !1487
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1430 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118CCopyToGlobalStateESt14default_deleteIS2_EED2Ev.exit16, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr %1, ptr %4, align 8, !tbaa !569
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !1490
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.h, align 8, !tbaa !216
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !34
  store i8 0, ptr %i.j, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store i8 1, ptr %i.l, align 8, !tbaa !1431
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  invoke void %i.f(ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1437
  %i.o = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_118CCopyToGlobalStateESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.c)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.d, align 8, !tbaa !1447
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1438
  %i.r = invoke fastcc noundef ptr @_ZNK6duckdb10unique_ptrINS_12_GLOBAL__N_118CCopyToGlobalStateESt14default_deleteIS2_ELb1EEptEv(ptr nonnull %i.c)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.q, ptr %i.s, align 8, !tbaa !1491
  %i.t = load i8, ptr %i.l, align 8, !tbaa !1431, !range !40, !noundef !41
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #36 ; 3 uses
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.l unwind label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.g, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #36
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZN6duckdb12_GLOBAL__N_121CCopyToGlobalInitInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.y) #38
  br label %_ZN6duckdb12_GLOBAL__N_121CCopyToGlobalInitInfoD2Ev.exit

end_hunk_0
