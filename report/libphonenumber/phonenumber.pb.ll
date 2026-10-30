Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libphonenumber/original/phonenumber.pb?download=true
inline.NumInlined: 250
inline.NumDeleted: 137
begin_hunk_0_@_ZN4i18n12phonenumbers11PhoneNumberD2Ev:bb.a
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
  tail call void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(40) %i.n) #18
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef 40) #19
  br label %_ZN6google8protobuf11MessageLiteD2Ev.exit

_ZN6google8protobuf11MessageLiteD2Ev.exit:        ; preds = %_ZN4i18n12phonenumbers11PhoneNumber10SharedDtorEv.exit, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %.noexc3, %.noexc2, %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #20
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4i18n12phonenumbers11PhoneNumberD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4i18n12phonenumbers11PhoneNumberD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #19
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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
  %i.d = and i32 %i.b, 1
  %.not5 = icmp eq i32 %i.d, 0
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -4
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !19
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !18
  store i8 0, ptr %i.k, align 1, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = and i32 %i.b, 2
  %.not6 = icmp eq i32 %i.l, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = and i64 %i.o, -4
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !19
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !18
  store i8 0, ptr %i.s, align 1, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = and i32 %i.b, 4
  %.not7 = icmp eq i32 %i.t, 0
  br i1 %.not7, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, -4
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !19
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !18
  store i8 0, ptr %i.aa, align 1, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %i.ab = and i32 %i.b, 248
  %.not8 = icmp eq i32 %i.ab, 0
  br i1 %.not8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.ad, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.k, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
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
  %.sroa.0.0.a = phi i32 [ 0, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ], [ %.sroa.0.0.be.a, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge ] ; 19 uses
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
  %.1.i.a = phi ptr [ %.fca.0.extract.i, %bb.e ], [ %i.an, %bb.d ], [ %i.ag, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread91 ] ; 26 uses
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
  %i.as = or i32 %.sroa.0.0.a, 16                 ; 3 uses
  %i.at = load i8, ptr %.1.i.a, align 1, !tbaa !35 ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %.not.i.i = icmp sgt i8 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 1 ; 2 uses
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
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 2
  br label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread: ; preds = %bb.i, %bb.g
  %.0.i43.ph = phi i32 [ %i.au, %bb.g ], [ %i.ba, %bb.i ]
  %.1.i.i44.ph = phi ptr [ %i.av, %bb.g ], [ %i.bb, %bb.i ]
  store i32 %.0.i43.ph, ptr %i.m, align 8, !tbaa !35
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit: ; preds = %bb.h
  %i.bc = tail call { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef nonnull %.1.i.a, i32 noundef %i.ba) ; 2 uses
  %.fca.0.extract.i.i.i = extractvalue { ptr, i32 } %i.bc, 0 ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { ptr, i32 } %i.bc, 1
  store i32 %.fca.1.extract.i.i.i, ptr %i.m, align 8, !tbaa !35
  %.not32 = icmp eq ptr %.fca.0.extract.i.i.i, null
  br i1 %.not32, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !57

bb.j:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.bd = and i32 %.0, 255
  %i.be = icmp eq i32 %i.bd, 16
  br i1 %i.be, label %bb.k, label %bb.ao, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.bf = or i32 %.sroa.0.0.a, 8                  ; 3 uses
  %i.bg = load i8, ptr %.1.i.a, align 1, !tbaa !35 ; 3 uses
  %.not.i.i45 = icmp sgt i8 %i.bg, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 1 ; 2 uses
  br i1 %.not.i.i45, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = zext nneg i8 %i.bg to i64
  br label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.bj = zext i8 %i.bg to i32
  %i.bk = load i8, ptr %i.bh, align 1, !tbaa !35  ; 2 uses
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 7
  %i.bn = add nsw i32 %i.bj, -128
  %i.bo = or disjoint i32 %i.bm, %i.bn            ; 2 uses
  %.not16.i.i46 = icmp sgt i8 %i.bk, -1
  br i1 %.not16.i.i46, label %bb.n, label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 2
  br label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread

_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread: ; preds = %bb.l, %bb.n
  %.0.i47.ph = phi i64 [ %i.bp, %bb.n ], [ %i.bi, %bb.l ]
  %.1.i.i48.ph = phi ptr [ %i.bq, %bb.n ], [ %i.bh, %bb.l ]
  store i64 %.0.i47.ph, ptr %i.l, align 8, !tbaa !35
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit: ; preds = %bb.m
  %i.br = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.1.i.a, i32 noundef %i.bo) ; 2 uses
  %i.bs = extractvalue { ptr, i64 } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.br, 1
  store i64 %i.bt, ptr %i.l, align 8, !tbaa !35
  %.not31 = icmp eq ptr %i.bs, null
  br i1 %.not31, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !57

bb.o:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.bu = and i32 %.0, 255
  %i.bv = icmp eq i32 %i.bu, 26
  br i1 %i.bv, label %bb.p, label %bb.ao, !prof !12

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %i.e, align 8, !tbaa !20
  %i.bx = or i32 %i.bw, 1
  store i32 %i.bx, ptr %i.e, align 8, !tbaa !20
  %i.by = load i64, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.bz = trunc i64 %i.by to i1
  %i.ca = and i64 %i.by, -4
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  br i1 %i.bz, label %bb.q, label %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit, !prof !37

bb.q:                                             ; preds = %bb.p
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40
  br label %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit

_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i = phi ptr [ %i.cc, %bb.q ], [ %i.cb, %bb.p ]
  %i.cd = tail call noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %.0.i.i.i)
  %i.ce = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.cd, ptr noundef %.1.i.a, ptr noundef nonnull %2) ; 2 uses
  %.not30.not = icmp eq ptr %i.ce, null
  br i1 %.not30.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !37

bb.r:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.cf = and i32 %.0, 255
  %i.cg = icmp eq i32 %i.cf, 32
  br i1 %i.cg, label %bb.s, label %bb.ao, !prof !12

bb.s:                                             ; preds = %bb.r
  %i.ch = or i32 %.sroa.0.0.a, 32                 ; 3 uses
  %i.ci = load i8, ptr %.1.i.a, align 1, !tbaa !35 ; 3 uses
  %.not.i.i49 = icmp sgt i8 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 1 ; 2 uses
  br i1 %.not.i.i49, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ck = zext nneg i8 %i.ci to i64
  br label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread

bb.u:                                             ; preds = %bb.s
  %i.cl = zext i8 %i.ci to i32
  %i.cm = load i8, ptr %i.cj, align 1, !tbaa !35  ; 2 uses
  %i.cn = zext i8 %i.cm to i32
  %i.co = shl nuw nsw i32 %i.cn, 7
  %i.cp = add nsw i32 %i.cl, -128
  %i.cq = or disjoint i32 %i.co, %i.cp            ; 2 uses
  %.not16.i.i50 = icmp sgt i8 %i.cm, -1
  br i1 %.not16.i.i50, label %bb.v, label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53

bb.v:                                             ; preds = %bb.u
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 2
  br label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread

_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread: ; preds = %bb.t, %bb.v
  %.0.i51.ph = phi i64 [ %i.cr, %bb.v ], [ %i.ck, %bb.t ]
  %.1.i.i52.ph = phi ptr [ %i.cs, %bb.v ], [ %i.cj, %bb.t ]
  %i.ct = icmp ne i64 %.0.i51.ph, 0
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.j, align 4, !tbaa !35
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53: ; preds = %bb.u
  %i.cv = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.1.i.a, i32 noundef %i.cq) ; 2 uses
  %i.cw = extractvalue { ptr, i64 } %i.cv, 0      ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cv, 1
  %i.cy = icmp ne i64 %i.cx, 0
  %i.cz = zext i1 %i.cy to i8
  store i8 %i.cz, ptr %i.j, align 4, !tbaa !35
  %.not29 = icmp eq ptr %i.cw, null
  br i1 %.not29, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !57

bb.w:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.da = and i32 %.0, 255
  %i.db = icmp eq i32 %i.da, 42
  br i1 %i.db, label %bb.x, label %bb.ao, !prof !12

bb.x:                                             ; preds = %bb.w
  %i.dc = load i32, ptr %i.e, align 8, !tbaa !20
  %i.dd = or i32 %i.dc, 2
  store i32 %i.dd, ptr %i.e, align 8, !tbaa !20
  %i.de = load i64, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.df = trunc i64 %i.de to i1
  %i.dg = and i64 %i.de, -4
  %i.dh = inttoptr i64 %i.dg to ptr               ; 2 uses
  br i1 %i.df, label %bb.y, label %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit, !prof !37

bb.y:                                             ; preds = %bb.x
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !40
  br label %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit

_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit: ; preds = %bb.x, %bb.y
  %.0.i.i.i54 = phi ptr [ %i.di, %bb.y ], [ %i.dh, %bb.x ]
  %i.dj = tail call noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %.0.i.i.i54)
  %i.dk = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.dj, ptr noundef %.1.i.a, ptr noundef nonnull %2) ; 2 uses
  %.not28.not = icmp eq ptr %i.dk, null
  br i1 %.not28.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !37

bb.z:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.dl = and i32 %.0, 255
  %i.dm = icmp eq i32 %i.dl, 48
  br i1 %i.dm, label %bb.aa, label %bb.ao, !prof !12

bb.aa:                                            ; preds = %bb.z
  %i.dn = load i8, ptr %.1.i.a, align 1, !tbaa !35 ; 3 uses
  %.not.i.i55 = icmp sgt i8 %i.dn, -1
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 1 ; 2 uses
  br i1 %.not.i.i55, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dp = zext nneg i8 %i.dn to i64
  br label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread

bb.ac:                                            ; preds = %bb.aa
  %i.dq = zext i8 %i.dn to i32
  %i.dr = load i8, ptr %i.do, align 1, !tbaa !35  ; 2 uses
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 7
  %i.du = add nsw i32 %i.dq, -128
  %i.dv = or disjoint i32 %i.dt, %i.du            ; 2 uses
  %.not16.i.i56 = icmp sgt i8 %i.dr, -1
  br i1 %.not16.i.i56, label %bb.ad, label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59

bb.ad:                                            ; preds = %bb.ac
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 2
  br label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread

_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59: ; preds = %bb.ac
  %i.dy = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.1.i.a, i32 noundef %i.dv) ; 2 uses
  %i.dz = extractvalue { ptr, i64 } %i.dy, 0      ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dy, 1
  %.not27.not = icmp eq ptr %i.dz, null
  br i1 %.not27.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread, !prof !57

_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread: ; preds = %bb.ad, %bb.ab, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59
  %.1.i.i5899 = phi ptr [ %i.dz, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59 ], [ %i.dx, %bb.ad ], [ %i.do, %bb.ab ] ; 2 uses
  %.0.i5798 = phi i64 [ %i.ea, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59 ], [ %i.dw, %bb.ad ], [ %i.dp, %bb.ab ] ; 2 uses
  %i.eb = trunc i64 %.0.i5798 to i32              ; 2 uses
  switch i32 %i.eb, label %_ZN4i18n12phonenumbers37PhoneNumber_CountryCodeSource_IsValidEi.exit [
    i32 0, label %bb.ae
    i32 1, label %bb.ae
    i32 5, label %bb.ae
    i32 10, label %bb.ae
    i32 20, label %bb.ae
  ]

bb.ae:                                            ; preds = %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread
  %i.ec = load i32, ptr %i.e, align 8, !tbaa !20
  %i.ed = or i32 %i.ec, 64
  store i32 %i.ed, ptr %i.e, align 8, !tbaa !20
  store i32 %i.eb, ptr %i.h, align 8, !tbaa !35
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

_ZN4i18n12phonenumbers37PhoneNumber_CountryCodeSource_IsValidEi.exit: ; preds = %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59.thread
  %i.ee = load i64, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.ef = trunc i64 %i.ee to i1
  br i1 %i.ef, label %bb.af, label %bb.ag, !prof !12

bb.af:                                            ; preds = %_ZN4i18n12phonenumbers37PhoneNumber_CountryCodeSource_IsValidEi.exit
  %i.eg = and i64 %i.ee, -4
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  br label %_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit

bb.ag:                                            ; preds = %_ZN4i18n12phonenumbers37PhoneNumber_CountryCodeSource_IsValidEi.exit
  %i.ej = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit

_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit: ; preds = %bb.af, %bb.ag
  %.0.i.i = phi ptr [ %i.ei, %bb.af ], [ %i.ej, %bb.ag ]
  tail call void @_ZN6google8protobuf8internal11WriteVarintEjmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(i32 noundef 6, i64 noundef %.0.i5798, ptr noundef %.0.i.i)
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

bb.ah:                                            ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.ek = and i32 %.0, 255
  %i.el = icmp eq i32 %i.ek, 58
  br i1 %i.el, label %bb.ai, label %bb.ao, !prof !12

bb.ai:                                            ; preds = %bb.ah
  %i.em = load i32, ptr %i.e, align 8, !tbaa !20
  %i.en = or i32 %i.em, 4
  store i32 %i.en, ptr %i.e, align 8, !tbaa !20
  %i.eo = load i64, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.ep = trunc i64 %i.eo to i1
  %i.eq = and i64 %i.eo, -4
  %i.er = inttoptr i64 %i.eq to ptr               ; 2 uses
  br i1 %i.ep, label %bb.aj, label %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit, !prof !37

bb.aj:                                            ; preds = %bb.ai
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !40
  br label %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit

_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit: ; preds = %bb.ai, %bb.aj
  %.0.i.i.i61 = phi ptr [ %i.es, %bb.aj ], [ %i.er, %bb.ai ]
  %i.et = tail call noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %.0.i.i.i61)
  %i.eu = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.et, ptr noundef %.1.i.a, ptr noundef nonnull %2) ; 2 uses
  %.not26.not = icmp eq ptr %i.eu, null
  br i1 %.not26.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !37

bb.ak:                                            ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.ev = and i32 %.0, 255
  %i.ew = icmp eq i32 %i.ev, 64
  br i1 %i.ew, label %bb.al, label %bb.ao, !prof !12

bb.al:                                            ; preds = %bb.ak
  %i.ex = or i32 %.sroa.0.0.a, 128                ; 3 uses
  %i.ey = load i8, ptr %.1.i.a, align 1, !tbaa !35 ; 2 uses
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  %.not.i.i62 = icmp sgt i8 %i.ey, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 1 ; 2 uses
  br i1 %.not.i.i62, label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !35  ; 2 uses
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 7
  %i.fe = add nsw i32 %i.ez, -128
  %i.ff = or disjoint i32 %i.fd, %i.fe            ; 2 uses
  %.not16.i.i63 = icmp sgt i8 %i.fb, -1
  br i1 %.not16.i.i63, label %bb.an, label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68

bb.an:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %.1.i.a, i64 2
  br label %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread: ; preds = %bb.an, %bb.al
  %.0.i66.ph = phi i32 [ %i.ez, %bb.al ], [ %i.ff, %bb.an ]
  %.1.i.i67.ph = phi ptr [ %i.fa, %bb.al ], [ %i.fg, %bb.an ]
  store i32 %.0.i66.ph, ptr %i.d, align 4, !tbaa !35
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge: ; preds = %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit, %bb.ae
  %.sroa.0.0.be.a = phi i32 [ %.sroa.0.0.a, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ %i.as, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread ], [ %i.as, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ %i.bf, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread ], [ %i.bf, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit ], [ %.sroa.0.0.a, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit ], [ %i.ch, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread ], [ %i.ch, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53 ], [ %.sroa.0.0.a, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit ], [ %.sroa.0.0.a, %_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit ], [ %.sroa.0.0.a, %bb.ae ], [ %.sroa.0.0.a, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit ], [ %i.ex, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread ], [ %i.ex, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68 ]
  %.088.be = phi ptr [ %i.ft, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ %.1.i.i44.ph, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit.thread ], [ %.fca.0.extract.i.i.i, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ %.1.i.i48.ph, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit.thread ], [ %i.bs, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit ], [ %i.ce, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit ], [ %.1.i.i52.ph, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53.thread ], [ %i.cw, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53 ], [ %i.dk, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit ], [ %.1.i.i5899, %_ZN4i18n12phonenumbers11PhoneNumber22mutable_unknown_fieldsB5cxx11Ev.exit ], [ %.1.i.i5899, %bb.ae ], [ %i.eu, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit ], [ %.1.i.i67.ph, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68.thread ], [ %.fca.0.extract.i.i.i64, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68 ]
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68: ; preds = %bb.am
  %i.fh = tail call { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef nonnull %.1.i.a, i32 noundef %i.ff) ; 2 uses
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
  %.not34 = icmp eq ptr %.1.i.a, null
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
  %i.ft = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %.0, ptr noundef %.0.i, ptr noundef %.1.i.a, ptr noundef nonnull %2) ; 2 uses
  %.not33 = icmp eq ptr %i.ft, null
  br i1 %.not33, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !37

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.b, %bb.ap, %.thread110
  %.sroa.0.2 = phi i32 [ %.sroa.0.0.a, %bb.ap ], [ %.sroa.0.0.a, %.thread110 ], [ %.sroa.0.0.a, %bb.b ], [ %.sroa.0.0.a, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %i.ex, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68 ], [ %.sroa.0.0.a, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit ], [ %.sroa.0.0.a, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59 ], [ %.sroa.0.0.a, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit ], [ %i.ch, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53 ], [ %.sroa.0.0.a, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit ], [ %i.bf, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit ], [ %i.as, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ %.sroa.0.0.a, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ]
  %.2 = phi ptr [ null, %bb.ap ], [ %.1.i.a, %.thread110 ], [ %spec.select, %bb.b ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit68 ], [ null, %_ZN4i18n12phonenumbers11PhoneNumber49_internal_mutable_preferred_domestic_carrier_codeB5cxx11Ev.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit59 ], [ null, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_raw_inputB5cxx11Ev.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit53 ], [ null, %_ZN4i18n12phonenumbers11PhoneNumber27_internal_mutable_extensionB5cxx11Ev.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint64EPPKc.exit ], [ null, %_ZN6google8protobuf8internal12ReadVarint32EPPKc.exit ], [ null, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ]
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
  %i.at = and i32 %i.b, 1
  %.not33 = icmp eq i32 %i.at, 0
  br i1 %.not33, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !36
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, -4
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19 ; 5 uses
  %i.bb = icmp sgt i64 %i.ba, 127
  br i1 %i.bb, label %.critedge.i, label %bb.k, !prof !37

bb.k:                                             ; preds = %bb.j
  %i.bc = load ptr, ptr %2, align 8, !tbaa !62
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %.1 to i64
  %reass.sub = sub i64 %i.bd, %i.be
  %i.bf = add i64 %reass.sub, 14
  %i.bg = icmp slt i64 %i.bf, %i.ba
  br i1 %i.bg, label %.critedge.i, label %.thread.i, !prof !37

.thread.i:                                        ; preds = %bb.k
  store i8 26, ptr %.1, align 1, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.bi = trunc i64 %i.ba to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.1, i64 2 ; 2 uses
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !35
  %i.bk = load ptr, ptr %i.ay, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.bk, i64 %i.ba, i1 false)
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.ba
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit

.critedge.i:                                      ; preds = %bb.k, %bb.j
  %i.bm = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef %.1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit: ; preds = %.thread.i, %.critedge.i, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit
  %.2 = phi ptr [ %.1, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint64ToArrayEmPh.exit ], [ %i.bm, %.critedge.i ], [ %i.bl, %.thread.i ] ; 4 uses
  %i.bn = and i32 %i.b, 32
  %.not34 = icmp eq i32 %i.bn, 0
  br i1 %.not34, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !62
  %.not.i47 = icmp ult ptr %.2, %i.bo
  br i1 %.not.i47, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit49, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %i.bp = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %.2)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit49

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit49: ; preds = %bb.l, %bb.m
  %.0.i48 = phi ptr [ %i.bp, %bb.m ], [ %.2, %bb.l ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !35, !range !10, !noundef !11
  store i8 32, ptr %.0.i48, align 1, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i48, i64 1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !35
end_hunk_0
begin_hunk_1_@_ZNK4i18n12phonenumbers11PhoneNumber11GetTypeNameB5cxx11Ev
define dso_local void @_ZNK4i18n12phonenumbers11PhoneNumber11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN4i18n12phonenumbers11PhoneNumberEJEEEPT_PS1_DpOT0_(ptr noundef %0) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit, label %bb.b

_ZN6google8protobuf5Arena14InternalHelperIN4i18n12phonenumbers11PhoneNumberEE3NewEv.exit: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 2 uses
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK4i18n12phonenumbers11PhoneNumber3NewEPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN4i18n12phonenumbers11PhoneNumberEJEEEPT_PS1_DpOT0_(ptr noundef %1), !inline_history !64
  ret ptr %i.a
}

declare void @_ZNK6google8protobuf11MessageLite25InitializationErrorStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4i18n12phonenumbers11PhoneNumber13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf11MessageLite25OnDemandRegisterArenaDtorEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv() local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal15ThreadSafeArenaD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33)) unnamed_addr #15

declare void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.f = icmp eq ptr %.0.i, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.g = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !42
  store i8 0, ptr %i.i, align 8, !tbaa !35
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.j = tail call { ptr, ptr } @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %.0.i, i64 noundef 40, ptr noundef nonnull @_ZTIN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 5 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv, ptr %i.m, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !42
  store i8 0, ptr %i.o, align 8, !tbaa !35
  %.pre = load i64, ptr %0, align 8, !tbaa !22
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit

_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_St17integral_constantIbLb0EEDpOT0_.exit: ; preds = %bb.c, %bb.d
  %i.p = phi i64 [ %i.a, %bb.c ], [ %.pre, %bb.d ]
  %.0.i6 = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 3 uses
  %i.q = and i64 %i.p, 2
  %i.r = ptrtoint ptr %.0.i6 to i64
  %i.s = or i64 %i.q, %i.r
  %i.t = or i64 %i.s, 1
  store i64 %i.t, ptr %0, align 8, !tbaa !22
  store ptr %.0.i, ptr %.0.i6, align 8, !tbaa !40
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i6, i64 8
  ret ptr %i.u
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv(ptr noundef %0) #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !35
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare { ptr, ptr } @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN6google8protobuf5Arena23AllocateAlignedWithHookEmPKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef ptr @_ZN6google8protobuf8internal16InternalMetadata21DeleteOutOfLineHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPNS0_5ArenaEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !22     ; 4 uses
  %i.b = trunc i64 %i.a to i1
  %i.c = and i64 %i.a, -4
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.a = phi ptr [ %i.e, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %.0.i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.f = and i64 %i.a, 2
  %1 = ptrtoint ptr %.0.i.a to i64
  %i.g = or i64 %i.f, %1
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.h = and i64 %i.a, -4                         ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.o = load i64, ptr %i.m, align 8, !tbaa !35
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 40) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %bb.c
  %storemerge = phi i64 [ %i.g, %bb.c ], [ 0, %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit ], [ 0, %bb.d ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !22
  ret ptr %.0.i.a
}

declare void @_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !5, i64 16}
!18 = !{!17, !14, i64 0}
!19 = !{!17, !16, i64 8}
!20 = !{!6, !6, i64 0}
!21 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !16, i64 0}
!22 = !{!21, !16, i64 0}
!23 = !{!"vtable pointer", !4, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"_ZTSN6google8protobuf8internal7HasBitsILm1EEE", !5, i64 0}
!26 = !{!"_ZTSSt13__atomic_baseIiE", !6, i64 0}
!27 = !{!"_ZTSSt6atomicIiE", !26, i64 0}
!28 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !27, i64 0}
!29 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !13, i64 0}
!30 = !{!"_ZTSN6google8protobuf8internal14ArenaStringPtrE", !29, i64 0}
!31 = !{!"_ZTSN4i18n12phonenumbers11PhoneNumber5Impl_E", !25, i64 0, !28, i64 4, !30, i64 8, !30, i64 16, !30, i64 24, !16, i64 32, !6, i64 40, !9, i64 44, !6, i64 48, !6, i64 52}
!32 = !{!31, !6, i64 48}
!33 = !{!31, !6, i64 52}
!34 = !{!13, !13, i64 0}
!35 = !{!5, !5, i64 0}
!36 = !{!29, !13, i64 0}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !13, i64 0}
!39 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!16, !16, i64 0}
!42 = !{!15, !14, i64 0}
!43 = !{!"branch_weights", i32 1, i32 1048575}
!44 = !{!9, !9, i64 0}
!45 = !{!"_ZTSN4i18n12phonenumbers29PhoneNumber_CountryCodeSourceE", !5, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !13, i64 0}
!48 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !14, i64 0, !14, i64 8, !14, i64 16, !6, i64 24, !6, i64 28, !47, i64 32, !5, i64 40, !16, i64 72, !6, i64 80, !6, i64 84}
!49 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !13, i64 0}
!50 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !13, i64 0}
!51 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !49, i64 0, !50, i64 8, !38, i64 16}
!52 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !48, i64 0, !6, i64 88, !6, i64 92, !51, i64 96}
!53 = !{!52, !6, i64 92}
!54 = !{!48, !14, i64 0}
!55 = !{!48, !14, i64 8}
!56 = !{!48, !6, i64 28}
!57 = !{!"branch_weights", !"expected", i32 7631680, i32 2139851968}
!58 = !{!48, !6, i64 80}
!59 = distinct !{!59, !63}
!60 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !13, i64 0}
!61 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !14, i64 0, !14, i64 8, !5, i64 16, !60, i64 48, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59}
!62 = !{!61, !14, i64 0}
!63 = !{!"llvm.loop.mustprogress"}
!64 = distinct !{null}
!65 = !{!"_ZTSN6google8protobuf8internal11SerialArena11CleanupNodeE", !13, i64 0, !13, i64 8}
!66 = !{!65, !13, i64 0}
!67 = !{!65, !13, i64 8}
end_hunk_1
