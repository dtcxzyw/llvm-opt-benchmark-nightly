inline.NumInlined: 3640
inline.NumDeleted: 1030
begin_hunk_0_@_ZN6hermes2vm24typedArrayPrototypeSliceEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a

bb.j:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit25
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %i.d, align 8, !tbaa !21
  %i.at = and i64 %.sroa.0.0.copyload.i.i26, 281474976710655
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !100 ; 2 uses
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.j
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = zext i32 %i.aw to i64
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 37
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !101, !range !102, !noundef !103
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.k, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.j, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.be, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 46, ptr %i.bf, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bg, align 8, !tbaa !12
  store ptr @.str.15, ptr %3, align 8, !tbaa !13
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.bh, align 8, !tbaa !14
  %i.bi = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.n

bb.k:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.bj = fcmp ogt double %.sroa.speculated, 0.000000e+00
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = fptoui double %i.ah to i32
  %i.bl = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.as, i32 noundef 0, ptr nonnull %i.d, i32 noundef %i.bk, i32 noundef %i.ar) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.as, align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %bb.d, %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit25, %bb.m, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, %bb.a
  %.sroa.038.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.bi, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 1, %bb.m ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit25 ]
  %.sroa.7.2 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.d ], [ undef, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ %.sroa.0.0.copyload.i27, %bb.m ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit25 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.038.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm16JSTypedArrayBase21setToCopyOfTypedArrayERNS0_7RuntimeENS0_6HandleIS1_EEjS5_jj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef, ptr, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm27typedArrayPrototypeSubarrayEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !525
  %i.b = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i1 noundef zeroext false) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !15, !noalias !528 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22
  %i.i = uitofp i32 %i.h to double                ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !71
  %.not = icmp eq i32 %i.k, 0
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.l
  %i.m = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = extractvalue { i32, i64 } %i.m, 1
  %i.q = bitcast i64 %i.p to double               ; 4 uses
  %i.r = load i32, ptr %i.j, align 8, !tbaa !71
  %i.s = icmp ugt i32 %i.r, 1
  br i1 %i.s, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.c
  %i.t = load ptr, ptr %2, align 8, !tbaa !15, !noalias !531
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.u, align 8, !tbaa !21
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -140737488355328
  %i.v = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.v, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.w = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.u) #10 ; 2 uses
  %i.x = extractvalue { i32, i64 } %i.w, 0
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = extractvalue { i32, i64 } %i.w, 1
  %i.aa = bitcast i64 %i.z to double
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.c, %bb.e, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %.0 = phi double [ %i.aa, %bb.e ], [ %i.i, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ %i.i, %bb.c ] ; 4 uses
  %i.ab = fcmp olt double %i.q, 0.000000e+00
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.ac = fadd double %i.i, %i.q                  ; 2 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  %i.ae = select i1 %i.ad, double 0.000000e+00, double %i.ac
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit

bb.g:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.af = fcmp olt double %i.i, %i.q
  %i.ag = select i1 %i.af, double %i.i, double %i.q
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit

_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit: ; preds = %bb.f, %bb.g
  %i.ah = phi double [ %i.ae, %bb.f ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ai = fcmp olt double %.0, 0.000000e+00
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit
  %i.aj = fadd double %.0, %i.i                   ; 2 uses
  %i.ak = fcmp olt double %i.aj, 0.000000e+00
  %i.al = select i1 %i.ak, double 0.000000e+00, double %i.aj
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit19

bb.i:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit
  %i.am = fcmp ogt double %.0, %i.i
  %i.an = select i1 %i.am, double %i.i, double %.0
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit19

_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit19: ; preds = %bb.h, %bb.i
  %i.ao = phi double [ %i.al, %bb.h ], [ %i.an, %bb.i ]
  %i.ap = fsub double %i.ao, %i.ah                ; 2 uses
  %i.aq = fcmp olt double %i.ap, 0.000000e+00
  %.sroa.speculated = select i1 %i.aq, double 0.000000e+00, double %i.ap
  %i.ar = fptoui double %i.ah to i32
  %i.as = fadd double %i.ah, %.sroa.speculated
  %i.at = fptoui double %i.as to i32
  %i.au = tail call ptr @_ZN6hermes2vm16JSTypedArrayBase20allocateToSameBufferERNS0_7RuntimeENS0_6HandleIS1_EEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.d, i32 noundef %i.ar, i32 noundef %i.at) #10 ; 2 uses
  %.not34 = icmp eq ptr %i.au, inttoptr (i64 -1 to ptr)
  br i1 %.not34, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit19
  %.sroa.0.0.copyload.i20 = load i64, ptr %i.au, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.d, %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit19, %bb.j, %bb.a
  %.sroa.030.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.j ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit19 ]
  %.sroa.631.2 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %bb.d ], [ %.sroa.0.0.copyload.i20, %bb.j ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit19 ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.030.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.631.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm16JSTypedArrayBase20allocateToSameBufferERNS0_7RuntimeENS0_6HandleIS1_EEjj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm36typedArrayPrototypeSymbolToStringTagEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !534
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -436207616
  %i.g = icmp ult i32 %i.f, 855638016
  br i1 %i.g, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !19 ; 2 uses
  %.pre77 = and i64 %.pre, 281474976710655
  %i.h = icmp ugt i64 %.pre, -844424930131969
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %.pre77, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.i = phi i1 [ true, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ], [ %i.h, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.j = icmp ne i64 %.pre-phi, 0
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  %i.l = inttoptr i64 %.pre-phi to ptr
  %i.m = load i32, ptr %i.l, align 4
  %3 = add i32 %i.m, -587202560
  %i.n = lshr i32 %3, 24
  %trunc = trunc nuw i32 %i.n to i8
  switch i8 %trunc, label %bb.n [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.p = tail call i32 @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.q = tail call i32 @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.r = tail call i32 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.s = tail call i32 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  %i.t = tail call i32 @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.i:                                             ; preds = %bb.b
  %i.u = tail call i32 @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.j:                                             ; preds = %bb.b
  %i.v = tail call i32 @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.k:                                             ; preds = %bb.b
  %i.w = tail call i32 @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %i.x = tail call i32 @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

bb.m:                                             ; preds = %bb.b
  %i.y = tail call i32 @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.sink79 = phi i32 [ %i.y, %bb.m ], [ %i.x, %bb.l ], [ %i.w, %bb.k ], [ %i.v, %bb.j ], [ %i.u, %bb.i ], [ %i.t, %bb.h ], [ %i.s, %bb.g ], [ %i.r, %bb.f ], [ %i.q, %bb.e ], [ %i.p, %bb.d ], [ %i.o, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.aa = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.z, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sink79) #10
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, -844424930131968
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.b, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit
  %.sroa.14.0 = phi i64 [ -1688849860263936, %bb.b ], [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8JSObjectEEENS0_6HandleIT_EEv.exit ], [ %i.ac, %.sink.split ]
  %.fca.1.insert = insertvalue { i32, i64 } { i32 1, i64 poison }, i64 %.sroa.14.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare i32 @_ZN6hermes2vm12JSTypedArrayIaLNS0_8CellKindE35EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayIsLNS0_8CellKindE36EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayIiLNS0_8CellKindE37EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE38EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayIhLNS0_8CellKindE39EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayItLNS0_8CellKindE40EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayIjLNS0_8CellKindE41EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayIfLNS0_8CellKindE42EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayIdLNS0_8CellKindE43EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayIlLNS0_8CellKindE44EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

declare i32 @_ZN6hermes2vm12JSTypedArrayImLNS0_8CellKindE45EE7getNameERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm33typedArrayPrototypeToLocaleStringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::CallResult.184", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr %1, ptr %4, align 8, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  store ptr %i.c, ptr %i.a, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !55
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !57
  store ptr %4, ptr %i.b, align 8, !tbaa !38
  %i.l = load ptr, ptr %2, align 8, !tbaa !15, !noalias !537
  %i.m = call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.l, i1 noundef zeroext true) #10
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge68, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %2, align 8, !tbaa !15, !noalias !540 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.q = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.p, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #10
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = or i64 %i.r, -844424930131968            ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !38   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.y = icmp ult ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.d, !prof !51

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !41
  store i64 %i.s, ptr %i.v, align 8, !tbaa !21
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.t, i64 %i.s) #10
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.v, %bb.c ], [ %i.aa, %bb.d ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8, !tbaa !21
  %i.ab = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22 ; 7 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit
  %.sroa.0.0.copyload.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !21
  br label %.critedge68

bb.f:                                             ; preds = %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit
  %i.ag = call { ptr, i64 } @_ZN6hermes2vm14createASCIIRefEPKc(ptr noundef nonnull @.str.16) #10 ; 2 uses
  %i.ah = extractvalue { ptr, i64 } %i.ag, 0      ; 10 uses
  %i.ai = extractvalue { ptr, i64 } %i.ag, 1      ; 18 uses
  %i.aj = add i32 %i.ae, -1
  %i.ak = zext i32 %i.aj to i64
  %i.al = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ae, i32 noundef %i.ae) #10 ; 4 uses
  %.not140 = icmp eq ptr %i.al, inttoptr (i64 -1 to ptr)
  br i1 %.not140, label %.critedge68, label %bb.g, !prof !73

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !38  ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 192 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.ar = icmp ult ptr %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.i, !prof !51

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.as, ptr %i.an, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.ao, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.i:                                             ; preds = %bb.g
  %i.at = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.am, i64 -1688849860263936) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.h ], [ %i.at, %bb.i ] ; 2 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !41
  %i.av = load i32, ptr %i.k, align 8, !tbaa !57  ; 2 uses
  %i.aw = zext i32 %i.av to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.x
  %.064148 = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.ei, %bb.x ] ; 3 uses
  %.sroa.6128.0147 = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.ed, %bb.x ]
  %.sroa.0126.0146 = phi i64 [ %i.ak, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.ea, %bb.x ]
  %.sroa.0.0.copyload.i.i75 = load i64, ptr %i.o, align 8, !tbaa !21
  %i.ax = and i64 %.sroa.0.0.copyload.i.i75, 281474976710655
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = lshr i32 %i.az, 24
  %i.bb = zext nneg i32 %i.ba to i64
end_hunk_0
