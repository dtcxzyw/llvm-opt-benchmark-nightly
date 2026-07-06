inline.NumInlined: 784
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14CloneFromOtherEPNS0_5ArenaERKS9_:bb.a
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.f
  br i1 %.not.i.i, label %._crit_edge, label %bb.b, !llvm.loop !76

.lr.ph:                                           ; preds = %bb.b
  %i.j = trunc nuw i64 %indvars.iv.i to i32
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer

._crit_edge:                                      ; preds = %bb.c, %bb.k, %bb.l, %bb.a
  %.0.lcssa = phi ptr [ %i.q, %bb.k ], [ null, %bb.a ], [ %i.q, %bb.l ], [ null, %bb.c ]
  ret ptr %.0.lcssa

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer: ; preds = %.lr.ph51, %.lr.ph
  %.022.ph = phi ptr [ null, %.lr.ph ], [ %i.q, %.lr.ph51 ]
  %.sroa.11.021.ph = phi i32 [ %i.j, %.lr.ph ], [ %.0.i.i49, %.lr.ph51 ]
  %.sroa.014.020.ph = phi ptr [ %i.h, %.lr.ph ], [ %i.ao, %.lr.ph51 ]
  br label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit: ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit
  %.022 = phi ptr [ %i.q, %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit ], [ %.022.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ]
  %.sroa.014.020 = phi ptr [ %i.ah, %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit ], [ %.sroa.014.020.ph, %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 40 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %i.o = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit
  %i.p = call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 72)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !147
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !65   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.020, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.v, ptr %i.a, align 8, !tbaa !101
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.f
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !65
  %i.y = load i64, ptr %i.a, align 8, !tbaa !101
  store i64 %i.y, ptr %i.s, align 8, !tbaa !39
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.f
  %i.z = phi ptr [ %i.x, %.noexc.i.i ], [ %i.s, %bb.f ] ; 2 uses
  switch i64 %i.v, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !39
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !101 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !68
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %i.k, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @_ZN6google8protobuf5ValueC2EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %i.n), !inline_history !148
  br label %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @_ZN6google8protobuf8internal15ThreadSafeArena10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull %i.r, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPv)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @_ZN6google8protobuf5ValueC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.n), !inline_history !149
  br label %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit: ; preds = %bb.i, %bb.j
  store ptr %.022, ptr %i.q, align 8, !tbaa !78
  %i.ah = load ptr, ptr %.sroa.014.020, align 8, !tbaa !78 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i13, label %bb.k, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit

bb.k:                                             ; preds = %_ZN6google8protobuf5Arena20CreateInArenaStorageINS0_5ValueEJRKS3_EEEvPT_PS1_DpOT0_.exit
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !46  ; 2 uses
  %.0.i.i48 = add i32 %.sroa.11.021.ph, 1         ; 2 uses
  %i.aj = icmp ult i32 %.0.i.i48, %i.ai
  br i1 %i.aj, label %.lr.ph51.preheader, label %._crit_edge

.lr.ph51.preheader:                               ; preds = %bb.k
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !32
  br label %.lr.ph51

bb.l:                                             ; preds = %.lr.ph51
  %.0.i.i = add i32 %.0.i.i49, 1                  ; 2 uses
  %i.al = icmp ult i32 %.0.i.i, %i.ai
  br i1 %i.al, label %.lr.ph51, label %._crit_edge, !llvm.loop !80

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %bb.l
  %.0.i.i49 = phi i32 [ %.0.i.i, %bb.l ], [ %.0.i.i48, %.lr.ph51.preheader ] ; 3 uses
  %i.am = zext i32 %.0.i.i49 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !74 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.l, label %_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_5ValueEE14const_iteratorppEv.exit.outer, !llvm.loop !80
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal10KeyMapBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6ResizeEPNS0_5ArenaEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46   ; 4 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %i.a, align 4, !tbaa !46
  %i.d = icmp eq ptr %1, null
  %i.e = zext i32 %2 to i64
  %i.f = shl nuw nsw i64 %i.e, 3                  ; 3 uses
  br i1 %i.d, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit

_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i: ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.f)
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit

_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit: ; preds = %bb.c, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i
  %i.i = phi ptr [ %i.h, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.f, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !32
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !32   ; 8 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !46
  %i.m = icmp eq ptr %1, null                     ; 2 uses
  %i.n = zext i32 %2 to i64
  %i.o = shl nuw nsw i64 %i.n, 3                  ; 3 uses
  br i1 %i.m, label %bb.e, label %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20

bb.e:                                             ; preds = %bb.d
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21

_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20: ; preds = %bb.d
  %i.q = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21

_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21: ; preds = %bb.e, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20
  %i.r = phi ptr [ %i.q, %_ZN6google8protobuf5Arena11CreateArrayIPNS0_8internal8NodeBaseEEEPT_PS1_m.exit.i20 ], [ %i.p, %bb.e ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.o, i1 false)
  store ptr %i.r, ptr %i.k, align 8, !tbaa !32
  %i.s = add i32 %2, -1
  %.not30 = icmp eq i32 %i.b, 0
  br i1 %.not30, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %wide.trip.count = zext i32 %i.b to i64         ; 2 uses
  br label %bb.m

._crit_edge29:                                    ; preds = %._crit_edge, %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21
  %.pre-phi = phi i64 [ 0, %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit21 ], [ %wide.trip.count, %._crit_edge ] ; 3 uses
  %i.u = shl nuw nsw i64 %.pre-phi, 3             ; 3 uses
  br i1 %i.m, label %bb.l, label %bb.f

bb.f:                                             ; preds = %._crit_edge29
  %i.v = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !150
  %i.y = load i64, ptr %1, align 8, !tbaa !153
  %i.z = icmp eq i64 %i.x, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit, !prof !89

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !179 ; 4 uses
  %i.ac = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %3 = trunc nuw nsw i64 %i.ad to i32
  %4 = sub nuw nsw i32 59, %3                     ; 2 uses
  %i.ae = load i8, ptr %i.ab, align 8, !tbaa !180 ; 4 uses
  %5 = zext i8 %i.ae to i32
  %.not.i.i.i.i = icmp samesign ult i32 %4, %5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !181 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h, !prof !89

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp ugt i8 %i.ae, 1
  br i1 %i.ah, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.i, !prof !89

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp eq i8 %i.ae, 1
  br i1 %i.ai, label %bb.j, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !182
  store ptr %i.aj, ptr %i.l, align 8, !tbaa !182
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.h
  %6 = zext i8 %i.ae to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.l, ptr align 8 %i.ag, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ab, align 8, !tbaa !180
  %i.ak = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %.pre-phi, %i.ak
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.j, %bb.i
  %i.al = phi i64 [ %i.ak, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.j ], [ 0, %bb.i ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.al, 3      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.u, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.am, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !182
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.l, ptr %i.af, align 8, !tbaa !181
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.pre-phi, i64 64)
  %i.an = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.an, ptr %i.ab, align 8, !tbaa !180
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.k:                                             ; preds = %bb.g
  %7 = zext nneg i32 %4 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %7 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !182
  store ptr %i.ap, ptr %i.l, align 8, !tbaa !184
  store ptr %i.l, ptr %i.ao, align 8, !tbaa !182
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.l:                                             ; preds = %._crit_edge29
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.u) #26
  br label %_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit

bb.m:                                             ; preds = %.lr.ph28, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !74 ; 2 uses
  %.not25 = icmp eq ptr %i.ar, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge29, label %bb.m, !llvm.loop !186

.lr.ph:                                           ; preds = %bb.m, %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %.01826 = phi ptr [ %i.as, %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit ], [ %i.ar, %bb.m ] ; 5 uses
  %i.as = load ptr, ptr %.01826, align 8, !tbaa !78 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01826, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01826, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !68 ; 14 uses
  %i.ax = icmp ult i64 %i.aw, 9
  br i1 %i.ax, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.lr.ph
  %i.ay = icmp samesign ugt i64 %i.aw, 3
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.0.copyload.i.i.i = load i32, ptr %i.au, align 1
  %i.az = zext i32 %.0.copyload.i.i.i to i64
  %i.ba = shl nuw i64 %i.az, 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.bc, align 1
  %i.bd = zext i32 %.0.copyload.i4.i.i to i64
  %i.be = or disjoint i64 %i.ba, %i.bd
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = load i8, ptr %i.au, align 1, !tbaa !39
  %i.bg = zext i8 %i.bf to i64
  %i.bh = shl nuw nsw i64 %i.bg, 16
  %i.bi = getelementptr i8, ptr %i.au, i64 %i.aw
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !39
  %i.bl = zext i8 %i.bk to i64
  %i.bm = or disjoint i64 %i.bh, %i.bl
  %i.bn = lshr i64 %i.aw, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !39
  %i.bq = zext i8 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 8
  %i.bs = or disjoint i64 %i.bm, %i.br
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.0.i.i = phi i64 [ %i.be, %bb.o ], [ %i.bs, %bb.q ]
  %i.bt = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bu = mul i64 %i.bt, -2543921745674291987
  %i.bv = tail call noundef i64 @llvm.bswap.i64(i64 %i.bu)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.s:                                             ; preds = %.lr.ph
  %i.bw = icmp ult i64 %i.aw, 17
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.0.copyload.i.i.i.i = load i64, ptr %i.au, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.by, align 1
  %i.bz = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ca = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.cb = zext i64 %i.bz to i128
  %i.cc = zext i64 %i.ca to i128
  %i.cd = mul nuw i128 %i.cc, %i.cb               ; 2 uses
  %i.ce = lshr i128 %i.cd, 64
  %i.cf = xor i128 %i.ce, %i.cd
  %i.cg = trunc i128 %i.cf to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.u:                                             ; preds = %bb.s
  %i.ch = icmp ult i64 %i.aw, 33
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.0.copyload.i.i20.i = load i64, ptr %i.au, align 1
  %i.ci = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.cj = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.cj, align 1
  %i.ck = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.cl = zext i64 %i.ci to i128
  %i.cm = zext i64 %i.ck to i128
  %i.cn = mul nuw i128 %i.cm, %i.cl               ; 2 uses
  %i.co = getelementptr i8, ptr %i.au, i64 %i.aw  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.cp, align 1
  %i.cq = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.cr = getelementptr i8, ptr %i.co, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.cr, align 1
  %i.cs = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ct = zext i64 %i.cq to i128
  %i.cu = zext i64 %i.cs to i128
  %i.cv = mul nuw i128 %i.cu, %i.ct               ; 2 uses
  %i.cw = xor i128 %i.cv, %i.cn
  %i.cx = lshr i128 %i.cw, 64
  %i.cy = xor i128 %i.cn, %i.cx
  %i.cz = xor i128 %i.cy, %i.cv
  %i.da = trunc i128 %i.cz to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.w:                                             ; preds = %bb.u
  %.not.i22 = icmp ugt i64 %i.aw, 1024
  br i1 %.not.i22, label %bb.y, label %bb.x, !prof !42

bb.x:                                             ; preds = %bb.w
  %i.db = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %i.au, i64 noundef %i.aw)
  %i.dc = xor i64 %i.db, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.dd = zext i64 %i.dc to i128
  %i.de = mul nuw i128 %i.dd, 15902822328035259629 ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = xor i128 %i.df, %i.de
  %i.dh = trunc i128 %i.dg to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.y:                                             ; preds = %bb.w
  %i.di = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %i.au, i64 noundef %i.aw)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.y
  %.0.i = phi i64 [ %i.di, %bb.y ], [ %i.cg, %bb.t ], [ %i.da, %bb.v ], [ %i.dh, %bb.x ], [ %i.bv, %bb.r ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.p ]
  %i.dj = add i64 %i.aw, 87
  %i.dk = add i64 %i.dj, %.0.i
  %i.dl = xor i64 %i.dk, %i.t
  %i.dm = mul i64 %i.dl, -2543921745674291987
  %i.dn = tail call noundef i64 @llvm.bswap.i64(i64 %i.dm)
  %i.do = xor i64 %i.dn, %i.t
  %i.dp = mul i64 %i.do, -2543921745674291987
  %i.dq = tail call noundef i64 @llvm.bswap.i64(i64 %i.dp)
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = and i32 %i.s, %i.dr
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !74
  store ptr %i.dv, ptr %.01826, align 8, !tbaa !78
  store ptr %.01826, ptr %i.du, align 8, !tbaa !74
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !187

_ZN6google8protobuf8internal14UntypedMapBase11DeleteTableEPNS0_5ArenaEPPNS1_8NodeBaseEj.exit: ; preds = %bb.l, %bb.k, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.f, %_ZN6google8protobuf8internal14UntypedMapBase16CreateEmptyTableEPNS0_5ArenaEj.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #17

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i64 %2, 3
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i32, ptr %1, align 1
end_hunk_0
