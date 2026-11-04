Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/sockaddr_utils?download=true
inline.NumInlined: 413
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z23grpc_sockaddr_to_stringB5cxx11PK21grpc_resolved_addressb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.cx

bb.cw:                                            ; preds = %.thread189, %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.thread, %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS7_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES7_T_Lb0EEE5valueEiE4typeELi0EEEOSB_.exit130, %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IS7_TnNSt9enable_ifIXsr17internal_statusor19IsConstructionValidILb0ES7_T_Lb0EEE5valueEiE4typeELi0EEEOSB_.exit, %bb.cu
  %i.ke = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.kf = icmp eq ptr %i.ke, %i.y
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.cw
  %i.kg = load i64, ptr %i.y, align 8, !tbaa !23
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.kh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.cx:                                            ; preds = %bb.bk, %bb.cv, %bb.bg, %bb.z, %bb.p, %bb.ar, %bb.ah
  %.pn92.pn = phi { ptr, i32 } [ %i.ft, %bb.bk ], [ %i.de, %bb.ar ], [ %.pn80.pn, %bb.bg ], [ %i.br, %bb.z ], [ %.pn89, %bb.p ], [ %.pn85, %bb.ah ], [ %.pn77, %bb.cv ]
  %i.ki = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.y
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %bb.cx
  %i.kk = load i64, ptr %i.y, align 8, !tbaa !23
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn92.pn
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

declare void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !35     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %_ZN4absl12lts_202505126Status5UnrefEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_ZN4absl12lts_202505126Status5UnrefEm.exit unwind label %bb.c

_ZN4absl12lts_202505126Status5UnrefEm.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #20
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef ptr @_Z14grpc_inet_ntopiPKvPcm(i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN9grpc_core12JoinHostPortB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr, i32 noundef) local_unnamed_addr #5

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z20grpc_sockaddr_to_uriB5cxx11PK21grpc_resolved_address(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Status", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %12 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.absl::lts_20250512::StatusOr.5", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::vector", align 8      ; 10 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %28 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %29 = alloca %struct.grpc_resolved_address, align 4 ; 15 uses
  %30 = alloca %"class.absl::lts_20250512::Status", align 8 ; 8 uses
  %31 = alloca %"class.absl::lts_20250512::StatusOr", align 8 ; 13 uses
  %32 = alloca %"class.absl::lts_20250512::StatusOr.5", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"class.std::vector", align 8      ; 7 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !21
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %28, i64 13, ptr nonnull @.str.10)
  %i.f = load i64, ptr %28, align 8, !tbaa !35    ; 2 uses
  store i64 %i.f, ptr %0, align 8, !tbaa !35
  store i64 55, ptr %28, align 8, !tbaa !35
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_ZN4absl12lts_202505126StatusD2Ev.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit unwind label %.body

.body:                                            ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %28) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %common.resume

_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit: ; preds = %bb.c
  %.pre158 = load i64, ptr %28, align 8, !tbaa !35 ; 2 uses
  %i.i = trunc i64 %.pre158 to i1
  br i1 %i.i, label %_ZN4absl12lts_202505126StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit
  %i.j = inttoptr i64 %.pre158 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.b, %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18
  br label %bb.ck

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #18
  %.not.i = icmp eq ptr %1, %29
  br i1 %.not.i, label %bb.g, label %.critedge.i, !prof !9

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull @.str, i32 noundef 112, ptr noundef nonnull @.str.1) #19
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #20
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #20
  unreachable

.critedge.i:                                      ; preds = %bb.f
  %i.n = load i16, ptr %1, align 4, !tbaa !12     ; 2 uses
  %i.o = icmp eq i16 %i.n, 10
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %i.s = load i32, ptr %i.r, align 1
  %i.t = zext i32 %i.s to i64
  %i.u = xor i64 %i.t, 4294901760
  %i.v = or i64 %i.q, %i.u
  %i.w = icmp ne i64 %i.v, 0
  %i.x = zext i1 %i.w to i32
  %.not28.i = icmp eq i32 %i.x, 0                 ; 2 uses
  br i1 %.not28.i, label %_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit, label %thread-pre-split

_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit: ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(120) %i.y, i8 0, i64 120, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4
  store i32 %i.ab, ptr %i.z, align 4
  store i16 2, ptr %29, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %29, i64 2
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %29, i64 128
  store i32 16, ptr %i.af, align 4, !tbaa !21
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit, %bb.i
  %.ph = phi ptr [ %1, %bb.i ], [ %29, %_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit ] ; 2 uses
  %.pr269 = load i16, ptr %.ph, align 2, !tbaa !12
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split, %.critedge.i
  %i.ag = phi i16 [ %.pr269, %thread-pre-split ], [ %i.n, %.critedge.i ] ; 4 uses
  %.not267 = phi i1 [ %.not28.i, %thread-pre-split ], [ false, %.critedge.i ] ; 5 uses
  %i.ah = phi ptr [ %.ph, %thread-pre-split ], [ %1, %.critedge.i ]
  switch i16 %i.ag, label %_Z28grpc_sockaddr_get_uri_schemePK21grpc_resolved_address.exit [
    i16 2, label %bb.p
    i16 10, label %bb.k
    i16 1, label %bb.x
    i16 40, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  br label %bb.p

_Z28grpc_sockaddr_get_uri_schemePK21grpc_resolved_address.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #18
  call void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %30, i64 20, ptr nonnull @.str.11)
  %i.ai = load i64, ptr %30, align 8, !tbaa !35   ; 2 uses
  store i64 %i.ai, ptr %0, align 8, !tbaa !35
  store i64 55, ptr %30, align 8, !tbaa !35
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.m, label %_ZN4absl12lts_202505126StatusD2Ev.exit41, !prof !9

bb.m:                                             ; preds = %_Z28grpc_sockaddr_get_uri_schemePK21grpc_resolved_address.exit
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit40 unwind label %.body38

.body38:                                          ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %bb.cj

_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit40: ; preds = %bb.m
  %.pre157 = load i64, ptr %30, align 8, !tbaa !35 ; 2 uses
  %i.al = trunc i64 %.pre157 to i1
  br i1 %i.al, label %_ZN4absl12lts_202505126StatusD2Ev.exit41, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit40
  %i.am = inttoptr i64 %.pre157 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.am)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit41 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit41:         ; preds = %_Z28grpc_sockaddr_get_uri_schemePK21grpc_resolved_address.exit, %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit40, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18
  br label %_ZL38grpc_sockaddr_to_uri_vsock_if_possibleB5cxx11PK21grpc_resolved_address.exit

bb.p:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.0.i.ph = phi ptr [ @.str.15, %bb.j ], [ @.str.13, %bb.l ], [ @.str.16, %bb.k ] ; 5 uses
  %i.ap = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.12, ptr noundef nonnull dereferenceable(1) %.0.i.ph) #23
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.q, label %bb.ax

bb.q:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18, !noalias !63
  store i64 30, ptr %14, align 8, !noalias !63
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.21, ptr %i.ar, align 8, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18, !noalias !63
  %i.as = zext nneg i16 %i.ag to i32
  %i.at = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.au = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.as, ptr noundef nonnull %i.at), !noalias !63
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  store i64 %i.ax, ptr %15, align 8, !tbaa !41, !noalias !63
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.at, ptr %i.ay, align 8, !tbaa !42, !noalias !63
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull align 8 dereferenceable(48) %15), !noalias !63
  %i.az = load ptr, ptr %13, align 8, !tbaa !37, !noalias !63
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !33, !noalias !63
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %12, i64 %i.bb, ptr %i.az)
          to label %bb.r unwind label %bb.v, !noalias !63

bb.r:                                             ; preds = %bb.q
  %i.bc = load i64, ptr %12, align 8, !tbaa !35, !noalias !63 ; 2 uses
  store i64 %i.bc, ptr %0, align 8, !tbaa !35, !alias.scope !63
  store i64 55, ptr %12, align 8, !tbaa !35, !noalias !63
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.s, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, !prof !9

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.i unwind label %.body.i

.body.i:                                          ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #18
  br label %bb.w

_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.i: ; preds = %bb.s
  %.pre.i = load i64, ptr %12, align 8, !tbaa !35, !noalias !63 ; 2 uses
  %i.bf = trunc i64 %.pre.i to i1
  br i1 %i.bf, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.i
  %i.bg = inttoptr i64 %.pre.i to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bg)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %bb.t, %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.i, %bb.r
  %i.bj = load ptr, ptr %13, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !23, !noalias !63
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !63
  br label %_ZL37grpc_sockaddr_to_uri_unix_if_possibleB5cxx11PK21grpc_resolved_address.exit

bb.v:                                             ; preds = %bb.q
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.body.i
  %.pn28.i = phi { ptr, i32 } [ %i.be, %.body.i ], [ %i.bo, %bb.v ]
  %i.bp = load ptr, ptr %13, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i: ; preds = %bb.w
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !23, !noalias !63
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !63
  br label %common.resume

bb.x:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !63
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 11 uses
  store ptr %i.bu, ptr %16, align 8, !tbaa !30, !noalias !63
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 0, ptr %i.bv, align 8, !tbaa !33, !noalias !63
  store i8 0, ptr %i.bu, align 8, !tbaa !23, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !63
  %i.bw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 13 uses
  store ptr %i.bw, ptr %17, align 8, !tbaa !30, !noalias !63
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 8 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !33, !noalias !63
  store i8 0, ptr %i.bw, align 8, !tbaa !23, !noalias !63
  %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not267, ptr %29, ptr %1
  %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 2 ; 3 uses
  %i.by = load i8, ptr %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel, align 2, !tbaa !23, !noalias !63
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  %spec.select.sroa.sel122.v.sroa.sel.v.sroa.sel.v = select i1 %.not267, ptr %29, ptr %1
  %spec.select.sroa.sel122.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel122.v.sroa.sel.v.sroa.sel.v, i64 3 ; 3 uses
  %i.ca = load i8, ptr %spec.select.sroa.sel122.v.sroa.sel.v.sroa.sel, align 1, !tbaa !23, !noalias !63
  %.not19.i = icmp eq i8 %i.ca, 0
  br i1 %.not19.i, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.22, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i unwind label %bb.ai, !noalias !63 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i: ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18, !noalias !63
  %.sroa.gep124 = getelementptr inbounds nuw i8, ptr %29, i64 128
  %spec.select.sroa.sel125 = select i1 %.not267, ptr %.sroa.gep124, ptr %i.c
  %i.cc = load i32, ptr %spec.select.sroa.sel125, align 4, !tbaa !21, !noalias !63
  %i.cd = zext i32 %i.cc to i64
  %i.ce = add nsw i64 %i.cd, -3                   ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  store ptr %i.cf, ptr %18, align 8, !tbaa !30, !noalias !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !63
  store i64 %i.ce, ptr %i.b, align 8, !tbaa !36, !noalias !63
  %i.cg = icmp ugt i64 %i.ce, 15
  br i1 %i.cg, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.ch = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i unwind label %bb.aj, !noalias !63 ; 2 uses

.noexc.i:                                         ; preds = %.noexc.i.i
  store ptr %i.ch, ptr %18, align 8, !tbaa !37, !noalias !63
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !63
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !23, !noalias !63
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i
  %i.cj = phi ptr [ %i.ch, %.noexc.i ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit.i ] ; 2 uses
  switch i64 %i.ce, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i
  %i.ck = load i8, ptr %spec.select.sroa.sel122.v.sroa.sel.v.sroa.sel, align 1, !tbaa !23, !noalias !63
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !23, !noalias !63
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr nonnull align 1 %spec.select.sroa.sel122.v.sroa.sel.v.sroa.sel, i64 %i.ce, i1 false), !noalias !63
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i.i
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !36, !noalias !63 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !33, !noalias !63
  %i.cn = load ptr, ptr %18, align 8, !tbaa !37, !noalias !63
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  store i8 0, ptr %i.co, align 1, !tbaa !23, !noalias !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !63
  %i.cp = load ptr, ptr %17, align 8, !tbaa !37, !noalias !63 ; 6 uses
  %i.cq = icmp eq ptr %i.cp, %i.bw
  %i.cr = load ptr, ptr %18, align 8, !tbaa !37, !noalias !63 ; 5 uses
  %i.cs = icmp eq ptr %i.cr, %i.cf                ; 2 uses
  br i1 %i.cq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  br i1 %i.cs, label %bb.ad, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ac
  br i1 %i.cs, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ct = load i64, ptr %i.cm, align 8, !tbaa !33, !noalias !63 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  switch i64 %i.ct, label %bb.af [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !23, !noalias !63
  store i8 %i.cv, ptr %i.cp, align 1, !tbaa !23, !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cr, i64 %i.ct, i1 false), !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.af, %bb.ae, %bb.ad
  %i.cw = load i64, ptr %i.cm, align 8, !tbaa !33, !noalias !63 ; 2 uses
  store i64 %i.cw, ptr %i.bx, align 8, !tbaa !33, !noalias !63
  %i.cx = load ptr, ptr %17, align 8, !tbaa !37, !noalias !63
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !23, !noalias !63
  %.pre.i.i = load ptr, ptr %18, align 8, !tbaa !37, !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.cr, ptr %17, align 8, !tbaa !37, !noalias !63
  %i.cz = load <2 x i64>, ptr %i.cm, align 8, !tbaa !23, !noalias !63
  store <2 x i64> %i.cz, ptr %i.bx, align 8, !tbaa !23, !noalias !63
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.da = load i64, ptr %i.bw, align 8, !tbaa !23, !noalias !63
  store ptr %i.cr, ptr %17, align 8, !tbaa !37, !noalias !63
  %i.db = load <2 x i64>, ptr %i.cm, align 8, !tbaa !23, !noalias !63
  store <2 x i64> %i.db, ptr %i.bx, align 8, !tbaa !23, !noalias !63
  %.not.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.cp, ptr %18, align 8, !tbaa !37, !noalias !63
  store i64 %i.da, ptr %i.cf, align 8, !tbaa !23, !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.cf, ptr %18, align 8, !tbaa !37, !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.dc = phi ptr [ %i.cp, %bb.ag ], [ %i.cf, %bb.ah ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.cm, align 8, !tbaa !33, !noalias !63
  store i8 0, ptr %i.dc, align 1, !tbaa !23, !noalias !63
  %i.dd = load ptr, ptr %18, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cf
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.df = load i64, ptr %i.cf, align 8, !tbaa !23, !noalias !63
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #22, !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit40.i

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit38.i, %bb.ak, %bb.z
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aj:                                            ; preds = %.noexc.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !63
  br label %bb.aw

bb.ak:                                            ; preds = %bb.y, %bb.x
  %i.dj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit38.i unwind label %bb.ai, !noalias !63 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit38.i: ; preds = %bb.ak
  %i.dk = load i64, ptr %i.bx, align 8, !tbaa !33, !noalias !63
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel) #18, !noalias !63
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %i.dk, ptr noundef nonnull %spec.select.sroa.sel.v.sroa.sel.v.sroa.sel, i64 noundef %i.dl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit40.i unwind label %bb.ai, !noalias !63 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit40.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit38.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18, !noalias !63
  %i.dn = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.dn, ptr %20, align 8, !tbaa !30, !noalias !63
  %i.do = load ptr, ptr %16, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.bu
  br i1 %i.dp, label %bb.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i41.i

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit40.i
  %i.dq = load i64, ptr %i.bv, align 8, !tbaa !33, !noalias !63 ; 3 uses
  %i.dr = icmp ult i64 %i.dq, 16
  call void @llvm.assume(i1 %i.dr)
  %i.ds = add nuw nsw i64 %i.dq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.ds, i1 false), !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i41.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit40.i
  store ptr %i.do, ptr %20, align 8, !tbaa !37, !noalias !63
  %i.dt = load i64, ptr %i.bu, align 8, !tbaa !23, !noalias !63
  store i64 %i.dt, ptr %i.dn, align 8, !tbaa !23, !noalias !63
  %.pre109.i = load i64, ptr %i.bv, align 8, !tbaa !33, !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i41.i, %bb.al
  %i.du = phi i64 [ %i.dq, %bb.al ], [ %.pre109.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i41.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !33, !noalias !63
  store ptr %i.bu, ptr %16, align 8, !tbaa !37, !noalias !63
  store i64 0, ptr %i.bv, align 8, !tbaa !33, !noalias !63
  store i8 0, ptr %i.bu, align 8, !tbaa !23, !noalias !63
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.dw, ptr %21, align 8, !tbaa !30, !noalias !63
  %i.dx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.dx, align 8, !tbaa !33, !noalias !63
  store i8 0, ptr %i.dw, align 8, !tbaa !23, !noalias !63
  %i.dy = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.dy, ptr %22, align 8, !tbaa !30, !noalias !63
  %i.dz = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 0, ptr %i.dz, align 8, !tbaa !33, !noalias !63
  store i8 0, ptr %i.dy, align 8, !tbaa !23, !noalias !63
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.ea, ptr %23, align 8, !tbaa !30, !noalias !63
  %i.eb = load ptr, ptr %17, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.bw
  br i1 %i.ec, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i49.i

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ed = load i64, ptr %i.bx, align 8, !tbaa !33, !noalias !63 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(1) %i.bw, i64 %i.ef, i1 false), !noalias !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit50.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i49.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
end_hunk_0
begin_hunk_1_@_Z20grpc_sockaddr_to_uriB5cxx11PK21grpc_resolved_address:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !63
  %i.hu = load ptr, ptr %17, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, %i.bw
  br i1 %i.hv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core3URIEED2Ev.exit.i
  %i.hw = load i64, ptr %i.bw, align 8, !tbaa !23, !noalias !63
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i: ; preds = %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core3URIEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !63
  %i.hy = load ptr, ptr %16, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.bu
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i
  %i.ia = load i64, ptr %i.bu, align 8, !tbaa !23, !noalias !63
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !63
  br label %_ZL37grpc_sockaddr_to_uri_unix_if_possibleB5cxx11PK21grpc_resolved_address.exit

.body70.i:                                        ; preds = %bb.ar
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #18, !noalias !63
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core3URIEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %19) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %.body70.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i
  %.pn23.pn.pn.i = phi { ptr, i32 } [ %i.ic, %.body70.i ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !63
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, %bb.aj, %bb.ai
  %.pn23.pn.pn.pn.i = phi { ptr, i32 } [ %.pn23.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ], [ %i.di, %bb.aj ], [ %i.dh, %bb.ai ]
  %i.id = load ptr, ptr %17, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.bw
  br i1 %i.ie, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i: ; preds = %bb.aw
  %i.if = load i64, ptr %i.bw, align 8, !tbaa !23, !noalias !63
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !63
  %i.ih = load ptr, ptr %16, align 8, !tbaa !37, !noalias !63 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.bu
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i
  %i.ij = load i64, ptr %i.bu, align 8, !tbaa !23, !noalias !63
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.ik) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !63
  br label %common.resume

common.resume:                                    ; preds = %.body, %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i
  %common.resume.op = phi { ptr, i32 } [ %.pn23.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ], [ %.pn28.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i ], [ %i.h, %.body ], [ %.pn34, %bb.cj ]
  resume { ptr, i32 } %common.resume.op

_ZL37grpc_sockaddr_to_uri_unix_if_possibleB5cxx11PK21grpc_resolved_address.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %_ZL38grpc_sockaddr_to_uri_vsock_if_possibleB5cxx11PK21grpc_resolved_address.exit

bb.ax:                                            ; preds = %bb.p
  %i.il = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.13, ptr noundef nonnull dereferenceable(1) %.0.i.ph) #23
  %i.im = icmp eq i32 %i.il, 0
  br i1 %i.im, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %.not.i43 = icmp eq i16 %i.ag, 40
  br i1 %.not.i43, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !64
  store i64 31, ptr %5, align 8, !noalias !64
  %i.in = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.23, ptr %i.in, align 8, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18, !noalias !64
  %i.io = zext nneg i16 %i.ag to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.iq = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.io, ptr noundef nonnull %i.ip), !noalias !64
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = sub i64 %i.ir, %i.is
  store i64 %i.it, ptr %6, align 8, !tbaa !41, !noalias !64
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ip, ptr %i.iu, align 8, !tbaa !42, !noalias !64
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6), !noalias !64
  %i.iv = load ptr, ptr %4, align 8, !tbaa !37, !noalias !64
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !33, !noalias !64
  invoke void @_ZN4absl12lts_2025051220InvalidArgumentErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %3, i64 %i.ix, ptr %i.iv)
          to label %bb.ba unwind label %bb.be, !noalias !64

bb.ba:                                            ; preds = %bb.az
  %i.iy = load i64, ptr %3, align 8, !tbaa !35, !noalias !64 ; 2 uses
  store i64 %i.iy, ptr %0, align 8, !tbaa !35, !alias.scope !64
  store i64 55, ptr %3, align 8, !tbaa !35, !noalias !64
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %bb.bb, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i44, !prof !9

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN4absl12lts_2025051217internal_statusor6Helper26HandleInvalidStatusCtorArgEPNS0_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.i49 unwind label %.body.i48

.body.i48:                                        ; preds = %bb.bb
  %i.ja = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  br label %bb.bf

_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.i49: ; preds = %bb.bb
  %.pre.i50 = load i64, ptr %3, align 8, !tbaa !35, !noalias !64 ; 2 uses
  %i.jb = trunc i64 %.pre.i50 to i1
  br i1 %i.jb, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i44, label %bb.bc

bb.bc:                                            ; preds = %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.i49
  %i.jc = inttoptr i64 %.pre.i50 to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.jc)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit.i44 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jd = landingpad { ptr, i32 }
          catch ptr null
  %i.je = extractvalue { ptr, i32 } %i.jd, 0
  call void @__clang_call_terminate(ptr %i.je) #20
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit.i44:       ; preds = %bb.bc, %_ZN4absl12lts_202505128StatusOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS0_6StatusETnNSt9enable_ifIXsr17internal_statusor29IsConstructionFromStatusValidILb0ES7_T_EE5valueEiE4typeELi0EEEOSC_.exit.i49, %bb.ba
  %i.jf = load ptr, ptr %4, align 8, !tbaa !37, !noalias !64 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i44
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !23, !noalias !64
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i46: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !64
  br label %_ZL38grpc_sockaddr_to_uri_vsock_if_possibleB5cxx11PK21grpc_resolved_address.exit

bb.be:                                            ; preds = %bb.az
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.body.i48
  %.pn.i = phi { ptr, i32 } [ %i.ja, %.body.i48 ], [ %i.jk, %bb.be ]
  %i.jl = load ptr, ptr %4, align 8, !tbaa !37, !noalias !64 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.bf
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !23, !noalias !64
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18, !noalias !64
  br label %common.resume

bb.bg:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !64
  store i64 6, ptr %8, align 8, !noalias !64
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.24, ptr %i.jq, align 8, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !64
  %spec.select.sroa.sel128.v.sroa.sel.v.sroa.sel.v = select i1 %.not267, ptr %29, ptr %1
  %spec.select.sroa.sel128.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel128.v.sroa.sel.v.sroa.sel.v, i64 8
  %i.jr = load i32, ptr %spec.select.sroa.sel128.v.sroa.sel.v.sroa.sel, align 4, !tbaa !39, !noalias !64
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.jt = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %i.jr, ptr noundef nonnull %i.js), !noalias !64
  %i.ju = ptrtoint ptr %i.jt to i64
  %i.jv = ptrtoint ptr %i.js to i64
  %i.jw = sub i64 %i.ju, %i.jv
  store i64 %i.jw, ptr %9, align 8, !tbaa !41, !noalias !64
  %i.jx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.js, ptr %i.jx, align 8, !tbaa !42, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !64
  store i64 1, ptr %10, align 8, !noalias !64
  %i.jy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.7, ptr %i.jy, align 8, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !64
  %spec.select.sroa.sel131.v.sroa.sel.v.sroa.sel.v = select i1 %.not267, ptr %29, ptr %1
  %spec.select.sroa.sel131.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel131.v.sroa.sel.v.sroa.sel.v, i64 4
  %i.jz = load i32, ptr %spec.select.sroa.sel131.v.sroa.sel.v.sroa.sel, align 4, !tbaa !43, !noalias !64
  %i.ka = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.kb = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %i.jz, ptr noundef nonnull %i.ka), !noalias !64
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = sub i64 %i.kc, %i.kd
  store i64 %i.ke, ptr %11, align 8, !tbaa !41, !noalias !64
  %i.kf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ka, ptr %i.kf, align 8, !tbaa !42, !noalias !64
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11), !noalias !64
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.kh, ptr %i.kg, align 8, !tbaa !30, !alias.scope !64
  %i.ki = load ptr, ptr %7, align 8, !tbaa !37, !noalias !64 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.kk = icmp eq ptr %i.ki, %i.kj
  br i1 %i.kk, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51

bb.bh:                                            ; preds = %bb.bg
  %i.kl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !33, !noalias !64 ; 3 uses
  %i.kn = icmp ult i64 %i.km, 16
  call void @llvm.assume(i1 %i.kn)
  %i.ko = add nuw nsw i64 %i.km, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.kh, ptr noundef nonnull align 8 dereferenceable(1) %i.kj, i64 %i.ko, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51: ; preds = %bb.bg
  store ptr %i.ki, ptr %i.kg, align 8, !tbaa !37, !alias.scope !64
  %i.kp = load i64, ptr %i.kj, align 8, !tbaa !23, !noalias !64
  store i64 %i.kp, ptr %i.kh, align 8, !tbaa !23, !alias.scope !64
  %.phi.trans.insert.i52 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre20.i = load i64, ptr %.phi.trans.insert.i52, align 8, !tbaa !33, !noalias !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51, %bb.bh
  %i.kq = phi i64 [ %.pre20.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i51 ], [ %i.km, %bb.bh ]
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.kq, ptr %i.kr, align 8, !tbaa !33, !alias.scope !64
  store i64 1, ptr %0, align 8, !tbaa !35, !alias.scope !64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !64
  br label %_ZL38grpc_sockaddr_to_uri_vsock_if_possibleB5cxx11PK21grpc_resolved_address.exit

bb.bi:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18
  call void @_Z23grpc_sockaddr_to_stringB5cxx11PK21grpc_resolved_addressb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr") align 8 %31, ptr noundef nonnull %i.ah, i1 noundef zeroext false)
  %i.ks = load i64, ptr %31, align 8, !tbaa !35   ; 2 uses
  %i.kt = icmp eq i64 %i.ks, 1
  br i1 %i.kt, label %bb.bj, label %.thread146

.thread146:                                       ; preds = %bb.bi
  store i64 %i.ks, ptr %0, align 8, !tbaa !35
  br label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18
  %i.ku = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  store ptr %i.ku, ptr %33, align 8, !tbaa !30
  %i.kv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i.ph) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.kv, ptr %i.a, align 8, !tbaa !36
  %i.kw = icmp ugt i64 %i.kv, 15
  br i1 %i.kw, label %.noexc.i54, label %._crit_edge.i.i

.noexc.i54:                                       ; preds = %bb.bj
  %i.kx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc55 unwind label %bb.bx  ; 2 uses

.noexc55:                                         ; preds = %.noexc.i54
  store ptr %i.kx, ptr %33, align 8, !tbaa !37
  %i.ky = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.ky, ptr %i.ku, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc55, %bb.bj
  %i.kz = phi ptr [ %i.kx, %.noexc55 ], [ %i.ku, %bb.bj ] ; 2 uses
  switch i64 %i.kv, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %._crit_edge.i.i56
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.la = load i8, ptr %.0.i.ph, align 1, !tbaa !23
  store i8 %i.la, ptr %i.kz, align 1, !tbaa !23
  br label %._crit_edge.i.i56

bb.bl:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr nonnull align 1 %.0.i.ph, i64 %i.kv, i1 false)
  br label %._crit_edge.i.i56

._crit_edge.i.i56:                                ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i
  %i.lb = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !33
  %i.ld = load ptr, ptr %33, align 8, !tbaa !37
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  store i8 0, ptr %i.le, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.lf = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.lf, ptr %34, align 8, !tbaa !30
  %i.lg = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.lg, align 8, !tbaa !33
  store i8 0, ptr %i.lf, align 8, !tbaa !23
  %i.lh = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.lh, ptr %35, align 8, !tbaa !30
  %i.li = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 0, ptr %i.li, align 8, !tbaa !33
  store i8 0, ptr %i.lh, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.lj = load i64, ptr %31, align 8, !tbaa !35   ; 4 uses
  %i.lk = icmp eq i64 %i.lj, 1
  br i1 %i.lk, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge.i.i56
  store i64 %i.lj, ptr %2, align 8, !tbaa !35
  %i.ll = trunc i64 %i.lj to i1
  br i1 %i.ll, label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lm = inttoptr i64 %i.lj to ptr
  %i.ln = atomicrmw add ptr %i.lm, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i

_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i:     ; preds = %bb.bn, %bb.bm
  invoke void @_ZN4absl12lts_2025051217internal_statusor22ThrowBadStatusOrAccessENS0_6StatusE(ptr noundef nonnull align 8 %2) #24
          to label %bb.bo unwind label %bb.bp

bb.bo:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  unreachable

bb.bp:                                            ; preds = %_ZN4absl12lts_202505126StatusC2ERKS1_.exit.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #18
  br label %.body64

bb.bq:                                            ; preds = %._crit_edge.i.i56
  %i.lp = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.lq = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  store ptr %i.lq, ptr %36, align 8, !tbaa !30
  %i.lr = load ptr, ptr %i.lp, align 8, !tbaa !37 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 7 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.lu = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !33 ; 3 uses
  %i.lw = icmp ult i64 %i.lv, 16
  call void @llvm.assume(i1 %i.lw)
  %i.lx = add nuw nsw i64 %i.lv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lq, ptr noundef nonnull align 8 dereferenceable(1) %i.ls, i64 %i.lx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.bq
  store ptr %i.lr, ptr %36, align 8, !tbaa !37
  %i.ly = load i64, ptr %i.ls, align 8, !tbaa !23
  store i64 %i.ly, ptr %i.lq, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %31, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.lz = phi i64 [ %i.lv, %bb.br ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ma = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.mb = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.lz, ptr %i.mb, align 8, !tbaa !33
  store ptr %i.ls, ptr %i.lp, align 8, !tbaa !37
  store i64 0, ptr %i.ma, align 8, !tbaa !33
  store i8 0, ptr %i.ls, align 8, !tbaa !23
  %i.mc = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %37, i8 0, i64 24, i1 false)
  store ptr %i.mc, ptr %38, align 8, !tbaa !30
  %i.md = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 0, ptr %i.md, align 8, !tbaa !33
  store i8 0, ptr %i.mc, align 8, !tbaa !23
  invoke void @_ZN9grpc_core3URI6CreateENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_St6vectorINS0_10QueryParamESaIS8_EES6_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.5") align 8 %32, ptr noundef nonnull align 8 %33, ptr noundef nonnull align 8 %34, ptr noundef nonnull align 8 %35, ptr noundef nonnull align 8 %36, ptr noundef nonnull align 8 %37, ptr noundef nonnull align 8 %38)
          to label %bb.bs unwind label %bb.by

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.me = load ptr, ptr %38, align 8, !tbaa !37   ; 2 uses
  %i.mf = icmp eq ptr %i.me, %i.mc
  br i1 %i.mf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.bs
  %i.mg = load i64, ptr %i.mc, align 8, !tbaa !23
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.me, i64 noundef %i.mh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  %i.mi = load ptr, ptr %37, align 8, !tbaa !46   ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !47 ; 2 uses
end_hunk_1
