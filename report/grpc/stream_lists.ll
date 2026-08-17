inline.NumInlined: 273
inline.NumDeleted: 128
begin_hunk_0_@_Z36grpc_chttp2_list_add_writable_streamP21grpc_chttp2_transportP18grpc_chttp2_stream:bb.a
  %.not4.i.i.i = icmp sgt i64 %i.c, -1
  br i1 %.not4.i.i.i, label %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit, label %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread14

_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit: ; preds = %bb.c
  %i.e = tail call noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 43)
  br i1 %i.e, label %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread, label %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread14

bb.d:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i32 noundef 173, ptr noundef nonnull %i.f) #21
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  unreachable

_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread: ; preds = %bb.b, %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread14, label %bb.f

bb.f:                                             ; preds = %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread
  %i.j = tail call fastcc noundef zeroext i1 @_ZL19stream_list_prependP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.g

_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread14: ; preds = %bb.c, %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread, %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit
  %i.k = tail call fastcc noundef zeroext i1 @_ZL15stream_list_addP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread14, %bb.f
  %.0 = phi i1 [ %i.j, %bb.f ], [ %i.k, %_ZN9grpc_core35IsPrioritizeFinishedRequestsEnabledEv.exit.thread14 ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL19stream_list_prependP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 375 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !135
  %i.f = trunc nuw nsw i32 %2 to i8
  %i.g = shl nuw nsw i8 1, %i.f                   ; 2 uses
  %i.h = and i8 %i.e, %i.g
  %.not = icmp eq i8 %i.h, 0                      ; 2 uses
  br i1 %.not, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = zext nneg i32 %2 to i64                  ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !137 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.j ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %i.o, align 8, !tbaa !141
  %.not.i = icmp eq ptr %i.l, null                ; 2 uses
  %..i = select i1 %.not.i, ptr %0, ptr %i.l
  %.46.i = select i1 %.not.i, i64 264, i64 72
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %..i, i64 %i.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.46.i
  store ptr %1, ptr %i.q, align 8, !tbaa !142
  store ptr %1, ptr %i.k, align 16, !tbaa !137
  %i.r = load i8, ptr %i.d, align 1, !tbaa !135
  %i.s = or i8 %i.r, %i.g
  store i8 %i.s, ptr %i.d, align 1, !tbaa !135
  %i.t = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core24http2_stream_state_traceE, i64 8) monotonic, align 8, !range !143, !noundef !144
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  br i1 %i.u, label %bb.b, label %bb.f, !prof !133

bb.b:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1, i32 noundef 146) #21
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP21grpc_chttp2_transportEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 1, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.x, ptr %i.a, align 4, !tbaa !145
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.h       ; 4 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 2, ptr nonnull @.str.8)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2984
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !146, !range !143, !noundef !144
  %i.ac = trunc nuw i8 %i.ab to i1
  %.str.9..str.10.i = select i1 %i.ac, ptr @.str.9, ptr @.str.10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 3, ptr nonnull align 1 dereferenceable(4) %.str.9..str.10.i)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit.i unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 10, ptr nonnull @.str.11)
          to label %switch.lookup unwind label %bb.h

switch.lookup:                                    ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit.i
  %i.ad = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL19stream_list_prependP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id, i64 %i.ad
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %i.c, align 8, !tbaa !382
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %switch.lookup
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %bb.g unwind label %bb.i

bb.f:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZL20stream_list_add_headP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZL20stream_list_add_headP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i, %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i, %bb.c, %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %switch.lookup
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.af, %bb.h ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.i

_ZL20stream_list_add_headP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZL20stream_list_add_headP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id.exit
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL15stream_list_addP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 375 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !135
  %i.f = trunc nuw nsw i32 %2 to i8
  %i.g = shl nuw nsw i8 1, %i.f                   ; 2 uses
  %i.h = and i8 %i.e, %i.g
  %.not = icmp eq i8 %i.h, 0                      ; 2 uses
  br i1 %.not, label %.critedge.i, label %bb.k

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8, !tbaa !136
  %i.i = zext nneg i32 %2 to i64                  ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 264 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !383  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.i ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !139
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !141
  %.not.i = icmp eq ptr %i.l, null
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %5 = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sink44.i = select i1 %.not.i, ptr %4, ptr %5
  %6 = getelementptr inbounds nuw [16 x i8], ptr %.sink44.i, i64 %i.i
  store ptr %1, ptr %6, align 8, !tbaa !142
  store ptr %1, ptr %i.k, align 8, !tbaa !383
  %7 = load i8, ptr %i.d, align 1, !tbaa !135
  %8 = or i8 %7, %i.g
  store i8 %8, ptr %i.d, align 1, !tbaa !135
  %9 = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core24http2_stream_state_traceE, i64 8) monotonic, align 8, !range !143, !noundef !144
  %10 = trunc nuw i8 %9 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  br i1 %10, label %bb.b, label %bb.f, !prof !133

bb.b:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1, i32 noundef 126) #21
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP21grpc_chttp2_transportEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.h       ; 2 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 1, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load i32, ptr %i.q, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.r, ptr %i.a, align 4, !tbaa !145
  %i.s = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.h       ; 4 uses

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 2, ptr nonnull @.str.8)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2984
  %i.v = load i8, ptr %i.u, align 8, !tbaa !146, !range !143, !noundef !144
  %i.w = trunc nuw i8 %i.v to i1
  %.str.9..str.10.i = select i1 %i.w, ptr @.str.9, ptr @.str.10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 3, ptr nonnull align 1 dereferenceable(4) %.str.9..str.10.i)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit.i unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 10, ptr nonnull @.str.11)
          to label %switch.lookup unwind label %bb.h

switch.lookup:                                    ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit.i
  %i.x = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL24stream_list_maybe_removeP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id, i64 %i.x
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %i.c, align 8, !tbaa !382
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %switch.lookup
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %bb.g unwind label %bb.i

bb.f:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %_ZL20stream_list_add_tailP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZL20stream_list_add_tailP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id.exit

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit.i, %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit.i, %bb.c, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %switch.lookup
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.z, %bb.h ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.i

_ZL20stream_list_add_tailP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZL20stream_list_add_tailP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id.exit
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z36grpc_chttp2_list_pop_writable_streamP21grpc_chttp2_transportPP18grpc_chttp2_stream(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZL15stream_list_popP21grpc_chttp2_transportPP18grpc_chttp2_stream26grpc_chttp2_stream_list_id(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL15stream_list_popP21grpc_chttp2_transportPP18grpc_chttp2_stream26grpc_chttp2_stream_list_id(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = zext nneg i32 %2 to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !137 ; 5 uses
  %i.h = icmp ne ptr %i.g, null                   ; 2 uses
  br i1 %i.h, label %bb.b, label %.critedge35

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 375 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !135
  %i.k = trunc nuw nsw i32 %2 to i8
  %i.l = shl nuw nsw i8 1, %i.k                   ; 2 uses
  %i.m = and i8 %i.j, %i.l
  %.not38 = icmp eq i8 %i.m, 0
  br i1 %.not38, label %bb.c, label %.critedge, !prof !133

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @.str.18) #21
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  unreachable

.critedge:                                        ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139  ; 3 uses
  %.not = icmp eq ptr %i.q, null                  ; 2 uses
  %.43 = select i1 %.not, ptr %0, ptr %i.q
  %.44 = select i1 %.not, i64 264, i64 72
  store ptr %i.q, ptr %i.f, align 16, !tbaa !137
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.43, i64 %i.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.44
  store ptr null, ptr %i.s, align 8, !tbaa !142
  %i.t = xor i8 %i.l, -1
  %i.u = load i8, ptr %i.i, align 1, !tbaa !135
  %i.v = and i8 %i.u, %i.t
  store i8 %i.v, ptr %i.i, align 1, !tbaa !135
  store ptr %i.g, ptr %1, align 8, !tbaa !142
  %i.w = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN9grpc_core24http2_stream_state_traceE, i64 8) monotonic, align 8, !range !143, !noundef !144
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %bb.l, !prof !133

bb.e:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_7InfoTagE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.1, i32 noundef 74) #21
  %i.y = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIP21grpc_chttp2_transportEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.f unwind label %bb.i       ; 2 uses

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 1, ptr nonnull @.str.7)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !145
  %i.ab = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIjEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.g unwind label %bb.i       ; 4 uses

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 2, ptr nonnull @.str.8)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit: ; preds = %bb.g
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2984
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !146, !range !143, !noundef !144
  %i.af = trunc nuw i8 %i.ae to i1
  %.str.9..str.10 = select i1 %i.af, ptr @.str.9, ptr @.str.10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 3, ptr nonnull align 1 dereferenceable(4) %.str.9..str.10)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 12, ptr nonnull @.str.19)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ag = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZL24stream_list_maybe_removeP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id, i64 %i.ag
  %switch.load = load ptr, ptr %switch.gep, align 8
  store ptr %switch.load, ptr %i.c, align 8, !tbaa !382
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIPKcEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit36 unwind label %bb.j

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit36: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.l

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi4EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi3EEERS2_RAT__Kc.exit, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.f, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.ai, %bb.i ]
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn

.critedge35:                                      ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !142
  br label %bb.l

bb.l:                                             ; preds = %.critedge35, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit36, %.critedge
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z39grpc_chttp2_list_remove_writable_streamP21grpc_chttp2_transportP18grpc_chttp2_stream(ptr noundef %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZL24stream_list_maybe_removeP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL24stream_list_maybe_removeP21grpc_chttp2_transportP18grpc_chttp2_stream26grpc_chttp2_stream_list_id(ptr noundef %0, ptr nofree noundef captures(address) %1, i32 noundef range(i32 0, 5) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 375 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !135   ; 2 uses
  %i.f = trunc nuw nsw i32 %2 to i8
end_hunk_0
