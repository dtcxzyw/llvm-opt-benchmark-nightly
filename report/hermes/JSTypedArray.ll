Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSTypedArray?download=true
inline.NumInlined: 1686
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE:bb.a
  br i1 %i.c, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !269
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !270
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !271
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  ret ptr %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE3endERNS0_7RuntimeE(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !268, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !269
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !270
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !271
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE2atERNS0_7RuntimeEj(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.b = load i8, ptr %i.a, align 4, !tbaa !268, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.17) #10
  unreachable

_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE5beginERNS0_7RuntimeE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.d, align 4, !tbaa !6
  %i.e = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = add i64 %i.e, %i.f
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !269
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.l = load i64, ptr %i.k, align 8, !tbaa !270
  %i.m = xor i64 %i.l, %i.j
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !271
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = zext i32 %2 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  ret ptr %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE8allocateERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !281
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.d, %i.f
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !282

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.h = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.g, i32 noundef 40) #11
  br label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !280
  br label %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit

_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit: ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.c, %bb.c ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9520
  tail call void @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EEC1ERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS6_INS0_11HiddenClassEEE(ptr noundef nonnull align 4 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.j) #11
  store i32 587202600, ptr %i.i, align 4, !tbaa !272
  %.01320.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i.i, align 4, !tbaa !6
  %.01320.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i.i, align 4, !tbaa !6
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = or i64 %i.k, -281474976710656            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !283  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !291  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !292
  %i.s = icmp ult ptr %i.p, %i.r
  br i1 %i.s, label %bb.d, label %bb.e, !prof !19

bb.d:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !291
  store i64 %i.l, ptr %i.p, align 8, !tbaa !270
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIaLNS0_8CellKindE35EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

bb.e:                                             ; preds = %_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE.exit
  %i.u = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.n, i64 %i.l) #11
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIaLNS0_8CellKindE35EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_12JSTypedArrayIaLNS0_8CellKindE35EEEEENS0_6HandleIT_EEONS0_12PseudoHandleIS7_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = zext i32 %1 to i64
  %i.w = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i64 noundef %i.v)
  %i.x = icmp eq i32 %i.w, 0
  %spec.select = select i1 %i.x, ptr inttoptr (i64 -1 to ptr), ptr %.0.i.i.i.i.i.i
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE12getPrototypeERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm16JSTypedArrayBase12createBufferERNS0_7RuntimeENS0_6HandleIS1_EEm(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = tail call ptr @_ZN6hermes2vm13JSArrayBuffer6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a) #11
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = or i64 %i.c, -281474976710656            ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !283  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !291  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !292
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !291
  store i64 %i.d, ptr %i.h, align 8, !tbaa !270
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.d) #11
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !270
  %i.n = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.o, align 4
  %i.q = lshr i32 %i.p, 24
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr @_ZZNK6hermes2vm16JSTypedArrayBase12getByteWidthEvE6widths, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -35
  %i.u = load i8, ptr %i.t, align 1, !tbaa !272
  %i.v = zext i8 %i.u to i32                      ; 2 uses
  %i.w = udiv i32 -1, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = icmp ugt i64 %2, %i.x
  br i1 %i.y, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.d

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.z, align 8, !tbaa !276
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 48, ptr %i.aa, align 8, !tbaa !277
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ab, align 8, !tbaa !278
  store ptr @.str.16, ptr %3, align 8, !tbaa !272
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ac, align 8, !tbaa !279
  %i.ad = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.g

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_13JSArrayBufferEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %4 = trunc nuw i64 %2 to i32
  %5 = mul i32 %i.v, %4                           ; 2 uses
  %i.ae = tail call noundef i32 @_ZN6hermes2vm13JSArrayBuffer15createDataBlockERNS0_7RuntimeENS0_6HandleIS1_EEjb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i, i32 noundef %5, i1 noundef zeroext true) #11
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !270
  %i.ag = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ah = inttoptr i64 %i.ag to ptr               ; 4 uses
  %.sroa.0.0.copyload.i.i.i13 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !270 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = lshr i32 %i.ai, 24
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr i8, ptr @_ZZNK6hermes2vm16JSTypedArrayBase12getByteWidthEvE6widths, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -35
  %i.an = load i8, ptr %i.am, align 1, !tbaa !272
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !293
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = and i64 %i.ar, 562949949227008
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = icmp eq ptr %i.aq, %i.at
  br i1 %i.au, label %_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.av = and i64 %.sroa.0.0.copyload.i.i.i13, 281474976710655
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef %i.aw) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh.exit

_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh.exit: ; preds = %bb.e, %bb.f
  %i.ay = ptrtoint ptr %0 to i64
  %i.az = sub i64 %.sroa.0.0.copyload.i.i.i13, %i.ay
  %i.ba = trunc i64 %i.az to i32
  store i32 %i.ba, ptr %i.ao, align 4, !tbaa !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  store i32 0, ptr %i.bb, align 4, !tbaa !271
  %i.bc = zext i8 %i.an to i32
  %i.bd = udiv i32 %5, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh.exit, %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.1 = phi i32 [ %i.ad, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm16JSTypedArrayBase9setBufferERNS0_7RuntimeEPS1_PNS0_13JSArrayBufferEjjh.exit ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE15allocateSpeciesENS0_6HandleINS0_16JSTypedArrayBaseEEERNS0_7RuntimeEj(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2) #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = tail call ptr @_ZN6hermes2vm18speciesConstructorENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8CallableEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #11 ; 2 uses
  %.not = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = uitofp i32 %2 to double                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !283  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !291  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !292
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !291
  store double %i.c, ptr %i.g, align 8, !tbaa !270
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = bitcast double %i.c to i64
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.e, i64 %i.l) #11
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.m, %bb.d ]
  %i.n = tail call { i32, i64 } @_ZN6hermes2vm8Callable17executeConstruct1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #11 ; 2 uses
  %i.o = extractvalue { i32, i64 } %i.n, 0
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.q = extractvalue { i32, i64 } %i.n, 1
  %i.r = or i64 %i.q, -281474976710656            ; 3 uses
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !283  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !291  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !292
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, !prof !19

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.thread: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !291
  store i64 %i.r, ptr %i.u, align 8, !tbaa !270
  br label %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i.i

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.e
  %i.z = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.s, i64 %i.r) #11 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.pr = load i64, ptr %i.z, align 8, !tbaa !270 ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.pr, -844424930131969
  br i1 %i.aa, label %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i.i, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.thread, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %.0.i.i.i.i.i.i1224 = phi ptr [ %i.u, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.thread ], [ %i.z, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i23 = phi i64 [ %i.r, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit.thread ], [ %.sroa.0.0.copyload.i.i.i.pr, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ]
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i23, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, -587202560
  %i.af = icmp ult i32 %i.ae, 184549376
  %spec.select.i.i = select i1 %i.af, ptr %.0.i.i.i.i.i.i1224, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i: ; preds = %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %.0.i.i.i.i.i.i1225 = phi ptr [ %i.z, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1224, %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i.i ]
  %.sroa.0.0.i.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ %spec.select.i.i, %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i.i ]
  %i.ag = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !273 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, -844424930131969
  %i.ai = and i64 %i.ag, 281474976710655          ; 2 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = and i1 %i.ah, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.al, align 8, !tbaa !276
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 52, ptr %i.am, align 8, !tbaa !277
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.an, align 8, !tbaa !278
  store ptr @.str.13, ptr %3, align 8, !tbaa !272
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ao, align 8, !tbaa !279
  %i.ap = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

bb.f:                                             ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit.i
  %i.aq = inttoptr i64 %i.ai to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20 ; 2 uses
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i: ; preds = %bb.f
  %i.at = ptrtoint ptr %1 to i64
  %i.au = zext i32 %i.as to i64
  %i.av = add i64 %i.au, %i.at
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 37
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !26, !range !27, !noundef !28
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ba, align 8, !tbaa !276
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 57, ptr %i.bb, align 8, !tbaa !277
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bc, align 8, !tbaa !278
  store ptr @.str.14, ptr %4, align 8, !tbaa !272
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bd, align 8, !tbaa !279
  %i.be = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit: ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i
  %.0.i = phi i32 [ %i.ap, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ], [ %i.be, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread.i ]
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %bb.g, label %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread

_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread: ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.i, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread, %bb.a
  %.sroa.020.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.0.i.i.i.i.i.i1225, %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit.thread ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb.exit ]
  ret ptr %.sroa.020.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden nonnull ptr @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE14getConstructorERKNS0_7RuntimeE(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(9816) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  ret ptr %i.a
}

declare ptr @_ZN6hermes2vm18speciesConstructorENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8CallableEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #5

declare { i32, i64 } @_ZN6hermes2vm8Callable17executeConstruct1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !270 ; 2 uses
  %i.a = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.a, label %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i32, ptr %i.c, align 4
  %i.e = add i32 %i.d, -587202560
  %i.f = icmp ult i32 %i.e, 184549376
  %spec.select.i = select i1 %i.f, ptr %1, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.a, %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_16JSTypedArrayBaseEEEbNS0_11HermesValueE.exit.i ]
  %i.g = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !273 ; 2 uses
  %i.h = icmp ugt i64 %i.g, -844424930131969
  %i.i = and i64 %i.g, 281474976710655            ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = and i1 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm6HandleINS0_16JSTypedArrayBaseEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !276
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 52, ptr %i.m, align 8, !tbaa !277
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !278
  store ptr @.str.13, ptr %3, align 8, !tbaa !272
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_0
