Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/simplify?download=true
inline.NumInlined: 440
inline.NumDeleted: 183
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3re26Regexp13ComputeSimpleEv:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !49
  %.not17.not = icmp ne i8 %i.k, 0                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %.not17.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit, !llvm.loop !82

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !93   ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp ne i32 %i.o, 1114112
  %spec.select = and i1 %i.p, %i.q
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !52   ; 2 uses
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp ne i32 %i.u, 1114112
  %spec.select18 = and i1 %i.v, %i.w
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i16, ptr %i.x, align 2, !tbaa !47
  %i.z = icmp ult i16 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %.0.i14 = select i1 %i.z, ptr %i.aa, ptr %i.ab
  %i.ac = load ptr, ptr %.0.i14, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !49
  %i.af = icmp ne i8 %i.ae, 0
  br label %.loopexit

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !47
  %i.ai = icmp ult i16 %i.ah, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %.0.i15 = select i1 %i.ai, ptr %i.aj, ptr %i.ak
  %i.al = load ptr, ptr %.0.i15, align 8, !tbaa !48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !49
  %.not16 = icmp eq i8 %i.an, 0
  br i1 %.not16, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load i8, ptr %i.al, align 8, !tbaa !46  ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %switch.lookup, label %.loopexit

bb.i:                                             ; preds = %bb.a
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 2) #22
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 35, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit unwind label %bb.l

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit: ; preds = %bb.j
  %i.aq = load i8, ptr %0, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.aq, ptr %i.a, align 1, !tbaa !18
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIhTnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS5_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %.loopexit

bb.l:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi36EEERS2_RAT__Kc.exit, %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.as

switch.lookup:                                    ; preds = %bb.h
  %switch.cast = zext nneg i8 %i.ao to i10
  %switch.downshift = lshr i10 121, %switch.cast
  %switch.masked = trunc i10 %switch.downshift to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %switch.lookup, %bb.b, %bb.e, %bb.d, %bb.g, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.k, %bb.i, %bb.f
  %.1 = phi i1 [ false, %bb.k ], [ false, %bb.i ], [ true, %bb.a ], [ %switch.masked, %switch.lookup ], [ true, %bb.h ], [ true, %bb.b ], [ %i.af, %bb.f ], [ %spec.select, %bb.d ], [ false, %bb.g ], [ %spec.select18, %bb.e ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %.not17.not, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3re26Regexp6WalkerIPS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3re26Regexp6WalkerIPS0_EE, i64 16), ptr %0, align 8, !tbaa !20
  invoke void @_ZN3re26Regexp6WalkerIPS0_E5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIN3re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !40
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 480) #20
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !0

_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !37
  br label %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.c
  %i.l = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.b, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #20
  br label %_ZNSt5stackIN3re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEED2Ev.exit

_ZNSt5stackIN3re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214CoalesceWalker4CopyEPNS_6RegexpE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %i.a
}

declare noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define noundef ptr @_ZN3re214CoalesceWalker10ShortVisitEPNS_6RegexpES2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 228, i32 noundef 2) #22
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 33, ptr nonnull @.str.2)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.b

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.a
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.a = call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %i.a

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214CoalesceWalker9PostVisitEPNS_6RegexpES2_S2_PS2_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef captures(none) %4, i32 %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 12 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !47   ; 4 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 8, !tbaa !46
  %.not = icmp eq i8 %i.e, 5
  br i1 %.not, label %.lr.ph137, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = icmp eq i16 %i.b, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.0.i.i = select i1 %i.f, ptr %i.g, ptr %i.h
  %wide.trip.count.i = zext i16 %i.b to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph28.i, label %bb.e, !llvm.loop !1

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i, label %bb.d, label %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit

.lr.ph28.i:                                       ; preds = %bb.d, %.lr.ph28.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph28.i ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv33.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.o = load i16, ptr %i.a, align 2, !tbaa !47
  %i.p = zext i16 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next34.i, %i.p
  br i1 %i.q, label %.lr.ph28.i, label %bb.f, !llvm.loop !2

bb.f:                                             ; preds = %.lr.ph28.i
  %i.r = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %.loopexit

_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit: ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 11 uses
  %i.t = load i8, ptr %1, align 8, !tbaa !46
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !53
  %i.x = zext i16 %i.w to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef %i.u, i32 noundef %i.x)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit
  %i.y = load i16, ptr %i.a, align 2, !tbaa !47   ; 5 uses
  %i.z = icmp ugt i16 %i.y, 1
  br i1 %i.z, label %bb.h, label %._ZN3re26Regexp8AllocSubEi.exit_crit_edge

._ZN3re26Regexp8AllocSubEi.exit_crit_edge:        ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN3re26Regexp8AllocSubEi.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = zext i16 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !18
  %.pre178 = load i16, ptr %i.a, align 2, !tbaa !47
  br label %_ZN3re26Regexp8AllocSubEi.exit

_ZN3re26Regexp8AllocSubEi.exit:                   ; preds = %._ZN3re26Regexp8AllocSubEi.exit_crit_edge, %bb.h
  %i.ae = phi i16 [ %i.y, %._ZN3re26Regexp8AllocSubEi.exit_crit_edge ], [ %.pre178, %bb.h ] ; 4 uses
  %i.af = phi ptr [ %.pre, %._ZN3re26Regexp8AllocSubEi.exit_crit_edge ], [ %i.ac, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i16 %i.y, ptr %i.ag, align 2, !tbaa !47
  %i.ah = icmp ult i16 %i.y, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.i = select i1 %i.ah, ptr %i.ai, ptr %i.af   ; 8 uses
  %.not150 = icmp eq i16 %i.ae, 0
  br i1 %.not150, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZN3re26Regexp8AllocSubEi.exit
  %wide.trip.count = zext i16 %i.ae to i64        ; 8 uses
  %min.iters.check = icmp ult i16 %i.ae, 4
  %6 = ptrtoaddr ptr %.0.i to i64
  %7 = ptrtoaddr ptr %4 to i64
  %i.aj = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.aj, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check201 = icmp ult i16 %i.ae, 16
  br i1 %min.iters.check201, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 65520        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %wide.load = load <4 x ptr>, ptr %i.al, align 8, !tbaa !48
  %wide.load202 = load <4 x ptr>, ptr %i.am, align 8, !tbaa !48
  %wide.load203 = load <4 x ptr>, ptr %i.an, align 8, !tbaa !48
  %wide.load204 = load <4 x ptr>, ptr %i.ao, align 8, !tbaa !48
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store <4 x ptr> %wide.load, ptr %i.ap, align 8, !tbaa !48
  store <4 x ptr> %wide.load202, ptr %i.aq, align 8, !tbaa !48
  store <4 x ptr> %wide.load203, ptr %i.ar, align 8, !tbaa !48
  store <4 x ptr> %wide.load204, ptr %i.as, align 8, !tbaa !48
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec205 = and i64 %wide.trip.count, 65532     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index206 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next208, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index206
  %wide.load207 = load <4 x ptr>, ptr %i.au, align 8, !tbaa !48
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index206
  store <4 x ptr> %wide.load207, ptr %i.av, align 8, !tbaa !48
  %index.next208 = add nuw i64 %index206, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next208, %n.vec205
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n209 = icmp eq i64 %n.vec205, %wide.trip.count
  br i1 %cmp.n209, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec205, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.prol
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !48
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !96

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ba = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZN3re26Regexp8AllocSubEi.exit
  %i.bc = load i8, ptr %1, align 8, !tbaa !46
  switch i8 %i.bc, label %.loopexit [
    i8 10, label %bb.j
    i8 11, label %bb.k
  ]

bb.i:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !48
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.1
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !48
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.2
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !48
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !97

bb.j:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load <2 x i32>, ptr %i.br, align 8, !tbaa !18
  store <2 x i32> %i.bs, ptr %i.bq, align 8, !tbaa !18
  br label %.loopexit

bb.k:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %i.bu, ptr %i.bv, align 8, !tbaa !18
  br label %.loopexit

.lr.ph137:                                        ; preds = %bb.c, %bb.m
  %i.bw = phi i16 [ %i.ce, %bb.m ], [ %i.b, %bb.c ] ; 2 uses
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %bb.m ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 4 uses
  %i.bx = zext i16 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next160, %i.bx
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph137
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv159
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next160
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !48
  %i.cd = tail call noundef zeroext i1 @_ZN3re214CoalesceWalker11CanCoalesceEPNS_6RegexpES2_(ptr noundef %i.ca, ptr noundef %i.cc)
  %.pre179 = load i16, ptr %i.a, align 2, !tbaa !47 ; 3 uses
  br i1 %i.cd, label %.preheader131, label %bb.m

.preheader131:                                    ; preds = %bb.l
  %.not153 = icmp eq i16 %.pre179, 0
  br i1 %.not153, label %._crit_edge145, label %.lr.ph141

bb.m:                                             ; preds = %.lr.ph137, %bb.l
  %i.ce = phi i16 [ %i.bw, %.lr.ph137 ], [ %.pre179, %bb.l ] ; 5 uses
  %i.cf = zext i16 %i.ce to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.next160, %i.cf
  br i1 %i.cg, label %.lr.ph137, label %.critedge, !llvm.loop !98

.critedge:                                        ; preds = %bb.m
  %.not29.i114 = icmp eq i16 %i.ce, 0
  br i1 %.not29.i114, label %.loopexit132, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.critedge
  %i.ch = icmp eq i16 %i.ce, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %.0.i.i116 = select i1 %i.ch, ptr %i.ci, ptr %i.cj
  %wide.trip.count.i117 = zext i16 %i.ce to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i120 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i121 = icmp eq i64 %indvars.iv.next.i120, %wide.trip.count.i117
  br i1 %exitcond.not.i121, label %.lr.ph28.i123, label %bb.o, !llvm.loop !1

bb.o:                                             ; preds = %bb.n, %.lr.ph.i115
  %indvars.iv.i118 = phi i64 [ 0, %.lr.ph.i115 ], [ %indvars.iv.next.i120, %bb.n ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i116, i64 %indvars.iv.i118
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !48
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i118
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !48
  %.not.i119 = icmp eq ptr %i.cn, %i.cl
  br i1 %.not.i119, label %bb.n, label %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit126

.lr.ph28.i123:                                    ; preds = %bb.n, %.lr.ph28.i123
  %indvars.iv33.i124 = phi i64 [ %indvars.iv.next34.i125, %.lr.ph28.i123 ], [ 0, %bb.n ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv33.i124
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !48
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cp)
  %indvars.iv.next34.i125 = add nuw nsw i64 %indvars.iv33.i124, 1 ; 2 uses
  %i.cq = load i16, ptr %i.a, align 2, !tbaa !47
  %i.cr = zext i16 %i.cq to i64
  %i.cs = icmp samesign ult i64 %indvars.iv.next34.i125, %i.cr
  br i1 %i.cs, label %.lr.ph28.i123, label %.loopexit132, !llvm.loop !2

.loopexit132:                                     ; preds = %.lr.ph28.i123, %.critedge
  %i.ct = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %.loopexit

_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit126: ; preds = %bb.o
  %i.cu = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 11 uses
  %i.cv = load i8, ptr %1, align 8, !tbaa !46
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !53
  %i.cz = zext i16 %i.cy to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cu, i32 noundef %i.cw, i32 noundef %i.cz)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit126
  %i.da = load i16, ptr %i.a, align 2, !tbaa !47  ; 5 uses
  %i.db = icmp ugt i16 %i.da, 1
  br i1 %i.db, label %bb.q, label %._ZN3re26Regexp8AllocSubEi.exit127_crit_edge

._ZN3re26Regexp8AllocSubEi.exit127_crit_edge:     ; preds = %bb.p
  %.phi.trans.insert184 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.pre185 = load ptr, ptr %.phi.trans.insert184, align 8
  br label %_ZN3re26Regexp8AllocSubEi.exit127

bb.q:                                             ; preds = %bb.p
  %i.dc = zext i16 %i.da to i64
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.dd) #24 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.de, ptr %i.df, align 8, !tbaa !18
  %.pre186 = load i16, ptr %i.a, align 2, !tbaa !47
  br label %_ZN3re26Regexp8AllocSubEi.exit127

_ZN3re26Regexp8AllocSubEi.exit127:                ; preds = %._ZN3re26Regexp8AllocSubEi.exit127_crit_edge, %bb.q
  %i.dg = phi i16 [ %i.da, %._ZN3re26Regexp8AllocSubEi.exit127_crit_edge ], [ %.pre186, %bb.q ] ; 4 uses
  %i.dh = phi ptr [ %.pre185, %._ZN3re26Regexp8AllocSubEi.exit127_crit_edge ], [ %i.de, %bb.q ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 6
  store i16 %i.da, ptr %i.di, align 2, !tbaa !47
  %i.dj = icmp ult i16 %i.da, 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.0.i128 = select i1 %i.dj, ptr %i.dk, ptr %i.dh ; 8 uses
  %.not152 = icmp eq i16 %i.dg, 0
  br i1 %.not152, label %.loopexit, label %iter.check228

iter.check228:                                    ; preds = %_ZN3re26Regexp8AllocSubEi.exit127
  %wide.trip.count176 = zext i16 %i.dg to i64     ; 8 uses
  %min.iters.check213 = icmp ult i16 %i.dg, 4
  %8 = ptrtoaddr ptr %.0.i128 to i64
  %9 = ptrtoaddr ptr %4 to i64
  %i.dl = sub i64 %9, %8
  %diff.check212 = icmp ugt i64 %i.dl, -128
  %or.cond271 = select i1 %min.iters.check213, i1 true, i1 %diff.check212
  br i1 %or.cond271, label %.lr.ph139.preheader, label %vector.main.loop.iter.check214

vector.main.loop.iter.check214:                   ; preds = %iter.check228
  %min.iters.check215 = icmp ult i16 %i.dg, 16
  br i1 %min.iters.check215, label %vec.epilog.ph232, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check214
  %i.dm = and i64 %wide.trip.count176, 12
  %n.vec217 = and i64 %wide.trip.count176, 65520  ; 4 uses
  br label %vector.body218

vector.body218:                                   ; preds = %vector.ph216, %vector.body218
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next224, %vector.body218 ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index219 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %wide.load220 = load <4 x ptr>, ptr %i.dn, align 8, !tbaa !48
  %wide.load221 = load <4 x ptr>, ptr %i.do, align 8, !tbaa !48
  %wide.load222 = load <4 x ptr>, ptr %i.dp, align 8, !tbaa !48
  %wide.load223 = load <4 x ptr>, ptr %i.dq, align 8, !tbaa !48
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %index219 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  store <4 x ptr> %wide.load220, ptr %i.dr, align 8, !tbaa !48
  store <4 x ptr> %wide.load221, ptr %i.ds, align 8, !tbaa !48
  store <4 x ptr> %wide.load222, ptr %i.dt, align 8, !tbaa !48
  store <4 x ptr> %wide.load223, ptr %i.du, align 8, !tbaa !48
  %index.next224 = add nuw i64 %index219, 16      ; 2 uses
  %i.dv = icmp eq i64 %index.next224, %n.vec217
  br i1 %i.dv, label %middle.block225, label %vector.body218, !llvm.loop !99

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %n.vec217, %wide.trip.count176
  br i1 %cmp.n226, label %.loopexit, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block225
  %min.epilog.iters.check231 = icmp eq i64 %i.dm, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph139.preheader, label %vec.epilog.ph232, !prof !56

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check214, %vec.epilog.iter.check230
  %vec.epilog.resume.val227 = phi i64 [ %n.vec217, %vec.epilog.iter.check230 ], [ 0, %vector.main.loop.iter.check214 ]
  %n.vec233 = and i64 %wide.trip.count176, 65532  ; 3 uses
  br label %vec.epilog.vector.body234

vec.epilog.vector.body234:                        ; preds = %vec.epilog.vector.body234, %vec.epilog.ph232
  %index235 = phi i64 [ %vec.epilog.resume.val227, %vec.epilog.ph232 ], [ %index.next237, %vec.epilog.vector.body234 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index235
  %wide.load236 = load <4 x ptr>, ptr %i.dw, align 8, !tbaa !48
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %index235
  store <4 x ptr> %wide.load236, ptr %i.dx, align 8, !tbaa !48
  %index.next237 = add nuw i64 %index235, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next237, %n.vec233
  br i1 %i.dy, label %vec.epilog.middle.block238, label %vec.epilog.vector.body234, !llvm.loop !100

vec.epilog.middle.block238:                       ; preds = %vec.epilog.vector.body234
  %cmp.n239 = icmp eq i64 %n.vec233, %wide.trip.count176
  br i1 %cmp.n239, label %.loopexit, label %.lr.ph139.preheader

.lr.ph139.preheader:                              ; preds = %iter.check228, %vec.epilog.iter.check230, %vec.epilog.middle.block238
  %indvars.iv173.ph = phi i64 [ 0, %iter.check228 ], [ %n.vec217, %vec.epilog.iter.check230 ], [ %n.vec233, %vec.epilog.middle.block238 ] ; 3 uses
  %xtraiter279 = and i64 %wide.trip.count176, 3   ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %.lr.ph139.prol.loopexit, label %.lr.ph139.prol

.lr.ph139.prol:                                   ; preds = %.lr.ph139.preheader, %.lr.ph139.prol
  %indvars.iv173.prol = phi i64 [ %indvars.iv.next174.prol, %.lr.ph139.prol ], [ %indvars.iv173.ph, %.lr.ph139.preheader ] ; 3 uses
  %prol.iter281 = phi i64 [ %prol.iter281.next, %.lr.ph139.prol ], [ 0, %.lr.ph139.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv173.prol
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !48
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv173.prol
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !48
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter281.next = add i64 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i64 %prol.iter281.next, %xtraiter279
  br i1 %prol.iter281.cmp.not, label %.lr.ph139.prol.loopexit, label %.lr.ph139.prol, !llvm.loop !101

.lr.ph139.prol.loopexit:                          ; preds = %.lr.ph139.prol, %.lr.ph139.preheader
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %.lr.ph139.preheader ], [ %indvars.iv.next174.prol, %.lr.ph139.prol ]
  %i.ec = sub nsw i64 %indvars.iv173.ph, %wide.trip.count176
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %.loopexit, label %.lr.ph139

bb.r:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit126
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph139:                                        ; preds = %.lr.ph139.prol.loopexit, %.lr.ph139
  %indvars.iv173 = phi i64 [ %indvars.iv.next174.3, %.lr.ph139 ], [ %indvars.iv173.unr, %.lr.ph139.prol.loopexit ] ; 6 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv173
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !48
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv173
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !48
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next174
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !48
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv.next174
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !48
  %indvars.iv.next174.1 = add nuw nsw i64 %indvars.iv173, 2 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next174.1
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !48
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv.next174.1
  store ptr %i.em, ptr %i.en, align 8, !tbaa !48
  %indvars.iv.next174.2 = add nuw nsw i64 %indvars.iv173, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next174.2
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !48
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv.next174.2
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !48
  %indvars.iv.next174.3 = add nuw nsw i64 %indvars.iv173, 4 ; 2 uses
  %exitcond177.not.3 = icmp eq i64 %indvars.iv.next174.3, %wide.trip.count176
  br i1 %exitcond177.not.3, label %.loopexit, label %.lr.ph139, !llvm.loop !102

.preheader:                                       ; preds = %bb.u
  %.not154 = icmp eq i16 %i.jn, 0
  br i1 %.not154, label %._crit_edge145, label %iter.check257

iter.check257:                                    ; preds = %.preheader
  %wide.trip.count168 = zext i16 %i.jn to i64     ; 6 uses
  %min.iters.check241 = icmp ult i16 %i.jn, 4
  br i1 %min.iters.check241, label %.lr.ph144.preheader, label %vector.main.loop.iter.check242

vector.main.loop.iter.check242:                   ; preds = %iter.check257
  %min.iters.check243 = icmp ult i16 %i.jn, 16
  br i1 %min.iters.check243, label %vec.epilog.ph261, label %vector.ph244

vector.ph244:                                     ; preds = %vector.main.loop.iter.check242
  %i.er = and i64 %wide.trip.count168, 12
  %n.vec245 = and i64 %wide.trip.count168, 65520  ; 4 uses
  br label %vector.body246

vector.body246:                                   ; preds = %vector.ph244, %vector.body246
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next251, %vector.body246 ] ; 17 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph244 ], [ %i.ib, %vector.body246 ]
  %vec.phi248 = phi <4 x i32> [ zeroinitializer, %vector.ph244 ], [ %i.ic, %vector.body246 ]
  %vec.phi249 = phi <4 x i32> [ zeroinitializer, %vector.ph244 ], [ %i.id, %vector.body246 ]
  %vec.phi250 = phi <4 x i32> [ zeroinitializer, %vector.ph244 ], [ %i.ie, %vector.body246 ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 48
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 88
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 96
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 104
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 112
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index247
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 120
  %i.fx = load ptr, ptr %i.es, align 8, !tbaa !48
  %i.fy = load ptr, ptr %i.eu, align 8, !tbaa !48
  %i.fz = load ptr, ptr %i.ew, align 8, !tbaa !48
  %i.ga = load ptr, ptr %i.ey, align 8, !tbaa !48
  %i.gb = load ptr, ptr %i.fa, align 8, !tbaa !48
  %i.gc = load ptr, ptr %i.fc, align 8, !tbaa !48
  %i.gd = load ptr, ptr %i.fe, align 8, !tbaa !48
  %i.ge = load ptr, ptr %i.fg, align 8, !tbaa !48
  %i.gf = load ptr, ptr %i.fi, align 8, !tbaa !48
  %i.gg = load ptr, ptr %i.fk, align 8, !tbaa !48
  %i.gh = load ptr, ptr %i.fm, align 8, !tbaa !48
  %i.gi = load ptr, ptr %i.fo, align 8, !tbaa !48
  %i.gj = load ptr, ptr %i.fq, align 8, !tbaa !48
  %i.gk = load ptr, ptr %i.fs, align 8, !tbaa !48
  %i.gl = load ptr, ptr %i.fu, align 8, !tbaa !48
  %i.gm = load ptr, ptr %i.fw, align 8, !tbaa !48
  %i.gn = load i8, ptr %i.fx, align 8, !tbaa !46
  %i.go = load i8, ptr %i.fy, align 8, !tbaa !46
  %i.gp = load i8, ptr %i.fz, align 8, !tbaa !46
  %i.gq = load i8, ptr %i.ga, align 8, !tbaa !46
  %i.gr = insertelement <4 x i8> poison, i8 %i.gn, i64 0
  %i.gs = insertelement <4 x i8> %i.gr, i8 %i.go, i64 1
  %i.gt = insertelement <4 x i8> %i.gs, i8 %i.gp, i64 2
  %i.gu = insertelement <4 x i8> %i.gt, i8 %i.gq, i64 3
  %i.gv = load i8, ptr %i.gb, align 8, !tbaa !46
  %i.gw = load i8, ptr %i.gc, align 8, !tbaa !46
  %i.gx = load i8, ptr %i.gd, align 8, !tbaa !46
  %i.gy = load i8, ptr %i.ge, align 8, !tbaa !46
  %i.gz = insertelement <4 x i8> poison, i8 %i.gv, i64 0
end_hunk_0
begin_hunk_1_@_ZN3re214CoalesceWalker10DoCoalesceEPPNS_6RegexpES3_:bb.a
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !18 ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 1
  br i1 %i.bn, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.bm to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.z
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.z ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !58
  %i.bs = icmp eq i32 %i.br, %i.bk
  br i1 %i.bs, label %bb.z, label %.critedge.loopexit.split.loop.exit86

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.y, !llvm.loop !108

.critedge.loopexit.split.loop.exit86:             ; preds = %bb.y
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.z, %.critedge.loopexit.split.loop.exit86, %bb.x
  %.0.lcssa = phi i32 [ 1, %bb.x ], [ %i.bt, %.critedge.loopexit.split.loop.exit86 ], [ %i.bm, %bb.z ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.bv = add nsw i32 %i.ai, %.0.lcssa
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !18
  %.not = icmp eq i32 %i.ah, -1
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  %i.bw = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.bx = add nsw i32 %i.ah, %.0.lcssa
  store i32 %i.bx, ptr %i.bw, align 8, !tbaa !18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge
  %i.by = load i32, ptr %i.bl, align 8, !tbaa !18
  %i.bz = icmp eq i32 %.0.lcssa, %i.by
  br i1 %i.bz, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.o, ptr %0, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !18
  %i.cc = zext nneg i32 %.0.lcssa to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = load i32, ptr %i.bl, align 8, !tbaa !18
  %i.cf = sub nsw i32 %i.ce, %.0.lcssa
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !53
  %i.ci = zext i16 %i.ch to i32
  %i.cj = tail call noundef ptr @_ZN3re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef nonnull %i.cd, i32 noundef %i.cf, i32 noundef %i.ci)
  br label %bb.ai

bb.ad:                                            ; preds = %bb.k
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 2) #22
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 31, ptr nonnull @.str.4)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit77 unwind label %bb.af

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit77: ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ck = load i8, ptr %i.d, align 8, !tbaa !46
  %i.cl = zext i8 %i.ck to i32
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !60
  %i.cm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re28RegexpOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ae unwind label %bb.ag     ; 0 uses

bb.ae:                                            ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi32EEERS2_RAT__Kc.exit77
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.co, %bb.ag ], [ %i.cn, %bb.af ]
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ac, %bb.v
  %storemerge = phi ptr [ %i.cj, %bb.ac ], [ %i.o, %bb.v ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !48
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.g
  ret void

bb.ak:                                            ; preds = %bb.ah, %bb.w, %bb.j
  %.pn73.pn = phi { ptr, i32 } [ %.pn73, %bb.j ], [ %.pn, %bb.ah ], [ %i.be, %bb.w ]
  resume { ptr, i32 } %.pn73.pn
}

declare noundef zeroext i1 @_ZN3re26Regexp5EqualEPS0_S1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3re26Regexp6RepeatEPS0_NS0_10ParseFlagsEii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re28RegexpOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !60
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret ptr %0

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.f
}

declare noundef ptr @_ZN3re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker4CopyEPNS_6RegexpE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %i.a
}

; Function Attrs: cold mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker10ShortVisitEPNS_6RegexpES2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 2) #22
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 33, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.b

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.a
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.a = call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %i.a

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker8PreVisitEPNS_6RegexpES2_Pb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !49
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %3, align 1, !tbaa !61
  %i.c = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker9PostVisitEPNS_6RegexpES2_S2_PS2_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %1, align 8, !tbaa !46      ; 2 uses
  switch i8 %i.b, label %bb.y [
    i8 1, label %bb.b
    i8 2, label %bb.b
    i8 3, label %bb.b
    i8 4, label %bb.b
    i8 14, label %bb.b
    i8 15, label %bb.b
    i8 18, label %bb.b
    i8 16, label %bb.b
    i8 17, label %bb.b
    i8 19, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 21, label %bb.b
    i8 5, label %bb.c
    i8 6, label %bb.c
    i8 11, label %bb.i
    i8 7, label %bb.n
    i8 8, label %bb.n
    i8 9, label %bb.n
    i8 10, label %bb.v
    i8 20, label %bb.x
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.c, align 1, !tbaa !49
  %i.d = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ad

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 4 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !47   ; 3 uses
  %.not29.i = icmp eq i16 %i.f, 0
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = icmp eq i16 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.0.i.i = select i1 %i.g, ptr %i.h, ptr %i.i
  %wide.trip.count.i = zext i16 %i.f to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph28.i, label %bb.e, !llvm.loop !1

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %.not.i = icmp eq ptr %i.m, %i.k
  br i1 %.not.i, label %bb.d, label %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit

.lr.ph28.i:                                       ; preds = %bb.d, %.lr.ph28.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph28.i ], [ 0, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv33.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !48
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.o)
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.p = load i16, ptr %i.e, align 2, !tbaa !47
  %i.q = zext i16 %i.p to i64
  %i.r = icmp samesign ult i64 %indvars.iv.next34.i, %i.q
  br i1 %i.r, label %.lr.ph28.i, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph28.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.s, align 1, !tbaa !49
  %i.t = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ad

_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit: ; preds = %bb.e
  %i.u = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 8 uses
  %i.v = load i8, ptr %1, align 8, !tbaa !46
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i16, ptr %i.x, align 2, !tbaa !53
  %i.z = zext i16 %i.y to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i32 noundef %i.w, i32 noundef %i.z)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit
  %i.aa = load i16, ptr %i.e, align 2, !tbaa !47  ; 5 uses
  %i.ab = icmp ugt i16 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %._ZN3re26Regexp8AllocSubEi.exit_crit_edge

._ZN3re26Regexp8AllocSubEi.exit_crit_edge:        ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN3re26Regexp8AllocSubEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = zext i16 %i.aa to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !18
  %.pre89 = load i16, ptr %i.e, align 2, !tbaa !47
  br label %_ZN3re26Regexp8AllocSubEi.exit

_ZN3re26Regexp8AllocSubEi.exit:                   ; preds = %._ZN3re26Regexp8AllocSubEi.exit_crit_edge, %bb.g
  %i.ag = phi i16 [ %i.aa, %._ZN3re26Regexp8AllocSubEi.exit_crit_edge ], [ %.pre89, %bb.g ] ; 4 uses
  %i.ah = phi ptr [ %.pre, %._ZN3re26Regexp8AllocSubEi.exit_crit_edge ], [ %i.ae, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i16 %i.aa, ptr %i.ai, align 2, !tbaa !47
  %i.aj = icmp ult i16 %i.aa, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.0.i = select i1 %i.aj, ptr %i.ak, ptr %i.ah   ; 8 uses
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZN3re26Regexp8AllocSubEi.exit
  %wide.trip.count = zext i16 %i.ag to i64        ; 8 uses
  %min.iters.check = icmp ult i16 %i.ag, 4
  %7 = ptrtoaddr ptr %.0.i to i64
  %8 = ptrtoaddr ptr %4 to i64
  %i.al = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.al, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check97 = icmp ult i16 %i.ag, 16
  br i1 %min.iters.check97, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.am = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 65520        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %wide.load = load <4 x ptr>, ptr %i.an, align 8, !tbaa !48
  %wide.load98 = load <4 x ptr>, ptr %i.ao, align 8, !tbaa !48
  %wide.load99 = load <4 x ptr>, ptr %i.ap, align 8, !tbaa !48
  %wide.load100 = load <4 x ptr>, ptr %i.aq, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  store <4 x ptr> %wide.load, ptr %i.ar, align 8, !tbaa !48
  store <4 x ptr> %wide.load98, ptr %i.as, align 8, !tbaa !48
  store <4 x ptr> %wide.load99, ptr %i.at, align 8, !tbaa !48
  store <4 x ptr> %wide.load100, ptr %i.au, align 8, !tbaa !48
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.am, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %wide.trip.count, 65532     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next104, %vec.epilog.vector.body ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index102
  %wide.load103 = load <4 x ptr>, ptr %i.aw, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index102
  store <4 x ptr> %wide.load103, ptr %i.ax, align 8, !tbaa !48
  %index.next104 = add nuw i64 %index102, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next104, %n.vec101
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !112

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n105 = icmp eq i64 %n.vec101, %wide.trip.count
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec101, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.prol
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !48
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !113

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bc = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %_ZN3re26Regexp8AllocSubEi.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 1, ptr %i.be, align 1, !tbaa !49
  br label %bb.ad

bb.h:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 40) #20
  br label %bb.ae

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !48
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.1
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !48
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !48
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.2
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !48
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !114

bb.i:                                             ; preds = %bb.a
  %i.bs = load ptr, ptr %4, align 8, !tbaa !48    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !47
  %i.bv = icmp ult i16 %i.bu, 2
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %.0.i83 = select i1 %i.bv, ptr %i.bw, ptr %i.bx
  %i.by = load ptr, ptr %.0.i83, align 8, !tbaa !48
  %i.bz = icmp eq ptr %i.bs, %i.by
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bs)
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.ca, align 1, !tbaa !49
  %i.cb = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ad

bb.k:                                             ; preds = %bb.i
  %i.cc = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !53
  %i.cf = zext i16 %i.ce to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, i32 noundef 11, i32 noundef %i.cf)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i16 1, ptr %i.cg, align 2, !tbaa !47
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.bs, ptr %i.ch, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  store i8 1, ptr %i.cl, align 1, !tbaa !49
  br label %bb.ad

bb.m:                                             ; preds = %bb.k
  %i.cm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 40) #20
  br label %bb.ae

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.cn = load ptr, ptr %4, align 8, !tbaa !48    ; 7 uses
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !46  ; 2 uses
  %i.cp = icmp eq i8 %i.co, 2
  br i1 %i.cp, label %bb.ad, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !47
  %i.cs = icmp ult i16 %i.cr, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %.0.i85 = select i1 %i.cs, ptr %i.ct, ptr %i.cu
  %i.cv = load ptr, ptr %.0.i85, align 8, !tbaa !48
  %i.cw = icmp eq ptr %i.cn, %i.cv
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.cn)
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.cx, align 1, !tbaa !49
  %i.cy = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.cz = icmp eq i8 %i.b, %i.co
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.db = load i16, ptr %i.da, align 2, !tbaa !53
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !53
  %i.de = icmp eq i16 %i.db, %i.dd
  br i1 %i.de, label %bb.ad, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.df = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 6 uses
  %i.dg = load i8, ptr %1, align 8, !tbaa !46
  %i.dh = zext i8 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !53
  %i.dk = zext i16 %i.dj to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.df, i32 noundef %i.dh, i32 noundef %i.dk)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  store i16 1, ptr %i.dl, align 2, !tbaa !47
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr %i.cn, ptr %i.dm, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store i8 1, ptr %i.dn, align 1, !tbaa !49
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.do = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 40) #20
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  %i.dp = load ptr, ptr %4, align 8, !tbaa !48    ; 4 uses
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !46
  %i.dr = icmp eq i8 %i.dq, 2
  br i1 %i.dr, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !18
  %i.dv = load i32, ptr %i.ds, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !53
  %i.dy = zext i16 %i.dx to i32
  %i.dz = tail call noundef ptr @_ZN3re214SimplifyWalker14SimplifyRepeatEPNS_6RegexpEiiNS1_10ParseFlagsE(ptr noundef nonnull %i.dp, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.dy) ; 2 uses
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dp)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  store i8 1, ptr %i.ea, align 1, !tbaa !49
  br label %bb.ad

bb.x:                                             ; preds = %bb.a
  %i.eb = tail call noundef ptr @_ZN3re214SimplifyWalker17SimplifyCharClassEPNS_6RegexpE(ptr noundef nonnull %1) ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store i8 1, ptr %i.ec, align 1, !tbaa !49
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str, i32 noundef 570) #22
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 27, ptr nonnull @.str.6)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit unwind label %bb.aa

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ed = load i8, ptr %1, align 8, !tbaa !46
  %i.ee = zext i8 %i.ed to i32
  store i32 %i.ee, ptr %i.a, align 4, !tbaa !60
  %i.ef = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re28RegexpOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.z unwind label %bb.ab      ; 0 uses

bb.z:                                             ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.eg = call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi28EEERS2_RAT__Kc.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.ab ], [ %i.eh, %bb.aa ]
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ae

bb.ad:                                            ; preds = %bb.w, %bb.v, %bb.p, %bb.t, %bb.n, %bb.r, %bb.j, %bb.l, %bb.z, %bb.x, %._crit_edge, %.loopexit, %bb.b
  %.3 = phi ptr [ %i.eg, %bb.z ], [ %i.d, %bb.b ], [ %i.u, %._crit_edge ], [ %i.t, %.loopexit ], [ %i.eb, %bb.x ], [ %i.cc, %bb.l ], [ %i.cn, %bb.r ], [ %i.cb, %bb.j ], [ %i.df, %bb.t ], [ %i.cy, %bb.p ], [ %i.cn, %bb.n ], [ %i.dz, %bb.w ], [ %i.dp, %bb.v ]
  ret ptr %.3

bb.ae:                                            ; preds = %bb.ac, %bb.u, %bb.m, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %i.bf, %bb.h ], [ %i.cm, %bb.m ], [ %i.do, %bb.u ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker14SimplifyRepeatEPNS_6RegexpEiiNS1_10ParseFlagsE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = load i8, ptr %0, align 8, !tbaa !46      ; 2 uses
  %i.d = add i8 %i.c, -14
  %switch.i = icmp ult i8 %i.d, 6
  br i1 %switch.i, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i8 %i.c, -5
  %switch = icmp ult i8 %i.e, 2
  br i1 %switch, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = load i16, ptr %i.f, align 2, !tbaa !47   ; 2 uses
  %i.h = icmp ult i16 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.0.i = select i1 %i.h, ptr %i.i, ptr %i.j      ; 3 uses
  %i.k = zext i16 %i.g to i64                     ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = lshr i64 %i.k, 2                         ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.g
  %.047.i.i.i.i = phi i64 [ %i.ae, %bb.g ], [ %i.n, %bb.c ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.ad, %bb.g ], [ %.0.i, %bb.c ] ; 9 uses
  %i.o = load ptr, ptr %.02946.i.i.i.i, align 8, !tbaa !48
  %i.p = load i8, ptr %i.o, align 8, !tbaa !46
  %i.q = add i8 %i.p, -14
  %switch.i93 = icmp ult i8 %i.q, 6
  br i1 %switch.i93, label %bb.d, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !48
  %i.t = load i8, ptr %i.s, align 8, !tbaa !46
  %i.u = add i8 %i.t, -14
  %switch.i92 = icmp ult i8 %i.u, 6
  br i1 %switch.i92, label %bb.e, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = load i8, ptr %i.w, align 8, !tbaa !46
  %i.y = add i8 %i.x, -14
  %switch.i91 = icmp ult i8 %i.y, 6
  br i1 %switch.i91, label %bb.f, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit186

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !48
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !46
  %i.ac = add i8 %i.ab, -14
  %switch.i90 = icmp ult i8 %i.ac, 6
  br i1 %switch.i90, label %bb.g, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit188

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32 ; 3 uses
  %i.ae = add nsw i64 %.047.i.i.i.i, -1
  %i.af = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !115

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre.i.i.i.i = ptrtoint ptr %i.ad to i64
  %.pre52.i.i.i.i = sub i64 %i.m, %.pre.i.i.i.i
  %i.ag = ashr exact i64 %.pre52.i.i.i.i, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi53.i.i.i.i = phi i64 [ %i.ag, %._crit_edge.loopexit.i.i.i.i ], [ %i.k, %bb.c ]
  %.029.lcssa.i.i.i.i = phi ptr [ %i.ad, %._crit_edge.loopexit.i.i.i.i ], [ %.0.i, %bb.c ] ; 5 uses
  switch i64 %.pre-phi53.i.i.i.i, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !48
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !46
  %i.aj = add i8 %i.ai, -14
  %switch.i89 = icmp ult i8 %i.aj, 6
  br i1 %switch.i89, label %bb.i, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ak, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.al = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !48
  %i.am = load i8, ptr %i.al, align 8, !tbaa !46
  %i.an = add i8 %i.am, -14
  %switch.i88 = icmp ult i8 %i.an, 6
  br i1 %switch.i88, label %bb.k, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.ao, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ap = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !46
  %i.ar = add i8 %i.aq, -14
  %switch.i87 = icmp ult i8 %i.ar, 6
  br i1 %switch.i87, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit186: ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit188: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit186, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit188, %bb.h, %bb.j, %bb.l
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.h ], [ %.2.i.i.i.i, %bb.l ], [ %i.au, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit188 ], [ %i.at, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit186 ], [ %i.as, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.av = icmp eq ptr %i.l, %.028.i.i.i.i
  br i1 %i.av, label %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, label %bb.m

_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread: ; preds = %bb.l, %._crit_edge.i.i.i.i, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit, %bb.a
  %.sroa.speculated110 = tail call i32 @llvm.smin.i32(i32 %1, i32 1) ; 2 uses
  %i.aw = icmp sgt i32 %2, 1
  br i1 %i.aw, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit
  %.0133 = phi i32 [ %.sroa.speculated110, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit.thread ], [ %1, %_ZSt6all_ofIPPN3re26RegexpEPFbS2_EEbT_S6_T0_.exit ], [ %1, %bb.b ] ; 6 uses
  %i.ax = icmp eq i32 %2, -1
  br i1 %i.ax, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  switch i32 %.0133, label %bb.q [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.az = tail call noundef ptr @_ZN3re26Regexp4StarEPS0_NS0_10ParseFlagsE(ptr noundef %i.ay, i32 noundef %3)
  br label %bb.aw

bb.p:                                             ; preds = %bb.n
  %i.ba = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.bb = tail call noundef ptr @_ZN3re26Regexp4PlusEPS0_NS0_10ParseFlagsE(ptr noundef %i.ba, i32 noundef %3)
  br label %bb.aw

bb.q:                                             ; preds = %bb.n
  %i.bc = icmp slt i32 %.0133, 0
  br i1 %i.bc, label %.noexc.i, label %.lr.ph.preheader, !prof !17

.noexc.i:                                         ; preds = %bb.q
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.bd = zext nneg i32 %.0133 to i64
  %i.be = shl nuw nsw i64 %i.bd, 3                ; 3 uses
  %i.bf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24 ; 5 uses
  %i.bg = add nsw i32 %.0133, -1                  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bg to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.r
  %i.bh = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.t unwind label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.bi = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_1
