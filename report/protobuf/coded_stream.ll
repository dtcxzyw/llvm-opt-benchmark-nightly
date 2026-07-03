inline.NumInlined: 268
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf2io16CodedInputStream25BytesUntilTotalBytesLimitEv:bb.a
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %.neg2.i.neg = sub i32 %i.b, %i.e
  %.neg = add i32 %.neg2.i.neg, %i.l
  %i.m = add i32 %.neg, %.neg4.i.neg
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: cold mustprogress uwtable
define void @_ZN6google8protobuf2io16CodedInputStream25PrintTotalBytesLimitErrorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 191) #22
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 66, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi67EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi67EEERS2_RAT__Kc.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.c, ptr %i.a, align 4, !tbaa !3
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIiEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi67EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 149, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi150EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi150EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi150EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi150EEERS2_RAT__Kc.exit, %bb.b, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi67EEERS2_RAT__Kc.exit, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.e
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #8

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream12SkipFallbackEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = sub nsw i32 %1, %2                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.j = load i32, ptr %i.i, align 8, !tbaa !3
  %i.k = load i32, ptr %i.h, align 8, !tbaa !3
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !22
  %i.o = sub nsw i32 %i.l, %i.n                   ; 3 uses
  %i.p = icmp slt i32 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.l, ptr %i.m, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7    ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %i.o) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !7    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef %i.g)
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !7   ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ai = trunc i64 %i.ah to i32
  store i32 %i.ai, ptr %i.m, align 8, !tbaa !22
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.m, align 8, !tbaa !22
  %i.ak = add nsw i32 %i.aj, %i.g
  store i32 %i.ak, ptr %i.m, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.e ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream22GetDirectBufferPointerEPPKvPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.i, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  store ptr %i.j, ptr %1, align 8, !tbaa !32
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %2, align 4, !tbaa !3
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !22
  %i.p = sub nsw i32 %i.o, %i.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !31   ; 2 uses
  %.not10 = icmp slt i32 %i.p, %i.r
  br i1 %.not10, label %bb.r, label %2

2:                                                ; preds = %bb.d
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %.not11 = icmp eq i32 %i.r, %4
  br i1 %.not11, label %bb.r, label %bb.e

bb.e:                                             ; preds = %2
  tail call void @_ZN6google8protobuf2io16CodedInputStream25PrintTotalBytesLimitErrorEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !inline_history !33 ; 2 uses
  br i1 %i.x, label %bb.h, label %_ZN6google8protobuf2io12_GLOBAL__N_112NextNonEmptyEPNS1_19ZeroCopyInputStreamEPPKvPi.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.b, align 4, !tbaa !3    ; 5 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.i, !llvm.loop !34

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !16
  %i.ab = sext i32 %i.y to i64                    ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !15
  %.not.i.i = icmp slt i32 %i.y, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j, !prof !36

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !22  ; 3 uses
  %i.af = sub nuw nsw i32 2147483647, %i.y        ; 2 uses
  %.not9 = icmp sgt i32 %i.ae, %i.af
  br i1 %.not9, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ag = call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.ab, i64 noundef 0, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 700, ptr noundef nonnull %i.ag) #22
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.l

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.k
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.y, %i.ae
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.aj = sub nsw i32 %i.ae, %i.af                ; 2 uses
  store i32 %i.aj, ptr %i.f, align 4, !tbaa !18
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ac, i64 %i.al
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = phi ptr [ %i.am, %bb.n ], [ %i.ac, %bb.m ]
  %storemerge = phi i32 [ 2147483647, %bb.n ], [ %i.ai, %bb.m ] ; 3 uses
  store i32 %storemerge, ptr %i.i, align 8, !tbaa !22
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !17
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 %i.ap ; 2 uses
  store ptr %i.aq, ptr %i.ad, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !3
  %i.at = load i32, ptr %i.k, align 8, !tbaa !3
  %i.au = call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %i.av = icmp slt i32 %i.au, %storemerge
  br i1 %i.av, label %bb.p, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.p:                                             ; preds = %bb.o
  %i.aw = sub nsw i32 %storemerge, %i.au          ; 2 uses
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.aq, i64 %i.ay
  store ptr %i.az, ptr %i.ad, align 8, !tbaa !15
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit: ; preds = %bb.o, %bb.p
  %.sink.i = phi i32 [ %i.aw, %bb.p ], [ 0, %bb.o ]
  store i32 %.sink.i, ptr %i.c, align 4, !tbaa !17
  br label %bb.q

_ZN6google8protobuf2io12_GLOBAL__N_112NextNonEmptyEPNS1_19ZeroCopyInputStreamEPPKvPi.exit: ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_112NextNonEmptyEPNS1_19ZeroCopyInputStreamEPPKvPi.exit, %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %2, %bb.e, %bb.q
  %.1 = phi i1 [ %i.x, %bb.q ], [ false, %bb.e ], [ false, %2 ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %i.i, %bb.c ]  ; 3 uses
  %.012 = phi i32 [ %2, %bb.a ], [ %i.j, %bb.c ]  ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %.not.not.not.not.not = icmp sle i32 %.012, %i.g ; 2 uses
  br i1 %.not.not.not.not.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %sext = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext, 32                 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.013, ptr align 1 %i.c, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds i8, ptr %.013, i64 %i.h
  %i.j = sub nsw i32 %.012, %i.g
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 %i.h
  store ptr %i.l, ptr %0, align 8, !tbaa !16
  %i.m = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.m, label %bb.b, label %.loopexit, !llvm.loop !37

bb.d:                                             ; preds = %bb.b
  %i.n = sext i32 %.012 to i64                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.013, ptr align 1 %i.c, i64 %i.n, i1 false)
  %i.o = load ptr, ptr %0, align 8, !tbaa !16
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.n
  store ptr %i.p, ptr %0, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  ret i1 %.not.not.not.not.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream10ReadStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.not = icmp sgt i32 %2, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %2 to i64                  ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.i, i8 noundef signext 0)
  %i.j = load ptr, ptr %1, align 8, !tbaa !38
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.k, i64 %i.i, i1 false)
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  store ptr %i.m, ptr %0, align 8, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream18ReadStringFallbackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ %i.n, %bb.d ], [ false, %bb.a ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream18ReadStringFallbackEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !42
  %i.d = load ptr, ptr %1, align 8, !tbaa !38
  store i8 0, ptr %i.d, align 1, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !3
  %i.h = load i32, ptr %i.e, align 8, !tbaa !3
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %.not = icmp eq i32 %i.i, 2147483647
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15
  %i.n = load ptr, ptr %0, align 8, !tbaa !16
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %.neg3.i.neg = sub i64 %i.o, %i.p
  %.neg4.i.neg = trunc i64 %.neg3.i.neg to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %.neg2.i.neg = sub i32 %i.i, %i.k
  %.neg = add i32 %.neg2.i.neg, %i.r
  %i.s = add i32 %.neg, %.neg4.i.neg              ; 2 uses
  %i.t = icmp slt i32 %i.s, 1
  %i.u = icmp slt i32 %2, 1
  %or.cond.not36 = or i1 %i.u, %i.t
  %.not29 = icmp sgt i32 %2, %i.s
  %or.cond31 = or i1 %.not29, %or.cond.not36
  br i1 %or.cond31, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = zext nneg i32 %2 to i64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.v)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.split, %bb.f
  %.022 = phi i32 [ %2, %bb.f ], [ %i.al, %.split ] ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15
  %i.y = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = trunc i64 %i.ab to i32                  ; 3 uses
  %.not45.not.not.not.not = icmp sle i32 %.022, %i.ac ; 2 uses
  br i1 %.not45.not.not.not.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not30 = icmp eq i32 %i.ac, 0
  br i1 %.not30, label %.split, label %.split24

.split24:                                         ; preds = %bb.h
  %sext = shl i64 %i.ab, 32
  %i.ad = ashr exact i64 %sext, 32                ; 3 uses
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !42
  %i.af = sub i64 4611686018427387903, %i.ae
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.i:                                             ; preds = %.split24
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %.split24
  %i.ah = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.y, i64 noundef %i.ad) ; 0 uses
  %i.ai = sub nsw i32 %.022, %i.ac
  %i.aj = load ptr, ptr %0, align 8, !tbaa !16
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ad
  store ptr %i.ak, ptr %0, align 8, !tbaa !16
  br label %.split

.split:                                           ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.al = phi i32 [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit ], [ %.022, %bb.h ]
  %i.am = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.am, label %bb.g, label %.loopexit, !llvm.loop !43

bb.j:                                             ; preds = %bb.g
  %i.an = sext i32 %.022 to i64                   ; 3 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !42
  %i.ap = sub i64 4611686018427387903, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.an
  br i1 %i.aq, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32: ; preds = %bb.j
  %i.ar = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.y, i64 noundef %i.an) ; 0 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !16
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.an
  store ptr %i.at, ptr %0, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit32
  ret i1 %.not45.not.not.not.not
}
end_hunk_0
