Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegexSerialization?download=true
inline.NumInlined: 2396
inline.NumDeleted: 1188
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEED2Ev:bb.a
bb.c:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !361
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit

_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEEEvT_SA_.exit.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79
  tail call void @_ZdlPv(ptr noundef %i.p) #19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !65, !noalias !362
  store <2 x ptr> %i.v, ptr %1, align 16, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load <2 x ptr>, ptr %i.s, align 8, !tbaa !80, !noalias !362
  store <2 x ptr> %i.x, ptr %i.w, align 16, !tbaa !80
  %i.y = load <2 x ptr>, ptr %i.t, align 8, !tbaa !65, !noalias !363
  store <2 x ptr> %i.y, ptr %2, align 16, !tbaa !65
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load <2 x ptr>, ptr %i.u, align 8, !tbaa !80, !noalias !363
  store <2 x ptr> %i.aa, ptr %i.z, align 16, !tbaa !80
  call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !64  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !82 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i1, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i1:                                    ; preds = %bb.d, %.lr.ph.i.i.i1
  %.06.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i1 ], [ %i.ae, %bb.d ] ; 3 uses
  %i.ai = load ptr, ptr %.06.i.i.i, align 8, !tbaa !65
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef 512) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ak = icmp ult ptr %.06.i.i.i, %i.af
  br i1 %i.ak, label %.lr.ph.i.i.i1, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !0

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i1
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !64
  br label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.d
  %i.al = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.ab, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load i64, ptr %i.am, align 8, !tbaa !63
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #22
  br label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !126 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !127 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.ax, %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.aq, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit ] ; 2 uses
  %i.at = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #19, !inline_history !357
  br label %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i3
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 8 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ax, %i.as
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !358

_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.ap, align 8, !tbaa !126
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit
  %i.ay = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.aq, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !130
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #22
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !131 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !132
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #22
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.f
  %i.bl = load i32, ptr %0, align 8
  %i.bm = and i32 %i.bl, 1
  %.not.i.i.i9 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i9, label %bb.g, label %_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !366
  call void @_ZdlPv(ptr noundef %i.bo) #19
  br label %_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit

_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit:      ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_ZNK6hermes14CompiledRegExp11getBytecodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.f, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes19UniquingRegExpTable12getEntryListEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.36") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !368  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !369    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.99) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not47 = icmp eq ptr %i.b, %i.c
  br i1 %.not47, label %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6hermes16RegExpTableEntryESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6hermes16RegExpTableEntryESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !372
  store ptr %i.j, ptr %i.i, align 8, !tbaa !373
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f ; 2 uses
  store ptr %i.k, ptr %i.h, align 8, !tbaa !374
  %.pre = load ptr, ptr %1, align 8, !tbaa !135
  %.pre36 = load ptr, ptr %i.a, align 8, !tbaa !135
  br label %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN6hermes16RegExpTableEntryESaIS1_EE11_M_allocateEm.exit.i
  %.promoted23 = phi ptr [ null, %bb.c ], [ %i.j, %_ZNSt12_Vector_baseIN6hermes16RegExpTableEntryESaIS1_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.k, %_ZNSt12_Vector_baseIN6hermes16RegExpTableEntryESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.l = phi ptr [ %i.b, %bb.c ], [ %.pre36, %_ZNSt12_Vector_baseIN6hermes16RegExpTableEntryESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.m = phi ptr [ %i.c, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIN6hermes16RegExpTableEntryESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.not26 = icmp eq ptr %i.m, %i.l
  br i1 %.not26, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE7reserveEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit
  store ptr %2, ptr %i.n, align 8
  br label %._crit_edge.a

._crit_edge.a:                                    ; preds = %._crit_edge, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE7reserveEm.exit
  %.lcssa24 = phi ptr [ %i.ao, %._crit_edge ], [ %.promoted23, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE7reserveEm.exit ]
  %.lcssa = phi ptr [ %i.ap, %._crit_edge ], [ %.promoted, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE7reserveEm.exit ]
  store ptr %.lcssa, ptr %i.h, align 8
  store ptr %.lcssa24, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit
  %i.o = phi ptr [ %.promoted23, %.lr.ph ], [ %2, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.028 = phi i32 [ 0, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %.sroa.019.027 = phi ptr [ %i.m, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.p = phi ptr [ %.promoted, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.q = phi ptr [ %.promoted23, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %i.r = load ptr, ptr %.sroa.019.027, align 8, !tbaa !137 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = trunc i64 %i.x to i32
  %.not.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.5.0.insert.ext = shl i64 %i.x, 32
  %.sroa.0.0.insert.ext = zext i32 %.028 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.ext, %.sroa.0.0.insert.ext
  store i64 %.sroa.0.0.insert.insert, ptr %i.o, align 4, !tbaa !8
  br label %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.o to i64
  %i.aa = ptrtoint ptr %i.q to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.g, label %_ZNKSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.o, ptr %i.n, align 8
  store ptr %i.p, ptr %i.h, align 8
  store ptr %i.q, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #23
  unreachable

_ZNKSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #21 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  %.sroa.5.0.insert.ext13 = shl i64 %i.x, 32
  %.sroa.0.0.insert.ext9 = zext i32 %.028 to i64
  %.sroa.0.0.insert.insert11 = or disjoint i64 %.sroa.5.0.insert.ext13, %.sroa.0.0.insert.ext9
  store i64 %.sroa.0.0.insert.insert11, ptr %i.ak, align 4, !tbaa !8
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.h, label %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %i.q, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah
  br label %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.an = phi ptr [ %i.o, %bb.e ], [ %i.ak, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %i.ao = phi ptr [ %i.q, %bb.e ], [ %i.aj, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.ap = phi ptr [ %i.p, %bb.e ], [ %i.am, %_ZNSt6vectorIN6hermes16RegExpTableEntryESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = add i32 %.028, %i.y
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.l
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes19UniquingRegExpTable17getBytecodeBufferEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !135    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %.not12 = icmp eq ptr %i.a, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.09.013 = phi ptr [ %i.a, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.09.013, align 8, !tbaa !137 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.n = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %i.q
  tail call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.r, ptr noundef %i.f, ptr noundef %i.m)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes19UniquingRegExpTable11disassembleERN4llvh11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %.not32 = icmp eq ptr %i.a, %i.c
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit26, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %.not.i = icmp ult ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.h = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %1, i8 noundef zeroext 10) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.c:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.i, ptr %i.d, align 8, !tbaa !23
  store i8 10, ptr %i.e, align 1, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.b, %bb.c
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh11raw_ostreamlsEc.exit26
  %.034 = phi i32 [ %i.bv, %_ZN4llvh11raw_ostreamlsEc.exit26 ], [ 0, %bb.a ] ; 2 uses
  %.sroa.029.033 = phi ptr [ %i.bw, %_ZN4llvh11raw_ostreamlsEc.exit26 ], [ %i.a, %bb.a ] ; 4 uses
  %i.j = zext i32 %.034 to i64
  %i.k = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.j) #19 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.t = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.k, ptr noundef nonnull @.str.2, i64 noundef 3) #19 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.o, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3 ; 2 uses
  store ptr %i.v, ptr %i.n, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %.pre, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %.0.i.i = phi ptr [ %i.t, %bb.d ], [ %i.k, %bb.e ] ; 5 uses
  %i.x = load ptr, ptr %.sroa.029.033, align 8, !tbaa !137 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !56   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.ab, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.aj = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %i.z, i64 noundef %i.ab) #19 ; 2 uses
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i14 = icmp eq i64 %i.ab, 0
  br i1 %.not.i14, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.z, i64 %i.ab, i1 false)
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ab ; 2 uses
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.f, %bb.g, %bb.h
  %i.am = phi ptr [ %.pre36, %bb.f ], [ %i.al, %bb.h ], [ %i.w, %bb.g ] ; 3 uses
  %.0.i15 = phi ptr [ %i.aj, %bb.f ], [ %.0.i.i, %bb.h ], [ %.0.i.i, %bb.g ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i15, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !22
  %.not.i16 = icmp ult ptr %i.am, %i.ao
  br i1 %.not.i16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.ap = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i15, i8 noundef zeroext 47) #19
  br label %_ZN4llvh11raw_ostreamlsEc.exit18

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i15, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !23
  store i8 47, ptr %i.am, align 1, !tbaa !18
  br label %_ZN4llvh11raw_ostreamlsEc.exit18

_ZN4llvh11raw_ostreamlsEc.exit18:                 ; preds = %bb.i, %bb.j
  %.0.i17 = phi ptr [ %i.ap, %bb.i ], [ %.0.i15, %bb.j ] ; 5 uses
  %i.as = load ptr, ptr %.sroa.029.033, align 8, !tbaa !137 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !57 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i17, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i17, i64 24 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23 ; 3 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %i.aw, %i.bd
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit18
  %i.bf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i17, ptr noundef %i.au, i64 noundef %i.aw) #19 ; 2 uses
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.pre38 = load ptr, ptr %.phi.trans.insert37, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit23

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit18
  %.not.i21 = icmp eq i64 %i.aw, 0
  br i1 %.not.i21, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit23, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.au, i64 %i.aw, i1 false)
  %i.bg = load ptr, ptr %i.az, align 8, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aw ; 2 uses
  store ptr %i.bh, ptr %i.az, align 8, !tbaa !23
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit23

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit23:    ; preds = %bb.k, %bb.l, %bb.m
  %i.bi = phi ptr [ %.pre38, %bb.k ], [ %i.bh, %bb.m ], [ %i.ba, %bb.l ] ; 3 uses
  %.0.i22 = phi ptr [ %i.bf, %bb.k ], [ %.0.i17, %bb.m ], [ %.0.i17, %bb.l ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i22, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !22
  %.not.i24 = icmp ult ptr %i.bi, %i.bk
  br i1 %.not.i24, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit23
  %i.bl = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %.0.i22, i8 noundef zeroext 10) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit26

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit23
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i22, i64 24
end_hunk_0
