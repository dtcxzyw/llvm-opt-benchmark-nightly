Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/feedback-vector?download=true
inline.NumInlined: 1787
inline.NumDeleted: 887
begin_hunk_0_@_ZNK2v88internal13FeedbackNexus10GetKeyTypeEv:bb.a
  br label %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread

_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread: ; preds = %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.threadthread-pre-split, %bb.c
  %i.aj = phi i8 [ %.pr, %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.threadthread-pre-split ], [ %i.l, %bb.c ]
  switch i8 %i.aj, label %bb.h [
    i8 18, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread, %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread
  br label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread, %bb.g
  %.sroa.speculated = phi i64 [ %i.c, %bb.g ], [ %i.b, %_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv.exit.thread ] ; 5 uses
  %i.ak = and i64 %.sroa.speculated, 3
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.i, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.i:                                             ; preds = %bb.h
  %i.am = add nsw i64 %.sroa.speculated, -1
  %i.an = inttoptr i64 %i.am to ptr               ; 2 uses
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.ap = add i64 %i.ao, 11
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i16, ptr %i.aq monotonic, align 2
  %i.as = icmp ult i16 %i.ar, 128
  br i1 %i.as, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load atomic volatile i64, ptr %i.an monotonic, align 8
  %i.au = add i64 %i.at, 11
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load atomic volatile i16, ptr %i.av monotonic, align 2
  %i.ax = icmp eq i16 %i.aw, 128
  br i1 %i.ax, label %bb.k, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 10624
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 7312
  %i.bc = load i64, ptr %i.bb, align 8
  %.not.i = icmp eq i64 %.sroa.speculated, %i.bc
  br i1 %.not.i, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 7336
  %i.be = load i64, ptr %i.bd, align 8
  %.not41.i = icmp eq i64 %.sroa.speculated, %i.be
  br i1 %.not41.i, label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 7320
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp ne i64 %.sroa.speculated, %i.bg
  %i.bi = zext i1 %i.bh to i32
  br label %_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit

_ZN2v88internalL22IsPropertyNameFeedbackENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 1, %bb.f ], [ 0, %bb.j ], [ 0, %bb.h ], [ 1, %bb.i ], [ 0, %bb.l ], [ 0, %bb.k ], [ %i.bi, %bb.m ]
  ret i32 %.0
}

declare noundef zeroext i8 @_ZN2v88internal11LoadHandler22GetKeyedAccessLoadModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i8 @_ZNK2v88internal13FeedbackNexus23GetKeyedAccessStoreModeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::MapsAndHandlers", align 8 ; 18 uses
  %2 = alloca %"class.std::function", align 8     ; 5 uses
  %i.a = tail call noundef i32 @_ZNK2v88internal13FeedbackNexus10GetKeyTypeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  store ptr %i.c, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.n, ptr %i.m, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.o = call noundef i32 @_ZNK2v88internal13FeedbackNexus22ExtractMapsAndHandlersEPNS0_15MapsAndHandlersESt8functionIFNS0_11MaybeHandleINS0_3MapEEENS0_6HandleIS6_EEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #17, !inline_history !1 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.s = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %.not161 = icmp eq ptr %i.s, %i.t
  br i1 %.not161, label %.thread144, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138
  %.sroa.4.0162 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138 ] ; 3 uses
  %i.z = load ptr, ptr %i.j, align 8, !noalias !50
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.4.0162
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !50 ; 3 uses
  %switch.i = icmp ult i32 %i.ab, 2
  br i1 %switch.i, label %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit, label %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit.thread

_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.f, align 8, !noalias !50
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.4.0162
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ad, align 8, !noalias !50 ; 2 uses
  %i.ae = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %i.ae, label %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit.thread, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit, !prof !10

_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit.thread: ; preds = %bb.d, %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41) #18
  unreachable

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit: ; preds = %_ZNK2v88internal15MapsAndHandlers8IteratordeEv.exit
  %i.af = load i64, ptr %.sroa.0.0.copyload.i.i, align 8 ; 9 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %_ZN2v88internal14IsStoreHandlerENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62

_ZN2v88internal14IsStoreHandlerENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit
  %i.ah = add nsw i64 %i.af, -1
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 138
  br i1 %i.an, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61: ; preds = %_ZN2v88internal14IsStoreHandlerENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit, %_ZN2v88internal14IsStoreHandlerENS0_6TaggedINS0_6ObjectEEE.exit
  %i.as = and i64 %i.af, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit63, label %bb.e

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit63: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62
  %i.au = icmp eq i64 %i.af, 42949672960
  br i1 %i.au, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit63
  %i.av = icmp eq i32 %i.ab, 0
  %i.aw = or i64 %i.af, 3
  %spec.select = select i1 %i.av, i64 %i.aw, i64 %i.af
  %i.ax = call noundef zeroext i8 @_ZN2v88internal12StoreHandler23GetKeyedAccessStoreModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %spec.select) #17 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, label %.thread144

bb.e:                                             ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit62
  %i.az = load i8, ptr %i.y, align 4
  %i.ba = icmp eq i8 %i.az, 13
  br i1 %i.ba, label %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67, label %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69

_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67: ; preds = %bb.e
  %i.bb = icmp eq i32 %i.ab, 0
  %i.bc = or i64 %i.af, 3
  %spec.select160 = select i1 %i.bb, i64 %i.bc, i64 %i.af
  %i.bd = call noundef zeroext i8 @_ZN2v88internal12StoreHandler23GetKeyedAccessStoreModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %spec.select160) #17 ; 2 uses
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, label %.thread144

_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69: ; preds = %bb.e, %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61
  %.151.in.in.in.in = phi i64 [ %i.ap, %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61 ], [ %i.af, %bb.e ]
  %.151.in.in.in = add i64 %.151.in.in.in.in, 89
  %.151.in.in = inttoptr i64 %.151.in.in.in to ptr
  %.151.in = load i16, ptr %.151.in.in, align 2   ; 2 uses
  %.151 = sext i16 %.151.in to i32
  %.off.i = add nsw i32 %.151, -168
  %switch.i70 = icmp ult i32 %.off.i, 12
  br i1 %switch.i70, label %switch.lookup, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138

switch.lookup:                                    ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69
  %3 = sext i16 %.151.in to i64
  %4 = getelementptr i8, ptr @switch.table._ZNK2v88internal13FeedbackNexus23GetKeyedAccessStoreModeEv, i64 %3
  %switch.gep = getelementptr i8, ptr %4, i64 -168
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.thread144

_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit: ; preds = %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit61
  %i.bf = call noundef zeroext i8 @_ZN2v88internal12StoreHandler23GetKeyedAccessStoreModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64 %i.ap) #17 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, label %.thread144

_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138: ; preds = %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit63, %_ZNK2v88internal23MaybeObjectDirectHandle6objectEv.exit69
  %i.bh = add i64 %.sroa.4.0162, 1                ; 2 uses
  %.not = icmp eq i64 %i.bh, %i.x
  br i1 %.not, label %.thread144, label %bb.d

.thread144:                                       ; preds = %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit, %switch.lookup, %_ZNSt14_Function_baseD2Ev.exit
  %i.bi = phi i8 [ 0, %_ZNSt14_Function_baseD2Ev.exit ], [ %switch.load, %switch.lookup ], [ 0, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit.thread138 ], [ %i.ax, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit ], [ %i.bd, %_ZNK2v88internal23MaybeObjectDirectHandledeEv.exit67 ], [ %i.bf, %_ZN2v88internal12_GLOBAL__N_130KeyedAccessStoreModeForBuiltinENS0_7BuiltinE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %i.j)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.thread144
  %.6 = phi i8 [ %i.bi, %.thread144 ], [ 0, %bb.a ]
  ret i8 %.6
}

declare noundef zeroext i8 @_ZN2v88internal12StoreHandler23GetKeyedAccessStoreModeENS0_6TaggedINS0_9MaybeWeakINS0_6ObjectEEEEE(i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal13FeedbackNexus17IsOneMapManyNamesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4
  switch i8 %i.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit [
    i8 8, label %bb.b
    i8 14, label %bb.b
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.c = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0        ; 3 uses
  %i.e = extractvalue { i64, i64 } %i.c, 1        ; 2 uses
  %i.f = and i64 %i.d, 3
  %i.g = icmp eq i64 %i.f, 3
  %i.h = and i64 %i.d, 4294967295
  %i.i = icmp ne i64 %i.h, 3
  %i.j = and i1 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.k = and i64 %i.d, -3                         ; 2 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = icmp eq i16 %i.q, 276
  br i1 %i.r, label %bb.d, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.s = add i64 %i.k, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 4
  %i.v = and i16 %i.u, -2
  %i.w = icmp eq i16 %i.v, 300
  %i.x = and i64 %i.e, 1
  %i.y = icmp eq i64 %i.x, 0
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.e, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.e:                                             ; preds = %bb.d
  %i.z = and i64 %i.e, -17179869186
  %spec.select = icmp eq i64 %i.z, 47244640256
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.e, %bb.a, %bb.c, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ %spec.select, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK2v88internal13FeedbackNexus17GetTypeOfFeedbackEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = lshr i64 %i.b, 32
  %i.f = trunc nuw i64 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK2v88internal13FeedbackNexus22GetConstructorFeedbackEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = and i64 %i.b, 3
  %i.d = icmp eq i64 %i.c, 3
  %i.e = and i64 %i.b, 4294967295
  %i.f = icmp ne i64 %i.e, 3
  %i.g = and i1 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, -3                         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 560 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 568
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.d, label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.l) #17
  br label %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ] ; 3 uses
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = add i64 %i.s, 8
  %i.u = inttoptr i64 %i.t to ptr
  store ptr %i.u, ptr %i.m, align 8
  store i64 %i.h, ptr %.0.i.i.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !13, !noundef !14
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.j, i64 noundef %i.h) #17
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.aa = load ptr, ptr %i.z, align 8             ; 5 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aa) #17
  %.pre.i = load ptr, ptr %i.aa, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %.pre.i, %bb.h ], [ %i.ab, %bb.g ]
  %.0.i.i5.i = phi ptr [ %i.af, %bb.h ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ah, ptr %i.aa, align 8
  store i64 %i.h, ptr %.0.i.i5.i, align 8
  br label %_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit

_ZNK2v88internal11NexusConfig9NewHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_6TaggedIS5_EE.exit: ; preds = %bb.a, %bb.i, %bb.f, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %.sroa.05.0 = phi ptr [ %.0.i.i5.i, %bb.i ], [ %.0.i.i.i, %_ZN2v88internal6HandleINS0_8JSObjectEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ %i.y, %bb.f ], [ null, %bb.a ]
  ret ptr %.sroa.05.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal16FeedbackIteratorC2EPKNS0_13FeedbackNexusE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 25), (28, 36)) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 25, i1 false)
  store i32 -1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store i32 2, ptr %i.e, align 8
  %i.f = tail call { i64, i64 } @_ZNK2v88internal13FeedbackNexus15GetFeedbackPairEv(ptr noundef nonnull align 8 dereferenceable(88) %1) ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0        ; 10 uses
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 4 uses
  %i.i = and i64 %i.g, 3                          ; 2 uses
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i64 %i.g, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = icmp ult i16 %i.p, 128
end_hunk_0
