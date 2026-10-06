Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/micro_string?download=true
inline.NumInlined: 255
inline.NumDeleted: 85
begin_hunk_0_@_ZN6google8protobuf8internal11MicroString7SetImplESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaEm:bb.a
  %i.bc = add nuw nsw i64 %.sroa.speculated15.i, 8
  %i.bd = and i64 %i.bc, 504
  %i.be = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %3, i64 noundef %i.bd)
  br label %_ZN6google8protobuf8internal11MicroString16AllocateMicroRepEmPNS0_5ArenaE.exit

_ZN6google8protobuf8internal11MicroString16AllocateMicroRepEmPNS0_5ArenaE.exit: ; preds = %bb.s, %bb.t
  %.019.i = phi i64 [ %.sroa.speculated.i, %bb.s ], [ %.sroa.speculated15.i, %bb.t ]
  %.0.i = phi ptr [ %i.az, %bb.s ], [ %i.be, %bb.t ] ; 4 uses
  %i.bf = trunc nuw i64 %.019.i to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !11
  %i.bh = trunc nuw i64 %1 to i8
  store i8 %i.bh, ptr %.0.i, align 1, !tbaa !20
  %i.bi = ptrtoint ptr %.0.i to i64
  %i.bj = add i64 %i.bi, 2
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %0, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr align 1 %2, i64 %1, i1 false)
  br label %.thread51

bb.u:                                             ; preds = %bb.q
  %i.bm = add i64 %1, 23
  %i.bn = and i64 %i.bm, -8                       ; 3 uses
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #11
  br label %_ZN6google8protobuf8internal11MicroString16AllocateOwnedRepEmPNS0_5ArenaE.exit

bb.w:                                             ; preds = %bb.u
  %i.bp = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %3, i64 noundef %i.bn)
  br label %_ZN6google8protobuf8internal11MicroString16AllocateOwnedRepEmPNS0_5ArenaE.exit

_ZN6google8protobuf8internal11MicroString16AllocateOwnedRepEmPNS0_5ArenaE.exit: ; preds = %bb.v, %bb.w
  %.016.i = phi ptr [ %i.bo, %bb.v ], [ %i.bp, %bb.w ] ; 5 uses
  %i.bq = ptrtoint ptr %.016.i to i64
  %i.br = or i64 %i.bq, 1
  %i.bs = inttoptr i64 %i.br to ptr
  store ptr %i.bs, ptr %0, align 8, !tbaa !9
  %i.bt = trunc i64 %i.bn to i32
  %i.bu = add i32 %i.bt, -16
  %i.bv = getelementptr inbounds nuw i8, ptr %.016.i, i64 12
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %.016.i, i64 16 ; 2 uses
  store ptr %i.bw, ptr %.016.i, align 8, !tbaa !23
  %i.bx = trunc i64 %1 to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 1 %2, i64 %1, i1 false)
  br label %.thread51

.thread51:                                        ; preds = %bb.l, %bb.j, %.thread53, %bb.c, %bb.e, %bb.o, %bb.p, %_ZN6google8protobuf8internal11MicroString16AllocateOwnedRepEmPNS0_5ArenaE.exit, %_ZN6google8protobuf8internal11MicroString16AllocateMicroRepEmPNS0_5ArenaE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal11MicroString16AllocateMicroRepEmPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = add i64 %1, 9
  %i.c = and i64 %i.b, -8                         ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #11
  %i.e = add i64 %i.c, -2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.e, i64 254)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.c, -2
  %.sroa.speculated15 = tail call i64 @llvm.umin.i64(i64 %i.f, i64 254) ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.speculated15, 8
  %i.h = and i64 %i.g, 504
  %i.i = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %2, i64 noundef %i.h)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.019 = phi i64 [ %.sroa.speculated, %bb.b ], [ %.sroa.speculated15, %bb.c ]
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ]  ; 4 uses
  %i.j = trunc nuw i64 %.019 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !11
  %i.l = trunc i64 %1 to i8
  store i8 %i.l, ptr %.0, align 1, !tbaa !20
  %i.m = ptrtoint ptr %.0 to i64
  %i.n = add i64 %i.m, 2
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %0, align 8, !tbaa !9
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal11MicroString16AllocateOwnedRepEmPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %i.b = add i64 %1, 23
  %i.c = and i64 %i.b, -8                         ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %2, i64 noundef %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.016 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 6 uses
  %i.f = ptrtoint ptr %.016 to i64
  %i.g = or i64 %i.f, 1
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr %0, align 8, !tbaa !9
  %i.i = trunc i64 %i.c to i32
  %i.j = add i32 %i.i, -16
  %i.k = getelementptr inbounds nuw i8, ptr %.016, i64 12
  store i32 %i.j, ptr %i.k, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 16
  store ptr %i.l, ptr %.016, align 8, !tbaa !23
  %i.m = trunc i64 %1 to i32
  %i.n = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !21
  ret ptr %.016
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal11MicroString17AllocateStringRepEPNS0_5ArenaE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #11
  br label %_ZN6google8protobuf5Arena6CreateINS0_8internal11MicroString9StringRepEJEEEPT_PS1_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef 48, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINS1_11MicroString9StringRepEEEvPv)
  br label %_ZN6google8protobuf5Arena6CreateINS0_8internal11MicroString9StringRepEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateINS0_8internal11MicroString9StringRepEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.sink8 = phi ptr [ %i.b, %bb.b ], [ %i.c, %bb.c ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sink8, i8 0, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.sink8, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.sink8, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !25
  store i8 0, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %.sink8, i64 12
  store i32 2, ptr %i.f, align 4, !tbaa !14
  %i.g = ptrtoint ptr %.sink8 to i64
  %i.h = or i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %0, align 8, !tbaa !9
  ret ptr %.sink8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal11MicroString8SetAliasESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, i64 %1, ptr %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %2, ptr %i.e, align 8, !tbaa !23
  %i.i = trunc i64 %1 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !21
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i64 %1, %4
  br i1 %.not, label %.thread23, label %bb.e

.thread:                                          ; preds = %bb.a
  %.not22 = icmp ugt i64 %1, %4
  br i1 %.not22, label %.thread23, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  tail call void @_ZN6google8protobuf8internal11MicroString7SetImplESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr %2, ptr noundef %3, i64 noundef %4)
  br label %bb.h

.thread23:                                        ; preds = %bb.d, %.thread
  %i.k = icmp eq ptr %3, null
  br i1 %i.k, label %.split14, label %_ZN6google8protobuf5Arena6CreateINS0_8internal11MicroString8LargeRepEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena6CreateINS0_8internal11MicroString8LargeRepEJEEEPT_PS1_DpOT0_.exit: ; preds = %.thread23
  %i.l = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %3, i64 noundef 16)
  br label %bb.g

.split14:                                         ; preds = %.thread23
  %i.m = and i64 %i.b, 3
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, label %bb.f

bb.f:                                             ; preds = %.split14
  tail call void @_ZN6google8protobuf8internal11MicroString11DestroySlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

_ZN6google8protobuf8internal11MicroString7DestroyEv.exit: ; preds = %.split14, %bb.f
  %i.o = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #11
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, %_ZN6google8protobuf5Arena6CreateINS0_8internal11MicroString8LargeRepEJEEEPT_PS1_DpOT0_.exit
  %.sink = phi ptr [ %i.o, %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit ], [ %i.l, %_ZN6google8protobuf5Arena6CreateINS0_8internal11MicroString8LargeRepEJEEEPT_PS1_DpOT0_.exit ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sink, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !14
  %i.q = ptrtoint ptr %.sink to i64
  %i.r = or i64 %i.q, 1
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %0, align 8, !tbaa !9
  store ptr %2, ptr %.sink, align 8, !tbaa !23
  %i.t = trunc i64 %1 to i32
  %i.u = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  store i32 %i.t, ptr %i.u, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal11MicroString9SetStringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %3, i64 32)
  %.not = icmp ugt i64 %i.b, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !18
  tail call void @_ZN6google8protobuf8internal11MicroString7SetImplESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaEm(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %i.b, ptr %i.c, ptr noundef %2, i64 noundef %3)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i64 %i.e, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %.not12 = icmp eq i32 %i.j, 2
  br i1 %.not12, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = icmp eq ptr %2, null
  br i1 %i.k, label %.split10, label %_ZN6google8protobuf8internal11MicroString17AllocateStringRepEPNS0_5ArenaE.exit

_ZN6google8protobuf8internal11MicroString17AllocateStringRepEPNS0_5ArenaE.exit: ; preds = %bb.e
  %i.l = tail call noundef ptr @_ZN6google8protobuf5Arena26AllocateAlignedWithCleanupEmmPFvPvE(ptr noundef nonnull align 8 dereferenceable(168) %2, i64 noundef 48, i64 noundef 8, ptr noundef nonnull @_ZN6google8protobuf8internal7cleanup21arena_destruct_objectINS1_11MicroString9StringRepEEEvPv) ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 2, ptr %i.o, align 4, !tbaa !14
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = or i64 %i.p, 1
  %i.r = inttoptr i64 %i.q to ptr
  store ptr %i.r, ptr %0, align 8, !tbaa !9
  br label %bb.g

.split10:                                         ; preds = %bb.e
  %i.s = and i64 %i.e, 3
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, label %bb.f

bb.f:                                             ; preds = %.split10
  tail call void @_ZN6google8protobuf8internal11MicroString11DestroySlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

_ZN6google8protobuf8internal11MicroString7DestroyEv.exit: ; preds = %.split10, %bb.f
  %i.u = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #11 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 2, ptr %i.x, align 4, !tbaa !14
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = or i64 %i.y, 1
  %i.aa = inttoptr i64 %i.z to ptr
  store ptr %i.aa, ptr %0, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, %_ZN6google8protobuf8internal11MicroString17AllocateStringRepEPNS0_5ArenaE.exit
  %i.ab = phi ptr [ %i.w, %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit ], [ %i.n, %_ZN6google8protobuf8internal11MicroString17AllocateStringRepEPNS0_5ArenaE.exit ], [ %.pre, %._crit_edge ] ; 6 uses
  %.0 = phi ptr [ %i.u, %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit ], [ %i.l, %_ZN6google8protobuf8internal11MicroString17AllocateStringRepEPNS0_5ArenaE.exit ], [ %i.h, %._crit_edge ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 4 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  %i.af = load ptr, ptr %1, align 8, !tbaa !18    ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ah = icmp eq ptr %i.af, %i.ag                ; 2 uses
  %.pre19 = load i64, ptr %i.a, align 8, !tbaa !22 ; 5 uses
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.ah, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ai = icmp ult i64 %.pre19, 16
  tail call void @llvm.assume(i1 %i.ai)
  %.not21.i = icmp eq ptr %1, %i.ac
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !24

bb.i:                                             ; preds = %bb.h
  switch i64 %.pre19, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !19
  store i8 %i.aj, ptr %i.ab, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.af, i64 %.pre19, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !22
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !18
  store i64 %.pre19, ptr %i.ao, align 8, !tbaa !22
  %i.ap = load i64, ptr %i.ag, align 8, !tbaa !19
  store i64 %i.ap, ptr %i.ad, align 8, !tbaa !19
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aq = load i64, ptr %i.ad, align 8, !tbaa !19
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 24
  store i64 %.pre19, ptr %i.ar, align 8, !tbaa !22
  %i.as = load i64, ptr %i.ag, align 8, !tbaa !19
  store i64 %i.as, ptr %i.ad, align 8, !tbaa !19
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %1, align 8, !tbaa !18
  store i64 %i.aq, ptr %i.ag, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ag, ptr %1, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.at = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ab, %bb.l ], [ %i.ag, %bb.m ], [ %i.af, %bb.h ]
  store i64 0, ptr %i.a, align 8, !tbaa !22
  store i8 0, ptr %i.at, align 1, !tbaa !19
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !22
  store ptr %i.au, ptr %.0, align 8, !tbaa !23
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal11MicroString10SetUnownedERKNS2_14UnownedPayloadEPNS0_5ArenaE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readnone captures(address_is_null) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 3
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal11MicroString11DestroySlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit

end_hunk_0
