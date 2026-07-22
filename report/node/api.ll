inline.NumInlined: 14197
inline.NumDeleted: 4685
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2v825ContainsOnlyOneByteHelper9CheckConsENS_8internal6TaggedINS1_10ConsStringEEE:bb.a

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %select.unfold.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add i64 %i.f, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add i64 %i.n, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp ult i32 %i.z, %i.ad                ; 2 uses
  %. = select i1 %i.ae, i64 %i.g, i64 %i.o
  %.34 = select i1 %i.ae, i64 %i.o, i64 %i.g
  %i.af = call noundef zeroext i1 @_ZN2v825ContainsOnlyOneByteHelper9CheckConsENS_8internal6TaggedINS1_10ConsStringEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.) ; 0 uses
  %i.ag = load i8, ptr %0, align 1, !range !5, !noundef !6
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %select.unfold.backedge, label %.thread25

select.unfold.backedge:                           ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.023.0.be = phi i64 [ %i.o, %bb.j ], [ %i.g, %bb.h ], [ %.34, %bb.i ]
  br label %select.unfold, !llvm.loop !432

bb.j:                                             ; preds = %bb.g
  br i1 %i.v, label %.thread25, label %select.unfold.backedge

.thread25:                                        ; preds = %_ZN2v88internal6String9VisitFlatINS_25ContainsOnlyOneByteHelperEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEi.exit8, %bb.i, %_ZN2v88internal6String9VisitFlatINS_25ContainsOnlyOneByteHelperEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEi.exit, %bb.j
  %.3 = phi i1 [ true, %bb.j ], [ false, %_ZN2v88internal6String9VisitFlatINS_25ContainsOnlyOneByteHelperEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEi.exit ], [ false, %bb.i ], [ false, %_ZN2v88internal6String9VisitFlatINS_25ContainsOnlyOneByteHelperEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEi.exit8 ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal6String9VisitFlatINS_25ContainsOnlyOneByteHelperEEENS0_6TaggedINS0_10ConsStringEEEPT_NS4_IS1_EEiRKNS0_31SharedStringAccessGuardIfNeededE(ptr noundef %0, i64 %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNRSt8optionalIN2v88internal6TaggedINS1_10ConsStringEEEE5valueEv.exit, %bb.a
  %.0 = phi i32 [ %2, %bb.a ], [ %.1, %_ZNRSt8optionalIN2v88internal6TaggedINS1_10ConsStringEEEE5valueEv.exit ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %1, %bb.a ], [ %.sroa.0.1, %_ZNRSt8optionalIN2v88internal6TaggedINS1_10ConsStringEEEE5valueEv.exit ] ; 2 uses
  %i.e = add i64 %.sroa.0.0, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 8 uses
  %i.g = load atomic volatile i64, ptr %i.f acquire, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = and i16 %i.j, 15
  switch i16 %i.k, label %bb.l [
    i16 8, label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
    i16 0, label %bb.c
    i16 9, label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit.loopexit
    i16 1, label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit.loopexit
    i16 10, label %bb.d
    i16 2, label %bb.g
    i16 11, label %bb.k
    i16 3, label %bb.k
    i16 13, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_10ConsStringEEEE5valueEv.exit
    i16 5, label %_ZNRSt8optionalIN2v88internal6TaggedINS1_10ConsStringEEEE5valueEv.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = sext i32 %.0 to i64
  %i.n = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.m
  %i.o = sub i32 %i.d, %2
  tail call void @_ZN2v825ContainsOnlyOneByteHelper18VisitTwoByteStringEPKti(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.n, i32 noundef %i.o)
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = and i16 %i.v, 16
  %.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.r, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #44, !inline_history !151
  br i1 %i.aa, label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %i.r, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef ptr %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #44, !inline_history !151 ; 0 uses
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.g:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = inttoptr i64 %i.ag to ptr               ; 5 uses
  %i.ai = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.aj = add i64 %i.ai, 11
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load atomic volatile i16, ptr %i.ak monotonic, align 2
  %i.am = and i16 %i.al, 16
  %.not.i4 = icmp eq i16 %i.am, 0
  br i1 %.not.i4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.ah, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #44, !inline_history !155
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.at = load ptr, ptr %i.ah, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef ptr %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #44, !inline_history !155
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.i, %bb.j
  %.0.i5 = phi ptr [ %i.as, %bb.i ], [ %i.aw, %bb.j ]
  %i.ax = sext i32 %.0 to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %.0.i5, i64 %i.ax
  %i.az = sub i32 %i.d, %2
  tail call void @_ZN2v825ContainsOnlyOneByteHelper18VisitTwoByteStringEPKti(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %i.ay, i32 noundef %i.az)
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.k:                                             ; preds = %bb.b, %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = lshr i64 %i.bb, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = add nsw i32 %.0, %i.bd
  br label %_ZNRSt8optionalIN2v88internal6TaggedINS1_10ConsStringEEEE5valueEv.exit

bb.l:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68) #45
  unreachable

_ZNRSt8optionalIN2v88internal6TaggedINS1_10ConsStringEEEE5valueEv.exit: ; preds = %bb.b, %bb.b, %bb.k
  %.1 = phi i32 [ %i.be, %bb.k ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %.sroa.0.1.in = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.1 = load i64, ptr %.sroa.0.1.in, align 8
  br label %bb.b, !llvm.loop !433

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit.loopexit: ; preds = %bb.b, %bb.b
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.b, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit.loopexit, %bb.f, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.c
  %.sroa.03.1.ph = phi i64 [ %.sroa.0.0, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit.loopexit ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ 0, %bb.f ], [ 0, %bb.b ]
  ret i64 %.sroa.03.1.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v825ContainsOnlyOneByteHelper18VisitTwoByteStringEPKti(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = sext i32 %2 to i64
  %.idx = shl nsw i64 %i.a, 1
  %i.b = getelementptr inbounds i8, ptr %1, i64 %.idx ; 4 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = and i64 %i.c, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = icmp ne i32 %2, 0
  %i.g = and i1 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02132 = phi ptr [ %i.h, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.02231 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %.02132, i64 2 ; 4 uses
  %i.i = load i16, ptr %.02132, align 2
  %i.j = zext i16 %i.i to i64
  %i.k = or i64 %.02231, %i.j                     ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = and i64 %i.l, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp ne ptr %i.h, %i.b
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !434

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.022.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.lr.ph ]
  %.021.lcssa = phi ptr [ %1, %bb.a ], [ %i.h, %.lr.ph ]
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = and i64 %i.q, -8
  %i.s = inttoptr i64 %i.r to ptr
  br label %bb.b

bb.b:                                             ; preds = %.preheader28.preheader, %._crit_edge
  %.123 = phi i64 [ %.022.lcssa, %._crit_edge ], [ %op.rdx, %.preheader28.preheader ] ; 3 uses
  %.1 = phi ptr [ %.021.lcssa, %._crit_edge ], [ %i.t, %.preheader28.preheader ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 128 ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.s
  br i1 %i.u, label %.preheader28.preheader, label %.preheader

.preheader28.preheader:                           ; preds = %bb.b
  %i.v = load <16 x i64>, ptr %.1, align 8
  %i.w = tail call i64 @llvm.vector.reduce.or.v16i64(<16 x i64> %i.v)
  %op.rdx = or i64 %i.w, %.123                    ; 2 uses
  %i.x = and i64 %op.rdx, -71777214294589696
  %.not27 = icmp eq i64 %i.x, 0
  br i1 %.not27, label %bb.b, label %.sink.split, !llvm.loop !435

.preheader:                                       ; preds = %bb.b
  %.not37 = icmp eq ptr %.1, %i.b
  br i1 %.not37, label %._crit_edge41, label %.lr.ph40

.lr.ph40:                                         ; preds = %.preheader, %.lr.ph40
  %.339 = phi ptr [ %i.y, %.lr.ph40 ], [ %.1, %.preheader ] ; 2 uses
  %.32538 = phi i64 [ %i.ab, %.lr.ph40 ], [ %.123, %.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.339, i64 2 ; 2 uses
  %i.z = load i16, ptr %.339, align 2
  %i.aa = zext i16 %i.z to i64
  %i.ab = or i64 %.32538, %i.aa                   ; 2 uses
  %.not = icmp eq ptr %i.y, %i.b
  br i1 %.not, label %._crit_edge41, label %.lr.ph40, !llvm.loop !436

._crit_edge41:                                    ; preds = %.lr.ph40, %.preheader
  %.325.lcssa = phi i64 [ %.123, %.preheader ], [ %i.ab, %.lr.ph40 ]
  %i.ac = and i64 %.325.lcssa, -71777214294589696
  %.not26 = icmp eq i64 %i.ac, 0
  br i1 %.not26, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %.preheader28.preheader, %._crit_edge41
  store i8 0, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %._crit_edge41
  ret void
}

declare void @_ZN2v88internal6String18SlowGetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE(ptr dead_on_unwind writable sret(%"class.v8::internal::String::FlatContent") align 8, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZN7simdutf23utf8_length_from_latin1EPKcm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNK2v88internal21StringForwardingTable19GetExternalResourceEiPb(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN2v88internal12WriteBarrier21CurrentMarkingBarrierENS0_6TaggedINS0_10HeapObjectEEE(i64) local_unnamed_addr #4

declare void @_ZN2v88internal12WriteBarrier31MarkingSlowFromCppHeapWrappableEPNS0_4HeapENS0_6TaggedINS0_5UnionIJNS0_8JSObjectENS0_21CppHeapExternalObjectEEEEEENS0_18CppHeapPointerSlotEPv(ptr noundef, i64, i64, ptr noundef) local_unnamed_addr #4

declare i64 @_ZNK2v88internal7Context13global_objectEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezerD0Ev(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 8)) %0) unnamed_addr #20 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v812_GLOBAL__N_124ObjectVisitorDeepFreezerE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #49, !inline_history !212
  br label %_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEED2Ev.exit.i

_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i1.i, label %_ZN2v88internal18DirectHandleVectorINS0_10JSReceiverEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #49, !inline_history !212
  br label %_ZN2v88internal18DirectHandleVectorINS0_10JSReceiverEED2Ev.exit.i

_ZN2v88internal18DirectHandleVectorINS0_10JSReceiverEED2Ev.exit.i: ; preds = %bb.c, %_ZN2v88internal18DirectHandleVectorINS0_12AccessorPairEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal18DirectHandleVectorINS0_10JSReceiverEED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.q, %_ZN2v88internal18DirectHandleVectorINS0_10JSReceiverEED2Ev.exit.i ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i.i.i.i, align 8    ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #49, !inline_history !212
  %.not.i.i.i.i2.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i2.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !213

_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN2v88internal18DirectHandleVectorINS0_10JSReceiverEED2Ev.exit.i
  %i.s = load ptr, ptr %i.o, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = shl i64 %i.u, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.v, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezerD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i
  %i.z = load i64, ptr %i.t, align 8
  %i.aa = shl i64 %i.z, 3
  tail call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #49, !inline_history !212
  br label %_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezerD2Ev.exit

_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezerD2Ev.exit: ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_6ObjectEEES4_SaIS4_ENSt8__detail9_IdentityESt8equal_toIS4_ENS3_6HasherENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 152) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer13VisitPointersENS_8internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %.lr.ph.i, label %_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer17VisitPointersImplINS_8internal14FullObjectSlotEEEvT_S5_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i.backedge
  %.sroa.03.09.i = phi i64 [ %.sroa.03.09.i.be, %.lr.ph.i.backedge ], [ %2, %bb.a ] ; 3 uses
  %i.b = inttoptr i64 %.sroa.03.09.i to ptr
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = tail call fastcc noundef zeroext i1 @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer11VisitObjectENS_8internal6TaggedINS2_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %i.c)
  %i.f = add i64 %.sroa.03.09.i, 8                ; 2 uses
  %i.g = icmp ult i64 %i.f, %3
  %or.cond.i = and i1 %i.g, %i.e
  br i1 %or.cond.i, label %.lr.ph.i.backedge, label %_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer17VisitPointersImplINS_8internal14FullObjectSlotEEEvT_S5_.exit

.critedge.i:                                      ; preds = %.lr.ph.i
  %.old.i = add i64 %.sroa.03.09.i, 8             ; 2 uses
  %.old11.i = icmp ult i64 %.old.i, %3
  br i1 %.old11.i, label %.lr.ph.i.backedge, label %_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer17VisitPointersImplINS_8internal14FullObjectSlotEEEvT_S5_.exit

.lr.ph.i.backedge:                                ; preds = %.critedge.i, %bb.b
  %.sroa.03.09.i.be = phi i64 [ %i.f, %bb.b ], [ %.old.i, %.critedge.i ]
  br label %.lr.ph.i, !llvm.loop !437

_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer17VisitPointersImplINS_8internal14FullObjectSlotEEEvT_S5_.exit: ; preds = %bb.b, %.critedge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer13VisitPointersENS_8internal6TaggedINS2_10HeapObjectEEENS2_19FullMaybeObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %.lr.ph.i, label %_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer17VisitPointersImplINS_8internal19FullMaybeObjectSlotEEEvT_S5_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i.backedge
  %.sroa.03.09.i = phi i64 [ %.sroa.03.09.i.be, %.lr.ph.i.backedge ], [ %2, %bb.a ] ; 3 uses
  %i.b = inttoptr i64 %.sroa.03.09.i to ptr
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 3
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = tail call fastcc noundef zeroext i1 @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer11VisitObjectENS_8internal6TaggedINS2_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 %i.c)
  %i.g = add i64 %.sroa.03.09.i, 8                ; 2 uses
  %i.h = icmp ult i64 %i.g, %3
  %or.cond.i = and i1 %i.h, %i.f
  br i1 %or.cond.i, label %.lr.ph.i.backedge, label %_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer17VisitPointersImplINS_8internal19FullMaybeObjectSlotEEEvT_S5_.exit

.critedge.i:                                      ; preds = %.lr.ph.i
  %.old.i = add i64 %.sroa.03.09.i, 8             ; 2 uses
  %.old11.i = icmp ult i64 %.old.i, %3
  br i1 %.old11.i, label %.lr.ph.i.backedge, label %_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer17VisitPointersImplINS_8internal19FullMaybeObjectSlotEEEvT_S5_.exit

.lr.ph.i.backedge:                                ; preds = %.critedge.i, %bb.b
  %.sroa.03.09.i.be = phi i64 [ %i.g, %bb.b ], [ %.old.i, %.critedge.i ]
  br label %.lr.ph.i, !llvm.loop !438

_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer17VisitPointersImplINS_8internal19FullMaybeObjectSlotEEEvT_S5_.exit: ; preds = %bb.b, %.critedge.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer29VisitInstructionStreamPointerENS_8internal6TaggedINS2_4CodeEEENS2_21OffHeapFullObjectSlotE(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN2v812_GLOBAL__N_124ObjectVisitorDeepFreezer23VisitCustomWeakPointersENS_8internal6TaggedINS2_10HeapObjectEEENS2_14FullObjectSlotES6_(ptr nofree nonnull readnone align 8 captures(none) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = add i64 %2, 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i64 %i.a) #44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13ObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = add i64 %2, 8
  %i.b = load ptr, ptr %0, align 8
end_hunk_0
