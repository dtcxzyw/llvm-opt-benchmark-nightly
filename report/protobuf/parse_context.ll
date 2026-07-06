inline.NumInlined: 1058
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6google8protobuf8internal16WireFormatParserINS1_28UnknownFieldLiteParserHelperEEEPKcRT_S5_PNS1_12ParseContextE:bb.a
  %i.q = icmp eq ptr %i.p, null
  %or.cond.i.i = select i1 %i.n, i1 %i.q, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.015
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.c
  %i.r = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.k, i32 noundef %i.d) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.r, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.r, 1
  %i.s = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.s, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21: ; preds = %bb.b, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.21724 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.015, %bb.b ] ; 6 uses
  %i.t = load i8, ptr %.21724, align 1, !tbaa !37 ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp sgt i8 %i.t, -1
  %i.w = getelementptr inbounds nuw i8, ptr %.21724, i64 1 ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37    ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 7
  %i.aa = add nsw i32 %i.u, -128
  %i.ab = or disjoint i32 %i.z, %i.aa             ; 2 uses
  %i.ac = icmp sgt i8 %i.x, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %.21724, i64 2 ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !37  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 14
  %i.ah = add nsw i32 %i.ab, -16384
  %i.ai = or disjoint i32 %i.ag, %i.ah            ; 2 uses
  %i.aj = icmp slt i8 %i.ae, 0
  br i1 %i.aj, label %.critedge.1.i.i, label %bb.g, !prof !26

.critedge.1.i.i:                                  ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.21724, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !37  ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 21
  %i.ao = add nsw i32 %i.ai, -2097152
  %i.ap = add nsw i32 %i.ao, %i.an                ; 2 uses
  %i.aq = icmp slt i8 %i.al, 0
  br i1 %i.aq, label %.critedge.2.i.i, label %bb.g, !prof !26

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.21724, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37  ; 2 uses
  %i.at = zext i8 %i.as to i32
  %i.au = shl i32 %i.at, 28
  %i.av = add i32 %i.ap, -268435456
  %i.aw = add i32 %i.av, %i.au
  %i.ax = icmp slt i8 %i.as, 0
  br i1 %i.ax, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.g, !prof !26

bb.g:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.f
  %.lcssa22.i.i = phi i64 [ 2, %bb.f ], [ 3, %.critedge.1.i.i ], [ 4, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.ai, %bb.f ], [ %i.ap, %.critedge.1.i.i ], [ %i.aw, %.critedge.2.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.21724, i64 %.lcssa22.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21, %bb.g
  %.014.ph = phi i32 [ %.lcssa.i.i, %bb.g ], [ %i.u, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21 ], [ %i.ab, %bb.e ] ; 4 uses
  %.1.i.ph = phi ptr [ %i.az, %bb.g ], [ %i.w, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21 ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ba = icmp eq i32 %.014.ph, 0
  %i.bb = and i32 %.014.ph, 7
  %i.bc = icmp eq i32 %i.bb, 4
  %or.cond = or i1 %i.ba, %i.bc
  br i1 %or.cond, label %bb.i, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = add i32 %.014.ph, -1
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !29
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.h
  %i.bf = zext i32 %.014.ph to i64
  %i.bg = tail call noundef ptr @_ZN6google8protobuf8internal11FieldParserINS1_28UnknownFieldLiteParserHelperEEEPKcmRT_S5_PNS1_12ParseContextE(i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.1.i.ph, ptr noundef nonnull %2) ; 2 uses
  %.not8.not = icmp eq ptr %i.bg, null
  br i1 %.not8.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.b

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %.critedge.2.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %bb.d, %bb.i
  %.2 = phi ptr [ %spec.select, %bb.d ], [ %.1.i.ph, %bb.i ], [ null, %.critedge.2.i.i ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ null, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.google::protobuf::internal::UnknownFieldLiteParserHelper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %1, ptr %4, align 8, !tbaa !61
  %i.a = zext i32 %0 to i64
  %i.b = call noundef ptr @_ZN6google8protobuf8internal11FieldParserINS1_28UnknownFieldLiteParserHelperEEEPKcmRT_S5_PNS1_12ParseContextE(i64 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal11FieldParserINS1_28UnknownFieldLiteParserHelperEEEPKcmRT_S5_PNS1_12ParseContextE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.b = lshr i64 %0, 3
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %0, 7
  switch i64 %i.d, label %bb.l [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not35.not = icmp eq ptr %i.e, null
  br i1 %.not35.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %i.a, align 8, !tbaa !65
  call void @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper9AddVarintEjm(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, i64 noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i64, ptr %2, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper10AddFixed64Ejm(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, i64 noundef %.0.copyload.i.i)
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper10ParseGroupEjPKcPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %bb.l, label %bb.k

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.6, i32 noundef 1628) #20
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 12, ptr nonnull @.str.13)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit: ; preds = %bb.h
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  unreachable

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi13EEERS2_RAT__Kc.exit, %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #21
  unreachable

bb.j:                                             ; preds = %bb.b
  %.0.copyload.i.i36 = load i32, ptr %2, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  tail call void @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper10AddFixed32Ejj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, i32 noundef %.0.copyload.i.i36)
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.j, %bb.e
  %.029 = phi ptr [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.k, %bb.j ]
  br label %bb.l

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.g, %bb.f, %.critedge, %bb.a, %bb.k
  %.1 = phi ptr [ null, %bb.g ], [ %.029, %bb.k ], [ null, %bb.b ], [ null, %.critedge ], [ null, %bb.f ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream23ReadMicroStringFallbackEPKciRNS1_11MicroStringEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.anon.14, align 8             ; 7 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !66
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  %i.c = sext i32 %2 to i64                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %0, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %.sroa.3.0..sroa_idx, align 8
  %i.d = load ptr, ptr %3, align 8, !tbaa !67
  %i.e = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.f = and i64 %i.e, 3
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not13.i = icmp ugt i32 %2, 7
  br i1 %.not13.i, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = trunc i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.0.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.u, %bb.g ] ; 3 uses
  %.021.i.i.i.i.i = phi i32 [ %2, %bb.c ], [ %i.v, %bb.g ]
  %.020.i.i.i.i.i = phi ptr [ %1, %bb.c ], [ %i.aj, %bb.g ]
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.c ], [ %i.ao, %bb.g ] ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !7
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlvE_clEv.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sext i32 %.0.i.i.i.i.i to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i.i, ptr readonly align 1 %.020.i.i.i.i.i, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.t ; 5 uses
  %i.v = sub i32 %.021.i.i.i.i.i, %.0.i.i.i.i.i   ; 4 uses
  %i.w = load i32, ptr %i.q, align 4, !tbaa !25
  %i.x = icmp slt i32 %i.w, 17
  br i1 %i.x, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlvE_clEv.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferILb0EEEPKcii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !14  ; 4 uses
  br i1 %i.z, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i.i, label %bb.g

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i.i: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.ab, align 8, !tbaa !29
  store ptr %i.aa, ptr %0, align 8, !tbaa !28
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlvE_clEv.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.y to i64
  %.neg.i.i.i.i.i.i = sub i64 %i.ad, %i.ac
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !25
  %i.af = trunc i64 %.neg.i.i.i.i.i.i to i32
  %i.ag = add i32 %i.ae, %i.af                    ; 2 uses
  store i32 %i.ag, ptr %i.q, align 4, !tbaa !25
  %.sroa.speculated.i.i.i.i.i.i = call i32 @llvm.smin.i32(i32 %i.ag, i32 0)
  %i.ah = sext i32 %.sroa.speculated.i.i.i.i.i.i to i64
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 %i.ah
  store ptr %i.ai, ptr %0, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = trunc i64 %i.an to i32                  ; 2 uses
  %i.ap = icmp ugt i32 %i.v, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.h, !llvm.loop !69

bb.h:                                             ; preds = %bb.g
  %i.aq = sext i32 %i.v to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr nonnull readonly align 1 %i.aj, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aq
  %i.as = zext i32 %i.v to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlvE_clEv.exit.i"

"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlvE_clEv.exit.i": ; preds = %bb.e, %bb.d, %bb.h, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i.i
  %.1.i.i.i = phi ptr [ %i.u, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i.i ], [ %i.ar, %bb.h ], [ %.0.i.i.i, %bb.d ], [ %i.u, %bb.e ]
  %.019.i.i.i.i.i = phi ptr [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i.i ], [ %i.at, %bb.h ], [ null, %bb.d ], [ null, %bb.e ]
  store ptr %.019.i.i.i.i.i, ptr %i.a, align 8, !tbaa !66
  %i.au = ptrtoint ptr %.1.i.i.i to i64
  %i.av = ptrtoint ptr %i.h to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = shl i64 %i.aw, 2                        ; 2 uses
  %i.ay = icmp ult i64 %i.ax, 256
  call void @llvm.assume(i1 %i.ay)
  %i.az = load ptr, ptr %3, align 8, !tbaa !67
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = and i64 %i.ba, -256
  %i.bc = or disjoint i64 %i.bb, %i.ax
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %3, align 8, !tbaa !67
  br label %"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit"

bb.i:                                             ; preds = %bb.a
  %i.be = and i64 %i.e, 2
  %.not90.i = icmp eq i64 %i.be, 0
  br i1 %.not90.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = add nsw i64 %i.e, -2
  %i.bg = inttoptr i64 %i.bf to ptr               ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !70
  %6 = zext i8 %i.bi to i32
  %.not12.i = icmp ugt i32 %2, %6
  br i1 %.not12.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %1 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %.0.i.i32.i = phi ptr [ %i.bj, %bb.k ], [ %i.bw, %bb.o ] ; 3 uses
  %.021.i.i.i.i33.i = phi i32 [ %2, %bb.k ], [ %i.bx, %bb.o ]
  %.020.i.i.i.i34.i = phi ptr [ %1, %bb.k ], [ %i.cl, %bb.o ]
  %.0.i.i.i.i35.i = phi i32 [ %i.bq, %bb.k ], [ %i.cq, %bb.o ] ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !7
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = sext i32 %.0.i.i.i.i35.i to i64         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i32.i, ptr readonly align 1 %.020.i.i.i.i34.i, i64 %i.bv, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i32.i, i64 %i.bv ; 5 uses
  %i.bx = sub i32 %.021.i.i.i.i33.i, %.0.i.i.i.i35.i ; 4 uses
  %i.by = load i32, ptr %i.bs, align 4, !tbaa !25
  %i.bz = icmp slt i32 %i.by, 17
  br i1 %i.bz, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferILb0EEEPKcii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  %i.cc = load ptr, ptr %i.bk, align 8, !tbaa !14 ; 4 uses
  br i1 %i.cb, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i40.i, label %bb.o

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i40.i: ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.cd, align 8, !tbaa !29
  store ptr %i.cc, ptr %0, align 8, !tbaa !28
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit.i"

bb.o:                                             ; preds = %bb.n
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.ca to i64
  %.neg.i.i.i.i.i36.i = sub i64 %i.cf, %i.ce
  %i.cg = load i32, ptr %i.bs, align 4, !tbaa !25
  %i.ch = trunc i64 %.neg.i.i.i.i.i36.i to i32
  %i.ci = add i32 %i.cg, %i.ch                    ; 2 uses
  store i32 %i.ci, ptr %i.bs, align 4, !tbaa !25
  %.sroa.speculated.i.i.i.i.i37.i = call i32 @llvm.smin.i32(i32 %i.ci, i32 0)
  %i.cj = sext i32 %.sroa.speculated.i.i.i.i.i37.i to i64
  %i.ck = getelementptr inbounds i8, ptr %i.cc, i64 %i.cj
  store ptr %i.ck, ptr %0, align 8, !tbaa !28
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %i.cr = icmp ugt i32 %i.bx, %i.cq
  br i1 %i.cr, label %bb.l, label %bb.p, !llvm.loop !69

bb.p:                                             ; preds = %bb.o
  %i.cs = sext i32 %i.bx to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull readonly align 1 %i.cl, i64 %i.cs, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cs
  %i.cu = zext i32 %i.bx to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cu
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit.i"

"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit.i": ; preds = %bb.m, %bb.l, %bb.p, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i40.i
  %.1.i.i38.i = phi ptr [ %i.bw, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i40.i ], [ %i.ct, %bb.p ], [ %.0.i.i32.i, %bb.l ], [ %i.bw, %bb.m ]
  %.019.i.i.i.i39.i = phi ptr [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i40.i ], [ %i.cv, %bb.p ], [ null, %bb.l ], [ null, %bb.m ]
  store ptr %.019.i.i.i.i39.i, ptr %i.a, align 8, !tbaa !66
  %i.cw = ptrtoint ptr %.1.i.i38.i to i64
  %i.cx = ptrtoint ptr %i.bj to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = trunc i64 %i.cy to i8
  store i8 %i.cz, ptr %i.bg, align 1, !tbaa !72
  br label %"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit"

bb.q:                                             ; preds = %bb.i
  %i.da = trunc i64 %i.e to i1
  br i1 %i.da, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %bb.q
  %i.db = add nsw i64 %i.e, -1
  %i.dc = inttoptr i64 %i.db to ptr               ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !73 ; 2 uses
  %i.df = call noundef i32 @llvm.umin.i32(i32 %i.de, i32 3)
  switch i32 %i.df, label %.critedge.i [
    i32 3, label %bb.s
    i32 2, label %bb.z
  ]

bb.s:                                             ; preds = %bb.r
  %i.dg = zext i32 %i.de to i64
  %.not.i = icmp ugt i64 %i.c, %i.dg
  br i1 %.not.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = ptrtoint ptr %1 to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = trunc i64 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %.0.i.i41.i = phi ptr [ %i.dh, %bb.t ], [ %i.du, %bb.x ] ; 3 uses
  %.021.i.i.i.i42.i = phi i32 [ %2, %bb.t ], [ %i.dv, %bb.x ]
  %.020.i.i.i.i43.i = phi ptr [ %1, %bb.t ], [ %i.ej, %bb.x ]
  %.0.i.i.i.i44.i = phi i32 [ %i.do, %bb.t ], [ %i.eo, %bb.x ] ; 2 uses
  %i.dr = load ptr, ptr %i.dp, align 8, !tbaa !7
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dt = sext i32 %.0.i.i.i.i44.i to i64         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i41.i, ptr readonly align 1 %.020.i.i.i.i43.i, i64 %i.dt, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i41.i, i64 %i.dt ; 5 uses
  %i.dv = sub i32 %.021.i.i.i.i42.i, %.0.i.i.i.i44.i ; 4 uses
  %i.dw = load i32, ptr %i.dq, align 4, !tbaa !25
  %i.dx = icmp slt i32 %i.dw, 17
  br i1 %i.dx, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit.i", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferILb0EEEPKcii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  %i.ea = load ptr, ptr %i.di, align 8, !tbaa !14 ; 4 uses
  br i1 %i.dz, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i49.i, label %bb.x

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i49.i: ; preds = %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.eb, align 8, !tbaa !29
  store ptr %i.ea, ptr %0, align 8, !tbaa !28
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit.i"

bb.x:                                             ; preds = %bb.w
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.dy to i64
  %.neg.i.i.i.i.i45.i = sub i64 %i.ed, %i.ec
  %i.ee = load i32, ptr %i.dq, align 4, !tbaa !25
  %i.ef = trunc i64 %.neg.i.i.i.i.i45.i to i32
  %i.eg = add i32 %i.ee, %i.ef                    ; 2 uses
  store i32 %i.eg, ptr %i.dq, align 4, !tbaa !25
  %.sroa.speculated.i.i.i.i.i46.i = call i32 @llvm.smin.i32(i32 %i.eg, i32 0)
  %i.eh = sext i32 %.sroa.speculated.i.i.i.i.i46.i to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ea, i64 %i.eh
  store ptr %i.ei, ptr %0, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = trunc i64 %i.en to i32                  ; 2 uses
  %i.ep = icmp ugt i32 %i.dv, %i.eo
  br i1 %i.ep, label %bb.u, label %bb.y, !llvm.loop !69

bb.y:                                             ; preds = %bb.x
  %i.eq = sext i32 %i.dv to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.du, ptr nonnull readonly align 1 %i.ej, i64 %i.eq, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.eq
  %i.es = zext i32 %i.dv to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.es
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit.i"

"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit.i": ; preds = %bb.v, %bb.u, %bb.y, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i49.i
  %.1.i.i47.i = phi ptr [ %i.du, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i49.i ], [ %i.er, %bb.y ], [ %.0.i.i41.i, %bb.u ], [ %i.du, %bb.v ]
  %.019.i.i.i.i48.i = phi ptr [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i49.i ], [ %i.et, %bb.y ], [ null, %bb.u ], [ null, %bb.v ]
  store ptr %.019.i.i.i.i48.i, ptr %i.a, align 8, !tbaa !66
  %i.eu = ptrtoint ptr %.1.i.i47.i to i64
  %i.ev = ptrtoint ptr %i.dh to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !75
  br label %"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit"

bb.z:                                             ; preds = %bb.r
  call fastcc void @"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_9StringRepEE_clESD_"(ptr nonnull readonly align 8 %5, ptr noundef nonnull %i.dc)
  br label %"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit"

.critedge.i:                                      ; preds = %bb.s, %bb.r, %bb.q, %bb.j
  %.not91.i = icmp eq ptr %4, null
  br i1 %.not91.i, label %bb.aa, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit.i

bb.aa:                                            ; preds = %.critedge.i
  call void @_ZN6google8protobuf8internal11MicroString11DestroySlowEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit.i
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_:bb.a
  %i.h = shl nuw nsw i64 %i.g, 7
  %i.i = add nsw i64 %i.c, -128
  %i.j = or disjoint i64 %i.h, %i.i               ; 2 uses
  %i.k = icmp slt i8 %i.f, 0
  br i1 %i.k, label %.critedge.1.i.i, label %bb.d, !prof !26

.critedge.1.i.i:                                  ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 14
  %i.p = add nsw i64 %i.j, -16384
  %i.q = or disjoint i64 %i.o, %i.p               ; 2 uses
  %i.r = icmp slt i8 %i.m, 0
  br i1 %i.r, label %.critedge.2.i.i, label %bb.d, !prof !26

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !37    ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 21
  %i.w = add nsw i64 %i.q, -2097152
  %i.x = add nsw i64 %i.w, %i.v                   ; 2 uses
  %i.y = icmp slt i8 %i.t, 0
  br i1 %i.y, label %.critedge.3.i.i, label %bb.d, !prof !26

.critedge.3.i.i:                                  ; preds = %.critedge.2.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37   ; 2 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 28
  %i.ad = add nsw i64 %i.x, -268435456
  %i.ae = add nsw i64 %i.ad, %i.ac                ; 2 uses
  %i.af = icmp slt i8 %i.aa, 0
  br i1 %i.af, label %.critedge.4.i.i, label %bb.d, !prof !26

.critedge.4.i.i:                                  ; preds = %.critedge.3.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !37  ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 35
  %i.ak = add nsw i64 %i.ae, -34359738368
  %i.al = add nsw i64 %i.ak, %i.aj                ; 2 uses
  %i.am = icmp slt i8 %i.ah, 0
  br i1 %i.am, label %.critedge.5.i.i, label %bb.d, !prof !26

.critedge.5.i.i:                                  ; preds = %.critedge.4.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37  ; 2 uses
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 42
  %i.ar = add nsw i64 %i.al, -4398046511104
  %i.as = add nsw i64 %i.ar, %i.aq                ; 2 uses
  %i.at = icmp slt i8 %i.ao, 0
  br i1 %i.at, label %.critedge.6.i.i, label %bb.d, !prof !26

.critedge.6.i.i:                                  ; preds = %.critedge.5.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !37  ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 49
  %i.ay = add nsw i64 %i.as, -562949953421312
  %i.az = add nsw i64 %i.ay, %i.ax                ; 2 uses
  %i.ba = icmp slt i8 %i.av, 0
  br i1 %i.ba, label %.critedge.7.i.i, label %bb.d, !prof !26

.critedge.7.i.i:                                  ; preds = %.critedge.6.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !37  ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw i64 %i.bd, 56
  %i.bf = add nsw i64 %i.az, -72057594037927936
  %i.bg = add i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = icmp slt i8 %i.bc, 0
  br i1 %i.bh, label %.critedge.8.i.i, label %bb.d, !prof !26

.critedge.8.i.i:                                  ; preds = %.critedge.7.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37  ; 2 uses
  %i.bk = xor i8 %i.bj, -1
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl i64 %i.bl, 63
  %i.bn = add i64 %i.bm, %i.bg
  %i.bo = icmp slt i8 %i.bj, 0
  br i1 %i.bo, label %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit, label %bb.d, !prof !26

bb.d:                                             ; preds = %.critedge.8.i.i, %.critedge.7.i.i, %.critedge.6.i.i, %.critedge.5.i.i, %.critedge.4.i.i, %.critedge.3.i.i, %.critedge.2.i.i, %.critedge.1.i.i, %bb.c
  %.lcssa23.i.i = phi i64 [ 1, %bb.c ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ], [ 4, %.critedge.3.i.i ], [ 5, %.critedge.4.i.i ], [ 6, %.critedge.5.i.i ], [ 7, %.critedge.6.i.i ], [ 8, %.critedge.7.i.i ], [ 9, %.critedge.8.i.i ]
  %.lcssa.i.i = phi i64 [ %i.j, %bb.c ], [ %i.q, %.critedge.1.i.i ], [ %i.x, %.critedge.2.i.i ], [ %i.ae, %.critedge.3.i.i ], [ %i.al, %.critedge.4.i.i ], [ %i.as, %.critedge.5.i.i ], [ %i.az, %.critedge.6.i.i ], [ %i.bg, %.critedge.7.i.i ], [ %i.bn, %.critedge.8.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa23.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  br label %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit

_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit: ; preds = %.critedge.8.i.i, %bb.d
  %.sroa.0.0.i.i = phi ptr [ %i.bq, %bb.d ], [ null, %.critedge.8.i.i ]
  %.sroa.3.0.i.i = phi i64 [ %.lcssa.i.i, %bb.d ], [ 0, %.critedge.8.i.i ]
  store i64 %.sroa.3.0.i.i, ptr %1, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %.sroa.0.0.i.i, %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !93

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !37
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !37
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #18
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !94
  %i.ag = load i64, ptr %1, align 8, !tbaa !97
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !124 ; 4 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = trunc nuw nsw i64 %i.al to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !125 ; 4 uses
  %7 = zext i8 %i.am to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !126      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %9, align 8, !tbaa !127
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !127
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.am to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !125
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !127
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %8, align 8, !tbaa !126
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !125
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !129
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !127
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !88
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !37
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !37      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !26

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !26

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !26

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa36.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa36.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035118 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035118
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dk, %bb.u ] ; 3 uses
  %.035121 = phi i32 [ %.035118, %.lr.ph ], [ %.035, %bb.u ] ; 2 uses
  %.031120 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.df, %bb.u ] ; 2 uses
  %.078119 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.du, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.078119, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

.lr.ph.i:                                         ; preds = %bb.g, %.thread.i.i.i.i
  %.079.i = phi ptr [ %i.ay, %.thread.i.i.i.i ], [ %.078119, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = load i32, ptr %2, align 4, !tbaa !88
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0                    ; 3 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !90 ; 4 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.v.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %2, %bb.h ]
  %i.bi = phi i32 [ %i.bh, %bb.i ], [ 2, %bb.h ]
  %i.bj = icmp eq i32 %i.bf, %i.bi
  %i.bk = add nsw i32 %i.bf, 1                    ; 3 uses
  br i1 %i.bj, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i, !prof !26

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.be, i32 noundef %i.bf, i32 noundef %i.bk)
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !37
  %.pre38.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !90
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i
  %i.bm = phi i32 [ %.pre38.i.i.i.i, %bb.j ], [ %i.bf, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ]
  %.pn.i.i.i.i = phi ptr [ %i.bl, %bb.j ], [ %.0.v.i.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i1 [ false, %bb.j ], [ %i.be, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ]
  %.029.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  store i32 %i.bk, ptr %i.at, align 4, !tbaa !90
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.029.i.i.i.i, i64 %i.bn
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !3
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !90
  %i.bq = icmp eq i32 %i.bk, %i.bp
  call void @llvm.assume(i1 %i.bq)
  br i1 %.0.i.i.i.i, label %.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i
  %i.br = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i, %bb.k
  %.sink203 = phi ptr [ %i.br, %bb.k ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i ]
  %i.bs = icmp eq ptr %.pn.i.i.i.i, %.sink203
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bt = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bt, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit: ; preds = %.thread.i.i.i.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !14
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit, %bb.g
  %i.bu = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ] ; 2 uses
  %.2.i88 = phi ptr [ %.078119, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ]
  %i.bv = ptrtoint ptr %.2.i88 to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = sub nsw i32 %.031120, %.035121          ; 2 uses
  %i.bz = icmp slt i32 %i.by, 17
  br i1 %i.bz, label %bb.l, label %bb.s

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_:bb.a
  %i.dp = trunc i64 %.neg.i to i32
  %i.dq = add i32 %i.do, %i.dp                    ; 2 uses
  store i32 %i.dq, ptr %i.av, align 4, !tbaa !25
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dq, i32 0)
  %i.dr = sext i32 %.sroa.speculated.i to i64
  %i.ds = getelementptr inbounds i8, ptr %i.dk, i64 %i.dr
  store ptr %i.ds, ptr %0, align 8, !tbaa !28
  %sext = shl i64 %i.bx, 32
  %i.dt = ashr exact i64 %sext, 32
  %i.du = getelementptr inbounds i8, ptr %i.di, i64 %i.dt ; 3 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dm, %i.dv
  %.035 = trunc i64 %i.dw to i32                  ; 2 uses
  %i.dx = icmp sgt i32 %i.df, %.035
  br i1 %i.dx, label %bb.g, label %._crit_edge, !llvm.loop !131

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.078.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.du, %bb.u ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.df, %bb.u ] ; 2 uses
  %i.dy = sext i32 %.031.lcssa to i64
  %i.dz = getelementptr inbounds i8, ptr %.078.lcssa, i64 %i.dy ; 2 uses
  %i.ea = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.ea, label %.lr.ph.i61, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

.lr.ph.i61:                                       ; preds = %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i.i70, %.lr.ph.i61
  %.079.i62 = phi ptr [ %.078.lcssa, %.lr.ph.i61 ], [ %i.ed, %.thread.i.i.i.i70 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ed = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i62, ptr noundef nonnull %i.a) ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.thread.i72, label %bb.w

.thread.i72:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

bb.w:                                             ; preds = %bb.v
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !65
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = load i32, ptr %2, align 4, !tbaa !88
  %i.ei = and i32 %i.eh, 1
  %i.ej = icmp eq i32 %i.ei, 0                    ; 3 uses
  %i.ek = load i32, ptr %i.eb, align 4, !tbaa !90 ; 4 uses
  br i1 %i.ej, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.el = load ptr, ptr %i.ec, align 8, !tbaa !37 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63: ; preds = %bb.x, %bb.w
  %.0.v.i.i.i.i.i.i64 = phi ptr [ %i.el, %bb.x ], [ %2, %bb.w ]
  %i.en = phi i32 [ %i.em, %bb.x ], [ 2, %bb.w ]
  %i.eo = icmp eq i32 %i.ek, %i.en
  %i.ep = add nsw i32 %i.ek, 1                    ; 3 uses
  br i1 %i.eo, label %bb.y, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65, !prof !26

bb.y:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ej, i32 noundef %i.ek, i32 noundef %i.ep)
  %i.eq = load ptr, ptr %i.ec, align 8, !tbaa !37
  %.pre38.i.i.i.i71 = load i32, ptr %i.eb, align 4, !tbaa !90
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65: ; preds = %bb.y, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63
  %i.er = phi i32 [ %.pre38.i.i.i.i71, %bb.y ], [ %i.ek, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63 ]
  %.pn.i.i.i.i66 = phi ptr [ %i.eq, %bb.y ], [ %.0.v.i.i.i.i.i.i64, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63 ] ; 2 uses
  %.0.i.i.i.i68 = phi i1 [ false, %bb.y ], [ %i.ej, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63 ]
  %.029.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i66, i64 8
  store i32 %i.ep, ptr %i.eb, align 4, !tbaa !90
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.029.i.i.i.i69, i64 %i.es
  store i32 %i.eg, ptr %i.et, align 4, !tbaa !3
  %i.eu = load i32, ptr %i.eb, align 4, !tbaa !90
  %i.ev = icmp eq i32 %i.ep, %i.eu
  call void @llvm.assume(i1 %i.ev)
  br i1 %.0.i.i.i.i68, label %.thread.i.i.i.i70, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65
  %i.ew = load ptr, ptr %i.ec, align 8
  br label %.thread.i.i.i.i70

.thread.i.i.i.i70:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65, %bb.z
  %.sink205 = phi ptr [ %i.ew, %bb.z ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65 ]
  %i.ex = icmp eq ptr %.pn.i.i.i.i66, %.sink205
  call void @llvm.assume(i1 %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ey = icmp ult ptr %i.ed, %i.dz
  br i1 %i.ey, label %bb.v, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73: ; preds = %.thread.i.i.i.i70, %._crit_edge, %.thread.i72
  %.2.i60 = phi ptr [ null, %.thread.i72 ], [ %.078.lcssa, %._crit_edge ], [ %i.ed, %.thread.i.i.i.i70 ] ; 2 uses
  %i.ez = icmp eq ptr %i.dz, %.2.i60
  %i.fa = select i1 %i.ez, ptr %.2.i60, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.s, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.r, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.fa, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.s ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread, !prof !93

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !37
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !37
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #18
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !94
  %i.ag = load i64, ptr %1, align 8, !tbaa !97
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !124 ; 4 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = trunc nuw nsw i64 %i.al to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !125 ; 4 uses
  %7 = zext i8 %i.am to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !126      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %9, align 8, !tbaa !127
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !127
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.am to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !125
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !127
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %8, align 8, !tbaa !126
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !125
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !129
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !127
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !88
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !37      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !26

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !26

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !26

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa36.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa36.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035130 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035130
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.q
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dc, %bb.q ] ; 3 uses
  %.035133 = phi i32 [ %.035130, %.lr.ph ], [ %.035, %bb.q ] ; 2 uses
  %.031132 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cx, %bb.q ] ; 2 uses
  %.090131 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dm, %bb.q ] ; 3 uses
  %i.ax = icmp ult ptr %.090131, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.079.i = phi ptr [ %i.ay, %bb.i ], [ %.090131, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bb = load i32, ptr %2, align 4, !tbaa !88
  %i.bc = and i32 %i.bb, 1
  %i.bd = icmp eq i32 %i.bc, 0                    ; 2 uses
  %i.be = load i32, ptr %i.at, align 4, !tbaa !90 ; 8 uses
  br i1 %i.bd, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i: ; preds = %bb.h
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %.thread43.i.i.i.i, label %.thread.i.i.i.i, !prof !26

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i: ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !37
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %.thread43.i.i.i.i, label %.thread54.i.i.i.i, !prof !26

.thread54.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i
  %.pre4056.i.i.i.i = add nsw i32 %i.be, 1
  br label %bb.i

.thread43.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  %i.bj = add nsw i32 %i.be, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.bd, i32 noundef %i.be, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !37
  %.pre38.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !90
  br label %bb.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  %.pre40.i.i.i.i = add nsw i32 %i.be, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread54.i.i.i.i, %.thread43.i.i.i.i, %.thread.i.i.i.i
  %.sink.sink = phi i32 [ %.pre40.i.i.i.i, %.thread.i.i.i.i ], [ %i.bj, %.thread43.i.i.i.i ], [ %.pre4056.i.i.i.i, %.thread54.i.i.i.i ]
  %.pre38.i.i.i.i.sink.sink = phi i32 [ %i.be, %.thread.i.i.i.i ], [ %.pre38.i.i.i.i, %.thread43.i.i.i.i ], [ %i.be, %.thread54.i.i.i.i ]
  %i.bl = phi ptr [ %2, %.thread.i.i.i.i ], [ %i.bk, %.thread43.i.i.i.i ], [ %i.bg, %.thread54.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %.sink.sink, ptr %i.at, align 4, !tbaa !90
  %i.bn = sext i32 %.pre38.i.i.i.i.sink.sink to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  store i64 %i.ba, ptr %i.bo, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bp = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bp, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !14
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit, %bb.g
  %i.bq = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ] ; 2 uses
  %.2.i100 = phi ptr [ %.090131, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ]
  %i.br = ptrtoint ptr %.2.i100 to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = sub nsw i32 %.031132, %.035133          ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 17
  br i1 %i.bv, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.bw = sext i32 %i.bu to i64                   ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %i.d, i64 %i.bw ; 2 uses
  %sext44 = shl i64 %i.bt, 32
  %i.by = ashr exact i64 %sext44, 32              ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.d, i64 %i.by ; 2 uses
  %i.ca = icmp slt i64 %i.by, %i.bw
  br i1 %i.ca, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

.lr.ph.i47:                                       ; preds = %bb.j, %bb.l
  %.079.i48 = phi ptr [ %i.cb, %bb.l ], [ %i.bz, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cb = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, label %bb.k

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i47
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !65
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_:bb.a
  store i32 1, ptr %i.dd, align 8, !tbaa !29
  store ptr %i.dc, ptr %0, align 8, !tbaa !28
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.q:                                             ; preds = %bb.p
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = ptrtoint ptr %i.da to i64
  %.neg.i = sub i64 %i.df, %i.de
  %i.dg = load i32, ptr %i.av, align 4, !tbaa !25
  %i.dh = trunc i64 %.neg.i to i32
  %i.di = add i32 %i.dg, %i.dh                    ; 2 uses
  store i32 %i.di, ptr %i.av, align 4, !tbaa !25
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.di, i32 0)
  %i.dj = sext i32 %.sroa.speculated.i to i64
  %i.dk = getelementptr inbounds i8, ptr %i.dc, i64 %i.dj
  store ptr %i.dk, ptr %0, align 8, !tbaa !28
  %sext = shl i64 %i.bt, 32
  %i.dl = ashr exact i64 %sext, 32
  %i.dm = getelementptr inbounds i8, ptr %i.da, i64 %i.dl ; 3 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.de, %i.dn
  %.035 = trunc i64 %i.do to i32                  ; 2 uses
  %i.dp = icmp sgt i32 %i.cx, %.035
  br i1 %i.dp, label %bb.g, label %._crit_edge, !llvm.loop !132

._crit_edge:                                      ; preds = %bb.q, %bb.f
  %.090.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dm, %bb.q ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cx, %bb.q ] ; 2 uses
  %i.dq = sext i32 %.031.lcssa to i64
  %i.dr = getelementptr inbounds i8, ptr %.090.lcssa, i64 %i.dq ; 2 uses
  %i.ds = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.ds, label %.lr.ph.i67, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

.lr.ph.i67:                                       ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i67
  %.079.i68 = phi ptr [ %.090.lcssa, %.lr.ph.i67 ], [ %i.dv, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.dv = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i68, ptr noundef nonnull %i.a) ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %.thread.i84, label %bb.s

.thread.i84:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

bb.s:                                             ; preds = %bb.r
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !65
  %i.dy = load i32, ptr %2, align 4, !tbaa !88
  %i.dz = and i32 %i.dy, 1
  %i.ea = icmp eq i32 %i.dz, 0                    ; 2 uses
  %i.eb = load i32, ptr %i.dt, align 4, !tbaa !90 ; 8 uses
  br i1 %i.ea, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81: ; preds = %bb.s
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %.thread43.i.i.i.i77, label %.thread.i.i.i.i82, !prof !26

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69: ; preds = %bb.s
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !37 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !37
  %i.ef = icmp eq i32 %i.eb, %i.ee
  br i1 %i.ef, label %.thread43.i.i.i.i77, label %.thread54.i.i.i.i70, !prof !26

.thread54.i.i.i.i70:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69
  %.pre4056.i.i.i.i71 = add nsw i32 %i.eb, 1
  br label %bb.t

.thread43.i.i.i.i77:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81
  %i.eg = add nsw i32 %i.eb, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ea, i32 noundef %i.eb, i32 noundef %i.eg)
  %i.eh = load ptr, ptr %i.du, align 8, !tbaa !37
  %.pre38.i.i.i.i78 = load i32, ptr %i.dt, align 4, !tbaa !90
  br label %bb.t

.thread.i.i.i.i82:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81
  %.pre40.i.i.i.i83 = add nsw i32 %i.eb, 1
  br label %bb.t

bb.t:                                             ; preds = %.thread54.i.i.i.i70, %.thread43.i.i.i.i77, %.thread.i.i.i.i82
  %.sink227.sink = phi i32 [ %.pre40.i.i.i.i83, %.thread.i.i.i.i82 ], [ %i.eg, %.thread43.i.i.i.i77 ], [ %.pre4056.i.i.i.i71, %.thread54.i.i.i.i70 ]
  %.pre38.i.i.i.i78.sink.sink = phi i32 [ %i.eb, %.thread.i.i.i.i82 ], [ %.pre38.i.i.i.i78, %.thread43.i.i.i.i77 ], [ %i.eb, %.thread54.i.i.i.i70 ]
  %i.ei = phi ptr [ %2, %.thread.i.i.i.i82 ], [ %i.eh, %.thread43.i.i.i.i77 ], [ %i.ed, %.thread54.i.i.i.i70 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 %.sink227.sink, ptr %i.dt, align 4, !tbaa !90
  %i.ek = sext i32 %.pre38.i.i.i.i78.sink.sink to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  store i64 %i.dx, ptr %i.el, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.em = icmp ult ptr %i.dv, %i.dr
  br i1 %i.em, label %bb.r, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85: ; preds = %bb.t, %._crit_edge, %.thread.i84
  %.2.i66 = phi ptr [ null, %.thread.i84 ], [ %.090.lcssa, %._crit_edge ], [ %i.dv, %bb.t ] ; 2 uses
  %i.en = icmp eq ptr %i.dr, %.2.i66
  %i.eo = select i1 %i.en, ptr %.2.i66, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.o, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.n, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85
  %.4 = phi ptr [ %.1, %bb.n ], [ %i.eo, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.o ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !93

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !37
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !37
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #18
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !94
  %i.ae = load i64, ptr %1, align 8, !tbaa !97
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !124 ; 4 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = trunc nuw nsw i64 %i.aj to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !125 ; 4 uses
  %7 = zext i8 %i.ak to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !126      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %9, align 8, !tbaa !127
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !127
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.ak to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !125
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !127
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %8, align 8, !tbaa !126
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !125
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127
  store ptr %i.au, ptr %i.w, align 8, !tbaa !129
  store ptr %i.w, ptr %i.at, align 8, !tbaa !127
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !88
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !37      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !26

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !26

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !26

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa36.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa36.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035130 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035130
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.q
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dc, %bb.q ] ; 3 uses
  %.035133 = phi i32 [ %.035130, %.lr.ph ], [ %.035, %bb.q ] ; 2 uses
  %.031132 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cx, %bb.q ] ; 2 uses
  %.090131 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dm, %bb.q ] ; 3 uses
  %i.ax = icmp ult ptr %.090131, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.079.i = phi ptr [ %i.ay, %bb.i ], [ %.090131, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bb = load i32, ptr %2, align 4, !tbaa !88
  %i.bc = and i32 %i.bb, 1
  %i.bd = icmp eq i32 %i.bc, 0                    ; 2 uses
  %i.be = load i32, ptr %i.at, align 4, !tbaa !90 ; 8 uses
  br i1 %i.bd, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i: ; preds = %bb.h
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %.thread43.i.i.i.i, label %.thread.i.i.i.i, !prof !26

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i: ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !37
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %.thread43.i.i.i.i, label %.thread54.i.i.i.i, !prof !26

.thread54.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i
  %.pre4056.i.i.i.i = add nsw i32 %i.be, 1
  br label %bb.i

.thread43.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i
  %i.bj = add nsw i32 %i.be, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.bd, i32 noundef %i.be, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !37
  %.pre38.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !90
  br label %bb.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i
  %.pre40.i.i.i.i = add nsw i32 %i.be, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread54.i.i.i.i, %.thread43.i.i.i.i, %.thread.i.i.i.i
  %.sink.sink = phi i32 [ %.pre40.i.i.i.i, %.thread.i.i.i.i ], [ %i.bj, %.thread43.i.i.i.i ], [ %.pre4056.i.i.i.i, %.thread54.i.i.i.i ]
  %.pre38.i.i.i.i.sink.sink = phi i32 [ %i.be, %.thread.i.i.i.i ], [ %.pre38.i.i.i.i, %.thread43.i.i.i.i ], [ %i.be, %.thread54.i.i.i.i ]
  %i.bl = phi ptr [ %2, %.thread.i.i.i.i ], [ %i.bk, %.thread43.i.i.i.i ], [ %i.bg, %.thread54.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %.sink.sink, ptr %i.at, align 4, !tbaa !90
  %i.bn = sext i32 %.pre38.i.i.i.i.sink.sink to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  store i64 %i.ba, ptr %i.bo, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bp = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bp, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !14
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit, %bb.g
  %i.bq = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ] ; 2 uses
  %.2.i100 = phi ptr [ %.090131, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ]
  %i.br = ptrtoint ptr %.2.i100 to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = sub nsw i32 %.031132, %.035133          ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 17
  br i1 %i.bv, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.bw = sext i32 %i.bu to i64                   ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %i.d, i64 %i.bw ; 2 uses
  %sext44 = shl i64 %i.bt, 32
  %i.by = ashr exact i64 %sext44, 32              ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.d, i64 %i.by ; 2 uses
  %i.ca = icmp slt i64 %i.by, %i.bw
  br i1 %i.ca, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

.lr.ph.i47:                                       ; preds = %bb.j, %bb.l
  %.079.i48 = phi ptr [ %i.cb, %bb.l ], [ %i.bz, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cb = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, label %bb.k

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i47
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !65
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_:bb.a
  store i32 1, ptr %i.dd, align 8, !tbaa !29
  store ptr %i.dc, ptr %0, align 8, !tbaa !28
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.q:                                             ; preds = %bb.p
  %i.de = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.df = ptrtoint ptr %i.da to i64
  %.neg.i = sub i64 %i.df, %i.de
  %i.dg = load i32, ptr %i.av, align 4, !tbaa !25
  %i.dh = trunc i64 %.neg.i to i32
  %i.di = add i32 %i.dg, %i.dh                    ; 2 uses
  store i32 %i.di, ptr %i.av, align 4, !tbaa !25
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.di, i32 0)
  %i.dj = sext i32 %.sroa.speculated.i to i64
  %i.dk = getelementptr inbounds i8, ptr %i.dc, i64 %i.dj
  store ptr %i.dk, ptr %0, align 8, !tbaa !28
  %sext = shl i64 %i.bt, 32
  %i.dl = ashr exact i64 %sext, 32
  %i.dm = getelementptr inbounds i8, ptr %i.da, i64 %i.dl ; 3 uses
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.de, %i.dn
  %.035 = trunc i64 %i.do to i32                  ; 2 uses
  %i.dp = icmp sgt i32 %i.cx, %.035
  br i1 %i.dp, label %bb.g, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.q, %bb.f
  %.090.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dm, %bb.q ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cx, %bb.q ] ; 2 uses
  %i.dq = sext i32 %.031.lcssa to i64
  %i.dr = getelementptr inbounds i8, ptr %.090.lcssa, i64 %i.dq ; 2 uses
  %i.ds = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.ds, label %.lr.ph.i67, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

.lr.ph.i67:                                       ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i67
  %.079.i68 = phi ptr [ %.090.lcssa, %.lr.ph.i67 ], [ %i.dv, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.dv = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i68, ptr noundef nonnull %i.a) ; 4 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %.thread.i84, label %bb.s

.thread.i84:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

bb.s:                                             ; preds = %bb.r
  %i.dx = load i64, ptr %i.a, align 8, !tbaa !65
  %i.dy = load i32, ptr %2, align 4, !tbaa !88
  %i.dz = and i32 %i.dy, 1
  %i.ea = icmp eq i32 %i.dz, 0                    ; 2 uses
  %i.eb = load i32, ptr %i.dt, align 4, !tbaa !90 ; 8 uses
  br i1 %i.ea, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i81, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i69

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i81: ; preds = %bb.s
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %.thread43.i.i.i.i77, label %.thread.i.i.i.i82, !prof !26

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i69: ; preds = %bb.s
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !37 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !37
  %i.ef = icmp eq i32 %i.eb, %i.ee
  br i1 %i.ef, label %.thread43.i.i.i.i77, label %.thread54.i.i.i.i70, !prof !26

.thread54.i.i.i.i70:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i69
  %.pre4056.i.i.i.i71 = add nsw i32 %i.eb, 1
  br label %bb.t

.thread43.i.i.i.i77:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i69, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i81
  %i.eg = add nsw i32 %i.eb, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ea, i32 noundef %i.eb, i32 noundef %i.eg)
  %i.eh = load ptr, ptr %i.du, align 8, !tbaa !37
  %.pre38.i.i.i.i78 = load i32, ptr %i.dt, align 4, !tbaa !90
  br label %bb.t

.thread.i.i.i.i82:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i81
  %.pre40.i.i.i.i83 = add nsw i32 %i.eb, 1
  br label %bb.t

bb.t:                                             ; preds = %.thread54.i.i.i.i70, %.thread43.i.i.i.i77, %.thread.i.i.i.i82
  %.sink227.sink = phi i32 [ %.pre40.i.i.i.i83, %.thread.i.i.i.i82 ], [ %i.eg, %.thread43.i.i.i.i77 ], [ %.pre4056.i.i.i.i71, %.thread54.i.i.i.i70 ]
  %.pre38.i.i.i.i78.sink.sink = phi i32 [ %i.eb, %.thread.i.i.i.i82 ], [ %.pre38.i.i.i.i78, %.thread43.i.i.i.i77 ], [ %i.eb, %.thread54.i.i.i.i70 ]
  %i.ei = phi ptr [ %2, %.thread.i.i.i.i82 ], [ %i.eh, %.thread43.i.i.i.i77 ], [ %i.ed, %.thread54.i.i.i.i70 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i32 %.sink227.sink, ptr %i.dt, align 4, !tbaa !90
  %i.ek = sext i32 %.pre38.i.i.i.i78.sink.sink to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  store i64 %i.dx, ptr %i.el, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.em = icmp ult ptr %i.dv, %i.dr
  br i1 %i.em, label %bb.r, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85: ; preds = %bb.t, %._crit_edge, %.thread.i84
  %.2.i66 = phi ptr [ null, %.thread.i84 ], [ %.090.lcssa, %._crit_edge ], [ %i.dv, %bb.t ] ; 2 uses
  %i.en = icmp eq ptr %i.dr, %.2.i66
  %i.eo = select i1 %i.en, ptr %.2.i66, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.o, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.n, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85
  %.4 = phi ptr [ %.1, %bb.n ], [ %i.eo, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.o ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread, !prof !93

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !37
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !37
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #18
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !94
  %i.ae = load i64, ptr %1, align 8, !tbaa !97
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !124 ; 4 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = trunc nuw nsw i64 %i.aj to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !125 ; 4 uses
  %7 = zext i8 %i.ak to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !126      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %9, align 8, !tbaa !127
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !127
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.ak to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !125
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !127
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %8, align 8, !tbaa !126
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !125
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127
  store ptr %i.au, ptr %i.w, align 8, !tbaa !129
  store ptr %i.w, ptr %i.at, align 8, !tbaa !127
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !88
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !37      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !26

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !26

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !37    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !26

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !26

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa36.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa36.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !26

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035118 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035118
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.ds, %bb.u ] ; 3 uses
  %.035121 = phi i32 [ %.035118, %.lr.ph ], [ %.035, %bb.u ] ; 2 uses
  %.031120 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.dn, %bb.u ] ; 2 uses
  %.078119 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.ec, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.078119, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

.lr.ph.i:                                         ; preds = %bb.g, %.thread.i.i.i.i
  %.079.i = phi ptr [ %i.ay, %.thread.i.i.i.i ], [ %.078119, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !65
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = and i32 %i.bb, 1
  %i.be = sub nsw i32 0, %i.bd
  %i.bf = xor i32 %i.bc, %i.be
  %i.bg = load i32, ptr %2, align 4, !tbaa !88
  %i.bh = and i32 %i.bg, 1
  %i.bi = icmp eq i32 %i.bh, 0                    ; 3 uses
  %i.bj = load i32, ptr %i.at, align 4, !tbaa !90 ; 4 uses
  br i1 %i.bi, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.v.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.i ], [ %2, %bb.h ]
  %i.bm = phi i32 [ %i.bl, %bb.i ], [ 2, %bb.h ]
  %i.bn = icmp eq i32 %i.bj, %i.bm
  %i.bo = add nsw i32 %i.bj, 1                    ; 3 uses
  br i1 %i.bn, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, !prof !26

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.bi, i32 noundef %i.bj, i32 noundef %i.bo)
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !37
  %.pre38.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !90
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  %i.bq = phi i32 [ %.pre38.i.i.i.i, %bb.j ], [ %i.bj, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.pn.i.i.i.i = phi ptr [ %i.bp, %bb.j ], [ %.0.v.i.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i1 [ false, %bb.j ], [ %i.bi, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.029.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  store i32 %i.bo, ptr %i.at, align 4, !tbaa !90
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %.029.i.i.i.i, i64 %i.br
  store i32 %i.bf, ptr %i.bs, align 4, !tbaa !3
  %i.bt = load i32, ptr %i.at, align 4, !tbaa !90
  %i.bu = icmp eq i32 %i.bo, %i.bt
  call void @llvm.assume(i1 %i.bu)
  br i1 %.0.i.i.i.i, label %.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i
  %i.bv = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, %bb.k
  %.sink203 = phi ptr [ %i.bv, %bb.k ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i ]
  %i.bw = icmp eq ptr %.pn.i.i.i.i, %.sink203
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bx = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bx, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit: ; preds = %.thread.i.i.i.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !14
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit, %bb.g
  %i.by = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ] ; 2 uses
  %.2.i88 = phi ptr [ %.078119, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ]
  %i.bz = ptrtoint ptr %.2.i88 to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = sub nsw i32 %.031120, %.035121          ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 17
  br i1 %i.cd, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.by, i64 16, i1 false)
  %i.ce = sext i32 %i.cc to i64                   ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %i.d, i64 %i.ce ; 2 uses
  %sext44 = shl i64 %i.cb, 32
  %i.cg = ashr exact i64 %sext44, 32              ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.d, i64 %i.cg ; 2 uses
  %i.ci = icmp slt i64 %i.cg, %i.ce
  br i1 %i.ci, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59

.lr.ph.i47:                                       ; preds = %bb.l, %.thread.i.i.i.i56
  %.079.i48 = phi ptr [ %i.cj, %.thread.i.i.i.i56 ], [ %i.ch, %bb.l ]
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_:bb.a
  store ptr %i.dg, ptr %0, align 8, !tbaa !28
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.q:                                             ; preds = %bb.p
  %i.di = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %.neg.i = sub i64 %i.dj, %i.di
  %i.dk = load i32, ptr %i.av, align 4, !tbaa !25
  %i.dl = trunc i64 %.neg.i to i32
  %i.dm = add i32 %i.dk, %i.dl                    ; 2 uses
  store i32 %i.dm, ptr %i.av, align 4, !tbaa !25
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dm, i32 0)
  %i.dn = sext i32 %.sroa.speculated.i to i64
  %i.do = getelementptr inbounds i8, ptr %i.dg, i64 %i.dn
  store ptr %i.do, ptr %0, align 8, !tbaa !28
  %sext = shl i64 %i.bv, 32
  %i.dp = ashr exact i64 %sext, 32
  %i.dq = getelementptr inbounds i8, ptr %i.de, i64 %i.dp ; 3 uses
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.di, %i.dr
  %.035 = trunc i64 %i.ds to i32                  ; 2 uses
  %i.dt = icmp sgt i32 %i.db, %.035
  br i1 %i.dt, label %bb.g, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %bb.q, %bb.f
  %.090.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dq, %bb.q ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.db, %bb.q ] ; 2 uses
  %i.du = sext i32 %.031.lcssa to i64
  %i.dv = getelementptr inbounds i8, ptr %.090.lcssa, i64 %i.du ; 2 uses
  %i.dw = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.dw, label %.lr.ph.i67, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

.lr.ph.i67:                                       ; preds = %._crit_edge
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i67
  %.079.i68 = phi ptr [ %.090.lcssa, %.lr.ph.i67 ], [ %i.dz, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.dz = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i68, ptr noundef nonnull %i.a) ; 4 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %.thread.i84, label %bb.s

.thread.i84:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

bb.s:                                             ; preds = %bb.r
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !65
  %i.ec = icmp ne i64 %i.eb, 0
  %i.ed = load i32, ptr %2, align 4, !tbaa !88
  %i.ee = and i32 %i.ed, 1
  %i.ef = icmp eq i32 %i.ee, 0                    ; 2 uses
  %i.eg = load i32, ptr %i.dx, align 4, !tbaa !90 ; 8 uses
  br i1 %i.ef, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i81, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i69

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i81: ; preds = %bb.s
  %i.eh = icmp eq i32 %i.eg, 8
  br i1 %i.eh, label %.thread43.i.i.i.i77, label %.thread.i.i.i.i82, !prof !26

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i69: ; preds = %bb.s
  %i.ei = load ptr, ptr %i.dy, align 8, !tbaa !37 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !37
  %i.ek = icmp eq i32 %i.eg, %i.ej
  br i1 %i.ek, label %.thread43.i.i.i.i77, label %.thread54.i.i.i.i70, !prof !26

.thread54.i.i.i.i70:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i69
  %.pre4056.i.i.i.i71 = add nsw i32 %i.eg, 1
  br label %bb.t

.thread43.i.i.i.i77:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i69, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i81
  %i.el = add nsw i32 %i.eg, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ef, i32 noundef %i.eg, i32 noundef %i.el)
  %i.em = load ptr, ptr %i.dy, align 8, !tbaa !37
  %.pre38.i.i.i.i78 = load i32, ptr %i.dx, align 4, !tbaa !90
  br label %bb.t

.thread.i.i.i.i82:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i81
  %.pre40.i.i.i.i83 = add nsw i32 %i.eg, 1
  br label %bb.t

bb.t:                                             ; preds = %.thread54.i.i.i.i70, %.thread43.i.i.i.i77, %.thread.i.i.i.i82
  %.sink232.sink = phi i32 [ %.pre40.i.i.i.i83, %.thread.i.i.i.i82 ], [ %i.el, %.thread43.i.i.i.i77 ], [ %.pre4056.i.i.i.i71, %.thread54.i.i.i.i70 ]
  %.pre38.i.i.i.i78.sink.sink = phi i32 [ %i.eg, %.thread.i.i.i.i82 ], [ %.pre38.i.i.i.i78, %.thread43.i.i.i.i77 ], [ %i.eg, %.thread54.i.i.i.i70 ]
  %i.en = phi ptr [ %2, %.thread.i.i.i.i82 ], [ %i.em, %.thread43.i.i.i.i77 ], [ %i.ei, %.thread54.i.i.i.i70 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = zext i1 %i.ec to i8
  store i32 %.sink232.sink, ptr %i.dx, align 4, !tbaa !90
  %i.eq = sext i32 %.pre38.i.i.i.i78.sink.sink to i64
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %i.eq
  store i8 %i.ep, ptr %i.er, align 1, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.es = icmp ult ptr %i.dz, %i.dv
  br i1 %i.es, label %bb.r, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85: ; preds = %bb.t, %._crit_edge, %.thread.i84
  %.2.i66 = phi ptr [ null, %.thread.i84 ], [ %.090.lcssa, %._crit_edge ], [ %i.dz, %bb.t ] ; 2 uses
  %i.et = icmp eq ptr %i.dv, %.2.i66
  %i.eu = select i1 %i.et, ptr %.2.i66, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.o, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.n, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85
  %.4 = phi ptr [ %.1, %bb.n ], [ %i.eu, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.o ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 8                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread, !prof !93

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 8
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64               ; 2 uses
  %i.j = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.k = add nuw nsw i64 %i.i, 8
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.m = add nuw nsw i64 %i.i, 15
  %i.n = and i64 %i.m, 4294967288
  %i.o = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.o, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !37
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.t
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.u = zext nneg i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !37
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 8                      ; 5 uses
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #18
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !94
  %i.ad = load i64, ptr %1, align 8, !tbaa !97
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !124 ; 4 uses
  %i.ah = icmp ugt i64 %i.z, 15
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %5 = trunc nuw nsw i64 %i.ai to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.aj = load i8, ptr %i.ag, align 8, !tbaa !125 ; 4 uses
  %7 = zext i8 %i.aj to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !126      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.ak = lshr i64 %i.z, 3                        ; 2 uses
  %i.al = icmp ugt i8 %i.aj, 1
  br i1 %i.al, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i8 %i.aj, 1
  br i1 %i.am, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %9, align 8, !tbaa !127
  store ptr %i.an, ptr %i.w, align 8, !tbaa !127
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.aj to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !125
  %i.ao = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ak, %i.ao
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.ap = phi i64 [ %i.ao, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.ap, 3      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.z, %.idx24.i.i.i.i
  %i.ar = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.ar, i1 false), !tbaa !127
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %8, align 8, !tbaa !126
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ag, align 8, !tbaa !125
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127
  store ptr %i.au, ptr %i.w, align 8, !tbaa !129
  store ptr %i.w, ptr %i.at, align 8, !tbaa !127
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !88
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream15ReadPackedFixedIjEEPKcS5_PNS0_5ArenaEiPNS0_13RepeatedFieldIT_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.05375 = trunc i64 %i.f to i32                 ; 2 uses
  %i.g = icmp sgt i32 %3, %.05375
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.05379 = phi i32 [ %.05375, %.lr.ph ], [ %.053, %bb.g ] ; 2 uses
  %.04878 = phi ptr [ %1, %.lr.ph ], [ %i.ar, %bb.g ]
  %.05277 = phi i32 [ %3, %.lr.ph ], [ %i.ab, %bb.g ]
  %.053.in76 = phi i64 [ %i.f, %.lr.ph ], [ %i.av, %bb.g ]
  %i.k = ashr i32 %.05379, 2                      ; 2 uses
  %i.l = load i32, ptr %i.h, align 4, !tbaa !90   ; 3 uses
  %i.m = add nsw i32 %i.l, %i.k                   ; 3 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !88
  %i.o = and i32 %i.n, 1                          ; 2 uses
  %i.p = icmp eq i32 %i.o, 0                      ; 2 uses
  br i1 %i.p, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.r = load i32, ptr %i.q, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.s = phi i32 [ %i.r, %bb.d ], [ 2, %bb.c ]
  %i.t = icmp sgt i32 %i.m, %i.s
  br i1 %i.t, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !26

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %2, i1 noundef zeroext %i.p, i32 noundef %i.l, i32 noundef %i.m)
  %.pre = load i32, ptr %4, align 4, !tbaa !88
  %.pre88 = load i32, ptr %i.h, align 4, !tbaa !90 ; 2 uses
  %.pre91 = and i32 %.pre, 1
  %.pre92 = add nsw i32 %.pre88, %i.k
  br label %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i, %bb.e
  %.pre-phi93 = phi i32 [ %i.m, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre92, %bb.e ]
  %.pre-phi = phi i32 [ %i.o, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre91, %bb.e ]
  %i.u = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i ], [ %.pre88, %bb.e ]
  %i.v = and i32 %.05379, -4                      ; 2 uses
  %i.w = icmp eq i32 %.pre-phi, 0
  %i.x = sext i32 %i.u to i64
  %i.y = load ptr, ptr %i.i, align 8
  %.0.v.i.i.i = select i1 %i.w, ptr %4, ptr %i.y
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi93, ptr %i.h, align 4, !tbaa !90
  %i.z = getelementptr inbounds [4 x i8], ptr %.0.i.i.i, i64 %i.x
  %i.aa = sext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.z, ptr nonnull align 1 %.04878, i64 %i.aa, i1 false)
  %i.ab = sub nsw i32 %.05277, %i.v               ; 3 uses
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !25
  %i.ad = icmp slt i32 %i.ac, 17
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.ae = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferILb0EEEPKcii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  br i1 %i.af, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.g

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.ah, align 8, !tbaa !29
  store ptr %i.ag, ptr %0, align 8, !tbaa !28
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %.neg.i = sub i64 %i.aj, %i.ai
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !25
  %i.al = trunc i64 %.neg.i to i32
  %i.am = add i32 %i.ak, %i.al                    ; 2 uses
  store i32 %i.am, ptr %i.j, align 4, !tbaa !25
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.am, i32 0)
  %i.an = sext i32 %.sroa.speculated.i to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ag, i64 %i.an
  store ptr %i.ao, ptr %0, align 8, !tbaa !28
  %i.ap = and i64 %.053.in76, 3
  %i.aq = sub nuw nsw i64 16, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %.053 = trunc i64 %i.av to i32                  ; 2 uses
  %i.aw = icmp sgt i32 %i.ab, %.053
  br i1 %i.aw, label %bb.c, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %.052.lcssa = phi i32 [ %3, %bb.b ], [ %i.ab, %bb.g ] ; 4 uses
  %.048.lcssa = phi ptr [ %1, %bb.b ], [ %i.ar, %bb.g ] ; 3 uses
  %i.ax = ashr i32 %.052.lcssa, 2                 ; 3 uses
  %i.ay = and i32 %.052.lcssa, -4                 ; 3 uses
  %i.az = icmp eq i32 %i.ax, 0
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i32 %.052.lcssa, %i.ay
  %i.bb = select i1 %i.ba, ptr %.048.lcssa, ptr null
  br label %.critedge

bb.i:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !90 ; 3 uses
  %i.be = add nsw i32 %i.bd, %i.ax                ; 3 uses
  %i.bf = load i32, ptr %4, align 4, !tbaa !88
  %i.bg = and i32 %i.bf, 1                        ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0                    ; 2 uses
  br i1 %i.bh, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i65, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i65

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i65: ; preds = %bb.j, %bb.i
  %i.bl = phi i32 [ %i.bk, %bb.j ], [ 2, %bb.i ]
  %i.bm = icmp sgt i32 %i.be, %i.bl
  br i1 %i.bm, label %bb.k, label %.critedge63, !prof !26

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i65
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %2, i1 noundef zeroext %i.bh, i32 noundef %i.bd, i32 noundef %i.be)
  %.pre89 = load i32, ptr %4, align 4, !tbaa !88
  %.pre90 = load i32, ptr %i.bc, align 4, !tbaa !90 ; 2 uses
  %.pre94 = and i32 %.pre89, 1
  %.pre96 = add nsw i32 %.pre90, %i.ax
  br label %.critedge63

.critedge63:                                      ; preds = %bb.k, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i65
  %.pre-phi97 = phi i32 [ %.pre96, %bb.k ], [ %i.be, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i65 ]
  %.pre-phi95 = phi i32 [ %.pre94, %bb.k ], [ %i.bg, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i65 ]
  %i.bn = phi i32 [ %.pre90, %bb.k ], [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i65 ]
  %i.bo = icmp eq i32 %.pre-phi95, 0
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i68 = select i1 %i.bo, ptr %4, ptr %i.br
  %.0.i.i.i69 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i68, i64 8
  store i32 %.pre-phi97, ptr %i.bc, align 4, !tbaa !90
  %i.bs = getelementptr inbounds [4 x i8], ptr %.0.i.i.i69, i64 %i.bp
  %i.bt = sext i32 %i.ay to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr nonnull align 1 %.048.lcssa, i64 %i.bt, i1 false)
  %.not61 = icmp eq i32 %.052.lcssa, %i.ay
  %i.bu = getelementptr inbounds i8, ptr %.048.lcssa, i64 %i.bt
  %.2 = select i1 %.not61, ptr %i.bu, ptr null
  br label %.critedge

.critedge:                                        ; preds = %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %.critedge63, %bb.h, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ %.2, %.critedge63 ], [ %i.bb, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %_ZN6google8protobuf13RepeatedFieldIjE16ReserveWithArenaEPNS0_5ArenaEi.exit ]
  ret ptr %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream15ReadPackedFixedIiEEPKcS5_PNS0_5ArenaEiPNS0_13RepeatedFieldIT_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internal18EpsCopyInputStream15ReadPackedFixedIfEEPKcS5_PNS0_5ArenaEiPNS0_13RepeatedFieldIT_EE:bb.a
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !25
  %i.ad = icmp slt i32 %i.ac, 17
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.ae = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferILb0EEEPKcii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  br i1 %i.af, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.g

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.ah, align 8, !tbaa !29
  store ptr %i.ag, ptr %0, align 8, !tbaa !28
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %.neg.i = sub i64 %i.aj, %i.ai
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !25
  %i.al = trunc i64 %.neg.i to i32
  %i.am = add i32 %i.ak, %i.al                    ; 2 uses
  store i32 %i.am, ptr %i.j, align 4, !tbaa !25
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.am, i32 0)
  %i.an = sext i32 %.sroa.speculated.i to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ag, i64 %i.an
  store ptr %i.ao, ptr %0, align 8, !tbaa !28
  %i.ap = and i64 %.053.in76, 3
  %i.aq = sub nuw nsw i64 16, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %.053 = trunc i64 %i.av to i32                  ; 2 uses
  %i.aw = icmp sgt i32 %i.ab, %.053
  br i1 %i.aw, label %bb.c, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %.052.lcssa = phi i32 [ %3, %bb.b ], [ %i.ab, %bb.g ] ; 4 uses
  %.048.lcssa = phi ptr [ %1, %bb.b ], [ %i.ar, %bb.g ] ; 3 uses
  %i.ax = ashr i32 %.052.lcssa, 2                 ; 3 uses
  %i.ay = and i32 %.052.lcssa, -4                 ; 3 uses
  %i.az = icmp eq i32 %i.ax, 0
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i32 %.052.lcssa, %i.ay
  %i.bb = select i1 %i.ba, ptr %.048.lcssa, ptr null
  br label %.critedge

bb.i:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !90 ; 3 uses
  %i.be = add nsw i32 %i.bd, %i.ax                ; 3 uses
  %i.bf = load i32, ptr %4, align 4, !tbaa !88
  %i.bg = and i32 %i.bf, 1                        ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0                    ; 2 uses
  br i1 %i.bh, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i65, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i65

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i65: ; preds = %bb.j, %bb.i
  %i.bl = phi i32 [ %i.bk, %bb.j ], [ 2, %bb.i ]
  %i.bm = icmp sgt i32 %i.be, %i.bl
  br i1 %i.bm, label %bb.k, label %.critedge63, !prof !26

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i65
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %2, i1 noundef zeroext %i.bh, i32 noundef %i.bd, i32 noundef %i.be)
  %.pre89 = load i32, ptr %4, align 4, !tbaa !88
  %.pre90 = load i32, ptr %i.bc, align 4, !tbaa !90 ; 2 uses
  %.pre94 = and i32 %.pre89, 1
  %.pre96 = add nsw i32 %.pre90, %i.ax
  br label %.critedge63

.critedge63:                                      ; preds = %bb.k, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i65
  %.pre-phi97 = phi i32 [ %.pre96, %bb.k ], [ %i.be, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i65 ]
  %.pre-phi95 = phi i32 [ %.pre94, %bb.k ], [ %i.bg, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i65 ]
  %i.bn = phi i32 [ %.pre90, %bb.k ], [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i65 ]
  %i.bo = icmp eq i32 %.pre-phi95, 0
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i68 = select i1 %i.bo, ptr %4, ptr %i.br
  %.0.i.i.i69 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i68, i64 8
  store i32 %.pre-phi97, ptr %i.bc, align 4, !tbaa !90
  %i.bs = getelementptr inbounds [4 x i8], ptr %.0.i.i.i69, i64 %i.bp
  %i.bt = sext i32 %i.ay to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bs, ptr nonnull align 1 %.048.lcssa, i64 %i.bt, i1 false)
  %.not61 = icmp eq i32 %.052.lcssa, %i.ay
  %i.bu = getelementptr inbounds i8, ptr %.048.lcssa, i64 %i.bt
  %.2 = select i1 %.not61, ptr %i.bu, ptr null
  br label %.critedge

.critedge:                                        ; preds = %_ZN6google8protobuf13RepeatedFieldIfE16ReserveWithArenaEPNS0_5ArenaEi.exit, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %.critedge63, %bb.h, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ %.2, %.critedge63 ], [ %i.bb, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %_ZN6google8protobuf13RepeatedFieldIfE16ReserveWithArenaEPNS0_5ArenaEi.exit ]
  ret ptr %.5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread, !prof !93

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !37
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !37
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #18
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !94
  %i.ag = load i64, ptr %1, align 8, !tbaa !97
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !124 ; 4 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = trunc nuw nsw i64 %i.al to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !125 ; 4 uses
  %7 = zext i8 %i.am to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !126      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %9, align 8, !tbaa !127
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !127
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.am to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !125
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !127
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %8, align 8, !tbaa !126
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !125
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !129
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !127
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !88
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream15ReadPackedFixedIdEEPKcS5_PNS0_5ArenaEiPNS0_13RepeatedFieldIT_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.05375 = trunc i64 %i.f to i32                 ; 2 uses
  %i.g = icmp sgt i32 %3, %.05375
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %.05379 = phi i32 [ %.05375, %.lr.ph ], [ %.053, %bb.g ] ; 2 uses
  %.04878 = phi ptr [ %1, %.lr.ph ], [ %i.ar, %bb.g ]
  %.05277 = phi i32 [ %3, %.lr.ph ], [ %i.ab, %bb.g ]
  %.053.in76 = phi i64 [ %i.f, %.lr.ph ], [ %i.av, %bb.g ]
  %i.k = ashr i32 %.05379, 3                      ; 2 uses
  %i.l = load i32, ptr %i.h, align 4, !tbaa !90   ; 3 uses
  %i.m = add nsw i32 %i.l, %i.k                   ; 3 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !88
  %i.o = and i32 %i.n, 1                          ; 2 uses
  %i.p = icmp eq i32 %i.o, 0                      ; 2 uses
  br i1 %i.p, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.r = load i32, ptr %i.q, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i: ; preds = %bb.d, %bb.c
  %i.s = phi i32 [ %i.r, %bb.d ], [ 1, %bb.c ]
  %i.t = icmp sgt i32 %i.m, %i.s
  br i1 %i.t, label %bb.e, label %_ZN6google8protobuf13RepeatedFieldIdE16ReserveWithArenaEPNS0_5ArenaEi.exit, !prof !26

bb.e:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %2, i1 noundef zeroext %i.p, i32 noundef %i.l, i32 noundef %i.m)
  %.pre = load i32, ptr %4, align 4, !tbaa !88
  %.pre88 = load i32, ptr %i.h, align 4, !tbaa !90 ; 2 uses
  %.pre91 = and i32 %.pre, 1
  %.pre92 = add nsw i32 %.pre88, %i.k
  br label %_ZN6google8protobuf13RepeatedFieldIdE16ReserveWithArenaEPNS0_5ArenaEi.exit

_ZN6google8protobuf13RepeatedFieldIdE16ReserveWithArenaEPNS0_5ArenaEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i, %bb.e
  %.pre-phi93 = phi i32 [ %i.m, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i ], [ %.pre92, %bb.e ]
  %.pre-phi = phi i32 [ %i.o, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i ], [ %.pre91, %bb.e ]
  %i.u = phi i32 [ %i.l, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i ], [ %.pre88, %bb.e ]
  %i.v = and i32 %.05379, -8                      ; 2 uses
  %i.w = icmp eq i32 %.pre-phi, 0
  %i.x = sext i32 %i.u to i64
  %i.y = load ptr, ptr %i.i, align 8
  %.0.v.i.i.i = select i1 %i.w, ptr %4, ptr %i.y
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  store i32 %.pre-phi93, ptr %i.h, align 4, !tbaa !90
  %i.z = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.x
  %i.aa = sext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 1 %.04878, i64 %i.aa, i1 false)
  %i.ab = sub nsw i32 %.05277, %i.v               ; 3 uses
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !25
  %i.ad = icmp slt i32 %i.ac, 17
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE16ReserveWithArenaEPNS0_5ArenaEi.exit
  %i.ae = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferILb0EEEPKcii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  br i1 %i.af, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.g

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.ah, align 8, !tbaa !29
  store ptr %i.ag, ptr %0, align 8, !tbaa !28
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ae to i64
  %.neg.i = sub i64 %i.aj, %i.ai
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !25
  %i.al = trunc i64 %.neg.i to i32
  %i.am = add i32 %i.ak, %i.al                    ; 2 uses
  store i32 %i.am, ptr %i.j, align 4, !tbaa !25
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.am, i32 0)
  %i.an = sext i32 %.sroa.speculated.i to i64
  %i.ao = getelementptr inbounds i8, ptr %i.ag, i64 %i.an
  store ptr %i.ao, ptr %0, align 8, !tbaa !28
  %i.ap = and i64 %.053.in76, 7
  %i.aq = sub nuw nsw i64 16, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %.053 = trunc i64 %i.av to i32                  ; 2 uses
  %i.aw = icmp sgt i32 %i.ab, %.053
  br i1 %i.aw, label %bb.c, label %._crit_edge, !llvm.loop !144

._crit_edge:                                      ; preds = %bb.g, %bb.b
  %.052.lcssa = phi i32 [ %3, %bb.b ], [ %i.ab, %bb.g ] ; 4 uses
  %.048.lcssa = phi ptr [ %1, %bb.b ], [ %i.ar, %bb.g ] ; 3 uses
  %i.ax = ashr i32 %.052.lcssa, 3                 ; 3 uses
  %i.ay = and i32 %.052.lcssa, -8                 ; 3 uses
  %i.az = icmp eq i32 %i.ax, 0
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i32 %.052.lcssa, %i.ay
  %i.bb = select i1 %i.ba, ptr %.048.lcssa, ptr null
  br label %.critedge

bb.i:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !90 ; 3 uses
  %i.be = add nsw i32 %i.bd, %i.ax                ; 3 uses
  %i.bf = load i32, ptr %4, align 4, !tbaa !88
  %i.bg = and i32 %i.bf, 1                        ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0                    ; 2 uses
  br i1 %i.bh, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i65, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !37
  br label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i65

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i65: ; preds = %bb.j, %bb.i
  %i.bl = phi i32 [ %i.bk, %bb.j ], [ 1, %bb.i ]
  %i.bm = icmp sgt i32 %i.be, %i.bl
  br i1 %i.bm, label %bb.k, label %.critedge63, !prof !26

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i65
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %2, i1 noundef zeroext %i.bh, i32 noundef %i.bd, i32 noundef %i.be)
  %.pre89 = load i32, ptr %4, align 4, !tbaa !88
  %.pre90 = load i32, ptr %i.bc, align 4, !tbaa !90 ; 2 uses
  %.pre94 = and i32 %.pre89, 1
  %.pre96 = add nsw i32 %.pre90, %i.ax
  br label %.critedge63

.critedge63:                                      ; preds = %bb.k, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i65
  %.pre-phi97 = phi i32 [ %.pre96, %bb.k ], [ %i.be, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i65 ]
  %.pre-phi95 = phi i32 [ %.pre94, %bb.k ], [ %i.bg, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i65 ]
  %i.bn = phi i32 [ %.pre90, %bb.k ], [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i65 ]
  %i.bo = icmp eq i32 %.pre-phi95, 0
  %i.bp = sext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i68 = select i1 %i.bo, ptr %4, ptr %i.br
  %.0.i.i.i69 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i68, i64 8
  store i32 %.pre-phi97, ptr %i.bc, align 4, !tbaa !90
  %i.bs = getelementptr inbounds [8 x i8], ptr %.0.i.i.i69, i64 %i.bp
  %i.bt = sext i32 %i.ay to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 1 %.048.lcssa, i64 %i.bt, i1 false)
  %.not61 = icmp eq i32 %.052.lcssa, %i.ay
  %i.bu = getelementptr inbounds i8, ptr %.048.lcssa, i64 %i.bt
  %.2 = select i1 %.not61, ptr %i.bu, ptr null
  br label %.critedge

.critedge:                                        ; preds = %_ZN6google8protobuf13RepeatedFieldIdE16ReserveWithArenaEPNS0_5ArenaEi.exit, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %.critedge63, %bb.h, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ %.2, %.critedge63 ], [ %i.bb, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %_ZN6google8protobuf13RepeatedFieldIdE16ReserveWithArenaEPNS0_5ArenaEi.exit ]
  ret ptr %.5
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread, !prof !93

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !37
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !37
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #18
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !94
  %i.ae = load i64, ptr %1, align 8, !tbaa !97
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !124 ; 4 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = trunc nuw nsw i64 %i.aj to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !125 ; 4 uses
  %7 = zext i8 %i.ak to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !126      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %9, align 8, !tbaa !127
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !127
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.ak to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !125
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !127
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %8, align 8, !tbaa !126
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !125
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !127
  store ptr %i.au, ptr %i.w, align 8, !tbaa !129
  store ptr %i.w, ptr %i.at, align 8, !tbaa !127
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !88
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !88
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper9AddVarintEjm(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i32 %1, 3                            ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp ugt i32 %i.c, 127
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %.lr.ph.i
  %.011.i = phi i64 [ %i.d, %.lr.ph.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ] ; 3 uses
  %i.h = trunc i64 %.011.i to i8
  %i.i = or i8 %i.h, -128
  %i.j = load i64, ptr %i.f, align 8, !tbaa !33   ; 4 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.g
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.c
  %i.n = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.n)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.g, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.p = phi i64 [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.q = icmp ugt i64 %i.k, %i.p
  br i1 %i.q, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.j, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.r = phi ptr [ %.pre.i.i, %bb.d ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  store i8 %i.i, ptr %i.s, align 1, !tbaa !37
  store i64 %i.k, ptr %i.f, align 8, !tbaa !33
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.k
  store i8 0, ptr %i.u, align 1, !tbaa !37
  %i.v = lshr i64 %.011.i, 7                      ; 2 uses
  %i.w = icmp samesign ugt i64 %.011.i, 16383
  br i1 %i.w, label %bb.c, label %._crit_edge.i, !llvm.loop !60

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.b
  %.0.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !33   ; 4 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i9.i: ; preds = %._crit_edge.i
  %i.ad = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %._crit_edge.i
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i9.i
  %i.af = phi i64 [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i9.i ]
  %i.ag = icmp ugt i64 %i.z, %i.af
  br i1 %i.ag, label %bb.e, label %_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.y, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i8.i = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i, %bb.e
  %i.ah = phi ptr [ %.pre.i8.i, %bb.e ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i ]
  %i.ai = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.y
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !37
  store i64 %i.z, ptr %i.x, align 8, !tbaa !33
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.z
  store i8 0, ptr %i.al, align 1, !tbaa !37
  %i.am = load ptr, ptr %0, align 8, !tbaa !61    ; 12 uses
  %i.an = icmp ugt i64 %2, 127
  br i1 %i.an, label %.lr.ph.i8, label %._crit_edge.i2

.lr.ph.i8:                                        ; preds = %_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i12, %.lr.ph.i8
  %.011.i9 = phi i64 [ %2, %.lr.ph.i8 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i12 ] ; 3 uses
  %i.aq = trunc i64 %.011.i9 to i8
  %i.ar = or i8 %i.aq, -128
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !33 ; 4 uses
  %i.at = add i64 %i.as, 1                        ; 3 uses
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ap
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i14: ; preds = %bb.f
  %i.aw = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.aw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10: ; preds = %bb.f
  %i.ax = load i64, ptr %i.ap, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i14
  %i.ay = phi i64 [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i14 ]
  %i.az = icmp ugt i64 %i.at, %i.ay
  br i1 %i.az, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i12

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 noundef %i.as, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i13 = load ptr, ptr %i.am, align 8, !tbaa !36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11
  %i.ba = phi ptr [ %.pre.i.i13, %bb.g ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i11 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as
  store i8 %i.ar, ptr %i.bb, align 1, !tbaa !37
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !33
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.at
  store i8 0, ptr %i.bd, align 1, !tbaa !37
  %i.be = lshr i64 %.011.i9, 7                    ; 2 uses
  %i.bf = icmp ugt i64 %.011.i9, 16383
  br i1 %i.bf, label %bb.f, label %._crit_edge.i2, !llvm.loop !60

._crit_edge.i2:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i12, %_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.0.lcssa.i3 = phi i64 [ %2, %_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i12 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !33 ; 4 uses
  %i.bi = add i64 %i.bh, 1                        ; 3 uses
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !36 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i9.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i9.i7: ; preds = %._crit_edge.i2
  %i.bm = icmp ult i64 %i.bh, 16
  tail call void @llvm.assume(i1 %i.bm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i4: ; preds = %._crit_edge.i2
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i5: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i9.i7
  %i.bo = phi i64 [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i4 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i9.i7 ]
  %i.bp = icmp ugt i64 %i.bi, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit15

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 noundef %i.bh, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i8.i6 = load ptr, ptr %i.am, align 8, !tbaa !36
  br label %_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit15

_ZN6google8protobuf8internal11WriteVarintEmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i5, %bb.h
  %i.bq = phi ptr [ %.pre.i8.i6, %bb.h ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i7.i5 ]
  %i.br = trunc nuw nsw i64 %.0.lcssa.i3 to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bh
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !37
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !33
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bi
  store i8 0, ptr %i.bu, align 1, !tbaa !37
  br label %bb.i
end_hunk_6
