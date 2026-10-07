Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumber.pb?download=true
inline.NumInlined: 250
inline.NumDeleted: 137
begin_hunk_0_@_ZN4i18n12phonenumbers11PhoneNumberC2ERKS1_:.noexc
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.aa, %bb.b ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef %.0.i.i)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %.pre = load i32, ptr %i.c, align 8, !tbaa !20
  br label %bb.e

bb.d:                                             ; preds = %.noexc17, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf11MessageLiteD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  resume { ptr, i32 } %i.ac

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge, %bb.a
  %i.ad = phi i32 [ %.pre, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit._crit_edge ], [ %i.q, %bb.a ] ; 2 uses
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.g, align 8, !tbaa !34
  %i.ae = and i32 %i.ad, 2
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, -4
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.al = trunc i64 %i.ak to i1
  %i.am = and i64 %i.ak, -4
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  br i1 %i.al, label %bb.g, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21, !prof !37

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21: ; preds = %bb.g, %bb.f
  %.0.i.i20 = phi ptr [ %i.ao, %bb.g ], [ %i.an, %bb.f ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef %.0.i.i20)
          to label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge unwind label %bb.d

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge: ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21
  %.pre25 = load i32, ptr %i.c, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge, %bb.e
  %i.ap = phi i32 [ %.pre25, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit21._crit_edge ], [ %i.ad, %bb.e ]
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.h, align 8, !tbaa !34
  %i.aq = and i32 %i.ap, 4
  %.not24 = icmp eq i32 %i.aq, 0
  br i1 %.not24, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, -4
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.ax = trunc i64 %i.aw to i1
  %i.ay = and i64 %i.aw, -4
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  br i1 %i.ax, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23: ; preds = %bb.j, %bb.i
  %.0.i.i22 = phi ptr [ %i.ba, %bb.j ], [ %i.az, %bb.i ]
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef %.0.i.i22)
          to label %bb.k unwind label %bb.d

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit23, %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumberD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, -4
  %i.f = inttoptr i64 %i.e to ptr
  br label %_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit

_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit: ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.d, label %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %.noexc2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit unwind label %bb.g

_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit: ; preds = %.noexc3, %_ZN6google8protobuf8internal16InternalMetadata17DeleteReturnArenaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN6google8protobuf11MessageLiteE, i64 16), ptr %0, align 8, !tbaa !24
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit
  %i.l = add nsw i64 %i.j, -2                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN6google8protobuf11MessageLiteD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = inttoptr i64 %i.l to ptr                 ; 2 uses
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(40) %i.n) #19
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef 40) #20
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %.noexc3, %.noexc2, %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #21
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumberD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4i18n12phonenumbers11PhoneNumberD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK4i18n12phonenumbers11PhoneNumber13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %1, ptr %i.a monotonic, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumber5ClearEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.c = and i32 %i.b, 7
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not5 = trunc i32 %i.b to i1
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.i, align 8, !tbaa !19
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !18
  store i8 0, ptr %i.j, align 1, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = and i32 %i.b, 2
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = and i64 %i.n, -4
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !19
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !18
  store i8 0, ptr %i.r, align 1, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = and i32 %i.b, 4
  %.not7 = icmp eq i32 %i.s, 0
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -4
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !19
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !18
  store i8 0, ptr %i.z, align 1, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %i.aa = and i32 %i.b, 248
  %.not8 = icmp eq i32 %i.aa, 0
  br i1 %.not8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.ac, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.k, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4i18n12phonenumbers11PhoneNumber14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader
  %.sroa.0.0 = phi i32 [ 0, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ], [ %.sroa.0.0.be, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge ] ; 19 uses
  %.088 = phi ptr [ %1, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ], [ %.088.be, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge ] ; 4 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !53
  %i.o = load ptr, ptr %2, align 8, !tbaa !54
  %i.p = icmp ult ptr %.088, %i.o
  br i1 %i.p, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91, label %bb.a, !prof !12

bb.a:                                             ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.r = ptrtoint ptr %.088 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !56
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %bb.b, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %i.u, 0
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  %or.cond.i.i = select i1 %i.x, i1 %i.aa, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.088
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.a
  %i.ab = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %i.u, i32 noundef %i.n) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ab, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.ab, 1
  %i.ac = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.ac, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.394 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.088, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit ] ; 4 uses
  %i.ad = load i8, ptr %.394, align 1, !tbaa !35  ; 2 uses
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = icmp sgt i8 %i.ad, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %.394, i64 1 ; 2 uses
  br i1 %i.af, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !35  ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 7
  %i.ak = add nsw i32 %i.ae, -128
  %i.al = or disjoint i32 %i.aj, %i.ak            ; 2 uses
  %i.am = icmp sgt i8 %i.ah, -1
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.394, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.e:                                             ; preds = %bb.c
  %i.ao = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.394, i32 noundef %i.al) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ao, 1
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91, %bb.d, %bb.e
  %.0 = phi i32 [ %.fca.1.extract.i, %bb.e ], [ %i.al, %bb.d ], [ %i.ae, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91 ] ; 13 uses
  %.1.i = phi ptr [ %.fca.0.extract.i, %bb.e ], [ %i.an, %bb.d ], [ %i.ag, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91 ] ; 26 uses
  %i.ap = lshr i32 %.0, 3
  switch i32 %i.ap, label %bb.ao [
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.o
    i32 4, label %bb.r
    i32 5, label %bb.w
    i32 6, label %bb.z
    i32 7, label %bb.ah
    i32 8, label %bb.ak
  ]

bb.f:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.aq = and i32 %.0, 255
  %i.ar = icmp eq i32 %i.aq, 8
  br i1 %i.ar, label %bb.g, label %bb.ao, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.as = or i32 %.sroa.0.0, 16                   ; 3 uses
  %i.at = load i8, ptr %.1.i, align 1, !tbaa !35  ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %.not.i.i = icmp sgt i8 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  br i1 %.not.i.i, label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !35  ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 7
  %i.az = add nsw i32 %i.au, -128
  %i.ba = or disjoint i32 %i.ay, %i.az            ; 2 uses
  %.not16.i.i = icmp sgt i8 %i.aw, -1
  br i1 %.not16.i.i, label %bb.i, label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  br label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread: ; preds = %bb.i, %bb.g
  %.0.i43.ph = phi i32 [ %i.au, %bb.g ], [ %i.ba, %bb.i ]
  %.1.i.i44.ph = phi ptr [ %i.av, %bb.g ], [ %i.bb, %bb.i ]
  store i32 %.0.i43.ph, ptr %i.m, align 8, !tbaa !35
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

end_hunk_0
begin_hunk_1_@_ZN4i18n12phonenumbers11PhoneNumber14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE:_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader
  br label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread: ; preds = %bb.an, %bb.al
  %.0.i66.ph = phi i32 [ %i.ez, %bb.al ], [ %i.ff, %bb.an ]
  %.1.i.i67.ph = phi ptr [ %i.fa, %bb.al ], [ %i.fg, %bb.an ]
  store i32 %.0.i66.ph, ptr %i.d, align 4, !tbaa !35
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge: ; preds = %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit, %bb.ae
  %.sroa.0.0.be = phi i32 [ %.sroa.0.0, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ %i.as, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread ], [ %i.as, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ %i.bf, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread ], [ %i.bf, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit ], [ %.sroa.0.0, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit ], [ %i.ch, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread ], [ %i.ch, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53 ], [ %.sroa.0.0, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit ], [ %.sroa.0.0, %_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit ], [ %.sroa.0.0, %bb.ae ], [ %.sroa.0.0, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit ], [ %i.ex, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread ], [ %i.ex, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68 ]
  %.088.be = phi ptr [ %i.ft, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ %.1.i.i44.ph, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread ], [ %.fca.0.extract.i.i.i, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ %.1.i.i48.ph, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread ], [ %i.bs, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit ], [ %i.ce, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit ], [ %.1.i.i52.ph, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread ], [ %i.cw, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53 ], [ %i.dk, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit ], [ %.1.i.i5899, %_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit ], [ %.1.i.i5899, %bb.ae ], [ %i.eu, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit ], [ %.1.i.i67.ph, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread ], [ %.fca.0.extract.i.i.i64, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68 ]
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68: ; preds = %bb.am
  %i.fh = tail call { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef nonnull %.1.i, i32 noundef %i.ff) ; 2 uses
  %.fca.0.extract.i.i.i64 = extractvalue { ptr, i32 } %i.fh, 0 ; 2 uses
  %.fca.1.extract.i.i.i65 = extractvalue { ptr, i32 } %i.fh, 1
  store i32 %.fca.1.extract.i.i.i65, ptr %i.d, align 4, !tbaa !35
  %.not = icmp eq ptr %.fca.0.extract.i.i.i64, null
  br i1 %.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !57

bb.ao:                                            ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %bb.ak, %bb.ah, %bb.z, %bb.w, %bb.r, %bb.o, %bb.j, %bb.f
  %i.fi = icmp eq i32 %.0, 0
  %i.fj = and i32 %.0, 7
  %i.fk = icmp eq i32 %i.fj, 4
  %or.cond = or i1 %i.fi, %i.fk
  br i1 %or.cond, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.not34 = icmp eq ptr %.1.i, null
  br i1 %.not34, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.thread110, !prof !37

.thread110:                                       ; preds = %bb.ap
  %i.fl = add i32 %.0, -1
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !58
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.aq:                                            ; preds = %bb.ao
  %i.fn = load i64, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.fo = trunc i64 %i.fn to i1
  br i1 %i.fo, label %bb.ar, label %bb.as, !prof !12

bb.ar:                                            ; preds = %bb.aq
  %i.fp = and i64 %i.fn, -4
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

bb.as:                                            ; preds = %bb.aq
  %i.fs = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit: ; preds = %bb.ar, %bb.as
  %.0.i = phi ptr [ %i.fr, %bb.ar ], [ %i.fs, %bb.as ]
  %i.ft = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %.0, ptr noundef %.0.i, ptr noundef %.1.i, ptr noundef nonnull %2) ; 2 uses
  %.not33 = icmp eq ptr %i.ft, null
  br i1 %.not33, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !37

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.b, %bb.ap, %.thread110
  %.sroa.0.2 = phi i32 [ %.sroa.0.0, %bb.ap ], [ %.sroa.0.0, %.thread110 ], [ %.sroa.0.0, %bb.b ], [ %.sroa.0.0, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %i.ex, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68 ], [ %.sroa.0.0, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit ], [ %.sroa.0.0, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59 ], [ %.sroa.0.0, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit ], [ %i.ch, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53 ], [ %.sroa.0.0, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit ], [ %i.bf, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit ], [ %i.as, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ %.sroa.0.0, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ]
  %.2 = phi ptr [ null, %bb.ap ], [ %.1.i, %.thread110 ], [ %spec.select, %bb.b ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68 ], [ null, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59 ], [ null, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53 ], [ null, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ null, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ]
  %i.fu = load i32, ptr %i.e, align 8, !tbaa !20
  %i.fv = or i32 %i.fu, %.sroa.0.2
  store i32 %i.fv, ptr %i.e, align 8, !tbaa !20
  ret ptr %.2
}

declare noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK4i18n12phonenumbers11PhoneNumber18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 8 uses
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i = icmp ult ptr %1, %i.d
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.b, %bb.c
  %.0.i41 = phi ptr [ %i.e, %bb.c ], [ %1, %bb.b ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35   ; 4 uses
  store i8 8, ptr %.0.i41, align 1, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i41, i64 1 ; 2 uses
  %i.i = trunc i32 %i.g to i8                     ; 2 uses
  store i8 %i.i, ptr %i.h, align 1, !tbaa !35
  %i.j = icmp ult i32 %i.g, 128
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i41, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit

bb.e:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.l = sext i32 %i.g to i64
  %i.m = or i8 %i.i, -128
  store i8 %i.m, ptr %i.h, align 1, !tbaa !35
  %i.n = lshr i64 %i.l, 7                         ; 2 uses
  %i.o = trunc i64 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i41, i64 2
  store i8 %i.o, ptr %i.p, align 1, !tbaa !35
  %i.q = icmp ult i32 %i.g, 16384
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i41, i64 3 ; 2 uses
  br i1 %i.q, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.e
  %scevgep119 = getelementptr i8, ptr %.0.i41, i64 2
  %load_initial120 = load i8, ptr %scevgep119, align 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %store_forwarded121 = phi i8 [ %load_initial120, %.preheader.i.preheader ], [ %i.v, %.preheader.i ]
  %.018.i.i.i = phi i64 [ %i.n, %.preheader.i.preheader ], [ %i.u, %.preheader.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.r, %.preheader.i.preheader ], [ %i.w, %.preheader.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1
  %i.t = or i8 %store_forwarded121, -128
  store i8 %i.t, ptr %i.s, align 1, !tbaa !35
  %i.u = lshr i64 %.018.i.i.i, 7                  ; 2 uses
  %i.v = trunc i64 %i.u to i8                     ; 2 uses
  store i8 %i.v, ptr %.0.i.i.i, align 1, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  %i.x = icmp samesign ugt i64 %.018.i.i.i, 16383
  br i1 %i.x, label %.preheader.i, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit, !llvm.loop !59

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit: ; preds = %.preheader.i, %bb.e, %bb.d, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.k, %bb.d ], [ %i.r, %bb.e ], [ %i.w, %.preheader.i ] ; 4 uses
  %i.y = and i32 %i.b, 8
  %.not32 = icmp eq i32 %i.y, 0
  br i1 %.not32, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %i.z = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i42 = icmp ult ptr %.0, %i.z
  br i1 %.not.i42, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.0)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44: ; preds = %bb.f, %bb.g
  %.0.i43 = phi ptr [ %i.aa, %bb.g ], [ %.0, %bb.f ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !35 ; 4 uses
  store i8 16, ptr %.0.i43, align 1, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i43, i64 1 ; 2 uses
  %i.ae = trunc i64 %i.ac to i8                   ; 2 uses
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !35
  %i.af = icmp ult i64 %i.ac, 128
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i43, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit

bb.i:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit44
  %i.ah = or i8 %i.ae, -128
  store i8 %i.ah, ptr %i.ad, align 1, !tbaa !35
  %i.ai = lshr i64 %i.ac, 7                       ; 2 uses
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i43, i64 2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !35
  %i.al = icmp ult i64 %i.ac, 16384
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i43, i64 3 ; 2 uses
  br i1 %i.al, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %scevgep116 = getelementptr i8, ptr %.0.i43, i64 2
  %load_initial117 = load i8, ptr %scevgep116, align 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %store_forwarded118 = phi i8 [ %load_initial117, %.preheader.preheader ], [ %i.aq, %.preheader ]
  %.018.i.i = phi i64 [ %i.ai, %.preheader.preheader ], [ %i.ap, %.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.am, %.preheader.preheader ], [ %i.ar, %.preheader ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.0.i.i, i64 -1
  %i.ao = or i8 %store_forwarded118, -128
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !35
  %i.ap = lshr i64 %.018.i.i, 7                   ; 2 uses
  %i.aq = trunc i64 %i.ap to i8                   ; 2 uses
  store i8 %i.aq, ptr %.0.i.i, align 1, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %i.as = icmp samesign ugt i64 %.018.i.i, 16383
  br i1 %i.as, label %.preheader, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit, !llvm.loop !59

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit: ; preds = %.preheader, %bb.i, %bb.h, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit
  %.1 = phi ptr [ %.0, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit ], [ %i.ag, %bb.h ], [ %i.am, %bb.i ], [ %i.ar, %.preheader ] ; 6 uses
  %.not33 = trunc i32 %i.b to i1
  br i1 %.not33, label %bb.j, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit

bb.j:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = and i64 %i.av, -4
  %i.ax = inttoptr i64 %i.aw to ptr               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19 ; 5 uses
  %i.ba = icmp sgt i64 %i.az, 127
  br i1 %i.ba, label %.critedge.i, label %bb.k, !prof !37

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %2, align 8, !tbaa !62
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %.1 to i64
  %reass.sub = sub i64 %i.bc, %i.bd
  %i.be = add i64 %reass.sub, 14
  %i.bf = icmp slt i64 %i.be, %i.az
  br i1 %i.bf, label %.critedge.i, label %.thread.i, !prof !37

.thread.i:                                        ; preds = %bb.k
  store i8 26, ptr %.1, align 1, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.bh = trunc i64 %i.az to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !35
  %i.bj = load ptr, ptr %i.ax, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr align 1 %i.bj, i64 %i.az, i1 false)
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.az
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit

.critedge.i:                                      ; preds = %bb.k, %bb.j
  %i.bl = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef %.1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit: ; preds = %.thread.i, %.critedge.i, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit
  %.2 = phi ptr [ %.1, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit ], [ %i.bl, %.critedge.i ], [ %i.bk, %.thread.i ] ; 4 uses
  %i.bm = and i32 %i.b, 32
  %.not34 = icmp eq i32 %i.bm, 0
  br i1 %.not34, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit
  %i.bn = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i47 = icmp ult ptr %.2, %i.bn
  br i1 %.not.i47, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit49, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit49

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit49: ; preds = %bb.l, %bb.m
  %.0.i48 = phi ptr [ %i.bo, %bb.m ], [ %.2, %bb.l ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bq = load i8, ptr %i.bp, align 4, !tbaa !35, !range !10, !noundef !11
  store i8 32, ptr %.0.i48, align 1, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i48, i64 1
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i48, i64 2
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit49, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit
  %.3 = phi ptr [ %i.bs, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit49 ], [ %.2, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit ] ; 6 uses
  %i.bt = and i32 %i.b, 2
  %.not35 = icmp eq i32 %i.bt, 0
  br i1 %.not35, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, -4
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !19 ; 5 uses
  %i.cb = icmp sgt i64 %i.ca, 127
  br i1 %i.cb, label %.critedge.i58, label %bb.p, !prof !37

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %2, align 8, !tbaa !62
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %.3 to i64
  %reass.sub91 = sub i64 %i.cd, %i.ce
  %i.cf = add i64 %reass.sub91, 14
  %i.cg = icmp slt i64 %i.cf, %i.ca
  br i1 %i.cg, label %.critedge.i58, label %.thread.i55, !prof !37

.thread.i55:                                      ; preds = %bb.p
  store i8 42, ptr %.3, align 1, !tbaa !35
  %i.ch = getelementptr inbounds nuw i8, ptr %.3, i64 1
  %i.ci = trunc i64 %i.ca to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.3, i64 2 ; 2 uses
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !35
  %i.ck = load ptr, ptr %i.by, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr align 1 %i.ck, i64 %i.ca, i1 false)
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 %i.ca
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59

.critedge.i58:                                    ; preds = %bb.p, %bb.o
  %i.cm = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef %.3)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59: ; preds = %.thread.i55, %.critedge.i58, %bb.n
  %.4 = phi ptr [ %.3, %bb.n ], [ %i.cm, %.critedge.i58 ], [ %i.cl, %.thread.i55 ] ; 4 uses
  %i.cn = and i32 %i.b, 64
  %.not36 = icmp eq i32 %i.cn, 0
  br i1 %.not36, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68, label %bb.q

bb.q:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59
  %i.co = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i60 = icmp ult ptr %.4, %i.co
  br i1 %.not.i60, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit62, label %bb.r, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.cp = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.4)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit62

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit62: ; preds = %bb.q, %bb.r
  %.0.i61 = phi ptr [ %i.cp, %bb.r ], [ %.4, %bb.q ] ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !35 ; 4 uses
  store i8 48, ptr %.0.i61, align 1, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i61, i64 1 ; 2 uses
  %i.ct = trunc i32 %i.cr to i8                   ; 2 uses
  store i8 %i.ct, ptr %i.cs, align 1, !tbaa !35
  %i.cu = icmp ult i32 %i.cr, 128
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit62
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i61, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68

bb.t:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit62
  %i.cw = sext i32 %i.cr to i64
  %i.cx = or i8 %i.ct, -128
  store i8 %i.cx, ptr %i.cs, align 1, !tbaa !35
  %i.cy = lshr i64 %i.cw, 7                       ; 2 uses
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i61, i64 2
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !35
  %i.db = icmp ult i32 %i.cr, 16384
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i61, i64 3 ; 2 uses
  br i1 %i.db, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68, label %.preheader.i64.preheader

.preheader.i64.preheader:                         ; preds = %bb.t
  %scevgep113 = getelementptr i8, ptr %.0.i61, i64 2
  %load_initial114 = load i8, ptr %scevgep113, align 1
  br label %.preheader.i64

.preheader.i64:                                   ; preds = %.preheader.i64.preheader, %.preheader.i64
  %store_forwarded115 = phi i8 [ %load_initial114, %.preheader.i64.preheader ], [ %i.dg, %.preheader.i64 ]
  %.018.i.i.i65 = phi i64 [ %i.cy, %.preheader.i64.preheader ], [ %i.df, %.preheader.i64 ] ; 2 uses
  %.0.i.i.i66 = phi ptr [ %i.dc, %.preheader.i64.preheader ], [ %i.dh, %.preheader.i64 ] ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.0.i.i.i66, i64 -1
  %i.de = or i8 %store_forwarded115, -128
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !35
  %i.df = lshr i64 %.018.i.i.i65, 7               ; 2 uses
  %i.dg = trunc i64 %i.df to i8                   ; 2 uses
  store i8 %i.dg, ptr %.0.i.i.i66, align 1, !tbaa !35
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i66, i64 1 ; 2 uses
  %i.di = icmp samesign ugt i64 %.018.i.i.i65, 16383
  br i1 %i.di, label %.preheader.i64, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68, !llvm.loop !59

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68: ; preds = %.preheader.i64, %bb.t, %bb.s, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59
  %.5 = phi ptr [ %.4, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit59 ], [ %i.cv, %bb.s ], [ %i.dc, %bb.t ], [ %i.dh, %.preheader.i64 ] ; 6 uses
  %i.dj = and i32 %i.b, 4
  %.not37 = icmp eq i32 %i.dj, 0
  br i1 %.not37, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74, label %bb.u

bb.u:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit68
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !36
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, -4
  %i.do = inttoptr i64 %i.dn to ptr               ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !19 ; 5 uses
  %i.dr = icmp sgt i64 %i.dq, 127
  br i1 %i.dr, label %.critedge.i73, label %bb.v, !prof !37

bb.v:                                             ; preds = %bb.u
  %i.ds = load ptr, ptr %2, align 8, !tbaa !62
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %.5 to i64
  %reass.sub92 = sub i64 %i.dt, %i.du
  %i.dv = add i64 %reass.sub92, 14
  %i.dw = icmp slt i64 %i.dv, %i.dq
  br i1 %i.dw, label %.critedge.i73, label %.thread.i70, !prof !37

.thread.i70:                                      ; preds = %bb.v
  store i8 58, ptr %.5, align 1, !tbaa !35
  %i.dx = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.dy = trunc i64 %i.dq to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %.5, i64 2 ; 2 uses
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !35
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr align 1 %i.ea, i64 %i.dq, i1 false)
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 %i.dq
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74

end_hunk_1
begin_hunk_2_@_ZNK4i18n12phonenumbers11PhoneNumber18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE:bb.a
bb.w:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74
  %i.ee = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i75 = icmp ult ptr %.6, %i.ee
  br i1 %.not.i75, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77, label %bb.x, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.ef = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.6)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77: ; preds = %bb.w, %bb.x
  %.0.i76 = phi ptr [ %i.ef, %bb.x ], [ %.6, %bb.w ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !35 ; 4 uses
  store i8 64, ptr %.0.i76, align 1, !tbaa !35
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i76, i64 1 ; 2 uses
  %i.ej = trunc i32 %i.eh to i8                   ; 2 uses
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !35
  %i.ek = icmp ult i32 %i.eh, 128
  br i1 %i.ek, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i76, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83

bb.z:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit77
  %i.em = sext i32 %i.eh to i64
  %i.en = or i8 %i.ej, -128
  store i8 %i.en, ptr %i.ei, align 1, !tbaa !35
  %i.eo = lshr i64 %i.em, 7                       ; 2 uses
  %i.ep = trunc i64 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i76, i64 2
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !35
  %i.er = icmp ult i32 %i.eh, 16384
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i76, i64 3 ; 2 uses
  br i1 %i.er, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83, label %.preheader.i79.preheader

.preheader.i79.preheader:                         ; preds = %bb.z
  %scevgep = getelementptr i8, ptr %.0.i76, i64 2
  %load_initial = load i8, ptr %scevgep, align 1
  br label %.preheader.i79

.preheader.i79:                                   ; preds = %.preheader.i79.preheader, %.preheader.i79
  %store_forwarded = phi i8 [ %load_initial, %.preheader.i79.preheader ], [ %i.ew, %.preheader.i79 ]
  %.018.i.i.i80 = phi i64 [ %i.eo, %.preheader.i79.preheader ], [ %i.ev, %.preheader.i79 ] ; 2 uses
  %.0.i.i.i81 = phi ptr [ %i.es, %.preheader.i79.preheader ], [ %i.ex, %.preheader.i79 ] ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %.0.i.i.i81, i64 -1
  %i.eu = or i8 %store_forwarded, -128
  store i8 %i.eu, ptr %i.et, align 1, !tbaa !35
  %i.ev = lshr i64 %.018.i.i.i80, 7               ; 2 uses
  %i.ew = trunc i64 %i.ev to i8                   ; 2 uses
  store i8 %i.ew, ptr %.0.i.i.i81, align 1, !tbaa !35
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i.i81, i64 1 ; 2 uses
  %i.ey = icmp samesign ugt i64 %.018.i.i.i80, 16383
  br i1 %i.ey, label %.preheader.i79, label %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83, !llvm.loop !59

_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83: ; preds = %.preheader.i79, %bb.z, %bb.y, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74
  %.7 = phi ptr [ %.6, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit74 ], [ %i.el, %bb.y ], [ %i.es, %bb.z ], [ %i.ex, %.preheader.i79 ] ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !22 ; 2 uses
  %i.fb = trunc i64 %i.fa to i1
  br i1 %i.fb, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit, !prof !37

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83
  %i.fc = and i64 %i.fa, -4
  %i.fd = inttoptr i64 %i.fc to ptr               ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19 ; 2 uses
  %.pre96 = load ptr, ptr %2, align 8, !tbaa !62
  %i.fg = ptrtoint ptr %.pre96 to i64
  %i.fh = ptrtoint ptr %.7 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %sext = shl i64 %.pre, 32
  %i.fj = ashr exact i64 %sext, 32                ; 3 uses
  %i.fk = icmp slt i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.aa, label %bb.ab, !prof !37

bb.aa:                                            ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.fl = trunc i64 %.pre to i32
  %i.fm = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %i.ff, i32 noundef %i.fl, ptr noundef %.7)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

bb.ab:                                            ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.7, ptr align 1 %i.ff, i64 %i.fj, i1 false)
  %i.fn = getelementptr inbounds i8, ptr %.7, i64 %i.fj
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit: ; preds = %bb.ab, %bb.aa, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83
  %.8 = phi ptr [ %.7, %_ZN6google8protobuf2io17CodedOutputStream32WriteVarint32SignExtendedToArrayEiPh.exit83 ], [ %i.fm, %bb.aa ], [ %i.fn, %bb.ab ]
  ret ptr %.8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i64 0, 23) i64 @_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = and i32 %i.b, 8
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = or i64 %i.e, 1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = xor i64 %i.g, 63
  %i.i = mul nuw nsw i64 %i.h, 9
  %i.j = add nuw nsw i64 %i.i, 137
  %i.k = lshr i64 %i.j, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.l = and i32 %i.b, 16
  %.not3 = icmp eq i32 %i.l, 0
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !tbaa !35
  %i.o = or i32 %i.n, 1
  %i.p = sext i32 %i.o to i64
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 137
  %i.u = lshr i64 %i.t, 6
  %i.v = add nuw nsw i64 %i.u, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.v, %bb.d ], [ %.0, %bb.c ]
  ret i64 %.1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i64 @_ZNK4i18n12phonenumbers11PhoneNumber12ByteSizeLongEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 11 uses
  %i.c = and i32 %i.b, 24
  %i.d = icmp eq i32 %i.c, 24
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = or i64 %i.f, 1
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = mul nuw nsw i64 %i.i, 9
  %i.k = add nuw nsw i64 %i.j, 137
  %i.l = lshr i64 %i.k, 6
  br label %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.m = and i32 %i.b, 8
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !35
  %i.p = or i64 %i.o, 1
  %i.q = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.r = xor i64 %i.q, 63
  %i.s = mul nuw nsw i64 %i.r, 9
  %i.t = add nuw nsw i64 %i.s, 137
  %i.u = lshr i64 %i.t, 6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i28 = phi i64 [ %i.u, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.v = and i32 %i.b, 16
  %.not3.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i, label %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit, label %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split

_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split: ; preds = %bb.e, %bb.b
  %.0.i28.sink = phi i64 [ %i.l, %bb.b ], [ %.0.i28, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = or i32 %i.x, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = xor i64 %i.aa, 63
  %i.ac = mul nuw nsw i64 %i.ab, 9
  %i.ad = add nuw nsw i64 %i.ac, 137
  %i.ae = lshr i64 %i.ad, 6
  %i.af = add nuw nsw i64 %i.ae, %.0.i28.sink
  br label %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit

_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit: ; preds = %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split, %bb.e
  %.0 = phi i64 [ %.0.i28, %bb.e ], [ %i.af, %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit.sink.split ] ; 3 uses
  %i.ag = and i32 %i.b, 7
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit
  %.not21 = trunc i32 %i.b to i1
  br i1 %.not21, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = and i64 %i.aj, -4
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = or i32 %i.ao, 1
  %i.aq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ap, i1 true)
  %i.ar = xor i32 %i.aq, 31
  %i.as = mul nuw nsw i32 %i.ar, 9
  %i.at = add nuw nsw i32 %i.as, 73
  %i.au = lshr i32 %i.at, 6
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = add nuw nsw i64 %.0, 1
  %i.ax = add i64 %i.aw, %i.an
  %i.ay = add i64 %i.ax, %i.av
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i64 [ %i.ay, %bb.g ], [ %.0, %bb.f ]  ; 2 uses
  %i.az = and i32 %i.b, 2
  %.not22 = icmp eq i32 %i.az, 0
  br i1 %.not22, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, -4
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !19 ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = or i32 %i.bh, 1
  %i.bj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = mul nuw nsw i32 %i.bk, 9
  %i.bm = add nuw nsw i32 %i.bl, 73
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = add i64 %.1, 1
  %i.bq = add i64 %i.bp, %i.bg
  %i.br = add i64 %i.bq, %i.bo
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i64 [ %i.br, %bb.i ], [ %.1, %bb.h ]  ; 2 uses
  %i.bs = and i32 %i.b, 4
  %.not23 = icmp eq i32 %i.bs, 0
  br i1 %.not23, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !36
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = and i64 %i.bv, -4
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = or i32 %i.ca, 1
  %i.cc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.cb, i1 true)
  %i.cd = xor i32 %i.cc, 31
  %i.ce = mul nuw nsw i32 %i.cd, 9
  %i.cf = add nuw nsw i32 %i.ce, 73
  %i.cg = lshr i32 %i.cf, 6
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = add i64 %.2, 1
  %i.cj = add i64 %i.ci, %i.bz
  %i.ck = add i64 %i.cj, %i.ch
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit
  %.3 = phi i64 [ %i.ck, %bb.k ], [ %.2, %bb.j ], [ %.0, %_ZNK4i18n12phonenumbers11PhoneNumber30RequiredFieldsByteSizeFallbackEv.exit ] ; 2 uses
  %i.cl = and i32 %i.b, 224
  %.not24 = icmp eq i32 %i.cl, 0
  br i1 %.not24, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = lshr i32 %i.b, 4
  %i.cn = and i32 %i.cm, 2
  %i.co = zext nneg i32 %i.cn to i64
  %spec.select = add i64 %.3, %i.co               ; 2 uses
  %i.cp = and i32 %i.b, 64
  %.not26 = icmp eq i32 %i.cp, 0
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !35
  %i.cs = or i32 %i.cr, 1
  %i.ct = sext i32 %i.cs to i64
  %i.cu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = xor i64 %i.cu, 63
  %i.cw = mul nuw nsw i64 %i.cv, 9
  %i.cx = add nuw nsw i64 %i.cw, 73
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = add i64 %spec.select, 1
  %i.da = add i64 %i.cz, %i.cy
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5 = phi i64 [ %i.da, %bb.n ], [ %spec.select, %bb.m ] ; 2 uses
  %i.db = and i32 %i.b, 128
  %.not27 = icmp eq i32 %i.db, 0
  br i1 %.not27, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !35
  %i.de = or i32 %i.dd, 1
  %i.df = sext i32 %i.de to i64
  %i.dg = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.df, i1 true)
  %i.dh = xor i64 %i.dg, 63
  %i.di = mul nuw nsw i64 %i.dh, 9
  %i.dj = add nuw nsw i64 %i.di, 137
  %i.dk = lshr i64 %i.dj, 6
  %i.dl = add i64 %i.dk, %.5
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.l
  %.6 = phi i64 [ %i.dl, %bb.p ], [ %.5, %bb.o ], [ %.3, %bb.l ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !22 ; 2 uses
  %i.do = trunc i64 %i.dn to i1
  br i1 %i.do, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %bb.r, !prof !37

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.q
  %i.dp = and i64 %i.dn, -4
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !19
  %i.dt = add i64 %i.ds, %.6
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, %bb.q
  %.7 = phi i64 [ %i.dt, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit ], [ %.6, %bb.q ] ; 2 uses
  %i.du = trunc i64 %.7 to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 20
  store atomic i32 %i.du, ptr %i.dv monotonic, align 4
  ret i64 %.7
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumber21CheckTypeAndMergeFromERKN6google8protobuf11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4i18n12phonenumbers11PhoneNumber9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumber9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20   ; 10 uses
  %i.c = and i32 %i.b, 255
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not30 = trunc i32 %i.b to i1
  br i1 %.not30, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -4
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !20
  %i.k = or i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = trunc i64 %i.n to i1
  %i.p = and i64 %i.n, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  br i1 %i.o, label %bb.d, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !37

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.r, %bb.d ], [ %i.q, %bb.c ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef %.0.i.i)
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, %bb.b
  %i.s = and i32 %i.b, 2
  %.not31 = icmp eq i32 %i.s, 0
  br i1 %.not31, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -4
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20
  %i.aa = or i32 %i.z, 2
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22 ; 2 uses
  %i.ae = trunc i64 %i.ad to i1
  %i.af = and i64 %i.ad, -4
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  br i1 %i.ae, label %bb.g, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit39, !prof !37

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit39

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit39: ; preds = %bb.f, %bb.g
  %.0.i.i38 = phi ptr [ %i.ah, %bb.g ], [ %i.ag, %bb.f ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef %.0.i.i38)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit39, %bb.e
  %i.ai = and i32 %i.b, 4
  %.not32 = icmp eq i32 %i.ai, 0
  br i1 %.not32, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, -4
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !20
  %i.aq = or i32 %i.ap, 4
  store i32 %i.aq, ptr %i.ao, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !22 ; 2 uses
  %i.au = trunc i64 %i.at to i1
  %i.av = and i64 %i.at, -4
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  br i1 %i.au, label %bb.j, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit41, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !40
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit41

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit41: ; preds = %bb.i, %bb.j
  %.0.i.i40 = phi ptr [ %i.ax, %bb.j ], [ %i.aw, %bb.i ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef %.0.i.i40)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit41, %bb.h
  %i.ay = and i32 %i.b, 8
  %.not33 = icmp eq i32 %i.ay, 0
  br i1 %.not33, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !35
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bc = and i32 %i.b, 16
  %.not34 = icmp eq i32 %i.bc, 0
  br i1 %.not34, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = and i32 %i.b, 32
  %.not35 = icmp eq i32 %i.bg, 0
  br i1 %.not35, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !35, !range !10, !noundef !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 %i.bi, ptr %i.bj, align 4, !tbaa !35
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = and i32 %i.b, 64
  %.not36 = icmp eq i32 %i.bk, 0
  br i1 %.not36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bo = and i32 %i.b, 128
  %.not37 = icmp eq i32 %i.bo, 0
  br i1 %.not37, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !35
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !20
  %i.bu = or i32 %i.bt, %i.b
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !20
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !22 ; 2 uses
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = and i64 %i.bw, -4
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.v, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumber8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 5 uses
  %i.d = and i32 %i.c, 7
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not5.i = trunc i32 %i.c to i1
  br i1 %.not5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -4
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !19
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !18
  store i8 0, ptr %i.k, align 1, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = and i32 %i.c, 2
  %.not6.i = icmp eq i32 %i.l, 0
  br i1 %.not6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !18
  store i8 0, ptr %i.s, align 1, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = and i32 %i.c, 4
  %.not7.i = icmp eq i32 %i.t, 0
  br i1 %.not7.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -4
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !19
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !18
  store i8 0, ptr %i.aa, align 1, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.b
  %i.ab = and i32 %i.c, 248
  %.not8.i = icmp eq i32 %i.ab, 0
  br i1 %.not8.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.ad, align 4, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 0, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.l, label %_ZN4i18n12phonenumbers11PhoneNumber5ClearEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  br label %_ZN4i18n12phonenumbers11PhoneNumber5ClearEv.exit

_ZN4i18n12phonenumbers11PhoneNumber5ClearEv.exit: ; preds = %bb.k, %bb.l
  tail call void @_ZN4i18n12phonenumbers11PhoneNumber9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4i18n12phonenumbers11PhoneNumber5ClearEv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4i18n12phonenumbers11PhoneNumber13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = and i32 %i.b, 24
  %.not = icmp eq i32 %i.c, 24
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumber12InternalSwapEPS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #14 align 2 {
_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !41
  store i64 %i.b, ptr %i.c, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !20
  %i.h = load i32, ptr %i.f, align 8, !tbaa !20
  store i32 %i.h, ptr %i.e, align 8, !tbaa !20
  store i32 %i.g, ptr %i.f, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.k = load i64, ptr %i.i, align 8, !tbaa !34
  store i64 %i.k, ptr %i.j, align 8, !tbaa !34
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i17 = load ptr, ptr %i.m, align 8, !tbaa !34
  %i.n = load i64, ptr %i.l, align 8, !tbaa !34
  store i64 %i.n, ptr %i.m, align 8, !tbaa !34
  store ptr %.sroa.0.0.copyload.i17, ptr %i.l, align 8, !tbaa !34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i18 = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.q = load i64, ptr %i.o, align 8, !tbaa !34
  store i64 %i.q, ptr %i.p, align 8, !tbaa !34
  store ptr %.sroa.0.0.copyload.i18, ptr %i.o, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.0.copyload.i.i = load i128, ptr %i.r, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store i128 %.0.copyload.i.i, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.t, align 8
  %i.v = load i32, ptr %i.u, align 8
  store i32 %i.v, ptr %i.t, align 8
  store i32 %.0.copyload.i.i.i, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !20
  %i.z = load i32, ptr %i.x, align 4, !tbaa !20
  store i32 %i.z, ptr %i.w, align 4, !tbaa !20
  store i32 %i.y, ptr %i.x, align 4, !tbaa !20
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4i18n12phonenumbers11PhoneNumber11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 29, ptr %i.a, align 8, !tbaa !41
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !18
  %i.d = load i64, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.c, ptr noundef nonnull align 1 dereferenceable(29) @.str.2, i64 29, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !19
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN4i18n12phonenumbers11PhoneNumberEJEEEPT_PS1_DpOT0_(ptr noundef %0) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit, label %bb.b

_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !22
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN4i18n12phonenumbers11PhoneNumberEEEPT_PS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 72, ptr noundef nonnull @_ZTIN4i18n12phonenumbers11PhoneNumberE) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = ptrtoint ptr %0 to i64
  store i64 %i.f, ptr %i.e, align 8, !tbaa !22
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN4i18n12phonenumbers11PhoneNumberEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateMessageInternalIN4i18n12phonenumbers11PhoneNumberEEEPT_PS1_.exit: ; preds = %_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit, %bb.b
  %.sink11 = phi ptr [ %i.b, %_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit ], [ %i.d, %bb.b ] ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4i18n12phonenumbers11PhoneNumberE, i64 16), ptr %.sink11, align 8, !tbaa !24
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %.sink11, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sink11, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %.sink11, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.sink11, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %.sink11, i64 64
  store i32 0, ptr %i.j, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %.sink11, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %.ptr.i.i, i8 0, i64 45, i1 false)
  store i32 1, ptr %i.k, align 4, !tbaa !33
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.g, align 8, !tbaa !34
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.h, align 8, !tbaa !34
  store i64 ptrtoint (ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringB5cxx11E to i64), ptr %i.i, align 8, !tbaa !34
  ret ptr %.sink11
}

end_hunk_2
