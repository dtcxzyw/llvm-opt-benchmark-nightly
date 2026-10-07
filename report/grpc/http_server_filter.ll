Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/http_server_filter?download=true
inline.NumInlined: 1932
inline.NumDeleted: 1524
begin_hunk_0_@_ZN9grpc_core37ClientInitialMetadataOutstandingTokenD2Ev:bb.a
  %i.f = load i8, ptr %i.e, align 1, !tbaa !387, !range !23, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.d, align 2, !tbaa !388
  store i8 1, ptr %i.e, align 1, !tbaa !387
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !389  ; 2 uses
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core8Activity19g_current_activity_E, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZTHN9grpc_core8Activity19g_current_activity_E()
          to label %.noexc1 unwind label %bb.k

.noexc1:                                          ; preds = %bb.g
  %.pre.i.i.i = load i16, ptr %i.h, align 2, !tbaa !13
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i

_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i: ; preds = %.noexc1, %bb.f
  %i.k = phi i16 [ %i.i, %bb.f ], [ %.pre.i.i.i, %.noexc1 ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core8Activity19g_current_activity_E)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47
  store i16 0, ptr %i.h, align 2, !tbaa !13
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke

_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread6: ; preds = %bb.b, %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit
  %i.n = load ptr, ptr %0, align 8, !tbaa !81     ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread6
  store i8 0, ptr %i.n, align 2, !tbaa !388
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 1, ptr %i.o, align 1, !tbaa !387
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 3 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !389  ; 2 uses
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i = icmp eq ptr @_ZTHN9grpc_core8Activity19g_current_activity_E, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZTHN9grpc_core8Activity19g_current_activity_E()
          to label %.noexc3 unwind label %bb.k

.noexc3:                                          ; preds = %bb.j
  %.pre.i.i = load i16, ptr %i.p, align 2, !tbaa !13
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i

_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i: ; preds = %.noexc3, %bb.i
  %i.s = phi i16 [ %i.q, %bb.i ], [ %.pre.i.i, %.noexc3 ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN9grpc_core8Activity19g_current_activity_E)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  store i16 0, ptr %i.p, align 2, !tbaa !13
  br label %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke

_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke: ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i
  %.sink = phi ptr [ %i.m, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i ], [ %i.u, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i ] ; 2 uses
  %i.v = phi i16 [ %i.k, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.i ], [ %i.s, %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i ]
  %i.w = load ptr, ptr %.sink, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %.sink, i16 noundef zeroext %i.v)
          to label %_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit unwind label %bb.k, !inline_history !384

_ZN9grpc_core37ClientInitialMetadataOutstandingToken8MaybeSetEb.exit: ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke, %bb.h, %bb.e, %bb.d, %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread, %_ZN9grpc_core41IsMetadataOutstandingTokenRefactorEnabledEv.exit.thread6
  ret void

bb.k:                                             ; preds = %_ZN9grpc_core14promise_detail7ContextINS_8ActivityEvE3getEv.exit.i.i.invoke, %bb.j, %bb.g, %bb.c
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable
}

declare noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef) local_unnamed_addr #5

declare void @_ZN9grpc_core8channelz10DataSource17SourceDestructingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef align 8 %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.245", align 8 ; 4 uses
  %5 = alloca %"class.std::unique_ptr.253", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !392 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106, !noalias !392
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load <2 x ptr>, ptr %i.b, align 8, !tbaa !110, !noalias !392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !noalias !392
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImpl, i64 16), ptr %i.a, align 8, !tbaa !49, !noalias !392
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9grpc_core8channelz12PropertyListE, i64 16), ptr %i.e, align 8, !tbaa !49, !noalias !392
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !110, !noalias !392
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.h, align 8, !tbaa !106, !noalias !392
  store ptr null, ptr %5, align 8, !tbaa !394
  store ptr %i.a, ptr %4, align 8, !tbaa !396
  invoke void @_ZN9grpc_core8channelz8DataSink7AddDataESt17basic_string_viewIcSt11char_traitsIcEESt10unique_ptrINS0_22DataSinkImplementation4DataESt14default_deleteIS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !112    ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit, label %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #30, !inline_history !3
  %.pre10 = load ptr, ptr %5, align 8, !tbaa !394 ; 2 uses
  %.not.i4 = icmp eq ptr %.pre10, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit
  call void @_ZNKSt14default_deleteIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplEclEPSA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.pre10)
  br label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit

_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %4, align 8, !tbaa !112    ; 3 uses
  %.not.i5 = icmp eq ptr %i.n, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit9, label %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit7

_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit7: ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #30, !inline_history !3
  %.pre = load ptr, ptr %5, align 8, !tbaa !394   ; 2 uses
  %.not.i8 = icmp eq ptr %.pre, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit7
  call void @_ZNKSt14default_deleteIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplEclEPSA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.pre)
  br label %_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit9

_ZNSt10unique_ptrIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplSt14default_deleteISA_EED2Ev.exit9: ; preds = %bb.d, %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit7, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN9grpc_core8channelz12PropertyList3SetIbEERS1_St17basic_string_viewIcSt11char_traitsIcEET_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, i1 noundef zeroext %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.332, align 1            ; 3 uses
  %5 = alloca %class.anon.332, align 1            ; 3 uses
  %6 = alloca %"class.std::variant.282", align 8  ; 5 uses
  %7 = alloca %"class.std::optional.276", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.a = zext i1 %3 to i8                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !399
  store i8 %i.a, ptr %6, align 8, !tbaa !114, !noalias !399
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 5, ptr %i.b, align 8, !tbaa !105, !noalias !399
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store i8 %i.a, ptr %7, align 8, !tbaa !114, !alias.scope !399
  store i8 5, ptr %i.c, align 8, !tbaa !105, !alias.scope !399
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i8 1, ptr %i.d, align 8, !tbaa !116, !alias.scope !399
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !399
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(33) %6)
          to label %_ZN9grpc_core8channelz20property_list_detail7WrapperIbvE4WrapB5cxx11Eb.exit unwind label %bb.b, !noalias !399

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #31, !noalias !399
  unreachable

_ZN9grpc_core8channelz20property_list_detail7WrapperIbvE4WrapB5cxx11Eb.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30, !noalias !399
  invoke void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 %7)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperIbvE4WrapB5cxx11Eb.exit
  %i.g = load i8, ptr %i.d, align 8, !tbaa !116, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  store i8 0, ptr %i.d, align 8, !tbaa !116
  %i.i = load i8, ptr %i.c, align 8
  %.not.i.i.i.i.i.i = icmp ne i8 %i.i, -1
  %or.cond.not.i.i.i = select i1 %i.h, i1 %.not.i.i.i.i.i.i, i1 false, !prof !117
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit, !prof !117

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %.noexc.i.i.i.i.i unwind label %bb.e

.noexc.i.i.i.i.i:                                 ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #31
  unreachable

_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev.exit: ; preds = %bb.c, %.noexc.i.i.i.i.i
  ret ptr %0

bb.f:                                             ; preds = %_ZN9grpc_core8channelz20property_list_detail7WrapperIbvE4WrapB5cxx11Eb.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #30
  resume { ptr, i32 } %i.l
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core8channelz12PropertyListD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.332, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i, label %bb.b, !prof !45

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %i.g)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i.i.i:                               ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !36
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN9grpc_core8channelz8DataSink7AddDataESt17basic_string_viewIcSt11char_traitsIcEESt10unique_ptrINS0_22DataSinkImplementation4DataESt14default_deleteIS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2, ptr noundef align 8 %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.261", align 8 ; 7 uses
  %5 = alloca %"class.std::unique_ptr.245", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !406, !noalias !404 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !120, !alias.scope !404
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8, !noalias !404
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %.06.i.i.i.i.i, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %.06.i.i.i.i.i, i32 %i.f acq_rel monotonic, align 8, !noalias !404 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !402

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !120, !alias.scope !404
  br label %_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit.thread

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.j = load atomic i32, ptr %i.d monotonic, align 8, !noalias !404
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit.thread, label %_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit

_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit.thread: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %bb.a
  store ptr null, ptr %4, align 8, !tbaa !409, !alias.scope !404
  br label %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit

_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !411, !noalias !404 ; 3 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !409, !alias.scope !404
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit
  %i.l = load i64, ptr %3, align 8, !tbaa !112
  store i64 %i.l, ptr %5, align 8, !tbaa !112
  store ptr null, ptr %3, align 8, !tbaa !112
  invoke void @_ZN9grpc_core8channelz22DataSinkImplementation7AddDataESt17basic_string_viewIcSt11char_traitsIcEESt10unique_ptrINS1_4DataESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 %1, ptr %2, ptr noundef nonnull align 8 %5)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %5, align 8, !tbaa !112    ; 3 uses
  %.not.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN9grpc_core8channelz22DataSinkImplementation4DataEEclEPS3_.exit.i

_ZNKSt14default_deleteIN9grpc_core8channelz22DataSinkImplementation4DataEEclEPS3_.exit.i: ; preds = %bb.f
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #30, !inline_history !3
  br label %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN9grpc_core8channelz22DataSinkImplementation4DataEEclEPS3_.exit.i, %bb.f, %_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit.thread, %_ZNKSt8weak_ptrIN9grpc_core8channelz22DataSinkImplementationEE4lockEv.exit
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !120  ; 8 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN9grpc_core8channelz22DataSinkImplementationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core8channelz22DataSinkImplementation4DataESt14default_deleteIS3_EED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.r, align 8, !tbaa !122
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !123
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30, !inline_history !403
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #30, !inline_history !403
  br label %_ZNSt12__shared_ptrIN9grpc_core8channelz22DataSinkImplementationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i5 = icmp eq i8 %i.ac, 0
end_hunk_0
begin_hunk_1_@_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev:bb.a
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZN9grpc_core8channelz12PropertyListD2Ev.exit

_ZN9grpc_core8channelz12PropertyListD2Ev.exit:    ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.332, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.f = load i8, ptr %i.e, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, label %bb.b, !prof !45

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %i.g)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !36
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.p = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i.i, label %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !106
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #33
  br label %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit

_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, %bb.d
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImpl6ToJsonB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN9grpc_core8channelz12PropertyList14TakeJsonObjectB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImpl9FillProtoEP19google_protobuf_AnyP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN9grpc_core8channelz12PropertyList7FillAnyEP19google_protobuf_AnyP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef %1, ptr noundef %2)
  ret void
}

declare void @_ZN9grpc_core8channelz12PropertyList14TakeJsonObjectB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::map") align 8, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

declare void @_ZN9grpc_core8channelz12PropertyList7FillAnyEP19google_protobuf_AnyP9upb_Arena(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIZN9grpc_core8channelz8DataSink7AddDataINS1_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_E8DataImplEclEPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.332, align 1            ; 3 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64
  %i.g = load i8, ptr %i.f, align 8, !tbaa !105
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.g, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, label %bb.c, !prof !45

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(33) %i.h)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.d

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #31
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !36
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.q = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i.i.i, label %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #33
  br label %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit

_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESM_EvT_SO_RSaIT0_E.exit.i.i.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 40) #33
  br label %bb.f

bb.f:                                             ; preds = %_ZZN9grpc_core8channelz8DataSink7AddDataINS0_12PropertyListEEEvSt17basic_string_viewIcSt11char_traitsIcEET_EN8DataImplD2Ev.exit, %bb.a
  ret void
}

declare void @_ZN9grpc_core8channelz12PropertyList11SetInternalESt17basic_string_viewIcSt11char_traitsIcEESt8optionalISt7variantIJS5_NSt7__cxx1112basic_stringIcS4_SaIcEEElmdbNS_8DurationENS_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINS0_18OtherPropertyValueEEEEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr, ptr noundef align 8) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.332, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !116, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i, i1 false, !prof !117
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZNSt17_Optional_payloadISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0ELb0EED2Ev.exit, !prof !117

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(41) %0)
          to label %.noexc.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZNSt17_Optional_payloadISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZNSt17_Optional_payloadISt7variantIJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS3_SaIcEEElmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %.noexc.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.332, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  %.not.i = icmp eq i8 %i.b, -1
  br i1 %.not.i, label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEE8_M_resetEv.exit, label %bb.b, !prof !45

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEE8_M_resetEv.exit

_ZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS4_SaIcEEElmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEE8_M_resetEv.exit: ; preds = %.noexc, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @__clang_call_terminate(ptr %i.d) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEElmdbN9grpc_core8DurationENSB_9TimestampEN4absl12lts_202505126StatusENSF_4TimeESt10shared_ptrINSB_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_SA_lmdbSC_SD_SG_SH_SL_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !105
  switch i8 %i.b, label %bb.m [
    i8 0, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit
    i8 1, label %bb.b
    i8 2, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit
    i8 3, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit
    i8 4, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit
    i8 5, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit
    i8 6, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit
    i8 7, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit
    i8 8, label %bb.c
    i8 9, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit
    i8 10, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !36
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #33
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !57     ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = inttoptr i64 %i.h to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !120  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.o, align 8, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !123
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #30, !inline_history !414
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #30, !inline_history !414
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !36
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !107
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.r, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.l, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit, !prof !45

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #30
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit

bb.m:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJSt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEElmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_SB_lmdbSD_SE_SH_SI_SM_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESR_SU_.exit: ; preds = %bb.b, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.h, %bb.f, %bb.a, %bb.d, %bb.c, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEESaISM_EEC2ERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 72
  %i.h = icmp ugt i64 %i.g, 128102389400760775
  br i1 %i.h, label %.noexc.i, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEE8allocateEmPKv.exit.i.i.i, !prof !45

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !102
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !106
  %i.n = load ptr, ptr %1, align 8, !tbaa !110    ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS6_ES8_lmdbN9grpc_core8DurationENSC_9TimestampEN4absl12lts_202505126StatusENSG_4TimeESt10shared_ptrINSC_8channelz18OtherPropertyValueEEEEESt6vectorISO_SaISO_EEEEPSO_SO_ET0_T_SX_SW_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEJRKSM_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.q, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEJRKSM_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %bb.c ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEJRKSM_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  invoke void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS3_ES5_lmdbN9grpc_core8DurationENS9_9TimestampEN4absl12lts_202505126StatusENSD_4TimeESt10shared_ptrINS9_8channelz18OtherPropertyValueEEEEEC2ERKSL_(ptr noundef nonnull align 8 dereferenceable(72) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt7variantIJSt17basic_string_viewIcS4_ES6_lmdbN9grpc_core8DurationENSA_9TimestampEN4absl12lts_202505126StatusENSE_4TimeESt10shared_ptrINSA_8channelz18OtherPropertyValueEEEEEJRKSM_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.d
end_hunk_1
