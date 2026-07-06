inline.NumInlined: 3953
inline.NumDeleted: 1054
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZN6google8protobuf16RepeatedPtrFieldINS0_15DescriptorProtoEED2Ev:bb.a
  unreachable
}

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_PNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_15DescriptorProtoEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_15DescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %i.d = add i64 %i.a, 128
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.prefetch.p0(ptr %i.e, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_15DescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.f = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 176)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_15DescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.g = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.f, %bb.a ], [ %i.g, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf15DescriptorProtoC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(176) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(176) %1)
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_19EnumDescriptorProtoEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_19EnumDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_19EnumDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 96)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_19EnumDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.e = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf19EnumDescriptorProtoC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_22ServiceDescriptorProtoEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_22ServiceDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_22ServiceDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 56)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_22ServiceDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.e = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf22ServiceDescriptorProtoC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(56) %1)
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf5Arena13CopyConstructINS0_20FieldDescriptorProtoEEEPvPS1_PKv(ptr noundef %0, ptr noundef %1) #7 comdat align 2 {
_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_20FieldDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 64
  %i.c = inttoptr i64 %i.b to ptr
  tail call void @llvm.prefetch.p0(ptr %i.c, i32 0, i32 3, i32 1)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_20FieldDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.d = tail call noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168) %0, i64 noundef 96)
  br label %bb.c

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8PrefetchIL_ZZNS0_5Arena13CopyConstructINS0_20FieldDescriptorProtoEEEPvPS3_PKvE13kPrefetchOptsES5_S5_EEvPKT1_.exit
  %i.e = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  tail call void @_ZN6google8protobuf20FieldDescriptorProtoC1EPNS0_5ArenaERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.0, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(96) %1)
  ret ptr %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !836

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #26
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !17
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !17
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #23
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !837
  %i.ag = load i64, ptr %1, align 8, !tbaa !840
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !98

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !867 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !868 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !98

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !869      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !98

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !870
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !870
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !868
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !870
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !869
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !868
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !869
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !870
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !872
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !870
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !56
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !17
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

declare ptr @_ZNK6google8protobuf8internal15TaggedStringPtr9ForceCopyEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.c = and i64 %i.b, 1                          ; 2 uses
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.a, null
  %i.e = zext i1 %.not.i to i32
  %.pre13 = add i64 %i.b, -1
  %.pre14 = inttoptr i64 %.pre13 to ptr
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.b, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !874
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.b, %bb.c
  %.pre-phi15 = phi ptr [ %.pre14, %bb.b ], [ %i.g, %bb.c ]
  %i.j = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pre-phi15, i64 8
  %i.l = select i1 %i.d, ptr %0, ptr %i.k         ; 2 uses
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %i.n = zext nneg i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !24
  %.pre16 = ptrtoint ptr %.pre to i64             ; 2 uses
  %.pre18 = and i64 %.pre16, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %.pre-phi19 = phi i64 [ %.pre18, %._crit_edge.loopexit ], [ %i.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %.pre-phi17 = phi i64 [ %.pre16, %._crit_edge.loopexit ], [ %i.b, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %i.o = icmp eq i64 %.pre-phi19, 0
  br i1 %i.o, label %bb.g, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit ] ; 3 uses
  %i.p = add nuw nsw i64 %indvars.iv, 5           ; 2 uses
  %i.q = icmp samesign ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.p
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 0, i32 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27   ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !113  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.z = load i64, ptr %i.x, align 8, !tbaa !17
  %i.aa = add i64 %i.z, 1
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 32) #25
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPvPNS0_5ArenaE.exit: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !876

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit: ; preds = %._crit_edge
  %i.ab = add nsw i64 %.pre-phi17, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !877
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 3
  %i.ag = add nsw i64 %i.af, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase8CapacityEv.exit, %._crit_edge
  ret void
}

declare void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf19FileDescriptorProto5Impl_D2Ev(ptr noundef nonnull align 8 dead_on_return(180) dereferenceable(180) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7DestroyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !17
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 2
  %i.n = add nsw i64 %i.m, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #23
  br label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit

_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit:   ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i32, ptr %i.o, align 8, !tbaa !56
  %i.q = and i32 %i.p, 1
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit1, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !17
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 2
  %i.x = add nsw i64 %i.w, 8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.x) #23
  br label %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit1

_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit1:  ; preds = %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24
  %.not.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i2, label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiED2Ev.exit1
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13DestroyProtosEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINS0_20FieldDescriptorProtoEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
end_hunk_0
