inline.NumInlined: 2625
inline.NumDeleted: 1367
begin_hunk_0_@_ZN6hermes5regex5RegexINS0_16UTF16RegexTraitsEED2Ev:bb.a
  %i.v = load <2 x ptr>, ptr %i.r, align 8, !tbaa !137, !noalias !173
  store <2 x ptr> %i.v, ptr %1, align 16, !tbaa !137
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load <2 x ptr>, ptr %i.s, align 8, !tbaa !176, !noalias !173
  store <2 x ptr> %i.x, ptr %i.w, align 16, !tbaa !176
  %i.y = load <2 x ptr>, ptr %i.t, align 8, !tbaa !137, !noalias !177
  store <2 x ptr> %i.y, ptr %2, align 16, !tbaa !137
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load <2 x ptr>, ptr %i.u, align 8, !tbaa !176, !noalias !177
  store <2 x ptr> %i.aa, ptr %i.z, align 16, !tbaa !176
  call void @_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !180 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !181 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = icmp ult ptr %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i1, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i1:                                    ; preds = %bb.d, %.lr.ph.i.i.i1
  %.06.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i1 ], [ %i.ae, %bb.d ] ; 3 uses
  %i.ai = load ptr, ptr %.06.i.i.i, align 8, !tbaa !137
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef 512) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.ak = icmp ult ptr %.06.i.i.i, %i.af
  br i1 %i.ak, label %.lr.ph.i.i.i1, label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !182

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i1
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !136
  br label %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.d
  %i.al = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.ab, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load i64, ptr %i.am, align 8, !tbaa !135
  %i.ao = shl i64 %i.an, 3
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #21
  br label %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit

_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvh11SmallVectorIDsLj5EEEPN6hermes5regex11BackRefNodeEESaIS8_EED2Ev.exit, %_ZNSt11_Deque_baseIN4llvh11SmallVectorIDsLj5EEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !183 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !184 ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.ax, %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.aq, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit ] ; 2 uses
  %i.at = load ptr, ptr %.05.i.i.i4, align 8, !tbaa !185 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !187
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #19, !inline_history !189
  br label %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes5regex4NodeEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i3
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 8 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ax, %i.as
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !190

_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.ap, align 8, !tbaa !183
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit
  %i.ay = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.aq, %_ZNSt5dequeIN4llvh11SmallVectorIDsLj5EEESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !191
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #21
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !192 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !193
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #21
  br label %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit

_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6hermes5regex4NodeESt14default_deleteIS3_EESaIS6_EED2Ev.exit, %bb.f
  %i.bl = load i32, ptr %0, align 8
  %i.bm = and i32 %i.bl, 1
  %.not.i.i.i9 = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i9, label %bb.g, label %_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit

bb.g:                                             ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !194
  call void @_ZdlPv(ptr noundef %i.bo) #19
  br label %_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit

_ZN6hermes5regex16UTF16RegexTraitsD2Ev.exit:      ; preds = %_ZNSt6vectorIPN6hermes5regex4NodeESaIS3_EED2Ev.exit, %bb.g
  ret void
}

declare ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm8JSRegExp20getGroupNameMappingsERNS0_7RuntimeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8, !tbaa !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  %i.b = ptrtoint ptr %1 to i64
  %i.c = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.d = add i64 %i.c, %i.b                       ; 2 uses
  %.not.not7 = icmp eq i64 %i.d, 0
  %.not.not = or i1 %.not.i.i.i.i, %.not.not7
  br i1 %.not.not, label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i64 %i.d, -281474976710656            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.d, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !69
  store i64 %i.e, ptr %i.i, align 8, !tbaa !45
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #19
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.sroa.0.1 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %i.n, %bb.d ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm8JSRegExp20setGroupNameMappingsERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = and i64 %i.d, -4194304
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = icmp eq ptr %i.c, %i.f
  br i1 %i.g, label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit, label %bb.b, !prof !49

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef %2) #19
  br label %_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm9GCPointerINS0_8JSObjectEE3setERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit: ; preds = %bb.a, %bb.b
  %.not.i.i.i.i.i = icmp eq ptr %2, null
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32
  %.sroa.0.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %i.l
  store i32 %.sroa.0.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !3
  ret void
}

declare noalias noundef nonnull ptr @_ZN6hermes13checkedMallocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm8JSRegExp6searchENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEEj(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::CallResult.222") align 8 initializes((64, 65)) %0, ptr nofree readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.hermes::vm::CallResult.222", align 8 ; 20 uses
  %6 = alloca %"class.hermes::vm::CallResult.222", align 8 ; 9 uses
  %7 = alloca %"class.hermes::vm::CallResult.222", align 8 ; 9 uses
  %i.a = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %3) #19 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 4 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 4 uses
  %i.d = zext i32 %4 to i64
  %.sroa.5.12.extract.shift = lshr i64 %i.c, 32   ; 2 uses
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32 ; 2 uses
  %i.e = icmp samesign ult i64 %.sroa.5.12.extract.shift, %i.d
  br i1 %i.e, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit13

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.f, align 8, !tbaa !197
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %0, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.h, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.i, align 4, !tbaa !57
  br label %bb.ay

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit13: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !45
  %i.j = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.k = inttoptr i64 %i.j to ptr                 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.m = load i8, ptr %i.l, align 4
  %i.n = lshr i8 %i.m, 2
  %i.o = and i8 %i.n, 8
  %spec.select = zext nneg i8 %i.o to i32         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 10 uses
  store i8 1, ptr %i.p, align 8, !tbaa !197
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store i32 0, ptr %i.r, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 4, ptr %i.s, align 4, !tbaa !57
  %.sroa.5.8.extract.trunc = trunc i64 %i.c to i32 ; 3 uses
  %i.t = icmp slt i32 %.sroa.5.8.extract.trunc, 0
  br i1 %i.t, label %bb.b, label %bb.r

bb.b:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit13
  %i.u = or disjoint i32 %spec.select, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !22
  %i.z = zext i32 %i.y to i64
  %i.aa = and i32 %.sroa.5.8.extract.trunc, 1073741824
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !45
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr               ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = icmp ugt i32 %i.ad, 150994943
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !133

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !201
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.ad, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

bb.h:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %i.aj, align 8, !tbaa !45
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !201
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h
  %.0.i.sink.i = phi ptr [ %i.b, %bb.b ], [ %i.ag, %bb.d ], [ %i.ah, %bb.f ], [ %i.ai, %bb.g ], [ %i.an, %bb.h ]
  %i.ao = and i64 %i.c, 1073741823
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.ao
  call void @_ZN6hermes2vm13performSearchIcNS_5regex16ASCIIRegexTraitsEEENS0_10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEERNS0_7RuntimeENS5_8ArrayRefIhEEPKT_jjNS2_9constants13MatchFlagTypeE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.222") align 8 %6, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %i.w, i64 %i.z, ptr noundef %i.ap, i32 noundef %.sroa.5.12.extract.trunc, i32 noundef %4, i32 noundef %i.u)
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !197, !range !26, !noundef !27
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i8, ptr %i.p, align 8, !tbaa !197, !range !26, !noundef !27
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  br i1 %i.au, label %bb.j, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.q
  br i1 %i.aw, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.av) #19
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.p, align 8, !tbaa !197
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit

bb.l:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6) ; 0 uses
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit

bb.n:                                             ; preds = %bb.l
  store ptr %i.q, ptr %5, align 8, !tbaa !54
  store i32 0, ptr %i.r, align 8, !tbaa !56
  store i32 4, ptr %i.s, align 4, !tbaa !57
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !56
  %.not.i.i.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6) ; 0 uses
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  store i8 1, ptr %i.p, align 8, !tbaa !197
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit: ; preds = %bb.i, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i, %bb.m, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i
  %i.bb = load i8, ptr %i.aq, align 8, !tbaa !197, !range !26, !noundef !27
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.p, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit

bb.p:                                             ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit
  %i.bd = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.bd) #19
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit: ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ah

bb.r:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !22
  %i.bk = zext i32 %i.bj to i64
  %.not.i20 = icmp samesign ult i32 %.sroa.5.8.extract.trunc, 1073741824
  br i1 %.not.i20, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.copyload.i.i.i.i21 = load i64, ptr %i.b, align 8, !tbaa !45
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i.i21, 281474976710655
  %i.bm = inttoptr i64 %i.bl to ptr               ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, 150994943
  br i1 %i.bo, label %bb.t, label %bb.u, !prof !133

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !204
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.u:                                             ; preds = %bb.s
  %.mask.i.i.i.i.i.i.i.i.i22 = and i32 %i.bn, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i22, label %bb.x [
    i32 117440512, label %bb.v
    i32 50331648, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.w:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

bb.x:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.0.0.copyload.i.i.i2.i24 = load i64, ptr %i.bt, align 8, !tbaa !45
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i2.i24, 281474976710655
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !204
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit: ; preds = %bb.r, %bb.t, %bb.v, %bb.w, %bb.x
  %.0.i.sink.i23 = phi ptr [ %i.b, %bb.r ], [ %i.bq, %bb.t ], [ %i.br, %bb.v ], [ %i.bs, %bb.w ], [ %i.bx, %bb.x ]
  %i.by = and i64 %i.c, 1073741823
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i23, i64 %i.by
  call void @_ZN6hermes2vm13performSearchIDsNS_5regex16UTF16RegexTraitsEEENS0_10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEERNS0_7RuntimeENS5_8ArrayRefIhEEPKT_jjNS2_9constants13MatchFlagTypeE(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.222") align 8 %7, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %i.bh, i64 %i.bk, ptr noundef %i.bz, i32 noundef %.sroa.5.12.extract.trunc, i32 noundef %4, i32 noundef %spec.select)
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !197, !range !26, !noundef !27
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = load i8, ptr %i.p, align 8, !tbaa !197, !range !26, !noundef !27
  %i.ce = trunc nuw i8 %i.cd to i1                ; 2 uses
  br i1 %i.cc, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit
  br i1 %i.ce, label %bb.z, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit28

bb.z:                                             ; preds = %bb.y
  %i.cf = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.q
  br i1 %i.cg, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i25, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef %i.cf) #19
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i25

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i25: ; preds = %bb.aa, %bb.z
  store i8 0, ptr %i.p, align 8, !tbaa !197
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit28

bb.ab:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit
  br i1 %i.ce, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ch = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %7) ; 0 uses
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit28

bb.ad:                                            ; preds = %bb.ab
  store ptr %i.q, ptr %5, align 8, !tbaa !54
  store i32 0, ptr %i.r, align 8, !tbaa !56
  store i32 4, ptr %i.s, align 4, !tbaa !57
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !56
  %.not.i.i.i.i.i.i26 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i26, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i27, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %7) ; 0 uses
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i27

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i27: ; preds = %bb.ae, %bb.ad
  store i8 1, ptr %i.p, align 8, !tbaa !197
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit28

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit28: ; preds = %bb.y, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit.i.i.i.i25, %bb.ac, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEC2EOS6_.exit.i.i.i.i27
  %i.cl = load i8, ptr %i.ca, align 8, !tbaa !197, !range !26, !noundef !27
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.af, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit29

bb.af:                                            ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit28
  %i.cn = load ptr, ptr %7, align 8, !tbaa !54    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit29, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.cn) #19
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit29

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit29: ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEaSEOSA_.exit28, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit29, %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit
  %i.cq = load i8, ptr %i.p, align 8, !tbaa !207, !range !26, !noundef !27
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %bb.ai, label %bb.aj, !prof !133

bb.ai:                                            ; preds = %bb.ah
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.cs, align 8, !tbaa !197
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit35

bb.aj:                                            ; preds = %bb.ah
  %i.ct = load i32, ptr %i.r, align 8, !tbaa !56  ; 6 uses
  %.not.i30 = icmp eq i32 %i.ct, 0
  br i1 %.not.i30, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %8, align 8, !tbaa !197
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %9, ptr %0, align 8, !tbaa !54
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cu, align 8, !tbaa !56
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.cv, align 4, !tbaa !57
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit.thread72

bb.al:                                            ; preds = %bb.aj
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !45
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 552
  store i64 %.sroa.0.0.copyload.i, ptr %10, align 8, !tbaa !164
  %.sroa.0.0.copyload.i32 = load i64, ptr %1, align 8, !tbaa !45
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i64 %.sroa.0.0.copyload.i32, ptr %11, align 8, !tbaa !164
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 760 ; 4 uses
  %i.cw = zext i32 %i.ct to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 768 ; 3 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !56 ; 4 uses
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.cy, %i.ct
  br i1 %.not.i.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.da = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.db = load ptr, ptr %12, align 8, !tbaa !54   ; 2 uses
  %.not31.i.i = icmp eq i32 %i.ct, 1
  br i1 %.not31.i.i, label %bb.ao, label %bb.an, !prof !133

bb.an:                                            ; preds = %bb.am
  %.idx.i.i = mul nuw nsw i64 %i.cw, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.db, ptr align 4 %i.da, i64 %.idx.i.i, i1 false)
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEaSERKS6_.exit

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.db, ptr noundef nonnull align 4 dereferenceable(9) %i.da, i64 9, i1 false), !tbaa.struct !209
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEaSERKS6_.exit

bb.ap:                                            ; preds = %bb.al
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 772
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !57
  %i.de = icmp ult i32 %i.dd, %i.ct
  br i1 %i.de, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.cx, align 8, !tbaa !56
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 776
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.df, i64 noundef %i.cw, i64 noundef 12) #19
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i

bb.ar:                                            ; preds = %bb.ap
  %.not28.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not28.i.i, label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dg = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.dh = load ptr, ptr %12, align 8, !tbaa !54   ; 2 uses
  %.not33.i.i = icmp eq i32 %i.cy, 1
  br i1 %.not33.i.i, label %bb.au, label %bb.at, !prof !133

bb.at:                                            ; preds = %bb.as
  %.idx32.i.i = mul nuw nsw i64 %i.cz, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dh, ptr align 4 %i.dg, i64 %.idx32.i.i, i1 false)
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.dh, ptr noundef nonnull align 4 dereferenceable(9) %i.dg, i64 9, i1 false), !tbaa.struct !209
  br label %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i

_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i: ; preds = %bb.au, %bb.at, %bb.ar, %bb.aq
  %.022.i.i = phi i64 [ 0, %bb.aq ], [ 0, %bb.ar ], [ %i.cz, %bb.at ], [ 1, %bb.au ] ; 4 uses
  %i.di = load i32, ptr %i.r, align 8, !tbaa !56
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %.022.i.i, %i.dj
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEaSERKS6_.exit, label %bb.av

bb.av:                                            ; preds = %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i
  %i.dk = load ptr, ptr %5, align 8, !tbaa !54
  %.idx35.i.i = mul nuw nsw i64 %.022.i.i, 12
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.idx35.i.i
  %i.dm = load ptr, ptr %12, align 8, !tbaa !54
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dm, i64 %.022.i.i
  %.idx3436.i.i = sub nsw i64 %i.dj, %.022.i.i
  %gepdiff.i.i = mul nsw i64 %.idx3436.i.i, 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 4 %i.dl, i64 %gepdiff.i.i, i1 false)
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEaSERKS6_.exit

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEaSERKS6_.exit: ; preds = %bb.av, %_ZSt4copyIPKN6hermes8OptValueINS0_2vm16RegExpMatchRangeEEEPS4_ET0_T_S9_S8_.exit30.i.i, %bb.ao, %bb.an
  store i32 %i.ct, ptr %i.cx, align 8, !tbaa !56
  %.pre = load i8, ptr %i.p, align 8, !tbaa !197, !range !26 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.pre, ptr %i.do, align 8, !tbaa !197
  %i.dp = trunc nuw i8 %.pre to i1
  br i1 %i.dp, label %bb.aw, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit35

bb.aw:                                            ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEaSERKS6_.exit
  %.pr = load i32, ptr %i.r, align 8, !tbaa !56
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dq, ptr %0, align 8, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.dr, align 8, !tbaa !56
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.ds, align 4, !tbaa !57
  %.not.i.i.i.i.i34 = icmp eq i32 %.pr, 0
  br i1 %.not.i.i.i.i.i34, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit.thread72, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit: ; preds = %bb.aw
  %i.dt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %5) ; 0 uses
  %.pre59 = load i8, ptr %i.p, align 8, !tbaa !197, !range !26
  %i.du = trunc nuw i8 %.pre59 to i1
  br i1 %i.du, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit.thread72, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit35

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit.thread72: ; preds = %bb.ak, %bb.aw, %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit
  %i.dv = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.q
  br i1 %i.dw, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit35, label %bb.ax

bb.ax:                                            ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit.thread72
  call void @free(ptr noundef %i.dv) #19
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit35

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit35: ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EEaSERKS6_.exit, %bb.ai, %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit, %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2EOSA_.exit.thread72, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EED2Ev.exit35, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit
  ret void
}

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13performSearchIcNS_5regex16ASCIIRegexTraitsEEENS0_10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEERNS0_7RuntimeENS5_8ArrayRefIhEEPKT_jjNS2_9constants13MatchFlagTypeE(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::CallResult.222") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i64 %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"class.std::vector.350", align 8   ; 9 uses
  %9 = alloca %"class.hermes::StackOverflowGuard", align 8 ; 3 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.llvh::SmallVector", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9480
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !45
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !45
  %i.b = mul i64 %.sroa.2.0.copyload.i, 5
  store i64 %.sroa.0.0.copyload.i, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.b, ptr %i.c, align 8
  %i.d = call noundef i32 @_ZN6hermes5regex18searchWithBytecodeEN4llvh8ArrayRefIhEEPKcjjPSt6vectorINS0_13CapturedRangeESaIS7_EENS0_9constants13MatchFlagTypeENS_18StackOverflowGuardE(ptr %2, i64 %3, ptr noundef %4, i32 noundef %6, i32 noundef %5, ptr noundef nonnull %8, i32 noundef %7, ptr noundef nonnull byval(%"class.hermes::StackOverflowGuard") align 8 %9) #19
  switch i32 %i.d, label %bb.b [
    i32 2, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit
    i32 1, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit
  ]

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 33, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !64
  store ptr @.str.35, ptr %10, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.h, align 8, !tbaa !65
  %i.i = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %10) #19 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.j, align 8, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.k

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.k, align 8, !tbaa !197
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.n, align 4, !tbaa !57
  br label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !210  ; 2 uses
  %i.q = load ptr, ptr %8, align 8, !tbaa !213    ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.v, ptr %11, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  store i32 0, ptr %i.w, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  store i32 4, ptr %i.x, align 4, !tbaa !57
  %i.y = icmp ugt i64 %i.u, 4
  br i1 %i.y, label %bb.c, label %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.v, i64 noundef %i.u, i64 noundef 12) #19
  br label %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit

_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit: ; preds = %bb.b, %bb.c
  %.not30 = icmp eq ptr %i.p, %i.q
  br i1 %.not30, label %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit.._crit_edge_crit_edge, label %.lr.ph

_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit.._crit_edge_crit_edge: ; preds = %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit.._crit_edge_crit_edge
  %i.z = phi i32 [ %.pre, %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit.._crit_edge_crit_edge ], [ %i.ba, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.aa, align 8, !tbaa !197
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ab, ptr %0, align 8, !tbaa !54
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 4, ptr %i.ad, align 4, !tbaa !57
  %.not.i.i.i.i.i21 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i.i.i21, label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %11) ; 0 uses
  br label %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22

_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22: ; preds = %._crit_edge, %bb.d
  %i.af = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit23, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22
  call void @free(ptr noundef %i.af) #19
  br label %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit23

_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit23: ; preds = %_ZN6hermes2vm10CallResultIN4llvh11SmallVectorINS_8OptValueINS0_16RegExpMatchRangeEEELj4EEELNS0_6detail20CallResultSpecializeE0EEC2IS7_vEEOT_.exit22, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.k

.lr.ph:                                           ; preds = %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit, %bb.j
  %.029 = phi i64 [ %i.bb, %bb.j ], [ 0, %_ZN4llvh15SmallVectorImplIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEEE7reserveEm.exit ] ; 2 uses
  %i.ah = load ptr, ptr %8, align 8, !tbaa !213
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.029 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !214 ; 3 uses
  %.not = icmp eq i32 %i.aj, -1
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ak = load i32, ptr %i.w, align 8, !tbaa !56  ; 2 uses
  %i.al = load i32, ptr %i.x, align 4, !tbaa !57
  %.not.i = icmp ult i32 %i.ak, %i.al
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit, label %bb.g, !prof !49

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 12) #19
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !56
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit

_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit: ; preds = %bb.f, %bb.g
  %i.am = phi i32 [ %.pre.i, %bb.g ], [ %i.ak, %bb.f ]
  %i.an = load ptr, ptr %11, align 8, !tbaa !54
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [12 x i8], ptr %i.an, i64 %i.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ap, i8 0, i64 9, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !216
  %i.as = sub i32 %i.ar, %i.aj
  %.sroa.4.0.insert.ext = zext i32 %i.as to i64
  %.sroa.4.0.insert.shift = shl nuw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.aj to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  %i.at = load i32, ptr %i.w, align 8, !tbaa !56  ; 2 uses
  %i.au = load i32, ptr %i.x, align 4, !tbaa !57
  %.not.i24 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i24, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit26, label %bb.i, !prof !49

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 12) #19
  %.pre.i25 = load i32, ptr %i.w, align 8, !tbaa !56
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit26

_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit26: ; preds = %bb.h, %bb.i
  %i.av = phi i32 [ %.pre.i25, %bb.i ], [ %i.at, %bb.h ]
  %i.aw = load ptr, ptr %11, align 8, !tbaa !54
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.aw, i64 %i.ax ; 2 uses
  store i64 %.sroa.0.0.insert.insert, ptr %i.ay, align 1
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i8 1, ptr %.sroa.428.0..sroa_idx, align 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit26, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELb1EE9push_backERKS5_.exit
  %i.az = load i32, ptr %i.w, align 8, !tbaa !56
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.w, align 8, !tbaa !56
  %i.bb = add nuw i64 %.029, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !217

bb.k:                                             ; preds = %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit23, %_ZN4llvh11SmallVectorIN6hermes8OptValueINS1_2vm16RegExpMatchRangeEEELj4EED2Ev.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %i.bc = load ptr, ptr %8, align 8, !tbaa !213   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !218
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #21
  br label %_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EED2Ev.exit

_ZNSt6vectorIN6hermes5regex13CapturedRangeESaIS2_EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret void
end_hunk_0
