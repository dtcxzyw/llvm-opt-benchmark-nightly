Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/flow_control?download=true
inline.NumInlined: 491
inline.NumDeleted: 249
begin_hunk_0_@_ZNK9grpc_core6chttp220TransportFlowControl13target_windowEv:bb.a
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.d, i64 1)
  %i.e = add nsw i64 %.sroa.speculated, %i.b
  %.sroa.speculated4 = tail call i64 @llvm.smin.i64(i64 %i.e, i64 2147483647)
  %i.f = and i64 %.sroa.speculated4, 4294967295
  ret i64 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9grpc_core6chttp220TransportFlowControl10SentUpdateEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = add nsw i64 %i.c, %i.a
  store i64 %i.d, ptr %i.b, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN9grpc_core6chttp217StreamFlowControlC2EPNS0_20TransportFlowControlE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 32), (40, 41)) %0, ptr noundef %1) unnamed_addr #7 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.b, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core6chttp217StreamFlowControl21IncomingUpdateContext8RecvDataEl(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %1, ptr %3, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !123
  call void @_ZN9grpc_core6chttp220TransportFlowControl21IncomingUpdateContext8RecvDataElN4absl12lts_2025051211FunctionRefIFNS4_6StatusEvEEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, ptr nonnull %3, ptr nonnull @"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core6chttp217StreamFlowControl21IncomingUpdateContext8RecvDataElE3$_0NS0_6StatusEJEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE")
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core6chttp220TransportFlowControl21IncomingUpdateContext8RecvDataElN4absl12lts_2025051211FunctionRefIFNS4_6StatusEvEEE(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr %3, ptr nofree readonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [2 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::Status", align 8 ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp sgt i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.c to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !127
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %5, align 8, !tbaa !24, !noalias !127
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.g, align 8, !tbaa !76, !noalias !127
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !24, !noalias !127
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.i, align 8, !tbaa !76, !noalias !127
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.17, i64 47, ptr nonnull %5, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !127
  %i.j = load ptr, ptr %6, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  invoke void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8 %0, i64 %i.l, ptr %i.j)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %6, align 8, !tbaa !22     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !24
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %6, align 8, !tbaa !22     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !24
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.r

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void %4(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::Status") align 8 %7, ptr %3), !inline_history !126
  %i.x = load i64, ptr %7, align 8, !tbaa !78     ; 2 uses
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %_ZN4absl12lts_202505126StatusD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %1, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57
  %i.ac = sub nsw i64 %i.ab, %2
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !57
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit

_ZN4absl12lts_202505126StatusD2Ev.exit:           ; preds = %bb.e, %bb.f
  store i64 %i.x, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

declare void @_ZN4absl12lts_2025051213InternalErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::Status") align 8, i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9grpc_core6chttp220TransportFlowControl12UpdateActionENS0_17FlowControlActionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.grpc_core::chttp2::FlowControlAction") align 4 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr nofree noundef byval(%"class.grpc_core::chttp2::FlowControlAction") align 8 captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i64, ptr %i.c, align 8, !tbaa !61
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.d, i64 1)
  %i.e = add nsw i64 %.sroa.speculated.i, %i.b
  %.sroa.speculated4.i = tail call i64 @llvm.smin.i64(i64 %i.e, i64 2147483647)
  %i.f = and i64 %.sroa.speculated4.i, 4294967295
  %i.g = add nuw nsw i64 %i.f, 1
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load i64, ptr %i.i, align 8, !tbaa !57
  %i.k = icmp slt i64 %i.j, %i.h
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 1, ptr %i.l, align 1, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !81
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.grpc_core::BasicMemoryQuota::PressureInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !82
  %i.c = sitofp i64 %i.b to double
  %i.d = fmul nnan double %i.c, 2.000000e+00      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.e = load ptr, ptr %0, align 8, !tbaa !52
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87, !noalias !132 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.thread, label %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit

_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.g = fcmp ogt double %i.d, f0x4150000000000000
  %.sroa.speculated14 = select i1 %i.g, double %i.d, double f0x4150000000000000
  br label %bb.f

_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90, !noalias !133
  call void @_ZN9grpc_core16BasicMemoryQuota15GetPressureInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.grpc_core::BasicMemoryQuota::PressureInfo") align 8 %1, ptr noundef nonnull align 8 dereferenceable(1512) %i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !92 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  %i.j = fcmp ogt double %i.d, f0x4150000000000000
  %.sroa.speculated = select i1 %i.j, double %i.d, double f0x4150000000000000 ; 3 uses
  %i.k = fcmp olt double %.pre, 2.000000e-01
  br i1 %i.k, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit
  %i.l = fcmp olt double %.pre, 5.000000e-01
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = fsub double %i.d, %.sroa.speculated
  %i.n = fadd nnan ninf double %.pre, -2.000000e-01
  %i.o = fmul double %i.m, %i.n
  %i.p = fdiv double %i.o, 3.000000e-01
  %i.q = fadd double %.sroa.speculated, %i.p
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = fcmp olt double %.pre, 1.000000e+00
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = fsub nnan double 0.000000e+00, %i.d
  %i.t = fadd nnan ninf double %.pre, -5.000000e-01
  %i.u = fmul double %i.s, %i.t
  %i.v = fmul double %i.u, 2.000000e+00
  %i.w = fadd double %i.d, %i.v
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.thread, %bb.d, %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit, %bb.e, %bb.c
  %.0 = phi double [ %.sroa.speculated, %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit ], [ %i.q, %bb.c ], [ %i.w, %bb.e ], [ 0.000000e+00, %bb.d ], [ %.sroa.speculated14, %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.thread ]
  ret double %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core6chttp220TransportFlowControl13UpdateSettingESt17basic_string_viewIcSt11char_traitsIcEEPljPNS0_17FlowControlActionEMS7_FRS7_NS7_7UrgencyEjE(i64 %0, ptr %1, ptr nofree noundef captures(none) %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly byval({ i64, i64 }) align 8 captures(none) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %.unpack = load i64, ptr %5, align 8, !tbaa !24 ; 3 uses
  %.elt25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.unpack26 = load i64, ptr %.elt25, align 8, !tbaa !24
  %i.c = zext i32 %3 to i64                       ; 2 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !61     ; 2 uses
  %.not = icmp eq i64 %i.d, %i.c
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core13flowctl_traceE, i64 8) monotonic, align 8, !range !93, !noundef !94
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %.critedge28, !prof !95

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.4, i32 noundef 258) #26
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 25, ptr nonnull @.str.18)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit: ; preds = %bb.c
  %i.g = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %0, ptr %1)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 6, ptr nonnull @.str.19)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit: ; preds = %bb.d
  %i.h = load i64, ptr %2, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.b, align 8, !tbaa !61
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIlEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 4, ptr nonnull @.str.20)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !80
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.critedge unwind label %bb.g

.critedge:                                        ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pre = load i64, ptr %2, align 8, !tbaa !61
  br label %.critedge28

.critedge28:                                      ; preds = %bb.b, %.critedge
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pre, %.critedge ]
  %i.l = icmp eq i64 %i.k, 0
  %i.m = icmp eq i32 %3, 0
  %or.cond = or i1 %i.m, %i.l
  %spec.store.select = select i1 %or.cond, i8 1, i8 2
  store i64 %i.c, ptr %2, align 8, !tbaa !61
  %i.n = getelementptr inbounds i8, ptr %4, i64 %.unpack26 ; 2 uses
  %i.o = and i64 %.unpack, 1
  %.not27 = icmp eq i64 %i.o, 0
  br i1 %.not27, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi5EEERS2_RAT__Kc.exit, %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi7EEERS2_RAT__Kc.exit, %bb.d, %bb.c, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi26EEERS2_RAT__Kc.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %.critedge28
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.r = getelementptr i8, ptr %i.q, i64 %.unpack
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = load ptr, ptr %i.s, align 8, !nosanitize !94
  br label %bb.j

bb.i:                                             ; preds = %.critedge28
  %i.u = inttoptr i64 %.unpack to ptr
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi ptr [ %i.t, %bb.h ], [ %i.u, %bb.i ]
  %i.w = call noundef nonnull align 4 dereferenceable(20) ptr %i.v(ptr noundef nonnull align 4 dereferenceable(20) %i.n, i8 noundef zeroext %spec.store.select, i32 noundef %3) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  ret void
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9grpc_core6chttp220TransportFlowControl21SetAckedInitialWindowEj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.grpc_core::chttp2::FlowControlAction") align 4 captures(none) initializes((0, 5), (8, 20)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) initializes((136, 140)) %1, i32 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 %2, ptr %i.a, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.d, align 4, !tbaa !98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 5, i1 false)
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !55   ; 3 uses
  %.not = icmp eq i64 %i.g, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %2, 0
  %i.i = icmp eq i64 %i.g, 0
  %or.cond = or i1 %i.h, %i.i
  %.0 = select i1 %or.cond, i8 1, i8 2
  %i.j = trunc i64 %i.g to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.0, ptr %i.k, align 2, !tbaa !26
  store i32 %i.j, ptr %i.b, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(20) ptr @_ZN9grpc_core6chttp217FlowControlAction30set_send_initial_window_updateENS1_7UrgencyEj(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 noundef zeroext %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %1, ptr %i.a, align 2, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.b, align 4, !tbaa !27
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core6chttp220TransportFlowControl14PeriodicUpdateEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.grpc_core::chttp2::FlowControlAction") align 4 captures(none) initializes((0, 20)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.grpc_core::BasicMemoryQuota::PressureInfo", align 8 ; 5 uses
  %3 = alloca %"class.grpc_core::chttp2::FlowControlAction", align 4 ; 12 uses
  %i.a = alloca { i64, i64 }, align 8             ; 5 uses
  %i.b = alloca { i64, i64 }, align 8             ; 5 uses
  %i.c = alloca { i64, i64 }, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.d, align 4, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.f, align 4, !tbaa !98
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 5, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !54, !range !93, !noundef !94
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread25

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !82
  %i.l = sitofp i64 %i.k to double
  %i.m = fmul nnan double %i.l, 2.000000e+00      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.n = load ptr, ptr %1, align 8, !tbaa !52
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !87, !noalias !140 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.thread.i, label %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.i

_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.p = fcmp ogt double %i.m, f0x4150000000000000
  %.sroa.speculated14.i = select i1 %i.p, double %i.m, double f0x4150000000000000
  br label %_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit

_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !90, !noalias !141
  call void @_ZN9grpc_core16BasicMemoryQuota15GetPressureInfoEv(ptr dead_on_unwind nonnull writable sret(%"struct.grpc_core::BasicMemoryQuota::PressureInfo") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1512) %i.r)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !92 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.s = fcmp ogt double %i.m, f0x4150000000000000
  %.sroa.speculated.i = select i1 %i.s, double %i.m, double f0x4150000000000000 ; 3 uses
  %i.t = fcmp olt double %.pre.i, 2.000000e-01
  br i1 %i.t, label %_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.i
  %i.u = fcmp olt double %.pre.i, 5.000000e-01
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = fsub double %i.m, %.sroa.speculated.i
  %i.w = fadd nnan ninf double %.pre.i, -2.000000e-01
  %i.x = fmul double %i.v, %i.w
  %i.y = fdiv double %i.x, 3.000000e-01
  %i.z = fadd double %.sroa.speculated.i, %i.y
  br label %_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = fcmp olt double %.pre.i, 1.000000e+00
  br i1 %i.aa, label %bb.f, label %_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = fsub nnan double 0.000000e+00, %i.m
  %i.ac = fadd nnan ninf double %.pre.i, -5.000000e-01
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = fmul double %i.ad, 2.000000e+00
  %i.af = fadd double %i.m, %i.ae
  br label %_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit

_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit: ; preds = %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.thread.i, %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.i, %bb.d, %bb.e, %bb.f
  %.0.i = phi double [ %.sroa.speculated.i, %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.i ], [ %i.z, %bb.d ], [ %i.af, %bb.f ], [ 0.000000e+00, %bb.e ], [ %.sroa.speculated14.i, %_ZNK9grpc_core11MemoryOwner15GetPressureInfoEv.exit.thread.i ] ; 3 uses
  %i.ag = fcmp olt double %.0.i, 0.000000e+00
  %i.ah = fcmp ogt double %.0.i, f0x41D0000000000000
  %..i = select i1 %i.ah, double f0x41D0000000000000, double %.0.i
  %.0.i9 = select i1 %i.ag, double 0.000000e+00, double %..i
  %i.ai = fptoui double %.0.i9 to i32
  %i.aj = add i32 %i.ai, -1                       ; 2 uses
  %i.ak = lshr i32 %i.aj, 1
  %i.al = or i32 %i.ak, %i.aj                     ; 2 uses
  %i.am = lshr i32 %i.al, 2
  %i.an = or i32 %i.am, %i.al                     ; 2 uses
  %i.ao = lshr i32 %i.an, 4
  %i.ap = or i32 %i.ao, %i.an                     ; 2 uses
  %i.aq = lshr i32 %i.ap, 8
  %i.ar = or i32 %i.aq, %i.ap                     ; 2 uses
  %i.as = lshr i32 %i.ar, 16
  %i.at = or i32 %i.as, %i.ar
  %i.au = add i32 %i.at, 1                        ; 2 uses
  %i.av = icmp ult i32 %i.au, 1024
  %spec.store.select = select i1 %i.av, i32 0, i32 %i.au
  %i.aw = load ptr, ptr @_ZN9grpc_core6chttp252g_test_only_transport_target_window_estimates_mockerE, align 8, !tbaa !143 ; 3 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !55
  %i.az = sitofp i64 %i.ay to double
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef double %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, double noundef %i.az)
  %i.be = fptoui double %i.bd to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit
  %.0 = phi i32 [ %spec.store.select, %_ZNK9grpc_core6chttp220TransportFlowControl50TargetInitialWindowSizeBasedOnMemoryPressureAndBdpEv.exit ], [ %i.be, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %.0, i32 2147483647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 ptrtoint (ptr @_ZN9grpc_core6chttp217FlowControlAction30set_send_initial_window_updateENS1_7UrgencyEj to i64), ptr %i.a, align 8, !tbaa !24
  %.fca.1.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.fca.1.gep6, align 8, !tbaa !24
  call void @_ZN9grpc_core6chttp220TransportFlowControl13UpdateSettingESt17basic_string_viewIcSt11char_traitsIcEEPljPNS0_17FlowControlActionEMS7_FRS7_NS7_7UrgencyEjE(i64 19, ptr nonnull @.str.38, ptr noundef nonnull %i.bf, i32 noundef %.sroa.speculated, ptr noundef nonnull %3, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bh = call i32 @llvm.umax.i32(i32 %.0, i32 16384)
  %.0.i12 = call i32 @llvm.umin.i32(i32 %i.bh, i32 16777215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 ptrtoint (ptr @_ZN9grpc_core6chttp217FlowControlAction30set_send_max_frame_size_updateENS1_7UrgencyEj to i64), ptr %i.b, align 8, !tbaa !24
  %.fca.1.gep2 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep2, align 8, !tbaa !24
  call void @_ZN9grpc_core6chttp220TransportFlowControl13UpdateSettingESt17basic_string_viewIcSt11char_traitsIcEEPljPNS0_17FlowControlActionEMS7_FRS7_NS7_7UrgencyEjE(i64 14, ptr nonnull @.str.39, ptr noundef nonnull %i.bg, i32 noundef %.0.i12, ptr noundef nonnull %3, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bi = load atomic i64, ptr @_ZN9grpc_core15ExperimentFlags17experiment_flags_E monotonic, align 16 ; 2 uses
  %i.bj = and i64 %i.bi, 36028797018963968
  %.not.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i, label %bb.i, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not4.i.i.i = icmp sgt i64 %i.bi, -1
  br i1 %.not4.i.i.i, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread25

_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit: ; preds = %bb.i
  %i.bk = call noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 55)
  br i1 %i.bk, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread25

_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread: ; preds = %bb.h, %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !60, !range !93, !noundef !94
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.j, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread25

bb.j:                                             ; preds = %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bp = load i64, ptr %i.bg, align 8, !tbaa !56
  %.tr = trunc i64 %i.bp to i32
  %i.bq = shl i32 %.tr, 1
  %i.br = call i32 @llvm.umax.i32(i32 %i.bq, i32 16384)
  %.0.i14 = call i32 @llvm.umin.i32(i32 %i.br, i32 2147483647)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 ptrtoint (ptr @_ZN9grpc_core6chttp217FlowControlAction41set_preferred_rx_crypto_frame_size_updateENS1_7UrgencyEj to i64), ptr %i.c, align 8, !tbaa !24
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep, align 8, !tbaa !24
  call void @_ZN9grpc_core6chttp220TransportFlowControl13UpdateSettingESt17basic_string_viewIcSt11char_traitsIcEEPljPNS0_17FlowControlActionEMS7_FRS7_NS7_7UrgencyEjE(i64 35, ptr nonnull @.str.40, ptr noundef nonnull %i.bo, i32 noundef %.0.i14, ptr noundef nonnull %3, ptr noundef nonnull byval({ i64, i64 }) align 8 %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread25

_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread25: ; preds = %bb.i, %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit, %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread, %bb.j, %bb.a
  %.sroa.023.0.copyload = load i8, ptr %3, align 4, !tbaa !79
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 1, !tbaa !79
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(18) %.sroa.3.0..sroa_idx, i64 18, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !53, !noalias !144
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !61, !noalias !144
  %.sroa.speculated.i.i = call i64 @llvm.smax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i, %i.bt
  %.sroa.speculated4.i.i = call i64 @llvm.smin.i64(i64 %i.bw, i64 2147483647)
  %i.bx = and i64 %.sroa.speculated4.i.i, 4294967295
  %i.by = add nuw nsw i64 %i.bx, 1
  %i.bz = lshr i64 %i.by, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !57, !noalias !144
  %i.cc = icmp slt i64 %i.cb, %i.bz
  %spec.select = select i1 %i.cc, i8 1, i8 %.sroa.2.0.copyload
  store i8 %.sroa.023.0.copyload, ptr %0, align 4, !tbaa !79
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %spec.select, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(20) ptr @_ZN9grpc_core6chttp217FlowControlAction30set_send_max_frame_size_updateENS1_7UrgencyEj(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 noundef zeroext %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %1, ptr %i.a, align 1, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.b, align 4, !tbaa !32
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(20) ptr @_ZN9grpc_core6chttp217FlowControlAction41set_preferred_rx_crypto_frame_size_updateENS1_7UrgencyEj(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 noundef zeroext %1, i32 noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %1, ptr %i.a, align 4, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 4, !tbaa !98
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK9grpc_core6chttp220TransportFlowControl5Stats8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store i64 15, ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.21, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.b = load i64, ptr %1, align 8, !tbaa !146
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %i.b, ptr noundef nonnull %i.c)
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.e, %i.f
  store i64 %i.g, ptr %3, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.h, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i64 20, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.22, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.m = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferElPc(i64 noundef %i.k, ptr noundef nonnull %i.l)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  store i64 %i.p, ptr %5, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.l, ptr %i.q, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 40, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.23, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4absl12lts_202505126StrCatIJlA21_cjA22_cjA20_cjA17_clS4_lA47_clA19_clA16_clA14_cdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESI_SI_SI_SI_DpRKT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 1 dereferenceable(21) @.str.24, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 1 dereferenceable(22) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull align 1 dereferenceable(20) @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull align 1 dereferenceable(17) @.str.27, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 1 dereferenceable(20) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 1 dereferenceable(47) @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 1 dereferenceable(19) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 1 dereferenceable(16) @.str.31, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 1 dereferenceable(14) @.str.32, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
end_hunk_0
