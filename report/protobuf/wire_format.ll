inline.NumInlined: 2614
inline.NumDeleted: 870
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0EES8_S8_S8_T_":bb.a
  %i.h = zext nneg i8 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.0714, i64 1
  br label %bb.c

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit: ; preds = %bb.b
  %i.j = zext i8 %i.f to i32
  %i.k = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714, i32 noundef %i.j) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = icmp eq ptr %i.l, null
  br i1 %i.n, label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit.thread", label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit
  %.0.i11 = phi ptr [ %i.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread ], [ %i.l, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ] ; 3 uses
  %.sink.i10 = phi i64 [ %i.h, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread ], [ %i.m, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ] ; 2 uses
  %i.o = trunc i64 %.sink.i10 to i32              ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !126  ; 2 uses
  %i.q = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.p)
  %i.r = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88) %i.q, i32 noundef %i.o)
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %2, align 8, !tbaa !123    ; 7 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.u = load i32, ptr %i.s, align 4, !tbaa !31
  %i.v = and i32 %i.u, 1
  %i.w = icmp eq i32 %i.v, 0                      ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162  ; 4 uses
  br i1 %i.w, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !21
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i: ; preds = %bb.e, %bb.d
  %.0.v.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.s, %bb.d ]
  %i.ac = phi i32 [ %i.ab, %bb.e ], [ 2, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ae = icmp eq i32 %i.y, %i.ac
  %i.af = add nsw i32 %i.y, 1                     ; 3 uses
  br i1 %i.ae, label %bb.f, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i, !prof !47

bb.f:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef %i.t, i1 noundef zeroext %i.w, i32 noundef %i.y, i32 noundef %i.af)
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !21
  %.pre38.i.i = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i: ; preds = %bb.f, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i
  %i.ah = phi i32 [ %.pre38.i.i, %bb.f ], [ %i.y, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ]
  %.pn.i.i = phi ptr [ %i.ag, %bb.f ], [ %.0.v.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ] ; 2 uses
  %.0.i.i = phi i1 [ false, %bb.f ], [ %i.w, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i ]
  %.029.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  store i32 %i.af, ptr %i.x, align 4, !tbaa !162
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %.029.i.i, i64 %i.ai
  store i32 %i.o, ptr %i.aj, align 4, !tbaa !3
  %i.ak = load i32, ptr %i.x, align 4, !tbaa !162
  %i.al = icmp eq i32 %i.af, %i.ak
  tail call void @llvm.assume(i1 %i.al)
  br i1 %.0.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i
  %i.am = load ptr, ptr %i.ad, align 8
  br label %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit.i

_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit.i: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i, %bb.g
  %.sink23 = phi ptr [ %i.am, %bb.g ], [ %i.s, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i ]
  %i.an = icmp eq ptr %.pn.i.i, %.sink23
  tail call void @llvm.assume(i1 %i.an)
  br label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit"

bb.h:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !131
  %sext = shl i64 %.sink.i10, 32
  %i.aq = ashr exact i64 %sext, 32
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !127
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.at = tail call noundef ptr @_ZNK6google8protobuf10Reflection20MutableUnknownFieldsEPNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.ar, ptr noundef %i.as)
  tail call void @_ZN6google8protobuf15UnknownFieldSet9AddVarintEim(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i32 noundef %i.ap, i64 noundef %i.aq)
  br label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit"

"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit": ; preds = %bb.h, %_ZN6google8protobuf13RepeatedFieldIiE12AddWithArenaEPNS0_5ArenaEi.exit.i
  %i.au = icmp ult ptr %.0.i11, %1
  br i1 %i.au, label %bb.b, label %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit.thread"

"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit.thread": ; preds = %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit", %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit ], [ %.0.i11, %"_ZZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEENK3$_0clEi.exit" ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

declare noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !350

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !21
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #25
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !351
  %i.ag = load i64, ptr %1, align 8, !tbaa !354
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !380 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !381 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !382      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !383
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !383
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !381
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !383
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !382
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !381
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !382
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !383
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !385
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !383
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !31
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !21
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

declare noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !350

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !21
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #25
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !351
  %i.ae = load i64, ptr %1, align 8, !tbaa !354
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !380 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !381 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !382      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !383
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !383
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !381
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !383
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !382
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !381
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !383
  store ptr %i.au, ptr %i.w, align 8, !tbaa !385
  store ptr %i.w, ptr %i.at, align 8, !tbaa !383
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !31
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread, !prof !350

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !21
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #25
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !351
  %i.ag = load i64, ptr %1, align 8, !tbaa !354
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !380 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !381 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !382      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !383
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !383
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !381
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !383
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !382
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !381
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !382
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !383
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !385
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !383
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !31
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread, !prof !350

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !21
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #25
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !351
  %i.ae = load i64, ptr %1, align 8, !tbaa !354
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !380 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !381 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !382      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !383
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !383
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !381
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !383
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !382
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !381
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !383
  store ptr %i.au, ptr %i.w, align 8, !tbaa !385
  store ptr %i.w, ptr %i.at, align 8, !tbaa !383
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !31
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !21
  ret void
}

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIfE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIfE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit, label %.thread, !prof !350

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIfLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !21
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !21
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #25
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !351
  %i.ag = load i64, ptr %1, align 8, !tbaa !354
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !380 ; 5 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = sub nuw nsw i64 59, %i.al                  ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !381 ; 3 uses
  %6 = zext i8 %i.am to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !382      ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %8, align 8, !tbaa !383
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !383
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !381
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !383
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %7, align 8, !tbaa !382
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !381
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !382
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !383
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !385
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !383
  br label %_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIfE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !31
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIdE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIdE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit, label %.thread, !prof !350

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
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIdLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !21
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #25
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !351
  %i.ae = load i64, ptr %1, align 8, !tbaa !354
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !380 ; 5 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = sub nuw nsw i64 59, %i.aj                  ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !381 ; 3 uses
  %6 = zext i8 %i.ak to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !382      ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %8, align 8, !tbaa !383
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !383
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !381
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !383
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !382
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !381
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !383
  store ptr %i.au, ptr %i.w, align 8, !tbaa !385
  store ptr %i.w, ptr %i.at, align 8, !tbaa !383
  br label %_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIdE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !31
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 8                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread, !prof !350

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
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #31
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.m = add nuw nsw i64 %i.i, 15
  %i.n = and i64 %i.m, 4294967288
  %i.o = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.o, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !21
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 8                      ; 5 uses
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #25
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !351
  %i.ad = load i64, ptr %1, align 8, !tbaa !354
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !380 ; 5 uses
  %i.ah = icmp ugt i64 %i.z, 15
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %5 = sub nuw nsw i64 59, %i.ai                  ; 2 uses
  %i.aj = load i8, ptr %i.ag, align 8, !tbaa !381 ; 3 uses
  %6 = zext i8 %i.aj to i64                       ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %5, %6
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.ak = lshr i64 %i.z, 3                        ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !382      ; 2 uses
  %i.al = icmp ugt i8 %i.aj, 1
  br i1 %i.al, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i8 %i.aj, 1
  br i1 %i.am, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %8, align 8, !tbaa !383
  store ptr %i.an, ptr %i.w, align 8, !tbaa !383
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %6, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %8, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !381
  %i.ao = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ak, %i.ao
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.ap = phi i64 [ %i.ao, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.ap, 3      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.z, %.idx24.i.i.i.i
  %i.ar = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.ar, i1 false), !tbaa !383
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %7, align 8, !tbaa !382
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ag, align 8, !tbaa !381
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %9 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %10 = load ptr, ptr %9, align 8, !tbaa !382
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %5 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !383
  store ptr %i.au, ptr %i.w, align 8, !tbaa !385
  store ptr %i.w, ptr %i.at, align 8, !tbaa !383
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !31
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { cold }
attributes #28 = { cold nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 8}
!8 = !{!"_ZTSN6google8protobuf8internal27UnknownFieldSetFieldSkipperE", !9, i64 0, !10, i64 8}
!9 = !{!"_ZTSN6google8protobuf8internal12FieldSkipperE"}
!10 = !{!"p1 _ZTSN6google8protobuf15UnknownFieldSetE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !14, i64 0, !14, i64 8, !15, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !16, i64 36, !16, i64 37, !16, i64 38, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !17, i64 64, !18, i64 72}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !11, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !11, i64 0}
!18 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !11, i64 0}
!19 = !{!13, !14, i64 8}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!13, !4, i64 52}
!25 = !{ptr @_ZN6google8protobuf8internal10WireFormat11SkipMessageEPNS0_2io16CodedInputStreamEPNS0_15UnknownFieldSetE}
!26 = !{!13, !4, i64 32}
!27 = !{!13, !4, i64 56}
!28 = !{!29, !4, i64 4}
!29 = !{!"_ZTSN6google8protobuf8internal6SooRepILm16EEE", !30, i64 0, !4, i64 4, !5, i64 8}
!30 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj1EEE", !4, i64 0}
!31 = !{!30, !4, i64 0}
!32 = !{!33, !14, i64 0}
!33 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !14, i64 0, !14, i64 8, !5, i64 16, !34, i64 48, !16, i64 56, !16, i64 57, !16, i64 58, !16, i64 59}
!34 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !11, i64 0}
!35 = !{!36, !4, i64 4}
!36 = !{!"_ZTSN6google8protobuf12UnknownFieldE", !4, i64 0, !4, i64 4, !5, i64 8}
!37 = !{!36, !4, i64 0}
!38 = !{!"branch_weights", i32 1, i32 1999}
!39 = !{!"branch_weights", i32 0, i32 1}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!44, !14, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !23, i64 8, !5, i64 16}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!46 = !{!44, !23, i64 8}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = distinct !{!48, !41}
!49 = distinct !{!49, !41}
!50 = distinct !{!50, !41}
!51 = distinct !{!51, !41}
!52 = !{!13, !17, i64 64}
!53 = !{!54, !60, i64 40}
!54 = !{!"_ZTSN6google8protobuf10DescriptorE", !55, i64 0, !16, i64 1, !16, i64 1, !5, i64 1, !5, i64 2, !56, i64 4, !4, i64 8, !57, i64 16, !58, i64 24, !59, i64 32, !60, i64 40, !61, i64 48, !61, i64 56, !62, i64 64, !63, i64 72, !59, i64 80, !64, i64 88, !65, i64 96, !62, i64 104, !66, i64 112, !67, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!55 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!56 = !{!"short", !5, i64 0}
!57 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !14, i64 0}
!58 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !11, i64 0}
!59 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !11, i64 0}
!60 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !11, i64 0}
!61 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !11, i64 0}
!62 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !11, i64 0}
!63 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !11, i64 0}
!64 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !11, i64 0}
!65 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !11, i64 0}
!66 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !11, i64 0}
!67 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0}
!68 = !{!"any p2 pointer", !11, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!45, !14, i64 0}
!72 = distinct !{!72, !41}
!73 = !{!13, !15, i64 16}
!74 = !{!13, !4, i64 24}
!75 = !{!13, !4, i64 40}
!76 = !{!13, !4, i64 44}
!77 = !{!13, !4, i64 48}
!78 = !{ptr @_ZN6google8protobuf8internal10WireFormat9SkipFieldEPNS0_2io16CodedInputStreamEjPNS0_15UnknownFieldSetE}
!79 = !{!80, !5, i64 2}
!80 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !55, i64 0, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !16, i64 3, !16, i64 3, !5, i64 3, !4, i64 4, !57, i64 8, !58, i64 16, !81, i64 24, !59, i64 32, !5, i64 40, !5, i64 48, !82, i64 56, !61, i64 64, !61, i64 72, !5, i64 80}
!81 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !11, i64 0}
!82 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !11, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"_ZTSN6google8protobuf8internal14WireFormatLite8WireTypeE", !5, i64 0}
!85 = distinct !{!85, !41}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41}
!93 = distinct !{!93, !41}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41}
!98 = !{!57, !14, i64 0}
!99 = !{!13, !18, i64 72}
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSN6google8protobuf8internal10WireFormat16MessageSetParserE", !102, i64 0, !59, i64 8, !103, i64 16}
!102 = !{!"p1 _ZTSN6google8protobuf7MessageE", !11, i64 0}
!103 = !{!"p1 _ZTSN6google8protobuf10ReflectionE", !11, i64 0}
!104 = !{!101, !59, i64 8}
!105 = !{!101, !103, i64 16}
!106 = !{!107, !4, i64 92}
!107 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !108, i64 0, !4, i64 88, !4, i64 92, !109, i64 96}
!108 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !14, i64 0, !14, i64 8, !14, i64 16, !4, i64 24, !4, i64 28, !15, i64 32, !5, i64 40, !23, i64 72, !4, i64 80, !4, i64 84}
!109 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !17, i64 0, !18, i64 8}
!110 = !{!108, !14, i64 0}
!111 = !{!108, !14, i64 8}
!112 = !{!108, !4, i64 28}
!113 = !{!"branch_weights", !"expected", i32 7631680, i32 2139851968}
!114 = !{!108, !4, i64 80}
!115 = !{!109, !17, i64 0}
!116 = !{!107, !4, i64 88}
!117 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!118 = !{!119, !23, i64 0}
!119 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !23, i64 0}
!120 = !{!121, !122, i64 0}
!121 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !122, i64 0}
!122 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !11, i64 0}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0", !125, i64 0, !62, i64 8, !103, i64 16, !102, i64 24, !122, i64 32}
!125 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIiEE", !11, i64 0}
!126 = !{!124, !62, i64 8}
end_hunk_0
