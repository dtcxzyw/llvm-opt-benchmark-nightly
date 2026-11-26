Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSArray?download=true
inline.NumInlined: 1072
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj:bb.a
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !6
  %i.u = ptrtoint ptr %i.h to i64
  %i.v = or i64 %i.u, -281474976710656            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !67   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.aa = icmp ult ptr %i.x, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_7JSArrayELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEERNS7_INS0_11HiddenClassEEENS0_13GCPointerBase10NoBarriersEEEEPT_DpOT2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !67
  store i64 %i.v, ptr %i.x, align 8, !tbaa !46
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_7JSArrayEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

bb.e:                                             ; preds = %_ZN6hermes2vm7Runtime10makeAFixedINS0_7JSArrayELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRS1_RNS0_6HandleINS0_8JSObjectEEERNS7_INS0_11HiddenClassEEENS0_13GCPointerBase10NoBarriersEEEEPT_DpOT2_.exit
  %i.ac = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %.val, i64 %i.v) #13
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_7JSArrayEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_7JSArrayEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.x, %bb.d ], [ %i.ac, %bb.e ] ; 3 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_7JSArrayEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit
  %i.ad = icmp ugt i32 %3, 1047529472
  br i1 %i.ad, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.g, !prof !44

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 32, ptr %i.af, align 8, !tbaa !50
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.ag, align 8, !tbaa !51
  store ptr @.str.1, ptr %5, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ah, align 8, !tbaa !53
  %i.ai = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %5) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %3) #13 ; 4 uses
  %.not24 = icmp eq ptr %i.aj, inttoptr (i64 -1 to ptr)
  br i1 %.not24, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !46
  %i.ak = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 28 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !72
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = and i64 %i.ap, 562949949227008
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = icmp eq ptr %i.ao, %i.ar
  br i1 %i.as, label %bb.j, label %bb.i, !prof !40

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.at, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef %i.aj) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  %i.au = ptrtoint ptr %i.aj to i64
  %i.av = sub i64 %i.au, %i.m
  %i.aw = trunc i64 %i.av to i32
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i32 0, i32 %i.aw
  store i32 %.sroa.0.0.i.i.i.i.i.i, ptr %i.am, align 4, !tbaa !6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_7JSArrayEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit
  %i.ax = uitofp i32 %4 to double                 ; 2 uses
  %i.ay = shl i32 %4, 3                           ; 2 uses
  %i.az = ashr exact i32 %i.ay, 3
  %i.ba = bitcast double %i.ax to i64
  %i.bb = sitofp i32 %i.az to double
  %i.bc = bitcast double %i.bb to i64
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.l, label %bb.m, !prof !40

bb.l:                                             ; preds = %bb.k
  %i.be = or disjoint i32 %i.ay, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.m:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !77
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.bg, %i.bh
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !44

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bj = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.bi, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

bb.o:                                             ; preds = %bb.m
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !76
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i: ; preds = %bb.o, %bb.n
  %i.bk = phi ptr [ %i.bj, %bb.n ], [ %i.bf, %bb.o ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store double %i.ax, ptr %i.bl, align 8, !tbaa !43
  store i32 402653200, ptr %i.bk, align 8, !tbaa !52
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bm, %i.m
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = or i32 %i.bo, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit: ; preds = %bb.l, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i
  %.sroa.0.0.i = phi i32 [ %i.be, %bb.l ], [ %i.bp, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i16 = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !46
  %i.bq = and i64 %.sroa.0.0.copyload.i.i16, 281474976710655
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !72
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = and i64 %i.bv, 562949949227008
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = icmp eq ptr %i.bu, %i.bx
  br i1 %i.by, label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit, label %bb.p, !prof !40

bb.p:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.bz, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i32 %.sroa.0.0.i) #13
  br label %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit

_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit, %bb.p
  store i32 %.sroa.0.0.i, ptr %i.bs, align 4, !tbaa !39
  br label %.thread

.thread:                                          ; preds = %bb.g, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.023.1 = phi ptr [ %.0.i.i.i.i.i.i.i, %_ZN6hermes2vm7JSArray9putLengthEPS1_RNS0_7RuntimeENS0_13HermesValue32E.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ inttoptr (i64 -1 to ptr), %bb.g ]
  ret ptr %.sroa.023.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE(double noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) local_unnamed_addr #5 comdat align 2 !guid !135 {
bb.a:
  %i.a = fptosi double %0 to i32
  %i.b = shl i32 %i.a, 3                          ; 2 uses
  %i.c = ashr exact i32 %i.b, 3
  %i.d = bitcast double %0 to i64
  %i.e = sitofp i32 %i.c to double
  %i.f = bitcast double %i.e to i64
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.h = or disjoint i32 %i.b, 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !77
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.k, %i.m
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.d, label %bb.e, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.o = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.n, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.i, align 8, !tbaa !76
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit: ; preds = %bb.d, %bb.e
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.j, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %0, ptr %i.q, align 8, !tbaa !43
  store i32 402653200, ptr %i.p, align 8, !tbaa !52
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = or i32 %i.u, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit, %bb.b
  %.sroa.0.0 = phi i32 [ %i.h, %bb.b ], [ %i.v, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm7JSArray25createAndAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 !guid !136 {
bb.a:
  %i.a = tail call ptr @_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, i32 noundef %3, i32 noundef %4) ; 3 uses
  %.not = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !46
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !145  ; 2 uses
  %i.f = icmp ult i32 %i.e, 6
  br i1 %i.f, label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %i.e, -5                         ; 2 uses
  %i.h = tail call { i32, i64 } @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.g, i32 noundef %i.g) ; 2 uses
  %i.i = extractvalue { i32, i64 } %i.h, 0
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj.exit, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.k = extractvalue { i32, i64 } %i.h, 1        ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !46
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = and i64 %i.q, 562949949227008
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = icmp eq ptr %i.p, %i.s
  br i1 %i.t, label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i, label %bb.e, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.u = and i64 %i.k, 281474976710655
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.w = inttoptr i64 %i.u to ptr
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_13GCPointerBaseEPKNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef %i.w) #13
  br label %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d
  %i.x = ptrtoint ptr %0 to i64
  %i.y = sub i64 %i.k, %i.x
  %i.z = trunc i64 %i.y to i32
  store i32 %i.z, ptr %i.n, align 4, !tbaa !6
  br label %_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit

_ZN6hermes2vm8JSObject19allocatePropStorageENS0_6HandleIS1_EERNS0_7RuntimeEj.exit: ; preds = %bb.c
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.7) #14
  unreachable

_ZN6hermes2vm7Runtime23ignoreAllocationFailureENS0_15ExecutionStatusE.exit: ; preds = %_ZN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEE10setNonNullERNS0_11PointerBaseEPS4_RNS0_7HadesGCE.exit.i, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !guid !146 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.c = tail call ptr @_ZN6hermes2vm7JSArray24createNoAllocPropStorageERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS4_INS0_11HiddenClassEEEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr nonnull %i.b, i32 noundef %1, i32 noundef %2)
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 258) i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 %3) local_unnamed_addr #0 align 2 !guid !147 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = icmp ult i64 %i.a, -1970324836974592
  %i.c = bitcast i64 %i.a to double               ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.d, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.d = fptoui double %i.c to i64                ; 2 uses
  %i.e = shl i64 %i.d, 1
  %i.f = ashr exact i64 %i.e, 1
  %i.g = sitofp i64 %i.f to double
  %i.h = fcmp une double %i.c, %i.g
  %i.i = trunc i64 %i.d to i32
  br i1 %i.h, label %bb.c, label %_ZN6hermes16truncateToUInt32Ed.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.c) #13
  br label %_ZN6hermes16truncateToUInt32Ed.exit

bb.d:                                             ; preds = %bb.a
  %i.k = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #13 ; 2 uses
  %i.l = extractvalue { i32, i64 } %i.k, 0
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge, label %bb.e, !prof !44

bb.e:                                             ; preds = %bb.d
  %i.n = extractvalue { i32, i64 } %i.k, 1
  %i.o = bitcast i64 %i.n to double               ; 4 uses
  %i.p = fptoui double %i.o to i64                ; 2 uses
  %i.q = shl i64 %i.p, 1
  %i.r = ashr exact i64 %i.q, 1
  %i.s = sitofp i64 %i.r to double
  %i.t = fcmp une double %i.o, %i.s
  %i.u = trunc i64 %i.p to i32
  br i1 %i.t, label %bb.f, label %_ZN6hermes16truncateToUInt32Ed.exit19

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.o) #13
  br label %_ZN6hermes16truncateToUInt32Ed.exit19

_ZN6hermes16truncateToUInt32Ed.exit19:            ; preds = %bb.e, %bb.f
  %.1.i.i17 = phi i32 [ %i.u, %bb.e ], [ %i.v, %bb.f ] ; 2 uses
  %i.w = load i64, ptr %2, align 8, !tbaa !97
  %.mask.i = and i64 %i.w, -281474976710656
  %i.x = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.x, label %_ZN6hermes16truncateToUInt32Ed.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes16truncateToUInt32Ed.exit19
  %i.y = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #13 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.critedge, label %bb.h, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.ab = extractvalue { i32, i64 } %i.y, 1
  %i.ac = bitcast i64 %i.ab to double
  br label %_ZN6hermes16truncateToUInt32Ed.exit

_ZN6hermes16truncateToUInt32Ed.exit:              ; preds = %bb.h, %_ZN6hermes16truncateToUInt32Ed.exit19, %bb.c, %bb.b
  %.2 = phi double [ %i.c, %bb.c ], [ %i.ac, %bb.h ], [ %i.c, %bb.b ], [ %i.o, %_ZN6hermes16truncateToUInt32Ed.exit19 ]
  %.1 = phi i32 [ %i.j, %bb.c ], [ %.1.i.i17, %bb.h ], [ %i.i, %bb.b ], [ %.1.i.i17, %_ZN6hermes16truncateToUInt32Ed.exit19 ] ; 2 uses
  %i.ad = uitofp i32 %.1 to double
  %i.ae = fcmp une double %.2, %i.ad
  br i1 %i.ae, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes16truncateToUInt32Ed.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.af, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 20, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !51
  store ptr @.str.2, ptr %4, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.ai, align 8, !tbaa !53
  %i.aj = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  %i.ak = and i32 %i.aj, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.critedge

bb.i:                                             ; preds = %_ZN6hermes16truncateToUInt32Ed.exit
  %i.al = tail call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.1, i32 %3)
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.g, %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.028.1 = phi i32 [ %i.ak, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.al, %bb.i ], [ 0, %bb.d ], [ 0, %bb.g ]
  ret i32 %.sroa.028.1
}

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 258) i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %2, i32 %3) local_unnamed_addr #0 align 2 !guid !152 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %4 = alloca %"class.llvh::SmallVector.184", align 8 ; 9 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %6 = alloca %class.anon, align 8                ; 7 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8, !tbaa !46
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 4, !tbaa !6 ; 3 uses
  %i.e = and i32 %.sroa.0.0.copyload.i.i, 7
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.b, label %bb.c, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.g = ashr i32 %.sroa.0.0.copyload.i.i, 3
  %i.h = sitofp i32 %i.g to double
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit

bb.c:                                             ; preds = %bb.a
  %i.i = and i32 %.sroa.0.0.copyload.i.i, -8
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %i.i to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !43
  br label %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit

_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi double [ %i.h, %bb.b ], [ %i.o, %bb.c ]
  %i.p = fptoui double %.0.i.i to i32             ; 2 uses
  %.not = icmp ult i32 %2, %i.p
  br i1 %.not, label %bb.j, label %bb.d, !prof !44

bb.d:                                             ; preds = %_ZN6hermes2vm7JSArray9getLengthEPKS1_RNS0_11PointerBaseE.exit
  %i.q = uitofp i32 %2 to double                  ; 2 uses
  %i.r = shl i32 %2, 3                            ; 2 uses
  %i.s = ashr exact i32 %i.r, 3
  %i.t = bitcast double %i.q to i64
  %i.u = sitofp i32 %i.s to double
  %i.v = bitcast double %i.u to i64
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f, !prof !40

bb.e:                                             ; preds = %bb.d
  %i.x = or disjoint i32 %i.r, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.aa, %i.ac
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ae = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, i32 noundef 16) #13
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !76
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i: ; preds = %bb.h, %bb.g
  %i.af = phi ptr [ %i.ae, %bb.g ], [ %i.z, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store double %i.q, ptr %i.ag, align 8, !tbaa !43
  store i32 402653200, ptr %i.af, align 8, !tbaa !52
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = or i32 %i.ak, 3
  %.sroa.0.0.copyload.i.i.i35.pre = load i64, ptr %0, align 8, !tbaa !46
  %.pre100 = and i64 %.sroa.0.0.copyload.i.i.i35.pre, 281474976710655
  %.pre102 = inttoptr i64 %.pre100 to ptr
  br label %_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeNumberValueEdRNS0_7RuntimeE.exit: ; preds = %bb.e, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i
  %.pre-phi103 = phi ptr [ %i.c, %bb.e ], [ %.pre102, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ]
  %.sroa.0.0.i = phi i32 [ %i.x, %bb.e ], [ %i.al, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre-phi103, i64 32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1632
end_hunk_0
