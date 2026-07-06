inline.NumInlined: 8096
inline.NumDeleted: 3435
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6google8protobuf13RepeatedFieldIiE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_:bb.a
bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 4 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !813
  br label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %.0.i.i.i.i.i.i7, align 4, !tbaa !3, !alias.scope !808, !noalias !811
  store i32 %i.bv, ptr %i.bp, align 4, !tbaa !3, !alias.scope !811, !noalias !808
  br label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !817, !noalias !814
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !814, !noalias !817
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !31, !alias.scope !814, !noalias !817
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !31, !alias.scope !817, !noalias !814
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !31, !alias.scope !817, !noalias !814
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !814, !noalias !817
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !814, !noalias !817
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !31, !alias.scope !817, !noalias !814
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !819

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !31
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !820
  %i.ag = load i64, ptr %1, align 8, !tbaa !823
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !849 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !850 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !851      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !852
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !850
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !852
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !854
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !104
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !31
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 1, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !859)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !861
  br label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !253, !alias.scope !856, !noalias !859
  store i64 %i.al, ptr %i.af, align 8, !tbaa !253, !alias.scope !859, !noalias !856
  br label %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 1, %_ZN6google8protobuf13RepeatedFieldIlE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !867
  br label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i64, ptr %.0.i.i.i.i.i.i7, align 8, !tbaa !253, !alias.scope !862, !noalias !865
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !253, !alias.scope !865, !noalias !862
  br label %_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIlE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !871, !noalias !868
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !868, !noalias !871
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !31, !alias.scope !868, !noalias !871
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !31, !alias.scope !871, !noalias !868
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !31, !alias.scope !871, !noalias !868
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !868, !noalias !871
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !868, !noalias !871
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !31, !alias.scope !871, !noalias !868
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !819

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !31
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !820
  %i.ae = load i64, ptr %1, align 8, !tbaa !823
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !849 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !850 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !851      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !852
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !850
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !852
  store ptr %i.au, ptr %i.w, align 8, !tbaa !854
  store ptr %i.w, ptr %i.at, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !104
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 2, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 4 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !878
  br label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %.0.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !873, !noalias !876
  store i32 %i.al, ptr %i.af, align 4, !tbaa !3, !alias.scope !876, !noalias !873
  br label %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 2, %_ZN6google8protobuf13RepeatedFieldIjE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 4 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !884
  br label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %.0.i.i.i.i.i.i7, align 4, !tbaa !3, !alias.scope !879, !noalias !882
  store i32 %i.bv, ptr %i.bp, align 4, !tbaa !3, !alias.scope !882, !noalias !879
  br label %_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIjE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIjE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !888, !noalias !885
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !885, !noalias !888
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !31, !alias.scope !885, !noalias !888
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !31, !alias.scope !888, !noalias !885
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !31, !alias.scope !888, !noalias !885
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !885, !noalias !888
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !885, !noalias !888
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !31, !alias.scope !888, !noalias !885
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread, !prof !819

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !31
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !820
  %i.ag = load i64, ptr %1, align 8, !tbaa !823
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !849 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !850 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !851      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !852
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !850
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !852
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !854
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !104
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 1, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !895
  br label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !253, !alias.scope !890, !noalias !893
  store i64 %i.al, ptr %i.af, align 8, !tbaa !253, !alias.scope !893, !noalias !890
  br label %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 1, %_ZN6google8protobuf13RepeatedFieldImE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !901
  br label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldImE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i64, ptr %.0.i.i.i.i.i.i7, align 8, !tbaa !253, !alias.scope !896, !noalias !899
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !253, !alias.scope !899, !noalias !896
  br label %_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldImE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldImE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldImE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !905, !noalias !902
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !902, !noalias !905
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !31, !alias.scope !902, !noalias !905
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !31, !alias.scope !905, !noalias !902
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !31, !alias.scope !905, !noalias !902
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !902, !noalias !905
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !902, !noalias !905
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !31, !alias.scope !905, !noalias !902
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread, !prof !819

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !31
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !820
  %i.ae = load i64, ptr %1, align 8, !tbaa !823
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !849 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !850 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !851      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !852
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !850
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !852
  store ptr %i.au, ptr %i.w, align 8, !tbaa !854
  store ptr %i.w, ptr %i.at, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !104
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 2, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 4 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !912
  br label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load float, ptr %.0.i.i.i.i.i, align 4, !tbaa !259, !alias.scope !907, !noalias !910
  store float %i.al, ptr %i.af, align 4, !tbaa !259, !alias.scope !910, !noalias !907
  br label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 2, %_ZN6google8protobuf13RepeatedFieldIfE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 4 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !918
  br label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load float, ptr %.0.i.i.i.i.i.i7, align 4, !tbaa !259, !alias.scope !913, !noalias !916
  store float %i.bv, ptr %i.bp, align 4, !tbaa !259, !alias.scope !916, !noalias !913
  br label %_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIfE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !922, !noalias !919
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !919, !noalias !922
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !31, !alias.scope !919, !noalias !922
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !31, !alias.scope !922, !noalias !919
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !31, !alias.scope !922, !noalias !919
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !919, !noalias !922
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !919, !noalias !922
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !31, !alias.scope !922, !noalias !919
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread, !prof !819

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !31
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !31   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #35
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !820
  %i.ag = load i64, ptr %1, align 8, !tbaa !823
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !849 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !850 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !851      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !852
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !850
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !852
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !854
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !104
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !104
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 1, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !929
  br label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load double, ptr %.0.i.i.i.i.i, align 8, !tbaa !261, !alias.scope !924, !noalias !927
  store double %i.al, ptr %i.af, align 8, !tbaa !261, !alias.scope !927, !noalias !924
  br label %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 1, %_ZN6google8protobuf13RepeatedFieldIdE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %.0.i.i.i.i.i.i7, i64 %.idx.i.i.i.i.i, i1 false), !alias.scope !935
  br label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIdE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load double, ptr %.0.i.i.i.i.i.i7, align 8, !tbaa !261, !alias.scope !930, !noalias !933
  store double %i.bv, ptr %i.bp, align 8, !tbaa !261, !alias.scope !933, !noalias !930
  br label %_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIdE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIdE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !939, !noalias !936
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !936, !noalias !939
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !31, !alias.scope !936, !noalias !939
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !31, !alias.scope !939, !noalias !936
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !31, !alias.scope !939, !noalias !936
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !936, !noalias !939
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !936, !noalias !939
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !31, !alias.scope !939, !noalias !936
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread, !prof !819

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !31
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !820
  %i.ae = load i64, ptr %1, align 8, !tbaa !823
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !849 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !850 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !851      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !852
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !850
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !852
  store ptr %i.au, ptr %i.w, align 8, !tbaa !854
  store ptr %i.w, ptr %i.at, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !104
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 8, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %.0.i.i.i.i.i, i64 %i.aj, i1 false), !alias.scope !946
  br label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i8, ptr %.0.i.i.i.i.i, align 1, !tbaa !263, !range !84, !alias.scope !941, !noalias !944, !noundef !50
  store i8 %i.al, ptr %i.af, align 1, !tbaa !263, !alias.scope !944, !noalias !941
  br label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
  %i.at = and i32 %i.as, -2                       ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !36 ; 3 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i64 %i.ax, -1
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bc = inttoptr i64 %i.ax to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i: ; preds = %bb.o, %bb.n, %bb.l
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.bb, %bb.n ], [ %i.bc, %bb.o ]
  %i.bd = and i32 %i.as, 1                        ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i: ; preds = %bb.p, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 8, %_ZN6google8protobuf13RepeatedFieldIbE8GetArenaEv.exit.i.i.i ]
  %i.bj = icmp sgt i32 %i.ar, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i, !prof !38

bb.q:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.be, i32 noundef 0, i32 noundef %i.ar)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !104
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !256
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bk = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i: ; preds = %bb.q, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.bd, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.q ]
  %i.bl = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i ], [ %i.bk, %bb.q ]
  %i.bm = icmp eq i32 %.pre-phi.i.i, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  %.0.v.i.i.i.i.i5 = select i1 %i.bm, ptr %0, ptr %i.bo
  %.0.i.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i5, i64 8
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !256
  %i.bp = getelementptr inbounds i8, ptr %.0.i.i.i.i.i6, i64 %i.bl ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %.0.v.i.i.i.i.i.i = select i1 %i.ap, ptr %2, ptr %i.br
  %.0.i.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !950)
  %i.bs = icmp sgt i32 %i.ar, 1
  br i1 %i.bs, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i
  %i.bt = zext nneg i32 %i.ar to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %.0.i.i.i.i.i.i7, i64 %i.bt, i1 false), !alias.scope !952
  br label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit

bb.s:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi.exit.i.i
  %i.bu = icmp eq i32 %i.ar, 1
  br i1 %i.bu, label %bb.t, label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit

bb.t:                                             ; preds = %bb.s
  %i.bv = load i8, ptr %.0.i.i.i.i.i.i7, align 1, !tbaa !263, !range !84, !alias.scope !947, !noalias !950, !noundef !50
  store i8 %i.bv, ptr %i.bp, align 1, !tbaa !263, !alias.scope !950, !noalias !947
  br label %_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIbE8CopyFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit, %bb.k, %bb.r, %bb.s, %bb.t
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE15UnsafeArenaSwapEPS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !956, !noalias !953
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !953, !noalias !956
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !31, !alias.scope !953, !noalias !956
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !31, !alias.scope !956, !noalias !953
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !31, !alias.scope !956, !noalias !953
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !953, !noalias !956
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !953, !noalias !956
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !31, !alias.scope !956, !noalias !953
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 8                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread, !prof !819

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
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.m = add nuw nsw i64 %i.i, 15
  %i.n = and i64 %i.m, 4294967288
  %i.o = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.o, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !31
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 8                      ; 5 uses
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #35
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !820
  %i.ad = load i64, ptr %1, align 8, !tbaa !823
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !849 ; 5 uses
  %i.ah = icmp ugt i64 %i.z, 15
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %5 = sub nuw nsw i64 59, %i.ai                  ; 2 uses
  %i.aj = load i8, ptr %i.ag, align 8, !tbaa !850 ; 3 uses
  %6 = zext i8 %i.aj to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.ak = lshr i64 %i.z, 3                        ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !851      ; 2 uses
  %i.al = icmp ugt i8 %i.aj, 1
  br i1 %i.al, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i8 %i.aj, 1
  br i1 %i.am, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %8, align 8, !tbaa !852
  store ptr %i.an, ptr %i.w, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !850
  %i.ao = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ak, %i.ao
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.ap = phi i64 [ %i.ao, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.ap, 3      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.z, %.idx24.i.i.i.i
  %i.ar = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.ar, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ag, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !852
  store ptr %i.au, ptr %i.w, align 8, !tbaa !854
  store ptr %i.w, ptr %i.at, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !104
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE4SwapEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::NoDestructor.331", align 8 ; 11 uses
  %3 = alloca %"class.google::protobuf::RepeatedField.36", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.c = and i32 %i.b, -2                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !104    ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit ]
  %.0.i.i.i.i35 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i13 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i35, %.0.i.i.i.i13
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !104
  %i.ai = load i32, ptr %1, align 4, !tbaa !104
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %i.am = load <8 x i8>, ptr %i.al, align 4, !tbaa !31, !alias.scope !961, !noalias !958
  %i.an = load <8 x i8>, ptr %i.ak, align 4, !tbaa !31, !alias.scope !958, !noalias !961
  store <8 x i8> %i.am, ptr %i.ak, align 4, !tbaa !31, !alias.scope !958, !noalias !961
  store <8 x i8> %i.an, ptr %i.al, align 4, !tbaa !31, !alias.scope !961, !noalias !958
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = load <4 x i8>, ptr %i.ao, align 4, !tbaa !31, !alias.scope !961, !noalias !958
  %i.aq = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !958, !noalias !961
  store <4 x i8> %i.ap, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !958, !noalias !961
  store <4 x i8> %i.aq, ptr %i.ao, align 4, !tbaa !31, !alias.scope !961, !noalias !958
  br label %bb.aa

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit14
  %.not = icmp eq ptr %.0.i.i.i.i13, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = ptrtoint ptr %.0.i.i.i.i13 to i64
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !36
  store i32 16, ptr %2, align 8, !tbaa !104
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 0, ptr %i.at, align 4, !tbaa !463
  call void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE20SwapFallbackWithTempEPNS0_5ArenaERS5_S7_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i35, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i13, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.au = load i32, ptr %2, align 8, !tbaa !104
  %i.av = and i32 %i.au, 1
  %i.aw = icmp eq i32 %i.av, 0                    ; 2 uses
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !463 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.k, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.0.i.i.i = select i1 %i.aw, ptr %i.az, ptr %i.bb ; 2 uses
  %i.bc = zext nneg i32 %i.ax to i64
  %.idx.i = shl nuw nsw i64 %i.bc, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %.idx.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i, %bb.k
  %.05.i.i.i = phi ptr [ %i.bi, %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i ], [ %.0.i.i.i, %bb.k ] ; 3 uses
  %i.be = load i8, ptr %.05.i.i.i, align 1, !tbaa !31
  %i.bf = trunc i8 %i.be to i1
  br i1 %i.bf, label %bb.l, label %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i.i.i)
          to label %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #37
  unreachable

_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, %i.bd
  br i1 %.not.i.i.i, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !465

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i: ; preds = %_ZZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_ENKUlRS6_E_clES8_.exit.i.i.i, %bb.j
  br i1 %i.aw, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7DestroyEPKS4_S7_.exit.i
  %i.bj = load i32, ptr %2, align 8, !tbaa !104
  %i.bk = and i32 %i.bj, -2                       ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr inbounds i8, ptr %2, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36 ; 3 uses
  %i.bp = trunc i64 %i.bo to i1
  br i1 %i.bp, label %bb.p, label %bb.q, !prof !38

bb.p:                                             ; preds = %bb.o
  %i.bq = add nsw i64 %i.bo, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.bt = inttoptr i64 %i.bo to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi ptr [ %i.bt, %bb.q ], [ %i.bs, %bb.p ]
  %i.bu = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %i.bu, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.thread.i: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8GetArenaEv.exit.i, %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !31 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !31
  %i.by = sext i32 %i.bx to i64
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CopyFromERKS5_:bb.a
  %i.am = sext i32 %.pre14.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7ReserveEi.exit.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.ag, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.j ]
  %i.an = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.i.i.i ], [ %i.am, %bb.j ]
  %i.ao = icmp eq i32 %.pre-phi.i, 0
  %i.ap = load ptr, ptr %i.e, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.0.i.i.i.i = select i1 %i.ao, ptr %i.e, ptr %i.aq
  store i32 %i.u, ptr %i.h, align 4, !tbaa !463
  %i.ar = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i, i64 %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.0.i.i.i.i.i = select i1 %i.s, ptr %i.as, ptr %i.au ; 2 uses
  %i.av = sext i32 %i.u to i64
  %i.aw = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i.i, i64 %i.av
  %i.ax = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN4absl12lts_202505124CordEPS2_ET0_T_S7_S6_(ptr noundef nonnull %.0.i.i.i.i.i, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ar) ; 0 uses
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE9MergeFromERKS5_.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE9MergeFromERKS5_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE7ReserveEi.exit.i, %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE5ClearEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE15UnsafeArenaSwapEPS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !104
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !104
  %i.g = load i32, ptr %1, align 4, !tbaa !104
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !31, !alias.scope !966, !noalias !963
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !31, !alias.scope !963, !noalias !966
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !31, !alias.scope !963, !noalias !966
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !31, !alias.scope !966, !noalias !963
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !31, !alias.scope !966, !noalias !963
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !963, !noalias !966
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !31, !alias.scope !963, !noalias !966
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !31, !alias.scope !966, !noalias !963
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741815
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit, label %.thread, !prof !819

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 0, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 16                 ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #38
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIN4absl12lts_202505124CordELi16EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !31
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %_ZN4absl12lts_202505124CordD2Ev.exit.preheader, label %.loopexit

_ZN4absl12lts_202505124CordD2Ev.exit.preheader:   ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 16 ; 3 uses
  %i.r = zext nneg i32 %3 to i64
  %.idx = shl nuw nsw i64 %i.r, 4                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.0.i.i.i = select i1 %2, ptr %i.t, ptr %i.v    ; 2 uses
  %i.w = add nsw i64 %.idx, -16                   ; 2 uses
  %i.x = lshr exact i64 %i.w, 4
  %i.y = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit, label %_ZN4absl12lts_202505124CordD2Ev.exit.prol

_ZN4absl12lts_202505124CordD2Ev.exit.prol:        ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.preheader, %_ZN4absl12lts_202505124CordD2Ev.exit.prol
  %.039.prol = phi ptr [ %i.aa, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ], [ %.0.i.i.i, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ] ; 3 uses
  %.02638.prol = phi ptr [ %i.z, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ], [ %i.q, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ], [ 0, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02638.prol, ptr noundef nonnull align 8 dereferenceable(16) %.039.prol, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.039.prol, i8 0, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.02638.prol, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.039.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit, label %_ZN4absl12lts_202505124CordD2Ev.exit.prol, !llvm.loop !968

_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit: ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.prol, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader
  %.039.unr = phi ptr [ %.0.i.i.i, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ], [ %i.aa, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ]
  %.02638.unr = phi ptr [ %i.q, %_ZN4absl12lts_202505124CordD2Ev.exit.preheader ], [ %i.z, %_ZN4absl12lts_202505124CordD2Ev.exit.prol ]
  %i.ab = icmp ult i64 %i.w, 48
  br i1 %i.ab, label %.loopexit, label %_ZN4absl12lts_202505124CordD2Ev.exit

_ZN4absl12lts_202505124CordD2Ev.exit:             ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit, %_ZN4absl12lts_202505124CordD2Ev.exit
  %.039 = phi ptr [ %i.aj, %_ZN4absl12lts_202505124CordD2Ev.exit ], [ %.039.unr, %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit ] ; 6 uses
  %.02638 = phi ptr [ %i.ai, %_ZN4absl12lts_202505124CordD2Ev.exit ], [ %.02638.unr, %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.02638, ptr noundef nonnull align 8 dereferenceable(16) %.039, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.039, i8 0, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.02638, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.039, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.02638, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.039, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.02638, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.039, i64 48 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !322
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.02638, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.039, i64 64
  %.not.3 = icmp eq ptr %i.ai, %i.s
  br i1 %.not.3, label %.loopexit, label %_ZN4absl12lts_202505124CordD2Ev.exit, !llvm.loop !969

.loopexit:                                        ; preds = %_ZN4absl12lts_202505124CordD2Ev.exit.prol.loopexit, %_ZN4absl12lts_202505124CordD2Ev.exit, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31 ; 8 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !31
  %i.an = sext i32 %i.am to i64
  %i.ao = shl nsw i64 %i.an, 4
  %i.ap = add nsw i64 %i.ao, 16                   ; 5 uses
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #35
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !820
  %i.at = load i64, ptr %1, align 8, !tbaa !823
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !849 ; 5 uses
  %i.ax = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 true)
  %5 = sub nuw nsw i64 59, %i.ay                  ; 2 uses
  %i.az = load i8, ptr %i.aw, align 8, !tbaa !850 ; 3 uses
  %6 = zext i8 %i.az to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.ba = lshr exact i64 %i.ap, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !851      ; 2 uses
  %i.bb = icmp ugt i8 %i.az, 1
  br i1 %i.bb, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.bc = icmp eq i8 %i.az, 1
  br i1 %i.bc, label %bb.k, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr %8, align 8, !tbaa !852
  store ptr %i.bd, ptr %i.al, align 8, !tbaa !852
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.i
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aw, align 8, !tbaa !850
  %i.be = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ba, %i.be
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.k, %bb.j
  %i.bf = phi i64 [ %i.be, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.k ], [ 0, %bb.j ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.bf, 3      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ap, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bg, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !852
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.al, ptr %7, align 8, !tbaa !851
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 64)
  %i.bh = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.bh, ptr %i.aw, align 8, !tbaa !850
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.l:                                             ; preds = %bb.h
  %9 = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !851
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !852
  store ptr %i.bj, ptr %i.al, align 8, !tbaa !854
  store ptr %i.al, ptr %i.bi, align 8, !tbaa !852
  br label %_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIN4absl12lts_202505124CordEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.l, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.g, %bb.f, %.loopexit
  %i.bk = load i32, ptr %0, align 8, !tbaa !104
  %i.bl = or i32 %i.bk, 1
  store i32 %i.bl, ptr %0, align 8, !tbaa !104
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bm, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN4absl12lts_202505124CordEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.j, %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 6 uses
  %.01215 = phi ptr [ %i.i, %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 6 uses
  %i.a = load i8, ptr %.01215, align 1, !tbaa !31
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not6.i.i.i = icmp ne ptr %i.d, null
  %.not.not.i.i.i = select i1 %i.b, i1 %.not6.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = atomicrmw add ptr %i.e, i32 2 monotonic, align 4 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !31
  store i64 1, ptr %.016, align 8, !tbaa !31
  %i.h = load i64, ptr %.01215, align 8, !tbaa !31
  %.not.i.i.i.i = icmp ult i64 %i.h, 2
  br i1 %.not.i.i.i.i, label %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo18MaybeTrackCordImplERNS1_10InlineDataERKS3_NS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %.016, ptr noundef nonnull align 8 dereferenceable(16) %.01215, i32 noundef 8)
          to label %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.016, ptr noundef nonnull align 8 dereferenceable(16) %.01215, i64 16, i1 false), !tbaa.struct !322
  br label %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit

_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit: ; preds = %bb.d, %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01215, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.i, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !970

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #35 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4absl12lts_202505124CordEEvT_S4_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #40
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.j, %_ZSt10_ConstructIN4absl12lts_202505124CordEJRKS2_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.n

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #37
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZSt8_DestroyIPN4absl12lts_202505124CordEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_202505124CordEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i
  %.05.i = phi ptr [ %i.e, %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.05.i, align 1, !tbaa !31
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_ZN4absl12lts_202505124Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %.05.i)
          to label %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #37
  unreachable

_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.e, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_202505124CordEEEvT_S6_.exit, label %.lr.ph.i, !llvm.loop !971

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4absl12lts_202505124CordEEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN4absl12lts_202505124CordEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase12SwapFallbackINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::NoDestructor.341", align 8 ; 7 uses
  %5 = alloca %"class.google::protobuf::internal::RepeatedPtrFieldBase", align 8 ; 6 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = ptrtoint ptr %3 to i64
  store i64 %i.b, ptr %i.a, align 8, !tbaa !36
  store ptr null, ptr %4, align 8, !tbaa !235
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !258
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 16, ptr %i.d, align 4, !tbaa !502
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.e = load ptr, ptr %5, align 8, !tbaa !235
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase20SwapFallbackWithTempINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPNS0_5ArenaEPS2_SD_RS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = icmp eq ptr %2, %0
  br i1 %i.d, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKS2_PNS0_5ArenaE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.a, align 8, !tbaa !258
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv.exit.i

_ZN6google8protobuf8internal20RepeatedPtrFieldBase5ClearINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv.exit.i: ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !258
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CopyFromINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKS2_PNS0_5ArenaE.exit, label %bb.f

end_hunk_1
