inline.NumInlined: 6065
inline.NumDeleted: 2754
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE8DecodeGCEPS7_NS1_10WasmOpcodeE:bb.a
  br i1 %.not, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull @.str.1037, i32 noundef %1)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = or i64 %i.z, 1024
  store i64 %i.aa, ptr %i.y, align 8
  %i.ab = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE21DecodeStringRefOpcodeENS1_10WasmOpcodeEj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.02.0.extract.trunc, i32 noundef %.sroa.5.0.i.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.h:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = or i64 %i.ae, 33554432
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.02.0.extract.trunc, i32 noundef %.sroa.5.0.i.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.thread, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.ab, %bb.g ], [ 0, %bb.f ], [ %i.ag, %bb.h ], [ 0, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ 0, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.thread ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE10DecodeSimdEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 1048576
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call noundef zeroext i1 @_ZN2v88internal4wasm25CheckHardwareSupportsSimdEv() #22
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1054) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKc(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull @.str.1055)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeSimdImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %bb.f, label %.critedge.i.i.i, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.j, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.n, -1
  br i1 %.not.i.i.i, label %bb.g, label %.critedge.i.i.i, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i8 %i.n to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %i.p = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1012) ; 3 uses
  %i.q = icmp ult i64 %i.p, 25769803776
  tail call void @llvm.assume(i1 %i.q)
  %i.r = lshr i64 %i.p, 32
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = add nuw nsw i32 %i.s, 1
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i.i, %bb.g
  %.sroa.05.0.i.i = phi i64 [ %i.o, %bb.g ], [ %i.p, %.critedge.i.i.i ] ; 3 uses
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.g ], [ %i.t, %.critedge.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 3 uses
  %i.u = icmp ugt i32 %.sroa.0.0.extract.trunc.i, 4095
  br i1 %i.u, label %bb.h, label %bb.i, !prof !5

bb.h:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.i:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.v = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i, 255
  %i.w = load i8, ptr %i.i, align 1
  %i.x = zext i8 %i.w to i64                      ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = shl nuw nsw i64 %i.x, 12
  %i.z = or disjoint i64 %i.y, %.sroa.05.0.i.i
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.k:                                             ; preds = %bb.i
  %i.aa = shl nuw nsw i64 %i.x, 8
  %i.ab = or disjoint i64 %i.aa, %.sroa.05.0.i.i
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.h, %bb.j, %bb.k
  %.sroa.018.0.i = phi i64 [ 0, %bb.h ], [ %i.z, %bb.j ], [ %i.ab, %bb.k ]
  %.sroa.4.0.i = phi i32 [ 0, %bb.h ], [ %.sroa.5.0.i.i, %bb.j ], [ %.sroa.5.0.i.i, %bb.k ]
  %.sroa.02.0.extract.trunc = trunc i64 %.sroa.018.0.i to i32 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8
  %.not.i = icmp eq i32 %i.ad, -1
  br i1 %.not.i, label %bb.l, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeSimdImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !6

bb.l:                                             ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.ae = add i32 %.sroa.02.0.extract.trunc, -1036576
  %or.cond.i = icmp ult i32 %i.ae, 3
  %i.af = add i32 %.sroa.02.0.extract.trunc, -1036592
  %i.ag = icmp ult i32 %i.af, 32
  %i.ah = or i1 %or.cond.i, %i.ag
  br i1 %i.ah, label %.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = and i32 %.sroa.02.0.extract.trunc, 1048320
  %i.aj = icmp eq i32 %i.ai, 1036544
  br i1 %i.aj, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %bb.m, %bb.l
  %.sink9 = phi i64 [ 32, %bb.l ], [ 16777216, %bb.m ]
  %i.ak = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = or i64 %i.al, %.sink9
  store i64 %i.am, ptr %i.ak, align 8
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %i.an = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16DecodeSimdOpcodeENS1_10WasmOpcodeEj(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.02.0.extract.trunc, i32 noundef %.sroa.4.0.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeSimdImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeSimdImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.n, %bb.d
  %.1.i = phi i32 [ 0, %bb.d ], [ %i.an, %bb.n ], [ 0, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  ret i32 %.1.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE10PopControlEv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not.i = icmp eq i32 %i.d, -1
  br i1 %.not.i, label %bb.b, label %bb.e, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 184
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 -359
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #23
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.r = load i8, ptr %i.q, align 1, !range !7, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %i.b, i64 -148
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = lshr exact i64 %i.ab, 2
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = icmp ult i32 %i.u, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %i.ag = phi ptr [ %i.x, %.lr.ph.i ], [ %i.am, %bb.g ]
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  store ptr %i.ah, ptr %i.w, align 8
  %i.aj = load ptr, ptr %i.af, align 8
  %i.ak = zext i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.an = load ptr, ptr %i.v, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 2
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp ult i32 %i.u, %i.as
  br i1 %i.at, label %bb.g, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit, !llvm.loop !192

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit: ; preds = %bb.g, %bb.e, %bb.f
  %1 = getelementptr inbounds i8, ptr %i.b, i64 -175
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit..critedge_crit_edge, label %bb.h

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit..critedge_crit_edge: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit
  %.pre = load ptr, ptr %i.a, align 8
  br label %.critedge

bb.h:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit
  %i.au = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.av = load i8, ptr %i.au, align 8, !range !7, !noundef !8
  %i.aw = trunc nuw i8 %i.av to i1
  %.pre12 = load ptr, ptr %i.a, align 8           ; 3 uses
  br i1 %i.aw, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i8, ptr %i.p, align 8
  %i.ay = icmp eq i8 %i.ax, 0
  %scevgep.i = getelementptr i8, ptr %.pre12, i64 -184
  store ptr %scevgep.i, ptr %i.a, align 8
  br i1 %i.ay, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr i8, ptr %.pre12, i64 -359 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.az, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 0, ptr %i.bc, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

.critedge:                                        ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit..critedge_crit_edge, %bb.h
  %4 = phi ptr [ %.pre, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE28RollbackLocalsInitializationEPNS1_11ControlBaseINS5_5ValueES4_EE.exit..critedge_crit_edge ], [ %.pre12, %bb.h ]
  %scevgep.i10 = getelementptr i8, ptr %4, i64 -184
  store ptr %scevgep.i10, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit: ; preds = %bb.k, %bb.j, %.critedge, %bb.i
  %i.bd = load i32, ptr %i.c, align 8
  %.not.i11 = icmp eq i32 %i.bd, -1
  br i1 %.not.i11, label %bb.l, label %bb.m, !prof !6

bb.l:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit
  %i.be = load ptr, ptr %i.a, align 8
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -175
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 0
  %i.bi = zext i1 %i.bh to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit
  %i.bj = phi i8 [ 0, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE39SetSucceedingCodeDynamicallyUnreachableEv.exit ], [ %i.bi, %bb.l ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i8 %i.bj, ptr %i.bk, align 8
  ret void
}

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface8DoReturnEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEj(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc noundef zeroext i1 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE31TypeCheckStackAgainstMerge_SlowILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -152
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sub i32 %i.j, %i.n                       ; 2 uses
  %.not = icmp eq i32 %i.o, %i.a
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1020, i32 noundef %i.a, ptr noundef nonnull @.str.1019, i32 noundef %i.o)
  br label %.critedge31

bb.c:                                             ; preds = %bb.a
  %i.p = zext i32 %i.a to i64                     ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [48 x i8], ptr %i.d, i64 %i.q
  %.not29.not43.not = icmp eq i32 %i.a, 0
  br i1 %.not29.not43.not, label %.critedge31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 4 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.v = load i32, ptr %1, align 8
  %i.w = icmp eq i32 %i.v, 1
  %i.x = load ptr, ptr %i.s, align 8
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = select i1 %i.w, ptr %i.s, ptr %i.y       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.02.0.copyload = load i32, ptr %i.aa, align 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.ab, align 8 ; 2 uses
  %i.ac = icmp eq i32 %.sroa.02.0.copyload, %.sroa.0.0.copyload
  br i1 %i.ac, label %.critedge, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, !prof !6

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %bb.d
  %i.ad = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ae = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.02.0.copyload, i32 %.sroa.0.0.copyload, ptr noundef %i.ad, ptr noundef %i.ad) #22
  br i1 %i.ae, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.ag) #22
  %i.ai = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.af) #22
  %i.aj = load ptr, ptr %3, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1021, ptr noundef nonnull @.str.1019, i32 noundef %i.ah, ptr noundef %i.ai, ptr noundef %i.aj)
  %i.ak = load ptr, ptr %3, align 8               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.an = load i64, ptr %i.al, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ap = load ptr, ptr %2, align 8               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.critedge31

.critedge:                                        ; preds = %bb.d, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %.critedge31, label %bb.d, !llvm.loop !193

.critedge31:                                      ; preds = %.critedge, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.b
  %.4 = phi i1 [ false, %bb.b ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ true, %bb.c ], [ true, %.critedge ]
  ret i1 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc noundef zeroext i1 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE31TypeCheckStackAgainstMerge_SlowILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE1ELNS7_9MergeTypeE2ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.l = load ptr, ptr %i.k, align 8
end_hunk_0
