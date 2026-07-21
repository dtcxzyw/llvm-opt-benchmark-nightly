inline.NumInlined: 2755
inline.NumDeleted: 1034
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes2vm11Interpreter21createArrayFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %2) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @_ZNK6hermes2vm9CodeBlock18getArrayBufferIterEjj(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::SerializedLiteralParser") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %4, i32 noundef %3) #10
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !405
  %.not2021 = icmp eq i32 %i.d, 0
  br i1 %.not2021, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = ptrtoint ptr %0 to i64                   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1632
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit
  %.022 = phi i32 [ 0, %.lr.ph ], [ %i.as, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit ] ; 2 uses
  %i.j = call i64 @_ZN6hermes2vm23SerializedLiteralParser3getERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(9816) %0) #10 ; 9 uses
  %i.k = ashr i64 %i.j, 47
  switch i64 %i.k, label %bb.k [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.d
    i64 -11, label %bb.e
    i64 -10, label %bb.f
    i64 -9, label %bb.g
    i64 -6, label %bb.h
    i64 -5, label %bb.h
    i64 -4, label %bb.i
    i64 -3, label %bb.i
    i64 -2, label %bb.j
    i64 -1, label %bb.j
  ]

bb.d:                                             ; preds = %bb.c
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.e:                                             ; preds = %bb.c
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.f:                                             ; preds = %bb.c
  %i.l = trunc i64 %i.j to i1
  %i.m = select i1 %i.l, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.g:                                             ; preds = %bb.c
  %i.n = trunc i64 %i.j to i32
  %i.o = shl i32 %i.n, 3
  %i.p = or disjoint i32 %i.o, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.c, %bb.c
  %i.q = sub i64 %i.j, %i.e
  %i.r = trunc i64 %i.q to i32
  %i.s = or i32 %i.r, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.c, %bb.c
  %i.t = sub i64 %i.j, %i.e
  %i.u = trunc i64 %i.t to i32
  %i.v = or i32 %i.u, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.j:                                             ; preds = %bb.c, %bb.c
  %i.w = sub i64 %i.j, %i.e
  %i.x = trunc i64 %i.w to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.c
  %i.y = bitcast i64 %i.j to double
  %i.z = fptosi double %i.y to i32
  %i.aa = shl i32 %i.z, 3                         ; 2 uses
  %i.ab = ashr exact i32 %i.aa, 3
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  %i.ae = icmp eq i64 %i.j, %i.ad
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !60

bb.l:                                             ; preds = %bb.k
  %i.af = or disjoint i32 %i.aa, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.ah, %i.ai
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !65

bb.n:                                             ; preds = %bb.m
  %i.aj = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, i32 noundef 16) #10
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.o:                                             ; preds = %bb.m
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !72
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.o, %bb.n
  %i.ak = phi ptr [ %i.aj, %bb.n ], [ %i.ag, %bb.o ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.j, ptr %i.al, align 8, !tbaa !77
  store i32 402653200, ptr %i.ak, align 8, !tbaa !81
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.am, %i.e
  %i.ao = trunc i64 %i.an to i32
  %i.ap = or i32 %i.ao, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.l, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.c ], [ %i.x, %bb.j ], [ 14, %bb.d ], [ 15, %bb.e ], [ %i.m, %bb.f ], [ %i.p, %bb.g ], [ %i.s, %bb.h ], [ %i.v, %bb.i ], [ %i.af, %bb.l ], [ %i.ap, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.a, align 8, !tbaa !61
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = add i32 %.022, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.au = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.av = add i64 %i.au, %i.e
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !82
  %i.ba = sub i32 %.022, %i.az                    ; 4 uses
  %i.bb = icmp ult i32 %i.ba, 4096
  br i1 %i.bb, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, label %bb.p, !prof !60

bb.p:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.bc = add i32 %i.ba, -4096
  %i.bd = lshr i32 %i.bc, 10
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 16392
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !91
  %i.bi = zext i32 %i.bh to i64
  %i.bj = add i64 %i.bi, %i.e
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = and i32 %i.ba, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i: ; preds = %bb.p, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %.sink6.i.i.i.i = phi ptr [ %i.bk, %bb.p ], [ %i.ax, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %.sink5.i.i.i.i = phi i32 [ %i.bl, %bb.p ], [ %i.ba, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 8
  %i.bn = zext nneg i32 %.sink5.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = and i64 %i.bq, -4194304
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = icmp eq ptr %i.bp, %i.bs
  br i1 %i.bt, label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, label %bb.q, !prof !60

bb.q:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.bo, i32 %.sroa.04.0.i) #10
  br label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit

_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, %bb.q
  store i32 %.sroa.04.0.i, ptr %i.bo, align 4, !tbaa !91
  %i.bu = load i32, ptr %i.c, align 8, !tbaa !405
  %.not20 = icmp eq i32 %i.bu, 0
  br i1 %.not20, label %._crit_edge, label %bb.c, !llvm.loop !411

._crit_edge:                                      ; preds = %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, %bb.b
  %.sroa.0.0.copyload.i.i.i14 = load i64, ptr %i.a, align 8, !tbaa !61
  %i.bv = or i64 %.sroa.0.0.copyload.i.i.i14, -281474976710656
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.019.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.a ]
  %.sroa.3.0 = phi i64 [ %i.bv, %._crit_edge ], [ -1688849860263936, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare void @_ZNK6hermes2vm9CodeBlock18getArrayBufferIterEjj(ptr dead_on_unwind writable sret(%"class.hermes::vm::SerializedLiteralParser") align 8, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7Runtime21interpretFunctionImplEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.hermes::vm::InterpreterState", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %1, ptr %2, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !414
  %i.b = call { i32, i64 } @_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret { i32, i64 } %i.b
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden { i32, i64 } @_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::GCScope", align 8 ; 13 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 4 uses
  %7 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 4 uses
  %8 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 5 uses
  %9 = alloca %"class.hermes::vm::HermesValue32", align 4 ; 4 uses
  %10 = alloca %"class.hermes::vm::HermesValue32", align 4 ; 4 uses
  %11 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 4 ; 4 uses
  %12 = alloca %"class.hermes::vm::MutableHandle", align 8 ; 3 uses
  %13 = alloca %"class.hermes::vm::MutableHandle.186", align 8 ; 2 uses
  %14 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 4 ; 3 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %16 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9808 ; 212 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !412
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9480 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !328
  %i.f = add i64 %i.e, 1                          ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !328
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9488
  %i.h = load i64, ptr %i.g, align 8, !tbaa !329
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, !prof !65

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef 1) #10
  br label %bb.wu

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.a
  store ptr %0, ptr %2, align 8, !tbaa !415
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46
  store ptr %i.m, ptr %i.k, align 8, !tbaa !416
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 87 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 32 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !353
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 156
  store i32 4, ptr %i.r, align 4, !tbaa !355
  store ptr %i.o, ptr %i.p, align 8
  store i32 1, ptr %i.q, align 8, !tbaa !354
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 86 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 86 uses
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 86 uses
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store ptr %2, ptr %i.l, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 86 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !61
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9736
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 9448 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 9472 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 9440
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.an = ptrtoint ptr %0 to i64                  ; 32 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1632 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8489 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1520 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 9744 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 9616
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1648 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1656 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %.backedge3766

.backedge3766:                                    ; preds = %.backedge3766.backedge, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.br = phi ptr [ %i.b, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %.02594.be, %.backedge3766.backedge ] ; 2 uses
  %.02594 = phi ptr [ null, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %.02594.be, %.backedge3766.backedge ]
  %.0 = phi ptr [ %i.c, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %.0.be, %.backedge3766.backedge ] ; 4 uses
  %i.bs = load ptr, ptr %i.w, align 8, !tbaa !417 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !418, !range !428, !noundef !44
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN6hermes2vm20CodeCoverageProfiler12markExecutedEPNS0_9CodeBlockE.exit, label %_ZNK6hermes2vm20CodeCoverageProfiler9isEnabledEv.exit.i

_ZNK6hermes2vm20CodeCoverageProfiler9isEnabledEv.exit.i: ; preds = %.backedge3766
  %i.bw = load atomic i8, ptr @_ZZN6hermes2vm20CodeCoverageProfiler17globalEnabledFlagEvE17globalEnabledFlag monotonic, align 1, !range !428, !noundef !44
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.c, label %_ZN6hermes2vm20CodeCoverageProfiler12markExecutedEPNS0_9CodeBlockE.exit, !prof !429

bb.c:                                             ; preds = %_ZNK6hermes2vm20CodeCoverageProfiler9isEnabledEv.exit.i
  call void @_ZN6hermes2vm20CodeCoverageProfiler20markExecutedSlowPathEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(97) %i.bs, ptr noundef %.0) #10
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZN6hermes2vm20CodeCoverageProfiler12markExecutedEPNS0_9CodeBlockE.exit

_ZN6hermes2vm20CodeCoverageProfiler12markExecutedEPNS0_9CodeBlockE.exit: ; preds = %.backedge3766, %_ZNK6hermes2vm20CodeCoverageProfiler9isEnabledEv.exit.i, %bb.c
  %i.by = phi ptr [ %i.br, %.backedge3766 ], [ %i.br, %_ZNK6hermes2vm20CodeCoverageProfiler9isEnabledEv.exit.i ], [ %.pre, %bb.c ]
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !330 ; 7 uses
  %i.ca = ptrtoint ptr %i.bz to i64               ; 2 uses
  store i64 %i.ca, ptr %i.y, align 8, !tbaa !68
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = getelementptr inbounds i8, ptr %i.bz, i64 -16 ; 2 uses
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !430 ; 3 uses
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = trunc i64 %i.cg to i1
  br i1 %i.ch, label %bb.d, label %bb.e, !prof !65

bb.d:                                             ; preds = %_ZN6hermes2vm20CodeCoverageProfiler12markExecutedEPNS0_9CodeBlockE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 19
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !431
  br label %_ZNK6hermes2vm9CodeBlock12getFrameSizeEv.exit

bb.e:                                             ; preds = %_ZN6hermes2vm20CodeCoverageProfiler12markExecutedEPNS0_9CodeBlockE.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i32, ptr %i.ck, align 1
  %i.cm = lshr i32 %i.cl, 25
  br label %_ZNK6hermes2vm9CodeBlock12getFrameSizeEv.exit

_ZNK6hermes2vm9CodeBlock12getFrameSizeEv.exit:    ; preds = %bb.d, %bb.e
  %.0.i.i = phi i32 [ %i.cj, %bb.d ], [ %i.cm, %bb.e ]
  %i.cn = add i32 %.0.i.i, 1                      ; 2 uses
  %i.co = load ptr, ptr %i.z, align 8, !tbaa !331
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.ca
  %i.cr = lshr exact i64 %i.cq, 3
  %i.cs = and i64 %i.cr, 4294967295
  %i.ct = zext i32 %i.cn to i64
  %i.cu = add nuw nsw i64 %i.ct, 32
  %.not3680 = icmp samesign ugt i64 %i.cu, %i.cs
  br i1 %.not3680, label %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes2vm9CodeBlock12getFrameSizeEv.exit
  call void @_ZN6hermes2vm7Runtime10allocStackEjNS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.cn, i64 -1688849860263936) #10
  %i.cv = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !433 ; 2 uses
  %i.cx = load ptr, ptr %i.ce, align 8, !tbaa !430 ; 2 uses
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = trunc i64 %i.cy to i1
  %..i.i = select i1 %i.cz, i64 29, i64 15, !prof !65
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %..i.i
  %.sroa.0.0.i.i = load i8, ptr %i.da, align 1, !tbaa !81 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.bz, i64 -40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !69
  %.mask.i.i = and i64 %i.dc, -140737488355328
  %i.dd = icmp ne i64 %.mask.i.i, -1688849860263936 ; 2 uses
  %i.de = and i8 %.sroa.0.0.i.i, 3
  %i.df = zext i1 %i.dd to i8
  %i.dg = icmp eq i8 %i.de, %i.df
  br i1 %i.dg, label %bb.g, label %bb.h, !prof !65

bb.g:                                             ; preds = %bb.f
  store ptr %i.cw, ptr %i.a, align 8, !tbaa !108
  br i1 %i.dd, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit2736, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i32 1, ptr %i.aa, align 8, !tbaa !369
  store i64 37, ptr %i.ab, align 8, !tbaa !370
  store i64 0, ptr %i.ac, align 8, !tbaa !371
  store ptr @.str.11, ptr %3, align 8, !tbaa !81
  store i32 3, ptr %i.ad, align 8, !tbaa !366
  %i.dh = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.wm

_ZN6hermes2vm11TwineChar16C2EPKc.exit2736:        ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 1, ptr %i.ae, align 8, !tbaa !369
  store i64 29, ptr %i.af, align 8, !tbaa !370
  store i64 0, ptr %i.ag, align 8, !tbaa !371
  store ptr @.str.12, ptr %4, align 8, !tbaa !81
  store i32 3, ptr %i.ah, align 8, !tbaa !366
  %i.di = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.wm

bb.h:                                             ; preds = %bb.f, %bb.wt
  %.sroa.03592.0.in.in = phi i8 [ %.sroa.0.0.i.i3072, %bb.wt ], [ %.sroa.0.0.i.i, %bb.f ]
  %.02599 = phi ptr [ %.22601, %bb.wt ], [ %i.cd, %bb.f ]
  %.12595 = phi ptr [ %i.faf, %bb.wt ], [ %i.cw, %bb.f ]
  %.1 = phi ptr [ %.3, %bb.wt ], [ %.0, %bb.f ]
  %.sroa.03592.0.in = lshr i8 %.sroa.03592.0.in.in, 2
  %.sroa.03592.0 = and i8 %.sroa.03592.0.in, 1    ; 2 uses
  br label %.backedge

bb.i:                                             ; preds = %.backedge
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !81
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !81
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dp
  %.sroa.0.0.copyload.i2739 = load i64, ptr %i.dm, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2739, ptr %i.dq, align 8, !tbaa !69
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.i, %bb.j, %bb.l, %bb.m, %bb.o, %bb.p, %bb.u, %bb.y, %bb.aa, %bb.aq, %bb.aw, %bb.ay, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.bh, %bb.bu, %bb.bw, %bb.bx, %bb.ca, %bb.cb, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread, %bb.cf, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828, %bb.dd, %bb.df, %._crit_edge3856, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2859, %bb.dz, %bb.ea, %bb.eb, %bb.ec, %bb.ee, %bb.eg, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2870, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit, %bb.fp, %bb.gr, %bb.gt, %bb.gx, %bb.hb, %bb.he, %bb.hg, %._crit_edge, %bb.hv, %bb.hz, %bb.ib, %bb.ig, %bb.ih, %bb.ii, %bb.il, %bb.io, %bb.ir, %bb.iu, %bb.ix, %bb.ja, %bb.jc, %bb.je, %bb.jg, %bb.ji, %bb.jl, %bb.jm, %_ZN6hermes15truncateToInt32Ed.exit, %bb.jr, %bb.jt, %bb.jv, %bb.jz, %bb.ka, %bb.kc, %bb.ke, %bb.kf, %bb.kg, %bb.ki, %bb.kk, %bb.km, %bb.ko, %bb.kq, %bb.kt, %bb.ku, %bb.kw, %bb.kx, %bb.ky, %bb.kz, %bb.lb, %bb.ld, %bb.le, %bb.lh, %bb.li, %bb.lk, %bb.ln, %bb.ls, %bb.mc, %bb.mh, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992, %bb.mr, %bb.ms, %bb.mt, %bb.mu, %bb.mv, %bb.mw, %bb.mx, %bb.my, %bb.mz, %bb.na, %bb.nb, %bb.nc, %bb.nd, %bb.nh, %bb.nk, %bb.nl, %bb.no, %bb.np, %bb.ns, %bb.nt, %_ZN6hermes15truncateToInt32Ed.exit3017, %bb.nz, %_ZN6hermes15truncateToInt32Ed.exit3025, %bb.of, %_ZN6hermes15truncateToInt32Ed.exit3033, %bb.ol, %_ZN6hermes15truncateToInt32Ed.exit3041, %bb.or, %_ZN6hermes15truncateToInt32Ed.exit3049, %bb.ox, %_ZN6hermes15truncateToInt32Ed.exit3057, %bb.pd, %bb.pg, %bb.ph, %bb.pk, %bb.pl, %bb.po, %bb.pp, %bb.ps, %bb.pt, %bb.px, %bb.py, %bb.qa, %bb.qb, %bb.qf, %bb.qg, %bb.qi, %bb.qj, %bb.qn, %bb.qo, %bb.qq, %bb.qr, %bb.qv, %bb.qw, %bb.qy, %bb.qz, %bb.rd, %bb.re, %bb.rg, %bb.rh, %bb.rl, %bb.rm, %bb.ro, %bb.rp, %bb.rt, %bb.ru, %bb.rw, %bb.rx, %bb.sb, %bb.sc, %bb.se, %bb.sf, %bb.sj, %bb.sk, %bb.sm, %bb.sn, %bb.sr, %bb.ss, %bb.su, %bb.sv, %bb.sz, %bb.ta, %bb.tc, %bb.td, %bb.th, %bb.ti, %bb.tk, %bb.tl, %bb.tp, %bb.tq, %bb.ts, %bb.tt, %bb.tx, %bb.ty, %bb.ua, %bb.ub, %bb.uf, %bb.ug, %bb.ui, %bb.uj, %bb.un, %bb.uo, %bb.uq, %bb.ur, %bb.ut, %bb.uu, %bb.uw, %bb.ux, %bb.uz, %bb.va, %bb.vc, %bb.vd, %bb.vg, %bb.vh, %bb.vk, %bb.vl, %bb.vo, %bb.vp, %bb.vs, %bb.vt, %bb.vv, %bb.vx, %bb.vz, %bb.wb, %bb.wd, %bb.wk, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i
  %.sink4083.sink.in.be = phi ptr [ %i.dr, %bb.i ], [ %i.ea, %bb.j ], [ %i.eo, %bb.l ], [ %i.et, %bb.m ], [ %i.fi, %bb.o ], [ %i.fn, %bb.p ], [ %i.gc, %bb.u ], [ %i.go, %bb.y ], [ %i.gt, %bb.aa ], [ %.12607, %bb.aq ], [ %i.oc, %bb.aw ], [ %i.oj, %bb.ay ], [ %i.op, %bb.ba ], [ %i.ou, %bb.bb ], [ %i.oz, %bb.bc ], [ %i.pe, %bb.bd ], [ %.22608, %bb.bh ], [ %i.sg, %bb.bu ], [ %i.to, %bb.bw ], [ %i.tt, %bb.bx ], [ %i.uj, %bb.ca ], [ %i.uk, %bb.cb ], [ %i.ut, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread ], [ %i.uu, %bb.cf ], [ %i.va, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810 ], [ %i.wq, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819 ], [ %i.yg, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828 ], [ %i.aam, %bb.dd ], [ %i.abh, %bb.df ], [ %i.adn, %._crit_edge3856 ], [ %i.afn, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit ], [ %i.ahz, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854 ], [ %i.aiu, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit ], [ %i.ajp, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856 ], [ %i.akm, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit ], [ %i.alj, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2859 ], [ %i.alz, %bb.dz ], [ %i.amp, %bb.ea ], [ %i.amu, %bb.eb ], [ %i.ana, %bb.ec ], [ %i.ane, %bb.ee ], [ %i.ani, %bb.eg ], [ %i.anw, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2870 ], [ %i.anw, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ], [ %i.anw, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit ], [ %i.anw, %bb.fp ], [ %i.exe, %bb.wk ], [ %i.aue, %bb.gr ], [ %i.aue, %bb.gt ], [ %i.bag, %bb.gx ], [ %i.bbf, %bb.hb ], [ %.82614, %bb.he ], [ %i.bca, %bb.hg ], [ %i.bfa, %._crit_edge ], [ %.11, %bb.hv ], [ %.12, %bb.hz ], [ %i.bgy, %bb.ib ], [ %.13, %bb.ig ], [ %i.bhy, %bb.ih ], [ %i.bic, %bb.ii ], [ %i.bil, %bb.il ], [ %i.biu, %bb.io ], [ %i.bjd, %bb.ir ], [ %i.bjm, %bb.iu ], [ %i.bjw, %bb.ix ], [ %i.bkg, %bb.ja ], [ %i.bkt, %bb.jc ], [ %i.blg, %bb.je ], [ %i.blt, %bb.jg ], [ %i.bmg, %bb.ji ], [ %i.bni, %bb.jl ], [ %i.bnz, %bb.jm ], [ %i.bou, %_ZN6hermes15truncateToInt32Ed.exit ], [ %i.bph, %bb.jr ], [ %i.bpw, %bb.jt ], [ %i.bqj, %bb.jv ], [ %i.brq, %bb.jz ], [ %i.bsj, %bb.ka ], [ %i.bsq, %bb.kc ], [ %i.bsz, %bb.ke ], [ %i.bti, %bb.kf ], [ %i.bty, %bb.kg ], [ %i.bur, %bb.ki ], [ %i.bvi, %bb.kk ], [ %i.bvs, %bb.km ], [ %i.bwl, %bb.ko ], [ %i.bxd, %bb.kq ], [ %i.byp, %bb.kt ], [ %i.bzc, %bb.ku ], [ %i.bzy, %bb.kw ], [ %i.cao, %bb.kx ], [ %i.cbf, %bb.ky ], [ %i.cbs, %bb.kz ], [ %i.cch, %bb.lb ], [ %i.ccu, %bb.ld ], [ %i.cdf, %bb.le ], [ %i.ceb, %bb.lh ], [ %i.ces, %bb.li ], [ %i.cfl, %bb.lk ], [ %i.cgk, %bb.ln ], [ %.92615, %bb.ls ], [ %i.cht, %bb.mc ], [ %i.clf, %bb.mh ], [ %i.cnd, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992 ], [ %i.coh, %bb.mr ], [ %i.col, %bb.ms ], [ %i.cot, %bb.mt ], [ %i.cpb, %bb.mu ], [ %i.cpk, %bb.mv ], [ %i.cpx, %bb.mw ], [ %i.cqj, %bb.mx ], [ %i.cqo, %bb.my ], [ %i.cqt, %bb.mz ], [ %i.cqy, %bb.na ], [ %i.crd, %bb.nb ], [ %i.cri, %bb.nc ], [ %i.crn, %bb.nd ], [ %i.csb, %bb.nh ], [ %i.cti, %bb.nk ], [ %i.ctz, %bb.nl ], [ %i.cvb, %bb.no ], [ %i.cvs, %bb.np ], [ %i.cwu, %bb.ns ], [ %i.cxl, %bb.nt ], [ %i.cyv, %_ZN6hermes15truncateToInt32Ed.exit3017 ], [ %i.czm, %bb.nz ], [ %i.daw, %_ZN6hermes15truncateToInt32Ed.exit3025 ], [ %i.dbn, %bb.of ], [ %i.dcx, %_ZN6hermes15truncateToInt32Ed.exit3033 ], [ %i.ddo, %bb.ol ], [ %i.dez, %_ZN6hermes15truncateToInt32Ed.exit3041 ], [ %i.dfq, %bb.or ], [ %i.dhb, %_ZN6hermes15truncateToInt32Ed.exit3049 ], [ %i.dhs, %bb.ox ], [ %i.djd, %_ZN6hermes15truncateToInt32Ed.exit3057 ], [ %i.dju, %bb.pd ], [ %i.dkq, %bb.pg ], [ %i.dli, %bb.ph ], [ %i.dme, %bb.pk ], [ %i.dmw, %bb.pl ], [ %i.dns, %bb.po ], [ %i.dok, %bb.pp ], [ %i.dpg, %bb.ps ], [ %i.dpy, %bb.pt ], [ %i.dqz, %bb.px ], [ %i.dra, %bb.py ], [ %i.drp, %bb.qa ], [ %i.drq, %bb.qb ], [ %i.dsr, %bb.qf ], [ %i.dss, %bb.qg ], [ %i.dth, %bb.qi ], [ %i.dti, %bb.qj ], [ %i.dug, %bb.qn ], [ %i.duk, %bb.qo ], [ %i.duw, %bb.qq ], [ %i.dva, %bb.qr ], [ %i.dvy, %bb.qv ], [ %i.dwc, %bb.qw ], [ %i.dwo, %bb.qy ], [ %i.dws, %bb.qz ], [ %i.dxt, %bb.rd ], [ %i.dxu, %bb.re ], [ %i.dyj, %bb.rg ], [ %i.dyk, %bb.rh ], [ %i.dzl, %bb.rl ], [ %i.dzm, %bb.rm ], [ %i.eab, %bb.ro ], [ %i.eac, %bb.rp ], [ %i.eba, %bb.rt ], [ %i.ebe, %bb.ru ], [ %i.ebq, %bb.rw ], [ %i.ebu, %bb.rx ], [ %i.ecs, %bb.sb ], [ %i.ecw, %bb.sc ], [ %i.edi, %bb.se ], [ %i.edm, %bb.sf ], [ %i.een, %bb.sj ], [ %i.eeo, %bb.sk ], [ %i.efd, %bb.sm ], [ %i.efe, %bb.sn ], [ %i.egf, %bb.sr ], [ %i.egg, %bb.ss ], [ %i.egv, %bb.su ], [ %i.egw, %bb.sv ], [ %i.ehu, %bb.sz ], [ %i.ehy, %bb.ta ], [ %i.eik, %bb.tc ], [ %i.eio, %bb.td ], [ %i.ejm, %bb.th ], [ %i.ejq, %bb.ti ], [ %i.ekc, %bb.tk ], [ %i.ekg, %bb.tl ], [ %i.elh, %bb.tp ], [ %i.eli, %bb.tq ], [ %i.elx, %bb.ts ], [ %i.ely, %bb.tt ], [ %i.emz, %bb.tx ], [ %i.ena, %bb.ty ], [ %i.enp, %bb.ua ], [ %i.enq, %bb.ub ], [ %i.eoo, %bb.uf ], [ %i.eos, %bb.ug ], [ %i.epe, %bb.ui ], [ %i.epi, %bb.uj ], [ %i.eqg, %bb.un ], [ %i.eqk, %bb.uo ], [ %i.eqw, %bb.uq ], [ %i.era, %bb.ur ], [ %i.ern, %bb.ut ], [ %i.ero, %bb.uu ], [ %i.esb, %bb.uw ], [ %i.esc, %bb.ux ], [ %i.esm, %bb.uz ], [ %i.esq, %bb.va ], [ %i.eta, %bb.vc ], [ %i.ete, %bb.vd ], [ %i.etu, %bb.vg ], [ %i.etv, %bb.vh ], [ %i.eul, %bb.vk ], [ %i.eum, %bb.vl ], [ %i.euz, %bb.vo ], [ %i.evd, %bb.vp ], [ %i.evq, %bb.vs ], [ %i.evu, %bb.vt ], [ %i.evy, %bb.vv ], [ %i.ewc, %bb.vx ], [ %i.ewg, %bb.vz ], [ %i.ewk, %bb.wb ], [ %i.ewo, %bb.wd ], [ %i.aue, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ], [ %i.aue, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i ]
  %.sroa.03592.1.be = phi i8 [ %.sroa.03592.1, %bb.i ], [ %.sroa.03592.1, %bb.j ], [ %.sroa.03592.1, %bb.l ], [ %.sroa.03592.1, %bb.m ], [ %.sroa.03592.1, %bb.o ], [ %.sroa.03592.1, %bb.p ], [ %.sroa.03592.1, %bb.u ], [ %.sroa.03592.1, %bb.y ], [ %.sroa.03592.1, %bb.aa ], [ %.sroa.03592.1, %bb.aq ], [ %.sroa.03592.1, %bb.aw ], [ %.sroa.03592.1, %bb.ay ], [ %.sroa.03592.1, %bb.ba ], [ %.sroa.03592.1, %bb.bb ], [ %.sroa.03592.1, %bb.bc ], [ %.sroa.03592.1, %bb.bd ], [ %.sroa.03592.1, %bb.bh ], [ %.sroa.03592.1, %bb.bu ], [ %.lobit, %bb.bw ], [ %.sroa.03592.1, %bb.bx ], [ %.sroa.03592.1, %bb.ca ], [ %.sroa.03592.1, %bb.cb ], [ %.sroa.03592.1, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread ], [ %.sroa.03592.1, %bb.cf ], [ %.sroa.03592.1, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810 ], [ %.sroa.03592.1, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819 ], [ %.sroa.03592.1, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828 ], [ %.sroa.03592.1, %bb.dd ], [ %.sroa.03592.1, %bb.df ], [ %.sroa.03592.1, %._crit_edge3856 ], [ %.sroa.03592.1, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit ], [ %.sroa.03592.1, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854 ], [ %.sroa.03592.1, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit ], [ %.sroa.03592.1, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856 ], [ %.sroa.03592.1, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit ], [ %.sroa.03592.1, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2859 ], [ %.sroa.03592.1, %bb.dz ], [ %.sroa.03592.1, %bb.ea ], [ %.sroa.03592.1, %bb.eb ], [ %.sroa.03592.1, %bb.ec ], [ %.sroa.03592.1, %bb.ee ], [ %.sroa.03592.1, %bb.eg ], [ %.sroa.03592.1, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2870 ], [ %.sroa.03592.1, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ], [ %.sroa.03592.1, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit ], [ %.sroa.03592.1, %bb.fp ], [ %.sroa.03592.1, %bb.wk ], [ %.sroa.03592.1, %bb.gr ], [ %.sroa.03592.1, %bb.gt ], [ %.sroa.03592.1, %bb.gx ], [ %.sroa.03592.1, %bb.hb ], [ %.sroa.03592.1, %bb.he ], [ %.sroa.03592.1, %bb.hg ], [ %.sroa.03592.1, %._crit_edge ], [ %.sroa.03592.1, %bb.hv ], [ %.sroa.03592.1, %bb.hz ], [ %.sroa.03592.1, %bb.ib ], [ %.sroa.03592.1, %bb.ig ], [ %.sroa.03592.1, %bb.ih ], [ %.sroa.03592.1, %bb.ii ], [ %.sroa.03592.1, %bb.il ], [ %.sroa.03592.1, %bb.io ], [ %.sroa.03592.1, %bb.ir ], [ %.sroa.03592.1, %bb.iu ], [ %.sroa.03592.1, %bb.ix ], [ %.sroa.03592.1, %bb.ja ], [ %.sroa.03592.1, %bb.jc ], [ %.sroa.03592.1, %bb.je ], [ %.sroa.03592.1, %bb.jg ], [ %.sroa.03592.1, %bb.ji ], [ %.sroa.03592.1, %bb.jl ], [ %.sroa.03592.1, %bb.jm ], [ %.sroa.03592.1, %_ZN6hermes15truncateToInt32Ed.exit ], [ %.sroa.03592.1, %bb.jr ], [ %.sroa.03592.1, %bb.jt ], [ %.sroa.03592.1, %bb.jv ], [ %.sroa.03592.1, %bb.jz ], [ %.sroa.03592.1, %bb.ka ], [ %.sroa.03592.1, %bb.kc ], [ %.sroa.03592.1, %bb.ke ], [ %.sroa.03592.1, %bb.kf ], [ %.sroa.03592.1, %bb.kg ], [ %.sroa.03592.1, %bb.ki ], [ %.sroa.03592.1, %bb.kk ], [ %.sroa.03592.1, %bb.km ], [ %.sroa.03592.1, %bb.ko ], [ %.sroa.03592.1, %bb.kq ], [ %.sroa.03592.1, %bb.kt ], [ %.sroa.03592.1, %bb.ku ], [ %.sroa.03592.1, %bb.kw ], [ %.sroa.03592.1, %bb.kx ], [ %.sroa.03592.1, %bb.ky ], [ %.sroa.03592.1, %bb.kz ], [ %.sroa.03592.1, %bb.lb ], [ %.sroa.03592.1, %bb.ld ], [ %.sroa.03592.1, %bb.le ], [ %.sroa.03592.1, %bb.lh ], [ %.sroa.03592.1, %bb.li ], [ %.sroa.03592.1, %bb.lk ], [ %.sroa.03592.1, %bb.ln ], [ %.sroa.03592.1, %bb.ls ], [ %.sroa.03592.1, %bb.mc ], [ %.sroa.03592.1, %bb.mh ], [ %.sroa.03592.1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992 ], [ %.sroa.03592.1, %bb.mr ], [ %.sroa.03592.1, %bb.ms ], [ %.sroa.03592.1, %bb.mt ], [ %.sroa.03592.1, %bb.mu ], [ %.sroa.03592.1, %bb.mv ], [ %.sroa.03592.1, %bb.mw ], [ %.sroa.03592.1, %bb.mx ], [ %.sroa.03592.1, %bb.my ], [ %.sroa.03592.1, %bb.mz ], [ %.sroa.03592.1, %bb.na ], [ %.sroa.03592.1, %bb.nb ], [ %.sroa.03592.1, %bb.nc ], [ %.sroa.03592.1, %bb.nd ], [ %.sroa.03592.1, %bb.nh ], [ %.sroa.03592.1, %bb.nk ], [ %.sroa.03592.1, %bb.nl ], [ %.sroa.03592.1, %bb.no ], [ %.sroa.03592.1, %bb.np ], [ %.sroa.03592.1, %bb.ns ], [ %.sroa.03592.1, %bb.nt ], [ %.sroa.03592.1, %_ZN6hermes15truncateToInt32Ed.exit3017 ], [ %.sroa.03592.1, %bb.nz ], [ %.sroa.03592.1, %_ZN6hermes15truncateToInt32Ed.exit3025 ], [ %.sroa.03592.1, %bb.of ], [ %.sroa.03592.1, %_ZN6hermes15truncateToInt32Ed.exit3033 ], [ %.sroa.03592.1, %bb.ol ], [ %.sroa.03592.1, %_ZN6hermes15truncateToInt32Ed.exit3041 ], [ %.sroa.03592.1, %bb.or ], [ %.sroa.03592.1, %_ZN6hermes15truncateToInt32Ed.exit3049 ], [ %.sroa.03592.1, %bb.ox ], [ %.sroa.03592.1, %_ZN6hermes15truncateToInt32Ed.exit3057 ], [ %.sroa.03592.1, %bb.pd ], [ %.sroa.03592.1, %bb.pg ], [ %.sroa.03592.1, %bb.ph ], [ %.sroa.03592.1, %bb.pk ], [ %.sroa.03592.1, %bb.pl ], [ %.sroa.03592.1, %bb.po ], [ %.sroa.03592.1, %bb.pp ], [ %.sroa.03592.1, %bb.ps ], [ %.sroa.03592.1, %bb.pt ], [ %.sroa.03592.1, %bb.px ], [ %.sroa.03592.1, %bb.py ], [ %.sroa.03592.1, %bb.qa ], [ %.sroa.03592.1, %bb.qb ], [ %.sroa.03592.1, %bb.qf ], [ %.sroa.03592.1, %bb.qg ], [ %.sroa.03592.1, %bb.qi ], [ %.sroa.03592.1, %bb.qj ], [ %.sroa.03592.1, %bb.qn ], [ %.sroa.03592.1, %bb.qo ], [ %.sroa.03592.1, %bb.qq ], [ %.sroa.03592.1, %bb.qr ], [ %.sroa.03592.1, %bb.qv ], [ %.sroa.03592.1, %bb.qw ], [ %.sroa.03592.1, %bb.qy ], [ %.sroa.03592.1, %bb.qz ], [ %.sroa.03592.1, %bb.rd ], [ %.sroa.03592.1, %bb.re ], [ %.sroa.03592.1, %bb.rg ], [ %.sroa.03592.1, %bb.rh ], [ %.sroa.03592.1, %bb.rl ], [ %.sroa.03592.1, %bb.rm ], [ %.sroa.03592.1, %bb.ro ], [ %.sroa.03592.1, %bb.rp ], [ %.sroa.03592.1, %bb.rt ], [ %.sroa.03592.1, %bb.ru ], [ %.sroa.03592.1, %bb.rw ], [ %.sroa.03592.1, %bb.rx ], [ %.sroa.03592.1, %bb.sb ], [ %.sroa.03592.1, %bb.sc ], [ %.sroa.03592.1, %bb.se ], [ %.sroa.03592.1, %bb.sf ], [ %.sroa.03592.1, %bb.sj ], [ %.sroa.03592.1, %bb.sk ], [ %.sroa.03592.1, %bb.sm ], [ %.sroa.03592.1, %bb.sn ], [ %.sroa.03592.1, %bb.sr ], [ %.sroa.03592.1, %bb.ss ], [ %.sroa.03592.1, %bb.su ], [ %.sroa.03592.1, %bb.sv ], [ %.sroa.03592.1, %bb.sz ], [ %.sroa.03592.1, %bb.ta ], [ %.sroa.03592.1, %bb.tc ], [ %.sroa.03592.1, %bb.td ], [ %.sroa.03592.1, %bb.th ], [ %.sroa.03592.1, %bb.ti ], [ %.sroa.03592.1, %bb.tk ], [ %.sroa.03592.1, %bb.tl ], [ %.sroa.03592.1, %bb.tp ], [ %.sroa.03592.1, %bb.tq ], [ %.sroa.03592.1, %bb.ts ], [ %.sroa.03592.1, %bb.tt ], [ %.sroa.03592.1, %bb.tx ], [ %.sroa.03592.1, %bb.ty ], [ %.sroa.03592.1, %bb.ua ], [ %.sroa.03592.1, %bb.ub ], [ %.sroa.03592.1, %bb.uf ], [ %.sroa.03592.1, %bb.ug ], [ %.sroa.03592.1, %bb.ui ], [ %.sroa.03592.1, %bb.uj ], [ %.sroa.03592.1, %bb.un ], [ %.sroa.03592.1, %bb.uo ], [ %.sroa.03592.1, %bb.uq ], [ %.sroa.03592.1, %bb.ur ], [ %.sroa.03592.1, %bb.ut ], [ %.sroa.03592.1, %bb.uu ], [ %.sroa.03592.1, %bb.uw ], [ %.sroa.03592.1, %bb.ux ], [ %.sroa.03592.1, %bb.uz ], [ %.sroa.03592.1, %bb.va ], [ %.sroa.03592.1, %bb.vc ], [ %.sroa.03592.1, %bb.vd ], [ %.sroa.03592.1, %bb.vg ], [ %.sroa.03592.1, %bb.vh ], [ %.sroa.03592.1, %bb.vk ], [ %.sroa.03592.1, %bb.vl ], [ %.sroa.03592.1, %bb.vo ], [ %.sroa.03592.1, %bb.vp ], [ %.sroa.03592.1, %bb.vs ], [ %.sroa.03592.1, %bb.vt ], [ %.sroa.03592.1, %bb.vv ], [ %.sroa.03592.1, %bb.vx ], [ %.sroa.03592.1, %bb.vz ], [ %.sroa.03592.1, %bb.wb ], [ %.sroa.03592.1, %bb.wd ], [ %.sroa.03592.1, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ], [ %.sroa.03592.1, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i ]
  %.12604.be = phi i8 [ %.12604, %bb.i ], [ %.12604, %bb.j ], [ %.12604, %bb.l ], [ %.12604, %bb.m ], [ %.12604, %bb.o ], [ %.12604, %bb.p ], [ %.12604, %bb.u ], [ %.12604, %bb.y ], [ %.12604, %bb.aa ], [ %.12604, %bb.aq ], [ %.12604, %bb.aw ], [ %.12604, %bb.ay ], [ %.12604, %bb.ba ], [ %.12604, %bb.bb ], [ %.12604, %bb.bc ], [ %.12604, %bb.bd ], [ %.12604, %bb.bh ], [ %.12604, %bb.bu ], [ %.lobit, %bb.bw ], [ %.12604, %bb.bx ], [ %.12604, %bb.ca ], [ %.12604, %bb.cb ], [ %.12604, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread ], [ %.12604, %bb.cf ], [ %.12604, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810 ], [ %.12604, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819 ], [ %.12604, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828 ], [ %.12604, %bb.dd ], [ %.12604, %bb.df ], [ %.12604, %._crit_edge3856 ], [ %.12604, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit ], [ %.12604, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854 ], [ %.12604, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit ], [ %.12604, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856 ], [ %.12604, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit ], [ %.12604, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2859 ], [ %.12604, %bb.dz ], [ %.12604, %bb.ea ], [ %.12604, %bb.eb ], [ %.12604, %bb.ec ], [ %.12604, %bb.ee ], [ %.12604, %bb.eg ], [ %.12604, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2870 ], [ %.12604, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ], [ %.12604, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit ], [ %.12604, %bb.fp ], [ %.12604, %bb.wk ], [ %.12604, %bb.gr ], [ %.12604, %bb.gt ], [ %.12604, %bb.gx ], [ %.12604, %bb.hb ], [ %.12604, %bb.he ], [ %.12604, %bb.hg ], [ %.12604, %._crit_edge ], [ %.12604, %bb.hv ], [ %.12604, %bb.hz ], [ %.12604, %bb.ib ], [ %.12604, %bb.ig ], [ %.12604, %bb.ih ], [ %.12604, %bb.ii ], [ %.12604, %bb.il ], [ %.12604, %bb.io ], [ %.12604, %bb.ir ], [ %.12604, %bb.iu ], [ %.12604, %bb.ix ], [ %.12604, %bb.ja ], [ %.12604, %bb.jc ], [ %.12604, %bb.je ], [ %.12604, %bb.jg ], [ %.12604, %bb.ji ], [ %.12604, %bb.jl ], [ %.12604, %bb.jm ], [ %.12604, %_ZN6hermes15truncateToInt32Ed.exit ], [ %.12604, %bb.jr ], [ %.12604, %bb.jt ], [ %.12604, %bb.jv ], [ %.12604, %bb.jz ], [ %.12604, %bb.ka ], [ %.12604, %bb.kc ], [ %.12604, %bb.ke ], [ %.12604, %bb.kf ], [ %.12604, %bb.kg ], [ %.12604, %bb.ki ], [ %.12604, %bb.kk ], [ %.12604, %bb.km ], [ %.12604, %bb.ko ], [ %.12604, %bb.kq ], [ %.12604, %bb.kt ], [ %.12604, %bb.ku ], [ %.12604, %bb.kw ], [ %.12604, %bb.kx ], [ %.12604, %bb.ky ], [ %.12604, %bb.kz ], [ %.12604, %bb.lb ], [ %.12604, %bb.ld ], [ %.12604, %bb.le ], [ %.12604, %bb.lh ], [ %.12604, %bb.li ], [ %.12604, %bb.lk ], [ %.12604, %bb.ln ], [ %.12604, %bb.ls ], [ %.12604, %bb.mc ], [ %.12604, %bb.mh ], [ %.12604, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992 ], [ %.12604, %bb.mr ], [ %.12604, %bb.ms ], [ %.12604, %bb.mt ], [ %.12604, %bb.mu ], [ %.12604, %bb.mv ], [ %.12604, %bb.mw ], [ %.12604, %bb.mx ], [ %.12604, %bb.my ], [ %.12604, %bb.mz ], [ %.12604, %bb.na ], [ %.12604, %bb.nb ], [ %.12604, %bb.nc ], [ %.12604, %bb.nd ], [ %.12604, %bb.nh ], [ %.12604, %bb.nk ], [ %.12604, %bb.nl ], [ %.12604, %bb.no ], [ %.12604, %bb.np ], [ %.12604, %bb.ns ], [ %.12604, %bb.nt ], [ %.12604, %_ZN6hermes15truncateToInt32Ed.exit3017 ], [ %.12604, %bb.nz ], [ %.12604, %_ZN6hermes15truncateToInt32Ed.exit3025 ], [ %.12604, %bb.of ], [ %.12604, %_ZN6hermes15truncateToInt32Ed.exit3033 ], [ %.12604, %bb.ol ], [ %.12604, %_ZN6hermes15truncateToInt32Ed.exit3041 ], [ %.12604, %bb.or ], [ %.12604, %_ZN6hermes15truncateToInt32Ed.exit3049 ], [ %.12604, %bb.ox ], [ %.12604, %_ZN6hermes15truncateToInt32Ed.exit3057 ], [ %.12604, %bb.pd ], [ %.12604, %bb.pg ], [ %.12604, %bb.ph ], [ %.12604, %bb.pk ], [ %.12604, %bb.pl ], [ %.12604, %bb.po ], [ %.12604, %bb.pp ], [ %.12604, %bb.ps ], [ %.12604, %bb.pt ], [ %.12604, %bb.px ], [ %.12604, %bb.py ], [ %.12604, %bb.qa ], [ %.12604, %bb.qb ], [ %.12604, %bb.qf ], [ %.12604, %bb.qg ], [ %.12604, %bb.qi ], [ %.12604, %bb.qj ], [ %.12604, %bb.qn ], [ %.12604, %bb.qo ], [ %.12604, %bb.qq ], [ %.12604, %bb.qr ], [ %.12604, %bb.qv ], [ %.12604, %bb.qw ], [ %.12604, %bb.qy ], [ %.12604, %bb.qz ], [ %.12604, %bb.rd ], [ %.12604, %bb.re ], [ %.12604, %bb.rg ], [ %.12604, %bb.rh ], [ %.12604, %bb.rl ], [ %.12604, %bb.rm ], [ %.12604, %bb.ro ], [ %.12604, %bb.rp ], [ %.12604, %bb.rt ], [ %.12604, %bb.ru ], [ %.12604, %bb.rw ], [ %.12604, %bb.rx ], [ %.12604, %bb.sb ], [ %.12604, %bb.sc ], [ %.12604, %bb.se ], [ %.12604, %bb.sf ], [ %.12604, %bb.sj ], [ %.12604, %bb.sk ], [ %.12604, %bb.sm ], [ %.12604, %bb.sn ], [ %.12604, %bb.sr ], [ %.12604, %bb.ss ], [ %.12604, %bb.su ], [ %.12604, %bb.sv ], [ %.12604, %bb.sz ], [ %.12604, %bb.ta ], [ %.12604, %bb.tc ], [ %.12604, %bb.td ], [ %.12604, %bb.th ], [ %.12604, %bb.ti ], [ %.12604, %bb.tk ], [ %.12604, %bb.tl ], [ %.12604, %bb.tp ], [ %.12604, %bb.tq ], [ %.12604, %bb.ts ], [ %.12604, %bb.tt ], [ %.12604, %bb.tx ], [ %.12604, %bb.ty ], [ %.12604, %bb.ua ], [ %.12604, %bb.ub ], [ %.12604, %bb.uf ], [ %.12604, %bb.ug ], [ %.12604, %bb.ui ], [ %.12604, %bb.uj ], [ %.12604, %bb.un ], [ %.12604, %bb.uo ], [ %.12604, %bb.uq ], [ %.12604, %bb.ur ], [ %.12604, %bb.ut ], [ %.12604, %bb.uu ], [ %.12604, %bb.uw ], [ %.12604, %bb.ux ], [ %.12604, %bb.uz ], [ %.12604, %bb.va ], [ %.12604, %bb.vc ], [ %.12604, %bb.vd ], [ %.12604, %bb.vg ], [ %.12604, %bb.vh ], [ %.12604, %bb.vk ], [ %.12604, %bb.vl ], [ %.12604, %bb.vo ], [ %.12604, %bb.vp ], [ %.12604, %bb.vs ], [ %.12604, %bb.vt ], [ %.12604, %bb.vv ], [ %.12604, %bb.vx ], [ %.12604, %bb.vz ], [ %.12604, %bb.wb ], [ %.12604, %bb.wd ], [ %.12604, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ], [ %.12604, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i ]
  %.32602.be = phi ptr [ %.32602, %bb.i ], [ %.32602, %bb.j ], [ %.32602, %bb.l ], [ %.32602, %bb.m ], [ %.32602, %bb.o ], [ %.32602, %bb.p ], [ %.32602, %bb.u ], [ %.32602, %bb.y ], [ %.32602, %bb.aa ], [ %.32602, %bb.aq ], [ %.32602, %bb.aw ], [ %.32602, %bb.ay ], [ %.32602, %bb.ba ], [ %.32602, %bb.bb ], [ %.32602, %bb.bc ], [ %.32602, %bb.bd ], [ %.32602, %bb.bh ], [ %.32602, %bb.bu ], [ %i.su, %bb.bw ], [ %.32602, %bb.bx ], [ %.32602, %bb.ca ], [ %.32602, %bb.cb ], [ %.32602, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread ], [ %.32602, %bb.cf ], [ %.32602, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810 ], [ %.32602, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819 ], [ %.32602, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828 ], [ %.32602, %bb.dd ], [ %.32602, %bb.df ], [ %.32602, %._crit_edge3856 ], [ %.32602, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit ], [ %.32602, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854 ], [ %.32602, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit ], [ %.32602, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856 ], [ %.32602, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit ], [ %.32602, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2859 ], [ %.32602, %bb.dz ], [ %.32602, %bb.ea ], [ %.32602, %bb.eb ], [ %.32602, %bb.ec ], [ %.32602, %bb.ee ], [ %.32602, %bb.eg ], [ %.32602, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2870 ], [ %.32602, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ], [ %.32602, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit ], [ %.32602, %bb.fp ], [ %.32602, %bb.wk ], [ %.32602, %bb.gr ], [ %.32602, %bb.gt ], [ %.32602, %bb.gx ], [ %.32602, %bb.hb ], [ %.32602, %bb.he ], [ %.32602, %bb.hg ], [ %.32602, %._crit_edge ], [ %.32602, %bb.hv ], [ %.32602, %bb.hz ], [ %.32602, %bb.ib ], [ %.32602, %bb.ig ], [ %.32602, %bb.ih ], [ %.32602, %bb.ii ], [ %.32602, %bb.il ], [ %.32602, %bb.io ], [ %.32602, %bb.ir ], [ %.32602, %bb.iu ], [ %.32602, %bb.ix ], [ %.32602, %bb.ja ], [ %.32602, %bb.jc ], [ %.32602, %bb.je ], [ %.32602, %bb.jg ], [ %.32602, %bb.ji ], [ %.32602, %bb.jl ], [ %.32602, %bb.jm ], [ %.32602, %_ZN6hermes15truncateToInt32Ed.exit ], [ %.32602, %bb.jr ], [ %.32602, %bb.jt ], [ %.32602, %bb.jv ], [ %.32602, %bb.jz ], [ %.32602, %bb.ka ], [ %.32602, %bb.kc ], [ %.32602, %bb.ke ], [ %.32602, %bb.kf ], [ %.32602, %bb.kg ], [ %.32602, %bb.ki ], [ %.32602, %bb.kk ], [ %.32602, %bb.km ], [ %.32602, %bb.ko ], [ %.32602, %bb.kq ], [ %.32602, %bb.kt ], [ %.32602, %bb.ku ], [ %.32602, %bb.kw ], [ %.32602, %bb.kx ], [ %.32602, %bb.ky ], [ %.32602, %bb.kz ], [ %.32602, %bb.lb ], [ %.32602, %bb.ld ], [ %.32602, %bb.le ], [ %.32602, %bb.lh ], [ %.32602, %bb.li ], [ %.32602, %bb.lk ], [ %.32602, %bb.ln ], [ %.32602, %bb.ls ], [ %.32602, %bb.mc ], [ %.32602, %bb.mh ], [ %.32602, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992 ], [ %.32602, %bb.mr ], [ %.32602, %bb.ms ], [ %.32602, %bb.mt ], [ %.32602, %bb.mu ], [ %.32602, %bb.mv ], [ %.32602, %bb.mw ], [ %.32602, %bb.mx ], [ %.32602, %bb.my ], [ %.32602, %bb.mz ], [ %.32602, %bb.na ], [ %.32602, %bb.nb ], [ %.32602, %bb.nc ], [ %.32602, %bb.nd ], [ %.32602, %bb.nh ], [ %.32602, %bb.nk ], [ %.32602, %bb.nl ], [ %.32602, %bb.no ], [ %.32602, %bb.np ], [ %.32602, %bb.ns ], [ %.32602, %bb.nt ], [ %.32602, %_ZN6hermes15truncateToInt32Ed.exit3017 ], [ %.32602, %bb.nz ], [ %.32602, %_ZN6hermes15truncateToInt32Ed.exit3025 ], [ %.32602, %bb.of ], [ %.32602, %_ZN6hermes15truncateToInt32Ed.exit3033 ], [ %.32602, %bb.ol ], [ %.32602, %_ZN6hermes15truncateToInt32Ed.exit3041 ], [ %.32602, %bb.or ], [ %.32602, %_ZN6hermes15truncateToInt32Ed.exit3049 ], [ %.32602, %bb.ox ], [ %.32602, %_ZN6hermes15truncateToInt32Ed.exit3057 ], [ %.32602, %bb.pd ], [ %.32602, %bb.pg ], [ %.32602, %bb.ph ], [ %.32602, %bb.pk ], [ %.32602, %bb.pl ], [ %.32602, %bb.po ], [ %.32602, %bb.pp ], [ %.32602, %bb.ps ], [ %.32602, %bb.pt ], [ %.32602, %bb.px ], [ %.32602, %bb.py ], [ %.32602, %bb.qa ], [ %.32602, %bb.qb ], [ %.32602, %bb.qf ], [ %.32602, %bb.qg ], [ %.32602, %bb.qi ], [ %.32602, %bb.qj ], [ %.32602, %bb.qn ], [ %.32602, %bb.qo ], [ %.32602, %bb.qq ], [ %.32602, %bb.qr ], [ %.32602, %bb.qv ], [ %.32602, %bb.qw ], [ %.32602, %bb.qy ], [ %.32602, %bb.qz ], [ %.32602, %bb.rd ], [ %.32602, %bb.re ], [ %.32602, %bb.rg ], [ %.32602, %bb.rh ], [ %.32602, %bb.rl ], [ %.32602, %bb.rm ], [ %.32602, %bb.ro ], [ %.32602, %bb.rp ], [ %.32602, %bb.rt ], [ %.32602, %bb.ru ], [ %.32602, %bb.rw ], [ %.32602, %bb.rx ], [ %.32602, %bb.sb ], [ %.32602, %bb.sc ], [ %.32602, %bb.se ], [ %.32602, %bb.sf ], [ %.32602, %bb.sj ], [ %.32602, %bb.sk ], [ %.32602, %bb.sm ], [ %.32602, %bb.sn ], [ %.32602, %bb.sr ], [ %.32602, %bb.ss ], [ %.32602, %bb.su ], [ %.32602, %bb.sv ], [ %.32602, %bb.sz ], [ %.32602, %bb.ta ], [ %.32602, %bb.tc ], [ %.32602, %bb.td ], [ %.32602, %bb.th ], [ %.32602, %bb.ti ], [ %.32602, %bb.tk ], [ %.32602, %bb.tl ], [ %.32602, %bb.tp ], [ %.32602, %bb.tq ], [ %.32602, %bb.ts ], [ %.32602, %bb.tt ], [ %.32602, %bb.tx ], [ %.32602, %bb.ty ], [ %.32602, %bb.ua ], [ %.32602, %bb.ub ], [ %.32602, %bb.uf ], [ %.32602, %bb.ug ], [ %.32602, %bb.ui ], [ %.32602, %bb.uj ], [ %.32602, %bb.un ], [ %.32602, %bb.uo ], [ %.32602, %bb.uq ], [ %.32602, %bb.ur ], [ %.32602, %bb.ut ], [ %.32602, %bb.uu ], [ %.32602, %bb.uw ], [ %.32602, %bb.ux ], [ %.32602, %bb.uz ], [ %.32602, %bb.va ], [ %.32602, %bb.vc ], [ %.32602, %bb.vd ], [ %.32602, %bb.vg ], [ %.32602, %bb.vh ], [ %.32602, %bb.vk ], [ %.32602, %bb.vl ], [ %.32602, %bb.vo ], [ %.32602, %bb.vp ], [ %.32602, %bb.vs ], [ %.32602, %bb.vt ], [ %.32602, %bb.vv ], [ %.32602, %bb.vx ], [ %.32602, %bb.vz ], [ %.32602, %bb.wb ], [ %.32602, %bb.wd ], [ %.32602, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ], [ %.32602, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i ]
  %.4.be = phi ptr [ %.4, %bb.i ], [ %.4, %bb.j ], [ %.4, %bb.l ], [ %.4, %bb.m ], [ %.4, %bb.o ], [ %.4, %bb.p ], [ %.4, %bb.u ], [ %.4, %bb.y ], [ %.4, %bb.aa ], [ %.4, %bb.aq ], [ %.4, %bb.aw ], [ %.4, %bb.ay ], [ %.4, %bb.ba ], [ %.4, %bb.bb ], [ %.4, %bb.bc ], [ %.4, %bb.bd ], [ %.4, %bb.bh ], [ %.4, %bb.bu ], [ %i.st, %bb.bw ], [ %.4, %bb.bx ], [ %.4, %bb.ca ], [ %.4, %bb.cb ], [ %.4, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread ], [ %.4, %bb.cf ], [ %.4, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810 ], [ %.4, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819 ], [ %.4, %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828 ], [ %.4, %bb.dd ], [ %.4, %bb.df ], [ %.4, %._crit_edge3856 ], [ %.4, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit ], [ %.4, %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit2854 ], [ %.4, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit ], [ %.4, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit2856 ], [ %.4, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit ], [ %.4, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEE9setNonPtrES2_RNS0_7HadesGCE.exit2859 ], [ %.4, %bb.dz ], [ %.4, %bb.ea ], [ %.4, %bb.eb ], [ %.4, %bb.ec ], [ %.4, %bb.ee ], [ %.4, %bb.eg ], [ %.4, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2870 ], [ %.4, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ], [ %.4, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit ], [ %.4, %bb.fp ], [ %.4, %bb.wk ], [ %.4, %bb.gr ], [ %.4, %bb.gt ], [ %.4, %bb.gx ], [ %.4, %bb.hb ], [ %.4, %bb.he ], [ %.4, %bb.hg ], [ %.4, %._crit_edge ], [ %.4, %bb.hv ], [ %.4, %bb.hz ], [ %.4, %bb.ib ], [ %.4, %bb.ig ], [ %.4, %bb.ih ], [ %.4, %bb.ii ], [ %.4, %bb.il ], [ %.4, %bb.io ], [ %.4, %bb.ir ], [ %.4, %bb.iu ], [ %.4, %bb.ix ], [ %.4, %bb.ja ], [ %.4, %bb.jc ], [ %.4, %bb.je ], [ %.4, %bb.jg ], [ %.4, %bb.ji ], [ %.4, %bb.jl ], [ %.4, %bb.jm ], [ %.4, %_ZN6hermes15truncateToInt32Ed.exit ], [ %.4, %bb.jr ], [ %.4, %bb.jt ], [ %.4, %bb.jv ], [ %.4, %bb.jz ], [ %.4, %bb.ka ], [ %.4, %bb.kc ], [ %.4, %bb.ke ], [ %.4, %bb.kf ], [ %.4, %bb.kg ], [ %.4, %bb.ki ], [ %.4, %bb.kk ], [ %.4, %bb.km ], [ %.4, %bb.ko ], [ %.4, %bb.kq ], [ %.4, %bb.kt ], [ %.4, %bb.ku ], [ %.4, %bb.kw ], [ %.4, %bb.kx ], [ %.4, %bb.ky ], [ %.4, %bb.kz ], [ %.4, %bb.lb ], [ %.4, %bb.ld ], [ %.4, %bb.le ], [ %.4, %bb.lh ], [ %.4, %bb.li ], [ %.4, %bb.lk ], [ %.4, %bb.ln ], [ %.4, %bb.ls ], [ %.4, %bb.mc ], [ %.4, %bb.mh ], [ %.4, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992 ], [ %.4, %bb.mr ], [ %.4, %bb.ms ], [ %.4, %bb.mt ], [ %.4, %bb.mu ], [ %.4, %bb.mv ], [ %.4, %bb.mw ], [ %.4, %bb.mx ], [ %.4, %bb.my ], [ %.4, %bb.mz ], [ %.4, %bb.na ], [ %.4, %bb.nb ], [ %.4, %bb.nc ], [ %.4, %bb.nd ], [ %.4, %bb.nh ], [ %.4, %bb.nk ], [ %.4, %bb.nl ], [ %.4, %bb.no ], [ %.4, %bb.np ], [ %.4, %bb.ns ], [ %.4, %bb.nt ], [ %.4, %_ZN6hermes15truncateToInt32Ed.exit3017 ], [ %.4, %bb.nz ], [ %.4, %_ZN6hermes15truncateToInt32Ed.exit3025 ], [ %.4, %bb.of ], [ %.4, %_ZN6hermes15truncateToInt32Ed.exit3033 ], [ %.4, %bb.ol ], [ %.4, %_ZN6hermes15truncateToInt32Ed.exit3041 ], [ %.4, %bb.or ], [ %.4, %_ZN6hermes15truncateToInt32Ed.exit3049 ], [ %.4, %bb.ox ], [ %.4, %_ZN6hermes15truncateToInt32Ed.exit3057 ], [ %.4, %bb.pd ], [ %.4, %bb.pg ], [ %.4, %bb.ph ], [ %.4, %bb.pk ], [ %.4, %bb.pl ], [ %.4, %bb.po ], [ %.4, %bb.pp ], [ %.4, %bb.ps ], [ %.4, %bb.pt ], [ %.4, %bb.px ], [ %.4, %bb.py ], [ %.4, %bb.qa ], [ %.4, %bb.qb ], [ %.4, %bb.qf ], [ %.4, %bb.qg ], [ %.4, %bb.qi ], [ %.4, %bb.qj ], [ %.4, %bb.qn ], [ %.4, %bb.qo ], [ %.4, %bb.qq ], [ %.4, %bb.qr ], [ %.4, %bb.qv ], [ %.4, %bb.qw ], [ %.4, %bb.qy ], [ %.4, %bb.qz ], [ %.4, %bb.rd ], [ %.4, %bb.re ], [ %.4, %bb.rg ], [ %.4, %bb.rh ], [ %.4, %bb.rl ], [ %.4, %bb.rm ], [ %.4, %bb.ro ], [ %.4, %bb.rp ], [ %.4, %bb.rt ], [ %.4, %bb.ru ], [ %.4, %bb.rw ], [ %.4, %bb.rx ], [ %.4, %bb.sb ], [ %.4, %bb.sc ], [ %.4, %bb.se ], [ %.4, %bb.sf ], [ %.4, %bb.sj ], [ %.4, %bb.sk ], [ %.4, %bb.sm ], [ %.4, %bb.sn ], [ %.4, %bb.sr ], [ %.4, %bb.ss ], [ %.4, %bb.su ], [ %.4, %bb.sv ], [ %.4, %bb.sz ], [ %.4, %bb.ta ], [ %.4, %bb.tc ], [ %.4, %bb.td ], [ %.4, %bb.th ], [ %.4, %bb.ti ], [ %.4, %bb.tk ], [ %.4, %bb.tl ], [ %.4, %bb.tp ], [ %.4, %bb.tq ], [ %.4, %bb.ts ], [ %.4, %bb.tt ], [ %.4, %bb.tx ], [ %.4, %bb.ty ], [ %.4, %bb.ua ], [ %.4, %bb.ub ], [ %.4, %bb.uf ], [ %.4, %bb.ug ], [ %.4, %bb.ui ], [ %.4, %bb.uj ], [ %.4, %bb.un ], [ %.4, %bb.uo ], [ %.4, %bb.uq ], [ %.4, %bb.ur ], [ %.4, %bb.ut ], [ %.4, %bb.uu ], [ %.4, %bb.uw ], [ %.4, %bb.ux ], [ %.4, %bb.uz ], [ %.4, %bb.va ], [ %.4, %bb.vc ], [ %.4, %bb.vd ], [ %.4, %bb.vg ], [ %.4, %bb.vh ], [ %.4, %bb.vk ], [ %.4, %bb.vl ], [ %.4, %bb.vo ], [ %.4, %bb.vp ], [ %.4, %bb.vs ], [ %.4, %bb.vt ], [ %.4, %bb.vv ], [ %.4, %bb.vx ], [ %.4, %bb.vz ], [ %.4, %bb.wb ], [ %.4, %bb.wd ], [ %.4, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i ], [ %.4, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i ]
  br label %.backedge

bb.j:                                             ; preds = %.backedge
  %i.ds = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.dt = load i32, ptr %i.ds, align 1, !tbaa !81
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dx = load i32, ptr %i.dw, align 1, !tbaa !81
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dy
  %.sroa.0.0.copyload.i2740 = load i64, ptr %i.dv, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2740, ptr %i.dz, align 8, !tbaa !69
  %i.ea = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 9
  br label %.backedge.backedge

bb.k:                                             ; preds = %.backedge
  %i.eb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !81
  %i.ed = zext i8 %i.ec to i32                    ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !69
  %i.eg = trunc i64 %i.ef to i32
  %.not2652 = icmp ult i32 %i.eg, %i.ed
  br i1 %.not2652, label %bb.m, label %bb.l, !prof !65

bb.l:                                             ; preds = %bb.k
  %narrow = sub nsw i32 1, %i.ed
  %i.eh = sext i32 %narrow to i64
  %i.ei = getelementptr [8 x i8], ptr %.32602, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -72
  %i.ek = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !81
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.em
  %.sroa.0.0.copyload.i2741 = load i64, ptr %i.ej, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2741, ptr %i.en, align 8, !tbaa !69
  %i.eo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !81
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.er
  store i64 -1688849860263936, ptr %i.es, align 8, !tbaa !69
  %i.et = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.n:                                             ; preds = %.backedge
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.ev = load i32, ptr %i.eu, align 1, !tbaa !81 ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !69
  %i.ey = trunc i64 %i.ex to i32
  %.not2651 = icmp ugt i32 %i.ev, %i.ey
  br i1 %.not2651, label %bb.p, label %bb.o, !prof !65

bb.o:                                             ; preds = %bb.n
  %i.ez = add nsw i32 %i.ev, -1
  %i.fa = sext i32 %i.ez to i64
  %i.fb = sub nsw i64 0, %i.fa
  %i.fc = getelementptr [8 x i8], ptr %.32602, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -72
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !81
  %i.fg = zext i8 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.fg
  %.sroa.0.0.copyload.i2743 = load i64, ptr %i.fd, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2743, ptr %i.fh, align 8, !tbaa !69
  %i.fi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  br label %.backedge.backedge

bb.p:                                             ; preds = %bb.n
  %i.fj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !81
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.fl
  store i64 -1688849860263936, ptr %i.fm, align 8, !tbaa !69
  %i.fn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  br label %.backedge.backedge

bb.q:                                             ; preds = %.backedge
  %i.fo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !81
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !69 ; 4 uses
  %i.ft = icmp ugt i64 %i.fs, -281474976710657
  br i1 %i.ft, label %bb.r, label %bb.s, !prof !60

bb.r:                                             ; preds = %bb.q
  %i.fu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !81
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.fw
  store i64 %i.fs, ptr %i.fx, align 8, !tbaa !69
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %.mask.i = and i64 %i.fs, -140737488355328
  switch i64 %.mask.i, label %bb.z [
    i64 -1548112371908608, label %bb.t
    i64 -1688849860263936, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.fy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !81
  %i.ga = zext i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ga
  %.sroa.0.0.copyload.i2747 = load i64, ptr %i.at, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2747, ptr %i.gb, align 8, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.gc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.v:                                             ; preds = %.backedge
  %i.gd = getelementptr inbounds i8, ptr %.32602, i64 -64
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !69 ; 4 uses
  %i.gf = icmp ugt i64 %i.ge, -281474976710657
  br i1 %i.gf, label %bb.w, label %bb.x, !prof !60

bb.w:                                             ; preds = %bb.v
  %i.gg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !81
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.gi
  store i64 %i.ge, ptr %i.gj, align 8, !tbaa !69
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %.mask.i2749 = and i64 %i.ge, -140737488355328
  switch i64 %.mask.i2749, label %bb.z [
    i64 -1548112371908608, label %.critedge
    i64 -1688849860263936, label %.critedge
  ]

.critedge:                                        ; preds = %bb.x, %bb.x
  %i.gk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !81
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.gm
  %.sroa.0.0.copyload.i2751 = load i64, ptr %i.at, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2751, ptr %i.gn, align 8, !tbaa !69
  br label %bb.y

bb.y:                                             ; preds = %.critedge, %bb.w
  %i.go = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.z:                                             ; preds = %bb.x, %bb.s
  %.sink4084 = phi i64 [ %i.fs, %bb.s ], [ %i.ge, %bb.x ]
  %.sink = phi i64 [ 3, %bb.s ], [ 2, %bb.x ]
  store i64 %.sink4084, ptr %i.o, align 8, !tbaa !69
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.gp = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o) #10 ; 2 uses
  %i.gq = extractvalue { i32, i64 } %i.gp, 0
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.gs = icmp eq i32 %i.gq, 0
  br i1 %i.gs, label %.loopexitthread-pre-split.loopexit4189, label %bb.aa, !prof !65

bb.aa:                                            ; preds = %bb.z
  %i.gt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 %.sink
  %i.gu = extractvalue { i32, i64 } %i.gp, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !81
  %i.gx = zext i8 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.gx
  store i64 %i.gu, ptr %i.gy, align 8, !tbaa !69
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.ab:                                            ; preds = %.backedge
  %i.gz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ha = load i32, ptr %i.gz, align 1, !tbaa !81
  %i.hb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  %i.hc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !81
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.he
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !69
  br label %bb.aj

bb.ac:                                            ; preds = %.backedge
  %i.hh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.hi = load i32, ptr %i.hh, align 1, !tbaa !81
  %i.hj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %bb.aj

bb.ad:                                            ; preds = %.backedge
  %i.hk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.hl = load ptr, ptr %i.x, align 8, !tbaa !330
  %i.hm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !81
  %i.ho = zext i8 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hl, i64 -56
  %.sroa.0.0.copyload.i2753 = load i64, ptr %i.hp, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2753, ptr %i.hq, align 8, !tbaa !69
  br label %bb.aj

bb.ae:                                            ; preds = %.backedge
  %i.hr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.hs = load ptr, ptr %i.x, align 8, !tbaa !330 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !81
  %i.hv = zext i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.hv
  %i.hx = getelementptr i8, ptr %i.hs, i64 -56
  %.sroa.0.0.copyload.i2754 = load i64, ptr %i.hw, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2754, ptr %i.hx, align 8, !tbaa !69
  %i.hy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !81
  %i.ia = zext i8 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ia
  %i.ic = getelementptr i8, ptr %i.hs, i64 -64
  %.sroa.0.0.copyload.i2755 = load i64, ptr %i.ib, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2755, ptr %i.ic, align 8, !tbaa !69
  br label %bb.aj

bb.af:                                            ; preds = %.backedge
  %i.id = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.ie = load ptr, ptr %i.x, align 8, !tbaa !330 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !81
  %i.ih = zext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ie, i64 -56
  %.sroa.0.0.copyload.i2756 = load i64, ptr %i.ii, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2756, ptr %i.ij, align 8, !tbaa !69
  %i.ik = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !81
  %i.im = zext i8 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.im
  %i.io = getelementptr i8, ptr %i.ie, i64 -64
  %.sroa.0.0.copyload.i2757 = load i64, ptr %i.in, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2757, ptr %i.io, align 8, !tbaa !69
  %i.ip = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !81
  %i.ir = zext i8 %i.iq to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.ie, i64 -72
  %.sroa.0.0.copyload.i2758 = load i64, ptr %i.is, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2758, ptr %i.it, align 8, !tbaa !69
  br label %bb.aj

bb.ag:                                            ; preds = %.backedge
  %i.iu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  %i.iv = load ptr, ptr %i.x, align 8, !tbaa !330 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !81
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iv, i64 -56
  %.sroa.0.0.copyload.i2759 = load i64, ptr %i.iz, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2759, ptr %i.ja, align 8, !tbaa !69
  %i.jb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !81
  %i.jd = zext i8 %i.jc to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.jd
  %i.jf = getelementptr i8, ptr %i.iv, i64 -64
  %.sroa.0.0.copyload.i2760 = load i64, ptr %i.je, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2760, ptr %i.jf, align 8, !tbaa !69
  %i.jg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !81
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ji
  %i.jk = getelementptr i8, ptr %i.iv, i64 -72
  %.sroa.0.0.copyload.i2761 = load i64, ptr %i.jj, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2761, ptr %i.jk, align 8, !tbaa !69
  %i.jl = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !81
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.iv, i64 -80
  %.sroa.0.0.copyload.i2762 = load i64, ptr %i.jo, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2762, ptr %i.jp, align 8, !tbaa !69
  br label %bb.aj

bb.ah:                                            ; preds = %.backedge
  %i.jq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !81
  %i.js = zext i8 %i.jr to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.ju = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !81
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.jw
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !69
  br label %bb.aj

bb.ai:                                            ; preds = %.backedge
  %i.jz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !81
  %i.kb = zext i8 %i.ka to i32
  %i.kc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.02630 = phi i64 [ -1688849860263936, %bb.ai ], [ %i.jy, %bb.ah ], [ -1688849860263936, %bb.ad ], [ -1688849860263936, %bb.ae ], [ -1688849860263936, %bb.af ], [ -1688849860263936, %bb.ag ], [ -1688849860263936, %bb.ac ], [ %i.hg, %bb.ab ]
  %.02629 = phi i32 [ %i.kb, %bb.ai ], [ %i.js, %bb.ah ], [ 1, %bb.ad ], [ 2, %bb.ae ], [ 3, %bb.af ], [ 4, %bb.ag ], [ %i.hi, %bb.ac ], [ %i.ha, %bb.ab ]
  %.12607 = phi ptr [ %i.kc, %bb.ai ], [ %i.jt, %bb.ah ], [ %i.hk, %bb.ad ], [ %i.hr, %bb.ae ], [ %i.id, %bb.af ], [ %i.iu, %bb.ag ], [ %i.hj, %bb.ac ], [ %i.hb, %bb.ab ]
  %i.kd = load ptr, ptr %i.x, align 8, !tbaa !330 ; 6 uses
  %i.ke = getelementptr inbounds i8, ptr %.32602, i64 -8
  %i.kf = add i32 %.02629, -1
  %i.kg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 3 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !81
  %i.ki = zext i8 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ki
  %.sroa.0306.0.copyload = load i64, ptr %i.kj, align 8, !tbaa !61
  %i.kk = ptrtoint ptr %i.ke to i64
  %i.kl = getelementptr inbounds i8, ptr %i.kd, i64 -8
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !69
  %i.km = ptrtoint ptr %.sink4083.sink.in to i64
  %i.kn = getelementptr inbounds i8, ptr %i.kd, i64 -16
  store i64 %i.km, ptr %i.kn, align 8, !tbaa !69
  %i.ko = ptrtoint ptr %.4 to i64
  %i.kp = getelementptr inbounds i8, ptr %i.kd, i64 -24
  store i64 %i.ko, ptr %i.kp, align 8, !tbaa !69
  %i.kq = zext i32 %i.kf to i64
  %i.kr = or disjoint i64 %i.kq, -1125899906842624
  %i.ks = getelementptr inbounds i8, ptr %i.kd, i64 -32
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !69
  %i.kt = getelementptr inbounds i8, ptr %i.kd, i64 -40
  store i64 %.02630, ptr %i.kt, align 8, !tbaa !69
  %i.ku = getelementptr inbounds i8, ptr %i.kd, i64 -48
  store i64 %.sroa.0306.0.copyload, ptr %i.ku, align 8, !tbaa !69
  %i.kv = load i8, ptr %i.kg, align 1, !tbaa !81
  %i.kw = zext i8 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.kw
  %.sroa.0302.0.copyload = load i64, ptr %i.kx, align 8, !tbaa !61 ; 2 uses
  %i.ky = icmp ugt i64 %.sroa.0302.0.copyload, -844424930131969
  br i1 %i.ky, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.kz = and i64 %.sroa.0302.0.copyload, 281474976710655
  %i.la = inttoptr i64 %i.kz to ptr               ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4
  %i.lc = add i32 %i.lb, -1224736768
  %i.ld = icmp ult i32 %i.lc, 67108864
  br i1 %i.ld, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !434
  %i.lg = load i64, ptr %i.ar, align 8, !tbaa !61
  %i.lh = xor i64 %i.lg, %i.lf
  %i.li = inttoptr i64 %i.lh to ptr
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  br label %.backedge3766.backedge

.backedge3766.backedge:                           ; preds = %bb.al, %bb.av
  %.02594.be = phi ptr [ %.sink4083.sink.in, %bb.al ], [ %i.mx, %bb.av ] ; 2 uses
  %.0.be = phi ptr [ %i.li, %bb.al ], [ %i.mw, %bb.av ]
  br label %.backedge3766

bb.am:                                            ; preds = %bb.ak, %bb.aj
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.lj = load i8, ptr %i.kg, align 1, !tbaa !81
  %i.lk = zext i8 %i.lj to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.lk ; 2 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.ll, align 8, !tbaa !61 ; 2 uses
  %i.lm = icmp ugt i64 %.sroa.02.0.copyload.i, -844424930131969
  br i1 %i.lm, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ln = and i64 %.sroa.02.0.copyload.i, 281474976710655
  %i.lo = inttoptr i64 %i.ln to ptr               ; 3 uses
  %i.lp = load i32, ptr %i.lo, align 4            ; 2 uses
  %i.lq = add i32 %i.lp, -1157627904
  %i.lr = icmp ult i32 %i.lq, 67108864
  br i1 %i.lr, label %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i, label %bb.ao

_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i: ; preds = %bb.an
  %i.ls = call { i32, i64 } @_ZN6hermes2vm14NativeFunction11_nativeCallEPS1_RNS0_7RuntimeE(ptr noundef nonnull %i.lo, ptr noundef nonnull align 8 dereferenceable(9816) %0)
  br label %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit

bb.ao:                                            ; preds = %bb.an
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.lp, -16777216
  %i.lt = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i.i, 1140850688
  br i1 %i.lt, label %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit.i, label %bb.ap

_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit.i: ; preds = %bb.ao
  %i.lu = call { i32, i64 } @_ZN6hermes2vm13BoundFunction10_boundCallEPS1_PKNS_4inst4InstERNS0_7RuntimeE(ptr noundef nonnull %i.lo, ptr noundef nonnull %.sink4083.sink.in, ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  br label %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %i.lv = call noundef i32 @_ZN6hermes2vm7Runtime25raiseTypeErrorForCallableENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.ll) #10
  %i.lw = insertvalue { i32, i64 } poison, i32 %i.lv, 0
  %i.lx = insertvalue { i32, i64 } %i.lw, i64 -1688849860263936, 1
  br label %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit

_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i, %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit.i, %bb.ap
  %.fca.1.insert.merged.i = phi { i32, i64 } [ %i.lx, %bb.ap ], [ %i.lu, %_ZN6hermes2vm10dyn_vmcastINS0_13BoundFunctionEEEPT_NS0_11HermesValueE.exit.i ], [ %i.ls, %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i ] ; 2 uses
  %i.ly = extractvalue { i32, i64 } %.fca.1.insert.merged.i, 0
  %i.lz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ma = icmp eq i32 %i.ly, 0
  br i1 %i.ma, label %.loopexitthread-pre-split.loopexit4189, label %bb.aq, !prof !65

bb.aq:                                            ; preds = %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit
  %i.mb = extractvalue { i32, i64 } %.fca.1.insert.merged.i, 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !81
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.me
  store i64 %i.mb, ptr %i.mf, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.ar:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.mg = load i8, ptr %.sink4083.sink.in, align 1, !tbaa !81
  %i.mh = icmp eq i8 %i.mg, 82
  %i.mi = load ptr, ptr %.4, align 8, !tbaa !398  ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 56
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !62 ; 2 uses
  br i1 %i.mh, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.mm = load i16, ptr %i.mj, align 1, !tbaa !81 ; 2 uses
  %i.mn = zext i16 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mn
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !63 ; 2 uses
  %.not.i = icmp eq ptr %i.mp, null
  br i1 %.not.i, label %bb.at, label %bb.av, !prof !65

bb.at:                                            ; preds = %bb.as
  %i.mq = zext i16 %i.mm to i32
  br label %.sink.split

bb.au:                                            ; preds = %bb.ar
  %i.mr = load i32, ptr %i.mj, align 1, !tbaa !81 ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !63 ; 2 uses
  %.not.i2771 = icmp eq ptr %i.mu, null
  br i1 %.not.i2771, label %.sink.split, label %bb.av, !prof !65

.sink.split:                                      ; preds = %bb.au, %bb.at
  %.sink4085 = phi i32 [ %i.mq, %bb.at ], [ %i.mr, %bb.au ]
  %i.mv = call noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192) %i.mi, i32 noundef %.sink4085) #10
  br label %bb.av

bb.av:                                            ; preds = %.sink.split, %bb.as, %bb.au
  %i.mw = phi ptr [ %i.mp, %bb.as ], [ %i.mu, %bb.au ], [ %i.mv, %.sink.split ] ; 2 uses
  %i.mx = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.my = load ptr, ptr %i.x, align 8, !tbaa !330 ; 6 uses
  %i.mz = getelementptr inbounds i8, ptr %.32602, i64 -8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !81
  %i.nc = zext i8 %i.nb to i64
  %i.nd = add nuw nsw i64 %i.nc, 4294967295
  %i.ne = ptrtoint ptr %i.mw to i64
  %i.nf = ptrtoint ptr %i.mz to i64
  %i.ng = getelementptr inbounds i8, ptr %i.my, i64 -8
  store i64 %i.nf, ptr %i.ng, align 8, !tbaa !69
  %i.nh = ptrtoint ptr %i.mx to i64
  %i.ni = getelementptr inbounds i8, ptr %i.my, i64 -16
  store i64 %i.nh, ptr %i.ni, align 8, !tbaa !69
  %i.nj = ptrtoint ptr %.4 to i64
  %i.nk = getelementptr inbounds i8, ptr %i.my, i64 -24
  store i64 %i.nj, ptr %i.nk, align 8, !tbaa !69
  %i.nl = and i64 %i.nd, 4294967295
  %i.nm = or disjoint i64 %i.nl, -1125899906842624
  %i.nn = getelementptr inbounds i8, ptr %i.my, i64 -32
  store i64 %i.nm, ptr %i.nn, align 8, !tbaa !69
  %i.no = getelementptr inbounds i8, ptr %i.my, i64 -40
  store i64 -1688849860263936, ptr %i.no, align 8, !tbaa !69
  %i.np = getelementptr inbounds i8, ptr %i.my, i64 -48
  store i64 %i.ne, ptr %i.np, align 8, !tbaa !69
  br label %.backedge3766.backedge

bb.aw:                                            ; preds = %.backedge
  %i.nq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !81
  %i.ns = zext i8 %i.nr to i64
  %i.nt = load ptr, ptr %i.az, align 8, !tbaa !436
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nt, i64 %i.ns
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !437
  %i.nw = ptrtoint ptr %i.nv to i64
  %i.nx = or i64 %i.nw, -281474976710656
  %i.ny = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !81
  %i.oa = zext i8 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.oa
  store i64 %i.nx, ptr %i.ob, align 8, !tbaa !69
  %i.oc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.ax:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.od = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !81
  %i.of = zext i8 %i.oe to i32
  %i.og = call noundef i32 @_ZN6hermes2vm11Interpreter15implCallBuiltinERNS0_7RuntimeEPNS0_17PinnedHermesValueEPNS0_9CodeBlockEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef %.4, i32 noundef %i.of) #10
  %i.oh = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.oi = icmp eq i32 %i.og, 0
  br i1 %i.oi, label %.loopexitthread-pre-split.loopexit4189, label %bb.ay, !prof !65

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  br label %.backedge.backedge

bb.az:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ok = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ol = load i32, ptr %i.ok, align 1, !tbaa !81
  %i.om = call noundef i32 @_ZN6hermes2vm11Interpreter15implCallBuiltinERNS0_7RuntimeEPNS0_17PinnedHermesValueEPNS0_9CodeBlockEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef %.4, i32 noundef %i.ol) #10
  %i.on = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.oo = icmp eq i32 %i.om, 0
  br i1 %i.oo, label %.loopexitthread-pre-split.loopexit4189, label %bb.ba, !prof !65

bb.ba:                                            ; preds = %bb.az
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.op = getelementptr inbounds nuw i8, ptr %i.on, i64 7
  br label %.backedge.backedge

bb.bb:                                            ; preds = %.backedge
  %.sroa.0.0.copyload.i2781 = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.oq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i2781, i64 -48
  %.sroa.0.0.copyload.i2782 = load i64, ptr %i.oq, align 8, !tbaa !61
  %i.or = and i64 %.sroa.0.0.copyload.i2782, 281474976710655
  %i.os = inttoptr i64 %i.or to ptr
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 36
  store i32 3, ptr %i.ot, align 4, !tbaa !439
  %i.ou = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  br label %.backedge.backedge

bb.bc:                                            ; preds = %.backedge
  %i.ov = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !81
  %i.ox = sext i8 %i.ow to i64
  %i.oy = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.ox
  call void @_ZN6hermes2vm11Interpreter13saveGeneratorERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %i.oy) #10
  %i.oz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.bd:                                            ; preds = %.backedge
  %i.pa = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.pb = load i32, ptr %i.pa, align 1, !tbaa !81
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.pc
  call void @_ZN6hermes2vm11Interpreter13saveGeneratorERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %i.pd) #10
  %i.pe = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  br label %.backedge.backedge

bb.be:                                            ; preds = %.backedge
  %.sroa.0.0.copyload.i2783 = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.pf = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i2783, i64 -48
  %.sroa.0.0.copyload.i2784 = load i64, ptr %i.pf, align 8, !tbaa !61
  %i.pg = and i64 %.sroa.0.0.copyload.i2784, 281474976710655
  %i.ph = inttoptr i64 %i.pg to ptr               ; 4 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 36 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !439
  %i.pk = icmp eq i32 %i.pj, 0
  br i1 %i.pk, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.pl = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !434
  %i.po = load i64, ptr %i.ar, align 8, !tbaa !61
  %i.pp = xor i64 %i.po, %i.pn
  %i.pq = inttoptr i64 %i.pp to ptr
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 52
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !447
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !433
  %i.pv = zext i32 %i.ps to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pv
  call void @_ZN6hermes2vm22GeneratorInnerFunction12restoreStackERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(64) %i.ph, ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.22608 = phi ptr [ %i.pl, %bb.bf ], [ %i.pw, %bb.bg ]
  store i32 2, ptr %i.pi, align 4, !tbaa !439
  br label %.backedge.backedge

bb.bi:                                            ; preds = %.backedge
  %.sroa.0.0.copyload.i2785 = load ptr, ptr %i.y, align 8, !tbaa !68
  %i.px = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i2785, i64 -48
  %.sroa.0.0.copyload.i2786 = load i64, ptr %i.px, align 8, !tbaa !61
  %i.py = and i64 %.sroa.0.0.copyload.i2786, 281474976710655
  %i.pz = inttoptr i64 %i.py to ptr               ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 56 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !448 ; 2 uses
  %i.qc = icmp eq i32 %i.qb, 2
  %i.qd = zext i1 %i.qc to i64
  %i.qe = or disjoint i64 %i.qd, -1407374883553280
  %i.qf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !81
  %i.qh = zext i8 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.qh
  store i64 %i.qe, ptr %i.qi, align 8, !tbaa !69
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pz, i64 48 ; 3 uses
  %.sroa.0.0.copyload.i2788 = load i32, ptr %i.qj, align 8, !tbaa !3 ; 10 uses
  %i.qk = trunc i32 %.sroa.0.0.copyload.i2788 to i8
  %i.ql = and i8 %i.qk, 15
  switch i8 %i.ql, label %default.unreachable [
    i8 0, label %bb.bj
    i8 8, label %bb.bj
    i8 1, label %bb.bk
    i8 9, label %bb.bk
    i8 2, label %bb.bl
    i8 10, label %bb.bl
    i8 3, label %bb.bm
    i8 11, label %bb.bm
    i8 4, label %bb.bn
    i8 12, label %bb.bn
    i8 5, label %bb.bo
    i8 13, label %bb.bo
    i8 6, label %bb.bp
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %bb.bq
    i8 15, label %bb.br
  ]

bb.bj:                                            ; preds = %bb.bi, %bb.bi
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i2788, 0
  %i.qm = zext i32 %.sroa.0.0.copyload.i2788 to i64
  %i.qn = add i64 %i.qm, %i.an
  %i.qo = or i64 %i.qn, -281474976710656
  %i.qp = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.qo
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.bk:                                            ; preds = %bb.bi, %bb.bi
  %i.qq = and i32 %.sroa.0.0.copyload.i2788, -8
  %i.qr = zext i32 %i.qq to i64
  %i.qs = add i64 %i.qr, %i.an
  %i.qt = or i64 %i.qs, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.bl:                                            ; preds = %bb.bi, %bb.bi
  %i.qu = and i32 %.sroa.0.0.copyload.i2788, -8
  %i.qv = zext i32 %i.qu to i64
  %i.qw = add i64 %i.qv, %i.an
  %i.qx = or i64 %i.qw, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.bm:                                            ; preds = %bb.bi, %bb.bi
  %i.qy = and i32 %.sroa.0.0.copyload.i2788, -8
  %i.qz = zext i32 %i.qy to i64
  %i.ra = add i64 %i.qz, %i.an
  %i.rb = inttoptr i64 %i.ra to ptr
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !77 ; 2 uses
  %i.re = fcmp uno double %i.rd, 0.000000e+00
  %i.rf = bitcast double %i.rd to i64
  %.sroa.0.0.i.i2789 = select i1 %i.re, i64 9221120237041090560, i64 %i.rf, !prof !65
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.bn:                                            ; preds = %bb.bi, %bb.bi
  %i.rg = ashr i32 %.sroa.0.0.copyload.i2788, 3
  %i.rh = sitofp i32 %i.rg to double
  %i.ri = bitcast double %i.rh to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.bo:                                            ; preds = %bb.bi, %bb.bi
  %i.rj = lshr i32 %.sroa.0.0.copyload.i2788, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = or disjoint i64 %i.rk, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.bp:                                            ; preds = %bb.bi
  %i.rm = icmp ugt i32 %.sroa.0.0.copyload.i2788, 15
  %i.rn = zext i1 %i.rm to i64
  %i.ro = or disjoint i64 %i.rn, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.bq:                                            ; preds = %bb.bi
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.br:                                            ; preds = %bb.bi
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %bb.bi
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.sroa.05.0.i = phi i64 [ %i.qp, %bb.bj ], [ %i.qt, %bb.bk ], [ %i.qx, %bb.bl ], [ %.sroa.0.0.i.i2789, %bb.bm ], [ %i.ri, %bb.bn ], [ %i.rl, %bb.bo ], [ %i.ro, %bb.bp ], [ -1548112371908608, %bb.br ], [ -1970324836974592, %bb.bq ], [ -1688849860263936, %bb.bi ]
  %i.rp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !81
  %i.rr = zext i8 %i.rq to i64
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.rr
  store i64 %.sroa.05.0.i, ptr %i.rs, align 8, !tbaa !69
  %i.rt = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.ru = ptrtoint ptr %i.qj to i64
  %i.rv = and i64 %i.ru, 562949949227008
  %i.rw = inttoptr i64 %i.rv to ptr
  %i.rx = icmp ne ptr %i.rt, %i.rw
  %i.ry = load i8, ptr %i.ap, align 1, !range !428
  %i.rz = trunc nuw i8 %i.ry to i1
  %or.cond.i.i.i = select i1 %i.rx, i1 %i.rz, i1 false, !prof !449
  br i1 %or.cond.i.i.i, label %bb.bs, label %_ZN6hermes2vm22GeneratorInnerFunction11clearResultERNS0_7RuntimeE.exit, !prof !449

bb.bs:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i32 %.sroa.0.0.copyload.i2788) #10
  %.pre3925 = load i32, ptr %i.qa, align 8, !tbaa !448
  br label %_ZN6hermes2vm22GeneratorInnerFunction11clearResultERNS0_7RuntimeE.exit

_ZN6hermes2vm22GeneratorInnerFunction11clearResultERNS0_7RuntimeE.exit: ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %bb.bs
  %i.sa = phi i32 [ %i.qb, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ %.pre3925, %bb.bs ]
  store i32 7, ptr %i.qj, align 8, !tbaa !91
  %i.sb = icmp eq i32 %i.sa, 1
  br i1 %i.sb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZN6hermes2vm22GeneratorInnerFunction11clearResultERNS0_7RuntimeE.exit
  %i.sc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !81
  %i.se = zext i8 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.se
  %.sroa.0275.0.copyload = load i64, ptr %i.sf, align 8, !tbaa !61 ; 2 uses
  store i64 %.sroa.0275.0.copyload, ptr %i.ai, align 8, !tbaa !69
  br label %.loopexit

bb.bu:                                            ; preds = %_ZN6hermes2vm22GeneratorInnerFunction11clearResultERNS0_7RuntimeE.exit
  %i.sg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.bv:                                            ; preds = %.backedge
  %i.sh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !81
  %i.sj = zext i8 %i.si to i64
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.sj
  %.sroa.0274.0.copyload = load i64, ptr %i.sk, align 8, !tbaa !61 ; 2 uses
  %i.sl = getelementptr inbounds i8, ptr %.32602, i64 -8
  %i.sm = getelementptr inbounds i8, ptr %.32602, i64 -24
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !69
  %i.so = getelementptr inbounds i8, ptr %.32602, i64 -32
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !69 ; 2 uses
  store ptr %i.sl, ptr %i.x, align 8, !tbaa !330
  %i.sq = getelementptr inbounds i8, ptr %.32602, i64 -16
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !69
  %i.ss = inttoptr i64 %i.sr to ptr               ; 2 uses
  store ptr %i.ss, ptr %i.y, align 8, !tbaa !68
  %.not2653 = icmp eq i64 %i.sp, 0
  br i1 %.not2653, label %.loopexit3763, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.st = inttoptr i64 %i.sp to ptr               ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8 ; 2 uses
  %i.sv = inttoptr i64 %i.sn to ptr               ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !430 ; 2 uses
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = trunc i64 %i.sy to i1
  %..i.i2791 = select i1 %i.sz, i64 29, i64 15, !prof !65
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 %..i.i2791
  %.sroa.0.0.i.i2792 = load i8, ptr %i.ta, align 1, !tbaa !81
  %i.tb = lshr i8 %.sroa.0.0.i.i2792, 2
  %.lobit = and i8 %i.tb, 1                       ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sv, i64 1
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !81
  %i.te = zext i8 %i.td to i64
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.te
  store i64 %.sroa.0274.0.copyload, ptr %i.tf, align 8, !tbaa !69
  %i.tg = load i8, ptr %i.sv, align 1, !tbaa !81
  %i.th = add i8 %i.tg, -79
  %i.ti = zext i8 %i.th to i32
  %i.tj = shl nuw nsw i32 %i.ti, 1
  %i.tk = lshr i32 1046848, %i.tj
  %i.tl = and i32 %i.tk, 3
  %i.tm = zext nneg i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  br label %.backedge.backedge

bb.bx:                                            ; preds = %.backedge
  %i.tp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !81
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.tr
  %.sroa.0.0.copyload.i2801 = load i64, ptr %i.ai, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2801, ptr %i.ts, align 8, !tbaa !69
  store i64 -1970324836974592, ptr %i.ai, align 8, !tbaa !69
  %i.tt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.by:                                            ; preds = %.backedge
  %i.tu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !81
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.tw
  %.sroa.0.0.copyload.i2802 = load i64, ptr %i.tx, align 8, !tbaa !61 ; 2 uses
  store i64 %.sroa.0.0.copyload.i2802, ptr %i.ai, align 8, !tbaa !69
  br label %.loopexit

bb.bz:                                            ; preds = %.backedge
  %i.ty = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !81
  %i.ua = zext i8 %i.tz to i64
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ua
  %i.uc = load i64, ptr %i.ub, align 8, !tbaa !69 ; 2 uses
  %.mask.i2803 = and i64 %i.uc, -140737488355328
  %i.ud = icmp eq i64 %.mask.i2803, -1970324836974592
  br i1 %i.ud, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805, label %bb.ca, !prof !65

_ZN6hermes2vm11TwineChar16C2EPKc.exit2805:        ; preds = %bb.bz
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i32 1, ptr %i.bj, align 8, !tbaa !369
  store i64 35, ptr %i.bk, align 8, !tbaa !370
  store i64 0, ptr %i.bl, align 8, !tbaa !371
  store ptr @.str.13, ptr %5, align 8, !tbaa !81
  store i32 3, ptr %i.bm, align 8, !tbaa !366
  %i.ue = call noundef i32 @_ZN6hermes2vm7Runtime19raiseReferenceErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %5) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %.loopexitthread-pre-split.sink.split

bb.ca:                                            ; preds = %bb.bz
  %i.uf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !81
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.uh
  store i64 %i.uc, ptr %i.ui, align 8, !tbaa !69
  %i.uj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.cb:                                            ; preds = %.backedge
  %i.uk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  br label %.backedge.backedge

bb.cc:                                            ; preds = %.backedge
  %i.ul = load atomic i8, ptr %i.ay monotonic, align 8
  %.not3727 = icmp eq i8 %i.ul, 0
  br i1 %.not3727, label %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread, label %bb.cd, !prof !60

bb.cd:                                            ; preds = %bb.cc
  %i.um = load atomic i8, ptr %i.ay monotonic, align 8
  %i.un = and i8 %i.um, 4
  %i.uo = icmp eq i8 %i.un, 0
  br i1 %i.uo, label %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread, label %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit, !prof !60

_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit: ; preds = %bb.cd
  %i.up = atomicrmw and ptr %i.ay, i8 -5 monotonic, align 1
  %.not3728 = icmp eq i8 %i.up, 0
  br i1 %.not3728, label %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.uq = call noundef i32 @_ZN6hermes2vm7Runtime13notifyTimeoutEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.ur = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.us = icmp eq i32 %i.uq, 0
  br i1 %i.us, label %.loopexitthread-pre-split.loopexit4189, label %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread

_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit.thread: ; preds = %bb.cd, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit, %bb.ce, %bb.cc
  %.22596 = phi ptr [ %i.ur, %bb.ce ], [ %.sink4083.sink.in, %_ZN6hermes2vm7Runtime36testAndClearTimeoutAsyncBreakRequestEv.exit ], [ %.sink4083.sink.in, %bb.cc ], [ %.sink4083.sink.in, %bb.cd ]
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ut = getelementptr inbounds nuw i8, ptr %.22596, i64 1
  br label %.backedge.backedge

bb.cf:                                            ; preds = %.backedge
  %i.uu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.cg:                                            ; preds = %.backedge
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.14) #11
  unreachable

bb.ch:                                            ; preds = %.backedge
  %i.uv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.uw = load i16, ptr %i.uv, align 1, !tbaa !81
  %i.ux = zext i16 %i.uw to i32
  br label %bb.cj

bb.ci:                                            ; preds = %.backedge
  %i.uy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.uz = load i32, ptr %i.uy, align 1, !tbaa !81
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sink4086 = phi i64 [ 7, %bb.ci ], [ 5, %bb.ch ]
  %.02618 = phi i32 [ %i.uz, %bb.ci ], [ %i.ux, %bb.ch ] ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 %.sink4086
  %i.vb = load ptr, ptr %.4, align 8, !tbaa !398  ; 4 uses
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 48
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !7  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.vd, 0
  br i1 %.not.i.i.i.i, label %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vf = load ptr, ptr %i.ve, align 8, !tbaa !9, !nonnull !44, !align !45 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 856
  %i.vh = ptrtoint ptr %i.vf to i64
  %i.vi = zext i32 %i.vd to i64
  %i.vj = add i64 %i.vh, %i.vi                    ; 2 uses
  %i.vk = inttoptr i64 %i.vj to ptr
  call void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.vg, ptr noundef %i.vk) #10
  %i.vl = or i64 %i.vj, -281474976710656
  br label %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i

_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i = phi i64 [ %i.vl, %bb.ck ], [ -281474976710656, %bb.cj ] ; 2 uses
  %i.vm = load ptr, ptr %i.l, align 8, !tbaa !46  ; 3 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 192 ; 2 uses
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !49 ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 200
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !59
  %i.vr = icmp ult ptr %i.vo, %i.vq
  br i1 %i.vr, label %bb.cl, label %bb.cm, !prof !60

bb.cl:                                            ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  store ptr %i.vs, ptr %i.vn, align 8, !tbaa !49
  store i64 %.0.i.i.i.i, ptr %i.vo, align 8, !tbaa !61
  br label %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit

bb.cm:                                            ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i
  %i.vt = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.vm, i64 %.0.i.i.i.i) #10
  br label %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit

_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit: ; preds = %bb.cl, %bb.cm
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.vo, %bb.cl ], [ %i.vt, %bb.cm ]
  %i.vu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !81
  %i.vw = zext i8 %i.vv to i64
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vb, i64 56
  %i.vz = zext i32 %.02618 to i64
  %i.wa = load ptr, ptr %i.vy, align 8, !tbaa !62
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.wa, i64 %i.vz
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !63 ; 2 uses
  %.not.i2808 = icmp eq ptr %i.wc, null
  br i1 %.not.i2808, label %bb.cn, label %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810, !prof !65

bb.cn:                                            ; preds = %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit
  %i.wd = call noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192) %i.vb, i32 noundef %.02618) #10
  br label %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810

_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2810: ; preds = %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit, %bb.cn
  %.0.i2809 = phi ptr [ %i.wd, %bb.cn ], [ %i.wc, %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit ]
  %i.we = call ptr @_ZN6hermes2vm10JSFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i.i, ptr nonnull %i.ax, ptr %i.vx, ptr noundef %.0.i2809) #10
  %i.wf = ptrtoint ptr %i.we to i64
  %i.wg = or i64 %i.wf, -281474976710656
  %i.wh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !81
  %i.wj = zext i8 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.wj
  store i64 %i.wg, ptr %i.wk, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.co:                                            ; preds = %.backedge
  %i.wl = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.wm = load i16, ptr %i.wl, align 1, !tbaa !81
  %i.wn = zext i16 %i.wm to i32
  br label %bb.cq

bb.cp:                                            ; preds = %.backedge
  %i.wo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.wp = load i32, ptr %i.wo, align 1, !tbaa !81
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.sink4087 = phi i64 [ 7, %bb.cp ], [ 5, %bb.co ]
  %.12619 = phi i32 [ %i.wp, %bb.cp ], [ %i.wn, %bb.co ] ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 %.sink4087
  %i.wr = load ptr, ptr %.4, align 8, !tbaa !398  ; 4 uses
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 48
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !7  ; 2 uses
  %.not.i.i.i.i2812 = icmp eq i32 %i.wt, 0
  br i1 %.not.i.i.i.i2812, label %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2813, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !9, !nonnull !44, !align !45 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 856
  %i.wx = ptrtoint ptr %i.wv to i64
  %i.wy = zext i32 %i.wt to i64
  %i.wz = add i64 %i.wx, %i.wy                    ; 2 uses
  %i.xa = inttoptr i64 %i.wz to ptr
  call void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ww, ptr noundef %i.xa) #10
  %i.xb = or i64 %i.wz, -281474976710656
  br label %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2813

_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2813: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i2814 = phi i64 [ %i.xb, %bb.cr ], [ -281474976710656, %bb.cq ] ; 2 uses
  %i.xc = load ptr, ptr %i.l, align 8, !tbaa !46  ; 3 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 192 ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !49 ; 4 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xc, i64 200
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !59
  %i.xh = icmp ult ptr %i.xe, %i.xg
  br i1 %i.xh, label %bb.cs, label %bb.ct, !prof !60

bb.cs:                                            ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2813
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store ptr %i.xi, ptr %i.xd, align 8, !tbaa !49
  store i64 %.0.i.i.i.i2814, ptr %i.xe, align 8, !tbaa !61
  br label %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2816

bb.ct:                                            ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2813
  %i.xj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.xc, i64 %.0.i.i.i.i2814) #10
  br label %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2816

_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2816: ; preds = %bb.cs, %bb.ct
  %.0.i.i.i.i.i.i.i2815 = phi ptr [ %i.xe, %bb.cs ], [ %i.xj, %bb.ct ]
  %i.xk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !81
  %i.xm = zext i8 %i.xl to i64
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.xm
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wr, i64 56
  %i.xp = zext i32 %.12619 to i64
  %i.xq = load ptr, ptr %i.xo, align 8, !tbaa !62
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.xp
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !63 ; 2 uses
  %.not.i2817 = icmp eq ptr %i.xs, null
  br i1 %.not.i2817, label %bb.cu, label %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819, !prof !65

bb.cu:                                            ; preds = %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2816
  %i.xt = call noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192) %i.wr, i32 noundef %.12619) #10
  br label %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819

_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2819: ; preds = %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2816, %bb.cu
  %.0.i2818 = phi ptr [ %i.xt, %bb.cu ], [ %i.xs, %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2816 ]
  %i.xu = call ptr @_ZN6hermes2vm15JSAsyncFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i.i2815, ptr nonnull %i.av, ptr %i.xn, ptr noundef %.0.i2818) #10
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = or i64 %i.xv, -281474976710656
  %i.xx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !81
  %i.xz = zext i8 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.xz
  store i64 %i.xw, ptr %i.ya, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.cv:                                            ; preds = %.backedge
  %i.yb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.yc = load i16, ptr %i.yb, align 1, !tbaa !81
  %i.yd = zext i16 %i.yc to i32
  br label %bb.cx

bb.cw:                                            ; preds = %.backedge
  %i.ye = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.yf = load i32, ptr %i.ye, align 1, !tbaa !81
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sink4088 = phi i64 [ 7, %bb.cw ], [ 5, %bb.cv ]
  %.22620 = phi i32 [ %i.yf, %bb.cw ], [ %i.yd, %bb.cv ] ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 %.sink4088
  %i.yh = load ptr, ptr %.4, align 8, !tbaa !398  ; 4 uses
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 48
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !7  ; 2 uses
  %.not.i.i.i.i2821 = icmp eq i32 %i.yj, 0
  br i1 %.not.i.i.i.i2821, label %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2822, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !9, !nonnull !44, !align !45 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 856
  %i.yn = ptrtoint ptr %i.yl to i64
  %i.yo = zext i32 %i.yj to i64
  %i.yp = add i64 %i.yn, %i.yo                    ; 2 uses
  %i.yq = inttoptr i64 %i.yp to ptr
  call void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112) %i.ym, ptr noundef %i.yq) #10
  %i.yr = or i64 %i.yp, -281474976710656
  br label %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2822

_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2822: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i2823 = phi i64 [ %i.yr, %bb.cy ], [ -281474976710656, %bb.cx ] ; 2 uses
  %i.ys = load ptr, ptr %i.l, align 8, !tbaa !46  ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 192 ; 2 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !49 ; 4 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ys, i64 200
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !59
  %i.yx = icmp ult ptr %i.yu, %i.yw
  br i1 %i.yx, label %bb.cz, label %bb.da, !prof !60

bb.cz:                                            ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2822
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  store ptr %i.yy, ptr %i.yt, align 8, !tbaa !49
  store i64 %.0.i.i.i.i2823, ptr %i.yu, align 8, !tbaa !61
  br label %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2825

bb.da:                                            ; preds = %_ZN6hermes2vm13RuntimeModule15getDomainUnsafeERNS0_7RuntimeE.exit.i2822
  %i.yz = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ys, i64 %.0.i.i.i.i2823) #10
  br label %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2825

_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2825: ; preds = %bb.cz, %bb.da
  %.0.i.i.i.i.i.i.i2824 = phi ptr [ %i.yu, %bb.cz ], [ %i.yz, %bb.da ]
  %i.za = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !81
  %i.zc = zext i8 %i.zb to i64
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yh, i64 56
  %i.zf = zext i32 %.22620 to i64
  %i.zg = load ptr, ptr %i.ze, align 8, !tbaa !62
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.zf
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !63 ; 2 uses
  %.not.i2826 = icmp eq ptr %i.zi, null
  br i1 %.not.i2826, label %bb.db, label %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828, !prof !65

bb.db:                                            ; preds = %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2825
  %i.zj = call noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192) %i.yh, i32 noundef %.22620) #10
  br label %_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828

_ZN6hermes2vm13RuntimeModule23getCodeBlockMayAllocateEj.exit2828: ; preds = %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2825, %bb.db
  %.0.i2827 = phi ptr [ %i.zj, %bb.db ], [ %i.zi, %_ZN6hermes2vm13RuntimeModule9getDomainERNS0_7RuntimeE.exit2825 ]
  %i.zk = call ptr @_ZN6hermes2vm19JSGeneratorFunction6createERNS0_7RuntimeENS0_6HandleINS0_6DomainEEENS4_INS0_8JSObjectEEENS4_INS0_11EnvironmentEEEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i.i2824, ptr nonnull %i.aw, ptr %i.zd, ptr noundef %.0.i2827) #10
  %i.zl = ptrtoint ptr %i.zk to i64
  %i.zm = or i64 %i.zl, -281474976710656
  %i.zn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !81
  %i.zp = zext i8 %i.zo to i64
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.zp
  store i64 %i.zm, ptr %i.zq, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.dc:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.zr = load ptr, ptr %.4, align 8, !tbaa !398
  %i.zs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.zt = load i16, ptr %i.zs, align 1, !tbaa !81
  %i.zu = zext i16 %i.zt to i32
  %i.zv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.zw = load i8, ptr %i.zv, align 1, !tbaa !81
  %i.zx = zext i8 %i.zw to i64
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.zx
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  %i.zz = getelementptr inbounds i8, ptr %.32602, i64 -64
  %i.aaa = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !69, !noalias !450
  %i.aac = trunc i64 %i.aab to i32
  %i.aad = getelementptr inbounds i8, ptr %.32602, i64 -48
  store ptr %i.zz, ptr %6, align 8, !tbaa !66, !alias.scope !450
  store i32 %i.aac, ptr %i.al, align 8, !tbaa !340, !alias.scope !450
  store ptr %i.aad, ptr %i.am, align 8, !tbaa !342, !alias.scope !450
  %i.aae = call ptr @_ZN6hermes2vm11Interpreter19createGenerator_RJSERNS0_7RuntimeEPNS0_13RuntimeModuleEjNS0_6HandleINS0_11EnvironmentEEENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %i.zr, i32 noundef %i.zu, ptr %i.zy, ptr noundef nonnull dead_on_return %6) ; 2 uses
  %i.aaf = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3722 = icmp eq ptr %i.aae, inttoptr (i64 -1 to ptr)
  br i1 %.not3722, label %.loopexitthread-pre-split.loopexit4189, label %bb.dd, !prof !65

bb.dd:                                            ; preds = %bb.dc
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = or i64 %i.aag, -281474976710656
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 1
  %i.aaj = load i8, ptr %i.aai, align 1, !tbaa !81
  %i.aak = zext i8 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aak
  store i64 %i.aah, ptr %i.aal, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aaf, i64 5
  br label %.backedge.backedge

bb.de:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.aan = load ptr, ptr %.4, align 8, !tbaa !398
  %i.aao = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.aap = load i32, ptr %i.aao, align 1, !tbaa !81
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !81
  %i.aas = zext i8 %i.aar to i64
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aas
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  %i.aau = getelementptr inbounds i8, ptr %.32602, i64 -64
  %i.aav = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !69, !noalias !453
  %i.aax = trunc i64 %i.aaw to i32
  %i.aay = getelementptr inbounds i8, ptr %.32602, i64 -48
  store ptr %i.aau, ptr %7, align 8, !tbaa !66, !alias.scope !453
  store i32 %i.aax, ptr %i.aj, align 8, !tbaa !340, !alias.scope !453
  store ptr %i.aay, ptr %i.ak, align 8, !tbaa !342, !alias.scope !453
  %i.aaz = call ptr @_ZN6hermes2vm11Interpreter19createGenerator_RJSERNS0_7RuntimeEPNS0_13RuntimeModuleEjNS0_6HandleINS0_11EnvironmentEEENS0_10NativeArgsE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %i.aan, i32 noundef %i.aap, ptr %i.aat, ptr noundef nonnull dead_on_return %7) ; 2 uses
  %i.aba = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3721 = icmp eq ptr %i.aaz, inttoptr (i64 -1 to ptr)
  br i1 %.not3721, label %.loopexitthread-pre-split.loopexit4189, label %bb.df, !prof !65

bb.df:                                            ; preds = %bb.de
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = or i64 %i.abb, -281474976710656
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 1
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !81
  %i.abf = zext i8 %i.abe to i64
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.abf
  store i64 %i.abc, ptr %i.abg, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aba, i64 7
  br label %.backedge.backedge

bb.dg:                                            ; preds = %.backedge
  %i.abi = getelementptr inbounds i8, ptr %.32602, i64 -56
  %.sroa.0.0.copyload.i2832 = load i64, ptr %i.abi, align 8, !tbaa !61
  %i.abj = and i64 %.sroa.0.0.copyload.i2832, 281474976710655
  %i.abk = inttoptr i64 %i.abj to ptr
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 20
  %.sroa.0.0.copyload.i.i.i2833 = load i32, ptr %i.abl, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i2834 = icmp eq i32 %.sroa.0.0.copyload.i.i.i2833, 0
  %i.abm = zext i32 %.sroa.0.0.copyload.i.i.i2833 to i64
  %i.abn = add i64 %i.abm, %i.an
  %i.abo = inttoptr i64 %i.abn to ptr             ; 3 uses
  %i.abp = select i1 %.not.i.i.i.i.i2834, ptr null, ptr %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !81 ; 3 uses
  %.not26633851 = icmp eq i8 %i.abr, 0
  br i1 %.not26633851, label %._crit_edge3856, label %.lr.ph3855.preheader

.lr.ph3855.preheader:                             ; preds = %bb.dg
  %i.abs = zext i8 %i.abr to i32                  ; 3 uses
  %xtraiter4252 = and i32 %i.abs, 7               ; 2 uses
  %lcmp.mod4253.not = icmp eq i32 %xtraiter4252, 0
  br i1 %lcmp.mod4253.not, label %.lr.ph3855.prol.loopexit, label %.lr.ph3855.prol

.lr.ph3855.prol:                                  ; preds = %.lr.ph3855.preheader, %.lr.ph3855.prol
  %.026313853.prol = phi ptr [ %i.abw, %.lr.ph3855.prol ], [ %i.abo, %.lr.ph3855.preheader ]
  %.026323852.prol = phi i32 [ %i.abx, %.lr.ph3855.prol ], [ %i.abs, %.lr.ph3855.preheader ]
  %prol.iter4254 = phi i32 [ %prol.iter4254.next, %.lr.ph3855.prol ], [ 0, %.lr.ph3855.preheader ]
  %i.abt = getelementptr inbounds nuw i8, ptr %.026313853.prol, i64 4
  %.sroa.0.0.copyload.i.i.i2835.prol = load i32, ptr %i.abt, align 4, !tbaa !3 ; 2 uses
  %i.abu = zext i32 %.sroa.0.0.copyload.i.i.i2835.prol to i64
  %i.abv = add i64 %i.abu, %i.an
  %i.abw = inttoptr i64 %i.abv to ptr             ; 3 uses
  %i.abx = add nsw i32 %.026323852.prol, -1       ; 2 uses
  %prol.iter4254.next = add i32 %prol.iter4254, 1 ; 2 uses
  %prol.iter4254.cmp.not = icmp eq i32 %prol.iter4254.next, %xtraiter4252
  br i1 %prol.iter4254.cmp.not, label %.lr.ph3855.prol.loopexit, label %.lr.ph3855.prol, !llvm.loop !456

.lr.ph3855.prol.loopexit:                         ; preds = %.lr.ph3855.prol, %.lr.ph3855.preheader
  %.sroa.0.0.copyload.i.i.i2835.lcssa.unr = phi i32 [ poison, %.lr.ph3855.preheader ], [ %.sroa.0.0.copyload.i.i.i2835.prol, %.lr.ph3855.prol ]
  %.lcssa4204.unr = phi ptr [ poison, %.lr.ph3855.preheader ], [ %i.abw, %.lr.ph3855.prol ]
  %.026313853.unr = phi ptr [ %i.abo, %.lr.ph3855.preheader ], [ %i.abw, %.lr.ph3855.prol ]
  %.026323852.unr = phi i32 [ %i.abs, %.lr.ph3855.preheader ], [ %i.abx, %.lr.ph3855.prol ]
  %i.aby = icmp ult i8 %i.abr, 8
  br i1 %i.aby, label %._crit_edge3856.loopexit, label %.lr.ph3855

.lr.ph3855:                                       ; preds = %.lr.ph3855.prol.loopexit, %.lr.ph3855
  %.026313853 = phi ptr [ %i.ade, %.lr.ph3855 ], [ %.026313853.unr, %.lr.ph3855.prol.loopexit ]
  %.026323852 = phi i32 [ %i.adf, %.lr.ph3855 ], [ %.026323852.unr, %.lr.ph3855.prol.loopexit ]
  %i.abz = getelementptr inbounds nuw i8, ptr %.026313853, i64 4
  %.sroa.0.0.copyload.i.i.i2835 = load i32, ptr %i.abz, align 4, !tbaa !3
  %i.aca = zext i32 %.sroa.0.0.copyload.i.i.i2835 to i64
  %i.acb = add i64 %i.aca, %i.an
  %i.acc = inttoptr i64 %i.acb to ptr
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %.sroa.0.0.copyload.i.i.i2835.1 = load i32, ptr %i.acd, align 4, !tbaa !3
  %i.ace = zext i32 %.sroa.0.0.copyload.i.i.i2835.1 to i64
  %i.acf = add i64 %i.ace, %i.an
  %i.acg = inttoptr i64 %i.acf to ptr
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %.sroa.0.0.copyload.i.i.i2835.2 = load i32, ptr %i.ach, align 4, !tbaa !3
  %i.aci = zext i32 %.sroa.0.0.copyload.i.i.i2835.2 to i64
  %i.acj = add i64 %i.aci, %i.an
  %i.ack = inttoptr i64 %i.acj to ptr
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  %.sroa.0.0.copyload.i.i.i2835.3 = load i32, ptr %i.acl, align 4, !tbaa !3
  %i.acm = zext i32 %.sroa.0.0.copyload.i.i.i2835.3 to i64
  %i.acn = add i64 %i.acm, %i.an
  %i.aco = inttoptr i64 %i.acn to ptr
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  %.sroa.0.0.copyload.i.i.i2835.4 = load i32, ptr %i.acp, align 4, !tbaa !3
  %i.acq = zext i32 %.sroa.0.0.copyload.i.i.i2835.4 to i64
  %i.acr = add i64 %i.acq, %i.an
  %i.acs = inttoptr i64 %i.acr to ptr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 4
  %.sroa.0.0.copyload.i.i.i2835.5 = load i32, ptr %i.act, align 4, !tbaa !3
  %i.acu = zext i32 %.sroa.0.0.copyload.i.i.i2835.5 to i64
  %i.acv = add i64 %i.acu, %i.an
  %i.acw = inttoptr i64 %i.acv to ptr
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 4
  %.sroa.0.0.copyload.i.i.i2835.6 = load i32, ptr %i.acx, align 4, !tbaa !3
  %i.acy = zext i32 %.sroa.0.0.copyload.i.i.i2835.6 to i64
  %i.acz = add i64 %i.acy, %i.an
  %i.ada = inttoptr i64 %i.acz to ptr
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  %.sroa.0.0.copyload.i.i.i2835.7 = load i32, ptr %i.adb, align 4, !tbaa !3 ; 2 uses
  %i.adc = zext i32 %.sroa.0.0.copyload.i.i.i2835.7 to i64
  %i.add = add i64 %i.adc, %i.an
  %i.ade = inttoptr i64 %i.add to ptr             ; 2 uses
  %i.adf = add nsw i32 %.026323852, -8            ; 2 uses
  %.not2663.7 = icmp eq i32 %i.adf, 0
  br i1 %.not2663.7, label %._crit_edge3856.loopexit, label %.lr.ph3855, !llvm.loop !458

._crit_edge3856.loopexit:                         ; preds = %.lr.ph3855, %.lr.ph3855.prol.loopexit
  %.sroa.0.0.copyload.i.i.i2835.lcssa = phi i32 [ %.sroa.0.0.copyload.i.i.i2835.lcssa.unr, %.lr.ph3855.prol.loopexit ], [ %.sroa.0.0.copyload.i.i.i2835.7, %.lr.ph3855 ]
  %.lcssa4204 = phi ptr [ %.lcssa4204.unr, %.lr.ph3855.prol.loopexit ], [ %i.ade, %.lr.ph3855 ]
  %.not.i.i.i.i.i2836 = icmp eq i32 %.sroa.0.0.copyload.i.i.i2835.lcssa, 0
  %i.adg = select i1 %.not.i.i.i.i.i2836, ptr null, ptr %.lcssa4204
  br label %._crit_edge3856

._crit_edge3856:                                  ; preds = %._crit_edge3856.loopexit, %bb.dg
  %.02631.lcssa = phi ptr [ %i.abp, %bb.dg ], [ %i.adg, %._crit_edge3856.loopexit ]
  %i.adh = ptrtoint ptr %.02631.lcssa to i64
  %i.adi = or i64 %i.adh, -281474976710656
  %i.adj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !81
  %i.adl = zext i8 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.adl
  store i64 %i.adi, ptr %i.adm, align 8, !tbaa !69
  %i.adn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.dh:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ado = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !81
  %i.adq = zext i8 %i.adp to i64
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.adq
  %i.ads = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.adt = load i32, ptr %i.ads, align 1, !tbaa !81 ; 4 uses
  %i.adu = shl i32 %i.adt, 3
  %i.adv = add i32 %i.adu, 23                     ; 2 uses
  %i.adw = and i32 %i.adv, -8                     ; 2 uses
  %i.adx = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %i.ady = zext i32 %i.adw to i64
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 %i.ady ; 2 uses
  %i.aea = load ptr, ptr %i.bc, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.adz, %i.aea
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.di, label %bb.dj, !prof !65

bb.di:                                            ; preds = %bb.dh
  %i.aeb = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i32 noundef %i.adw) #10
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dh
  store ptr %i.adz, ptr %i.bb, align 8, !tbaa !72
  br label %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i

_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i: ; preds = %bb.dj, %bb.di
  %i.aec = phi ptr [ %i.aeb, %bb.di ], [ %i.adx, %bb.dj ] ; 5 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 4 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.adr, align 8, !tbaa !61 ; 2 uses
  %i.aee = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, 281474976710655 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aee, 0
  %i.aef = sub i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, %i.an
  %i.aeg = trunc i64 %i.aef to i32
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 0, i32 %i.aeg
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aed, align 4, !tbaa !3
  %i.aeh = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.aei = ptrtoint ptr %i.aed to i64
  %i.aej = and i64 %i.aei, -4194304
  %i.aek = inttoptr i64 %i.aej to ptr
  %i.ael = icmp eq ptr %i.aeh, %i.aek
  br i1 %i.ael, label %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i, label %bb.dk, !prof !60

bb.dk:                                            ; preds = %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i
  %i.aem = inttoptr i64 %i.aee to ptr
  call void @_ZN6hermes2vm7HadesGC22relocationWriteBarrierEPKvS3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.aed, ptr noundef %i.aem) #10
  br label %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i

_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i: ; preds = %bb.dk, %_ZN6hermes2vm7HadesGC9allocWorkILb0ELNS0_12HasFinalizerE0EEEPvj.exit.i.i.i.i.i
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i32 %i.adt, ptr %i.aen, align 4, !tbaa !459
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aec, i64 16 ; 3 uses
  %i.aep = zext i32 %i.adt to i64
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aep, 3 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %.idx.i.i.i.i.i.i.i
  %.not1421.i.i.i.i.i.i.i.i = icmp eq i32 %i.adt, 0
  br i1 %.not1421.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN6hermes2vm9GCPointerINS0_11EnvironmentEEC2ERNS0_11PointerBaseEPS2_RNS0_7HadesGCE.exit.i.i.i.i.i.i.i
  %i.aer = add nsw i64 %.idx.i.i.i.i.i.i.i, -8    ; 2 uses
  %i.aes = lshr exact i64 %i.aer, 3
  %i.aet = add nuw nsw i64 %i.aes, 1
  %xtraiter = and i64 %i.aet, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.01320.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.aeo, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  store i64 -1688849860263936, ptr %.01320.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !61
  %i.aeu = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !461

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.01320.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.aeo, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.aeu, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.aev = icmp ult i64 %i.aer, 56
  br i1 %i.aev, label %_ZN6hermes2vm11Environment6createERNS0_7RuntimeENS0_6HandleIS1_EEj.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.01320.i.i.i.i.i.i.i.i = phi ptr [ %i.afd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.01320.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 -1688849860263936, ptr %.01320.i.i.i.i.i.i.i.i, align 8, !tbaa !61
  %i.aew = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.i.i.i, i64 8
  store i64 -1688849860263936, ptr %i.aew, align 8, !tbaa !61
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE:bb.a
bb.ez:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2870

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit2870: ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit, %bb.er, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.ex, %bb.ey, %bb.ez
  %.sroa.05.0.i2866 = phi i64 [ %i.apf, %bb.er ], [ %i.apj, %bb.es ], [ %i.apn, %bb.et ], [ %.sroa.0.0.i.i2867, %bb.eu ], [ %i.apy, %bb.ev ], [ %i.aqb, %bb.ew ], [ %i.aqe, %bb.ex ], [ -1548112371908608, %bb.ez ], [ -1970324836974592, %bb.ey ], [ -1688849860263936, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE1EEES4_PS1_RNS0_11PointerBaseEj.exit ]
  %i.aqf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !81
  %i.aqh = zext i8 %i.aqg to i64
  %i.aqi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aqh
  store i64 %.sroa.05.0.i2866, ptr %i.aqi, align 8, !tbaa !69
  br label %.backedge.backedge

bb.fa:                                            ; preds = %bb.en
  %i.aqj = load ptr, ptr %.4, align 8, !tbaa !398
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 24
  %i.aql = zext i32 %.32621 to i64
  %i.aqm = load ptr, ptr %i.aqk, align 8, !tbaa !408
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %i.aqm, i64 %i.aql
  %.sroa.0.0.copyload.i2872 = load i32, ptr %i.aqn, align 4, !tbaa !3 ; 2 uses
  store i32 0, ptr %8, align 8, !tbaa !81
  store i32 -1, ptr %i.be, align 4, !tbaa !98
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.aqo = call i32 @_ZN6hermes2vm8JSObject28tryGetOwnNamedDescriptorFastEPS1_RNS0_7RuntimeENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE(ptr noundef nonnull %i.aoe, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2872, ptr noundef nonnull align 4 dereferenceable(8) %8) ; 2 uses
  %i.aqp = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.aqq = icmp sgt i32 %i.aqo, -1
  br i1 %i.aqq, label %bb.fb, label %.critedge2666, !prof !60

bb.fb:                                            ; preds = %bb.fa
  %.not3743 = icmp eq i32 %i.aqo, 0
  br i1 %.not3743, label %bb.fi, label %bb.fc, !prof !65

bb.fc:                                            ; preds = %bb.fb
  %i.aqr = load i16, ptr %8, align 8
  %i.aqs = and i16 %i.aqr, 16
  %.not2659 = icmp eq i16 %i.aqs, 0
  br i1 %.not2659, label %bb.fd, label %.critedge2666

bb.fd:                                            ; preds = %bb.fc
  %i.aqt = zext i32 %i.aol to i64
  %i.aqu = add i64 %i.aqt, %i.an
  %i.aqv = inttoptr i64 %i.aqu to ptr
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqv, i64 10
  %i.aqx = load i8, ptr %i.aqw, align 2
  %i.aqy = and i8 %i.aqx, 2
  %i.aqz = icmp ne i8 %i.aqy, 0
  %.not2660 = icmp eq i8 %i.aog, 0
  %or.cond = or i1 %.not2660, %i.aqz
  br i1 %or.cond, label %bb.ff, label %bb.fe, !prof !468

bb.fe:                                            ; preds = %bb.fd
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !3
  %i.ara = load i32, ptr %i.be, align 4, !tbaa !98
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aoj, i64 4
  store i32 %i.ara, ptr %i.arb, align 4, !tbaa !465
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %.sroa.0212.0.copyload = load i64, ptr %8, align 8 ; 2 uses
  %.sroa.1.0.extract.shift.i = lshr i64 %.sroa.0212.0.copyload, 32 ; 2 uses
  %i.arc = icmp ult i64 %.sroa.0212.0.copyload, 21474836480
  br i1 %i.arc, label %bb.fg, label %bb.fh, !prof !60

bb.fg:                                            ; preds = %bb.ff
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aoe, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

bb.fh:                                            ; preds = %bb.ff
  %i.are = getelementptr inbounds nuw i8, ptr %i.aoe, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.are, align 4, !tbaa !3
  %i.arf = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.arg = add i64 %i.arf, %i.an
  %i.arh = inttoptr i64 %i.arg to ptr
  %i.ari = add nuw nsw i64 %.sroa.1.0.extract.shift.i, 4294967291
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arh, i64 8
  %i.ark = and i64 %i.ari, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.fg, %bb.fh
  %.sink6.i.i = phi i64 [ %i.ark, %bb.fh ], [ %.sroa.1.0.extract.shift.i, %bb.fg ]
  %.sink.i.i2874 = phi ptr [ %i.arj, %bb.fh ], [ %i.ard, %bb.fg ]
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i2874, i64 %.sink6.i.i
  %.sroa.0.0.i.i2875 = load i32, ptr %i.arl, align 4, !tbaa !3
  store i32 %.sroa.0.0.i.i2875, ptr %9, align 4
  %i.arm = call i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqp, i64 1
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !81
  %i.arp = zext i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.arp
  store i64 %i.arm, ptr %i.arq, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %.backedge.backedge

bb.fi:                                            ; preds = %bb.fb
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aoe, i64 4
  %i.ars = load i32, ptr %i.arr, align 4          ; 2 uses
  %i.art = and i32 %i.ars, 128
  %.not3744 = icmp eq i32 %i.art, 0
  br i1 %.not3744, label %bb.fj, label %.critedge2666, !prof !60

bb.fj:                                            ; preds = %bb.fi
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  %.sroa.0.0.copyload.i.i.i2877 = load i32, ptr %i.aru, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i2878 = icmp eq i32 %.sroa.0.0.copyload.i.i.i2877, 0
  %i.arv = zext i32 %.sroa.0.0.copyload.i.i.i2877 to i64
  %i.arw = add i64 %i.arv, %i.an                  ; 2 uses
  %i.arx = inttoptr i64 %i.arw to ptr             ; 3 uses
  %.not26613745 = icmp eq i64 %i.arw, 0
  %.not2661 = or i1 %.not.i.i.i.i.i2878, %.not26613745
  br i1 %.not2661, label %.critedge2666, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 12
  %.sroa.0.0.copyload.i2879 = load i32, ptr %i.ary, align 4, !tbaa !3
  %i.arz = load i32, ptr %i.aoj, align 4, !tbaa !7
  %i.asa = icmp ne i32 %i.arz, %.sroa.0.0.copyload.i2879
  %i.asb = and i32 %i.ars, 64
  %i.asc = icmp ne i32 %i.asb, 0
  %or.cond3674 = or i1 %i.asc, %i.asa
  br i1 %or.cond3674, label %.critedge2666, label %bb.fl, !prof !71

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.asd = getelementptr inbounds nuw i8, ptr %i.aoj, i64 4
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !465 ; 3 uses
  %i.asf = icmp ult i32 %i.ase, 5
  br i1 %i.asf, label %bb.fm, label %bb.fn, !prof !60

bb.fm:                                            ; preds = %bb.fl
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arx, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit

bb.fn:                                            ; preds = %bb.fl
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arx, i64 16
  %.sroa.0.0.copyload.i.i.i2880 = load i32, ptr %i.ash, align 4, !tbaa !3
  %i.asi = zext i32 %.sroa.0.0.copyload.i.i.i2880 to i64
  %i.asj = add i64 %i.asi, %i.an
  %i.ask = inttoptr i64 %i.asj to ptr
  %i.asl = add i32 %i.ase, -5
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ask, i64 8
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEES4_PS1_RNS0_11PointerBaseEj.exit: ; preds = %bb.fm, %bb.fn
  %.sink6.i2881 = phi i32 [ %i.asl, %bb.fn ], [ %i.ase, %bb.fm ]
  %.sink.i2882 = phi ptr [ %i.asm, %bb.fn ], [ %i.asg, %bb.fm ]
  %i.asn = zext i32 %.sink6.i2881 to i64
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %.sink.i2882, i64 %i.asn
  %.sroa.0.0.i2883 = load i32, ptr %i.aso, align 4, !tbaa !3
  store i32 %.sroa.0.0.i2883, ptr %10, align 4
  %i.asp = call i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 1
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !81
  %i.ass = zext i8 %i.asr to i64
  %i.ast = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ass
  store i64 %i.asp, ptr %i.ast, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %.backedge.backedge

.critedge2666:                                    ; preds = %bb.fc, %bb.fa, %bb.fj, %bb.fk, %bb.fi
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aqp, i64 2
  %i.asv = load i8, ptr %i.asu, align 1, !tbaa !81
  %i.asw = zext i8 %i.asv to i64
  %i.asx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.asw ; 2 uses
  %i.asy = or disjoint i8 %.sroa.03592.1, 2
  %.sroa.0203.0.in = select i1 %.02627, i8 %i.asy, i8 %.sroa.03592.1
  %.sroa.0203.0 = zext nneg i8 %.sroa.0203.0.in to i32
  %.not2662 = icmp eq i8 %i.aog, 0
  %i.asz = select i1 %.not2662, ptr null, ptr %i.aoj
  %i.ata = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.asx, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2872, ptr %i.asx, i32 %.sroa.0203.0, ptr noundef %i.asz) #10 ; 2 uses
  %i.atb = extractvalue { i32, i64 } %i.ata, 0
  %i.atc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.atd = icmp eq i32 %i.atb, 0
  br i1 %i.atd, label %.loopexitthread-pre-split.loopexit4189, label %bb.fp, !prof !65

bb.fo:                                            ; preds = %bb.em
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ate = load i8, ptr %i.anx, align 1, !tbaa !81
  %i.atf = zext i8 %i.ate to i64
  %i.atg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.atf
  %i.ath = load ptr, ptr %.4, align 8, !tbaa !398
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 24
  %i.atj = zext i32 %.32621 to i64
  %i.atk = load ptr, ptr %i.ati, align 8, !tbaa !408
  %i.atl = getelementptr inbounds nuw [4 x i8], ptr %i.atk, i64 %i.atj
  %.sroa.0.0.copyload.i2892 = load i32, ptr %i.atl, align 4, !tbaa !3
  %i.atm = call { i32, i64 } @_ZN6hermes2vm11Interpreter20getByIdTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.atg, i32 %.sroa.0.0.copyload.i2892) ; 2 uses
  %i.atn = extractvalue { i32, i64 } %i.atm, 0
  %i.ato = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.atp = icmp eq i32 %i.atn, 0
  br i1 %i.atp, label %.loopexitthread-pre-split.loopexit4189, label %bb.fp, !prof !65

bb.fp:                                            ; preds = %bb.fo, %.critedge2666
  %.pn3746 = phi { i32, i64 } [ %i.ata, %.critedge2666 ], [ %i.atm, %bb.fo ]
  %.42598 = phi ptr [ %i.atc, %.critedge2666 ], [ %i.ato, %bb.fo ]
  %.sroa.21.0 = extractvalue { i32, i64 } %.pn3746, 1
  %i.atq = getelementptr inbounds nuw i8, ptr %.42598, i64 1
  %i.atr = load i8, ptr %i.atq, align 1, !tbaa !81
  %i.ats = zext i8 %i.atr to i64
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ats
  store i64 %.sroa.21.0, ptr %i.att, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.fq:                                            ; preds = %.backedge
  %i.atu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.atv = load i32, ptr %i.atu, align 1, !tbaa !81
  br label %bb.fu

bb.fr:                                            ; preds = %.backedge
  %i.atw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.atx = load i32, ptr %i.atw, align 1, !tbaa !81
  br label %bb.fu

bb.fs:                                            ; preds = %.backedge
  %i.aty = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.atz = load i16, ptr %i.aty, align 1, !tbaa !81
  %i.aua = zext i16 %i.atz to i32
  br label %bb.fu

bb.ft:                                            ; preds = %.backedge
  %i.aub = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.auc = load i16, ptr %i.aub, align 1, !tbaa !81
  %i.aud = zext i16 %i.auc to i32
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs, %bb.fr, %bb.fq
  %.sink4090 = phi i64 [ 6, %bb.ft ], [ 6, %bb.fs ], [ 8, %bb.fr ], [ 8, %bb.fq ]
  %.12628 = phi i1 [ false, %bb.ft ], [ true, %bb.fs ], [ false, %bb.fr ], [ true, %bb.fq ]
  %.42622 = phi i32 [ %i.aud, %bb.ft ], [ %i.aua, %bb.fs ], [ %i.atx, %bb.fr ], [ %i.atv, %bb.fq ] ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 %.sink4090 ; 4 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1 ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !81
  %i.auh = zext i8 %i.aug to i64
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.auh
  %i.auj = load i64, ptr %i.aui, align 8, !tbaa !69
  %i.auk = icmp ugt i64 %i.auj, -281474976710657
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  br i1 %i.auk, label %bb.fv, label %bb.gs, !prof !60

bb.fv:                                            ; preds = %bb.fu
  %i.aul = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.aum = load i8, ptr %i.aul, align 1, !tbaa !81
  %i.aun = zext i8 %i.aum to i64
  %i.auo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.aun
  %.sroa.0196.0.copyload = load i64, ptr %i.auo, align 8, !tbaa !61 ; 9 uses
  %i.aup = ashr i64 %.sroa.0196.0.copyload, 47
  switch i64 %i.aup, label %bb.gd [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.fw
    i64 -11, label %bb.fx
    i64 -10, label %bb.fy
    i64 -9, label %bb.fz
    i64 -6, label %bb.ga
    i64 -5, label %bb.ga
    i64 -4, label %bb.gb
    i64 -3, label %bb.gb
    i64 -2, label %bb.gc
    i64 -1, label %bb.gc
  ]

bb.fw:                                            ; preds = %bb.fv
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.fx:                                            ; preds = %bb.fv
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.fy:                                            ; preds = %bb.fv
  %i.auq = trunc i64 %.sroa.0196.0.copyload to i1
  %i.aur = select i1 %i.auq, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.fz:                                            ; preds = %bb.fv
  %i.aus = trunc i64 %.sroa.0196.0.copyload to i32
  %i.aut = shl i32 %i.aus, 3
  %i.auu = or disjoint i32 %i.aut, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.ga:                                            ; preds = %bb.fv, %bb.fv
  %i.auv = sub i64 %.sroa.0196.0.copyload, %i.an
  %i.auw = trunc i64 %i.auv to i32
  %i.aux = or i32 %i.auw, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.gb:                                            ; preds = %bb.fv, %bb.fv
  %i.auy = sub i64 %.sroa.0196.0.copyload, %i.an
  %i.auz = trunc i64 %i.auy to i32
  %i.ava = or i32 %i.auz, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.gc:                                            ; preds = %bb.fv, %bb.fv
  %i.avb = sub i64 %.sroa.0196.0.copyload, %i.an
  %i.avc = trunc i64 %i.avb to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.gd:                                            ; preds = %bb.fv
  %i.avd = bitcast i64 %.sroa.0196.0.copyload to double
  %i.ave = fptosi double %i.avd to i32
  %i.avf = shl i32 %i.ave, 3                      ; 2 uses
  %i.avg = ashr exact i32 %i.avf, 3
  %i.avh = sitofp i32 %i.avg to double
  %i.avi = bitcast double %i.avh to i64
  %i.avj = icmp eq i64 %.sroa.0196.0.copyload, %i.avi
  br i1 %i.avj, label %bb.ge, label %bb.gf, !prof !60

bb.ge:                                            ; preds = %bb.gd
  %i.avk = or disjoint i32 %i.avf, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.gf:                                            ; preds = %bb.gd
  %i.avl = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 16 ; 2 uses
  %i.avn = load ptr, ptr %i.bc, align 8, !tbaa !76
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.avm, %i.avn
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.gg, label %bb.gh, !prof !65

bb.gg:                                            ; preds = %bb.gf
  %i.avo = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, i32 noundef 16) #10
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.gh:                                            ; preds = %bb.gf
  store ptr %i.avm, ptr %i.bb, align 8, !tbaa !72
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.gh, %bb.gg
  %i.avp = phi ptr [ %i.avo, %bb.gg ], [ %i.avl, %bb.gh ] ; 3 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avp, i64 8
  store i64 %.sroa.0196.0.copyload, ptr %i.avq, align 8, !tbaa !77
  store i32 402653200, ptr %i.avp, align 8, !tbaa !81
  %i.avr = ptrtoint ptr %i.avp to i64
  %i.avs = sub i64 %i.avr, %i.an
  %i.avt = trunc i64 %i.avs to i32
  %i.avu = or i32 %i.avt, 3
  %.pre3930 = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.fv, %bb.fw, %bb.fx, %bb.fy, %bb.fz, %bb.ga, %bb.gb, %bb.gc, %bb.ge, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %i.avv = phi ptr [ %.sink4083.sink.in, %bb.fv ], [ %.sink4083.sink.in, %bb.gc ], [ %.sink4083.sink.in, %bb.fw ], [ %.sink4083.sink.in, %bb.fx ], [ %.sink4083.sink.in, %bb.fy ], [ %.sink4083.sink.in, %bb.fz ], [ %.sink4083.sink.in, %bb.ga ], [ %.sink4083.sink.in, %bb.gb ], [ %.sink4083.sink.in, %bb.ge ], [ %.pre3930, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.04.0.i = phi i32 [ 7, %bb.fv ], [ %i.avc, %bb.gc ], [ 14, %bb.fw ], [ 15, %bb.fx ], [ %i.aur, %bb.fy ], [ %i.auu, %bb.fz ], [ %i.aux, %bb.ga ], [ %i.ava, %bb.gb ], [ %i.avk, %bb.ge ], [ %i.avu, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 5 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 1
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !81
  %i.avy = zext i8 %i.avx to i64
  %i.avz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.avy
  %.sroa.0191.0.copyload = load i64, ptr %i.avz, align 8, !tbaa !61
  %i.awa = and i64 %.sroa.0191.0.copyload, 281474976710655
  %i.awb = inttoptr i64 %i.awa to ptr             ; 5 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avv, i64 3
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !81 ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %.4, i64 40
  %i.awf = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.awg = load i32, ptr %i.awf, align 8, !tbaa !469
  %i.awh = zext i8 %i.awd to i32
  %i.awi = add i32 %i.awg, %i.awh
  %i.awj = zext i32 %i.awi to i64
  %i.awk = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.awj ; 4 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awb, i64 12
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !3 ; 3 uses
  %i.awn = load i32, ptr %i.awk, align 4, !tbaa !7
  %i.awo = icmp eq i32 %i.awn, %i.awm
  br i1 %i.awo, label %bb.gi, label %bb.gn, !prof !60

bb.gi:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awk, i64 4
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !465 ; 3 uses
  %i.awr = icmp ult i32 %i.awq, 5
  br i1 %i.awr, label %bb.gj, label %bb.gl, !prof !60

bb.gj:                                            ; preds = %bb.gi
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awb, i64 20
  %i.awt = zext nneg i32 %i.awq to i64
  %i.awu = getelementptr inbounds nuw [4 x i8], ptr %i.aws, i64 %i.awt ; 3 uses
  %i.awv = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.aww = ptrtoint ptr %i.awu to i64
  %i.awx = and i64 %i.aww, 1125899902648320
  %i.awy = inttoptr i64 %i.awx to ptr
  %i.awz = icmp eq ptr %i.awv, %i.awy
  br i1 %i.awz, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.gk, !prof !60

bb.gk:                                            ; preds = %bb.gj
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.awu, i32 %.sroa.04.0.i) #10
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.gk, %bb.gj
  store i32 %.sroa.04.0.i, ptr %i.awu, align 4, !tbaa !91
  br label %.backedge.backedge

bb.gl:                                            ; preds = %bb.gi
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awb, i64 16
  %.sroa.0.0.copyload.i.i.i2896 = load i32, ptr %i.axa, align 4, !tbaa !3
  %i.axb = zext i32 %.sroa.0.0.copyload.i.i.i2896 to i64
  %i.axc = add i64 %i.axb, %i.an
  %i.axd = inttoptr i64 %i.axc to ptr
  %i.axe = add i32 %i.awq, -5
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axd, i64 8
  %i.axg = zext i32 %i.axe to i64
  %i.axh = getelementptr inbounds nuw [4 x i8], ptr %i.axf, i64 %i.axg ; 3 uses
  %i.axi = load ptr, ptr %i.ao, align 8, !tbaa !93
  %i.axj = ptrtoint ptr %i.axh to i64
  %i.axk = and i64 %i.axj, -4194304
  %i.axl = inttoptr i64 %i.axk to ptr
  %i.axm = icmp eq ptr %i.axi, %i.axl
  br i1 %i.axm, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i, label %bb.gm, !prof !60

bb.gm:                                            ; preds = %bb.gl
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %i.axh, i32 %.sroa.04.0.i) #10
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE1EEEvjS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.gm, %bb.gl
  store i32 %.sroa.04.0.i, ptr %i.axh, align 4, !tbaa !91
  br label %.backedge.backedge

bb.gn:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.axn = load ptr, ptr %.4, align 8, !tbaa !398
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 24
  %i.axp = zext i32 %.42622 to i64
  %i.axq = load ptr, ptr %i.axo, align 8, !tbaa !408
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %i.axq, i64 %i.axp
  %.sroa.0.0.copyload.i2897 = load i32, ptr %i.axr, align 4, !tbaa !3 ; 2 uses
  store i32 0, ptr %11, align 4, !tbaa !81
  store i32 -1, ptr %i.bd, align 4, !tbaa !98
  %i.axs = call i32 @_ZN6hermes2vm8JSObject28tryGetOwnNamedDescriptorFastEPS1_RNS0_7RuntimeENS0_8SymbolIDERNS0_23NamedPropertyDescriptorE(ptr noundef nonnull %i.awb, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2897, ptr noundef nonnull align 4 dereferenceable(8) %11)
  %i.axt = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %or.cond3675 = icmp sgt i32 %i.axs, 0
  br i1 %or.cond3675, label %bb.go, label %.critedge2668, !prof !107

bb.go:                                            ; preds = %bb.gn
  %i.axu = load i16, ptr %11, align 4
  %i.axv = and i16 %i.axu, 84
  %or.cond2670 = icmp eq i16 %i.axv, 4
  br i1 %or.cond2670, label %bb.gp, label %.critedge2668

bb.gp:                                            ; preds = %bb.go
  %i.axw = zext i32 %i.awm to i64
  %i.axx = add i64 %i.axw, %i.an
  %i.axy = inttoptr i64 %i.axx to ptr
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 10
  %i.aya = load i8, ptr %i.axz, align 2
  %i.ayb = trunc i8 %i.aya to i1
  %.not2658 = icmp eq i8 %i.awd, 0
  %or.cond2671 = or i1 %.not2658, %i.ayb
  br i1 %or.cond2671, label %._crit_edge3931, label %bb.gq, !prof !468

._crit_edge3931:                                  ; preds = %bb.gp
  %.pre3932 = load i32, ptr %i.bd, align 4, !tbaa !98
  br label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  store i32 %i.awm, ptr %i.awk, align 4, !tbaa !3
  %i.ayc = load i32, ptr %i.bd, align 4, !tbaa !98 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.awk, i64 4
  store i32 %i.ayc, ptr %i.ayd, align 4, !tbaa !465
  br label %bb.gr

bb.gr:                                            ; preds = %._crit_edge3931, %bb.gq
  %i.aye = phi i32 [ %.pre3932, %._crit_edge3931 ], [ %i.ayc, %bb.gq ]
  call void @_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEEvPS1_RNS0_7RuntimeEjS4_(ptr noundef nonnull %i.awb, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.aye, i32 %.sroa.04.0.i)
  br label %.backedge.backedge

.critedge2668:                                    ; preds = %bb.gn, %bb.go
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axt, i64 1
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !81
  %i.ayh = zext i8 %i.ayg to i64
  %i.ayi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ayh ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axt, i64 2
  %i.ayk = load i8, ptr %i.ayj, align 1, !tbaa !81
  %i.ayl = zext i8 %i.ayk to i64
  %i.aym = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ayl
  %i.ayn = or disjoint i8 %.sroa.03592.1, 2
  %.sroa.0175.0.in = select i1 %.12628, i8 %i.ayn, i8 %.sroa.03592.1
  %.sroa.0175.0 = zext nneg i8 %.sroa.0175.0.in to i32
  %i.ayo = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %i.ayi, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2897, ptr %i.aym, ptr %i.ayi, i32 %.sroa.0175.0) #10
  %i.ayp = load ptr, ptr %i.a, align 8, !tbaa !108
  %.mask3742 = and i32 %i.ayo, 255
  %i.ayq = icmp eq i32 %.mask3742, 0
  br i1 %i.ayq, label %.loopexitthread-pre-split.loopexit4189, label %bb.gt, !prof !65

bb.gs:                                            ; preds = %bb.fu
  %i.ayr = load i8, ptr %i.auf, align 1, !tbaa !81
  %i.ays = zext i8 %i.ayr to i64
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ays
  %i.ayu = load ptr, ptr %.4, align 8, !tbaa !398
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 24
  %i.ayw = zext i32 %.42622 to i64
  %i.ayx = load ptr, ptr %i.ayv, align 8, !tbaa !408
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %i.ayx, i64 %i.ayw
  %.sroa.0.0.copyload.i2906 = load i32, ptr %i.ayy, align 4, !tbaa !3
  %i.ayz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.aza = load i8, ptr %i.ayz, align 1, !tbaa !81
  %i.azb = zext i8 %i.aza to i64
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.azb
  %i.azd = trunc nuw i8 %.12604 to i1
  %i.aze = call noundef i32 @_ZN6hermes2vm11Interpreter20putByIdTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_8SymbolIDES6_b(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ayt, i32 %.sroa.0.0.copyload.i2906, ptr %i.azc, i1 noundef zeroext %i.azd)
  %i.azf = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.azg = icmp eq i32 %i.aze, 0
  br i1 %i.azg, label %.loopexitthread-pre-split.loopexit4189, label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %.critedge2668
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.gu:                                            ; preds = %.backedge
  %i.azh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.azi = load i8, ptr %i.azh, align 1, !tbaa !81
  %i.azj = zext i8 %i.azi to i64
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.azj
  %i.azl = load i64, ptr %i.azk, align 8, !tbaa !69
  %i.azm = icmp ugt i64 %i.azl, -281474976710657
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.azn = load i8, ptr %i.azh, align 1, !tbaa !81
  %i.azo = zext i8 %i.azn to i64
  %i.azp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.azo ; 3 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !81
  %i.azs = zext i8 %i.azr to i64
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.azs ; 2 uses
  br i1 %i.azm, label %bb.gv, label %bb.gw, !prof !60

bb.gv:                                            ; preds = %bb.gu
  %i.azu = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %i.azp, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.azt, ptr %i.azp) #10 ; 2 uses
  %i.azv = extractvalue { i32, i64 } %i.azu, 0
  %i.azw = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.azx = icmp eq i32 %i.azv, 0
  br i1 %i.azx, label %.loopexitthread-pre-split.loopexit4189, label %bb.gx, !prof !65

bb.gw:                                            ; preds = %bb.gu
  %i.azy = call { i32, i64 } @_ZN6hermes2vm11Interpreter21getByValTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES6_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.azp, ptr %i.azt) ; 2 uses
  %i.azz = extractvalue { i32, i64 } %i.azy, 0
  %i.baa = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bab = icmp eq i32 %i.azz, 0
  br i1 %i.bab, label %.loopexitthread-pre-split.loopexit4189, label %bb.gx, !prof !65

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.pn3736 = phi { i32, i64 } [ %i.azu, %bb.gv ], [ %i.azy, %bb.gw ]
  %.5 = phi ptr [ %i.azw, %bb.gv ], [ %i.baa, %bb.gw ] ; 2 uses
  %.sroa.21.1 = extractvalue { i32, i64 } %.pn3736, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bac = getelementptr inbounds nuw i8, ptr %.5, i64 1
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !81
  %i.bae = zext i8 %i.bad to i64
  %i.baf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bae
  store i64 %.sroa.21.1, ptr %i.baf, align 8, !tbaa !69
  %i.bag = getelementptr inbounds nuw i8, ptr %.5, i64 4
  br label %.backedge.backedge

bb.gy:                                            ; preds = %.backedge
  %i.bah = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1 ; 2 uses
  %i.bai = load i8, ptr %i.bah, align 1, !tbaa !81
  %i.baj = zext i8 %i.bai to i64
  %i.bak = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.baj
  %i.bal = load i64, ptr %i.bak, align 8, !tbaa !69
  %i.bam = icmp ugt i64 %i.bal, -281474976710657
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ban = load i8, ptr %i.bah, align 1, !tbaa !81
  %i.bao = zext i8 %i.ban to i64
  %i.bap = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bao ; 3 uses
  %i.baq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bar = load i8, ptr %i.baq, align 1, !tbaa !81
  %i.bas = zext i8 %i.bar to i64
  %i.bat = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bas ; 2 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bav = load i8, ptr %i.bau, align 1, !tbaa !81
  %i.baw = zext i8 %i.bav to i64
  %i.bax = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.baw ; 2 uses
  br i1 %i.bam, label %bb.gz, label %bb.ha, !prof !60

bb.gz:                                            ; preds = %bb.gy
  %.sroa.03592.0.insert.ext3602 = zext nneg i8 %.sroa.03592.1 to i32
  %i.bay = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %i.bap, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bat, ptr %i.bax, ptr %i.bap, i32 %.sroa.03592.0.insert.ext3602) #10
  %i.baz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.mask3735 = and i32 %i.bay, 255
  %i.bba = icmp eq i32 %.mask3735, 0
  br i1 %i.bba, label %.loopexitthread-pre-split.loopexit4189, label %bb.hb, !prof !65

bb.ha:                                            ; preds = %bb.gy
  %i.bbb = trunc nuw i8 %.12604 to i1
  %i.bbc = call noundef i32 @_ZN6hermes2vm11Interpreter21putByValTransient_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES6_S6_b(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bap, ptr %i.bat, ptr %i.bax, i1 noundef zeroext %i.bbb)
  %i.bbd = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bbe = icmp eq i32 %i.bbc, 0
  br i1 %i.bbe, label %.loopexitthread-pre-split.loopexit4189, label %bb.hb, !prof !65

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %.6 = phi ptr [ %i.baz, %bb.gz ], [ %i.bbd, %bb.ha ]
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bbf = getelementptr inbounds nuw i8, ptr %.6, i64 4
  br label %.backedge.backedge

bb.hc:                                            ; preds = %.backedge
  %i.bbg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  %i.bbh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bbi = load i32, ptr %i.bbh, align 1, !tbaa !81
  br label %bb.he

bb.hd:                                            ; preds = %.backedge
  %i.bbj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.bbk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !81
  %i.bbm = zext i8 %i.bbl to i32
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.52623 = phi i32 [ %i.bbm, %bb.hd ], [ %i.bbi, %bb.hc ]
  %.82614 = phi ptr [ %i.bbj, %bb.hd ], [ %i.bbg, %bb.hc ]
  %i.bbn = uitofp i32 %.52623 to double
  store double %i.bbn, ptr %i.o, align 8, !tbaa !69
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bbo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bbp = load i8, ptr %i.bbo, align 1, !tbaa !81
  %i.bbq = zext i8 %i.bbp to i64
  %i.bbr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bbq
  %i.bbs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !81
  %i.bbu = zext i8 %i.bbt to i64
  %i.bbv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bbu
  %i.bbw = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.bbr, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o, i32 319, ptr %i.bbv, i32 0) #10 ; 0 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br label %.backedge.backedge

bb.hf:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bbx = call noundef i32 @_ZN6hermes2vm11Interpreter16caseGetPNameListERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4083.sink.in) #10
  %i.bby = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bbz = icmp eq i32 %i.bbx, 0
  br i1 %i.bbz, label %.loopexitthread-pre-split.loopexit4189, label %bb.hg, !prof !65

bb.hg:                                            ; preds = %bb.hf
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bby, i64 5
  br label %.backedge.backedge

bb.hh:                                            ; preds = %.backedge
  %i.bcb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bcc = load i8, ptr %i.bcb, align 1, !tbaa !81
  %i.bcd = zext i8 %i.bcc to i64
  %i.bce = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bcd
  %i.bcf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bcg = load i8, ptr %i.bcf, align 1, !tbaa !81
  %i.bch = zext i8 %i.bcg to i64
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bch
  %i.bcj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.bck = load i8, ptr %i.bcj, align 1, !tbaa !81
  %i.bcl = zext i8 %i.bck to i64
  %i.bcm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bcl
  %i.bcn = load double, ptr %i.bcm, align 8, !tbaa !69
  %i.bco = fptoui double %i.bcn to i32            ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !81
  %i.bcr = zext i8 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bcr
  %i.bct = load double, ptr %i.bcs, align 8, !tbaa !69
  %i.bcu = fptoui double %i.bct to i32            ; 2 uses
  %i.bcv = load ptr, ptr %i.l, align 8, !tbaa !46 ; 4 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcv, i64 192 ; 2 uses
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !49 ; 4 uses
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcv, i64 200
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !59 ; 2 uses
  %i.bda = icmp ult ptr %i.bcx, %i.bcz
  br i1 %i.bda, label %bb.hi, label %bb.hj, !prof !60

bb.hi:                                            ; preds = %bb.hh
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcx, i64 8 ; 2 uses
  store ptr %i.bdb, ptr %i.bcw, align 8, !tbaa !49
  store i64 -281474976710656, ptr %i.bcx, align 8, !tbaa !61
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.hj:                                            ; preds = %bb.hh
  %i.bdc = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bcv, i64 -281474976710656) #10
  %.pre3926 = load ptr, ptr %i.l, align 8, !tbaa !46 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre3926, i64 192
  %.pre3927 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
  %.phi.trans.insert3928 = getelementptr inbounds nuw i8, ptr %.pre3926, i64 200
  %.pre3929 = load ptr, ptr %.phi.trans.insert3928, align 8, !tbaa !59
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.hi, %bb.hj
  %i.bdd = phi ptr [ %i.bcz, %bb.hi ], [ %.pre3929, %bb.hj ]
  %i.bde = phi ptr [ %i.bdb, %bb.hi ], [ %.pre3927, %bb.hj ] ; 4 uses
  %i.bdf = phi ptr [ %i.bcv, %bb.hi ], [ %.pre3926, %bb.hj ] ; 2 uses
  %.0.i.i.i.i.i.i2910 = phi ptr [ %i.bcx, %bb.hi ], [ %i.bdc, %bb.hj ]
  store ptr %.0.i.i.i.i.i.i2910, ptr %12, align 8, !tbaa !96
  %i.bdg = icmp ult ptr %i.bde, %i.bdd
  br i1 %i.bdg, label %bb.hk, label %bb.hl, !prof !60

bb.hk:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdf, i64 192
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  store ptr %i.bdi, ptr %i.bdh, align 8, !tbaa !49
  store i64 -1266636858327041, ptr %i.bde, align 8, !tbaa !61
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.hl:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bdj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bdf, i64 -1266636858327041) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.hk, %bb.hl
  %.0.i.i.i.i.i.i2911 = phi ptr [ %i.bde, %bb.hk ], [ %i.bdj, %bb.hl ]
  store ptr %.0.i.i.i.i.i.i2911, ptr %13, align 8, !tbaa !96
  %i.bdk = icmp ult i32 %i.bco, %i.bcu
  br i1 %i.bdk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.ho
  %.73850 = phi ptr [ %i.beb, %bb.ho ], [ %.sink4083.sink.in, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ]
  %.026333849 = phi i32 [ %i.bej, %bb.ho ], [ %i.bco, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ] ; 6 uses
  %.sroa.0.0.copyload.i.i2912 = load i64, ptr %i.bci, align 8, !tbaa !61
  %i.bdl = and i64 %.sroa.0.0.copyload.i.i2912, 281474976710655
  %i.bdm = inttoptr i64 %i.bdl to ptr             ; 2 uses
  %i.bdn = icmp ult i32 %.026333849, 4096
  br i1 %i.bdn, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit, label %bb.hm

bb.hm:                                            ; preds = %.lr.ph
  %i.bdo = add i32 %.026333849, -4096
  %i.bdp = lshr i32 %i.bdo, 10
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdm, i64 32776
  %i.bdr = zext nneg i32 %i.bdp to i64
  %i.bds = getelementptr inbounds nuw [8 x i8], ptr %i.bdq, i64 %i.bdr
  %i.bdt = load i64, ptr %i.bds, align 8, !tbaa !69
  %i.bdu = and i64 %i.bdt, 281474976710655
  %i.bdv = inttoptr i64 %i.bdu to ptr
  %i.bdw = and i32 %.026333849, 1023
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit

_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit: ; preds = %.lr.ph, %bb.hm
  %.sink8.i = phi ptr [ %i.bdv, %bb.hm ], [ %i.bdm, %.lr.ph ]
  %.sink7.i = phi i32 [ %i.bdw, %bb.hm ], [ %.026333849, %.lr.ph ]
  %i.bdx = getelementptr inbounds nuw i8, ptr %.sink8.i, i64 8
  %i.bdy = zext nneg i32 %.sink7.i to i64
  %i.bdz = getelementptr inbounds nuw [8 x i8], ptr %i.bdx, i64 %i.bdy
  %.sroa.0.0.i2913 = load i64, ptr %i.bdz, align 8, !tbaa !61
  store i64 %.sroa.0.0.i2913, ptr %i.o, align 8, !tbaa !69
  store i32 0, ptr %14, align 4, !tbaa !81
  store i32 -1, ptr %i.ba, align 4, !tbaa !98
  store ptr %.73850, ptr %i.a, align 8, !tbaa !108
  %i.bea = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %i.bce, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14) #10
  %i.beb = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %i.bec = icmp eq i32 %i.bea, 0
  br i1 %i.bec, label %.loopexitthread-pre-split, label %bb.hn, !prof !65

bb.hn:                                            ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit
  %i.bed = load ptr, ptr %12, align 8, !tbaa !96
  %i.bee = load i64, ptr %i.bed, align 8, !tbaa !69 ; 2 uses
  %i.bef = icmp ugt i64 %i.bee, -844424930131969
  %i.beg = and i64 %i.bee, 281474976710655
  %i.beh = icmp ne i64 %i.beg, 0
  %i.bei = and i1 %i.bef, %i.beh
  br i1 %i.bei, label %bb.hp, label %bb.ho, !prof !60

bb.ho:                                            ; preds = %bb.hn
  %i.bej = add nuw i32 %.026333849, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.bej, %i.bcu
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !470

bb.hp:                                            ; preds = %bb.hn
  %i.bek = load i64, ptr %i.o, align 8, !tbaa !69
  %i.bel = icmp ult i64 %i.bek, -1970324836974592
  br i1 %i.bel, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.bem = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o) #10
  %i.ben = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.beo = ptrtoint ptr %i.bem to i64
  %i.bep = or i64 %i.beo, -844424930131968
  store i64 %i.bep, ptr %i.o, align 8, !tbaa !69
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %.9 = phi ptr [ %i.ben, %bb.hq ], [ %i.beb, %bb.hp ] ; 2 uses
  %i.beq = add nuw i32 %.026333849, 1
  %i.ber = uitofp i32 %i.beq to double
  %i.bes = getelementptr inbounds nuw i8, ptr %.9, i64 4
  %i.bet = load i8, ptr %i.bes, align 1, !tbaa !81
  %i.beu = zext i8 %i.bet to i64
  %i.bev = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.beu
  store double %i.ber, ptr %i.bev, align 8, !tbaa !69
  %.sroa.0.0.copyload.i.i2915 = load i64, ptr %i.o, align 8, !tbaa !61
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ho, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.hr
  %.7.lcssa.sink = phi ptr [ %.9, %bb.hr ], [ %.sink4083.sink.in, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.beb, %bb.ho ] ; 2 uses
  %.sink4091 = phi i64 [ %.sroa.0.0.copyload.i.i2915, %bb.hr ], [ -1688849860263936, %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ -1688849860263936, %bb.ho ]
  %i.bew = getelementptr inbounds nuw i8, ptr %.7.lcssa.sink, i64 1
  %i.bex = load i8, ptr %i.bew, align 1, !tbaa !81
  %i.bey = zext i8 %i.bex to i64
  %i.bez = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bey
  store i64 %.sink4091, ptr %i.bez, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bfa = getelementptr inbounds nuw i8, ptr %.7.lcssa.sink, i64 6
  br label %.backedge.backedge

bb.hs:                                            ; preds = %.backedge
  %i.bfb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.bfc = load i8, ptr %i.bfb, align 1, !tbaa !81
  %i.bfd = zext i8 %i.bfc to i64
  %i.bfe = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bfd
  %i.bff = load i64, ptr %i.bfe, align 8, !tbaa !69 ; 2 uses
  %i.bfg = icmp ult i64 %i.bff, -1970324836974592
  br i1 %i.bfg, label %bb.hv, label %bb.ht, !prof !60

bb.ht:                                            ; preds = %bb.hs
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bfh = load i8, ptr %i.bfb, align 1, !tbaa !81
  %i.bfi = zext i8 %i.bfh to i64
  %i.bfj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bfi
  %i.bfk = call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bfj) #10 ; 2 uses
  %i.bfl = extractvalue { i32, i64 } %i.bfk, 0
  %i.bfm = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bfn = icmp eq i32 %i.bfl, 0
  br i1 %i.bfn, label %.loopexitthread-pre-split.loopexit4189, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.bfo = extractvalue { i32, i64 } %i.bfk, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hs, %bb.hu
  %.sink4101 = phi ptr [ %i.bfm, %bb.hu ], [ %.sink4083.sink.in, %bb.hs ] ; 2 uses
  %.sink4096 = phi i64 [ %i.bfo, %bb.hu ], [ %i.bff, %bb.hs ]
  %i.bfp = getelementptr inbounds nuw i8, ptr %.sink4101, i64 1
  %i.bfq = load i8, ptr %i.bfp, align 1, !tbaa !81
  %i.bfr = zext i8 %i.bfq to i64
  %i.bfs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bfr
  store i64 %.sink4096, ptr %i.bfs, align 8, !tbaa !69
  %.11 = getelementptr inbounds nuw i8, ptr %.sink4101, i64 3
  br label %.backedge.backedge

bb.hw:                                            ; preds = %.backedge
  %i.bft = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !81
  %i.bfv = zext i8 %i.bfu to i64
  %i.bfw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bfv
  %i.bfx = load i64, ptr %i.bfw, align 8, !tbaa !69 ; 2 uses
  %i.bfy = icmp ult i64 %i.bfx, -1970324836974592
  br i1 %i.bfy, label %bb.hz, label %bb.hx, !prof !60

bb.hx:                                            ; preds = %bb.hw
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bfz = load i8, ptr %i.bft, align 1, !tbaa !81
  %i.bga = zext i8 %i.bfz to i64
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bga
  %i.bgc = call { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bgb) #10 ; 2 uses
  %i.bgd = extractvalue { i32, i64 } %i.bgc, 0
  %i.bge = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.bgf = icmp eq i32 %i.bgd, 0
  br i1 %i.bgf, label %.loopexitthread-pre-split.loopexit4189, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.bgg = extractvalue { i32, i64 } %i.bgc, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hw, %bb.hy
  %.sink4107 = phi ptr [ %i.bge, %bb.hy ], [ %.sink4083.sink.in, %bb.hw ] ; 2 uses
  %.sink4102 = phi i64 [ %i.bgg, %bb.hy ], [ %i.bfx, %bb.hw ]
  %i.bgh = getelementptr inbounds nuw i8, ptr %.sink4107, i64 1
  %i.bgi = load i8, ptr %i.bgh, align 1, !tbaa !81
  %i.bgj = zext i8 %i.bgi to i64
  %i.bgk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bgj
  store i64 %.sink4102, ptr %i.bgk, align 8, !tbaa !69
  %.12 = getelementptr inbounds nuw i8, ptr %.sink4107, i64 3
  br label %.backedge.backedge

bb.ia:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bgl = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bgm = load i8, ptr %i.bgl, align 1, !tbaa !81
  %i.bgn = zext i8 %i.bgm to i64
  %i.bgo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bgn
  %i.bgp = call { i32, i64 } @_ZN6hermes2vm11toInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bgo) #10 ; 2 uses
  %i.bgq = extractvalue { i32, i64 } %i.bgp, 0
  %i.bgr = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bgs = icmp eq i32 %i.bgq, 0
  br i1 %i.bgs, label %.loopexitthread-pre-split.loopexit4189, label %bb.ib, !prof !65

bb.ib:                                            ; preds = %bb.ia
  %i.bgt = extractvalue { i32, i64 } %i.bgp, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgr, i64 1
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !81
  %i.bgw = zext i8 %i.bgv to i64
  %i.bgx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bgw
  store i64 %i.bgt, ptr %i.bgx, align 8, !tbaa !69
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgr, i64 3
  br label %.backedge.backedge

bb.ic:                                            ; preds = %.backedge
  %i.bgz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.bha = load i8, ptr %i.bgz, align 1, !tbaa !81
  %i.bhb = zext i8 %i.bha to i64
  %i.bhc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bhb
  %i.bhd = load i64, ptr %i.bhc, align 8, !tbaa !69 ; 2 uses
  %.mask.i2923 = and i64 %i.bhd, -281474976710656
  %i.bhe = icmp eq i64 %.mask.i2923, -844424930131968
  br i1 %i.bhe, label %bb.ig, label %bb.id, !prof !60

bb.id:                                            ; preds = %bb.ic
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bhf = load i8, ptr %i.bgz, align 1, !tbaa !81
  %i.bhg = zext i8 %i.bhf to i64
  %i.bhh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bhg
  %i.bhi = call { i32, i64 } @_ZN6hermes2vm15toPrimitive_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS0_13PreferredTypeE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bhh, i32 noundef 0) #10 ; 2 uses
  %i.bhj = extractvalue { i32, i64 } %i.bhi, 0
  %i.bhk = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.bhl = icmp eq i32 %i.bhj, 0
  br i1 %i.bhl, label %.loopexitthread-pre-split.loopexit4189, label %bb.ie, !prof !65

bb.ie:                                            ; preds = %bb.id
  %i.bhm = extractvalue { i32, i64 } %i.bhi, 1
  store i64 %i.bhm, ptr %i.o, align 8, !tbaa !69
  %i.bhn = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.o) #10 ; 2 uses
  %i.bho = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.not3725 = icmp eq ptr %i.bhn, inttoptr (i64 -1 to ptr)
  br i1 %.not3725, label %.loopexitthread-pre-split.loopexit4189, label %bb.if, !prof !65

bb.if:                                            ; preds = %bb.ie
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bhp = ptrtoint ptr %i.bhn to i64
  %i.bhq = or i64 %i.bhp, -844424930131968
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ic, %bb.if
  %.sink4113 = phi ptr [ %i.bho, %bb.if ], [ %.sink4083.sink.in, %bb.ic ] ; 2 uses
  %.sink4108 = phi i64 [ %i.bhq, %bb.if ], [ %i.bhd, %bb.ic ]
  %i.bhr = getelementptr inbounds nuw i8, ptr %.sink4113, i64 1
  %i.bhs = load i8, ptr %i.bhr, align 1, !tbaa !81
  %i.bht = zext i8 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bht
  store i64 %.sink4108, ptr %i.bhu, align 8, !tbaa !69
  %.13 = getelementptr inbounds nuw i8, ptr %.sink4113, i64 3
  br label %.backedge.backedge

bb.ih:                                            ; preds = %.backedge
  %i.bhv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bhw = load i8, ptr %i.bhv, align 1, !tbaa !81
  %i.bhx = sext i8 %i.bhw to i64
  %i.bhy = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.bhx
  br label %.backedge.backedge

bb.ii:                                            ; preds = %.backedge
  %i.bhz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bia = load i32, ptr %i.bhz, align 1, !tbaa !81
  %i.bib = sext i32 %i.bia to i64
  %i.bic = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.bib
  br label %.backedge.backedge

bb.ij:                                            ; preds = %.backedge
  %i.bid = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bie = load i8, ptr %i.bid, align 1, !tbaa !81
  %i.bif = zext i8 %i.bie to i64
  %i.big = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bif
  %.sroa.0139.0.copyload = load i64, ptr %i.big, align 8, !tbaa !61
  %i.bih = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0139.0.copyload) #10
  br i1 %i.bih, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.bii = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bij = load i8, ptr %i.bii, align 1, !tbaa !81
  %i.bik = sext i8 %i.bij to i64
  br label %bb.il

bb.il:                                            ; preds = %bb.ij, %bb.ik
  %.sink4114 = phi i64 [ %i.bik, %bb.ik ], [ 3, %bb.ij ]
  %i.bil = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %.sink4114
  br label %.backedge.backedge

bb.im:                                            ; preds = %.backedge
  %i.bim = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.bin = load i8, ptr %i.bim, align 1, !tbaa !81
  %i.bio = zext i8 %i.bin to i64
  %i.bip = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bio
  %.sroa.0138.0.copyload = load i64, ptr %i.bip, align 8, !tbaa !61
  %i.biq = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0138.0.copyload) #10
  br i1 %i.biq, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.bir = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bis = load i32, ptr %i.bir, align 1, !tbaa !81
  %i.bit = sext i32 %i.bis to i64
  br label %bb.io

bb.io:                                            ; preds = %bb.im, %bb.in
  %.sink4115 = phi i64 [ %i.bit, %bb.in ], [ 6, %bb.im ]
  %i.biu = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %.sink4115
  br label %.backedge.backedge

bb.ip:                                            ; preds = %.backedge
  %i.biv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.biw = load i8, ptr %i.biv, align 1, !tbaa !81
  %i.bix = zext i8 %i.biw to i64
  %i.biy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bix
  %.sroa.0137.0.copyload = load i64, ptr %i.biy, align 8, !tbaa !61
  %i.biz = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0137.0.copyload) #10
  br i1 %i.biz, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.bja = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bjb = load i8, ptr %i.bja, align 1, !tbaa !81
  %i.bjc = sext i8 %i.bjb to i64
  br label %bb.ir

bb.ir:                                            ; preds = %bb.ip, %bb.iq
  %.sink4116 = phi i64 [ %i.bjc, %bb.iq ], [ 3, %bb.ip ]
  %i.bjd = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %.sink4116
  br label %.backedge.backedge

bb.is:                                            ; preds = %.backedge
  %i.bje = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !81
  %i.bjg = zext i8 %i.bjf to i64
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bjg
  %.sroa.0136.0.copyload = load i64, ptr %i.bjh, align 8, !tbaa !61
  %i.bji = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0136.0.copyload) #10
  br i1 %i.bji, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.bjj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bjk = load i32, ptr %i.bjj, align 1, !tbaa !81
  %i.bjl = sext i32 %i.bjk to i64
  br label %bb.iu

bb.iu:                                            ; preds = %bb.is, %bb.it
  %.sink4117 = phi i64 [ %i.bjl, %bb.it ], [ 6, %bb.is ]
  %i.bjm = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %.sink4117
  br label %.backedge.backedge

bb.iv:                                            ; preds = %.backedge
  %i.bjn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bjo = load i8, ptr %i.bjn, align 1, !tbaa !81
  %i.bjp = zext i8 %i.bjo to i64
  %i.bjq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bjp
  %i.bjr = load i64, ptr %i.bjq, align 8, !tbaa !69
  %.mask.i2926 = and i64 %i.bjr, -140737488355328
  %i.bjs = icmp eq i64 %.mask.i2926, -1688849860263936
  br i1 %i.bjs, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.bjt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bju = load i8, ptr %i.bjt, align 1, !tbaa !81
  %i.bjv = sext i8 %i.bju to i64
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iv, %bb.iw
  %.sink4118 = phi i64 [ %i.bjv, %bb.iw ], [ 3, %bb.iv ]
  %i.bjw = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %.sink4118
  br label %.backedge.backedge

bb.iy:                                            ; preds = %.backedge
  %i.bjx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !81
  %i.bjz = zext i8 %i.bjy to i64
  %i.bka = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bjz
  %i.bkb = load i64, ptr %i.bka, align 8, !tbaa !69
  %.mask.i2927 = and i64 %i.bkb, -140737488355328
  %i.bkc = icmp eq i64 %.mask.i2927, -1688849860263936
  br i1 %i.bkc, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.bkd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bke = load i32, ptr %i.bkd, align 1, !tbaa !81
  %i.bkf = sext i32 %i.bke to i64
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iy, %bb.iz
  %.sink4119 = phi i64 [ %i.bkf, %bb.iz ], [ 6, %bb.iy ]
  %i.bkg = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %.sink4119
  br label %.backedge.backedge

bb.jb:                                            ; preds = %.backedge
  %i.bkh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.bki = load i8, ptr %i.bkh, align 1, !tbaa !81
  %i.bkj = zext i8 %i.bki to i64
  %i.bkk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bkj
  %i.bkl = load i64, ptr %i.bkk, align 8          ; 2 uses
  %i.bkm = icmp ult i64 %i.bkl, -1970324836974592
  br i1 %i.bkm, label %bb.jc, label %bb.jd, !prof !60

bb.jc:                                            ; preds = %bb.jb
  %i.bkn = bitcast i64 %i.bkl to double
  %i.bko = fadd double %i.bkn, 1.000000e+00
  %i.bkp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bkq = load i8, ptr %i.bkp, align 1, !tbaa !81
  %i.bkr = zext i8 %i.bkq to i64
  %i.bks = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bkr
  store double %i.bko, ptr %i.bks, align 8, !tbaa !69
  %i.bkt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.jd:                                            ; preds = %bb.jb
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bku = load i8, ptr %i.bkh, align 1, !tbaa !81
  %i.bkv = zext i8 %i.bku to i64
  %i.bkw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bkv
  %i.bkx = call { i32, i64 } @_ZN6hermes2vm20doIncDecOperSlowPathITnDaXadL_ZNS0_5doIncEdEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bkw) #10 ; 2 uses
  %i.bky = extractvalue { i32, i64 } %i.bkx, 0
  %i.bkz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bla = icmp eq i32 %i.bky, 0
  br i1 %i.bla, label %.loopexitthread-pre-split.loopexit4189, label %bb.je, !prof !65

bb.je:                                            ; preds = %bb.jd
  %i.blb = extractvalue { i32, i64 } %i.bkx, 1
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bkz, i64 1
  %i.bld = load i8, ptr %i.blc, align 1, !tbaa !81
  %i.ble = zext i8 %i.bld to i64
  %i.blf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ble
  store i64 %i.blb, ptr %i.blf, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bkz, i64 3
  br label %.backedge.backedge

bb.jf:                                            ; preds = %.backedge
  %i.blh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.bli = load i8, ptr %i.blh, align 1, !tbaa !81
  %i.blj = zext i8 %i.bli to i64
  %i.blk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.blj
  %i.bll = load i64, ptr %i.blk, align 8          ; 2 uses
  %i.blm = icmp ult i64 %i.bll, -1970324836974592
  br i1 %i.blm, label %bb.jg, label %bb.jh, !prof !60

bb.jg:                                            ; preds = %bb.jf
  %i.bln = bitcast i64 %i.bll to double
  %i.blo = fadd double %i.bln, -1.000000e+00
  %i.blp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.blq = load i8, ptr %i.blp, align 1, !tbaa !81
  %i.blr = zext i8 %i.blq to i64
  %i.bls = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.blr
  store double %i.blo, ptr %i.bls, align 8, !tbaa !69
  %i.blt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.jh:                                            ; preds = %bb.jf
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.blu = load i8, ptr %i.blh, align 1, !tbaa !81
  %i.blv = zext i8 %i.blu to i64
  %i.blw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.blv
  %i.blx = call { i32, i64 } @_ZN6hermes2vm20doIncDecOperSlowPathITnDaXadL_ZNS0_5doDecEdEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.blw) #10 ; 2 uses
  %i.bly = extractvalue { i32, i64 } %i.blx, 0
  %i.blz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bma = icmp eq i32 %i.bly, 0
  br i1 %i.bma, label %.loopexitthread-pre-split.loopexit4189, label %bb.ji, !prof !65

bb.ji:                                            ; preds = %bb.jh
  %i.bmb = extractvalue { i32, i64 } %i.blx, 1
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blz, i64 1
  %i.bmd = load i8, ptr %i.bmc, align 1, !tbaa !81
  %i.bme = zext i8 %i.bmd to i64
  %i.bmf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bme
  store i64 %i.bmb, ptr %i.bmf, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.blz, i64 3
  br label %.backedge.backedge

bb.jj:                                            ; preds = %.backedge
  %i.bmh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.bmi = load i8, ptr %i.bmh, align 1, !tbaa !81
  %i.bmj = zext i8 %i.bmi to i64
  %i.bmk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bmj
  %i.bml = load i64, ptr %i.bmk, align 8, !tbaa !69
  %i.bmm = icmp ult i64 %i.bml, -1970324836974592
  br i1 %i.bmm, label %bb.jk, label %.critedge2673, !prof !60

bb.jk:                                            ; preds = %bb.jj
  %i.bmn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bmo = load i8, ptr %i.bmn, align 1, !tbaa !81
  %i.bmp = zext i8 %i.bmo to i64
  %i.bmq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bmp
  %i.bmr = load i64, ptr %i.bmq, align 8, !tbaa !69
  %i.bms = icmp ult i64 %i.bmr, -1970324836974592
  br i1 %i.bms, label %bb.jl, label %.critedge2673, !prof !60

bb.jl:                                            ; preds = %bb.jk, %.backedge
  %i.bmt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bmu = load i8, ptr %i.bmt, align 1, !tbaa !81
  %i.bmv = zext i8 %i.bmu to i64
  %i.bmw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bmv
  %i.bmx = load double, ptr %i.bmw, align 8, !tbaa !69
  %i.bmy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !81
  %i.bna = zext i8 %i.bmz to i64
  %i.bnb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bna
  %i.bnc = load double, ptr %i.bnb, align 8, !tbaa !69
  %i.bnd = fadd double %i.bmx, %i.bnc
  %i.bne = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bnf = load i8, ptr %i.bne, align 1, !tbaa !81
  %i.bng = zext i8 %i.bnf to i64
  %i.bnh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bng
  store double %i.bnd, ptr %i.bnh, align 8, !tbaa !69
  %i.bni = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2673:                                    ; preds = %bb.jj, %bb.jk
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bnj = load i8, ptr %i.bmh, align 1, !tbaa !81
  %i.bnk = zext i8 %i.bnj to i64
  %i.bnl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bnk
  %i.bnm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bnn = load i8, ptr %i.bnm, align 1, !tbaa !81
  %i.bno = zext i8 %i.bnn to i64
  %i.bnp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bno
  %i.bnq = call { i32, i64 } @_ZN6hermes2vm9addOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bnl, ptr %i.bnp) #10 ; 2 uses
  %i.bnr = extractvalue { i32, i64 } %i.bnq, 0
  %i.bns = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bnt = icmp eq i32 %i.bnr, 0
  br i1 %i.bnt, label %.loopexitthread-pre-split.loopexit4189, label %bb.jm

bb.jm:                                            ; preds = %.critedge2673
  %i.bnu = extractvalue { i32, i64 } %i.bnq, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bns, i64 1
  %i.bnw = load i8, ptr %i.bnv, align 1, !tbaa !81
  %i.bnx = zext i8 %i.bnw to i64
  %i.bny = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bnx
  store i64 %i.bnu, ptr %i.bny, align 8, !tbaa !69
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bns, i64 4
  br label %.backedge.backedge

bb.jn:                                            ; preds = %.backedge
  %i.boa = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.bob = load i8, ptr %i.boa, align 1, !tbaa !81
  %i.boc = zext i8 %i.bob to i64
  %i.bod = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.boc
  %i.boe = load i64, ptr %i.bod, align 8          ; 2 uses
  %i.bof = icmp ult i64 %i.boe, -1970324836974592
  %i.bog = bitcast i64 %i.boe to double           ; 3 uses
  br i1 %i.bof, label %bb.jo, label %bb.jq, !prof !60

bb.jo:                                            ; preds = %bb.jn
  %i.boh = fptoui double %i.bog to i64            ; 2 uses
  %i.boi = shl i64 %i.boh, 1
  %i.boj = ashr exact i64 %i.boi, 1
  %i.bok = sitofp i64 %i.boj to double
  %i.bol = fcmp une double %i.bog, %i.bok
  %i.bom = trunc i64 %i.boh to i32
  br i1 %i.bol, label %bb.jp, label %_ZN6hermes15truncateToInt32Ed.exit

bb.jp:                                            ; preds = %bb.jo
  %i.bon = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.bog) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit

_ZN6hermes15truncateToInt32Ed.exit:               ; preds = %bb.jo, %bb.jp
  %.1.i = phi i32 [ %i.bom, %bb.jo ], [ %i.bon, %bb.jp ]
  %i.boo = xor i32 %.1.i, -1
  %i.bop = sitofp i32 %i.boo to double
  %i.boq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bor = load i8, ptr %i.boq, align 1, !tbaa !81
  %i.bos = zext i8 %i.bor to i64
  %i.bot = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bos
  store double %i.bop, ptr %i.bot, align 8, !tbaa !69
  %i.bou = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.jq:                                            ; preds = %bb.jn
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bov = load i8, ptr %i.boa, align 1, !tbaa !81
  %i.bow = zext i8 %i.bov to i64
  %i.box = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bow
  %i.boy = call { i32, i64 } @_ZN6hermes2vm16doBitNotSlowPathERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.box) #10 ; 2 uses
  %i.boz = extractvalue { i32, i64 } %i.boy, 0
  %i.bpa = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bpb = icmp eq i32 %i.boz, 0
  br i1 %i.bpb, label %.loopexitthread-pre-split.loopexit4189, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.bpc = extractvalue { i32, i64 } %i.boy, 1
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpa, i64 1
  %i.bpe = load i8, ptr %i.bpd, align 1, !tbaa !81
  %i.bpf = zext i8 %i.bpe to i64
  %i.bpg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bpf
  store i64 %i.bpc, ptr %i.bpg, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpa, i64 3
  br label %.backedge.backedge

bb.js:                                            ; preds = %.backedge
  %i.bpi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.bpj = load i8, ptr %i.bpi, align 1, !tbaa !81
  %i.bpk = zext i8 %i.bpj to i64
  %i.bpl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bpk
  %i.bpm = load i64, ptr %i.bpl, align 8, !tbaa !69
  %.mask.i2936 = and i64 %i.bpm, -140737488355328
  %i.bpn = icmp eq i64 %.mask.i2936, -1688849860263936
  br i1 %i.bpn, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.bpo = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.bpp = load i64, ptr %i.bpo, align 8, !tbaa !69
  %i.bpq = trunc i64 %i.bpp to i32
  %i.bpr = uitofp i32 %i.bpq to double
  %i.bps = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bpt = load i8, ptr %i.bps, align 1, !tbaa !81
  %i.bpu = zext i8 %i.bpt to i64
  %i.bpv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bpu
  store double %i.bpr, ptr %i.bpv, align 8, !tbaa !69
  %i.bpw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.ju:                                            ; preds = %bb.js
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bpx = load i8, ptr %i.bpi, align 1, !tbaa !81
  %i.bpy = zext i8 %i.bpx to i64
  %i.bpz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bpy ; 2 uses
  %i.bqa = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.bpz, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 85, ptr %i.bpz, i32 0, ptr noundef null) #10 ; 2 uses
  %i.bqb = extractvalue { i32, i64 } %i.bqa, 0
  %i.bqc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bqd = icmp eq i32 %i.bqb, 0
  br i1 %i.bqd, label %.loopexitthread-pre-split.loopexit4189, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.bqe = extractvalue { i32, i64 } %i.bqa, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqc, i64 1
  %i.bqg = load i8, ptr %i.bqf, align 1, !tbaa !81
  %i.bqh = zext i8 %i.bqg to i64
  %i.bqi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bqh
  store i64 %i.bqe, ptr %i.bqi, align 8, !tbaa !69
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqc, i64 3
  br label %.backedge.backedge

bb.jw:                                            ; preds = %.backedge
  %i.bqk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.bql = load i8, ptr %i.bqk, align 1, !tbaa !81
  %i.bqm = zext i8 %i.bql to i64
  %i.bqn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bqm
  %i.bqo = load i64, ptr %i.bqn, align 8, !tbaa !69
  %.mask.i2940 = and i64 %i.bqo, -140737488355328
  %i.bqp = icmp eq i64 %.mask.i2940, -1688849860263936
  br i1 %i.bqp, label %bb.jx, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread

bb.jx:                                            ; preds = %bb.jw
  %i.bqq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !81
  %i.bqs = zext i8 %i.bqr to i64
  %i.bqt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bqs
  %.sroa.0130.0.copyload = load i64, ptr %i.bqt, align 8, !tbaa !61 ; 2 uses
  %i.bqu = icmp ult i64 %.sroa.0130.0.copyload, -1970324836974592
  br i1 %i.bqu, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.jx
  %i.bqv = bitcast i64 %.sroa.0130.0.copyload to double ; 2 uses
  %i.bqw = fptoui double %i.bqv to i32            ; 3 uses
  %i.bqx = uitofp i32 %i.bqw to double
  %i.bqy = fcmp oeq double %i.bqv, %i.bqx
  %i.bqz = icmp ne i32 %i.bqw, -1
  %or.cond.i.i2941 = and i1 %i.bqz, %i.bqy
  %i.bra = zext i32 %i.bqw to i64
  %i.brb = or disjoint i64 %i.bra, 4294967296
  %i.brc = trunc nuw nsw i64 %i.brb to i40
  %i.brd = select i1 %or.cond.i.i2941, i40 %i.brc, i40 0 ; 2 uses
  %.sroa.03300.0.extract.trunc = trunc i40 %i.brd to i32 ; 2 uses
  %.not3724 = icmp samesign ult i40 %i.brd, 4294967296
  br i1 %.not3724, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, label %bb.jy

bb.jy:                                            ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %i.bre = getelementptr inbounds i8, ptr %.32602, i64 -40
  %i.brf = load i64, ptr %i.bre, align 8, !tbaa !69
  %i.brg = trunc i64 %i.brf to i32
  %i.brh = icmp ult i32 %.sroa.03300.0.extract.trunc, %i.brg
  br i1 %i.brh, label %bb.jz, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread

bb.jz:                                            ; preds = %bb.jy
  %i.bri = sext i32 %.sroa.03300.0.extract.trunc to i64
  %i.brj = sub nsw i64 0, %i.bri
  %i.brk = getelementptr [8 x i8], ptr %.32602, i64 %i.brj
  %i.brl = getelementptr i8, ptr %i.brk, i64 -72
  %i.brm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.brn = load i8, ptr %i.brm, align 1, !tbaa !81
  %i.bro = zext i8 %i.brn to i64
  %i.brp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bro
  %.sroa.0.0.copyload.i2942 = load i64, ptr %i.brl, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2942, ptr %i.brp, align 8, !tbaa !69
  %i.brq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread: ; preds = %bb.jx, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, %bb.jy, %bb.jw
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.brr = load i8, ptr %i.bqk, align 1, !tbaa !81
  %i.brs = zext i8 %i.brr to i64
  %i.brt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.brs
  %i.bru = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.brv = load i8, ptr %i.bru, align 1, !tbaa !81
  %i.brw = zext i8 %i.brv to i64
  %i.brx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.brw
  %i.bry = getelementptr inbounds i8, ptr %.32602, i64 -56
  %i.brz = trunc nuw i8 %.12604 to i1
  %i.bsa = call { i32, i64 } @_ZN6hermes2vm11Interpreter33getArgumentsPropByValSlowPath_RJSERNS0_7RuntimeEPNS0_17PinnedHermesValueES5_NS0_6HandleINS0_8CallableEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %i.brt, ptr noundef %i.brx, ptr nonnull %i.bry, i1 noundef zeroext %i.brz) ; 2 uses
  %i.bsb = extractvalue { i32, i64 } %i.bsa, 0
  %i.bsc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bsd = icmp eq i32 %i.bsb, 0
  br i1 %i.bsd, label %.loopexitthread-pre-split.loopexit4189, label %bb.ka

bb.ka:                                            ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %i.bse = extractvalue { i32, i64 } %i.bsa, 1
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.bsc, i64 1
  %i.bsg = load i8, ptr %i.bsf, align 1, !tbaa !81
  %i.bsh = zext i8 %i.bsg to i64
  %i.bsi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bsh
  store i64 %i.bse, ptr %i.bsi, align 8, !tbaa !69
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bsc, i64 4
  br label %.backedge.backedge

bb.kb:                                            ; preds = %.backedge
  %i.bsk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bsl = load i8, ptr %i.bsk, align 1, !tbaa !81
  %i.bsm = zext i8 %i.bsl to i64
  %i.bsn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bsm
  %i.bso = load i64, ptr %i.bsn, align 8, !tbaa !69
  %.mask.i2945 = and i64 %i.bso, -140737488355328
  %i.bsp = icmp eq i64 %.mask.i2945, -1688849860263936
  br i1 %i.bsp, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.bsq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.kd:                                            ; preds = %bb.kb
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bsr = getelementptr inbounds i8, ptr %.32602, i64 -56
  %i.bss = trunc nuw i8 %.12604 to i1
  %i.bst = call ptr @_ZN6hermes2vm11Interpreter22reifyArgumentsSlowPathERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.bsr, i1 noundef zeroext %i.bss) ; 2 uses
  %i.bsu = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3723 = icmp eq ptr %i.bst, inttoptr (i64 -1 to ptr)
  br i1 %.not3723, label %.loopexitthread-pre-split.loopexit4189, label %bb.ke, !prof !65

bb.ke:                                            ; preds = %bb.kd
  %.sroa.0.0.copyload.i2946 = load i64, ptr %i.bst, align 8, !tbaa !61
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 1
  %i.bsw = load i8, ptr %i.bsv, align 1, !tbaa !81
  %i.bsx = zext i8 %i.bsw to i64
  %i.bsy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bsx
  store i64 %.sroa.0.0.copyload.i2946, ptr %i.bsy, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.bsu, i64 2
  br label %.backedge.backedge

bb.kf:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bta = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeE(ptr noundef nonnull align 8 dereferenceable(9816) %0) #10
  %i.btb = ptrtoint ptr %i.bta to i64
  %i.btc = or i64 %i.btb, -281474976710656
  %i.btd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.bte = load i8, ptr %i.btd, align 1, !tbaa !81
  %i.btf = zext i8 %i.bte to i64
  %i.btg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.btf
  store i64 %i.btc, ptr %i.btg, align 8, !tbaa !69
  %i.bth = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 2
  br label %.backedge.backedge

bb.kg:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.btj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.btk = load i8, ptr %i.btj, align 1, !tbaa !81
  %i.btl = zext i8 %i.btk to i64
  %i.btm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.btl ; 2 uses
  %i.btn = load i64, ptr %i.btm, align 8, !tbaa !69 ; 2 uses
  %i.bto = icmp ugt i64 %i.btn, -281474976710657
  %.mask.i2949 = and i64 %i.btn, -140737488355328
  %i.btp = icmp eq i64 %.mask.i2949, -1548112371908608
  %spec.select3676 = select i1 %i.btp, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, ptr %i.au
  %.sroa.0126.0 = select i1 %i.bto, ptr %i.btm, ptr %spec.select3676
  %i.btq = call ptr @_ZN6hermes2vm8JSObject6createERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.0126.0) #10
  %i.btr = ptrtoint ptr %i.btq to i64
  %i.bts = or i64 %i.btr, -281474976710656
  %i.btt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.btu = load i8, ptr %i.btt, align 1, !tbaa !81
  %i.btv = zext i8 %i.btu to i64
  %i.btw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.btv
  store i64 %i.bts, ptr %i.btw, align 8, !tbaa !69
  %i.btx = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btx, i64 3
  br label %.backedge.backedge

bb.kh:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.btz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.bua = load i16, ptr %i.btz, align 1, !tbaa !81
  %i.bub = zext i16 %i.bua to i32
  %i.buc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.bud = load i16, ptr %i.buc, align 1, !tbaa !81
  %i.bue = zext i16 %i.bud to i32
  %i.buf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 8
  %i.bug = load i16, ptr %i.buf, align 1, !tbaa !81
  %i.buh = zext i16 %i.bug to i32
  %i.bui = call { i32, i64 } @_ZN6hermes2vm11Interpreter22createObjectFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.bub, i32 noundef %i.bue, i32 noundef %i.buh) ; 2 uses
  %i.buj = extractvalue { i32, i64 } %i.bui, 0
  %i.buk = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bul = icmp eq i32 %i.buj, 0
  br i1 %i.bul, label %.loopexitthread-pre-split.loopexit4189, label %bb.ki, !prof !65

bb.ki:                                            ; preds = %bb.kh
  %i.bum = extractvalue { i32, i64 } %i.bui, 1
  %i.bun = getelementptr inbounds nuw i8, ptr %i.buk, i64 1
  %i.buo = load i8, ptr %i.bun, align 1, !tbaa !81
  %i.bup = zext i8 %i.buo to i64
  %i.buq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bup
  store i64 %i.bum, ptr %i.buq, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buk, i64 10
  br label %.backedge.backedge

bb.kj:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bus = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.but = load i16, ptr %i.bus, align 1, !tbaa !81
  %i.buu = zext i16 %i.but to i32
  %i.buv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.buw = load i32, ptr %i.buv, align 1, !tbaa !81
  %i.bux = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 10
  %i.buy = load i32, ptr %i.bux, align 1, !tbaa !81
  %i.buz = call { i32, i64 } @_ZN6hermes2vm11Interpreter22createObjectFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.buu, i32 noundef %i.buw, i32 noundef %i.buy) ; 2 uses
  %i.bva = extractvalue { i32, i64 } %i.buz, 0
  %i.bvb = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bvc = icmp eq i32 %i.bva, 0
  br i1 %i.bvc, label %.loopexitthread-pre-split.loopexit4189, label %bb.kk, !prof !65

bb.kk:                                            ; preds = %bb.kj
  %i.bvd = extractvalue { i32, i64 } %i.buz, 1
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bvb, i64 1
  %i.bvf = load i8, ptr %i.bve, align 1, !tbaa !81
  %i.bvg = zext i8 %i.bvf to i64
  %i.bvh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bvg
  store i64 %i.bvd, ptr %i.bvh, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvb, i64 14
  br label %.backedge.backedge

bb.kl:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bvj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bvk = load i16, ptr %i.bvj, align 1, !tbaa !81
  %i.bvl = zext i16 %i.bvk to i32                 ; 2 uses
  %i.bvm = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.bvl, i32 noundef %i.bvl) #10 ; 2 uses
  %i.bvn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3761 = icmp eq ptr %i.bvm, inttoptr (i64 -1 to ptr)
  br i1 %.not3761, label %.loopexitthread-pre-split.loopexit4189, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %.sroa.0.0.copyload.i2955 = load i64, ptr %i.bvm, align 8, !tbaa !61
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvn, i64 1
  %i.bvp = load i8, ptr %i.bvo, align 1, !tbaa !81
  %i.bvq = zext i8 %i.bvp to i64
  %i.bvr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bvq
  store i64 %.sroa.0.0.copyload.i2955, ptr %i.bvr, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvn, i64 4
  br label %.backedge.backedge

bb.kn:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bvt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bvu = load i16, ptr %i.bvt, align 1, !tbaa !81
  %i.bvv = zext i16 %i.bvu to i32
  %i.bvw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.bvx = load i16, ptr %i.bvw, align 1, !tbaa !81
  %i.bvy = zext i16 %i.bvx to i32
  %i.bvz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.bwa = load i16, ptr %i.bvz, align 1, !tbaa !81
  %i.bwb = zext i16 %i.bwa to i32
  %i.bwc = call { i32, i64 } @_ZN6hermes2vm11Interpreter21createArrayFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.bvv, i32 noundef %i.bvy, i32 noundef %i.bwb) ; 2 uses
  %i.bwd = extractvalue { i32, i64 } %i.bwc, 0
  %i.bwe = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bwf = icmp eq i32 %i.bwd, 0
  br i1 %i.bwf, label %.loopexitthread-pre-split.loopexit4189, label %bb.ko, !prof !65

bb.ko:                                            ; preds = %bb.kn
  %i.bwg = extractvalue { i32, i64 } %i.bwc, 1
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwe, i64 1
  %i.bwi = load i8, ptr %i.bwh, align 1, !tbaa !81
  %i.bwj = zext i8 %i.bwi to i64
  %i.bwk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bwj
  store i64 %i.bwg, ptr %i.bwk, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwe, i64 8
  br label %.backedge.backedge

bb.kp:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bwm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bwn = load i16, ptr %i.bwm, align 1, !tbaa !81
  %i.bwo = zext i16 %i.bwn to i32
  %i.bwp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.bwq = load i16, ptr %i.bwp, align 1, !tbaa !81
  %i.bwr = zext i16 %i.bwq to i32
  %i.bws = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.bwt = load i32, ptr %i.bws, align 1, !tbaa !81
  %i.bwu = call { i32, i64 } @_ZN6hermes2vm11Interpreter21createArrayFromBufferERNS0_7RuntimeEPNS0_9CodeBlockEjjj(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.4, i32 noundef %i.bwo, i32 noundef %i.bwr, i32 noundef %i.bwt) ; 2 uses
  %i.bwv = extractvalue { i32, i64 } %i.bwu, 0
  %i.bww = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.bwx = icmp eq i32 %i.bwv, 0
  br i1 %i.bwx, label %.loopexitthread-pre-split.loopexit4189, label %bb.kq, !prof !65

bb.kq:                                            ; preds = %bb.kp
  %i.bwy = extractvalue { i32, i64 } %i.bwu, 1
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bww, i64 1
  %i.bxa = load i8, ptr %i.bwz, align 1, !tbaa !81
  %i.bxb = zext i8 %i.bxa to i64
  %i.bxc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxb
  store i64 %i.bwy, ptr %i.bxc, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bww, i64 10
  br label %.backedge.backedge

bb.kr:                                            ; preds = %.backedge
  %i.bxe = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.bxf = load i8, ptr %i.bxe, align 1, !tbaa !81
  %i.bxg = zext i8 %i.bxf to i64
  %i.bxh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxg
  %.sroa.0113.0.copyload = load i64, ptr %i.bxh, align 8, !tbaa !61 ; 2 uses
  %i.bxi = icmp ugt i64 %.sroa.0113.0.copyload, -844424930131969
  br i1 %i.bxi, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, !prof !471

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit: ; preds = %bb.kr
  %i.bxj = and i64 %.sroa.0113.0.copyload, 281474976710655
  %i.bxk = inttoptr i64 %i.bxj to ptr
  %i.bxl = load i32, ptr %i.bxk, align 4
  %i.bxm = add i32 %i.bxl, -1140850688
  %i.bxn = icmp ult i32 %i.bxm, 150994944
  br i1 %i.bxn, label %bb.ks, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, !prof !472

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.kr, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  store i32 1, ptr %i.bf, align 8, !tbaa !369
  store i64 27, ptr %i.bg, align 8, !tbaa !370
  store i64 0, ptr %i.bh, align 8, !tbaa !371
  store ptr @.str.15, ptr %15, align 8, !tbaa !81
  store i32 3, ptr %i.bi, align 8, !tbaa !366
  %i.bxo = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %15) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %.loopexitthread-pre-split.sink.split

bb.ks:                                            ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bxp = load i8, ptr %i.bxe, align 1, !tbaa !81
  %i.bxq = zext i8 %i.bxp to i64
  %i.bxr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxq ; 2 uses
  %i.bxs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bxt = load i8, ptr %i.bxs, align 1, !tbaa !81
  %i.bxu = zext i8 %i.bxt to i64
  %i.bxv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bxu ; 2 uses
  %i.bxw = load i64, ptr %i.bxv, align 8, !tbaa !69
  %i.bxx = icmp ugt i64 %i.bxw, -281474976710657
  %spec.select3677 = select i1 %i.bxx, ptr %i.bxv, ptr %i.au
  %.sroa.0.0.copyload.i.i.i2963 = load i64, ptr %i.bxr, align 8, !tbaa !61
  %i.bxy = and i64 %.sroa.0.0.copyload.i.i.i2963, 281474976710655
  %i.bxz = inttoptr i64 %i.bxy to ptr
  %i.bya = load i32, ptr %i.bxz, align 4
  %i.byb = lshr i32 %i.bya, 24
  %i.byc = zext nneg i32 %i.byb to i64
  %i.byd = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.byc
  %i.bye = load ptr, ptr %i.byd, align 8, !tbaa !100
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bye, i64 96
  %i.byg = load ptr, ptr %i.byf, align 8, !tbaa !473
  %i.byh = call ptr %i.byg(ptr nonnull %i.bxr, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %spec.select3677) #10, !inline_history !475 ; 2 uses
  %i.byi = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.not3726 = icmp eq ptr %i.byh, inttoptr (i64 -1 to ptr)
  br i1 %.not3726, label %.loopexitthread-pre-split.loopexit4189, label %bb.kt, !prof !65

bb.kt:                                            ; preds = %bb.ks
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.byj = ptrtoint ptr %i.byh to i64
  %i.byk = or i64 %i.byj, -281474976710656
  %i.byl = getelementptr inbounds nuw i8, ptr %i.byi, i64 1
  %i.bym = load i8, ptr %i.byl, align 1, !tbaa !81
  %i.byn = zext i8 %i.bym to i64
  %i.byo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.byn
  store i64 %i.byk, ptr %i.byo, align 8, !tbaa !69
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byi, i64 4
  br label %.backedge.backedge

bb.ku:                                            ; preds = %.backedge
  %i.byq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.byr = load i8, ptr %i.byq, align 1, !tbaa !81
  %i.bys = zext i8 %i.byr to i64
  %i.byt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bys
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !69
  %i.byv = icmp ugt i64 %i.byu, -281474976710657
  %i.byw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %.pn.in.in = select i1 %i.byv, ptr %i.byq, ptr %i.byw
  %.pn.in = load i8, ptr %.pn.in.in, align 1, !tbaa !81
  %.pn = zext i8 %.pn.in to i64
  %i.byx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.pn
  %i.byy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.byz = load i8, ptr %i.byy, align 1, !tbaa !81
  %i.bza = zext i8 %i.byz to i64
  %i.bzb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bza
  %.sroa.0.0.copyload.i2965 = load i64, ptr %i.byx, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i2965, ptr %i.bzb, align 8, !tbaa !69
  %i.bzc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.kv:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.bzd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.bze = load i8, ptr %i.bzd, align 1, !tbaa !81
  %i.bzf = zext i8 %i.bze to i64
  %i.bzg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzf
  %i.bzh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.bzi = load i8, ptr %i.bzh, align 1, !tbaa !81
  %i.bzj = zext i8 %i.bzi to i64
  %i.bzk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzj
  %i.bzl = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.bzg, ptr %i.bzk) #10 ; 2 uses
  %i.bzm = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3759 = and i32 %i.bzl, 255
  %i.bzn = icmp eq i32 %.mask3759, 0
  br i1 %i.bzn, label %.loopexitthread-pre-split.loopexit4189, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.bzo = load i8, ptr %i.bzm, align 1, !tbaa !81
  %i.bzp = icmp eq i8 %i.bzo, 14
  %i.bzq = and i32 %i.bzl, 256
  %.not3760 = icmp eq i32 %i.bzq, 0
  %i.bzr = xor i1 %i.bzp, %.not3760
  %i.bzs = zext i1 %i.bzr to i64
  %i.bzt = or disjoint i64 %i.bzs, -1407374883553280
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzm, i64 1
  %i.bzv = load i8, ptr %i.bzu, align 1, !tbaa !81
  %i.bzw = zext i8 %i.bzv to i64
  %i.bzx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.bzw
  store i64 %i.bzt, ptr %i.bzx, align 8, !tbaa !69
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.bzm, i64 4
  br label %.backedge.backedge

bb.kx:                                            ; preds = %.backedge
  %i.bzz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.caa = load i8, ptr %i.bzz, align 1, !tbaa !81
  %i.cab = zext i8 %i.caa to i64
  %i.cac = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cab
  %.sroa.0110.0.copyload = load i64, ptr %i.cac, align 8, !tbaa !61
  %i.cad = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cae = load i8, ptr %i.cad, align 1, !tbaa !81
  %i.caf = zext i8 %i.cae to i64
  %i.cag = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.caf
  %.sroa.0109.0.copyload = load i64, ptr %i.cag, align 8, !tbaa !61
  %i.cah = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.0110.0.copyload, i64 %.sroa.0109.0.copyload) #10
  %i.cai = zext i1 %i.cah to i64
  %i.caj = or disjoint i64 %i.cai, -1407374883553280
  %i.cak = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cal = load i8, ptr %i.cak, align 1, !tbaa !81
  %i.cam = zext i8 %i.cal to i64
  %i.can = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cam
  store i64 %i.caj, ptr %i.can, align 8, !tbaa !69
  %i.cao = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.ky:                                            ; preds = %.backedge
  %i.cap = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.caq = load i8, ptr %i.cap, align 1, !tbaa !81
  %i.car = zext i8 %i.caq to i64
  %i.cas = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.car
  %.sroa.0108.0.copyload = load i64, ptr %i.cas, align 8, !tbaa !61
  %i.cat = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cau = load i8, ptr %i.cat, align 1, !tbaa !81
  %i.cav = zext i8 %i.cau to i64
  %i.caw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cav
  %.sroa.0107.0.copyload = load i64, ptr %i.caw, align 8, !tbaa !61
  %i.cax = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.0108.0.copyload, i64 %.sroa.0107.0.copyload) #10
  %i.cay = xor i1 %i.cax, true
  %i.caz = zext i1 %i.cay to i64
  %i.cba = or disjoint i64 %i.caz, -1407374883553280
  %i.cbb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cbc = load i8, ptr %i.cbb, align 1, !tbaa !81
  %i.cbd = zext i8 %i.cbc to i64
  %i.cbe = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbd
  store i64 %i.cba, ptr %i.cbe, align 8, !tbaa !69
  %i.cbf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.kz:                                            ; preds = %.backedge
  %i.cbg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cbh = load i8, ptr %i.cbg, align 1, !tbaa !81
  %i.cbi = zext i8 %i.cbh to i64
  %i.cbj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbi
  %.sroa.0106.0.copyload = load i64, ptr %i.cbj, align 8, !tbaa !61
  %i.cbk = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %.sroa.0106.0.copyload) #10
  %i.cbl = xor i1 %i.cbk, true
  %i.cbm = zext i1 %i.cbl to i64
  %i.cbn = or disjoint i64 %i.cbm, -1407374883553280
  %i.cbo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cbp = load i8, ptr %i.cbo, align 1, !tbaa !81
  %i.cbq = zext i8 %i.cbp to i64
  %i.cbr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbq
  store i64 %i.cbn, ptr %i.cbr, align 8, !tbaa !69
  %i.cbs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.la:                                            ; preds = %.backedge
  %i.cbt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.cbu = load i8, ptr %i.cbt, align 1, !tbaa !81
  %i.cbv = zext i8 %i.cbu to i64
  %i.cbw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cbv
  %i.cbx = load i64, ptr %i.cbw, align 8          ; 2 uses
  %i.cby = icmp ult i64 %i.cbx, -1970324836974592
  br i1 %i.cby, label %bb.lb, label %bb.lc, !prof !60

bb.lb:                                            ; preds = %bb.la
  %i.cbz = bitcast i64 %i.cbx to double           ; 2 uses
  %i.cca = fneg double %i.cbz
  %i.ccb = fcmp uno double %i.cbz, 0.000000e+00
  %i.ccc = bitcast double %i.cca to i64
  %.sroa.0.0.i2970 = select i1 %i.ccb, i64 9221120237041090560, i64 %i.ccc, !prof !65
  %i.ccd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cce = load i8, ptr %i.ccd, align 1, !tbaa !81
  %i.ccf = zext i8 %i.cce to i64
  %i.ccg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccf
  store i64 %.sroa.0.0.i2970, ptr %i.ccg, align 8, !tbaa !69
  %i.cch = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.lc:                                            ; preds = %bb.la
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cci = load i8, ptr %i.cbt, align 1, !tbaa !81
  %i.ccj = zext i8 %i.cci to i64
  %i.cck = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccj
  %i.ccl = call { i32, i64 } @_ZN6hermes2vm16doNegateSlowPathERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cck) #10 ; 2 uses
  %i.ccm = extractvalue { i32, i64 } %i.ccl, 0
  %i.ccn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cco = icmp eq i32 %i.ccm, 0
  br i1 %i.cco, label %.loopexitthread-pre-split.loopexit4189, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.ccp = extractvalue { i32, i64 } %i.ccl, 1
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccn, i64 1
  %i.ccr = load i8, ptr %i.ccq, align 1, !tbaa !81
  %i.ccs = zext i8 %i.ccr to i64
  %i.cct = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccs
  store i64 %i.ccp, ptr %i.cct, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.ccn, i64 3
  br label %.backedge.backedge

bb.le:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ccv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.ccw = load i8, ptr %i.ccv, align 1, !tbaa !81
  %i.ccx = zext i8 %i.ccw to i64
  %i.ccy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ccx
  %i.ccz = call i64 @_ZN6hermes2vm6typeOfERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ccy) #10
  %i.cda = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cdb = load i8, ptr %i.cda, align 1, !tbaa !81
  %i.cdc = zext i8 %i.cdb to i64
  %i.cdd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cdc
  store i64 %i.ccz, ptr %i.cdd, align 8, !tbaa !69
  %i.cde = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.cdf = getelementptr inbounds nuw i8, ptr %i.cde, i64 3
  br label %.backedge.backedge

bb.lf:                                            ; preds = %.backedge
  %i.cdg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.cdh = load i8, ptr %i.cdg, align 1, !tbaa !81
  %i.cdi = zext i8 %i.cdh to i64
  %i.cdj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cdi
  %i.cdk = load i64, ptr %i.cdj, align 8          ; 2 uses
  %i.cdl = icmp ult i64 %i.cdk, -1970324836974592
  %i.cdm = bitcast i64 %i.cdk to double
  br i1 %i.cdl, label %bb.lg, label %.critedge2675, !prof !60

bb.lg:                                            ; preds = %bb.lf
  %i.cdn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cdo = load i8, ptr %i.cdn, align 1, !tbaa !81
  %i.cdp = zext i8 %i.cdo to i64
  %i.cdq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cdp
  %i.cdr = load i64, ptr %i.cdq, align 8          ; 2 uses
  %i.cds = icmp ult i64 %i.cdr, -1970324836974592
  br i1 %i.cds, label %bb.lh, label %.critedge2675, !prof !60

bb.lh:                                            ; preds = %bb.lg
  %i.cdt = bitcast i64 %i.cdr to double
  %i.cdu = call noundef double @fmod(double noundef %i.cdm, double noundef %i.cdt) #10, !tbaa !3 ; 2 uses
  %i.cdv = fcmp uno double %i.cdu, 0.000000e+00
  %i.cdw = bitcast double %i.cdu to i64
  %.sroa.0.0.i2974 = select i1 %i.cdv, i64 9221120237041090560, i64 %i.cdw, !prof !65
  %i.cdx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cdy = load i8, ptr %i.cdx, align 1, !tbaa !81
  %i.cdz = zext i8 %i.cdy to i64
  %i.cea = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cdz
  store i64 %.sroa.0.0.i2974, ptr %i.cea, align 8, !tbaa !69
  %i.ceb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2675:                                    ; preds = %bb.lf, %bb.lg
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cec = load i8, ptr %i.cdg, align 1, !tbaa !81
  %i.ced = zext i8 %i.cec to i64
  %i.cee = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ced
  %i.cef = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ceg = load i8, ptr %i.cef, align 1, !tbaa !81
  %i.ceh = zext i8 %i.ceg to i64
  %i.cei = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ceh
  %i.cej = call { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doModEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cee, ptr %i.cei) #10 ; 2 uses
  %i.cek = extractvalue { i32, i64 } %i.cej, 0
  %i.cel = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cem = icmp eq i32 %i.cek, 0
  br i1 %i.cem, label %.loopexitthread-pre-split.loopexit4189, label %bb.li, !prof !65

bb.li:                                            ; preds = %.critedge2675
  %i.cen = extractvalue { i32, i64 } %i.cej, 1
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cel, i64 1
  %i.cep = load i8, ptr %i.ceo, align 1, !tbaa !81
  %i.ceq = zext i8 %i.cep to i64
  %i.cer = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ceq
  store i64 %i.cen, ptr %i.cer, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ces = getelementptr inbounds nuw i8, ptr %i.cel, i64 4
  br label %.backedge.backedge

bb.lj:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cet = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.ceu = load i8, ptr %i.cet, align 1, !tbaa !81
  %i.cev = zext i8 %i.ceu to i64
  %i.cew = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cev
  %i.cex = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cey = load i8, ptr %i.cex, align 1, !tbaa !81
  %i.cez = zext i8 %i.cey to i64
  %i.cfa = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cez
  %i.cfb = call i32 @_ZN6hermes2vm22instanceOfOperator_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cew, ptr %i.cfa) #10 ; 2 uses
  %i.cfc = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3749 = and i32 %i.cfb, 255
  %i.cfd = icmp eq i32 %.mask3749, 0
  br i1 %i.cfd, label %.loopexitthread-pre-split.loopexit4189, label %bb.lk, !prof !65

bb.lk:                                            ; preds = %bb.lj
  %i.cfe = lshr i32 %i.cfb, 8
  %.lobit3750 = and i32 %i.cfe, 1
  %i.cff = zext nneg i32 %.lobit3750 to i64
  %i.cfg = or disjoint i64 %i.cff, -1407374883553280
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.cfc, i64 1
  %i.cfi = load i8, ptr %i.cfh, align 1, !tbaa !81
  %i.cfj = zext i8 %i.cfi to i64
  %i.cfk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cfj
  store i64 %i.cfg, ptr %i.cfk, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfc, i64 4
  br label %.backedge.backedge

bb.ll:                                            ; preds = %.backedge
  %i.cfm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.cfn = load i8, ptr %i.cfm, align 1, !tbaa !81
  %i.cfo = zext i8 %i.cfn to i64
  %i.cfp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cfo
  %i.cfq = load i64, ptr %i.cfp, align 8, !tbaa !69
  %i.cfr = icmp ugt i64 %i.cfq, -281474976710657
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  br i1 %i.cfr, label %bb.lm, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit2979, !prof !60

_ZN6hermes2vm11TwineChar16C2EPKc.exit2979:        ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  store i32 1, ptr %i.bn, align 8, !tbaa !369
  store i64 38, ptr %i.bo, align 8, !tbaa !370
  store i64 0, ptr %i.bp, align 8, !tbaa !371
  store ptr @.str.16, ptr %16, align 8, !tbaa !81
  store i32 3, ptr %i.bq, align 8, !tbaa !366
  %i.cfs = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %16) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br label %.loopexitthread-pre-split.sink.split

bb.lm:                                            ; preds = %bb.ll
  %i.cft = load i8, ptr %i.cfm, align 1, !tbaa !81
  %i.cfu = zext i8 %i.cft to i64
  %i.cfv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cfu
  %i.cfw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cfx = load i8, ptr %i.cfw, align 1, !tbaa !81
  %i.cfy = zext i8 %i.cfx to i64
  %i.cfz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cfy
  %i.cga = call i32 @_ZN6hermes2vm8JSObject11hasComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr %i.cfv, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cfz) #10 ; 2 uses
  %i.cgb = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3747 = and i32 %i.cga, 255
  %i.cgc = icmp eq i32 %.mask3747, 0
  br i1 %i.cgc, label %.loopexitthread-pre-split.loopexit4189, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.cgd = lshr i32 %i.cga, 8
  %.lobit3748 = and i32 %i.cgd, 1
  %i.cge = zext nneg i32 %.lobit3748 to i64
  %i.cgf = or disjoint i64 %i.cge, -1407374883553280
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.cgb, i64 1
  %i.cgh = load i8, ptr %i.cgg, align 1, !tbaa !81
  %i.cgi = zext i8 %i.cgh to i64
  %i.cgj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cgi
  store i64 %i.cgf, ptr %i.cgj, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cgb, i64 4
  br label %.backedge.backedge

bb.lo:                                            ; preds = %.backedge
  %i.cgl = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  %i.cgm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cgn = load i8, ptr %i.cgm, align 1, !tbaa !81
  %i.cgo = zext i8 %i.cgn to i32
  br label %bb.lr

bb.lp:                                            ; preds = %.backedge
  %i.cgp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  %i.cgq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cgr = load i32, ptr %i.cgq, align 1, !tbaa !81
  br label %bb.lr

bb.lq:                                            ; preds = %.backedge
  %i.cgs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.cgt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cgu = load i16, ptr %i.cgt, align 1, !tbaa !81
  %i.cgv = zext i16 %i.cgu to i32
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %.62624 = phi i32 [ %i.cgo, %bb.lo ], [ %i.cgv, %bb.lq ], [ %i.cgr, %bb.lp ]
  %.92615 = phi ptr [ %i.cgl, %bb.lo ], [ %i.cgs, %bb.lq ], [ %i.cgp, %bb.lp ]
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cgw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cgx = load i8, ptr %i.cgw, align 1, !tbaa !81
  %i.cgy = zext i8 %i.cgx to i64
  %i.cgz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cgy
  %i.cha = load ptr, ptr %.4, align 8, !tbaa !398
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cha, i64 24
  %i.chc = zext i32 %.62624 to i64
  %i.chd = load ptr, ptr %i.chb, align 8, !tbaa !408
  %i.che = getelementptr inbounds nuw [4 x i8], ptr %i.chd, i64 %i.chc
  %.sroa.0.0.copyload.i2981 = load i32, ptr %i.che, align 4, !tbaa !3
  %i.chf = load i8, ptr %.sink4083.sink.in, align 1, !tbaa !81
  %i.chg = icmp ult i8 %i.chf, 66
  %spec.select3678 = select i1 %i.chg, i16 14, i16 12
  %i.chh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.chi = load i8, ptr %i.chh, align 1, !tbaa !81
  %i.chj = zext i8 %i.chi to i64
  %i.chk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.chj
  %i.chl = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %i.cgz, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2981, i16 %spec.select3678, ptr %i.chk) #10
  %i.chm = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.chn = icmp eq i32 %i.chl, 0
  br i1 %i.chn, label %.loopexitthread-pre-split.loopexit4189, label %bb.ls, !prof !65

bb.ls:                                            ; preds = %bb.lr
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.lt:                                            ; preds = %.backedge
  %i.cho = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.chp = load i32, ptr %i.cho, align 1, !tbaa !81
  br label %bb.lv

bb.lu:                                            ; preds = %.backedge
  %i.chq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.chr = load i16, ptr %i.chq, align 1, !tbaa !81
  %i.chs = zext i16 %i.chr to i32
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %bb.lt
  %.sink4120 = phi i64 [ 5, %bb.lu ], [ 7, %bb.lt ]
  %.72625 = phi i32 [ %i.chs, %bb.lu ], [ %i.chp, %bb.lt ] ; 3 uses
  %i.cht = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 %.sink4120
  %i.chu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.chv = load i8, ptr %i.chu, align 1, !tbaa !81
  %i.chw = zext i8 %i.chv to i64
  %i.chx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.chw
  %i.chy = load i64, ptr %i.chx, align 8, !tbaa !69
  %i.chz = icmp ugt i64 %i.chy, -281474976710657
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cia = load i8, ptr %i.chu, align 1, !tbaa !81
  %i.cib = zext i8 %i.cia to i64
  %i.cic = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cib ; 2 uses
  br i1 %i.chz, label %bb.lw, label %bb.ly, !prof !60

bb.lw:                                            ; preds = %bb.lv
  %i.cid = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cie = getelementptr inbounds nuw i8, ptr %i.cid, i64 24
  %i.cif = zext i32 %.72625 to i64
  %i.cig = load ptr, ptr %i.cie, align 8, !tbaa !408
  %i.cih = getelementptr inbounds nuw [4 x i8], ptr %i.cig, i64 %i.cif
  %.sroa.0.0.copyload.i2982 = load i32, ptr %i.cih, align 4, !tbaa !3
  %.sroa.03592.0.insert.ext3599 = zext nneg i8 %.sroa.03592.1 to i32
  %i.cii = call i32 @_ZN6hermes2vm8JSObject11deleteNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr %i.cic, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2982, i32 %.sroa.03592.0.insert.ext3599) #10 ; 2 uses
  %i.cij = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.mask3739 = and i32 %i.cii, 255
  %i.cik = icmp eq i32 %.mask3739, 0
  br i1 %i.cik, label %.loopexitthread-pre-split.loopexit4189, label %bb.lx, !prof !65

bb.lx:                                            ; preds = %bb.lw
  %i.cil = lshr i32 %i.cii, 8
  %.lobit3740 = and i32 %i.cil, 1
  %i.cim = zext nneg i32 %.lobit3740 to i64
  %i.cin = or disjoint i64 %i.cim, -1407374883553280
  %i.cio = getelementptr inbounds nuw i8, ptr %i.cij, i64 1
  %i.cip = load i8, ptr %i.cio, align 1, !tbaa !81
  %i.ciq = zext i8 %i.cip to i64
  %i.cir = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ciq
  store i64 %i.cin, ptr %i.cir, align 8, !tbaa !69
  br label %bb.mc

bb.ly:                                            ; preds = %bb.lv
  %i.cis = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cic) #10 ; 2 uses
  %i.cit = extractvalue { i32, i64 } %i.cis, 0
  %i.ciu = icmp eq i32 %i.cit, 0
  br i1 %i.ciu, label %bb.lz, label %bb.ma, !prof !65

bb.lz:                                            ; preds = %bb.ly
  %i.civ = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.civ, i64 2
  %i.cix = load i8, ptr %i.ciw, align 1, !tbaa !81
  %i.ciy = zext i8 %i.cix to i64
  %i.ciz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ciy
  %i.cja = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cjb = getelementptr inbounds nuw i8, ptr %i.cja, i64 24
  %i.cjc = zext i32 %.72625 to i64
  %i.cjd = load ptr, ptr %i.cjb, align 8, !tbaa !408
  %i.cje = getelementptr inbounds nuw [4 x i8], ptr %i.cjd, i64 %i.cjc
  %.sroa.0.0.copyload.i2984 = load i32, ptr %i.cje, align 4, !tbaa !3
  %i.cjf = call noundef i32 @_ZN6hermes2vm35amendPropAccessErrorMsgWithPropNameERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEN4llvh9StringRefENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ciz, ptr nonnull @.str.17, i64 6, i32 %.sroa.0.0.copyload.i2984) #10 ; 0 uses
  br label %.loopexitthread-pre-split.sink.split

bb.ma:                                            ; preds = %bb.ly
  %i.cjg = extractvalue { i32, i64 } %i.cis, 1
  store i64 %i.cjg, ptr %i.o, align 8, !tbaa !69
  %i.cjh = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cjh, i64 24
  %i.cjj = zext i32 %.72625 to i64
  %i.cjk = load ptr, ptr %i.cji, align 8, !tbaa !408
  %i.cjl = getelementptr inbounds nuw [4 x i8], ptr %i.cjk, i64 %i.cjj
  %.sroa.0.0.copyload.i2985 = load i32, ptr %i.cjl, align 4, !tbaa !3
  %.sroa.03592.0.insert.ext3596 = zext nneg i8 %.sroa.03592.1 to i32
  %i.cjm = call i32 @_ZN6hermes2vm8JSObject11deleteNamedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.0.0.copyload.i2985, i32 %.sroa.03592.0.insert.ext3596) #10 ; 2 uses
  %i.cjn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.mask3737 = and i32 %i.cjm, 255
  %i.cjo = icmp eq i32 %.mask3737, 0
  br i1 %i.cjo, label %.loopexitthread-pre-split.loopexit4189, label %bb.mb, !prof !65

bb.mb:                                            ; preds = %bb.ma
  %i.cjp = lshr i32 %i.cjm, 8
  %.lobit3738 = and i32 %i.cjp, 1
  %i.cjq = zext nneg i32 %.lobit3738 to i64
  %i.cjr = or disjoint i64 %i.cjq, -1407374883553280
  %i.cjs = getelementptr inbounds nuw i8, ptr %i.cjn, i64 1
  %i.cjt = load i8, ptr %i.cjs, align 1, !tbaa !81
  %i.cju = zext i8 %i.cjt to i64
  %i.cjv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cju
  store i64 %i.cjr, ptr %i.cjv, align 8, !tbaa !69
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br label %bb.mc

bb.mc:                                            ; preds = %bb.mb, %bb.lx
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %.backedge.backedge

bb.md:                                            ; preds = %.backedge
  %i.cjw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.cjx = load i8, ptr %i.cjw, align 1, !tbaa !81
  %i.cjy = zext i8 %i.cjx to i64
  %i.cjz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cjy
  %i.cka = load i64, ptr %i.cjz, align 8, !tbaa !69
  %i.ckb = icmp ugt i64 %i.cka, -281474976710657
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ckc = load i8, ptr %i.cjw, align 1, !tbaa !81
  %i.ckd = zext i8 %i.ckc to i64
  %i.cke = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ckd ; 2 uses
  br i1 %i.ckb, label %bb.me, label %bb.mf, !prof !60

bb.me:                                            ; preds = %bb.md
  %i.ckf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ckg = load i8, ptr %i.ckf, align 1, !tbaa !81
  %i.ckh = zext i8 %i.ckg to i64
  %i.cki = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ckh
  %.sroa.03592.0.insert.ext3593 = zext nneg i8 %.sroa.03592.1 to i32
  %i.ckj = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.cke, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cki, i32 %.sroa.03592.0.insert.ext3593) #10 ; 2 uses
  %i.ckk = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.mask3733 = and i32 %i.ckj, 255
  %i.ckl = icmp eq i32 %.mask3733, 0
  br i1 %i.ckl, label %.loopexitthread-pre-split.loopexit4189, label %bb.mh, !prof !65

bb.mf:                                            ; preds = %bb.md
  %i.ckm = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cke) #10 ; 2 uses
  %i.ckn = extractvalue { i32, i64 } %i.ckm, 0
  %i.cko = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ckp = icmp eq i32 %i.ckn, 0
  br i1 %i.ckp, label %.loopexitthread-pre-split.loopexit4189, label %bb.mg, !prof !65

bb.mg:                                            ; preds = %bb.mf
  %i.ckq = extractvalue { i32, i64 } %i.ckm, 1
  store i64 %i.ckq, ptr %i.o, align 8, !tbaa !69
  %i.ckr = getelementptr inbounds nuw i8, ptr %i.cko, i64 3
  %i.cks = load i8, ptr %i.ckr, align 1, !tbaa !81
  %i.ckt = zext i8 %i.cks to i64
  %i.cku = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ckt
  %.sroa.03592.0.insert.ext = zext nneg i8 %.sroa.03592.1 to i32
  %i.ckv = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cku, i32 %.sroa.03592.0.insert.ext) #10 ; 2 uses
  %i.ckw = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.mask3731 = and i32 %i.ckv, 255
  %i.ckx = icmp eq i32 %.mask3731, 0
  br i1 %i.ckx, label %.loopexitthread-pre-split.loopexit4189, label %bb.mh, !prof !65

bb.mh:                                            ; preds = %bb.mg, %bb.me
  %.sink4129 = phi i32 [ %i.ckj, %bb.me ], [ %i.ckv, %bb.mg ]
  %.sink4126 = phi ptr [ %i.ckk, %bb.me ], [ %i.ckw, %bb.mg ] ; 2 uses
  %i.cky = lshr i32 %.sink4129, 8
  %.lobit3732 = and i32 %i.cky, 1
  %i.ckz = zext nneg i32 %.lobit3732 to i64
  %i.cla = or disjoint i64 %i.ckz, -1407374883553280
  %i.clb = getelementptr inbounds nuw i8, ptr %.sink4126, i64 1
  %i.clc = load i8, ptr %i.clb, align 1, !tbaa !81
  %i.cld = zext i8 %i.clc to i64
  %i.cle = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cld
  store i64 %i.cla, ptr %i.cle, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  %i.clf = getelementptr inbounds nuw i8, ptr %.sink4126, i64 4
  br label %.backedge.backedge

bb.mi:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.clg = call ptr @_ZN6hermes2vm8JSRegExp6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.as) #10
  %i.clh = ptrtoint ptr %i.clg to i64
  %i.cli = or i64 %i.clh, -281474976710656
  %i.clj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.clk = load i8, ptr %i.clj, align 1, !tbaa !81
  %i.cll = zext i8 %i.clk to i64
  %i.clm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cll
  store i64 %i.cli, ptr %i.clm, align 8, !tbaa !69
  %i.cln = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.clo = getelementptr inbounds nuw i8, ptr %i.cln, i64 1
  %i.clp = load i8, ptr %i.clo, align 1, !tbaa !81
  %i.clq = zext i8 %i.clp to i64
  %i.clr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.clq
  %i.cls = load ptr, ptr %.4, align 8, !tbaa !398
  %i.clt = getelementptr inbounds nuw i8, ptr %i.cln, i64 2
  %i.clu = load i32, ptr %i.clt, align 1, !tbaa !81
  %i.clv = call noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192) %i.cls, i32 noundef %i.clu) #10
  %i.clw = ptrtoint ptr %i.clv to i64
  %i.clx = or i64 %i.clw, -844424930131968        ; 2 uses
  %i.cly = load ptr, ptr %i.l, align 8, !tbaa !46 ; 3 uses
  %i.clz = getelementptr inbounds nuw i8, ptr %i.cly, i64 192 ; 2 uses
  %i.cma = load ptr, ptr %i.clz, align 8, !tbaa !49 ; 4 uses
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.cly, i64 200
  %i.cmc = load ptr, ptr %i.cmb, align 8, !tbaa !59
  %i.cmd = icmp ult ptr %i.cma, %i.cmc
  br i1 %i.cmd, label %bb.mj, label %bb.mk, !prof !60

bb.mj:                                            ; preds = %bb.mi
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cma, i64 8
  store ptr %i.cme, ptr %i.clz, align 8, !tbaa !49
  store i64 %i.clx, ptr %i.cma, align 8, !tbaa !61
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.mk:                                            ; preds = %bb.mi
  %i.cmf = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cly, i64 %i.clx) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.mj, %bb.mk
  %.0.i.i.i.i.i.i2990 = phi ptr [ %i.cma, %bb.mj ], [ %i.cmf, %bb.mk ]
  %i.cmg = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.cmh = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.cmg, i64 6
  %i.cmj = load i32, ptr %i.cmi, align 1, !tbaa !81
  %i.cmk = call noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192) %i.cmh, i32 noundef %i.cmj) #10
  %i.cml = ptrtoint ptr %i.cmk to i64
  %i.cmm = or i64 %i.cml, -844424930131968        ; 2 uses
  %i.cmn = load ptr, ptr %i.l, align 8, !tbaa !46 ; 3 uses
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cmn, i64 192 ; 2 uses
  %i.cmp = load ptr, ptr %i.cmo, align 8, !tbaa !49 ; 4 uses
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.cmn, i64 200
  %i.cmr = load ptr, ptr %i.cmq, align 8, !tbaa !59
  %i.cms = icmp ult ptr %i.cmp, %i.cmr
  br i1 %i.cms, label %bb.ml, label %bb.mm, !prof !60

bb.ml:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cmp, i64 8
  store ptr %i.cmt, ptr %i.cmo, align 8, !tbaa !49
  store i64 %i.cmm, ptr %i.cmp, align 8, !tbaa !61
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992

bb.mm:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %i.cmu = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cmn, i64 %i.cmm) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit2992: ; preds = %bb.ml, %bb.mm
  %.0.i.i.i.i.i.i2991 = phi ptr [ %i.cmp, %bb.ml ], [ %i.cmu, %bb.mm ]
  %i.cmv = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.cmw = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cmx = getelementptr inbounds nuw i8, ptr %i.cmv, i64 10
  %i.cmy = load i32, ptr %i.cmx, align 1, !tbaa !81
  %i.cmz = call { ptr, i64 } @_ZNK6hermes2vm13RuntimeModule29getRegExpBytecodeFromRegExpIDEj(ptr noundef nonnull align 8 dereferenceable(192) %i.cmw, i32 noundef %i.cmy) #10 ; 2 uses
  %i.cna = extractvalue { ptr, i64 } %i.cmz, 0
  %i.cnb = extractvalue { ptr, i64 } %i.cmz, 1
  call void @_ZN6hermes2vm8JSRegExp10initializeENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_15StringPrimitiveEEES7_N4llvh8ArrayRefIhEE(ptr nonnull %i.clr, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i2990, ptr %.0.i.i.i.i.i.i2991, ptr %i.cna, i64 %i.cnb) #10
  %i.cnc = load ptr, ptr %i.a, align 8, !tbaa !108
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cnd = getelementptr inbounds nuw i8, ptr %i.cnc, i64 14
  br label %.backedge.backedge

bb.mn:                                            ; preds = %.backedge
  %i.cne = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cnf = load i8, ptr %i.cne, align 1, !tbaa !81
  %i.cng = zext i8 %i.cnf to i64
  %i.cnh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cng
  %i.cni = load i64, ptr %i.cnh, align 8          ; 2 uses
  %i.cnj = icmp ult i64 %i.cni, -1970324836974592
  br i1 %i.cnj, label %bb.mo, label %bb.ms, !prof !60

bb.mo:                                            ; preds = %bb.mn
  %i.cnk = bitcast i64 %i.cni to double           ; 2 uses
  %i.cnl = fptoui double %i.cnk to i32            ; 4 uses
  %i.cnm = uitofp i32 %i.cnl to double
  %i.cnn = fcmp oeq double %i.cnk, %i.cnm
  br i1 %i.cnn, label %bb.mp, label %bb.ms, !prof !60

bb.mp:                                            ; preds = %bb.mo
  %i.cno = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 10
  %i.cnp = load i32, ptr %i.cno, align 1, !tbaa !81 ; 2 uses
  %.not2647 = icmp ugt i32 %i.cnp, %i.cnl
  br i1 %.not2647, label %bb.ms, label %bb.mq, !prof !65

bb.mq:                                            ; preds = %bb.mp
  %i.cnq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 14
  %i.cnr = load i32, ptr %i.cnq, align 1, !tbaa !81
  %.not2648 = icmp ult i32 %i.cnr, %i.cnl
  br i1 %.not2648, label %bb.ms, label %bb.mr, !prof !65

bb.mr:                                            ; preds = %bb.mq
  %i.cns = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cnt = load i32, ptr %i.cns, align 1, !tbaa !81
  %i.cnu = zext i32 %i.cnt to i64
  %i.cnv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 %i.cnu
  %i.cnw = ptrtoint ptr %i.cnv to i64
  %i.cnx = add i64 %i.cnw, 3
  %i.cny = and i64 %i.cnx, -4
  %i.cnz = inttoptr i64 %i.cny to ptr
  %i.coa = zext i32 %i.cnl to i64
  %i.cob = getelementptr inbounds nuw [4 x i8], ptr %i.cnz, i64 %i.coa
  %i.coc = zext i32 %i.cnp to i64
  %i.cod = sub nsw i64 0, %i.coc
  %i.coe = getelementptr inbounds [4 x i8], ptr %i.cob, i64 %i.cod
  %i.cof = load i32, ptr %i.coe, align 4, !tbaa !3
  %i.cog = sext i32 %i.cof to i64
  %i.coh = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.cog
  br label %.backedge.backedge

bb.ms:                                            ; preds = %bb.mo, %bb.mp, %bb.mq, %bb.mn
  %i.coi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.coj = load i32, ptr %i.coi, align 1, !tbaa !81
  %i.cok = sext i32 %i.coj to i64
  %i.col = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.cok
  br label %.backedge.backedge

bb.mt:                                            ; preds = %.backedge
  %i.com = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.con = load i8, ptr %i.com, align 1, !tbaa !81
  %i.coo = uitofp i8 %i.con to double
  %i.cop = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.coq = load i8, ptr %i.cop, align 1, !tbaa !81
  %i.cor = zext i8 %i.coq to i64
  %i.cos = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cor
  store double %i.coo, ptr %i.cos, align 8, !tbaa !69
  %i.cot = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  br label %.backedge.backedge

bb.mu:                                            ; preds = %.backedge
  %i.cou = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cov = load i32, ptr %i.cou, align 1, !tbaa !81
  %i.cow = sitofp i32 %i.cov to double
  %i.cox = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.coy = load i8, ptr %i.cox, align 1, !tbaa !81
  %i.coz = zext i8 %i.coy to i64
  %i.cpa = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.coz
  store double %i.cow, ptr %i.cpa, align 8, !tbaa !69
  %i.cpb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  br label %.backedge.backedge

bb.mv:                                            ; preds = %.backedge
  %i.cpc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cpd = load double, ptr %i.cpc, align 1, !tbaa !81 ; 2 uses
  %i.cpe = fcmp uno double %i.cpd, 0.000000e+00
  %i.cpf = bitcast double %i.cpd to i64
  %.sroa.0.0.i2995 = select i1 %i.cpe, i64 9221120237041090560, i64 %i.cpf, !prof !65
  %i.cpg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cph = load i8, ptr %i.cpg, align 1, !tbaa !81
  %i.cpi = zext i8 %i.cph to i64
  %i.cpj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cpi
  store i64 %.sroa.0.0.i2995, ptr %i.cpj, align 8, !tbaa !69
  %i.cpk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 10
  br label %.backedge.backedge

bb.mw:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cpl = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cpm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cpn = load i16, ptr %i.cpm, align 1, !tbaa !81
  %i.cpo = zext i16 %i.cpn to i32
  %i.cpp = call noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192) %i.cpl, i32 noundef %i.cpo) #10
  %i.cpq = ptrtoint ptr %i.cpp to i64
  %i.cpr = or i64 %i.cpq, -844424930131968
  %i.cps = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cpt = load i8, ptr %i.cps, align 1, !tbaa !81
  %i.cpu = zext i8 %i.cpt to i64
  %i.cpv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cpu
  store i64 %i.cpr, ptr %i.cpv, align 8, !tbaa !69
  %i.cpw = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.cpw, i64 4
  br label %.backedge.backedge

bb.mx:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cpy = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cpz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cqa = load i32, ptr %i.cpz, align 1, !tbaa !81
  %i.cqb = call noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192) %i.cpy, i32 noundef %i.cqa) #10
  %i.cqc = ptrtoint ptr %i.cqb to i64
  %i.cqd = or i64 %i.cqc, -844424930131968
  %i.cqe = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cqf = load i8, ptr %i.cqe, align 1, !tbaa !81
  %i.cqg = zext i8 %i.cqf to i64
  %i.cqh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cqg
  store i64 %i.cqd, ptr %i.cqh, align 8, !tbaa !69
  %i.cqi = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.cqj = getelementptr inbounds nuw i8, ptr %i.cqi, i64 6
  br label %.backedge.backedge

bb.my:                                            ; preds = %.backedge
  %i.cqk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cql = load i8, ptr %i.cqk, align 1, !tbaa !81
  %i.cqm = zext i8 %i.cql to i64
  %i.cqn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cqm
  store i64 -1970324836974592, ptr %i.cqn, align 8, !tbaa !69
  %i.cqo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.mz:                                            ; preds = %.backedge
  %i.cqp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cqq = load i8, ptr %i.cqp, align 1, !tbaa !81
  %i.cqr = zext i8 %i.cqq to i64
  %i.cqs = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cqr
  store i64 -1688849860263936, ptr %i.cqs, align 8, !tbaa !69
  %i.cqt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.na:                                            ; preds = %.backedge
  %i.cqu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cqv = load i8, ptr %i.cqu, align 1, !tbaa !81
  %i.cqw = zext i8 %i.cqv to i64
  %i.cqx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cqw
  store i64 -1548112371908608, ptr %i.cqx, align 8, !tbaa !69
  %i.cqy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.nb:                                            ; preds = %.backedge
  %i.cqz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cra = load i8, ptr %i.cqz, align 1, !tbaa !81
  %i.crb = zext i8 %i.cra to i64
  %i.crc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.crb
  store i64 -1407374883553279, ptr %i.crc, align 8, !tbaa !69
  %i.crd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.nc:                                            ; preds = %.backedge
  %i.cre = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.crf = load i8, ptr %i.cre, align 1, !tbaa !81
  %i.crg = zext i8 %i.crf to i64
  %i.crh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.crg
  store i64 -1407374883553280, ptr %i.crh, align 8, !tbaa !69
  %i.cri = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.nd:                                            ; preds = %.backedge
  %i.crj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.crk = load i8, ptr %i.crj, align 1, !tbaa !81
  %i.crl = zext i8 %i.crk to i64
  %i.crm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.crl
  store i64 0, ptr %i.crm, align 8, !tbaa !69
  %i.crn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  br label %.backedge.backedge

bb.ne:                                            ; preds = %.backedge
  %i.cro = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.crp = load i16, ptr %i.cro, align 1, !tbaa !81
  %i.crq = zext i16 %i.crp to i32
  br label %bb.ng

bb.nf:                                            ; preds = %.backedge
  %i.crr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.crs = load i32, ptr %i.crr, align 1, !tbaa !81
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nf, %bb.ne
  %.sink4130 = phi i64 [ 6, %bb.nf ], [ 4, %bb.ne ]
  %.82626 = phi i32 [ %i.crs, %bb.nf ], [ %i.crq, %bb.ne ]
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.crt = load ptr, ptr %.4, align 8, !tbaa !398
  %i.cru = call { ptr, i64 } @_ZNK6hermes2vm13RuntimeModule26getBigIntBytesFromBigIntIdEj(ptr noundef nonnull align 8 dereferenceable(192) %i.crt, i32 noundef %.82626) #10 ; 2 uses
  %i.crv = extractvalue { ptr, i64 } %i.cru, 0
  %i.crw = extractvalue { ptr, i64 } %i.cru, 1
  %i.crx = call { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive9fromBytesERNS0_7RuntimeEN4llvh8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.crv, i64 %i.crw) ; 2 uses
  %i.cry = extractvalue { i32, i64 } %i.crx, 0
  %i.crz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.csa = icmp eq i32 %i.cry, 0
  br i1 %i.csa, label %.loopexitthread-pre-split.loopexit4189, label %bb.nh, !prof !65

bb.nh:                                            ; preds = %bb.ng
  %i.csb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 %.sink4130
  %i.csc = extractvalue { i32, i64 } %i.crx, 1
  %i.csd = getelementptr inbounds nuw i8, ptr %i.crz, i64 1
  %i.cse = load i8, ptr %i.csd, align 1, !tbaa !81
  %i.csf = zext i8 %i.cse to i64
  %i.csg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.csf
  store i64 %i.csc, ptr %i.csg, align 8, !tbaa !69
  br label %.backedge.backedge

bb.ni:                                            ; preds = %.backedge
  %i.csh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.csi = load i8, ptr %i.csh, align 1, !tbaa !81
  %i.csj = zext i8 %i.csi to i64
  %i.csk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.csj
  %i.csl = load i64, ptr %i.csk, align 8, !tbaa !69
  %i.csm = icmp ult i64 %i.csl, -1970324836974592
  br i1 %i.csm, label %bb.nj, label %.critedge2677, !prof !60

bb.nj:                                            ; preds = %bb.ni
  %i.csn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cso = load i8, ptr %i.csn, align 1, !tbaa !81
  %i.csp = zext i8 %i.cso to i64
  %i.csq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.csp
  %i.csr = load i64, ptr %i.csq, align 8, !tbaa !69
  %i.css = icmp ult i64 %i.csr, -1970324836974592
  br i1 %i.css, label %bb.nk, label %.critedge2677, !prof !60

bb.nk:                                            ; preds = %bb.nj, %.backedge
  %i.cst = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.csu = load i8, ptr %i.cst, align 1, !tbaa !81
  %i.csv = zext i8 %i.csu to i64
  %i.csw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.csv
  %i.csx = load double, ptr %i.csw, align 8, !tbaa !69
  %i.csy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.csz = load i8, ptr %i.csy, align 1, !tbaa !81
  %i.cta = zext i8 %i.csz to i64
  %i.ctb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cta
  %i.ctc = load double, ptr %i.ctb, align 8, !tbaa !69
  %i.ctd = fsub double %i.csx, %i.ctc
  %i.cte = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ctf = load i8, ptr %i.cte, align 1, !tbaa !81
  %i.ctg = zext i8 %i.ctf to i64
  %i.cth = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ctg
  store double %i.ctd, ptr %i.cth, align 8, !tbaa !69
  %i.cti = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2677:                                    ; preds = %bb.ni, %bb.nj
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ctj = load i8, ptr %i.csh, align 1, !tbaa !81
  %i.ctk = zext i8 %i.ctj to i64
  %i.ctl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ctk
  %i.ctm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ctn = load i8, ptr %i.ctm, align 1, !tbaa !81
  %i.cto = zext i8 %i.ctn to i64
  %i.ctp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cto
  %i.ctq = call { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doSubEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ctl, ptr %i.ctp) #10 ; 2 uses
  %i.ctr = extractvalue { i32, i64 } %i.ctq, 0
  %i.cts = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.ctt = icmp eq i32 %i.ctr, 0
  br i1 %i.ctt, label %.loopexitthread-pre-split.loopexit4189, label %bb.nl

bb.nl:                                            ; preds = %.critedge2677
  %i.ctu = extractvalue { i32, i64 } %i.ctq, 1
  %i.ctv = getelementptr inbounds nuw i8, ptr %i.cts, i64 1
  %i.ctw = load i8, ptr %i.ctv, align 1, !tbaa !81
  %i.ctx = zext i8 %i.ctw to i64
  %i.cty = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ctx
  store i64 %i.ctu, ptr %i.cty, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.cts, i64 4
  br label %.backedge.backedge

bb.nm:                                            ; preds = %.backedge
  %i.cua = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.cub = load i8, ptr %i.cua, align 1, !tbaa !81
  %i.cuc = zext i8 %i.cub to i64
  %i.cud = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cuc
  %i.cue = load i64, ptr %i.cud, align 8, !tbaa !69
  %i.cuf = icmp ult i64 %i.cue, -1970324836974592
  br i1 %i.cuf, label %bb.nn, label %.critedge2679, !prof !60

bb.nn:                                            ; preds = %bb.nm
  %i.cug = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cuh = load i8, ptr %i.cug, align 1, !tbaa !81
  %i.cui = zext i8 %i.cuh to i64
  %i.cuj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cui
  %i.cuk = load i64, ptr %i.cuj, align 8, !tbaa !69
  %i.cul = icmp ult i64 %i.cuk, -1970324836974592
  br i1 %i.cul, label %bb.no, label %.critedge2679, !prof !60

bb.no:                                            ; preds = %bb.nn, %.backedge
  %i.cum = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cun = load i8, ptr %i.cum, align 1, !tbaa !81
  %i.cuo = zext i8 %i.cun to i64
  %i.cup = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cuo
  %i.cuq = load double, ptr %i.cup, align 8, !tbaa !69
  %i.cur = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cus = load i8, ptr %i.cur, align 1, !tbaa !81
  %i.cut = zext i8 %i.cus to i64
  %i.cuu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cut
  %i.cuv = load double, ptr %i.cuu, align 8, !tbaa !69
  %i.cuw = fmul double %i.cuq, %i.cuv
  %i.cux = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cuy = load i8, ptr %i.cux, align 1, !tbaa !81
  %i.cuz = zext i8 %i.cuy to i64
  %i.cva = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cuz
  store double %i.cuw, ptr %i.cva, align 8, !tbaa !69
  %i.cvb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2679:                                    ; preds = %bb.nm, %bb.nn
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cvc = load i8, ptr %i.cua, align 1, !tbaa !81
  %i.cvd = zext i8 %i.cvc to i64
  %i.cve = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvd
  %i.cvf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cvg = load i8, ptr %i.cvf, align 1, !tbaa !81
  %i.cvh = zext i8 %i.cvg to i64
  %i.cvi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvh
  %i.cvj = call { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doMulEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cve, ptr %i.cvi) #10 ; 2 uses
  %i.cvk = extractvalue { i32, i64 } %i.cvj, 0
  %i.cvl = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cvm = icmp eq i32 %i.cvk, 0
  br i1 %i.cvm, label %.loopexitthread-pre-split.loopexit4189, label %bb.np

bb.np:                                            ; preds = %.critedge2679
  %i.cvn = extractvalue { i32, i64 } %i.cvj, 1
  %i.cvo = getelementptr inbounds nuw i8, ptr %i.cvl, i64 1
  %i.cvp = load i8, ptr %i.cvo, align 1, !tbaa !81
  %i.cvq = zext i8 %i.cvp to i64
  %i.cvr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvq
  store i64 %i.cvn, ptr %i.cvr, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cvl, i64 4
  br label %.backedge.backedge

bb.nq:                                            ; preds = %.backedge
  %i.cvt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.cvu = load i8, ptr %i.cvt, align 1, !tbaa !81
  %i.cvv = zext i8 %i.cvu to i64
  %i.cvw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cvv
  %i.cvx = load i64, ptr %i.cvw, align 8, !tbaa !69
  %i.cvy = icmp ult i64 %i.cvx, -1970324836974592
  br i1 %i.cvy, label %bb.nr, label %.critedge2681, !prof !60

bb.nr:                                            ; preds = %bb.nq
  %i.cvz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cwa = load i8, ptr %i.cvz, align 1, !tbaa !81
  %i.cwb = zext i8 %i.cwa to i64
  %i.cwc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwb
  %i.cwd = load i64, ptr %i.cwc, align 8, !tbaa !69
  %i.cwe = icmp ult i64 %i.cwd, -1970324836974592
  br i1 %i.cwe, label %bb.ns, label %.critedge2681, !prof !60

bb.ns:                                            ; preds = %bb.nr, %.backedge
  %i.cwf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.cwg = load i8, ptr %i.cwf, align 1, !tbaa !81
  %i.cwh = zext i8 %i.cwg to i64
  %i.cwi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwh
  %i.cwj = load double, ptr %i.cwi, align 8, !tbaa !69
  %i.cwk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cwl = load i8, ptr %i.cwk, align 1, !tbaa !81
  %i.cwm = zext i8 %i.cwl to i64
  %i.cwn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cwm
  %i.cwo = load double, ptr %i.cwn, align 8, !tbaa !69
  %i.cwp = fdiv double %i.cwj, %i.cwo
  %i.cwq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cwr = load i8, ptr %i.cwq, align 1, !tbaa !81
  %i.cws = zext i8 %i.cwr to i64
  %i.cwt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cws
  store double %i.cwp, ptr %i.cwt, align 8, !tbaa !69
  %i.cwu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2681:                                    ; preds = %bb.nq, %bb.nr
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cwv = load i8, ptr %i.cvt, align 1, !tbaa !81
  %i.cww = zext i8 %i.cwv to i64
  %i.cwx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cww
  %i.cwy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cwz = load i8, ptr %i.cwy, align 1, !tbaa !81
  %i.cxa = zext i8 %i.cwz to i64
  %i.cxb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cxa
  %i.cxc = call { i32, i64 } @_ZN6hermes2vm14doOperSlowPathITnDaXadL_ZNS0_5doDivEddEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cwx, ptr %i.cxb) #10 ; 2 uses
  %i.cxd = extractvalue { i32, i64 } %i.cxc, 0
  %i.cxe = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.cxf = icmp eq i32 %i.cxd, 0
  br i1 %i.cxf, label %.loopexitthread-pre-split.loopexit4189, label %bb.nt

bb.nt:                                            ; preds = %.critedge2681
  %i.cxg = extractvalue { i32, i64 } %i.cxc, 1
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cxe, i64 1
  %i.cxi = load i8, ptr %i.cxh, align 1, !tbaa !81
  %i.cxj = zext i8 %i.cxi to i64
  %i.cxk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cxj
  store i64 %i.cxg, ptr %i.cxk, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxe, i64 4
  br label %.backedge.backedge

bb.nu:                                            ; preds = %.backedge
  %i.cxm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.cxn = load i8, ptr %i.cxm, align 1, !tbaa !81
  %i.cxo = zext i8 %i.cxn to i64
  %i.cxp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cxo
  %i.cxq = load i64, ptr %i.cxp, align 8          ; 2 uses
  %i.cxr = icmp ult i64 %i.cxq, -1970324836974592
  %i.cxs = bitcast i64 %i.cxq to double           ; 3 uses
  br i1 %i.cxr, label %bb.nv, label %.critedge2683, !prof !60

bb.nv:                                            ; preds = %bb.nu
  %i.cxt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.cxu = load i8, ptr %i.cxt, align 1, !tbaa !81
  %i.cxv = zext i8 %i.cxu to i64
  %i.cxw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cxv
  %i.cxx = load i64, ptr %i.cxw, align 8          ; 2 uses
  %i.cxy = icmp ult i64 %i.cxx, -1970324836974592
  br i1 %i.cxy, label %bb.nw, label %.critedge2683, !prof !60

bb.nw:                                            ; preds = %bb.nv
  %i.cxz = bitcast i64 %i.cxx to double
  %i.cya = fptoui double %i.cxs to i64            ; 2 uses
  %i.cyb = shl i64 %i.cya, 1
  %i.cyc = ashr exact i64 %i.cyb, 1
  %i.cyd = sitofp i64 %i.cyc to double
  %i.cye = fcmp une double %i.cxs, %i.cyd
  %i.cyf = trunc i64 %i.cya to i32
  br i1 %i.cye, label %bb.nx, label %_ZN6hermes15truncateToInt32Ed.exit3014

bb.nx:                                            ; preds = %bb.nw
  %i.cyg = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.cxs) #10
  %.pre3942 = load i8, ptr %i.cxt, align 1, !tbaa !81
  %.phi.trans.insert3943 = zext i8 %.pre3942 to i64
  %.phi.trans.insert3944 = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.phi.trans.insert3943
  %.pre3945 = load double, ptr %.phi.trans.insert3944, align 8, !tbaa !69
  br label %_ZN6hermes15truncateToInt32Ed.exit3014

_ZN6hermes15truncateToInt32Ed.exit3014:           ; preds = %bb.nx, %bb.nw
  %i.cyh = phi double [ %i.cxz, %bb.nw ], [ %.pre3945, %bb.nx ] ; 3 uses
  %.1.i3012 = phi i32 [ %i.cyf, %bb.nw ], [ %i.cyg, %bb.nx ]
  %i.cyi = fptoui double %i.cyh to i64            ; 2 uses
  %i.cyj = shl i64 %i.cyi, 1
  %i.cyk = ashr exact i64 %i.cyj, 1
  %i.cyl = sitofp i64 %i.cyk to double
  %i.cym = fcmp une double %i.cyh, %i.cyl
  %i.cyn = trunc i64 %i.cyi to i32
  br i1 %i.cym, label %bb.ny, label %_ZN6hermes15truncateToInt32Ed.exit3017

bb.ny:                                            ; preds = %_ZN6hermes15truncateToInt32Ed.exit3014
  %i.cyo = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.cyh) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit3017

_ZN6hermes15truncateToInt32Ed.exit3017:           ; preds = %_ZN6hermes15truncateToInt32Ed.exit3014, %bb.ny
  %.1.i3015 = phi i32 [ %i.cyn, %_ZN6hermes15truncateToInt32Ed.exit3014 ], [ %i.cyo, %bb.ny ]
  %i.cyp = and i32 %.1.i3015, %.1.i3012
  %i.cyq = sitofp i32 %i.cyp to double
  %i.cyr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.cys = load i8, ptr %i.cyr, align 1, !tbaa !81
  %i.cyt = zext i8 %i.cys to i64
  %i.cyu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cyt
  store double %i.cyq, ptr %i.cyu, align 8, !tbaa !69
  %i.cyv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2683:                                    ; preds = %bb.nu, %bb.nv
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.cyw = load i8, ptr %i.cxm, align 1, !tbaa !81
  %i.cyx = zext i8 %i.cyw to i64
  %i.cyy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.cyx
  %i.cyz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.cza = load i8, ptr %i.cyz, align 1, !tbaa !81
  %i.czb = zext i8 %i.cza to i64
  %i.czc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.czb
  %i.czd = call { i32, i64 } @_ZN6hermes2vm17doBitOperSlowPathITnDaXadL_ZNS0_8doBitAndEiiEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.cyy, ptr %i.czc) #10 ; 2 uses
  %i.cze = extractvalue { i32, i64 } %i.czd, 0
  %i.czf = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.czg = icmp eq i32 %i.cze, 0
  br i1 %i.czg, label %.loopexitthread-pre-split.loopexit4189, label %bb.nz, !prof !65

bb.nz:                                            ; preds = %.critedge2683
  %i.czh = extractvalue { i32, i64 } %i.czd, 1
  %i.czi = getelementptr inbounds nuw i8, ptr %i.czf, i64 1
  %i.czj = load i8, ptr %i.czi, align 1, !tbaa !81
  %i.czk = zext i8 %i.czj to i64
  %i.czl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.czk
  store i64 %i.czh, ptr %i.czl, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.czm = getelementptr inbounds nuw i8, ptr %i.czf, i64 4
  br label %.backedge.backedge

bb.oa:                                            ; preds = %.backedge
  %i.czn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.czo = load i8, ptr %i.czn, align 1, !tbaa !81
  %i.czp = zext i8 %i.czo to i64
  %i.czq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.czp
  %i.czr = load i64, ptr %i.czq, align 8          ; 2 uses
  %i.czs = icmp ult i64 %i.czr, -1970324836974592
  %i.czt = bitcast i64 %i.czr to double           ; 3 uses
  br i1 %i.czs, label %bb.ob, label %.critedge2685, !prof !60

bb.ob:                                            ; preds = %bb.oa
  %i.czu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.czv = load i8, ptr %i.czu, align 1, !tbaa !81
  %i.czw = zext i8 %i.czv to i64
  %i.czx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.czw
  %i.czy = load i64, ptr %i.czx, align 8          ; 2 uses
  %i.czz = icmp ult i64 %i.czy, -1970324836974592
  br i1 %i.czz, label %bb.oc, label %.critedge2685, !prof !60

bb.oc:                                            ; preds = %bb.ob
  %i.daa = bitcast i64 %i.czy to double
  %i.dab = fptoui double %i.czt to i64            ; 2 uses
  %i.dac = shl i64 %i.dab, 1
  %i.dad = ashr exact i64 %i.dac, 1
  %i.dae = sitofp i64 %i.dad to double
  %i.daf = fcmp une double %i.czt, %i.dae
  %i.dag = trunc i64 %i.dab to i32
  br i1 %i.daf, label %bb.od, label %_ZN6hermes15truncateToInt32Ed.exit3022

bb.od:                                            ; preds = %bb.oc
  %i.dah = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.czt) #10
  %.pre3934 = load i8, ptr %i.czu, align 1, !tbaa !81
  %.phi.trans.insert3935 = zext i8 %.pre3934 to i64
  %.phi.trans.insert3936 = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.phi.trans.insert3935
  %.pre3937 = load double, ptr %.phi.trans.insert3936, align 8, !tbaa !69
  br label %_ZN6hermes15truncateToInt32Ed.exit3022

_ZN6hermes15truncateToInt32Ed.exit3022:           ; preds = %bb.od, %bb.oc
  %i.dai = phi double [ %i.daa, %bb.oc ], [ %.pre3937, %bb.od ] ; 3 uses
  %.1.i3020 = phi i32 [ %i.dag, %bb.oc ], [ %i.dah, %bb.od ]
  %i.daj = fptoui double %i.dai to i64            ; 2 uses
  %i.dak = shl i64 %i.daj, 1
  %i.dal = ashr exact i64 %i.dak, 1
  %i.dam = sitofp i64 %i.dal to double
  %i.dan = fcmp une double %i.dai, %i.dam
  %i.dao = trunc i64 %i.daj to i32
  br i1 %i.dan, label %bb.oe, label %_ZN6hermes15truncateToInt32Ed.exit3025

bb.oe:                                            ; preds = %_ZN6hermes15truncateToInt32Ed.exit3022
  %i.dap = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dai) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit3025

_ZN6hermes15truncateToInt32Ed.exit3025:           ; preds = %_ZN6hermes15truncateToInt32Ed.exit3022, %bb.oe
  %.1.i3023 = phi i32 [ %i.dao, %_ZN6hermes15truncateToInt32Ed.exit3022 ], [ %i.dap, %bb.oe ]
  %i.daq = or i32 %.1.i3023, %.1.i3020
  %i.dar = sitofp i32 %i.daq to double
  %i.das = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dat = load i8, ptr %i.das, align 1, !tbaa !81
  %i.dau = zext i8 %i.dat to i64
  %i.dav = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dau
  store double %i.dar, ptr %i.dav, align 8, !tbaa !69
  %i.daw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2685:                                    ; preds = %bb.oa, %bb.ob
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dax = load i8, ptr %i.czn, align 1, !tbaa !81
  %i.day = zext i8 %i.dax to i64
  %i.daz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.day
  %i.dba = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dbb = load i8, ptr %i.dba, align 1, !tbaa !81
  %i.dbc = zext i8 %i.dbb to i64
  %i.dbd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dbc
  %i.dbe = call { i32, i64 } @_ZN6hermes2vm17doBitOperSlowPathITnDaXadL_ZNS0_7doBitOrEiiEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.daz, ptr %i.dbd) #10 ; 2 uses
  %i.dbf = extractvalue { i32, i64 } %i.dbe, 0
  %i.dbg = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.dbh = icmp eq i32 %i.dbf, 0
  br i1 %i.dbh, label %.loopexitthread-pre-split.loopexit4189, label %bb.of, !prof !65

bb.of:                                            ; preds = %.critedge2685
  %i.dbi = extractvalue { i32, i64 } %i.dbe, 1
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.dbg, i64 1
  %i.dbk = load i8, ptr %i.dbj, align 1, !tbaa !81
  %i.dbl = zext i8 %i.dbk to i64
  %i.dbm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dbl
  store i64 %i.dbi, ptr %i.dbm, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dbn = getelementptr inbounds nuw i8, ptr %i.dbg, i64 4
  br label %.backedge.backedge

bb.og:                                            ; preds = %.backedge
  %i.dbo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dbp = load i8, ptr %i.dbo, align 1, !tbaa !81
  %i.dbq = zext i8 %i.dbp to i64
  %i.dbr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dbq
  %i.dbs = load i64, ptr %i.dbr, align 8          ; 2 uses
  %i.dbt = icmp ult i64 %i.dbs, -1970324836974592
  %i.dbu = bitcast i64 %i.dbs to double           ; 3 uses
  br i1 %i.dbt, label %bb.oh, label %.critedge2687, !prof !60

bb.oh:                                            ; preds = %bb.og
  %i.dbv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.dbw = load i8, ptr %i.dbv, align 1, !tbaa !81
  %i.dbx = zext i8 %i.dbw to i64
  %i.dby = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dbx
  %i.dbz = load i64, ptr %i.dby, align 8          ; 2 uses
  %i.dca = icmp ult i64 %i.dbz, -1970324836974592
  br i1 %i.dca, label %bb.oi, label %.critedge2687, !prof !60

bb.oi:                                            ; preds = %bb.oh
  %i.dcb = bitcast i64 %i.dbz to double
  %i.dcc = fptoui double %i.dbu to i64            ; 2 uses
  %i.dcd = shl i64 %i.dcc, 1
  %i.dce = ashr exact i64 %i.dcd, 1
  %i.dcf = sitofp i64 %i.dce to double
  %i.dcg = fcmp une double %i.dbu, %i.dcf
  %i.dch = trunc i64 %i.dcc to i32
  br i1 %i.dcg, label %bb.oj, label %_ZN6hermes15truncateToInt32Ed.exit3030

bb.oj:                                            ; preds = %bb.oi
  %i.dci = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dbu) #10
  %.pre3938 = load i8, ptr %i.dbv, align 1, !tbaa !81
  %.phi.trans.insert3939 = zext i8 %.pre3938 to i64
  %.phi.trans.insert3940 = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.phi.trans.insert3939
  %.pre3941 = load double, ptr %.phi.trans.insert3940, align 8, !tbaa !69
  br label %_ZN6hermes15truncateToInt32Ed.exit3030

_ZN6hermes15truncateToInt32Ed.exit3030:           ; preds = %bb.oj, %bb.oi
  %i.dcj = phi double [ %i.dcb, %bb.oi ], [ %.pre3941, %bb.oj ] ; 3 uses
  %.1.i3028 = phi i32 [ %i.dch, %bb.oi ], [ %i.dci, %bb.oj ]
  %i.dck = fptoui double %i.dcj to i64            ; 2 uses
  %i.dcl = shl i64 %i.dck, 1
  %i.dcm = ashr exact i64 %i.dcl, 1
  %i.dcn = sitofp i64 %i.dcm to double
  %i.dco = fcmp une double %i.dcj, %i.dcn
  %i.dcp = trunc i64 %i.dck to i32
  br i1 %i.dco, label %bb.ok, label %_ZN6hermes15truncateToInt32Ed.exit3033

bb.ok:                                            ; preds = %_ZN6hermes15truncateToInt32Ed.exit3030
  %i.dcq = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dcj) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit3033

_ZN6hermes15truncateToInt32Ed.exit3033:           ; preds = %_ZN6hermes15truncateToInt32Ed.exit3030, %bb.ok
  %.1.i3031 = phi i32 [ %i.dcp, %_ZN6hermes15truncateToInt32Ed.exit3030 ], [ %i.dcq, %bb.ok ]
  %i.dcr = xor i32 %.1.i3031, %.1.i3028
  %i.dcs = sitofp i32 %i.dcr to double
  %i.dct = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dcu = load i8, ptr %i.dct, align 1, !tbaa !81
  %i.dcv = zext i8 %i.dcu to i64
  %i.dcw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dcv
  store double %i.dcs, ptr %i.dcw, align 8, !tbaa !69
  %i.dcx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2687:                                    ; preds = %bb.og, %bb.oh
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dcy = load i8, ptr %i.dbo, align 1, !tbaa !81
  %i.dcz = zext i8 %i.dcy to i64
  %i.dda = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dcz
  %i.ddb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ddc = load i8, ptr %i.ddb, align 1, !tbaa !81
  %i.ddd = zext i8 %i.ddc to i64
  %i.dde = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ddd
  %i.ddf = call { i32, i64 } @_ZN6hermes2vm17doBitOperSlowPathITnDaXadL_ZNS0_8doBitXorEiiEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dda, ptr %i.dde) #10 ; 2 uses
  %i.ddg = extractvalue { i32, i64 } %i.ddf, 0
  %i.ddh = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.ddi = icmp eq i32 %i.ddg, 0
  br i1 %i.ddi, label %.loopexitthread-pre-split.loopexit4189, label %bb.ol, !prof !65

bb.ol:                                            ; preds = %.critedge2687
  %i.ddj = extractvalue { i32, i64 } %i.ddf, 1
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.ddh, i64 1
  %i.ddl = load i8, ptr %i.ddk, align 1, !tbaa !81
  %i.ddm = zext i8 %i.ddl to i64
  %i.ddn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ddm
  store i64 %i.ddj, ptr %i.ddn, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.ddh, i64 4
  br label %.backedge.backedge

bb.om:                                            ; preds = %.backedge
  %i.ddp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.ddq = load i8, ptr %i.ddp, align 1, !tbaa !81
  %i.ddr = zext i8 %i.ddq to i64
  %i.dds = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ddr
  %i.ddt = load i64, ptr %i.dds, align 8          ; 2 uses
  %i.ddu = icmp ult i64 %i.ddt, -1970324836974592
  %i.ddv = bitcast i64 %i.ddt to double           ; 3 uses
  br i1 %i.ddu, label %bb.on, label %.critedge2689, !prof !60

bb.on:                                            ; preds = %bb.om
  %i.ddw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.ddx = load i8, ptr %i.ddw, align 1, !tbaa !81
  %i.ddy = zext i8 %i.ddx to i64
  %i.ddz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ddy
  %i.dea = load i64, ptr %i.ddz, align 8          ; 2 uses
  %i.deb = icmp ult i64 %i.dea, -1970324836974592
  br i1 %i.deb, label %bb.oo, label %.critedge2689, !prof !60

bb.oo:                                            ; preds = %bb.on
  %i.dec = bitcast i64 %i.dea to double
  %i.ded = fptoui double %i.ddv to i64            ; 2 uses
  %i.dee = shl i64 %i.ded, 1
  %i.def = ashr exact i64 %i.dee, 1
  %i.deg = sitofp i64 %i.def to double
  %i.deh = fcmp une double %i.ddv, %i.deg
  %i.dei = trunc i64 %i.ded to i32
  br i1 %i.deh, label %bb.op, label %_ZN6hermes15truncateToInt32Ed.exit3038

bb.op:                                            ; preds = %bb.oo
  %i.dej = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.ddv) #10
  %.pre3954 = load i8, ptr %i.ddw, align 1, !tbaa !81
  %.phi.trans.insert3955 = zext i8 %.pre3954 to i64
  %.phi.trans.insert3956 = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.phi.trans.insert3955
  %.pre3957 = load double, ptr %.phi.trans.insert3956, align 8, !tbaa !69
  br label %_ZN6hermes15truncateToInt32Ed.exit3038

_ZN6hermes15truncateToInt32Ed.exit3038:           ; preds = %bb.op, %bb.oo
  %i.dek = phi double [ %i.dec, %bb.oo ], [ %.pre3957, %bb.op ] ; 3 uses
  %.1.i3036 = phi i32 [ %i.dei, %bb.oo ], [ %i.dej, %bb.op ]
  %i.del = fptoui double %i.dek to i64            ; 2 uses
  %i.dem = shl i64 %i.del, 1
  %i.den = ashr exact i64 %i.dem, 1
  %i.deo = sitofp i64 %i.den to double
  %i.dep = fcmp une double %i.dek, %i.deo
  %i.deq = trunc i64 %i.del to i32
  br i1 %i.dep, label %bb.oq, label %_ZN6hermes15truncateToInt32Ed.exit3041

bb.oq:                                            ; preds = %_ZN6hermes15truncateToInt32Ed.exit3038
  %i.der = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dek) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit3041

_ZN6hermes15truncateToInt32Ed.exit3041:           ; preds = %_ZN6hermes15truncateToInt32Ed.exit3038, %bb.oq
  %.1.i3039 = phi i32 [ %i.deq, %_ZN6hermes15truncateToInt32Ed.exit3038 ], [ %i.der, %bb.oq ]
  %i.des = and i32 %.1.i3039, 31
  %i.det = shl i32 %.1.i3036, %i.des
  %i.deu = sitofp i32 %i.det to double
  %i.dev = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dew = load i8, ptr %i.dev, align 1, !tbaa !81
  %i.dex = zext i8 %i.dew to i64
  %i.dey = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dex
  store double %i.deu, ptr %i.dey, align 8, !tbaa !69
  %i.dez = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2689:                                    ; preds = %bb.om, %bb.on
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dfa = load i8, ptr %i.ddp, align 1, !tbaa !81
  %i.dfb = zext i8 %i.dfa to i64
  %i.dfc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dfb
  %i.dfd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dfe = load i8, ptr %i.dfd, align 1, !tbaa !81
  %i.dff = zext i8 %i.dfe to i64
  %i.dfg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dff
  %i.dfh = call { i32, i64 } @_ZN6hermes2vm19doShiftOperSlowPathITnDaXadL_ZNS0_8doLShiftEjjEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dfc, ptr %i.dfg) #10 ; 2 uses
  %i.dfi = extractvalue { i32, i64 } %i.dfh, 0
  %i.dfj = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.dfk = icmp eq i32 %i.dfi, 0
  br i1 %i.dfk, label %.loopexitthread-pre-split.loopexit4189, label %bb.or, !prof !65

bb.or:                                            ; preds = %.critedge2689
  %i.dfl = extractvalue { i32, i64 } %i.dfh, 1
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.dfj, i64 1
  %i.dfn = load i8, ptr %i.dfm, align 1, !tbaa !81
  %i.dfo = zext i8 %i.dfn to i64
  %i.dfp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dfo
  store i64 %i.dfl, ptr %i.dfp, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfj, i64 4
  br label %.backedge.backedge

bb.os:                                            ; preds = %.backedge
  %i.dfr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dfs = load i8, ptr %i.dfr, align 1, !tbaa !81
  %i.dft = zext i8 %i.dfs to i64
  %i.dfu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dft
  %i.dfv = load i64, ptr %i.dfu, align 8          ; 2 uses
  %i.dfw = icmp ult i64 %i.dfv, -1970324836974592
  %i.dfx = bitcast i64 %i.dfv to double           ; 3 uses
  br i1 %i.dfw, label %bb.ot, label %.critedge2691, !prof !60

bb.ot:                                            ; preds = %bb.os
  %i.dfy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.dfz = load i8, ptr %i.dfy, align 1, !tbaa !81
  %i.dga = zext i8 %i.dfz to i64
  %i.dgb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dga
  %i.dgc = load i64, ptr %i.dgb, align 8          ; 2 uses
  %i.dgd = icmp ult i64 %i.dgc, -1970324836974592
  br i1 %i.dgd, label %bb.ou, label %.critedge2691, !prof !60

bb.ou:                                            ; preds = %bb.ot
  %i.dge = bitcast i64 %i.dgc to double
  %i.dgf = fptoui double %i.dfx to i64            ; 2 uses
  %i.dgg = shl i64 %i.dgf, 1
  %i.dgh = ashr exact i64 %i.dgg, 1
  %i.dgi = sitofp i64 %i.dgh to double
  %i.dgj = fcmp une double %i.dfx, %i.dgi
  %i.dgk = trunc i64 %i.dgf to i32
  br i1 %i.dgj, label %bb.ov, label %_ZN6hermes15truncateToInt32Ed.exit3046

bb.ov:                                            ; preds = %bb.ou
  %i.dgl = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dfx) #10
  %.pre3950 = load i8, ptr %i.dfy, align 1, !tbaa !81
  %.phi.trans.insert3951 = zext i8 %.pre3950 to i64
  %.phi.trans.insert3952 = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.phi.trans.insert3951
  %.pre3953 = load double, ptr %.phi.trans.insert3952, align 8, !tbaa !69
  br label %_ZN6hermes15truncateToInt32Ed.exit3046

_ZN6hermes15truncateToInt32Ed.exit3046:           ; preds = %bb.ov, %bb.ou
  %i.dgm = phi double [ %i.dge, %bb.ou ], [ %.pre3953, %bb.ov ] ; 3 uses
  %.1.i3044 = phi i32 [ %i.dgk, %bb.ou ], [ %i.dgl, %bb.ov ]
  %i.dgn = fptoui double %i.dgm to i64            ; 2 uses
  %i.dgo = shl i64 %i.dgn, 1
  %i.dgp = ashr exact i64 %i.dgo, 1
  %i.dgq = sitofp i64 %i.dgp to double
  %i.dgr = fcmp une double %i.dgm, %i.dgq
  %i.dgs = trunc i64 %i.dgn to i32
  br i1 %i.dgr, label %bb.ow, label %_ZN6hermes15truncateToInt32Ed.exit3049

bb.ow:                                            ; preds = %_ZN6hermes15truncateToInt32Ed.exit3046
  %i.dgt = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dgm) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit3049

_ZN6hermes15truncateToInt32Ed.exit3049:           ; preds = %_ZN6hermes15truncateToInt32Ed.exit3046, %bb.ow
  %.1.i3047 = phi i32 [ %i.dgs, %_ZN6hermes15truncateToInt32Ed.exit3046 ], [ %i.dgt, %bb.ow ]
  %i.dgu = and i32 %.1.i3047, 31
  %i.dgv = ashr i32 %.1.i3044, %i.dgu
  %i.dgw = sitofp i32 %i.dgv to double
  %i.dgx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dgy = load i8, ptr %i.dgx, align 1, !tbaa !81
  %i.dgz = zext i8 %i.dgy to i64
  %i.dha = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dgz
  store double %i.dgw, ptr %i.dha, align 8, !tbaa !69
  %i.dhb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2691:                                    ; preds = %bb.os, %bb.ot
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dhc = load i8, ptr %i.dfr, align 1, !tbaa !81
  %i.dhd = zext i8 %i.dhc to i64
  %i.dhe = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dhd
  %i.dhf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dhg = load i8, ptr %i.dhf, align 1, !tbaa !81
  %i.dhh = zext i8 %i.dhg to i64
  %i.dhi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dhh
  %i.dhj = call { i32, i64 } @_ZN6hermes2vm19doShiftOperSlowPathITnDaXadL_ZNS0_8doRShiftEijEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dhe, ptr %i.dhi) #10 ; 2 uses
  %i.dhk = extractvalue { i32, i64 } %i.dhj, 0
  %i.dhl = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.dhm = icmp eq i32 %i.dhk, 0
  br i1 %i.dhm, label %.loopexitthread-pre-split.loopexit4189, label %bb.ox, !prof !65

bb.ox:                                            ; preds = %.critedge2691
  %i.dhn = extractvalue { i32, i64 } %i.dhj, 1
  %i.dho = getelementptr inbounds nuw i8, ptr %i.dhl, i64 1
  %i.dhp = load i8, ptr %i.dho, align 1, !tbaa !81
  %i.dhq = zext i8 %i.dhp to i64
  %i.dhr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dhq
  store i64 %i.dhn, ptr %i.dhr, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dhl, i64 4
  br label %.backedge.backedge

bb.oy:                                            ; preds = %.backedge
  %i.dht = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dhu = load i8, ptr %i.dht, align 1, !tbaa !81
  %i.dhv = zext i8 %i.dhu to i64
  %i.dhw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dhv
  %i.dhx = load i64, ptr %i.dhw, align 8          ; 2 uses
  %i.dhy = icmp ult i64 %i.dhx, -1970324836974592
  %i.dhz = bitcast i64 %i.dhx to double           ; 3 uses
  br i1 %i.dhy, label %bb.oz, label %.critedge2693, !prof !60

bb.oz:                                            ; preds = %bb.oy
  %i.dia = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3 ; 2 uses
  %i.dib = load i8, ptr %i.dia, align 1, !tbaa !81
  %i.dic = zext i8 %i.dib to i64
  %i.did = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dic
  %i.die = load i64, ptr %i.did, align 8          ; 2 uses
  %i.dif = icmp ult i64 %i.die, -1970324836974592
  br i1 %i.dif, label %bb.pa, label %.critedge2693, !prof !60

bb.pa:                                            ; preds = %bb.oz
  %i.dig = bitcast i64 %i.die to double
  %i.dih = fptoui double %i.dhz to i64            ; 2 uses
  %i.dii = shl i64 %i.dih, 1
  %i.dij = ashr exact i64 %i.dii, 1
  %i.dik = sitofp i64 %i.dij to double
  %i.dil = fcmp une double %i.dhz, %i.dik
  %i.dim = trunc i64 %i.dih to i32
  br i1 %i.dil, label %bb.pb, label %_ZN6hermes15truncateToInt32Ed.exit3054

bb.pb:                                            ; preds = %bb.pa
  %i.din = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dhz) #10
  %.pre3946 = load i8, ptr %i.dia, align 1, !tbaa !81
  %.phi.trans.insert3947 = zext i8 %.pre3946 to i64
  %.phi.trans.insert3948 = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %.phi.trans.insert3947
  %.pre3949 = load double, ptr %.phi.trans.insert3948, align 8, !tbaa !69
  br label %_ZN6hermes15truncateToInt32Ed.exit3054

_ZN6hermes15truncateToInt32Ed.exit3054:           ; preds = %bb.pb, %bb.pa
  %i.dio = phi double [ %i.dig, %bb.pa ], [ %.pre3949, %bb.pb ] ; 3 uses
  %.1.i3052 = phi i32 [ %i.dim, %bb.pa ], [ %i.din, %bb.pb ]
  %i.dip = fptoui double %i.dio to i64            ; 2 uses
  %i.diq = shl i64 %i.dip, 1
  %i.dir = ashr exact i64 %i.diq, 1
  %i.dis = sitofp i64 %i.dir to double
  %i.dit = fcmp une double %i.dio, %i.dis
  %i.diu = trunc i64 %i.dip to i32
  br i1 %i.dit, label %bb.pc, label %_ZN6hermes15truncateToInt32Ed.exit3057

bb.pc:                                            ; preds = %_ZN6hermes15truncateToInt32Ed.exit3054
  %i.div = call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.dio) #10
  br label %_ZN6hermes15truncateToInt32Ed.exit3057

_ZN6hermes15truncateToInt32Ed.exit3057:           ; preds = %_ZN6hermes15truncateToInt32Ed.exit3054, %bb.pc
  %.1.i3055 = phi i32 [ %i.diu, %_ZN6hermes15truncateToInt32Ed.exit3054 ], [ %i.div, %bb.pc ]
  %i.diw = and i32 %.1.i3055, 31
  %i.dix = lshr i32 %.1.i3052, %i.diw
  %i.diy = uitofp i32 %i.dix to double
  %i.diz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dja = load i8, ptr %i.diz, align 1, !tbaa !81
  %i.djb = zext i8 %i.dja to i64
  %i.djc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.djb
  store double %i.diy, ptr %i.djc, align 8, !tbaa !69
  %i.djd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2693:                                    ; preds = %bb.oy, %bb.oz
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dje = load i8, ptr %i.dht, align 1, !tbaa !81
  %i.djf = zext i8 %i.dje to i64
  %i.djg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.djf
  %i.djh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dji = load i8, ptr %i.djh, align 1, !tbaa !81
  %i.djj = zext i8 %i.dji to i64
  %i.djk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.djj
  %i.djl = call { i32, i64 } @_ZN6hermes2vm19doShiftOperSlowPathITnDaXadL_ZNS0_9doURshiftEjjEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleIS3_EESA_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.djg, ptr %i.djk) #10 ; 2 uses
  %i.djm = extractvalue { i32, i64 } %i.djl, 0
  %i.djn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %i.djo = icmp eq i32 %i.djm, 0
  br i1 %i.djo, label %.loopexitthread-pre-split.loopexit4189, label %bb.pd, !prof !65

bb.pd:                                            ; preds = %.critedge2693
  %i.djp = extractvalue { i32, i64 } %i.djl, 1
  %i.djq = getelementptr inbounds nuw i8, ptr %i.djn, i64 1
  %i.djr = load i8, ptr %i.djq, align 1, !tbaa !81
  %i.djs = zext i8 %i.djr to i64
  %i.djt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.djs
  store i64 %i.djp, ptr %i.djt, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dju = getelementptr inbounds nuw i8, ptr %i.djn, i64 4
  br label %.backedge.backedge

bb.pe:                                            ; preds = %.backedge
  %i.djv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.djw = load i8, ptr %i.djv, align 1, !tbaa !81
  %i.djx = zext i8 %i.djw to i64
  %i.djy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.djx
  %i.djz = load i64, ptr %i.djy, align 8          ; 2 uses
  %i.dka = icmp ult i64 %i.djz, -1970324836974592
  %i.dkb = bitcast i64 %i.djz to double
  br i1 %i.dka, label %bb.pf, label %.critedge2695, !prof !60

bb.pf:                                            ; preds = %bb.pe
  %i.dkc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dkd = load i8, ptr %i.dkc, align 1, !tbaa !81
  %i.dke = zext i8 %i.dkd to i64
  %i.dkf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dke
  %i.dkg = load i64, ptr %i.dkf, align 8          ; 2 uses
  %i.dkh = icmp ult i64 %i.dkg, -1970324836974592
  br i1 %i.dkh, label %bb.pg, label %.critedge2695, !prof !60

bb.pg:                                            ; preds = %bb.pf
  %i.dki = bitcast i64 %i.dkg to double
  %i.dkj = fcmp olt double %i.dkb, %i.dki
  %i.dkk = zext i1 %i.dkj to i64
  %i.dkl = or disjoint i64 %i.dkk, -1407374883553280
  %i.dkm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dkn = load i8, ptr %i.dkm, align 1, !tbaa !81
  %i.dko = zext i8 %i.dkn to i64
  %i.dkp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dko
  store i64 %i.dkl, ptr %i.dkp, align 8, !tbaa !69
  %i.dkq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2695:                                    ; preds = %bb.pe, %bb.pf
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dkr = load i8, ptr %i.djv, align 1, !tbaa !81
  %i.dks = zext i8 %i.dkr to i64
  %i.dkt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dks
  %i.dku = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dkv = load i8, ptr %i.dku, align 1, !tbaa !81
  %i.dkw = zext i8 %i.dkv to i64
  %i.dkx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dkw
  %i.dky = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dkt, ptr %i.dkx) #10 ; 2 uses
  %i.dkz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3757 = and i32 %i.dky, 255
  %i.dla = icmp eq i32 %.mask3757, 0
  br i1 %i.dla, label %.loopexitthread-pre-split.loopexit4189, label %bb.ph

bb.ph:                                            ; preds = %.critedge2695
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dlb = lshr i32 %i.dky, 8
  %.lobit3758 = and i32 %i.dlb, 1
  %i.dlc = zext nneg i32 %.lobit3758 to i64
  %i.dld = or disjoint i64 %i.dlc, -1407374883553280
  %i.dle = getelementptr inbounds nuw i8, ptr %i.dkz, i64 1
  %i.dlf = load i8, ptr %i.dle, align 1, !tbaa !81
  %i.dlg = zext i8 %i.dlf to i64
  %i.dlh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dlg
  store i64 %i.dld, ptr %i.dlh, align 8, !tbaa !69
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dkz, i64 4
  br label %.backedge.backedge

bb.pi:                                            ; preds = %.backedge
  %i.dlj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dlk = load i8, ptr %i.dlj, align 1, !tbaa !81
  %i.dll = zext i8 %i.dlk to i64
  %i.dlm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dll
  %i.dln = load i64, ptr %i.dlm, align 8          ; 2 uses
  %i.dlo = icmp ult i64 %i.dln, -1970324836974592
  %i.dlp = bitcast i64 %i.dln to double
  br i1 %i.dlo, label %bb.pj, label %.critedge2697, !prof !60

bb.pj:                                            ; preds = %bb.pi
  %i.dlq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dlr = load i8, ptr %i.dlq, align 1, !tbaa !81
  %i.dls = zext i8 %i.dlr to i64
  %i.dlt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dls
  %i.dlu = load i64, ptr %i.dlt, align 8          ; 2 uses
  %i.dlv = icmp ult i64 %i.dlu, -1970324836974592
  br i1 %i.dlv, label %bb.pk, label %.critedge2697, !prof !60

bb.pk:                                            ; preds = %bb.pj
  %i.dlw = bitcast i64 %i.dlu to double
  %i.dlx = fcmp ole double %i.dlp, %i.dlw
  %i.dly = zext i1 %i.dlx to i64
  %i.dlz = or disjoint i64 %i.dly, -1407374883553280
  %i.dma = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dmb = load i8, ptr %i.dma, align 1, !tbaa !81
  %i.dmc = zext i8 %i.dmb to i64
  %i.dmd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmc
  store i64 %i.dlz, ptr %i.dmd, align 8, !tbaa !69
  %i.dme = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2697:                                    ; preds = %bb.pi, %bb.pj
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dmf = load i8, ptr %i.dlj, align 1, !tbaa !81
  %i.dmg = zext i8 %i.dmf to i64
  %i.dmh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmg
  %i.dmi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dmj = load i8, ptr %i.dmi, align 1, !tbaa !81
  %i.dmk = zext i8 %i.dmj to i64
  %i.dml = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmk
  %i.dmm = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dmh, ptr %i.dml) #10 ; 2 uses
  %i.dmn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3755 = and i32 %i.dmm, 255
  %i.dmo = icmp eq i32 %.mask3755, 0
  br i1 %i.dmo, label %.loopexitthread-pre-split.loopexit4189, label %bb.pl

bb.pl:                                            ; preds = %.critedge2697
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dmp = lshr i32 %i.dmm, 8
  %.lobit3756 = and i32 %i.dmp, 1
  %i.dmq = zext nneg i32 %.lobit3756 to i64
  %i.dmr = or disjoint i64 %i.dmq, -1407374883553280
  %i.dms = getelementptr inbounds nuw i8, ptr %i.dmn, i64 1
  %i.dmt = load i8, ptr %i.dms, align 1, !tbaa !81
  %i.dmu = zext i8 %i.dmt to i64
  %i.dmv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmu
  store i64 %i.dmr, ptr %i.dmv, align 8, !tbaa !69
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmn, i64 4
  br label %.backedge.backedge

bb.pm:                                            ; preds = %.backedge
  %i.dmx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dmy = load i8, ptr %i.dmx, align 1, !tbaa !81
  %i.dmz = zext i8 %i.dmy to i64
  %i.dna = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dmz
  %i.dnb = load i64, ptr %i.dna, align 8          ; 2 uses
  %i.dnc = icmp ult i64 %i.dnb, -1970324836974592
  %i.dnd = bitcast i64 %i.dnb to double
  br i1 %i.dnc, label %bb.pn, label %.critedge2699, !prof !60

bb.pn:                                            ; preds = %bb.pm
  %i.dne = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dnf = load i8, ptr %i.dne, align 1, !tbaa !81
  %i.dng = zext i8 %i.dnf to i64
  %i.dnh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dng
  %i.dni = load i64, ptr %i.dnh, align 8          ; 2 uses
  %i.dnj = icmp ult i64 %i.dni, -1970324836974592
  br i1 %i.dnj, label %bb.po, label %.critedge2699, !prof !60

bb.po:                                            ; preds = %bb.pn
  %i.dnk = bitcast i64 %i.dni to double
  %i.dnl = fcmp ogt double %i.dnd, %i.dnk
  %i.dnm = zext i1 %i.dnl to i64
  %i.dnn = or disjoint i64 %i.dnm, -1407374883553280
  %i.dno = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dnp = load i8, ptr %i.dno, align 1, !tbaa !81
  %i.dnq = zext i8 %i.dnp to i64
  %i.dnr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dnq
  store i64 %i.dnn, ptr %i.dnr, align 8, !tbaa !69
  %i.dns = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2699:                                    ; preds = %bb.pm, %bb.pn
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dnt = load i8, ptr %i.dmx, align 1, !tbaa !81
  %i.dnu = zext i8 %i.dnt to i64
  %i.dnv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dnu
  %i.dnw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dnx = load i8, ptr %i.dnw, align 1, !tbaa !81
  %i.dny = zext i8 %i.dnx to i64
  %i.dnz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dny
  %i.doa = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dnv, ptr %i.dnz) #10 ; 2 uses
  %i.dob = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3753 = and i32 %i.doa, 255
  %i.doc = icmp eq i32 %.mask3753, 0
  br i1 %i.doc, label %.loopexitthread-pre-split.loopexit4189, label %bb.pp

bb.pp:                                            ; preds = %.critedge2699
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dod = lshr i32 %i.doa, 8
  %.lobit3754 = and i32 %i.dod, 1
  %i.doe = zext nneg i32 %.lobit3754 to i64
  %i.dof = or disjoint i64 %i.doe, -1407374883553280
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dob, i64 1
  %i.doh = load i8, ptr %i.dog, align 1, !tbaa !81
  %i.doi = zext i8 %i.doh to i64
  %i.doj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.doi
  store i64 %i.dof, ptr %i.doj, align 8, !tbaa !69
  %i.dok = getelementptr inbounds nuw i8, ptr %i.dob, i64 4
  br label %.backedge.backedge

bb.pq:                                            ; preds = %.backedge
  %i.dol = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dom = load i8, ptr %i.dol, align 1, !tbaa !81
  %i.don = zext i8 %i.dom to i64
  %i.doo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.don
  %i.dop = load i64, ptr %i.doo, align 8          ; 2 uses
  %i.doq = icmp ult i64 %i.dop, -1970324836974592
  %i.dor = bitcast i64 %i.dop to double
  br i1 %i.doq, label %bb.pr, label %.critedge2701, !prof !60

bb.pr:                                            ; preds = %bb.pq
  %i.dos = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dot = load i8, ptr %i.dos, align 1, !tbaa !81
  %i.dou = zext i8 %i.dot to i64
  %i.dov = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dou
  %i.dow = load i64, ptr %i.dov, align 8          ; 2 uses
  %i.dox = icmp ult i64 %i.dow, -1970324836974592
  br i1 %i.dox, label %bb.ps, label %.critedge2701, !prof !60

bb.ps:                                            ; preds = %bb.pr
  %i.doy = bitcast i64 %i.dow to double
  %i.doz = fcmp oge double %i.dor, %i.doy
  %i.dpa = zext i1 %i.doz to i64
  %i.dpb = or disjoint i64 %i.dpa, -1407374883553280
  %i.dpc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dpd = load i8, ptr %i.dpc, align 1, !tbaa !81
  %i.dpe = zext i8 %i.dpd to i64
  %i.dpf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dpe
  store i64 %i.dpb, ptr %i.dpf, align 8, !tbaa !69
  %i.dpg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2701:                                    ; preds = %bb.pq, %bb.pr
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dph = load i8, ptr %i.dol, align 1, !tbaa !81
  %i.dpi = zext i8 %i.dph to i64
  %i.dpj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dpi
  %i.dpk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dpl = load i8, ptr %i.dpk, align 1, !tbaa !81
  %i.dpm = zext i8 %i.dpl to i64
  %i.dpn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dpm
  %i.dpo = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dpj, ptr %i.dpn) #10 ; 2 uses
  %i.dpp = load ptr, ptr %i.a, align 8, !tbaa !108 ; 3 uses
  %.mask3751 = and i32 %i.dpo, 255
  %i.dpq = icmp eq i32 %.mask3751, 0
  br i1 %i.dpq, label %.loopexitthread-pre-split.loopexit4189, label %bb.pt

bb.pt:                                            ; preds = %.critedge2701
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dpr = lshr i32 %i.dpo, 8
  %.lobit3752 = and i32 %i.dpr, 1
  %i.dps = zext nneg i32 %.lobit3752 to i64
  %i.dpt = or disjoint i64 %i.dps, -1407374883553280
  %i.dpu = getelementptr inbounds nuw i8, ptr %i.dpp, i64 1
  %i.dpv = load i8, ptr %i.dpu, align 1, !tbaa !81
  %i.dpw = zext i8 %i.dpv to i64
  %i.dpx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dpw
  store i64 %i.dpt, ptr %i.dpx, align 8, !tbaa !69
  %i.dpy = getelementptr inbounds nuw i8, ptr %i.dpp, i64 4
  br label %.backedge.backedge

bb.pu:                                            ; preds = %.backedge
  %i.dpz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dqa = load i8, ptr %i.dpz, align 1, !tbaa !81
  %i.dqb = zext i8 %i.dqa to i64
  %i.dqc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dqb
  %i.dqd = load i64, ptr %i.dqc, align 8, !tbaa !69
  %i.dqe = icmp ult i64 %i.dqd, -1970324836974592
  br i1 %i.dqe, label %bb.pv, label %.critedge2703, !prof !60

bb.pv:                                            ; preds = %bb.pu
  %i.dqf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dqg = load i8, ptr %i.dqf, align 1, !tbaa !81
  %i.dqh = zext i8 %i.dqg to i64
  %i.dqi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dqh
  %i.dqj = load i64, ptr %i.dqi, align 8, !tbaa !69
  %i.dqk = icmp ult i64 %i.dqj, -1970324836974592
  br i1 %i.dqk, label %bb.pw, label %.critedge2703, !prof !60

bb.pw:                                            ; preds = %bb.pv, %.backedge
  %i.dql = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.dqm = load i8, ptr %i.dql, align 1, !tbaa !81
  %i.dqn = zext i8 %i.dqm to i64
  %i.dqo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dqn
  %i.dqp = load double, ptr %i.dqo, align 8, !tbaa !69
  %i.dqq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dqr = load i8, ptr %i.dqq, align 1, !tbaa !81
  %i.dqs = zext i8 %i.dqr to i64
  %i.dqt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dqs
  %i.dqu = load double, ptr %i.dqt, align 8, !tbaa !69
  %i.dqv = fcmp olt double %i.dqp, %i.dqu
  br i1 %i.dqv, label %bb.px, label %bb.py

bb.px:                                            ; preds = %bb.pw
  %i.dqw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dqx = load i8, ptr %i.dqw, align 1, !tbaa !81
  %i.dqy = sext i8 %i.dqx to i64
  %i.dqz = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.dqy
  br label %.backedge.backedge

bb.py:                                            ; preds = %bb.pw
  %i.dra = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2703:                                    ; preds = %bb.pu, %bb.pv
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.drb = load i8, ptr %i.dpz, align 1, !tbaa !81
  %i.drc = zext i8 %i.drb to i64
  %i.drd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.drc
  %i.dre = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.drf = load i8, ptr %i.dre, align 1, !tbaa !81
  %i.drg = zext i8 %i.drf to i64
  %i.drh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.drg
  %i.dri = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.drd, ptr %i.drh) #10 ; 2 uses
  %i.drj = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3719 = and i32 %i.dri, 255
  %i.drk = icmp eq i32 %.mask3719, 0
  br i1 %i.drk, label %.loopexitthread-pre-split.loopexit4189, label %bb.pz

bb.pz:                                            ; preds = %.critedge2703
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.drl = and i32 %i.dri, 256
  %.not3720 = icmp eq i32 %i.drl, 0
  br i1 %.not3720, label %bb.qb, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.drm = getelementptr inbounds nuw i8, ptr %i.drj, i64 1
  %i.drn = load i8, ptr %i.drm, align 1, !tbaa !81
  %i.dro = sext i8 %i.drn to i64
  %i.drp = getelementptr inbounds i8, ptr %i.drj, i64 %i.dro
  br label %.backedge.backedge

bb.qb:                                            ; preds = %bb.pz
  %i.drq = getelementptr inbounds nuw i8, ptr %i.drj, i64 4
  br label %.backedge.backedge

bb.qc:                                            ; preds = %.backedge
  %i.drr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5 ; 2 uses
  %i.drs = load i8, ptr %i.drr, align 1, !tbaa !81
  %i.drt = zext i8 %i.drs to i64
  %i.dru = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.drt
  %i.drv = load i64, ptr %i.dru, align 8, !tbaa !69
  %i.drw = icmp ult i64 %i.drv, -1970324836974592
  br i1 %i.drw, label %bb.qd, label %.critedge2705, !prof !60

bb.qd:                                            ; preds = %bb.qc
  %i.drx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dry = load i8, ptr %i.drx, align 1, !tbaa !81
  %i.drz = zext i8 %i.dry to i64
  %i.dsa = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.drz
  %i.dsb = load i64, ptr %i.dsa, align 8, !tbaa !69
  %i.dsc = icmp ult i64 %i.dsb, -1970324836974592
  br i1 %i.dsc, label %bb.qe, label %.critedge2705, !prof !60

bb.qe:                                            ; preds = %bb.qd, %.backedge
  %i.dsd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.dse = load i8, ptr %i.dsd, align 1, !tbaa !81
  %i.dsf = zext i8 %i.dse to i64
  %i.dsg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dsf
  %i.dsh = load double, ptr %i.dsg, align 8, !tbaa !69
  %i.dsi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dsj = load i8, ptr %i.dsi, align 1, !tbaa !81
  %i.dsk = zext i8 %i.dsj to i64
  %i.dsl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dsk
  %i.dsm = load double, ptr %i.dsl, align 8, !tbaa !69
  %i.dsn = fcmp olt double %i.dsh, %i.dsm
  br i1 %i.dsn, label %bb.qf, label %bb.qg

bb.qf:                                            ; preds = %bb.qe
  %i.dso = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dsp = load i32, ptr %i.dso, align 1, !tbaa !81
  %i.dsq = sext i32 %i.dsp to i64
  %i.dsr = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.dsq
  br label %.backedge.backedge

bb.qg:                                            ; preds = %bb.qe
  %i.dss = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

.critedge2705:                                    ; preds = %bb.qc, %bb.qd
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dst = load i8, ptr %i.drr, align 1, !tbaa !81
  %i.dsu = zext i8 %i.dst to i64
  %i.dsv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dsu
  %i.dsw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dsx = load i8, ptr %i.dsw, align 1, !tbaa !81
  %i.dsy = zext i8 %i.dsx to i64
  %i.dsz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dsy
  %i.dta = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dsv, ptr %i.dsz) #10 ; 2 uses
  %i.dtb = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3717 = and i32 %i.dta, 255
  %i.dtc = icmp eq i32 %.mask3717, 0
  br i1 %i.dtc, label %.loopexitthread-pre-split.loopexit4189, label %bb.qh

bb.qh:                                            ; preds = %.critedge2705
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dtd = and i32 %i.dta, 256
  %.not3718 = icmp eq i32 %i.dtd, 0
  br i1 %.not3718, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dtb, i64 1
  %i.dtf = load i32, ptr %i.dte, align 1, !tbaa !81
  %i.dtg = sext i32 %i.dtf to i64
  %i.dth = getelementptr inbounds i8, ptr %i.dtb, i64 %i.dtg
  br label %.backedge.backedge

bb.qj:                                            ; preds = %bb.qh
  %i.dti = getelementptr inbounds nuw i8, ptr %i.dtb, i64 7
  br label %.backedge.backedge

bb.qk:                                            ; preds = %.backedge
  %i.dtj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dtk = load i8, ptr %i.dtj, align 1, !tbaa !81
  %i.dtl = zext i8 %i.dtk to i64
  %i.dtm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dtl
  %i.dtn = load i64, ptr %i.dtm, align 8, !tbaa !69
  %i.dto = icmp ult i64 %i.dtn, -1970324836974592
  br i1 %i.dto, label %bb.ql, label %.critedge2707, !prof !60

bb.ql:                                            ; preds = %bb.qk
  %i.dtp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dtq = load i8, ptr %i.dtp, align 1, !tbaa !81
  %i.dtr = zext i8 %i.dtq to i64
  %i.dts = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dtr
  %i.dtt = load i64, ptr %i.dts, align 8, !tbaa !69
  %i.dtu = icmp ult i64 %i.dtt, -1970324836974592
  br i1 %i.dtu, label %bb.qm, label %.critedge2707, !prof !60

bb.qm:                                            ; preds = %bb.ql, %.backedge
  %i.dtv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.dtw = load i8, ptr %i.dtv, align 1, !tbaa !81
  %i.dtx = zext i8 %i.dtw to i64
  %i.dty = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dtx
  %i.dtz = load double, ptr %i.dty, align 8, !tbaa !69
  %i.dua = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dub = load i8, ptr %i.dua, align 1, !tbaa !81
  %i.duc = zext i8 %i.dub to i64
  %i.dud = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.duc
  %i.due = load double, ptr %i.dud, align 8, !tbaa !69
  %i.duf = fcmp olt double %i.dtz, %i.due
  br i1 %i.duf, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  %i.dug = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.qo:                                            ; preds = %bb.qm
  %i.duh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dui = load i8, ptr %i.duh, align 1, !tbaa !81
  %i.duj = sext i8 %i.dui to i64
  %i.duk = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.duj
  br label %.backedge.backedge

.critedge2707:                                    ; preds = %bb.qk, %bb.ql
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dul = load i8, ptr %i.dtj, align 1, !tbaa !81
  %i.dum = zext i8 %i.dul to i64
  %i.dun = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dum
  %i.duo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dup = load i8, ptr %i.duo, align 1, !tbaa !81
  %i.duq = zext i8 %i.dup to i64
  %i.dur = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.duq
  %i.dus = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dun, ptr %i.dur) #10 ; 2 uses
  %i.dut = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3715 = and i32 %i.dus, 255
  %i.duu = icmp eq i32 %.mask3715, 0
  br i1 %i.duu, label %.loopexitthread-pre-split.loopexit4189, label %bb.qp

bb.qp:                                            ; preds = %.critedge2707
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.duv = and i32 %i.dus, 256
  %.not3716 = icmp eq i32 %i.duv, 0
  br i1 %.not3716, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.duw = getelementptr inbounds nuw i8, ptr %i.dut, i64 4
  br label %.backedge.backedge

bb.qr:                                            ; preds = %bb.qp
  %i.dux = getelementptr inbounds nuw i8, ptr %i.dut, i64 1
  %i.duy = load i8, ptr %i.dux, align 1, !tbaa !81
  %i.duz = sext i8 %i.duy to i64
  %i.dva = getelementptr inbounds i8, ptr %i.dut, i64 %i.duz
  br label %.backedge.backedge

bb.qs:                                            ; preds = %.backedge
  %i.dvb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5 ; 2 uses
  %i.dvc = load i8, ptr %i.dvb, align 1, !tbaa !81
  %i.dvd = zext i8 %i.dvc to i64
  %i.dve = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dvd
  %i.dvf = load i64, ptr %i.dve, align 8, !tbaa !69
  %i.dvg = icmp ult i64 %i.dvf, -1970324836974592
  br i1 %i.dvg, label %bb.qt, label %.critedge2709, !prof !60

bb.qt:                                            ; preds = %bb.qs
  %i.dvh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dvi = load i8, ptr %i.dvh, align 1, !tbaa !81
  %i.dvj = zext i8 %i.dvi to i64
  %i.dvk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dvj
  %i.dvl = load i64, ptr %i.dvk, align 8, !tbaa !69
  %i.dvm = icmp ult i64 %i.dvl, -1970324836974592
  br i1 %i.dvm, label %bb.qu, label %.critedge2709, !prof !60

bb.qu:                                            ; preds = %bb.qt, %.backedge
  %i.dvn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.dvo = load i8, ptr %i.dvn, align 1, !tbaa !81
  %i.dvp = zext i8 %i.dvo to i64
  %i.dvq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dvp
  %i.dvr = load double, ptr %i.dvq, align 8, !tbaa !69
  %i.dvs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dvt = load i8, ptr %i.dvs, align 1, !tbaa !81
  %i.dvu = zext i8 %i.dvt to i64
  %i.dvv = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dvu
  %i.dvw = load double, ptr %i.dvv, align 8, !tbaa !69
  %i.dvx = fcmp olt double %i.dvr, %i.dvw
  br i1 %i.dvx, label %bb.qv, label %bb.qw

bb.qv:                                            ; preds = %bb.qu
  %i.dvy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

bb.qw:                                            ; preds = %bb.qu
  %i.dvz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dwa = load i32, ptr %i.dvz, align 1, !tbaa !81
  %i.dwb = sext i32 %i.dwa to i64
  %i.dwc = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.dwb
  br label %.backedge.backedge

.critedge2709:                                    ; preds = %bb.qs, %bb.qt
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dwd = load i8, ptr %i.dvb, align 1, !tbaa !81
  %i.dwe = zext i8 %i.dwd to i64
  %i.dwf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dwe
  %i.dwg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dwh = load i8, ptr %i.dwg, align 1, !tbaa !81
  %i.dwi = zext i8 %i.dwh to i64
  %i.dwj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dwi
  %i.dwk = call i32 @_ZN6hermes2vm10lessOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dwf, ptr %i.dwj) #10 ; 2 uses
  %i.dwl = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3713 = and i32 %i.dwk, 255
  %i.dwm = icmp eq i32 %.mask3713, 0
  br i1 %i.dwm, label %.loopexitthread-pre-split.loopexit4189, label %bb.qx

bb.qx:                                            ; preds = %.critedge2709
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dwn = and i32 %i.dwk, 256
  %.not3714 = icmp eq i32 %i.dwn, 0
  br i1 %.not3714, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwl, i64 7
  br label %.backedge.backedge

bb.qz:                                            ; preds = %bb.qx
  %i.dwp = getelementptr inbounds nuw i8, ptr %i.dwl, i64 1
  %i.dwq = load i32, ptr %i.dwp, align 1, !tbaa !81
  %i.dwr = sext i32 %i.dwq to i64
  %i.dws = getelementptr inbounds i8, ptr %i.dwl, i64 %i.dwr
  br label %.backedge.backedge

bb.ra:                                            ; preds = %.backedge
  %i.dwt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.dwu = load i8, ptr %i.dwt, align 1, !tbaa !81
  %i.dwv = zext i8 %i.dwu to i64
  %i.dww = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dwv
  %i.dwx = load i64, ptr %i.dww, align 8, !tbaa !69
  %i.dwy = icmp ult i64 %i.dwx, -1970324836974592
  br i1 %i.dwy, label %bb.rb, label %.critedge2711, !prof !60

bb.rb:                                            ; preds = %bb.ra
  %i.dwz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dxa = load i8, ptr %i.dwz, align 1, !tbaa !81
  %i.dxb = zext i8 %i.dxa to i64
  %i.dxc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxb
  %i.dxd = load i64, ptr %i.dxc, align 8, !tbaa !69
  %i.dxe = icmp ult i64 %i.dxd, -1970324836974592
  br i1 %i.dxe, label %bb.rc, label %.critedge2711, !prof !60

bb.rc:                                            ; preds = %bb.rb, %.backedge
  %i.dxf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.dxg = load i8, ptr %i.dxf, align 1, !tbaa !81
  %i.dxh = zext i8 %i.dxg to i64
  %i.dxi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxh
  %i.dxj = load double, ptr %i.dxi, align 8, !tbaa !69
  %i.dxk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dxl = load i8, ptr %i.dxk, align 1, !tbaa !81
  %i.dxm = zext i8 %i.dxl to i64
  %i.dxn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxm
  %i.dxo = load double, ptr %i.dxn, align 8, !tbaa !69
  %i.dxp = fcmp ugt double %i.dxj, %i.dxo
  br i1 %i.dxp, label %bb.re, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.dxq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dxr = load i8, ptr %i.dxq, align 1, !tbaa !81
  %i.dxs = sext i8 %i.dxr to i64
  %i.dxt = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.dxs
  br label %.backedge.backedge

bb.re:                                            ; preds = %bb.rc
  %i.dxu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2711:                                    ; preds = %bb.ra, %bb.rb
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dxv = load i8, ptr %i.dwt, align 1, !tbaa !81
  %i.dxw = zext i8 %i.dxv to i64
  %i.dxx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dxw
  %i.dxy = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.dxz = load i8, ptr %i.dxy, align 1, !tbaa !81
  %i.dya = zext i8 %i.dxz to i64
  %i.dyb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dya
  %i.dyc = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dxx, ptr %i.dyb) #10 ; 2 uses
  %i.dyd = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3711 = and i32 %i.dyc, 255
  %i.dye = icmp eq i32 %.mask3711, 0
  br i1 %i.dye, label %.loopexitthread-pre-split.loopexit4189, label %bb.rf

bb.rf:                                            ; preds = %.critedge2711
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dyf = and i32 %i.dyc, 256
  %.not3712 = icmp eq i32 %i.dyf, 0
  br i1 %.not3712, label %bb.rh, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.dyg = getelementptr inbounds nuw i8, ptr %i.dyd, i64 1
  %i.dyh = load i8, ptr %i.dyg, align 1, !tbaa !81
  %i.dyi = sext i8 %i.dyh to i64
  %i.dyj = getelementptr inbounds i8, ptr %i.dyd, i64 %i.dyi
  br label %.backedge.backedge

bb.rh:                                            ; preds = %bb.rf
  %i.dyk = getelementptr inbounds nuw i8, ptr %i.dyd, i64 4
  br label %.backedge.backedge

bb.ri:                                            ; preds = %.backedge
  %i.dyl = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5 ; 2 uses
  %i.dym = load i8, ptr %i.dyl, align 1, !tbaa !81
  %i.dyn = zext i8 %i.dym to i64
  %i.dyo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dyn
  %i.dyp = load i64, ptr %i.dyo, align 8, !tbaa !69
  %i.dyq = icmp ult i64 %i.dyp, -1970324836974592
  br i1 %i.dyq, label %bb.rj, label %.critedge2713, !prof !60

bb.rj:                                            ; preds = %bb.ri
  %i.dyr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dys = load i8, ptr %i.dyr, align 1, !tbaa !81
  %i.dyt = zext i8 %i.dys to i64
  %i.dyu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dyt
  %i.dyv = load i64, ptr %i.dyu, align 8, !tbaa !69
  %i.dyw = icmp ult i64 %i.dyv, -1970324836974592
  br i1 %i.dyw, label %bb.rk, label %.critedge2713, !prof !60

bb.rk:                                            ; preds = %bb.rj, %.backedge
  %i.dyx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.dyy = load i8, ptr %i.dyx, align 1, !tbaa !81
  %i.dyz = zext i8 %i.dyy to i64
  %i.dza = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dyz
  %i.dzb = load double, ptr %i.dza, align 8, !tbaa !69
  %i.dzc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dzd = load i8, ptr %i.dzc, align 1, !tbaa !81
  %i.dze = zext i8 %i.dzd to i64
  %i.dzf = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dze
  %i.dzg = load double, ptr %i.dzf, align 8, !tbaa !69
  %i.dzh = fcmp ugt double %i.dzb, %i.dzg
  br i1 %i.dzh, label %bb.rm, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.dzi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.dzj = load i32, ptr %i.dzi, align 1, !tbaa !81
  %i.dzk = sext i32 %i.dzj to i64
  %i.dzl = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.dzk
  br label %.backedge.backedge

bb.rm:                                            ; preds = %bb.rk
  %i.dzm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

.critedge2713:                                    ; preds = %bb.ri, %bb.rj
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.dzn = load i8, ptr %i.dyl, align 1, !tbaa !81
  %i.dzo = zext i8 %i.dzn to i64
  %i.dzp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dzo
  %i.dzq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.dzr = load i8, ptr %i.dzq, align 1, !tbaa !81
  %i.dzs = zext i8 %i.dzr to i64
  %i.dzt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.dzs
  %i.dzu = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.dzp, ptr %i.dzt) #10 ; 2 uses
  %i.dzv = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3709 = and i32 %i.dzu, 255
  %i.dzw = icmp eq i32 %.mask3709, 0
  br i1 %i.dzw, label %.loopexitthread-pre-split.loopexit4189, label %bb.rn

bb.rn:                                            ; preds = %.critedge2713
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.dzx = and i32 %i.dzu, 256
  %.not3710 = icmp eq i32 %i.dzx, 0
  br i1 %.not3710, label %bb.rp, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.dzy = getelementptr inbounds nuw i8, ptr %i.dzv, i64 1
  %i.dzz = load i32, ptr %i.dzy, align 1, !tbaa !81
  %i.eaa = sext i32 %i.dzz to i64
  %i.eab = getelementptr inbounds i8, ptr %i.dzv, i64 %i.eaa
  br label %.backedge.backedge

bb.rp:                                            ; preds = %bb.rn
  %i.eac = getelementptr inbounds nuw i8, ptr %i.dzv, i64 7
  br label %.backedge.backedge

bb.rq:                                            ; preds = %.backedge
  %i.ead = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.eae = load i8, ptr %i.ead, align 1, !tbaa !81
  %i.eaf = zext i8 %i.eae to i64
  %i.eag = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eaf
  %i.eah = load i64, ptr %i.eag, align 8, !tbaa !69
  %i.eai = icmp ult i64 %i.eah, -1970324836974592
  br i1 %i.eai, label %bb.rr, label %.critedge2715, !prof !60

bb.rr:                                            ; preds = %bb.rq
  %i.eaj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eak = load i8, ptr %i.eaj, align 1, !tbaa !81
  %i.eal = zext i8 %i.eak to i64
  %i.eam = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eal
  %i.ean = load i64, ptr %i.eam, align 8, !tbaa !69
  %i.eao = icmp ult i64 %i.ean, -1970324836974592
  br i1 %i.eao, label %bb.rs, label %.critedge2715, !prof !60

bb.rs:                                            ; preds = %bb.rr, %.backedge
  %i.eap = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.eaq = load i8, ptr %i.eap, align 1, !tbaa !81
  %i.ear = zext i8 %i.eaq to i64
  %i.eas = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ear
  %i.eat = load double, ptr %i.eas, align 8, !tbaa !69
  %i.eau = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eav = load i8, ptr %i.eau, align 1, !tbaa !81
  %i.eaw = zext i8 %i.eav to i64
  %i.eax = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eaw
  %i.eay = load double, ptr %i.eax, align 8, !tbaa !69
  %i.eaz = fcmp ugt double %i.eat, %i.eay
  br i1 %i.eaz, label %bb.ru, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.eba = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.ru:                                            ; preds = %bb.rs
  %i.ebb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ebc = load i8, ptr %i.ebb, align 1, !tbaa !81
  %i.ebd = sext i8 %i.ebc to i64
  %i.ebe = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.ebd
  br label %.backedge.backedge

.critedge2715:                                    ; preds = %bb.rq, %bb.rr
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ebf = load i8, ptr %i.ead, align 1, !tbaa !81
  %i.ebg = zext i8 %i.ebf to i64
  %i.ebh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ebg
  %i.ebi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ebj = load i8, ptr %i.ebi, align 1, !tbaa !81
  %i.ebk = zext i8 %i.ebj to i64
  %i.ebl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ebk
  %i.ebm = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ebh, ptr %i.ebl) #10 ; 2 uses
  %i.ebn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3707 = and i32 %i.ebm, 255
  %i.ebo = icmp eq i32 %.mask3707, 0
  br i1 %i.ebo, label %.loopexitthread-pre-split.loopexit4189, label %bb.rv

bb.rv:                                            ; preds = %.critedge2715
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ebp = and i32 %i.ebm, 256
  %.not3708 = icmp eq i32 %i.ebp, 0
  br i1 %.not3708, label %bb.rx, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.ebn, i64 4
  br label %.backedge.backedge

bb.rx:                                            ; preds = %bb.rv
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.ebn, i64 1
  %i.ebs = load i8, ptr %i.ebr, align 1, !tbaa !81
  %i.ebt = sext i8 %i.ebs to i64
  %i.ebu = getelementptr inbounds i8, ptr %i.ebn, i64 %i.ebt
  br label %.backedge.backedge

bb.ry:                                            ; preds = %.backedge
  %i.ebv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5 ; 2 uses
  %i.ebw = load i8, ptr %i.ebv, align 1, !tbaa !81
  %i.ebx = zext i8 %i.ebw to i64
  %i.eby = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ebx
  %i.ebz = load i64, ptr %i.eby, align 8, !tbaa !69
  %i.eca = icmp ult i64 %i.ebz, -1970324836974592
  br i1 %i.eca, label %bb.rz, label %.critedge2717, !prof !60

bb.rz:                                            ; preds = %bb.ry
  %i.ecb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.ecc = load i8, ptr %i.ecb, align 1, !tbaa !81
  %i.ecd = zext i8 %i.ecc to i64
  %i.ece = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ecd
  %i.ecf = load i64, ptr %i.ece, align 8, !tbaa !69
  %i.ecg = icmp ult i64 %i.ecf, -1970324836974592
  br i1 %i.ecg, label %bb.sa, label %.critedge2717, !prof !60

bb.sa:                                            ; preds = %bb.rz, %.backedge
  %i.ech = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.eci = load i8, ptr %i.ech, align 1, !tbaa !81
  %i.ecj = zext i8 %i.eci to i64
  %i.eck = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ecj
  %i.ecl = load double, ptr %i.eck, align 8, !tbaa !69
  %i.ecm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.ecn = load i8, ptr %i.ecm, align 1, !tbaa !81
  %i.eco = zext i8 %i.ecn to i64
  %i.ecp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eco
  %i.ecq = load double, ptr %i.ecp, align 8, !tbaa !69
  %i.ecr = fcmp ugt double %i.ecl, %i.ecq
  br i1 %i.ecr, label %bb.sc, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.ecs = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

bb.sc:                                            ; preds = %bb.sa
  %i.ect = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ecu = load i32, ptr %i.ect, align 1, !tbaa !81
  %i.ecv = sext i32 %i.ecu to i64
  %i.ecw = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.ecv
  br label %.backedge.backedge

.critedge2717:                                    ; preds = %bb.ry, %bb.rz
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ecx = load i8, ptr %i.ebv, align 1, !tbaa !81
  %i.ecy = zext i8 %i.ecx to i64
  %i.ecz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ecy
  %i.eda = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.edb = load i8, ptr %i.eda, align 1, !tbaa !81
  %i.edc = zext i8 %i.edb to i64
  %i.edd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.edc
  %i.ede = call i32 @_ZN6hermes2vm15lessEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ecz, ptr %i.edd) #10 ; 2 uses
  %i.edf = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3705 = and i32 %i.ede, 255
  %i.edg = icmp eq i32 %.mask3705, 0
  br i1 %i.edg, label %.loopexitthread-pre-split.loopexit4189, label %bb.sd

bb.sd:                                            ; preds = %.critedge2717
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.edh = and i32 %i.ede, 256
  %.not3706 = icmp eq i32 %i.edh, 0
  br i1 %.not3706, label %bb.sf, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.edi = getelementptr inbounds nuw i8, ptr %i.edf, i64 7
  br label %.backedge.backedge

bb.sf:                                            ; preds = %bb.sd
  %i.edj = getelementptr inbounds nuw i8, ptr %i.edf, i64 1
  %i.edk = load i32, ptr %i.edj, align 1, !tbaa !81
  %i.edl = sext i32 %i.edk to i64
  %i.edm = getelementptr inbounds i8, ptr %i.edf, i64 %i.edl
  br label %.backedge.backedge

bb.sg:                                            ; preds = %.backedge
  %i.edn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.edo = load i8, ptr %i.edn, align 1, !tbaa !81
  %i.edp = zext i8 %i.edo to i64
  %i.edq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.edp
  %i.edr = load i64, ptr %i.edq, align 8, !tbaa !69
  %i.eds = icmp ult i64 %i.edr, -1970324836974592
  br i1 %i.eds, label %bb.sh, label %.critedge2719, !prof !60

bb.sh:                                            ; preds = %bb.sg
  %i.edt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.edu = load i8, ptr %i.edt, align 1, !tbaa !81
  %i.edv = zext i8 %i.edu to i64
  %i.edw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.edv
  %i.edx = load i64, ptr %i.edw, align 8, !tbaa !69
  %i.edy = icmp ult i64 %i.edx, -1970324836974592
  br i1 %i.edy, label %bb.si, label %.critedge2719, !prof !60

bb.si:                                            ; preds = %bb.sh, %.backedge
  %i.edz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.eea = load i8, ptr %i.edz, align 1, !tbaa !81
  %i.eeb = zext i8 %i.eea to i64
  %i.eec = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eeb
  %i.eed = load double, ptr %i.eec, align 8, !tbaa !69
  %i.eee = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eef = load i8, ptr %i.eee, align 1, !tbaa !81
  %i.eeg = zext i8 %i.eef to i64
  %i.eeh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eeg
  %i.eei = load double, ptr %i.eeh, align 8, !tbaa !69
  %i.eej = fcmp ogt double %i.eed, %i.eei
  br i1 %i.eej, label %bb.sj, label %bb.sk

bb.sj:                                            ; preds = %bb.si
  %i.eek = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.eel = load i8, ptr %i.eek, align 1, !tbaa !81
  %i.eem = sext i8 %i.eel to i64
  %i.een = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.eem
  br label %.backedge.backedge

bb.sk:                                            ; preds = %bb.si
  %i.eeo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2719:                                    ; preds = %bb.sg, %bb.sh
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eep = load i8, ptr %i.edn, align 1, !tbaa !81
  %i.eeq = zext i8 %i.eep to i64
  %i.eer = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eeq
  %i.ees = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eet = load i8, ptr %i.ees, align 1, !tbaa !81
  %i.eeu = zext i8 %i.eet to i64
  %i.eev = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eeu
  %i.eew = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eer, ptr %i.eev) #10 ; 2 uses
  %i.eex = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3703 = and i32 %i.eew, 255
  %i.eey = icmp eq i32 %.mask3703, 0
  br i1 %i.eey, label %.loopexitthread-pre-split.loopexit4189, label %bb.sl

bb.sl:                                            ; preds = %.critedge2719
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eez = and i32 %i.eew, 256
  %.not3704 = icmp eq i32 %i.eez, 0
  br i1 %.not3704, label %bb.sn, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  %i.efa = getelementptr inbounds nuw i8, ptr %i.eex, i64 1
  %i.efb = load i8, ptr %i.efa, align 1, !tbaa !81
  %i.efc = sext i8 %i.efb to i64
  %i.efd = getelementptr inbounds i8, ptr %i.eex, i64 %i.efc
  br label %.backedge.backedge

bb.sn:                                            ; preds = %bb.sl
  %i.efe = getelementptr inbounds nuw i8, ptr %i.eex, i64 4
  br label %.backedge.backedge

bb.so:                                            ; preds = %.backedge
  %i.eff = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5 ; 2 uses
  %i.efg = load i8, ptr %i.eff, align 1, !tbaa !81
  %i.efh = zext i8 %i.efg to i64
  %i.efi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.efh
  %i.efj = load i64, ptr %i.efi, align 8, !tbaa !69
  %i.efk = icmp ult i64 %i.efj, -1970324836974592
  br i1 %i.efk, label %bb.sp, label %.critedge2721, !prof !60

bb.sp:                                            ; preds = %bb.so
  %i.efl = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.efm = load i8, ptr %i.efl, align 1, !tbaa !81
  %i.efn = zext i8 %i.efm to i64
  %i.efo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.efn
  %i.efp = load i64, ptr %i.efo, align 8, !tbaa !69
  %i.efq = icmp ult i64 %i.efp, -1970324836974592
  br i1 %i.efq, label %bb.sq, label %.critedge2721, !prof !60

bb.sq:                                            ; preds = %bb.sp, %.backedge
  %i.efr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.efs = load i8, ptr %i.efr, align 1, !tbaa !81
  %i.eft = zext i8 %i.efs to i64
  %i.efu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eft
  %i.efv = load double, ptr %i.efu, align 8, !tbaa !69
  %i.efw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.efx = load i8, ptr %i.efw, align 1, !tbaa !81
  %i.efy = zext i8 %i.efx to i64
  %i.efz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.efy
  %i.ega = load double, ptr %i.efz, align 8, !tbaa !69
  %i.egb = fcmp ogt double %i.efv, %i.ega
  br i1 %i.egb, label %bb.sr, label %bb.ss

bb.sr:                                            ; preds = %bb.sq
  %i.egc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.egd = load i32, ptr %i.egc, align 1, !tbaa !81
  %i.ege = sext i32 %i.egd to i64
  %i.egf = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.ege
  br label %.backedge.backedge

bb.ss:                                            ; preds = %bb.sq
  %i.egg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

.critedge2721:                                    ; preds = %bb.so, %bb.sp
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.egh = load i8, ptr %i.eff, align 1, !tbaa !81
  %i.egi = zext i8 %i.egh to i64
  %i.egj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.egi
  %i.egk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.egl = load i8, ptr %i.egk, align 1, !tbaa !81
  %i.egm = zext i8 %i.egl to i64
  %i.egn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.egm
  %i.ego = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.egj, ptr %i.egn) #10 ; 2 uses
  %i.egp = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3701 = and i32 %i.ego, 255
  %i.egq = icmp eq i32 %.mask3701, 0
  br i1 %i.egq, label %.loopexitthread-pre-split.loopexit4189, label %bb.st

bb.st:                                            ; preds = %.critedge2721
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.egr = and i32 %i.ego, 256
  %.not3702 = icmp eq i32 %i.egr, 0
  br i1 %.not3702, label %bb.sv, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.egs = getelementptr inbounds nuw i8, ptr %i.egp, i64 1
  %i.egt = load i32, ptr %i.egs, align 1, !tbaa !81
  %i.egu = sext i32 %i.egt to i64
  %i.egv = getelementptr inbounds i8, ptr %i.egp, i64 %i.egu
  br label %.backedge.backedge

bb.sv:                                            ; preds = %bb.st
  %i.egw = getelementptr inbounds nuw i8, ptr %i.egp, i64 7
  br label %.backedge.backedge

bb.sw:                                            ; preds = %.backedge
  %i.egx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.egy = load i8, ptr %i.egx, align 1, !tbaa !81
  %i.egz = zext i8 %i.egy to i64
  %i.eha = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.egz
  %i.ehb = load i64, ptr %i.eha, align 8, !tbaa !69
  %i.ehc = icmp ult i64 %i.ehb, -1970324836974592
  br i1 %i.ehc, label %bb.sx, label %.critedge2723, !prof !60

bb.sx:                                            ; preds = %bb.sw
  %i.ehd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ehe = load i8, ptr %i.ehd, align 1, !tbaa !81
  %i.ehf = zext i8 %i.ehe to i64
  %i.ehg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ehf
  %i.ehh = load i64, ptr %i.ehg, align 8, !tbaa !69
  %i.ehi = icmp ult i64 %i.ehh, -1970324836974592
  br i1 %i.ehi, label %bb.sy, label %.critedge2723, !prof !60

bb.sy:                                            ; preds = %bb.sx, %.backedge
  %i.ehj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.ehk = load i8, ptr %i.ehj, align 1, !tbaa !81
  %i.ehl = zext i8 %i.ehk to i64
  %i.ehm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ehl
  %i.ehn = load double, ptr %i.ehm, align 8, !tbaa !69
  %i.eho = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ehp = load i8, ptr %i.eho, align 1, !tbaa !81
  %i.ehq = zext i8 %i.ehp to i64
  %i.ehr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ehq
  %i.ehs = load double, ptr %i.ehr, align 8, !tbaa !69
  %i.eht = fcmp ogt double %i.ehn, %i.ehs
  br i1 %i.eht, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  %i.ehu = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.ta:                                            ; preds = %bb.sy
  %i.ehv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ehw = load i8, ptr %i.ehv, align 1, !tbaa !81
  %i.ehx = sext i8 %i.ehw to i64
  %i.ehy = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.ehx
  br label %.backedge.backedge

.critedge2723:                                    ; preds = %bb.sw, %bb.sx
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ehz = load i8, ptr %i.egx, align 1, !tbaa !81
  %i.eia = zext i8 %i.ehz to i64
  %i.eib = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eia
  %i.eic = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eid = load i8, ptr %i.eic, align 1, !tbaa !81
  %i.eie = zext i8 %i.eid to i64
  %i.eif = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eie
  %i.eig = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eib, ptr %i.eif) #10 ; 2 uses
  %i.eih = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3699 = and i32 %i.eig, 255
  %i.eii = icmp eq i32 %.mask3699, 0
  br i1 %i.eii, label %.loopexitthread-pre-split.loopexit4189, label %bb.tb

bb.tb:                                            ; preds = %.critedge2723
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eij = and i32 %i.eig, 256
  %.not3700 = icmp eq i32 %i.eij, 0
  br i1 %.not3700, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.eik = getelementptr inbounds nuw i8, ptr %i.eih, i64 4
  br label %.backedge.backedge

bb.td:                                            ; preds = %bb.tb
  %i.eil = getelementptr inbounds nuw i8, ptr %i.eih, i64 1
  %i.eim = load i8, ptr %i.eil, align 1, !tbaa !81
  %i.ein = sext i8 %i.eim to i64
  %i.eio = getelementptr inbounds i8, ptr %i.eih, i64 %i.ein
  br label %.backedge.backedge

bb.te:                                            ; preds = %.backedge
  %i.eip = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5 ; 2 uses
  %i.eiq = load i8, ptr %i.eip, align 1, !tbaa !81
  %i.eir = zext i8 %i.eiq to i64
  %i.eis = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eir
  %i.eit = load i64, ptr %i.eis, align 8, !tbaa !69
  %i.eiu = icmp ult i64 %i.eit, -1970324836974592
  br i1 %i.eiu, label %bb.tf, label %.critedge2725, !prof !60

bb.tf:                                            ; preds = %bb.te
  %i.eiv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.eiw = load i8, ptr %i.eiv, align 1, !tbaa !81
  %i.eix = zext i8 %i.eiw to i64
  %i.eiy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eix
  %i.eiz = load i64, ptr %i.eiy, align 8, !tbaa !69
  %i.eja = icmp ult i64 %i.eiz, -1970324836974592
  br i1 %i.eja, label %bb.tg, label %.critedge2725, !prof !60

bb.tg:                                            ; preds = %bb.tf, %.backedge
  %i.ejb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.ejc = load i8, ptr %i.ejb, align 1, !tbaa !81
  %i.ejd = zext i8 %i.ejc to i64
  %i.eje = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ejd
  %i.ejf = load double, ptr %i.eje, align 8, !tbaa !69
  %i.ejg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.ejh = load i8, ptr %i.ejg, align 1, !tbaa !81
  %i.eji = zext i8 %i.ejh to i64
  %i.ejj = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eji
  %i.ejk = load double, ptr %i.ejj, align 8, !tbaa !69
  %i.ejl = fcmp ogt double %i.ejf, %i.ejk
  br i1 %i.ejl, label %bb.th, label %bb.ti

bb.th:                                            ; preds = %bb.tg
  %i.ejm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

bb.ti:                                            ; preds = %bb.tg
  %i.ejn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.ejo = load i32, ptr %i.ejn, align 1, !tbaa !81
  %i.ejp = sext i32 %i.ejo to i64
  %i.ejq = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.ejp
  br label %.backedge.backedge

.critedge2725:                                    ; preds = %bb.te, %bb.tf
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ejr = load i8, ptr %i.eip, align 1, !tbaa !81
  %i.ejs = zext i8 %i.ejr to i64
  %i.ejt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ejs
  %i.eju = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.ejv = load i8, ptr %i.eju, align 1, !tbaa !81
  %i.ejw = zext i8 %i.ejv to i64
  %i.ejx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ejw
  %i.ejy = call i32 @_ZN6hermes2vm13greaterOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ejt, ptr %i.ejx) #10 ; 2 uses
  %i.ejz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3697 = and i32 %i.ejy, 255
  %i.eka = icmp eq i32 %.mask3697, 0
  br i1 %i.eka, label %.loopexitthread-pre-split.loopexit4189, label %bb.tj

bb.tj:                                            ; preds = %.critedge2725
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ekb = and i32 %i.ejy, 256
  %.not3698 = icmp eq i32 %i.ekb, 0
  br i1 %.not3698, label %bb.tl, label %bb.tk

bb.tk:                                            ; preds = %bb.tj
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ejz, i64 7
  br label %.backedge.backedge

bb.tl:                                            ; preds = %bb.tj
  %i.ekd = getelementptr inbounds nuw i8, ptr %i.ejz, i64 1
  %i.eke = load i32, ptr %i.ekd, align 1, !tbaa !81
  %i.ekf = sext i32 %i.eke to i64
  %i.ekg = getelementptr inbounds i8, ptr %i.ejz, i64 %i.ekf
  br label %.backedge.backedge

bb.tm:                                            ; preds = %.backedge
  %i.ekh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.eki = load i8, ptr %i.ekh, align 1, !tbaa !81
  %i.ekj = zext i8 %i.eki to i64
  %i.ekk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ekj
  %i.ekl = load i64, ptr %i.ekk, align 8, !tbaa !69
  %i.ekm = icmp ult i64 %i.ekl, -1970324836974592
  br i1 %i.ekm, label %bb.tn, label %.critedge2727, !prof !60

bb.tn:                                            ; preds = %bb.tm
  %i.ekn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eko = load i8, ptr %i.ekn, align 1, !tbaa !81
  %i.ekp = zext i8 %i.eko to i64
  %i.ekq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ekp
  %i.ekr = load i64, ptr %i.ekq, align 8, !tbaa !69
  %i.eks = icmp ult i64 %i.ekr, -1970324836974592
  br i1 %i.eks, label %bb.to, label %.critedge2727, !prof !60

bb.to:                                            ; preds = %bb.tn, %.backedge
  %i.ekt = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.eku = load i8, ptr %i.ekt, align 1, !tbaa !81
  %i.ekv = zext i8 %i.eku to i64
  %i.ekw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ekv
  %i.ekx = load double, ptr %i.ekw, align 8, !tbaa !69
  %i.eky = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.ekz = load i8, ptr %i.eky, align 1, !tbaa !81
  %i.ela = zext i8 %i.ekz to i64
  %i.elb = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ela
  %i.elc = load double, ptr %i.elb, align 8, !tbaa !69
  %i.eld = fcmp ult double %i.ekx, %i.elc
  br i1 %i.eld, label %bb.tq, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.ele = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.elf = load i8, ptr %i.ele, align 1, !tbaa !81
  %i.elg = sext i8 %i.elf to i64
  %i.elh = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.elg
  br label %.backedge.backedge

bb.tq:                                            ; preds = %bb.to
  %i.eli = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

.critedge2727:                                    ; preds = %bb.tm, %bb.tn
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.elj = load i8, ptr %i.ekh, align 1, !tbaa !81
  %i.elk = zext i8 %i.elj to i64
  %i.ell = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.elk
  %i.elm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eln = load i8, ptr %i.elm, align 1, !tbaa !81
  %i.elo = zext i8 %i.eln to i64
  %i.elp = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.elo
  %i.elq = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ell, ptr %i.elp) #10 ; 2 uses
  %i.elr = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3695 = and i32 %i.elq, 255
  %i.els = icmp eq i32 %.mask3695, 0
  br i1 %i.els, label %.loopexitthread-pre-split.loopexit4189, label %bb.tr

bb.tr:                                            ; preds = %.critedge2727
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.elt = and i32 %i.elq, 256
  %.not3696 = icmp eq i32 %i.elt, 0
  br i1 %.not3696, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.elu = getelementptr inbounds nuw i8, ptr %i.elr, i64 1
  %i.elv = load i8, ptr %i.elu, align 1, !tbaa !81
  %i.elw = sext i8 %i.elv to i64
  %i.elx = getelementptr inbounds i8, ptr %i.elr, i64 %i.elw
  br label %.backedge.backedge

bb.tt:                                            ; preds = %bb.tr
  %i.ely = getelementptr inbounds nuw i8, ptr %i.elr, i64 4
  br label %.backedge.backedge

bb.tu:                                            ; preds = %.backedge
  %i.elz = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5 ; 2 uses
  %i.ema = load i8, ptr %i.elz, align 1, !tbaa !81
  %i.emb = zext i8 %i.ema to i64
  %i.emc = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.emb
  %i.emd = load i64, ptr %i.emc, align 8, !tbaa !69
  %i.eme = icmp ult i64 %i.emd, -1970324836974592
  br i1 %i.eme, label %bb.tv, label %.critedge2729, !prof !60

bb.tv:                                            ; preds = %bb.tu
  %i.emf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.emg = load i8, ptr %i.emf, align 1, !tbaa !81
  %i.emh = zext i8 %i.emg to i64
  %i.emi = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.emh
  %i.emj = load i64, ptr %i.emi, align 8, !tbaa !69
  %i.emk = icmp ult i64 %i.emj, -1970324836974592
  br i1 %i.emk, label %bb.tw, label %.critedge2729, !prof !60

bb.tw:                                            ; preds = %bb.tv, %.backedge
  %i.eml = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.emm = load i8, ptr %i.eml, align 1, !tbaa !81
  %i.emn = zext i8 %i.emm to i64
  %i.emo = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.emn
  %i.emp = load double, ptr %i.emo, align 8, !tbaa !69
  %i.emq = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.emr = load i8, ptr %i.emq, align 1, !tbaa !81
  %i.ems = zext i8 %i.emr to i64
  %i.emt = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ems
  %i.emu = load double, ptr %i.emt, align 8, !tbaa !69
  %i.emv = fcmp ult double %i.emp, %i.emu
  br i1 %i.emv, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  %i.emw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.emx = load i32, ptr %i.emw, align 1, !tbaa !81
  %i.emy = sext i32 %i.emx to i64
  %i.emz = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.emy
  br label %.backedge.backedge

bb.ty:                                            ; preds = %bb.tw
  %i.ena = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

.critedge2729:                                    ; preds = %bb.tu, %bb.tv
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.enb = load i8, ptr %i.elz, align 1, !tbaa !81
  %i.enc = zext i8 %i.enb to i64
  %i.end = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.enc
  %i.ene = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.enf = load i8, ptr %i.ene, align 1, !tbaa !81
  %i.eng = zext i8 %i.enf to i64
  %i.enh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eng
  %i.eni = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.end, ptr %i.enh) #10 ; 2 uses
  %i.enj = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3693 = and i32 %i.eni, 255
  %i.enk = icmp eq i32 %.mask3693, 0
  br i1 %i.enk, label %.loopexitthread-pre-split.loopexit4189, label %bb.tz

bb.tz:                                            ; preds = %.critedge2729
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.enl = and i32 %i.eni, 256
  %.not3694 = icmp eq i32 %i.enl, 0
  br i1 %.not3694, label %bb.ub, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.enm = getelementptr inbounds nuw i8, ptr %i.enj, i64 1
  %i.enn = load i32, ptr %i.enm, align 1, !tbaa !81
  %i.eno = sext i32 %i.enn to i64
  %i.enp = getelementptr inbounds i8, ptr %i.enj, i64 %i.eno
  br label %.backedge.backedge

bb.ub:                                            ; preds = %bb.tz
  %i.enq = getelementptr inbounds nuw i8, ptr %i.enj, i64 7
  br label %.backedge.backedge

bb.uc:                                            ; preds = %.backedge
  %i.enr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2 ; 2 uses
  %i.ens = load i8, ptr %i.enr, align 1, !tbaa !81
  %i.ent = zext i8 %i.ens to i64
  %i.enu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ent
  %i.env = load i64, ptr %i.enu, align 8, !tbaa !69
  %i.enw = icmp ult i64 %i.env, -1970324836974592
  br i1 %i.enw, label %bb.ud, label %.critedge2731, !prof !60

bb.ud:                                            ; preds = %bb.uc
  %i.enx = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eny = load i8, ptr %i.enx, align 1, !tbaa !81
  %i.enz = zext i8 %i.eny to i64
  %i.eoa = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.enz
  %i.eob = load i64, ptr %i.eoa, align 8, !tbaa !69
  %i.eoc = icmp ult i64 %i.eob, -1970324836974592
  br i1 %i.eoc, label %bb.ue, label %.critedge2731, !prof !60

bb.ue:                                            ; preds = %bb.ud, %.backedge
  %i.eod = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.eoe = load i8, ptr %i.eod, align 1, !tbaa !81
  %i.eof = zext i8 %i.eoe to i64
  %i.eog = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eof
  %i.eoh = load double, ptr %i.eog, align 8, !tbaa !69
  %i.eoi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eoj = load i8, ptr %i.eoi, align 1, !tbaa !81
  %i.eok = zext i8 %i.eoj to i64
  %i.eol = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eok
  %i.eom = load double, ptr %i.eol, align 8, !tbaa !69
  %i.eon = fcmp ult double %i.eoh, %i.eom
  br i1 %i.eon, label %bb.ug, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  %i.eoo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.ug:                                            ; preds = %bb.ue
  %i.eop = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.eoq = load i8, ptr %i.eop, align 1, !tbaa !81
  %i.eor = sext i8 %i.eoq to i64
  %i.eos = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.eor
  br label %.backedge.backedge

.critedge2731:                                    ; preds = %bb.uc, %bb.ud
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eot = load i8, ptr %i.enr, align 1, !tbaa !81
  %i.eou = zext i8 %i.eot to i64
  %i.eov = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eou
  %i.eow = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eox = load i8, ptr %i.eow, align 1, !tbaa !81
  %i.eoy = zext i8 %i.eox to i64
  %i.eoz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eoy
  %i.epa = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eov, ptr %i.eoz) #10 ; 2 uses
  %i.epb = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3691 = and i32 %i.epa, 255
  %i.epc = icmp eq i32 %.mask3691, 0
  br i1 %i.epc, label %.loopexitthread-pre-split.loopexit4189, label %bb.uh

bb.uh:                                            ; preds = %.critedge2731
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.epd = and i32 %i.epa, 256
  %.not3692 = icmp eq i32 %i.epd, 0
  br i1 %.not3692, label %bb.uj, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.epe = getelementptr inbounds nuw i8, ptr %i.epb, i64 4
  br label %.backedge.backedge

bb.uj:                                            ; preds = %bb.uh
  %i.epf = getelementptr inbounds nuw i8, ptr %i.epb, i64 1
  %i.epg = load i8, ptr %i.epf, align 1, !tbaa !81
  %i.eph = sext i8 %i.epg to i64
  %i.epi = getelementptr inbounds i8, ptr %i.epb, i64 %i.eph
  br label %.backedge.backedge

bb.uk:                                            ; preds = %.backedge
  %i.epj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5 ; 2 uses
  %i.epk = load i8, ptr %i.epj, align 1, !tbaa !81
  %i.epl = zext i8 %i.epk to i64
  %i.epm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.epl
  %i.epn = load i64, ptr %i.epm, align 8, !tbaa !69
  %i.epo = icmp ult i64 %i.epn, -1970324836974592
  br i1 %i.epo, label %bb.ul, label %.critedge2733, !prof !60

bb.ul:                                            ; preds = %bb.uk
  %i.epp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.epq = load i8, ptr %i.epp, align 1, !tbaa !81
  %i.epr = zext i8 %i.epq to i64
  %i.eps = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.epr
  %i.ept = load i64, ptr %i.eps, align 8, !tbaa !69
  %i.epu = icmp ult i64 %i.ept, -1970324836974592
  br i1 %i.epu, label %bb.um, label %.critedge2733, !prof !60

bb.um:                                            ; preds = %bb.ul, %.backedge
  %i.epv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.epw = load i8, ptr %i.epv, align 1, !tbaa !81
  %i.epx = zext i8 %i.epw to i64
  %i.epy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.epx
  %i.epz = load double, ptr %i.epy, align 8, !tbaa !69
  %i.eqa = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.eqb = load i8, ptr %i.eqa, align 1, !tbaa !81
  %i.eqc = zext i8 %i.eqb to i64
  %i.eqd = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eqc
  %i.eqe = load double, ptr %i.eqd, align 8, !tbaa !69
  %i.eqf = fcmp ult double %i.epz, %i.eqe
  br i1 %i.eqf, label %bb.uo, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.eqg = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

bb.uo:                                            ; preds = %bb.um
  %i.eqh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.eqi = load i32, ptr %i.eqh, align 1, !tbaa !81
  %i.eqj = sext i32 %i.eqi to i64
  %i.eqk = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.eqj
  br label %.backedge.backedge

.critedge2733:                                    ; preds = %bb.uk, %bb.ul
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eql = load i8, ptr %i.epj, align 1, !tbaa !81
  %i.eqm = zext i8 %i.eql to i64
  %i.eqn = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eqm
  %i.eqo = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.eqp = load i8, ptr %i.eqo, align 1, !tbaa !81
  %i.eqq = zext i8 %i.eqp to i64
  %i.eqr = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eqq
  %i.eqs = call i32 @_ZN6hermes2vm18greaterEqualOp_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eqn, ptr %i.eqr) #10 ; 2 uses
  %i.eqt = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3689 = and i32 %i.eqs, 255
  %i.equ = icmp eq i32 %.mask3689, 0
  br i1 %i.equ, label %.loopexitthread-pre-split.loopexit4189, label %bb.up

bb.up:                                            ; preds = %.critedge2733
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.eqv = and i32 %i.eqs, 256
  %.not3690 = icmp eq i32 %i.eqv, 0
  br i1 %.not3690, label %bb.ur, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.eqw = getelementptr inbounds nuw i8, ptr %i.eqt, i64 7
  br label %.backedge.backedge

bb.ur:                                            ; preds = %bb.up
  %i.eqx = getelementptr inbounds nuw i8, ptr %i.eqt, i64 1
  %i.eqy = load i32, ptr %i.eqx, align 1, !tbaa !81
  %i.eqz = sext i32 %i.eqy to i64
  %i.era = getelementptr inbounds i8, ptr %i.eqt, i64 %i.eqz
  br label %.backedge.backedge

bb.us:                                            ; preds = %.backedge
  %i.erb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.erc = load i8, ptr %i.erb, align 1, !tbaa !81
  %i.erd = zext i8 %i.erc to i64
  %i.ere = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.erd
  %.sroa.023.0.copyload = load i64, ptr %i.ere, align 8, !tbaa !61
  %i.erf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.erg = load i8, ptr %i.erf, align 1, !tbaa !81
  %i.erh = zext i8 %i.erg to i64
  %i.eri = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.erh
  %.sroa.022.0.copyload = load i64, ptr %i.eri, align 8, !tbaa !61
  %i.erj = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.023.0.copyload, i64 %.sroa.022.0.copyload) #10
  br i1 %i.erj, label %bb.ut, label %bb.uu

bb.ut:                                            ; preds = %bb.us
  %i.erk = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.erl = load i8, ptr %i.erk, align 1, !tbaa !81
  %i.erm = sext i8 %i.erl to i64
  %i.ern = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.erm
  br label %.backedge.backedge

bb.uu:                                            ; preds = %bb.us
  %i.ero = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.uv:                                            ; preds = %.backedge
  %i.erp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.erq = load i8, ptr %i.erp, align 1, !tbaa !81
  %i.err = zext i8 %i.erq to i64
  %i.ers = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.err
  %.sroa.021.0.copyload = load i64, ptr %i.ers, align 8, !tbaa !61
  %i.ert = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.eru = load i8, ptr %i.ert, align 1, !tbaa !81
  %i.erv = zext i8 %i.eru to i64
  %i.erw = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.erv
  %.sroa.020.0.copyload = load i64, ptr %i.erw, align 8, !tbaa !61
  %i.erx = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.021.0.copyload, i64 %.sroa.020.0.copyload) #10
  br i1 %i.erx, label %bb.uw, label %bb.ux

bb.uw:                                            ; preds = %bb.uv
  %i.ery = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.erz = load i32, ptr %i.ery, align 1, !tbaa !81
  %i.esa = sext i32 %i.erz to i64
  %i.esb = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.esa
  br label %.backedge.backedge

bb.ux:                                            ; preds = %bb.uv
  %i.esc = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

bb.uy:                                            ; preds = %.backedge
  %i.esd = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.ese = load i8, ptr %i.esd, align 1, !tbaa !81
  %i.esf = zext i8 %i.ese to i64
  %i.esg = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.esf
  %.sroa.019.0.copyload = load i64, ptr %i.esg, align 8, !tbaa !61
  %i.esh = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.esi = load i8, ptr %i.esh, align 1, !tbaa !81
  %i.esj = zext i8 %i.esi to i64
  %i.esk = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.esj
  %.sroa.018.0.copyload = load i64, ptr %i.esk, align 8, !tbaa !61
  %i.esl = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.019.0.copyload, i64 %.sroa.018.0.copyload) #10
  br i1 %i.esl, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  %i.esm = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 4
  br label %.backedge.backedge

bb.va:                                            ; preds = %bb.uy
  %i.esn = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.eso = load i8, ptr %i.esn, align 1, !tbaa !81
  %i.esp = sext i8 %i.eso to i64
  %i.esq = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.esp
  br label %.backedge.backedge

bb.vb:                                            ; preds = %.backedge
  %i.esr = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.ess = load i8, ptr %i.esr, align 1, !tbaa !81
  %i.est = zext i8 %i.ess to i64
  %i.esu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.est
  %.sroa.017.0.copyload = load i64, ptr %i.esu, align 8, !tbaa !61
  %i.esv = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.esw = load i8, ptr %i.esv, align 1, !tbaa !81
  %i.esx = zext i8 %i.esw to i64
  %i.esy = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.esx
  %.sroa.016.0.copyload = load i64, ptr %i.esy, align 8, !tbaa !61
  %i.esz = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.017.0.copyload, i64 %.sroa.016.0.copyload) #10
  br i1 %i.esz, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.eta = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 7
  br label %.backedge.backedge

bb.vd:                                            ; preds = %bb.vb
  %i.etb = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1
  %i.etc = load i32, ptr %i.etb, align 1, !tbaa !81
  %i.etd = sext i32 %i.etc to i64
  %i.ete = getelementptr inbounds i8, ptr %.sink4083.sink.in, i64 %i.etd
  br label %.backedge.backedge

bb.ve:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.etf = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.etg = load i8, ptr %i.etf, align 1, !tbaa !81
  %i.eth = zext i8 %i.etg to i64
  %i.eti = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eth
  %i.etj = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.etk = load i8, ptr %i.etj, align 1, !tbaa !81
  %i.etl = zext i8 %i.etk to i64
  %i.etm = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.etl
  %i.etn = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.eti, ptr %i.etm) #10 ; 2 uses
  %i.eto = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3687 = and i32 %i.etn, 255
  %i.etp = icmp eq i32 %.mask3687, 0
  br i1 %i.etp, label %.loopexitthread-pre-split.loopexit4189, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.etq = and i32 %i.etn, 256
  %.not3688 = icmp eq i32 %i.etq, 0
  br i1 %.not3688, label %bb.vh, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.etr = getelementptr inbounds nuw i8, ptr %i.eto, i64 1
  %i.ets = load i8, ptr %i.etr, align 1, !tbaa !81
  %i.ett = sext i8 %i.ets to i64
  %i.etu = getelementptr inbounds i8, ptr %i.eto, i64 %i.ett
  br label %.backedge.backedge

bb.vh:                                            ; preds = %bb.vf
  %i.etv = getelementptr inbounds nuw i8, ptr %i.eto, i64 4
  br label %.backedge.backedge

bb.vi:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.etw = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.etx = load i8, ptr %i.etw, align 1, !tbaa !81
  %i.ety = zext i8 %i.etx to i64
  %i.etz = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ety
  %i.eua = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.eub = load i8, ptr %i.eua, align 1, !tbaa !81
  %i.euc = zext i8 %i.eub to i64
  %i.eud = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.euc
  %i.eue = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.etz, ptr %i.eud) #10 ; 2 uses
  %i.euf = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3685 = and i32 %i.eue, 255
  %i.eug = icmp eq i32 %.mask3685, 0
  br i1 %i.eug, label %.loopexitthread-pre-split.loopexit4189, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.euh = and i32 %i.eue, 256
  %.not3686 = icmp eq i32 %i.euh, 0
  br i1 %.not3686, label %bb.vl, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.eui = getelementptr inbounds nuw i8, ptr %i.euf, i64 1
  %i.euj = load i32, ptr %i.eui, align 1, !tbaa !81
  %i.euk = sext i32 %i.euj to i64
  %i.eul = getelementptr inbounds i8, ptr %i.euf, i64 %i.euk
  br label %.backedge.backedge

bb.vl:                                            ; preds = %bb.vj
  %i.eum = getelementptr inbounds nuw i8, ptr %i.euf, i64 7
  br label %.backedge.backedge

bb.vm:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eun = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 2
  %i.euo = load i8, ptr %i.eun, align 1, !tbaa !81
  %i.eup = zext i8 %i.euo to i64
  %i.euq = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eup
  %i.eur = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 3
  %i.eus = load i8, ptr %i.eur, align 1, !tbaa !81
  %i.eut = zext i8 %i.eus to i64
  %i.euu = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eut
  %i.euv = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.euq, ptr %i.euu) #10 ; 2 uses
  %i.euw = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask3683 = and i32 %i.euv, 255
  %i.eux = icmp eq i32 %.mask3683, 0
  br i1 %i.eux, label %.loopexitthread-pre-split.loopexit4189, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.euy = and i32 %i.euv, 256
  %.not3684 = icmp eq i32 %i.euy, 0
  br i1 %.not3684, label %bb.vp, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.euz = getelementptr inbounds nuw i8, ptr %i.euw, i64 4
  br label %.backedge.backedge

bb.vp:                                            ; preds = %bb.vn
  %i.eva = getelementptr inbounds nuw i8, ptr %i.euw, i64 1
  %i.evb = load i8, ptr %i.eva, align 1, !tbaa !81
  %i.evc = sext i8 %i.evb to i64
  %i.evd = getelementptr inbounds i8, ptr %i.euw, i64 %i.evc
  br label %.backedge.backedge

bb.vq:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.eve = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 5
  %i.evf = load i8, ptr %i.eve, align 1, !tbaa !81
  %i.evg = zext i8 %i.evf to i64
  %i.evh = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.evg
  %i.evi = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 6
  %i.evj = load i8, ptr %i.evi, align 1, !tbaa !81
  %i.evk = zext i8 %i.evj to i64
  %i.evl = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.evk
  %i.evm = call i32 @_ZN6hermes2vm24abstractEqualityTest_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.evh, ptr %i.evl) #10 ; 2 uses
  %i.evn = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %.mask = and i32 %i.evm, 255
  %i.evo = icmp eq i32 %.mask, 0
  br i1 %i.evo, label %.loopexitthread-pre-split.loopexit4189, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evp = and i32 %i.evm, 256
  %.not3682 = icmp eq i32 %i.evp, 0
  br i1 %.not3682, label %bb.vt, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.evq = getelementptr inbounds nuw i8, ptr %i.evn, i64 7
  br label %.backedge.backedge

bb.vt:                                            ; preds = %bb.vr
  %i.evr = getelementptr inbounds nuw i8, ptr %i.evn, i64 1
  %i.evs = load i32, ptr %i.evr, align 1, !tbaa !81
  %i.evt = sext i32 %i.evs to i64
  %i.evu = getelementptr inbounds i8, ptr %i.evn, i64 %i.evt
  br label %.backedge.backedge

bb.vu:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evv = call noundef i32 @_ZN6hermes2vm11Interpreter15casePutOwnByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4083.sink.in) #10
  %i.evw = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.evx = icmp eq i32 %i.evv, 0
  br i1 %i.evx, label %.loopexitthread-pre-split.loopexit4189, label %bb.vv, !prof !65

bb.vv:                                            ; preds = %bb.vu
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.evy = getelementptr inbounds nuw i8, ptr %i.evw, i64 5
  br label %.backedge.backedge

bb.vw:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.evz = call noundef i32 @_ZN6hermes2vm11Interpreter27casePutOwnGetterSetterByValERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4083.sink.in) #10
  %i.ewa = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewb = icmp eq i32 %i.evz, 0
  br i1 %i.ewb, label %.loopexitthread-pre-split.loopexit4189, label %bb.vx, !prof !65

bb.vx:                                            ; preds = %bb.vw
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewc = getelementptr inbounds nuw i8, ptr %i.ewa, i64 6
  br label %.backedge.backedge

bb.vy:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewd = call noundef i32 @_ZN6hermes2vm11Interpreter14caseDirectEvalERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4083.sink.in) #10
  %i.ewe = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewf = icmp eq i32 %i.ewd, 0
  br i1 %i.ewf, label %.loopexitthread-pre-split.loopexit4189, label %bb.vz, !prof !65

bb.vz:                                            ; preds = %bb.vy
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewg = getelementptr inbounds nuw i8, ptr %i.ewe, i64 4
  br label %.backedge.backedge

bb.wa:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewh = call noundef i32 @_ZN6hermes2vm11Interpreter17caseIteratorBeginERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4083.sink.in) #10
  %i.ewi = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewj = icmp eq i32 %i.ewh, 0
  br i1 %i.ewj, label %.loopexitthread-pre-split.loopexit4189, label %bb.wb, !prof !65

bb.wb:                                            ; preds = %bb.wa
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewk = getelementptr inbounds nuw i8, ptr %i.ewi, i64 3
  br label %.backedge.backedge

bb.wc:                                            ; preds = %.backedge
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewl = call noundef i32 @_ZN6hermes2vm11Interpreter16caseIteratorNextERNS0_7RuntimeEPNS0_17PinnedHermesValueEPKNS_4inst4InstE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %.32602, ptr noundef nonnull %.sink4083.sink.in) #10
  %i.ewm = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %i.ewn = icmp eq i32 %i.ewl, 0
  br i1 %i.ewn, label %.loopexitthread-pre-split.loopexit4189, label %bb.wd, !prof !65

bb.wd:                                            ; preds = %bb.wc
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  %i.ewo = getelementptr inbounds nuw i8, ptr %i.ewm, i64 4
  br label %.backedge.backedge

bb.we:                                            ; preds = %.backedge
  %i.ewp = getelementptr inbounds nuw i8, ptr %.sink4083.sink.in, i64 1 ; 2 uses
  %i.ewq = load i8, ptr %i.ewp, align 1, !tbaa !81
  %i.ewr = zext i8 %i.ewq to i64
  %i.ews = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.ewr
  %i.ewt = load i64, ptr %i.ews, align 8, !tbaa !69
  %i.ewu = icmp ugt i64 %i.ewt, -281474976710657
  br i1 %i.ewu, label %bb.wf, label %bb.wk, !prof !65

bb.wf:                                            ; preds = %bb.we
  store ptr %.sink4083.sink.in, ptr %i.a, align 8, !tbaa !108
  %i.ewv = load i8, ptr %i.ewp, align 1, !tbaa !81
  %i.eww = zext i8 %i.ewv to i64
  %i.ewx = getelementptr inbounds nuw [8 x i8], ptr %.32602, i64 %i.eww
  %i.ewy = call noundef i32 @_ZN6hermes2vm13iteratorCloseERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.ewx, ptr nonnull @_ZN6hermes2vm15HandleRootOwner11emptyValue_E) #10
  %i.ewz = load ptr, ptr %i.a, align 8, !tbaa !108 ; 4 uses
  %i.exa = icmp eq i32 %i.ewy, 0
  br i1 %i.exa, label %bb.wg, label %bb.wj, !prof !65

bb.wg:                                            ; preds = %bb.wf
  %i.exb = getelementptr inbounds nuw i8, ptr %i.ewz, i64 2
  %i.exc = load i8, ptr %i.exb, align 1, !tbaa !81
  %.not2646 = icmp eq i8 %i.exc, 0
  br i1 %.not2646, label %.loopexitthread-pre-split.loopexit4189, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  %.sroa.07.0.copyload = load i64, ptr %i.ai, align 8, !tbaa !61
  %i.exd = call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.07.0.copyload) #10
  br i1 %i.exd, label %.loopexitthread-pre-split.loopexit4189, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  store i64 -1970324836974592, ptr %i.ai, align 8, !tbaa !69
  br label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wf
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  br label %bb.wk

bb.wk:                                            ; preds = %bb.wj, %bb.we
  %.21 = phi ptr [ %i.ewz, %bb.wj ], [ %.sink4083.sink.in, %bb.we ]
  %i.exe = getelementptr inbounds nuw i8, ptr %.21, i64 3
  br label %.backedge.backedge

bb.wl:                                            ; preds = %.backedge
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.18) #11
  unreachable

_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm9CodeBlock12getFrameSizeEv.exit
  store ptr %.02594, ptr %i.a, align 8, !tbaa !108
  %i.exf = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef 0) #10 ; 0 uses
  br label %bb.wm

bb.wm:                                            ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2736, %_ZN6hermes2vm7Runtime18checkAndAllocStackEjNS0_11HermesValueE.exit
  %i.exg = getelementptr inbounds i8, ptr %i.bz, i64 -24
  %i.exh = load i64, ptr %i.exg, align 8, !tbaa !69 ; 2 uses
  %i.exi = inttoptr i64 %i.exh to ptr
  %i.exj = load i64, ptr %i.cc, align 8, !tbaa !69
  %i.exk = inttoptr i64 %i.exj to ptr
  store ptr %i.bz, ptr %i.x, align 8, !tbaa !330
  %i.exl = getelementptr inbounds i8, ptr %i.bz, i64 -8
  %i.exm = load i64, ptr %i.exl, align 8, !tbaa !69
  %i.exn = inttoptr i64 %i.exm to ptr             ; 2 uses
  store ptr %i.exn, ptr %i.y, align 8, !tbaa !68
  %i.exo = getelementptr inbounds nuw i8, ptr %i.exn, i64 8
  %.not = icmp eq i64 %i.exh, 0
  br i1 %.not, label %.loopexit3763, label %.loopexitthread-pre-split

.loopexitthread-pre-split.sink.split:             ; preds = %bb.lz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2979, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread, %_ZN6hermes2vm11TwineChar16C2EPKc.exit2805
  %i.exp = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %.loopexitthread-pre-split

.loopexitthread-pre-split.loopexit4189:           ; preds = %bb.wh, %bb.wg, %bb.z, %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit, %bb.ax, %bb.az, %bb.ce, %bb.dc, %bb.de, %bb.ed, %bb.ef, %.critedge2666, %bb.fo, %.critedge2668, %bb.gs, %bb.gv, %bb.gw, %bb.gz, %bb.ha, %bb.hf, %bb.ht, %bb.hx, %bb.ia, %bb.id, %bb.ie, %bb.jd, %bb.jh, %.critedge2673, %bb.jq, %bb.ju, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, %bb.kd, %bb.kh, %bb.kj, %bb.kl, %bb.kn, %bb.kp, %bb.ks, %bb.kv, %bb.lc, %.critedge2675, %bb.lj, %bb.lm, %bb.lr, %bb.lw, %bb.ma, %bb.me, %bb.mf, %bb.mg, %bb.ng, %.critedge2677, %.critedge2679, %.critedge2681, %.critedge2683, %.critedge2685, %.critedge2687, %.critedge2689, %.critedge2691, %.critedge2693, %.critedge2695, %.critedge2697, %.critedge2699, %.critedge2701, %.critedge2703, %.critedge2705, %.critedge2707, %.critedge2709, %.critedge2711, %.critedge2713, %.critedge2715, %.critedge2717, %.critedge2719, %.critedge2721, %.critedge2723, %.critedge2725, %.critedge2727, %.critedge2729, %.critedge2731, %.critedge2733, %bb.ve, %bb.vi, %bb.vm, %bb.vq, %bb.vu, %bb.vw, %bb.vy, %bb.wa, %bb.wc
  %.22.ph4014.ph = phi ptr [ %i.evw, %bb.vu ], [ %i.evn, %bb.vq ], [ %i.euw, %bb.vm ], [ %i.euf, %bb.vi ], [ %i.eto, %bb.ve ], [ %i.eqt, %.critedge2733 ], [ %i.epb, %.critedge2731 ], [ %i.enj, %.critedge2729 ], [ %i.elr, %.critedge2727 ], [ %i.ejz, %.critedge2725 ], [ %i.eih, %.critedge2723 ], [ %i.egp, %.critedge2721 ], [ %i.eex, %.critedge2719 ], [ %i.edf, %.critedge2717 ], [ %i.ebn, %.critedge2715 ], [ %i.dzv, %.critedge2713 ], [ %i.dyd, %.critedge2711 ], [ %i.dwl, %.critedge2709 ], [ %i.dut, %.critedge2707 ], [ %i.dtb, %.critedge2705 ], [ %i.drj, %.critedge2703 ], [ %i.dpp, %.critedge2701 ], [ %i.dob, %.critedge2699 ], [ %i.dmn, %.critedge2697 ], [ %i.dkz, %.critedge2695 ], [ %i.djn, %.critedge2693 ], [ %i.dhl, %.critedge2691 ], [ %i.dfj, %.critedge2689 ], [ %i.ddh, %.critedge2687 ], [ %i.dbg, %.critedge2685 ], [ %i.czf, %.critedge2683 ], [ %i.cxe, %.critedge2681 ], [ %i.cvl, %.critedge2679 ], [ %i.cts, %.critedge2677 ], [ %i.crz, %bb.ng ], [ %i.ckw, %bb.mg ], [ %i.cko, %bb.mf ], [ %i.ckk, %bb.me ], [ %i.cjn, %bb.ma ], [ %i.cij, %bb.lw ], [ %i.chm, %bb.lr ], [ %i.cgb, %bb.lm ], [ %i.cfc, %bb.lj ], [ %i.cel, %.critedge2675 ], [ %i.ccn, %bb.lc ], [ %i.bzm, %bb.kv ], [ %i.byi, %bb.ks ], [ %i.bww, %bb.kp ], [ %i.bwe, %bb.kn ], [ %i.bvn, %bb.kl ], [ %i.bvb, %bb.kj ], [ %i.buk, %bb.kh ], [ %i.bsu, %bb.kd ], [ %i.bsc, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread ], [ %i.bqc, %bb.ju ], [ %i.bpa, %bb.jq ], [ %i.bns, %.critedge2673 ], [ %i.blz, %bb.jh ], [ %i.bkz, %bb.jd ], [ %i.bho, %bb.ie ], [ %i.bhk, %bb.id ], [ %i.bgr, %bb.ia ], [ %i.bge, %bb.hx ], [ %i.bfm, %bb.ht ], [ %i.bby, %bb.hf ], [ %i.bbd, %bb.ha ], [ %i.baz, %bb.gz ], [ %i.baa, %bb.gw ], [ %i.azw, %bb.gv ], [ %i.azf, %bb.gs ], [ %i.ayp, %.critedge2668 ], [ %i.ato, %bb.fo ], [ %i.atc, %.critedge2666 ], [ %i.ang, %bb.ef ], [ %i.anc, %bb.ed ], [ %i.aba, %bb.de ], [ %i.aaf, %bb.dc ], [ %i.ur, %bb.ce ], [ %i.on, %bb.az ], [ %i.oh, %bb.ax ], [ %i.lz, %_ZN6hermes2vm11Interpreter18handleCallSlowPathERNS0_7RuntimeEPNS0_17PinnedHermesValueE.exit ], [ %i.gr, %bb.z ], [ %i.ewz, %bb.wg ], [ %i.ewz, %bb.wh ], [ %i.ewm, %bb.wc ], [ %i.ewi, %bb.wa ], [ %i.ewe, %bb.vy ], [ %i.ewa, %bb.vw ]
  br label %.loopexitthread-pre-split

.loopexitthread-pre-split:                        ; preds = %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit, %.loopexitthread-pre-split.loopexit4189, %.loopexitthread-pre-split.sink.split, %bb.wm
  %.12600.ph = phi ptr [ %.32602, %.loopexitthread-pre-split.loopexit4189 ], [ %i.exo, %bb.wm ], [ %.32602, %.loopexitthread-pre-split.sink.split ], [ %.32602, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.22.ph4014 = phi ptr [ %.22.ph4014.ph, %.loopexitthread-pre-split.loopexit4189 ], [ %i.exk, %bb.wm ], [ %i.exp, %.loopexitthread-pre-split.sink.split ], [ %i.beb, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.2.ph = phi ptr [ %.4, %.loopexitthread-pre-split.loopexit4189 ], [ %i.exi, %bb.wm ], [ %.4, %.loopexitthread-pre-split.sink.split ], [ %.4, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_11HermesValueEE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit ]
  %.sroa.03.0.copyload.pr = load i64, ptr %i.ai, align 8, !tbaa !61
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexitthread-pre-split, %bb.by, %bb.bt
  %.sroa.03.0.copyload = phi i64 [ %.sroa.03.0.copyload.pr, %.loopexitthread-pre-split ], [ %.sroa.0.0.copyload.i2802, %bb.by ], [ %.sroa.0275.0.copyload, %bb.bt ] ; 3 uses
  %.12600 = phi ptr [ %.12600.ph, %.loopexitthread-pre-split ], [ %.32602, %bb.by ], [ %.32602, %bb.bt ] ; 2 uses
  %.22 = phi ptr [ %.22.ph4014, %.loopexitthread-pre-split ], [ %.sink4083.sink.in, %bb.by ], [ %.sink4083.sink.in, %bb.bt ] ; 5 uses
  %.2 = phi ptr [ %.2.ph, %.loopexitthread-pre-split ], [ %.4, %bb.by ], [ %.4, %bb.bt ] ; 3 uses
  %i.exq = icmp ugt i64 %.sroa.03.0.copyload, -844424930131969
  br i1 %i.exq, label %bb.wn, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread

bb.wn:                                            ; preds = %.loopexit
  %i.exr = and i64 %.sroa.03.0.copyload, 281474976710655
  %i.exs = inttoptr i64 %i.exr to ptr             ; 3 uses
  %i.ext = load i32, ptr %i.exs, align 4
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.ext, -16777216
  %i.exu = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 486539264
  br i1 %i.exu, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.wn
  %i.exv = getelementptr inbounds nuw i8, ptr %i.exs, i64 48
  %i.exw = load i8, ptr %i.exv, align 8, !tbaa !476, !range !428, !noundef !44
  %i.exx = trunc nuw i8 %i.exw to i1              ; 2 uses
  %i.exy = getelementptr inbounds nuw i8, ptr %i.exs, i64 24
  %i.exz = load ptr, ptr %i.exy, align 8, !tbaa !485
  %.not2643 = icmp eq ptr %i.exz, null
  br i1 %.not2643, label %bb.wo, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread

bb.wo:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit
  store ptr %.22, ptr %i.a, align 8, !tbaa !108
  %i.eya = or i64 %.sroa.03.0.copyload, -281474976710656 ; 2 uses
  %i.eyb = load ptr, ptr %i.l, align 8, !tbaa !46 ; 3 uses
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.eyb, i64 192 ; 2 uses
  %i.eyd = load ptr, ptr %i.eyc, align 8, !tbaa !49 ; 4 uses
  %i.eye = getelementptr inbounds nuw i8, ptr %i.eyb, i64 200
  %i.eyf = load ptr, ptr %i.eye, align 8, !tbaa !59
  %i.eyg = icmp ult ptr %i.eyd, %i.eyf
  br i1 %i.eyg, label %bb.wp, label %bb.wq, !prof !60

bb.wp:                                            ; preds = %bb.wo
  %i.eyh = getelementptr inbounds nuw i8, ptr %i.eyd, i64 8
  store ptr %i.eyh, ptr %i.eyc, align 8, !tbaa !49
  store i64 %i.eya, ptr %i.eyd, align 8, !tbaa !61
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit

bb.wq:                                            ; preds = %bb.wo
  %i.eyi = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.eyb, i64 %i.eya) #10
  %.pre3924 = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.wp, %bb.wq
  %i.eyj = phi ptr [ %.22, %bb.wp ], [ %.pre3924, %bb.wq ]
  %.0.i.i.i.i.i.i3069 = phi ptr [ %i.eyd, %bb.wp ], [ %i.eyi, %bb.wq ] ; 2 uses
  store i64 -1970324836974592, ptr %i.ai, align 8, !tbaa !69
  %i.eyk = call noundef i32 @_ZN6hermes2vm7JSError16recordStackTraceENS0_6HandleIS1_EERNS0_7RuntimeEbPNS0_9CodeBlockEPKNS_4inst4InstE(ptr %.0.i.i.i.i.i.i3069, ptr noundef nonnull align 8 dereferenceable(9816) %0, i1 noundef zeroext false, ptr noundef %.2, ptr noundef %i.eyj) #10 ; 0 uses
  %i.eyl = load ptr, ptr %i.a, align 8, !tbaa !108 ; 2 uses
  %.sroa.0.0.copyload.i3070 = load i64, ptr %.0.i.i.i.i.i.i3069, align 8, !tbaa !61
  store i64 %.sroa.0.0.copyload.i3070, ptr %i.ai, align 8, !tbaa !69
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br i1 %i.exx, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread: ; preds = %bb.wn, %.loopexit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit
  store ptr %i.v, ptr %i.s, align 8, !tbaa !49
  store ptr %i.n, ptr %i.t, align 8, !tbaa !59
  store i32 0, ptr %i.u, align 8, !tbaa !404
  store i64 -1688849860263936, ptr %i.o, align 8, !tbaa !69
  br i1 %i.exx, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread
  %.24.ph = phi ptr [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread ], [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.thread ], [ %i.eyl, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit ]
  br label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread
  %.234020 = phi ptr [ %i.eyl, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSErrorEEENS0_6HandleIT_EEPS5_.exit ], [ %.22, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread ]
  %i.eym = ptrtoint ptr %.234020 to i64
  br label %bb.wr

bb.wr:                                            ; preds = %bb.wr, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us
  %.22601.us = phi ptr [ %.12600, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.ezc, %bb.wr ] ; 4 uses
  %.24.us = phi i64 [ %i.eym, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.eyy, %bb.wr ]
  %.3.us = phi ptr [ %.2, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.us ], [ %i.eyw, %bb.wr ] ; 2 uses
  %i.eyn = getelementptr inbounds nuw i8, ptr %.3.us, i64 16
  %i.eyo = load ptr, ptr %i.eyn, align 8, !tbaa !433
  %i.eyp = ptrtoint ptr %i.eyo to i64
  %i.eyq = sub i64 %.24.us, %i.eyp
  %i.eyr = trunc i64 %i.eyq to i32
  %i.eys = call noundef i32 @_ZN6hermes2vm9CodeBlock21findCatchTargetOffsetEj(ptr noundef nonnull align 8 dereferenceable(40) %.3.us, i32 noundef %i.eyr) #10 ; 0 uses
  %i.eyt = getelementptr inbounds i8, ptr %.22601.us, i64 -8
  %i.eyu = getelementptr inbounds i8, ptr %.22601.us, i64 -32
  %i.eyv = load i64, ptr %i.eyu, align 8, !tbaa !69 ; 2 uses
  %i.eyw = inttoptr i64 %i.eyv to ptr
  %i.eyx = getelementptr inbounds i8, ptr %.22601.us, i64 -24
  %i.eyy = load i64, ptr %i.eyx, align 8, !tbaa !69
  store ptr %i.eyt, ptr %i.x, align 8, !tbaa !330
  %i.eyz = getelementptr inbounds i8, ptr %.22601.us, i64 -16
  %i.eza = load i64, ptr %i.eyz, align 8, !tbaa !69
  %i.ezb = inttoptr i64 %i.eza to ptr             ; 2 uses
  store ptr %i.ezb, ptr %i.y, align 8, !tbaa !68
  %i.ezc = getelementptr inbounds nuw i8, ptr %i.ezb, i64 8
  %.not2664.us = icmp eq i64 %i.eyv, 0
  br i1 %.not2664.us, label %.loopexit3763, label %bb.wr, !llvm.loop !486

_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split: ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader, %bb.ws
  %.22601 = phi ptr [ %i.ezu, %bb.ws ], [ %.12600, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 5 uses
  %.24 = phi ptr [ %i.ezq, %bb.ws ], [ %.24.ph, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 2 uses
  %.3 = phi ptr [ %i.ezn, %bb.ws ], [ %.2, %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split.preheader ] ; 5 uses
  %i.ezd = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.eze = load ptr, ptr %i.ezd, align 8, !tbaa !433
  %i.ezf = ptrtoint ptr %.24 to i64               ; 2 uses
  %i.ezg = ptrtoint ptr %i.eze to i64
  %i.ezh = sub i64 %i.ezf, %i.ezg
  %i.ezi = trunc i64 %i.ezh to i32
  %i.ezj = call noundef i32 @_ZN6hermes2vm9CodeBlock21findCatchTargetOffsetEj(ptr noundef nonnull align 8 dereferenceable(40) %.3, i32 noundef %i.ezi) #10 ; 2 uses
  %.not3858 = icmp eq i32 %i.ezj, -1
  br i1 %.not3858, label %bb.ws, label %bb.wt

bb.ws:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split
  %i.ezk = getelementptr inbounds i8, ptr %.22601, i64 -8
  %i.ezl = getelementptr inbounds i8, ptr %.22601, i64 -32
  %i.ezm = load i64, ptr %i.ezl, align 8, !tbaa !69 ; 2 uses
  %i.ezn = inttoptr i64 %i.ezm to ptr
  %i.ezo = getelementptr inbounds i8, ptr %.22601, i64 -24
  %i.ezp = load i64, ptr %i.ezo, align 8, !tbaa !69
  %i.ezq = inttoptr i64 %i.ezp to ptr
  store ptr %i.ezk, ptr %i.x, align 8, !tbaa !330
  %i.ezr = getelementptr inbounds i8, ptr %.22601, i64 -16
  %i.ezs = load i64, ptr %i.ezr, align 8, !tbaa !69
  %i.ezt = inttoptr i64 %i.ezs to ptr             ; 2 uses
  store ptr %i.ezt, ptr %i.y, align 8, !tbaa !68
  %i.ezu = getelementptr inbounds nuw i8, ptr %i.ezt, i64 8
  %.not2664 = icmp eq i64 %i.ezm, 0
  br i1 %.not2664, label %.loopexit3763, label %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split, !llvm.loop !486

bb.wt:                                            ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_7JSErrorEEEPT_NS0_11HermesValueE.exit.thread.split
  %i.ezv = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.ezw = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ezx = load ptr, ptr %i.ezw, align 8, !tbaa !430 ; 2 uses
  %i.ezy = ptrtoint ptr %i.ezx to i64
  %i.ezz = trunc i64 %i.ezy to i1
  %..i.i3071 = select i1 %i.ezz, i64 29, i64 15, !prof !65
  %i.faa = getelementptr inbounds nuw i8, ptr %i.ezx, i64 %..i.i3071
  %.sroa.0.0.i.i3072 = load i8, ptr %i.faa, align 1, !tbaa !81
  %i.fab = sext i32 %i.ezj to i64
  %i.fac = load ptr, ptr %i.ezv, align 8, !tbaa !433
  %i.fad = ptrtoint ptr %i.fac to i64
  %.neg = sub i64 %i.fad, %i.ezf
  %i.fae = getelementptr i8, ptr %.24, i64 %.neg
  %i.faf = getelementptr i8, ptr %i.fae, i64 %i.fab
  br label %bb.h, !llvm.loop !487

.loopexit3763:                                    ; preds = %bb.wm, %bb.ws, %bb.bv, %bb.wr
  %.sroa.03643.0 = phi i32 [ 1, %bb.bv ], [ 0, %bb.ws ], [ 0, %bb.wr ], [ 0, %bb.wm ]
  %.sroa.6.0 = phi i64 [ %.sroa.0274.0.copyload, %bb.bv ], [ undef, %bb.ws ], [ undef, %bb.wr ], [ undef, %bb.wm ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %2) #10
  br label %bb.wu

bb.wu:                                            ; preds = %.loopexit3763, %bb.b
  %.sroa.03643.1 = phi i32 [ %i.j, %bb.b ], [ %.sroa.03643.0, %.loopexit3763 ]
  %.sroa.6.1 = phi i64 [ undef, %bb.b ], [ %.sroa.6.0, %.loopexit3763 ]
  %i.fag = load i64, ptr %i.d, align 8, !tbaa !328
  %i.fah = add i64 %i.fag, -1
  store i64 %i.fah, ptr %i.d, align 8, !tbaa !328
  store ptr %i.b, ptr %i.a, align 8, !tbaa !108
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.03643.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert

.backedge:                                        ; preds = %.backedge.backedge, %bb.h
  %.sink4083.sink.in = phi ptr [ %.12595, %bb.h ], [ %.sink4083.sink.in.be, %.backedge.backedge ] ; 673 uses
  %.sroa.03592.1 = phi i8 [ %.sroa.03592.0, %bb.h ], [ %.sroa.03592.1.be, %.backedge.backedge ] ; 239 uses
  %.12604 = phi i8 [ %.sroa.03592.0, %bb.h ], [ %.12604.be, %.backedge.backedge ] ; 234 uses
  %.32602 = phi ptr [ %.02599, %bb.h ], [ %.32602.be, %.backedge.backedge ] ; 692 uses
  %.4 = phi ptr [ %.1, %bb.h ], [ %.4.be, %.backedge.backedge ] ; 269 uses
  %.sink4083.sink = load i8, ptr %.sink4083.sink.in, align 1, !tbaa !81
  %i.fai = zext i8 %.sink4083.sink to i64
  %i.faj = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateEE14opcodeDispatch, i64 %i.fai
  %i.fak = load ptr, ptr %i.faj, align 8, !tbaa !488
  indirectbr ptr %i.fak, [label %bb.cg, label %bb.kh, label %bb.kj, label %bb.kf, label %bb.kg, label %bb.kn, label %bb.kp, label %bb.kl, label %bb.i, label %bb.j, label %bb.la, label %bb.kz, label %bb.jn, label %bb.le, label %bb.kv, label %bb.kx, label %bb.wl, label %bb.ky, label %bb.pe, label %bb.pi, label %bb.pm, label %bb.pq, label %bb.jj, label %bb.jl, label %bb.nm, label %bb.no, label %bb.nq, label %bb.ns, label %bb.lf, label %bb.ni, label %bb.nk, label %bb.om, label %bb.os, label %bb.oy, label %bb.nu, label %bb.og, label %bb.oa, label %bb.jb, label %bb.jf, label %bb.lj, label %bb.ll, label %bb.dg, label %bb.dr, label %bb.dt, label %bb.dv, label %bb.dx, label %bb.dz, label %bb.ea, label %bb.eb, label %bb.ec, label %bb.dl, label %bb.dh, label %bb.ed, label %bb.ef, label %bb.ej, label %bb.el, label %bb.ei, label %bb.ek, label %bb.eh, label %bb.ft, label %bb.fr, label %bb.fs, label %bb.fq, label %bb.lo, label %bb.lq, label %bb.lp, label %bb.vb, label %bb.uy, label %bb.hd, label %bb.hc, label %bb.vu, label %bb.lu, label %bb.lt, label %bb.gu, label %bb.gy, label %bb.md, label %bb.vw, label %bb.hf, label %bb.hh, label %bb.ai, label %bb.ah, label %bb.ad, label %bb.ar, label %bb.ae, label %bb.af, label %bb.ag, label %bb.ac, label %bb.ab, label %bb.uv, label %bb.ax, label %bb.az, label %bb.aw, label %bb.bv, label %bb.bx, label %bb.vy, label %bb.by, label %bb.bz, label %bb.cb, label %bb.cc, label %bb.cf, label %bb.ch, label %bb.ci, label %bb.cv, label %bb.cw, label %bb.co, label %bb.cp, label %bb.kr, label %bb.ku, label %bb.k, label %bb.n, label %bb.mt, label %bb.mu, label %bb.mv, label %bb.ne, label %bb.nf, label %bb.mw, label %bb.mx, label %bb.my, label %bb.mz, label %bb.na, label %bb.nb, label %bb.nc, label %bb.nd, label %bb.q, label %bb.v, label %bb.hs, label %bb.hw, label %bb.ia, label %bb.ic, label %bb.jw, label %bb.js, label %bb.kb, label %bb.mi, label %bb.mn, label %bb.be, label %bb.bi, label %bb.bb, label %bb.dc, label %bb.de, label %bb.wa, label %bb.wc, label %bb.we, label %bb.ih, label %bb.ii, label %bb.ij, label %bb.im, label %bb.ip, label %bb.is, label %bb.iv, label %bb.iy, label %bb.bc, label %bb.bd, label %bb.pu, label %bb.qc, label %bb.qk, label %bb.qs, label %bb.pw, label %bb.qe, label %bb.qm, label %bb.qu, label %bb.ra, label %bb.ri, label %bb.rq, label %bb.ry, label %bb.rc, label %bb.rk, label %bb.rs, label %bb.sa, label %bb.sg, label %bb.so, label %bb.sw, label %bb.te, label %bb.si, label %bb.sq, label %bb.sy, label %bb.tg, label %bb.tm, label %bb.tu, label %bb.uc, label %bb.uk, label %bb.to, label %bb.tw, label %bb.ue, label %bb.um, label %bb.ve, label %bb.vi, label %bb.vm, label %bb.vq, label %bb.us]
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7Runtime17interpretFunctionEPNS0_9CodeBlockE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.hermes::vm::InterpreterState", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %1, ptr %2, align 8, !tbaa !412
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !414
  %i.b = call { i32, i64 } @_ZN6hermes2vm11Interpreter17interpretFunctionILb0ELb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeERNS0_16InterpreterStateE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret { i32, i64 } %i.b
}

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule20getCodeBlockSlowPathEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !91     ; 9 uses
  %i.b = trunc i32 %i.a to i8
  %i.c = and i8 %i.b, 15
  switch i8 %i.c, label %default.unreachable [
    i8 0, label %bb.b
    i8 8, label %bb.b
    i8 1, label %bb.c
    i8 9, label %bb.c
    i8 2, label %bb.d
    i8 10, label %bb.d
    i8 3, label %bb.e
    i8 11, label %bb.e
    i8 4, label %bb.f
    i8 12, label %bb.f
    i8 5, label %bb.g
    i8 13, label %bb.g
    i8 6, label %bb.h
    i8 14, label %bb.k
    i8 7, label %bb.i
    i8 15, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  %i.d = ptrtoint ptr %1 to i64
  %i.e = zext i32 %i.a to i64
  %i.f = add i64 %i.e, %i.d
  %i.g = or i64 %i.f, -281474976710656
  %i.h = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.g
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.i = and i32 %i.a, -8
  %i.j = ptrtoint ptr %1 to i64
  %i.k = zext i32 %i.i to i64
  %i.l = add i64 %i.k, %i.j
  %i.m = or i64 %i.l, -562949953421312
  br label %bb.k

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.n = and i32 %i.a, -8
  %i.o = ptrtoint ptr %1 to i64
  %i.p = zext i32 %i.n to i64
  %i.q = add i64 %i.p, %i.o
  %i.r = or i64 %i.q, -844424930131968
  br label %bb.k

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.s = and i32 %i.a, -8
  %i.t = ptrtoint ptr %1 to i64
  %i.u = zext i32 %i.s to i64
  %i.v = add i64 %i.u, %i.t
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !77 ; 2 uses
  %i.z = fcmp uno double %i.y, 0.000000e+00
  %i.aa = bitcast double %i.y to i64
  %.sroa.0.0.i = select i1 %i.z, i64 9221120237041090560, i64 %i.aa, !prof !65
end_hunk_1
