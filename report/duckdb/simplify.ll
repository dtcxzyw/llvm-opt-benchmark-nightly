inline.NumInlined: 425
inline.NumDeleted: 175
begin_hunk_0_@_ZN10duckdb_re214SimplifyWalker17SimplifyCharClassEPNS_6RegexpE:bb.a
  %.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.i, %bb.c ]
  tail call void @_ZdlPv(ptr noundef nonnull %.sink) #16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN10duckdb_re214SimplifyWalker7Concat2EPNS_6RegexpES2_NS1_10ParseFlagsE(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 5 uses
  invoke void @_ZN10duckdb_re26RegexpC1ENS_8RegexpOpENS0_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i32 noundef 5, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i16 2, ptr %i.d, align 2, !tbaa !52
  store ptr %0, ptr %i.b, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.e, align 8, !tbaa !53
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #16
  resume { ptr, i32 } %i.f
}

declare noundef ptr @_ZN10duckdb_re26Regexp4StarEPS0_NS0_10ParseFlagsE(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN10duckdb_re26Regexp4PlusEPS0_NS0_10ParseFlagsE(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN10duckdb_re26Regexp6ConcatEPPS0_iNS0_10ParseFlagsE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN10duckdb_re26Regexp5QuestEPS0_NS0_10ParseFlagsE(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re214CoalesceWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10duckdb_re26Regexp6WalkerIPS0_EE, i64 16), ptr %0, align 8, !tbaa !24
  invoke void @_ZN10duckdb_re26Regexp6WalkerIPS0_E5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.d, !inline_history !41

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_re26Regexp6WalkerIPS0_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !45
  tail call void @_ZdlPv(ptr noundef %i.i) #16, !inline_history !41
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i, !llvm.loop !46

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i, %bb.c
  %i.l = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i ], [ %i.b, %bb.c ]
  tail call void @_ZdlPv(ptr noundef %i.l) #16, !inline_history !41
  br label %_ZN10duckdb_re26Regexp6WalkerIPS0_ED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #17, !inline_history !41
  unreachable

_ZN10duckdb_re26Regexp6WalkerIPS0_ED2Ev.exit:     ; preds = %bb.b, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN10duckdb_re26Regexp6WalkerIPS0_E8PreVisitES2_S2_Pb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re214SimplifyWalkerD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN10duckdb_re26Regexp6WalkerIPS0_EE, i64 16), ptr %0, align 8, !tbaa !24
  invoke void @_ZN10duckdb_re26Regexp6WalkerIPS0_E5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.d, !inline_history !41

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN10duckdb_re26Regexp6WalkerIPS0_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !45
  tail call void @_ZdlPv(ptr noundef %i.i) #16, !inline_history !41
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.k = icmp ult ptr %.06.i.i.i.i.i, %i.f
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i, !llvm.loop !46

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i, %bb.c
  %i.l = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.loopexit.i.i.i.i ], [ %i.b, %bb.c ]
  tail call void @_ZdlPv(ptr noundef %i.l) #16, !inline_history !41
  br label %_ZN10duckdb_re26Regexp6WalkerIPS0_ED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #17, !inline_history !41
  unreachable

_ZN10duckdb_re26Regexp6WalkerIPS0_ED2Ev.exit:     ; preds = %bb.b, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10duckdb_re26Regexp6WalkerIPS0_ED0Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN10duckdb_re26Regexp6WalkerIPS0_E9PostVisitES2_S2_S2_PS2_i(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN10duckdb_re26Regexp6WalkerIPS0_E4CopyES2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr %1
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = udiv i64 %1, 10                          ; 2 uses
  %i.b = urem i64 %1, 10
  %2 = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %2, 3       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !108
  %i.d = icmp ugt i64 %1, -6917529027641081887
  br i1 %i.d, label %.noexc3.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE15_M_allocate_mapEm.exit, !prof !22

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !42
  %i.h = sub nsw i64 %.sroa.speculated, %i.e
  %i.i = lshr i64 %i.h, 1
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.m, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_allocate_nodeEv.exit.i ], [ %i.j, %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #18
          to label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.l, ptr %.011.i, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.k
  br i1 %i.n, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE15_M_create_nodesEPPS4_S8_.exit, !llvm.loop !109

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #15 ; 0 uses
  %i.r = icmp ult ptr %i.j, %.011.i
  br i1 %i.r, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i, align 8, !tbaa !45
  tail call void @_ZdlPv(ptr noundef %i.s) #16
  %i.t = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.u = icmp ult ptr %i.t, %.011.i
  br i1 %i.u, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i, !llvm.loop !46

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #19
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #17
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.y = extractvalue { ptr, i32 } %i.v, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #15 ; 0 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @_ZdlPv(ptr noundef %i.aa) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #19
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ab

_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE15_M_create_nodesEPPS4_S8_.exit: ; preds = %_ZNSt11_Deque_baseIN10duckdb_re29WalkStateIPNS0_6RegexpEEESaIS4_EE16_M_allocate_nodeEv.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.ad, align 8, !tbaa !110
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !45  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !111
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 480
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !112
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !110
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.al, ptr %i.am, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !112
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %i.b
  store ptr %i.ap, ptr %i.ai, align 8, !tbaa !114
  ret void

bb.h:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #17
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10duckdb_re26Regexp6WalkerIPS0_E5ResetEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.LogMessage, align 8          ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store i8 0, ptr %1, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %i.f)
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.10, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.h = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !24
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.j = getelementptr i8, ptr %i.h, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %i.k
  store ptr %i.i, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN10LogMessageD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZdlPv(ptr noundef %i.o) #16
  br label %_ZN10LogMessageD2Ev.exit

_ZN10LogMessageD2Ev.exit:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.m, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !115
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10LogMessageD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !111, !noalias !116
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt5stackIN10duckdb_re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEE3popEv.exit
  %i.z = phi ptr [ %.pre, %.lr.ph ], [ %i.bd, %_ZNSt5stackIN10duckdb_re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 4 uses
  %i.aa = phi ptr [ %i.t, %.lr.ph ], [ %storemerge.i.i, %_ZNSt5stackIN10duckdb_re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEE3popEv.exit ] ; 6 uses
  %i.ab = icmp eq ptr %i.aa, %i.z
  br i1 %i.ab, label %_ZNSt5stackIN10duckdb_re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEE3topEv.exit, label %_ZNSt5stackIN10duckdb_re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEE3topEv.exit.thread

_ZNSt5stackIN10duckdb_re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEE3topEv.exit: ; preds = %bb.c
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !110, !noalias !116
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !45 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 432
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !119
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !52
  %i.aj = icmp ugt i16 %i.ai, 1
  br i1 %i.aj, label %bb.d, label %bb.g

_ZNSt5stackIN10duckdb_re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEE3topEv.exit.thread: ; preds = %bb.c
  %i.ak = getelementptr inbounds i8, ptr %i.aa, i64 -48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !119
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  %i.an = load i16, ptr %i.am, align 2, !tbaa !52
  %i.ao = icmp ugt i16 %i.an, 1
  br i1 %i.ao, label %_ZNSt5stackIN10duckdb_re29WalkStateIPNS0_6RegexpEEESt5dequeIS4_SaIS4_EEE3topEv.exit2, label %bb.g

end_hunk_0
