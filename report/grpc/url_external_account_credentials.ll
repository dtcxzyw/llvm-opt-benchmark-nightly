Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/url_external_account_credentials?download=true
inline.NumInlined: 1707
inline.NumDeleted: 958
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_:bb.a

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !69  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !254

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !53   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !53   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !50
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #26 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !19
  store i64 %i.a, ptr %0, align 8, !tbaa !19
  store i64 55, ptr %1, align 8, !tbaa !19
  %i.b = load i64, ptr %0, align 8, !tbaa !19
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr3std16is_constructibleISB_OT_EE5valueEiE4typeELi0EEESE_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN9grpc_core26ExternalAccountCredentials13NoOpFetchBodyC1ERN17grpc_event_engine12experimental11EventEngineEN4absl12lts_2025051212AnyInvocableIFvNS7_8StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEESG_(ptr noundef nonnull align 16 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef align 16, ptr noundef align 8) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.b

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit
  %i.g = load i64, ptr %i.e, align 8, !tbaa !43
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.a to i1
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %bb.c, %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN9grpc_core26ExternalAccountCredentials13HttpFetchBodyC1EN4absl12lts_2025051211FunctionRefIFSt10unique_ptrINS_11HttpRequestENS_16OrphanableDeleteEEP18grpc_http_responseP12grpc_closureEEENS3_12AnyInvocableIFvNS3_8StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE(ptr noundef nonnull align 16 dereferenceable(144), ptr, ptr, ptr noundef align 16) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core29UrlExternalAccountCredentials20RetrieveSubjectTokenENS3_9TimestampENS0_12AnyInvocableIFvNS0_8StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEE3$_0St10unique_ptrINS3_11HttpRequestENS3_16OrphanableDeleteEEJP18grpc_http_responseP12grpc_closureEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE"(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.146") align 8 %0, ptr nofree readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.grpc_http_request, align 8  ; 9 uses
  %5 = alloca %"class.grpc_core::RefCountedPtr.187", align 8 ; 4 uses
  %6 = alloca %"class.grpc_core::URI", align 8    ; 6 uses
  %7 = alloca %"class.grpc_core::RefCountedPtr.187", align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !269
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !269
  %i.a = load ptr, ptr %1, align 8, !tbaa !98, !noalias !270 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !270
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !noalias !270
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50, !noalias !270
  %i.d = tail call ptr @gpr_strdup(ptr noundef %i.c), !noalias !270
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !274, !noalias !270
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 904
  %i.g = load i64, ptr %i.f, align 8, !tbaa !62, !noalias !270 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.g, ptr %i.h, align 8, !tbaa !275, !noalias !270
  %i.i = shl i64 %i.g, 4
  %i.j = tail call ptr @gpr_malloc(i64 noundef %i.i), !noalias !270 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60, !noalias !270 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 872 ; 2 uses
  %.not46.i.i.i.i = icmp eq ptr %i.l, %i.m
  br i1 %.not46.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.j, ptr %i.n, align 8, !tbaa !276, !noalias !270
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53, !noalias !270
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50, !noalias !270
  %i.t = load i32, ptr %i.s, align 1
  %i.u = icmp ne i32 %i.t, 1886680168
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.038.047.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %i.l, %bb.a ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.038.047.i.i.i.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50, !noalias !270
  %i.z = tail call ptr @gpr_strdup(ptr noundef %i.y), !noalias !270
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv.i.i.i.i ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !278, !noalias !270
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.047.i.i.i.i, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50, !noalias !270
  %i.ad = tail call ptr @gpr_strdup(ptr noundef %i.ac), !noalias !270
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !279, !noalias !270
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.038.047.i.i.i.i) #31, !noalias !270 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.m
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i.i
  %i.ag = tail call ptr @grpc_insecure_credentials_create(), !noalias !270
  br label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i.i, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26, !noalias !270
  call void @_ZN9grpc_core31CreateHttpRequestSSLCredentialsEv(ptr dead_on_unwind nonnull writable sret(%"class.grpc_core::RefCountedPtr.187") align 8 %5), !noalias !270
  %i.ah = load ptr, ptr %5, align 8, !tbaa !281, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26, !noalias !270
  br label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit.i.i.i.i

_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i.i
  %.sroa.032.0.i.i.i.i = phi ptr [ %i.ah, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread41.i.i.i.i ], [ %i.ag, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i.i.i ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !282, !noalias !270, !nonnull !113, !align !119 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !19, !noalias !270
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.c, label %bb.b, !prof !133

bb.b:                                             ; preds = %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit.i.i.i.i
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper5CrashERKNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(240) %i.aj) #30
          to label %.noexc.i.i.i.i unwind label %_ZNSt10unique_ptrIN9grpc_core11HttpRequestENS0_16OrphanableDeleteEED2Ev.exit.i.i.i.i, !noalias !270

.noexc.i.i.i.i:                                   ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @_ZN9grpc_core3URIC2EOS0_(ptr noundef nonnull align 8 dereferenceable(232) %6, ptr noundef nonnull align 8 dereferenceable(232) %i.am) #26, !noalias !270
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !283, !noalias !270, !nonnull !113, !align !119
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !75, !noalias !270
  store ptr %.sroa.032.0.i.i.i.i, ptr %7, align 8, !tbaa !285, !noalias !270
  invoke void @_ZN9grpc_core11HttpRequest3GetENS_3URIEPK17grpc_channel_argsP19grpc_polling_entityPK17grpc_http_requestNS_9TimestampEP12grpc_closureP18grpc_http_responseNS_13RefCountedPtrI24grpc_channel_credentialsEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.146") align 8 %0, ptr noundef nonnull align 8 %6, ptr noundef null, ptr noundef nonnull %i.an, ptr noundef nonnull %4, i64 %.sroa.0.0.copyload.i.i.i.i, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 %7)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %7, align 8, !tbaa !285, !noalias !270 ; 4 uses
  %.not.i22.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i22.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit23.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = atomicrmw add ptr %i.ar, i64 -1 acq_rel, align 8
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.f, label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit23.i.i.i.i, !prof !26

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #26, !inline_history !263
  br label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit23.i.i.i.i

_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit23.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @_ZN9grpc_core3URID2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %6) #26
  %i.ax = load ptr, ptr %0, align 8, !tbaa !287, !alias.scope !270
  invoke void @_ZN9grpc_core11HttpRequest5StartEv(ptr noundef nonnull align 8 dereferenceable(5088) %i.ax)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit23.i.i.i.i
  invoke void @_Z25grpc_http_request_destroyP17grpc_http_request(ptr noundef nonnull %4)
          to label %"_ZSt6invokeIRKZN9grpc_core29UrlExternalAccountCredentials20RetrieveSubjectTokenENS0_9TimestampEN4absl12lts_2025051212AnyInvocableIFvNS4_8StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEE3$_0JP18grpc_http_responseP12grpc_closureEENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit" unwind label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %7, align 8, !tbaa !285, !noalias !270 ; 4 uses
  %.not.i24.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i24.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit25.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 acq_rel, align 8
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.j, label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit25.i.i.i.i, !prof !26

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #26, !inline_history !263
  br label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit25.i.i.i.i

_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit25.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h
  call void @_ZN9grpc_core3URID2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %6) #26
  br label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit30.i.i.i.i

bb.k:                                             ; preds = %bb.g, %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit23.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !287, !alias.scope !270 ; 3 uses
  %.not.i26.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i26.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit30.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !28
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(5088) %i.bh)
          to label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit30.i.i.i.i unwind label %bb.m, !inline_history !264

bb.m:                                             ; preds = %bb.l
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #27
  unreachable

_ZNSt10unique_ptrIN9grpc_core11HttpRequestENS0_16OrphanableDeleteEED2Ev.exit.i.i.i.i: ; preds = %bb.b
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i29.i.i.i.i = icmp eq ptr %.sroa.032.0.i.i.i.i, null
  br i1 %.not.i29.i.i.i.i, label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit30.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN9grpc_core11HttpRequestENS0_16OrphanableDeleteEED2Ev.exit.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.0.i.i.i.i, i64 8
  %i.bo = atomicrmw add ptr %i.bn, i64 -1 acq_rel, align 8, !noalias !270
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.o, label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit30.i.i.i.i, !prof !26

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %.sroa.032.0.i.i.i.i, align 8, !tbaa !28, !noalias !270
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !270
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.032.0.i.i.i.i) #26, !noalias !270, !inline_history !263
  br label %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit30.i.i.i.i

_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit30.i.i.i.i: ; preds = %bb.o, %bb.n, %_ZNSt10unique_ptrIN9grpc_core11HttpRequestENS0_16OrphanableDeleteEED2Ev.exit.i.i.i.i, %bb.l, %bb.k, %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit25.i.i.i.i
  %.pn45.i.i.i.i = phi { ptr, i32 } [ %i.bm, %bb.o ], [ %i.bm, %_ZNSt10unique_ptrIN9grpc_core11HttpRequestENS0_16OrphanableDeleteEED2Ev.exit.i.i.i.i ], [ %i.bm, %bb.n ], [ %i.bg, %bb.l ], [ %i.bg, %bb.k ], [ %i.ay, %_ZN9grpc_core13RefCountedPtrI24grpc_channel_credentialsED2Ev.exit25.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !270
  resume { ptr, i32 } %.pn45.i.i.i.i

"_ZSt6invokeIRKZN9grpc_core29UrlExternalAccountCredentials20RetrieveSubjectTokenENS0_9TimestampEN4absl12lts_2025051212AnyInvocableIFvNS4_8StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEE3$_0JP18grpc_http_responseP12grpc_closureEENSt13invoke_resultIT_JDpT0_EE4typeEOSO_DpOSP_.exit": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !270
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !269
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !269
  ret void
}

declare ptr @gpr_strdup(ptr noundef) local_unnamed_addr #4

declare ptr @gpr_malloc(i64 noundef) local_unnamed_addr #4

declare ptr @grpc_insecure_credentials_create() local_unnamed_addr #4

declare void @_ZN9grpc_core31CreateHttpRequestSSLCredentialsEv(ptr dead_on_unwind writable sret(%"class.grpc_core::RefCountedPtr.187") align 8) local_unnamed_addr #4

declare void @_ZN9grpc_core11HttpRequest3GetENS_3URIEPK17grpc_channel_argsP19grpc_polling_entityPK17grpc_http_requestNS_9TimestampEP12grpc_closureP18grpc_http_responseNS_13RefCountedPtrI24grpc_channel_credentialsEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.146") align 8, ptr noundef align 8, ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, ptr noundef, ptr noundef align 8) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN9grpc_core3URIC2EOS0_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(232) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !52
  %i.b = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !50
  %i.i = load i64, ptr %i.c, align 8, !tbaa !43
  store i64 %i.i, ptr %i.a, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !53
  store ptr %i.c, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.j, align 8, !tbaa !53
  store i8 0, ptr %i.c, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !52
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53   ; 2 uses
  %i.u = icmp ult i64 %i.t, 16
end_hunk_0
