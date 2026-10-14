Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/simplify?download=true
inline.NumInlined: 467
inline.NumDeleted: 197
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN10LogMessageC2EPKci:bb.a
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.10, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit8: ; preds = %bb.d
  ret void

bb.e:                                             ; preds = %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit6
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.a) #18
  resume { ptr, i32 } %i.n
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !68, !range !35, !noundef !36
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !21
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.f = getelementptr i8, ptr %i.d, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 %i.g
  store ptr %i.e, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.i, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.p) #18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.q) #18
  ret void

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #20
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3re26Regexp6WalkerIPS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3re26Regexp6WalkerIPS0_EE, i64 16), ptr %0, align 8, !tbaa !21
  invoke void @_ZN3re26Regexp6WalkerIPS0_E5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIN3re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !41
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef 480) #19
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, !llvm.loop !0

_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i

_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i, %bb.c
  %i.l = phi ptr [ %.pre.i.i.i, %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i ], [ %i.b, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #19
  br label %_ZNSt5stackIN3re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEED2Ev.exit

_ZNSt5stackIN3re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseIN3re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214CoalesceWalker4CopyEPNS_6RegexpE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %i.a
}

declare noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214CoalesceWalker10ShortVisitEPNS_6RegexpES2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull @.str, i32 noundef 225)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.2, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load i8, ptr %3, align 8, !tbaa !68, !range !35, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !21
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZN10LogMessageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #20
  unreachable

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #18
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.u = call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %i.u

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214CoalesceWalker9PostVisitEPNS_6RegexpES2_S2_PS2_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef captures(none) %4, i32 %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 12 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !48   ; 4 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 8, !tbaa !47
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i, label %bb.d, label %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit

.lr.ph28.i:                                       ; preds = %bb.d, %.lr.ph28.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph28.i ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv33.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.o = load i16, ptr %i.a, align 2, !tbaa !48
  %i.p = zext i16 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next34.i, %i.p
  br i1 %i.q, label %.lr.ph28.i, label %bb.f, !llvm.loop !2

bb.f:                                             ; preds = %.lr.ph28.i
  %i.r = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %.loopexit

_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit: ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 11 uses
  %i.t = load i8, ptr %1, align 8, !tbaa !47
  %i.u = zext i8 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !69
  %i.x = zext i16 %i.w to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i32 noundef %i.u, i32 noundef %i.x)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit
  %i.y = load i16, ptr %i.a, align 2, !tbaa !48   ; 5 uses
  %i.z = icmp ugt i16 %i.y, 1
  br i1 %i.z, label %bb.h, label %._ZN3re26Regexp8AllocSubEi.exit_crit_edge

._ZN3re26Regexp8AllocSubEi.exit_crit_edge:        ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN3re26Regexp8AllocSubEi.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = zext i16 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #21 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !19
  %.pre178 = load i16, ptr %i.a, align 2, !tbaa !48
  br label %_ZN3re26Regexp8AllocSubEi.exit

_ZN3re26Regexp8AllocSubEi.exit:                   ; preds = %._ZN3re26Regexp8AllocSubEi.exit_crit_edge, %bb.h
  %i.ae = phi i16 [ %i.y, %._ZN3re26Regexp8AllocSubEi.exit_crit_edge ], [ %.pre178, %bb.h ] ; 3 uses
  %i.af = phi ptr [ %.pre, %._ZN3re26Regexp8AllocSubEi.exit_crit_edge ], [ %i.ac, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  store i16 %i.y, ptr %i.ag, align 2, !tbaa !48
  %i.ah = icmp ult i16 %i.y, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.i = select i1 %i.ah, ptr %i.ai, ptr %i.af   ; 7 uses
  %.not150 = icmp eq i16 %i.ae, 0
  br i1 %.not150, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3re26Regexp8AllocSubEi.exit
  %wide.trip.count = zext i16 %i.ae to i64        ; 5 uses
  %min.iters.check = icmp ult i16 %i.ae, 8
  %6 = ptrtoaddr ptr %.0.i to i64
  %7 = ptrtoaddr ptr %4 to i64
  %i.aj = sub i64 %7, %6
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader221, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 65532        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !49
  %wide.load201 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x ptr> %wide.load, ptr %i.am, align 8, !tbaa !49
  store <2 x ptr> %wide.load201, ptr %i.an, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader221

.lr.ph.preheader221:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader221, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader221 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader221 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.prol
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !49
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !110

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader221
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader221 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.as = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN3re26Regexp8AllocSubEi.exit
  %i.au = load i8, ptr %1, align 8, !tbaa !47
  switch i8 %i.au, label %.loopexit [
    i8 10, label %bb.j
    i8 11, label %bb.k
  ]

bb.i:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !49
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.1
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !49
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.2
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !49
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !111

bb.j:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = load <2 x i32>, ptr %i.bj, align 8, !tbaa !19
  store <2 x i32> %i.bk, ptr %i.bi, align 8, !tbaa !19
  br label %.loopexit

bb.k:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !19
  br label %.loopexit

.lr.ph137:                                        ; preds = %bb.c, %bb.m
  %i.bo = phi i16 [ %i.bw, %bb.m ], [ %i.b, %bb.c ] ; 2 uses
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %bb.m ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 4 uses
  %i.bp = zext i16 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next160, %i.bp
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph137
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv159
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next160
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.bv = tail call noundef zeroext i1 @_ZN3re214CoalesceWalker11CanCoalesceEPNS_6RegexpES2_(ptr noundef %i.bs, ptr noundef %i.bu)
  %.pre179 = load i16, ptr %i.a, align 2, !tbaa !48 ; 3 uses
  br i1 %i.bv, label %.preheader131, label %bb.m

.preheader131:                                    ; preds = %bb.l
  %.not153 = icmp eq i16 %.pre179, 0
  br i1 %.not153, label %._crit_edge145, label %.lr.ph141

bb.m:                                             ; preds = %.lr.ph137, %bb.l
  %i.bw = phi i16 [ %i.bo, %.lr.ph137 ], [ %.pre179, %bb.l ] ; 5 uses
  %i.bx = zext i16 %i.bw to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next160, %i.bx
  br i1 %i.by, label %.lr.ph137, label %.critedge, !llvm.loop !112

.critedge:                                        ; preds = %bb.m
  %.not29.i114 = icmp eq i16 %i.bw, 0
  br i1 %.not29.i114, label %.loopexit132, label %.lr.ph.i115

.lr.ph.i115:                                      ; preds = %.critedge
  %i.bz = icmp eq i16 %i.bw, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  %.0.i.i116 = select i1 %i.bz, ptr %i.ca, ptr %i.cb
  %wide.trip.count.i117 = zext i16 %i.bw to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i120 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i121 = icmp eq i64 %indvars.iv.next.i120, %wide.trip.count.i117
  br i1 %exitcond.not.i121, label %.lr.ph28.i123, label %bb.o, !llvm.loop !1

bb.o:                                             ; preds = %bb.n, %.lr.ph.i115
  %indvars.iv.i118 = phi i64 [ 0, %.lr.ph.i115 ], [ %indvars.iv.next.i120, %bb.n ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i116, i64 %indvars.iv.i118
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !49
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i118
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49
  %.not.i119 = icmp eq ptr %i.cf, %i.cd
  br i1 %.not.i119, label %bb.n, label %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit126

.lr.ph28.i123:                                    ; preds = %bb.n, %.lr.ph28.i123
  %indvars.iv33.i124 = phi i64 [ %indvars.iv.next34.i125, %.lr.ph28.i123 ], [ 0, %bb.n ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv33.i124
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !49
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ch)
  %indvars.iv.next34.i125 = add nuw nsw i64 %indvars.iv33.i124, 1 ; 2 uses
  %i.ci = load i16, ptr %i.a, align 2, !tbaa !48
  %i.cj = zext i16 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next34.i125, %i.cj
  br i1 %i.ck, label %.lr.ph28.i123, label %.loopexit132, !llvm.loop !2

.loopexit132:                                     ; preds = %.lr.ph28.i123, %.critedge
  %i.cl = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %.loopexit

_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit126: ; preds = %bb.o
  %i.cm = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 10 uses
  %i.cn = load i8, ptr %1, align 8, !tbaa !47
  %i.co = zext i8 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !69
  %i.cr = zext i16 %i.cq to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cm, i32 noundef %i.co, i32 noundef %i.cr)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit126
  %i.cs = load i16, ptr %i.a, align 2, !tbaa !48  ; 5 uses
  %i.ct = icmp ugt i16 %i.cs, 1
  br i1 %i.ct, label %bb.q, label %._ZN3re26Regexp8AllocSubEi.exit127_crit_edge

._ZN3re26Regexp8AllocSubEi.exit127_crit_edge:     ; preds = %bb.p
  %.phi.trans.insert184 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.pre185 = load ptr, ptr %.phi.trans.insert184, align 8
  br label %_ZN3re26Regexp8AllocSubEi.exit127

bb.q:                                             ; preds = %bb.p
  %i.cu = zext i16 %i.cs to i64
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cv) #21 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !19
  %.pre186 = load i16, ptr %i.a, align 2, !tbaa !48
  br label %_ZN3re26Regexp8AllocSubEi.exit127

_ZN3re26Regexp8AllocSubEi.exit127:                ; preds = %._ZN3re26Regexp8AllocSubEi.exit127_crit_edge, %bb.q
  %i.cy = phi i16 [ %i.cs, %._ZN3re26Regexp8AllocSubEi.exit127_crit_edge ], [ %.pre186, %bb.q ] ; 3 uses
  %i.cz = phi ptr [ %.pre185, %._ZN3re26Regexp8AllocSubEi.exit127_crit_edge ], [ %i.cw, %bb.q ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 6
  store i16 %i.cs, ptr %i.da, align 2, !tbaa !48
  %i.db = icmp ult i16 %i.cs, 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.0.i128 = select i1 %i.db, ptr %i.dc, ptr %i.cz ; 7 uses
  %.not152 = icmp eq i16 %i.cy, 0
  br i1 %.not152, label %.loopexit, label %.lr.ph139.preheader

.lr.ph139.preheader:                              ; preds = %_ZN3re26Regexp8AllocSubEi.exit127
  %wide.trip.count176 = zext i16 %i.cy to i64     ; 5 uses
  %min.iters.check206 = icmp ult i16 %i.cy, 8
  %8 = ptrtoaddr ptr %.0.i128 to i64
  %9 = ptrtoaddr ptr %4 to i64
  %i.dd = sub i64 %9, %8
  %diff.check204 = icmp ugt i64 %i.dd, -32
  %or.cond217 = select i1 %min.iters.check206, i1 true, i1 %diff.check204
  br i1 %or.cond217, label %.lr.ph139.preheader218, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph139.preheader
  %n.vec208 = and i64 %wide.trip.count176, 65532  ; 3 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next213, %vector.body209 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index210 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load211 = load <2 x ptr>, ptr %i.de, align 8, !tbaa !49
  %wide.load212 = load <2 x ptr>, ptr %i.df, align 8, !tbaa !49
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %index210 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <2 x ptr> %wide.load211, ptr %i.dg, align 8, !tbaa !49
  store <2 x ptr> %wide.load212, ptr %i.dh, align 8, !tbaa !49
  %index.next213 = add nuw i64 %index210, 4       ; 2 uses
  %i.di = icmp eq i64 %index.next213, %n.vec208
  br i1 %i.di, label %middle.block214, label %vector.body209, !llvm.loop !113

middle.block214:                                  ; preds = %vector.body209
  %cmp.n215 = icmp eq i64 %n.vec208, %wide.trip.count176
  br i1 %cmp.n215, label %.loopexit, label %.lr.ph139.preheader218

.lr.ph139.preheader218:                           ; preds = %.lr.ph139.preheader, %middle.block214
  %indvars.iv173.ph = phi i64 [ 0, %.lr.ph139.preheader ], [ %n.vec208, %middle.block214 ] ; 3 uses
  %xtraiter222 = and i64 %wide.trip.count176, 3   ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph139.prol.loopexit, label %.lr.ph139.prol

.lr.ph139.prol:                                   ; preds = %.lr.ph139.preheader218, %.lr.ph139.prol
  %indvars.iv173.prol = phi i64 [ %indvars.iv.next174.prol, %.lr.ph139.prol ], [ %indvars.iv173.ph, %.lr.ph139.preheader218 ] ; 3 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %.lr.ph139.prol ], [ 0, %.lr.ph139.preheader218 ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv173.prol
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !49
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv173.prol
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !49
  %indvars.iv.next174.prol = add nuw nsw i64 %indvars.iv173.prol, 1 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %.lr.ph139.prol.loopexit, label %.lr.ph139.prol, !llvm.loop !114

.lr.ph139.prol.loopexit:                          ; preds = %.lr.ph139.prol, %.lr.ph139.preheader218
  %indvars.iv173.unr = phi i64 [ %indvars.iv173.ph, %.lr.ph139.preheader218 ], [ %indvars.iv.next174.prol, %.lr.ph139.prol ]
  %i.dm = sub nsw i64 %indvars.iv173.ph, %wide.trip.count176
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %.loopexit, label %.lr.ph139

bb.r:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit126
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph139:                                        ; preds = %.lr.ph139.prol.loopexit, %.lr.ph139
  %indvars.iv173 = phi i64 [ %indvars.iv.next174.3, %.lr.ph139 ], [ %indvars.iv173.unr, %.lr.ph139.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv173
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !49
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv173
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !49
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next174
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !49
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv.next174
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !49
  %indvars.iv.next174.1 = add nuw nsw i64 %indvars.iv173, 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next174.1
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !49
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv.next174.1
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !49
  %indvars.iv.next174.2 = add nuw nsw i64 %indvars.iv173, 3 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next174.2
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !49
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.0.i128, i64 %indvars.iv.next174.2
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !49
  %indvars.iv.next174.3 = add nuw nsw i64 %indvars.iv173, 4 ; 2 uses
  %exitcond177.not.3 = icmp eq i64 %indvars.iv.next174.3, %wide.trip.count176
  br i1 %exitcond177.not.3, label %.loopexit, label %.lr.ph139, !llvm.loop !115

.preheader:                                       ; preds = %bb.u
  %.not154 = icmp eq i16 %i.ej, 0
  br i1 %.not154, label %._crit_edge145, label %.lr.ph144.preheader

.lr.ph144.preheader:                              ; preds = %.preheader
  %wide.trip.count168 = zext i16 %i.ej to i64     ; 2 uses
  %xtraiter225 = and i64 %wide.trip.count168, 3   ; 3 uses
  %i.eb = icmp ult i16 %i.ej, 4
  br i1 %i.eb, label %.lr.ph144.epil.preheader, label %.lr.ph144.preheader.new

.lr.ph144.preheader.new:                          ; preds = %.lr.ph144.preheader
  %unroll_iter = and i64 %wide.trip.count168, 65532
  br label %.lr.ph144

.lr.ph141:                                        ; preds = %.preheader131, %bb.u
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.u ], [ 0, %.preheader131 ] ; 2 uses
  %.in = phi i16 [ %i.ej, %bb.u ], [ %.pre179, %.preheader131 ]
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 4 uses
  %i.ec = zext i16 %.in to i64
  %i.ed = icmp samesign ult i64 %indvars.iv.next163, %i.ec
  br i1 %i.ed, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph141
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv162 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !49
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next163 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !49
  %i.ei = tail call noundef zeroext i1 @_ZN3re214CoalesceWalker11CanCoalesceEPNS_6RegexpES2_(ptr noundef %i.ef, ptr noundef %i.eh)
  br i1 %i.ei, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN3re214CoalesceWalker10DoCoalesceEPPNS_6RegexpES3_(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.eg)
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph141, %bb.s, %bb.t
  %i.ej = load i16, ptr %i.a, align 2, !tbaa !48  ; 5 uses
  %i.ek = zext i16 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next163, %i.ek
  br i1 %i.el, label %.lr.ph141, label %.preheader, !llvm.loop !116

._crit_edge145.loopexit.unr-lcssa:                ; preds = %.lr.ph144
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %._crit_edge145, label %.lr.ph144.epil.preheader

.lr.ph144.epil.preheader:                         ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.preheader
  %indvars.iv165.epil.init = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next166.3, %._crit_edge145.loopexit.unr-lcssa ]
  %.096142.epil.init = phi i32 [ 0, %.lr.ph144.preheader ], [ %spec.select.3, %._crit_edge145.loopexit.unr-lcssa ]
  %lcmp.mod228 = icmp ne i64 %xtraiter225, 0
  tail call void @llvm.assume(i1 %lcmp.mod228)
  br label %.lr.ph144.epil

.lr.ph144.epil:                                   ; preds = %.lr.ph144.epil, %.lr.ph144.epil.preheader
  %indvars.iv165.epil = phi i64 [ %indvars.iv165.epil.init, %.lr.ph144.epil.preheader ], [ %indvars.iv.next166.epil, %.lr.ph144.epil ] ; 2 uses
  %.096142.epil = phi i32 [ %.096142.epil.init, %.lr.ph144.epil.preheader ], [ %spec.select.epil, %.lr.ph144.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph144.epil.preheader ], [ %epil.iter.next, %.lr.ph144.epil ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165.epil
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !49
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !47
  %i.ep = icmp eq i8 %i.eo, 2
  %i.eq = zext i1 %i.ep to i32
  %spec.select.epil = add nuw nsw i32 %.096142.epil, %i.eq ; 2 uses
  %indvars.iv.next166.epil = add nuw nsw i64 %indvars.iv165.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter225
  br i1 %epil.iter.cmp.not, label %._crit_edge145, label %.lr.ph144.epil, !llvm.loop !117

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit.unr-lcssa, %.lr.ph144.epil, %.preheader131, %.preheader
  %.096.lcssa = phi i32 [ 0, %.preheader ], [ 0, %.preheader131 ], [ %spec.select.3, %._crit_edge145.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph144.epil ]
  %i.er = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 8 uses
  %i.es = load i8, ptr %1, align 8, !tbaa !47
  %i.et = zext i8 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !69
  %i.ew = zext i16 %i.ev to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.er, i32 noundef %i.et, i32 noundef %i.ew)
          to label %bb.v unwind label %bb.x

.lr.ph144:                                        ; preds = %.lr.ph144, %.lr.ph144.preheader.new
  %indvars.iv165 = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %indvars.iv.next166.3, %.lr.ph144 ] ; 5 uses
  %.096142 = phi i32 [ 0, %.lr.ph144.preheader.new ], [ %spec.select.3, %.lr.ph144 ]
  %niter = phi i64 [ 0, %.lr.ph144.preheader.new ], [ %niter.next.3, %.lr.ph144 ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !49
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !47
  %i.fa = icmp eq i8 %i.ez, 2
  %i.fb = zext i1 %i.fa to i32
  %spec.select = add nuw nsw i32 %.096142, %i.fb
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !49
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !47
  %i.fg = icmp eq i8 %i.ff, 2
  %i.fh = zext i1 %i.fg to i32
  %spec.select.1 = add nuw nsw i32 %spec.select, %i.fh
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !49
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !47
  %i.fm = icmp eq i8 %i.fl, 2
  %i.fn = zext i1 %i.fm to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %i.fn
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv165
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !49
  %i.fr = load i8, ptr %i.fq, align 8, !tbaa !47
  %i.fs = icmp eq i8 %i.fr, 2
  %i.ft = zext i1 %i.fs to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %i.ft ; 3 uses
  %indvars.iv.next166.3 = add nuw nsw i64 %indvars.iv165, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge145.loopexit.unr-lcssa, label %.lr.ph144, !llvm.loop !118

bb.v:                                             ; preds = %._crit_edge145
  %i.fu = load i16, ptr %i.a, align 2, !tbaa !48  ; 2 uses
  %i.fv = zext i16 %i.fu to i32
  %i.fw = sub nsw i32 %i.fv, %.096.lcssa          ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, 1
  br i1 %i.fx, label %bb.w, label %._ZN3re26Regexp8AllocSubEi.exit129_crit_edge

end_hunk_0
begin_hunk_1_@_ZN3re214CoalesceWalker10DoCoalesceEPPNS_6RegexpES3_:bb.a

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.m, ptr %0, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !19
  %i.ct = zext nneg i32 %.0.lcssa to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cc, align 8, !tbaa !19
  %i.cw = sub nsw i32 %i.cv, %.0.lcssa
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !69
  %i.cz = zext i16 %i.cy to i32
  %i.da = tail call noundef ptr @_ZN3re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef nonnull %i.cu, i32 noundef %i.cw, i32 noundef %i.cz)
  br label %bb.ak

bb.ae:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull @.str, i32 noundef 435)
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull @.str.4, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.aj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %bb.ae
  %i.dd = load i8, ptr %i.b, align 8, !tbaa !47
  %i.de = zext i8 %i.dd to i32
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.db, i32 noundef %i.de)
          to label %bb.af unwind label %bb.aj     ; 0 uses

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.dg = load i8, ptr %3, align 8, !tbaa !68, !range !35, !noundef !36
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %3)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.di = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.di, ptr %i.db, align 8, !tbaa !21
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dk = getelementptr i8, ptr %i.di, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr %i.db, i64 %i.dl
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !21
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dn, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN10LogMessageD2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i73: ; preds = %bb.ah
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !19
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #19
  br label %_ZN10LogMessageD2Ev.exit75

bb.ai:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #20
  unreachable

_ZN10LogMessageD2Ev.exit75:                       ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i73
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.dn, align 8, !tbaa !21
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dw) #18
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dx) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m)
  br label %bb.al

bb.aj:                                            ; preds = %bb.ae, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.am

bb.ak:                                            ; preds = %bb.ad, %bb.w
  %storemerge = phi ptr [ %i.da, %bb.ad ], [ %i.m, %bb.w ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !49
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN10LogMessageD2Ev.exit75, %_ZN10LogMessageD2Ev.exit
  ret void

bb.am:                                            ; preds = %bb.aj, %bb.x, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.k ], [ %i.dy, %bb.aj ], [ %i.bv, %bb.x ]
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZN3re26Regexp5EqualEPS0_S1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3re26Regexp6RepeatEPS0_NS0_10ParseFlagsEii(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3re26Regexp13LiteralStringEPiiNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker4CopyEPNS_6RegexpE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker10ShortVisitEPNS_6RegexpES2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.LogMessage, align 8          ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %3, ptr noundef nonnull @.str, i32 noundef 451)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str.5, i64 noundef 33)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load i8, ptr %3, align 8, !tbaa !68, !range !35, !noundef !36
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !21
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.a, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZN10LogMessageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #20
  unreachable

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #18
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.u = call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret ptr %i.u

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker8PreVisitEPNS_6RegexpES2_Pb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !50
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %3, align 1, !tbaa !74
  %i.c = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker9PostVisitEPNS_6RegexpES2_S2_PS2_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.LogMessage, align 8          ; 13 uses
  %i.a = load i8, ptr %1, align 8, !tbaa !47      ; 2 uses
  switch i8 %i.a, label %bb.y [
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
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.b, align 1, !tbaa !50
  %i.c = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ae

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 4 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !48   ; 3 uses
  %.not29.i = icmp eq i16 %i.e, 0
  br i1 %.not29.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = icmp eq i16 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.0.i.i = select i1 %i.f, ptr %i.g, ptr %i.h
  %wide.trip.count.i = zext i16 %i.e to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph28.i, label %bb.e, !llvm.loop !1

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i, label %bb.d, label %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit

.lr.ph28.i:                                       ; preds = %bb.d, %.lr.ph28.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph28.i ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv33.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n)
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.o = load i16, ptr %i.d, align 2, !tbaa !48
  %i.p = zext i16 %i.o to i64
  %i.q = icmp samesign ult i64 %indvars.iv.next34.i, %i.p
  br i1 %i.q, label %.lr.ph28.i, label %.loopexit, !llvm.loop !2

.loopexit:                                        ; preds = %.lr.ph28.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.r, align 1, !tbaa !50
  %i.s = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ae

_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit: ; preds = %bb.e
  %i.t = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 8 uses
  %i.u = load i8, ptr %1, align 8, !tbaa !47
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !69
  %i.y = zext i16 %i.x to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i32 noundef %i.v, i32 noundef %i.y)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit
  %i.z = load i16, ptr %i.d, align 2, !tbaa !48   ; 5 uses
  %i.aa = icmp ugt i16 %i.z, 1
  br i1 %i.aa, label %bb.g, label %._ZN3re26Regexp8AllocSubEi.exit_crit_edge

._ZN3re26Regexp8AllocSubEi.exit_crit_edge:        ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN3re26Regexp8AllocSubEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = zext i16 %i.z to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !19
  %.pre86 = load i16, ptr %i.d, align 2, !tbaa !48
  br label %_ZN3re26Regexp8AllocSubEi.exit

_ZN3re26Regexp8AllocSubEi.exit:                   ; preds = %._ZN3re26Regexp8AllocSubEi.exit_crit_edge, %bb.g
  %i.af = phi i16 [ %i.z, %._ZN3re26Regexp8AllocSubEi.exit_crit_edge ], [ %.pre86, %bb.g ] ; 3 uses
  %i.ag = phi ptr [ %.pre, %._ZN3re26Regexp8AllocSubEi.exit_crit_edge ], [ %i.ad, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  store i16 %i.z, ptr %i.ah, align 2, !tbaa !48
  %i.ai = icmp ult i16 %i.z, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.0.i = select i1 %i.ai, ptr %i.aj, ptr %i.ag   ; 7 uses
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN3re26Regexp8AllocSubEi.exit
  %wide.trip.count = zext i16 %i.af to i64        ; 5 uses
  %min.iters.check = icmp ult i16 %i.af, 8
  %7 = ptrtoaddr ptr %.0.i to i64
  %8 = ptrtoaddr ptr %4 to i64
  %i.ak = sub i64 %8, %7
  %diff.check = icmp ugt i64 %i.ak, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader97, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 65532        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x ptr>, ptr %i.al, align 8, !tbaa !49
  %wide.load96 = load <2 x ptr>, ptr %i.am, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x ptr> %wide.load, ptr %i.an, align 8, !tbaa !49
  store <2 x ptr> %wide.load96, ptr %i.ao, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader97

.lr.ph.preheader97:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader97, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader97 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader97 ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.prol
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.prol
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !49
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !122

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader97
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader97 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.at = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %_ZN3re26Regexp8AllocSubEi.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store i8 1, ptr %i.av, align 1, !tbaa !50
  br label %bb.ae

bb.h:                                             ; preds = %_ZN3re2L16ChildArgsChangedEPNS_6RegexpEPS1_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 40) #19
  br label %bb.af

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !49
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.1
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.1
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !49
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.2
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %indvars.iv.next.2
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !49
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !123

bb.i:                                             ; preds = %bb.a
  %i.bj = load ptr, ptr %4, align 8, !tbaa !49    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !48
  %i.bm = icmp ult i16 %i.bl, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.i80 = select i1 %i.bm, ptr %i.bn, ptr %i.bo
  %i.bp = load ptr, ptr %.0.i80, align 8, !tbaa !49
  %i.bq = icmp eq ptr %i.bj, %i.bp
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bj)
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.br, align 1, !tbaa !50
  %i.bs = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ae

bb.k:                                             ; preds = %bb.i
  %i.bt = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !69
  %i.bw = zext i16 %i.bv to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i32 noundef 11, i32 noundef %i.bw)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 6
  store i16 1, ptr %i.bx, align 2, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bj, ptr %i.by, align 8, !tbaa !49
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store i8 1, ptr %i.cc, align 1, !tbaa !50
  br label %bb.ae

bb.m:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 40) #19
  br label %bb.af

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ce = load ptr, ptr %4, align 8, !tbaa !49    ; 7 uses
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !47  ; 2 uses
  %i.cg = icmp eq i8 %i.cf, 2
  br i1 %i.cg, label %bb.ae, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !48
  %i.cj = icmp ult i16 %i.ci, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %.0.i82 = select i1 %i.cj, ptr %i.ck, ptr %i.cl
  %i.cm = load ptr, ptr %.0.i82, align 8, !tbaa !49
  %i.cn = icmp eq ptr %i.ce, %i.cm
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ce)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 1, ptr %i.co, align 1, !tbaa !50
  %i.cp = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ae

bb.q:                                             ; preds = %bb.o
  %i.cq = icmp eq i8 %i.a, %i.cf
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !69
  %i.cv = icmp eq i16 %i.cs, %i.cu
  br i1 %i.cv, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cw = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 6 uses
  %i.cx = load i8, ptr %1, align 8, !tbaa !47
  %i.cy = zext i8 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !69
  %i.db = zext i16 %i.da to i32
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, i32 noundef %i.cy, i32 noundef %i.db)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 6
  store i16 1, ptr %i.dc, align 2, !tbaa !48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.ce, ptr %i.dd, align 8, !tbaa !49
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 1, ptr %i.de, align 1, !tbaa !50
  br label %bb.ae

bb.u:                                             ; preds = %bb.s
  %i.df = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 40) #19
  br label %bb.af

bb.v:                                             ; preds = %bb.a
  %i.dg = load ptr, ptr %4, align 8, !tbaa !49    ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !47
  %i.di = icmp eq i8 %i.dh, 2
  br i1 %i.di, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !19
  %i.dm = load i32, ptr %i.dj, align 8, !tbaa !19
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !69
  %i.dp = zext i16 %i.do to i32
  %i.dq = tail call noundef ptr @_ZN3re214SimplifyWalker14SimplifyRepeatEPNS_6RegexpEiiNS1_10ParseFlagsE(ptr noundef nonnull %i.dg, i32 noundef %i.dl, i32 noundef %i.dm, i32 noundef %i.dp) ; 2 uses
  tail call void @_ZN3re26Regexp6DecrefEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dg)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store i8 1, ptr %i.dr, align 1, !tbaa !50
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  %i.ds = tail call noundef ptr @_ZN3re214SimplifyWalker17SimplifyCharClassEPNS_6RegexpE(ptr noundef nonnull %1) ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 1, ptr %i.dt, align 1, !tbaa !50
  br label %bb.ae

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN10LogMessageC2EPKci(ptr noundef nonnull align 8 dereferenceable(384) %6, ptr noundef nonnull @.str, i32 noundef 567)
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull @.str.6, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ad ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.y
  %i.dw = load i8, ptr %1, align 8, !tbaa !47
  %i.dx = zext i8 %i.dw to i32
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.du, i32 noundef %i.dx)
          to label %bb.z unwind label %bb.ad      ; 0 uses

bb.z:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.dz = load i8, ptr %6, align 8, !tbaa !68, !range !35, !noundef !36
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(384) %6)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.eb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.eb, ptr %i.du, align 8, !tbaa !21
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ed = getelementptr i8, ptr %i.eb, i64 -24
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds i8, ptr %i.du, i64 %i.ee
  store ptr %i.ec, ptr %i.ef, align 8, !tbaa !21
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.eg, align 8, !tbaa !21
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !16 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ab
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !19
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.em) #19
  br label %_ZN10LogMessageD2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #20
  unreachable

_ZN10LogMessageD2Ev.exit:                         ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.eg, align 8, !tbaa !21
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ep) #18
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.eq) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.er = call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10LogMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.af

bb.ae:                                            ; preds = %bb.w, %bb.v, %bb.p, %bb.t, %bb.n, %bb.r, %bb.j, %bb.l, %_ZN10LogMessageD2Ev.exit, %bb.x, %._crit_edge, %.loopexit, %bb.b
  %.3 = phi ptr [ %i.er, %_ZN10LogMessageD2Ev.exit ], [ %i.c, %bb.b ], [ %i.t, %._crit_edge ], [ %i.s, %.loopexit ], [ %i.ds, %bb.x ], [ %i.bt, %bb.l ], [ %i.ce, %bb.r ], [ %i.bs, %bb.j ], [ %i.cw, %bb.t ], [ %i.cp, %bb.p ], [ %i.ce, %bb.n ], [ %i.dq, %bb.w ], [ %i.dg, %bb.v ]
  ret ptr %.3

bb.af:                                            ; preds = %bb.ad, %bb.u, %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.es, %bb.ad ], [ %i.aw, %bb.h ], [ %i.cd, %bb.m ], [ %i.df, %bb.u ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re214SimplifyWalker14SimplifyRepeatEPNS_6RegexpEiiNS1_10ParseFlagsE(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.LogMessage, align 8          ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.e [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.c = tail call noundef ptr @_ZN3re26Regexp4StarEPS0_NS0_10ParseFlagsE(ptr noundef %i.b, i32 noundef %3)
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.e = tail call noundef ptr @_ZN3re26Regexp4PlusEPS0_NS0_10ParseFlagsE(ptr noundef %i.d, i32 noundef %3)
  br label %bb.an

bb.e:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %.noexc.i, label %.lr.ph125.preheader, !prof !18

.noexc.i:                                         ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

.lr.ph125.preheader:                              ; preds = %bb.e
  %i.g = zext nneg i32 %1 to i64
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 3 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21 ; 5 uses
  %i.j = add nsw i32 %1, -1                       ; 2 uses
  %wide.trip.count135 = zext nneg i32 %i.j to i64
  br label %.lr.ph125

._crit_edge126:                                   ; preds = %bb.f
  %i.k = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.h unwind label %bb.j

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %bb.f
  %indvars.iv132 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next133, %bb.f ] ; 2 uses
  %i.l = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph125
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv132
  store ptr %i.l, ptr %i.m, align 8, !tbaa !49
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge126, label %.lr.ph125, !llvm.loop !124

bb.g:                                             ; preds = %.lr.ph125
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit90

bb.h:                                             ; preds = %._crit_edge126
  %i.o = invoke noundef ptr @_ZN3re26Regexp4PlusEPS0_NS0_10ParseFlagsE(ptr noundef %i.k, i32 noundef %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = sext i32 %i.j to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p
  store ptr %i.o, ptr %i.q, align 8, !tbaa !49
  %i.r = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.i, i32 noundef %1, i32 noundef %3)
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit unwind label %bb.j

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit:          ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #19
  br label %bb.an

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge126
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit90

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit90:        ; preds = %bb.j, %bb.g
  %.pn86 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.s, %bb.j ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.h) #19
  br label %common.resume

bb.k:                                             ; preds = %bb.a
  %i.t = or i32 %2, %1
  %or.cond = icmp eq i32 %i.t, 0
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.u = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 3 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.u, i32 noundef 2, i32 noundef %3)
          to label %bb.an unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 40) #19
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  %i.w = icmp eq i32 %1, 1
  %i.x = icmp eq i32 %2, 1
  %or.cond3 = and i1 %i.w, %i.x
  br i1 %or.cond3, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.an

bb.p:                                             ; preds = %bb.n
  %i.z = icmp sgt i32 %1, 0
  br i1 %i.z, label %_ZN3re28PODArrayIPNS_6RegexpEEC2Ei.exit92, label %bb.v

_ZN3re28PODArrayIPNS_6RegexpEEC2Ei.exit92:        ; preds = %bb.p
  %i.aa = zext nneg i32 %1 to i64                 ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3                ; 3 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #21 ; 4 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.s
  %i.ad = invoke noundef ptr @_ZN3re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef nonnull %i.ac, i32 noundef %1, i32 noundef %3)
          to label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit94 unwind label %bb.u

bb.r:                                             ; preds = %_ZN3re28PODArrayIPNS_6RegexpEEC2Ei.exit92, %bb.s
  %indvars.iv = phi i64 [ 0, %_ZN3re28PODArrayIPNS_6RegexpEEC2Ei.exit92 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.ae = invoke noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aa
  br i1 %exitcond.not, label %bb.q, label %bb.r, !llvm.loop !125

bb.t:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit96

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit94:        ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ab) #19
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit96

_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit96:        ; preds = %bb.u, %bb.t
  %.pn83 = phi { ptr, i32 } [ %i.ag, %bb.t ], [ %i.ah, %bb.u ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ab) #19
  br label %common.resume

bb.v:                                             ; preds = %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit94, %bb.p
  %.063 = phi ptr [ %i.ad, %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit94 ], [ null, %bb.p ] ; 3 uses
  %i.ai = icmp sgt i32 %2, %1
  br i1 %i.ai, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.aj = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ak = tail call noundef ptr @_ZN3re26Regexp5QuestEPS0_NS0_10ParseFlagsE(ptr noundef %i.aj, i32 noundef %3) ; 2 uses
  %.0121 = add nsw i32 %1, 1                      ; 2 uses
  %i.al = icmp slt i32 %.0121, %2
  br i1 %i.al, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN3re214SimplifyWalker7Concat2EPNS_6RegexpES2_NS1_10ParseFlagsE.exit, %bb.w
  %.061.lcssa = phi ptr [ %i.ak, %bb.w ], [ %i.au, %_ZN3re214SimplifyWalker7Concat2EPNS_6RegexpES2_NS1_10ParseFlagsE.exit ] ; 2 uses
  %i.am = icmp eq ptr %.063, null
  br i1 %i.am, label %bb.aa, label %bb.y

.lr.ph:                                           ; preds = %bb.w, %_ZN3re214SimplifyWalker7Concat2EPNS_6RegexpES2_NS1_10ParseFlagsE.exit
  %.0123 = phi i32 [ %.0, %_ZN3re214SimplifyWalker7Concat2EPNS_6RegexpES2_NS1_10ParseFlagsE.exit ], [ %.0121, %bb.w ]
  %.061122 = phi ptr [ %i.au, %_ZN3re214SimplifyWalker7Concat2EPNS_6RegexpES2_NS1_10ParseFlagsE.exit ], [ %i.ak, %bb.w ]
  %i.an = tail call noundef ptr @_ZN3re26Regexp6IncrefEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  %i.ao = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 5 uses
  invoke void @_ZN3re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i32 noundef 5, i32 noundef %3)
          to label %_ZN3re214SimplifyWalker7Concat2EPNS_6RegexpES2_NS1_10ParseFlagsE.exit unwind label %bb.x

common.resume:                                    ; preds = %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit90, %bb.m, %bb.am, %bb.al, %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit96, %bb.z, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.ap, %bb.x ], [ %i.aw, %bb.z ], [ %.pn86, %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit90 ], [ %i.v, %bb.m ], [ %.pn83, %_ZN3re28PODArrayIPNS_6RegexpEED2Ev.exit96 ], [ %i.cs, %bb.am ], [ %.pn.pn, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup
end_hunk_1
