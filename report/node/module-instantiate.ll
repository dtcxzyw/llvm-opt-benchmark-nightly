Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-instantiate?download=true
inline.NumInlined: 6065
inline.NumDeleted: 2754
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeFunctionBodyEv:bb.a
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp slt i64 %i.h, 184
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = load ptr, ptr %i.a, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef 1, ptr noundef %i.j)
  %.pre = load ptr, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.e, %bb.a ], [ %.pre, %bb.b ] ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 13 uses
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i8 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store i8 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store i8 0, ptr %i.x, align 8
  %i.y = load ptr, ptr %i.d, align 8              ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  store ptr %i.z, ptr %i.d, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  store i32 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %.not71 = icmp eq i64 %i.ae, 0
  br i1 %.not71, label %bb.c, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit, !prof !18

bb.c:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.91) #23
  unreachable

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.l, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 120
  store ptr %i.ah, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  store i32 2, ptr %.sroa.531.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  store ptr null, ptr %.sroa.732.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ap = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.aq = load ptr, ptr %i.ao, align 8            ; 3 uses
  %i.ar = icmp ult ptr %i.ap, %i.aq               ; 2 uses
  br i1 %i.an, label %.preheader, label %.preheader73, !prof !19

.preheader73:                                     ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit
  br i1 %i.ar, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader73
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.r

.preheader:                                       ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE9GetReturnEm.exit
  br i1 %i.ar, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 329
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph75, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit
  %i.bg = phi ptr [ %i.ap, %.lr.ph75 ], [ %i.dw, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit ]
  %i.bh = load ptr, ptr %i.ax, align 8
  %i.bi = load ptr, ptr %i.ay, align 8
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %.not.i22 = icmp slt i64 %i.bl, 48
  br i1 %.not.i22, label %bb.e, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit23, !prof !18

bb.e:                                             ; preds = %bb.d
  %i.bm = load ptr, ptr %i.a, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i32 noundef 1, ptr noundef %i.bm)
  %.pre78 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit23

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit23: ; preds = %bb.d, %bb.e
  %i.bn = phi ptr [ %i.bg, %bb.d ], [ %.pre78, %bb.e ] ; 4 uses
  %i.bo = load i8, ptr %i.bn, align 1             ; 3 uses
  switch i8 %i.bo, label %bb.q [
    i8 32, label %bb.f
    i8 65, label %bb.m
  ]

bb.f:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit23
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  %i.bq = load ptr, ptr %i.ao, align 8
  %i.br = icmp ult ptr %i.bp, %i.bq
  br i1 %i.br, label %bb.g, label %.critedge.i.i.i, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.bs = load i8, ptr %i.bp, align 1             ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.bs, -1
  br i1 %.not.i.i.i, label %bb.h, label %.critedge.i.i.i, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.bt = zext nneg i8 %i.bs to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit

.critedge.i.i.i:                                  ; preds = %bb.g, %bb.f
  %i.bu = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.bp, ptr noundef nonnull @.str.287) ; 3 uses
  %i.bv = icmp ult i64 %i.bu, 25769803776
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = lshr i64 %i.bu, 32
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = add nuw nsw i32 %i.bx, 1
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit: ; preds = %bb.h, %.critedge.i.i.i
  %.sroa.05.0.i.i = phi i64 [ %i.bt, %bb.h ], [ %i.bu, %.critedge.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.h ], [ %i.by, %.critedge.i.i.i ]
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 3 uses
  %i.bz = load i32, ptr %i.bb, align 8
  %i.ca = icmp ugt i32 %i.bz, %.sroa.04.0.extract.trunc.i
  br i1 %i.ca, label %bb.i, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE13ValidateLocalEPKhRNS1_14IndexImmediateE.exit, !prof !19

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE13ValidateLocalEPKhRNS1_14IndexImmediateE.exit: ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit
  %i.cb = load ptr, ptr %i.l, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.cc, ptr noundef nonnull @.str.289, i32 noundef %.sroa.04.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.i:                                             ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit
  %i.cd = load i8, ptr %i.bc, align 1, !range !20, !noundef !21
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = and i64 %.sroa.05.0.i.i, 4294967295     ; 2 uses
  br i1 %i.ce, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit, label %._ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread_crit_edge

._ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread_crit_edge: ; preds = %bb.i
  %.pre79 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit: ; preds = %bb.i
  %i.cg = load ptr, ptr %i.bd, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  %i.ci = load i8, ptr %i.ch, align 1, !range !20, !noundef !21
  %i.cj = trunc nuw i8 %i.ci to i1
  %.pre80 = load ptr, ptr %i.l, align 8           ; 2 uses
  br i1 %i.cj, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread, label %bb.j, !prof !27

bb.j:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.pre80, ptr noundef nonnull @.str.288, i32 noundef %.sroa.04.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread: ; preds = %._ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread_crit_edge, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit
  %i.ck = phi ptr [ %.pre79, %._ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread_crit_edge ], [ %.pre80, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit ] ; 3 uses
  %i.cl = load ptr, ptr %i.be, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cf
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.cm, align 4 ; 2 uses
  %i.cn = load i8, ptr %i.bf, align 8, !range !20, !noundef !21
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = and i32 %.sroa.0.0.copyload.i27, 16
  %i.cq = icmp eq i32 %i.cp, 0
  %or.cond.not = select i1 %i.co, i1 %i.cq, i1 false
  br i1 %or.cond.not, label %bb.k, label %.critedge.i, !prof !33

bb.k:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread
  %i.cr = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ck)
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ck, ptr noundef nonnull @.str.290, ptr noundef %i.cr)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit

.critedge.i:                                      ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20is_local_initializedEj.exit.thread
  %i.cs = load ptr, ptr %i.ay, align 8            ; 5 uses
  store ptr %i.ck, ptr %i.cs, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.sroa.0.0.copyload.i27, ptr %.sroa.462.0..sroa_idx, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store i32 2, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.765.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store ptr null, ptr %.sroa.967.0..sroa_idx, align 8
  %i.ct = load ptr, ptr %i.ay, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  store ptr %i.cu, ptr %i.ay, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit: ; preds = %bb.k, %.critedge.i
  %i.cv = load i8, ptr %i.aj, align 8, !range !20, !noundef !21
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.l, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !19

bb.l:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.19) #23
  unreachable

bb.m:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit23
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 3 uses
  %i.cy = load ptr, ptr %i.ao, align 8
  %i.cz = icmp ult ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.n, label %.critedge.i.i.i.i, !prof !19

bb.n:                                             ; preds = %bb.m
  %i.da = load i8, ptr %i.cx, align 1             ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.da, -1
  br i1 %.not.i.i.i.i, label %bb.o, label %.critedge.i.i.i.i, !prof !19

bb.o:                                             ; preds = %bb.n
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 25
  %i.dd = ashr exact i32 %i.dc, 25
  br label %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit.i

.critedge.i.i.i.i:                                ; preds = %bb.n, %bb.m
  %i.de = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.cx, ptr noundef nonnull @.str.1014) ; 3 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.de to i32
  %i.df = icmp ult i64 %i.de, 25769803776
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = lshr i64 %i.de, 32
  %i.dh = trunc nuw nsw i64 %i.dg to i32
  %i.di = add nuw nsw i32 %i.dh, 1
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit.i

_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit.i: ; preds = %.critedge.i.i.i.i, %bb.o
  %i.dj = phi ptr [ %i.bn, %bb.o ], [ %.pre.i, %.critedge.i.i.i.i ]
  %.sroa.05.0.i.i.i = phi i32 [ %i.dd, %bb.o ], [ %.sroa.0.0.extract.trunc.i.i.i, %.critedge.i.i.i.i ]
  %.sroa.5.0.i.i.i = phi i32 [ 2, %bb.o ], [ %i.di, %.critedge.i.i.i.i ] ; 2 uses
  %i.dk = load ptr, ptr %i.ay, align 8            ; 5 uses
  store ptr %i.dj, ptr %i.dk, align 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 5648, ptr %.sroa.419.0..sroa_idx.i, align 8
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 2, ptr %.sroa.621.0..sroa_idx.i, align 8
  %.sroa.722.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.722.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.924.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  store ptr null, ptr %.sroa.924.0..sroa_idx.i, align 8
  %i.dl = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store ptr %i.dm, ptr %i.ay, align 8
  %i.dn = load i8, ptr %i.aj, align 8, !range !20, !noundef !21
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.p, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !19

bb.p:                                             ; preds = %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit.i
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface8I32ConstEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueEi(ptr noundef nonnull align 8 dereferenceable(88) %i.ba, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.dl, i32 noundef %.sroa.05.0.i.i.i) #22
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.q:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit23
  %i.dp = zext i8 %i.bo to i32
  %i.dq = zext i8 %i.bo to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16GetOpcodeHandlerEhE15kOpcodeHandlers, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = tail call noundef i32 %i.ds(ptr noundef nonnull %0, i32 noundef %i.dp) #22
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit, %bb.p, %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit.i, %bb.j, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE13ValidateLocalEPKhRNS1_14IndexImmediateE.exit, %bb.q
  %.0 = phi i32 [ %i.dt, %bb.q ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE13ValidateLocalEPKhRNS1_14IndexImmediateE.exit ], [ %.sroa.5.0.i.i.i, %bb.p ], [ 0, %bb.j ], [ %.sroa.5.0.i.i.i, %_ZN2v88internal4wasm15ImmI32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit.i ], [ %.sroa.5.0.i.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit ]
  %i.du = load ptr, ptr %i.l, align 8
  %i.dv = sext i32 %.0 to i64
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 %i.dv ; 4 uses
  store ptr %i.dw, ptr %i.l, align 8
  %i.dx = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.dy = icmp ult ptr %i.dw, %i.dx
  br i1 %i.dy, label %bb.d, label %.loopexit, !llvm.loop !173

bb.r:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %i.dz = phi ptr [ %i.ap, %.lr.ph ], [ %i.fa, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit ] ; 2 uses
  %i.ea = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = load ptr, ptr %i.as, align 8
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = load i32, ptr %i.at, align 8
  %i.ei = add i32 %i.eh, %i.eg
  %i.ej = icmp eq i32 %i.eb, %i.ei
  br i1 %i.ej, label %bb.s, label %bb.t, !prof !18

bb.s:                                             ; preds = %bb.r
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.ek, ptr %i.ak, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.el = load ptr, ptr %i.au, align 8
  %i.em = load ptr, ptr %i.av, align 8
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %.not.i21 = icmp slt i64 %i.ep, 48
  br i1 %.not.i21, label %bb.u, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit, !prof !18

bb.u:                                             ; preds = %bb.t
  %i.eq = load ptr, ptr %i.a, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i32 noundef 1, ptr noundef %i.eq)
  %.pre77 = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit: ; preds = %bb.t, %bb.u
  %i.er = phi ptr [ %i.dz, %bb.t ], [ %.pre77, %bb.u ]
  %i.es = load i8, ptr %i.er, align 1             ; 2 uses
  %i.et = zext i8 %i.es to i32
  %i.eu = zext i8 %i.es to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16GetOpcodeHandlerEhE15kOpcodeHandlers, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = tail call noundef i32 %i.ew(ptr noundef nonnull %0, i32 noundef %i.et) #22
  %i.ey = load ptr, ptr %i.l, align 8
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds i8, ptr %i.ey, i64 %i.ez ; 4 uses
  store ptr %i.fa, ptr %i.l, align 8
  %i.fb = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.fc = icmp ult ptr %i.fa, %i.fb
  br i1 %i.fc, label %bb.r, label %.loopexit, !llvm.loop !174

.loopexit:                                        ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, %.preheader73, %.preheader
  %i.fd = phi ptr [ %i.dx, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit ], [ %i.aq, %.preheader ], [ %i.aq, %.preheader73 ], [ %i.fb, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit ]
  %i.fe = phi ptr [ %i.dw, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeLocalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit ], [ %i.ap, %.preheader ], [ %i.ap, %.preheader73 ], [ %i.fa, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit ]
  %.not = icmp eq ptr %i.fe, %i.fd
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.286)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_11ControlBaseINS1_27ConstantExpressionInterface5ValueENS1_7Decoder17FullValidationTagEEEE5ResetEPNS0_4ZoneE.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br label %_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorIjE5ResetEPNS0_4ZoneE.exit: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE5ResetEPNS0_4ZoneE.exit, %bb.d
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE9DecodeEndEPS7_NS1_10WasmOpcodeE:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq i32 %i.x, 0
  %or.cond.i.i = select i1 %i.y, i1 %i.v, i1 false
  br i1 %or.cond.i.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = sub i32 %i.s, %i.u
  %i.aa = icmp eq i32 %i.x, 1
  %i.ab = icmp eq i32 %i.z, 1
  %or.cond11.i.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond11.i.i, label %bb.d, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.m, i64 -40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ad, align 8
  %i.ae = load i32, ptr %i.ac, align 4
  %i.af = icmp eq i32 %i.ae, %.sroa.0.0.copyload.i.i
  br i1 %i.af, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.thread.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.i: ; preds = %bb.d, %bb.c
  %i.ag = tail call preserve_mostcc noundef zeroext i1 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE31TypeCheckStackAgainstMerge_SlowILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.w)
  br i1 %i.ag, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.thread.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE8DoReturnILNS7_22StackElementsCountModeE1ELNS7_9MergeTypeE3EEEbv.exit, !prof !188

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.thread.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.i, %bb.d, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !20, !noundef !21
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !19

bb.e:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.thread.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface8DoReturnEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEj(ptr noundef nonnull align 8 dereferenceable(88) %i.ak, ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 0) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.thread.i
  %i.al = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -152
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.ao, i64 %i.ap
  store ptr %i.aq, ptr %i.l, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.al, i64 -175
  store i8 2, ptr %i.ar, align 1
  store i8 0, ptr %i.ah, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE8DoReturnILNS7_22StackElementsCountModeE1ELNS7_9MergeTypeE3EEEbv.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE8DoReturnILNS7_22StackElementsCountModeE1ELNS7_9MergeTypeE3EEEbv.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE26TypeCheckStackAgainstMergeILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE3ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE.exit.i, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.g, !prof !19

bb.g:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE8DoReturnILNS7_22StackElementsCountModeE1ELNS7_9MergeTypeE3EEEbv.exit
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.au, ptr noundef nonnull @.str.1016)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13DecodeEndImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.h:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE8DoReturnILNS7_22StackElementsCountModeE1ELNS7_9MergeTypeE3EEEbv.exit
  %i.ay = load ptr, ptr %i.b, align 8
  %scevgep.i = getelementptr i8, ptr %i.ay, i64 -184
  store ptr %scevgep.i, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13DecodeEndImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.i:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds i8, ptr %i.c, i64 -72 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  %or.cond.i.i2 = select i1 %i.bb, i1 %i.v, i1 false
  br i1 %or.cond.i.i2, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = sub i32 %i.s, %i.u
  %i.bd = icmp eq i32 %i.ba, 1
  %i.be = icmp eq i32 %i.bc, 1
  %or.cond11.i.i3 = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond11.i.i3, label %bb.k, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds i8, ptr %i.m, i64 -40
  %i.bg = getelementptr inbounds i8, ptr %i.c, i64 -56
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.bg, align 8
  %i.bh = load i32, ptr %i.bf, align 4
  %i.bi = icmp eq i32 %i.bh, %.sroa.0.0.copyload.i.i4
  br i1 %i.bi, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit.thread, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit: ; preds = %bb.j, %bb.k
  %i.bj = tail call preserve_mostcc noundef zeroext i1 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE31TypeCheckStackAgainstMerge_SlowILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE1ELNS7_9MergeTypeE2ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS5_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.az)
  br i1 %i.bj, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit.thread, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13DecodeEndImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !188

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit.thread: ; preds = %bb.k, %bb.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit
  tail call void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE10PopControlEv(ptr noundef nonnull align 8 dereferenceable(336) %0)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13DecodeEndImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13DecodeEndImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.g, %bb.h, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit.thread
  %.0.i = phi i32 [ 1, %bb.h ], [ 0, %bb.g ], [ 1, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit.thread ], [ 0, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17TypeCheckFallThruEv.exit ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1023, i32 noundef %1)
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE15DecodeGlobalGetEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::GlobalIndexImmediate", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i.i, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.g, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %.critedge.i.i.i.i, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.g to i64
  br label %_ZN2v88internal4wasm20GlobalIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.i = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.189) ; 3 uses
  %i.j = icmp ult i64 %i.i, 25769803776
  tail call void @llvm.assume(i1 %i.j)
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw nsw i64 %i.k to i32
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm20GlobalIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm20GlobalIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.c, %.critedge.i.i.i.i
  %i.m = phi ptr [ %i.b, %bb.c ], [ %.pre, %.critedge.i.i.i.i ] ; 4 uses
  %.sroa.05.0.i.i.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %.critedge.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i32 [ 1, %bb.c ], [ %i.l, %.critedge.i.i.i.i ] ; 2 uses
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %.sroa.05.0.i.i.i to i32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  store i32 %.sroa.04.0.extract.trunc.i.i, ptr %2, align 8
  store i32 %.sroa.5.0.i.i.i, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  %i.z = and i64 %.sroa.05.0.i.i.i, 4294967295    ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %_ZN2v88internal4wasm20GlobalIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.o, ptr noundef nonnull @.str.1024, i32 noundef %.sroa.04.0.extract.trunc.i.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19DecodeGlobalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.e:                                             ; preds = %_ZN2v88internal4wasm20GlobalIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.z ; 4 uses
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ae = load i8, ptr %i.ad, align 8, !range !20, !noundef !21
  %i.af = trunc nuw i8 %i.ae to i1                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ah = load i8, ptr %i.ag, align 4, !range !20
  %i.ai = trunc nuw i8 %i.ah to i1
  %not..i = xor i1 %i.af, true
  %i.aj = select i1 %not..i, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.o, ptr noundef nonnull @.str.1025, i32 noundef %.sroa.04.0.extract.trunc.i.i, ptr noundef nonnull @.str.1019)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19DecodeGlobalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.al = load i8, ptr %i.ak, align 4, !range !20, !noundef !21
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20GlobalIndexImmediateE.exit, !prof !18

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.o, ptr noundef nonnull @.str.1026)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19DecodeGlobalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20GlobalIndexImmediateE.exit: ; preds = %bb.g
  %.sroa.0.0.copyload.i = load i32, ptr %i.ac, align 8 ; 2 uses
  %i.an = and i32 %.sroa.0.0.copyload.i, 16
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond.not = select i1 %i.af, i1 %i.ao, i1 false
  br i1 %or.cond.not, label %bb.i, label %.critedge.i.i, !prof !33

bb.i:                                             ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20GlobalIndexImmediateE.exit
  %i.ap = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.m)
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.m, ptr noundef nonnull @.str.290, ptr noundef %i.ap)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i

.critedge.i.i:                                    ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20GlobalIndexImmediateE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 5 uses
  store ptr %i.m, ptr %i.ar, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 2, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.722.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr null, ptr %.sroa.924.0..sroa_idx, align 8
  %i.as = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store ptr %i.at, ptr %i.aq, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i: ; preds = %.critedge.i.i, %bb.i
  %.0.i.i = phi ptr [ %i.as, %.critedge.i.i ], [ null, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.av = load i8, ptr %i.au, align 8, !range !20, !noundef !21
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %bb.k, !prof !19

bb.j:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface9GlobalGetEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueERKNS1_20GlobalIndexImmediateE(ptr noundef nonnull align 8 dereferenceable(88) %i.ax, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.0.i.i, ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  %.pre28 = load i32, ptr %i.n, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i
  %i.ay = phi i32 [ %.pre28, %bb.j ], [ %.sroa.5.0.i.i.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i ]
  %i.az = add i32 %i.ay, 1
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19DecodeGlobalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19DecodeGlobalGetImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.f, %bb.h, %bb.d, %bb.k
  %.0.i = phi i32 [ %i.az, %bb.k ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeI64ConstEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.g, -1
  br i1 %.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl nuw i64 %i.h, 57
  %i.j = ashr exact i64 %i.i, 57
  br label %_ZN2v88internal4wasm15ImmI64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

.critedge.i.i.i:                                  ; preds = %bb.b, %bb.a
  %i.k = tail call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1027) ; 2 uses
  %.fca.1.extract.i.i.i = extractvalue { i64, i32 } %i.k, 1 ; 2 uses
  %i.l = icmp ult i32 %.fca.1.extract.i.i.i, 11
  tail call void @llvm.assume(i1 %i.l)
  %i.m = extractvalue { i64, i32 } %i.k, 0
  %i.n = add nuw nsw i32 %.fca.1.extract.i.i.i, 1
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm15ImmI64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm15ImmI64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.c, %.critedge.i.i.i
  %i.o = phi ptr [ %i.b, %bb.c ], [ %.pre, %.critedge.i.i.i ]
  %.fca.1.extract.pre-phi.i = phi i32 [ 2, %bb.c ], [ %i.n, %.critedge.i.i.i ]
  %.fca.1.insert.i.merged.i.i = phi i64 [ %i.j, %bb.c ], [ %i.m, %.critedge.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 5 uses
  store ptr %i.o, ptr %i.q, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 5904, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 2, ptr %.sroa.622.0..sroa_idx, align 8
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.723.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr null, ptr %.sroa.925.0..sroa_idx, align 8
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.s, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.u = load i8, ptr %i.t, align 8, !range !20, !noundef !21
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI64ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !19

bb.d:                                             ; preds = %_ZN2v88internal4wasm15ImmI64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface8I64ConstEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueEl(ptr noundef nonnull align 8 dereferenceable(88) %i.w, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.r, i64 noundef %.fca.1.insert.i.merged.i.i) #22
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI64ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeI64ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15ImmI64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit, %bb.d
  ret i32 %.fca.1.extract.pre-phi.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeF32ConstEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp slt i64 %i.h, 4
  br i1 %i.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1028)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm15ImmF32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i.i25 = load float, ptr %i.c, align 1
  br label %_ZN2v88internal4wasm15ImmF32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm15ImmF32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.c ]
  %i.k = phi float [ 0.000000e+00, %bb.b ], [ %.0.copyload.i.i.i.i.i25, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 6160, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 2, ptr %.sroa.621.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.722.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %.sroa.924.0..sroa_idx, align 8
  %i.n = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.o, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.q = load i8, ptr %i.p, align 8, !range !20, !noundef !21
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeF32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !19

bb.d:                                             ; preds = %_ZN2v88internal4wasm15ImmF32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface8F32ConstEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueEf(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.n, float noundef %i.k) #22
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeF32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeF32ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15ImmF32ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit, %bb.d
  ret i32 5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeF64ConstEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp slt i64 %i.h, 8
  br i1 %i.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1029)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm15ImmF64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i.i26 = load double, ptr %i.c, align 1
  br label %_ZN2v88internal4wasm15ImmF64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm15ImmF64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.c ]
  %i.k = phi double [ 0.000000e+00, %bb.b ], [ %.0.copyload.i.i.i.i.i26, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 5 uses
  store ptr %i.j, ptr %i.m, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 6416, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 2, ptr %.sroa.622.0..sroa_idx, align 8
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.723.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.925.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr null, ptr %.sroa.925.0..sroa_idx, align 8
  %i.n = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.o, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.q = load i8, ptr %i.p, align 8, !range !20, !noundef !21
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeF64ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !19

bb.d:                                             ; preds = %_ZN2v88internal4wasm15ImmF64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface8F64ConstEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueEd(ptr noundef nonnull align 8 dereferenceable(88) %i.s, ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.n, double noundef %i.k) #22
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeF64ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18DecodeF64ConstImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15ImmF64ImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit, %bb.d
  ret i32 9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeI32AddEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8388608
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19BuildSimpleOperatorENS1_10WasmOpcodeENS1_9ValueTypeES9_S9_(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 106, i32 5648, i32 5648, i32 5648)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeI32SubEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8388608
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19BuildSimpleOperatorENS1_10WasmOpcodeENS1_9ValueTypeES9_S9_(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 107, i32 5648, i32 5648, i32 5648)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeI32MulEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8388608
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19BuildSimpleOperatorENS1_10WasmOpcodeENS1_9ValueTypeES9_S9_(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 108, i32 5648, i32 5648, i32 5648)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeI64AddEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8388608
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19BuildSimpleOperatorENS1_10WasmOpcodeENS1_9ValueTypeES9_S9_(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 124, i32 5904, i32 5904, i32 5904)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeI64SubEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8388608
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19BuildSimpleOperatorENS1_10WasmOpcodeENS1_9ValueTypeES9_S9_(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 125, i32 5904, i32 5904, i32 5904)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeI64MulEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8388608
  store i64 %i.d, ptr %i.b, align 8
  %i.e = tail call noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19BuildSimpleOperatorENS1_10WasmOpcodeENS1_9ValueTypeES9_S9_(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 126, i32 5904, i32 5904, i32 5904)
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13DecodeRefNullEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 524288
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %.sroa.05.0.copyload.i = load i32, ptr %i.e, align 8
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = tail call i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.i, i32 %.sroa.05.0.copyload.i, ptr noundef %i.f) ; 2 uses
  %.sroa.05.0.extract.trunc.i = trunc i64 %i.j to i32 ; 5 uses
  %.sroa.46.0.extract.shift.i = lshr i64 %i.j, 32
  %.sroa.46.0.extract.trunc.i = trunc nuw i64 %.sroa.46.0.extract.shift.i to i32
  %i.k = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = and i32 %.sroa.05.0.extract.trunc.i, 268435427
  %i.p = icmp eq i32 %i.o, 514
  br i1 %i.p, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefNullImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.q = and i32 %.sroa.05.0.extract.trunc.i, 3
  %i.r = icmp eq i32 %i.q, 3
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = lshr i32 %.sroa.05.0.extract.trunc.i, 8
  %i.t = and i32 %i.s, 1048575                    ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 24
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.u
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.1034, i32 noundef %i.t)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefNullImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.u ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 22
  %i.af = load i8, ptr %i.ae, align 2, !range !20, !noundef !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = and i32 %.sroa.05.0.extract.trunc.i, -241
  %i.aj = shl nuw nsw i8 %i.af, 4
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = zext i8 %i.ah to i32
  %i.am = shl nuw nsw i32 %i.al, 5
  %i.an = or disjoint i32 %i.ai, %i.ak
  %i.ao = or i32 %i.an, %i.am
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.4.0.ph = phi i32 [ %.sroa.05.0.extract.trunc.i, %bb.b ], [ %i.ao, %bb.e ] ; 4 uses
  %i.ap = load i32, ptr %i.e, align 8             ; 2 uses
  %i.aq = and i32 %i.ap, 1024
  %.not40 = icmp eq i32 %i.aq, 0
  br i1 %.not40, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = and i32 %.sroa.4.0.ph, 268435427
  switch i32 %i.ar, label %.critedge.i [
    i32 5121, label %bb.h
    i32 4865, label %bb.h
    i32 5377, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.l, ptr noundef nonnull @.str.1033)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefNullImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.as = or i32 %.sroa.4.0.ph, 4
  %i.at = and i32 %.sroa.4.0.ph, 3
  %i.au = icmp ne i32 %i.at, 3
  %i.av = and i32 %i.ap, 8
  %.not.i = icmp eq i32 %i.av, 0
  %or.cond = or i1 %i.au, %.not.i
  br i1 %or.cond, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit, label %bb.i, !prof !32

bb.i:                                             ; preds = %.critedge.i
  %i.aw = or i32 %.sroa.4.0.ph, 12
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit: ; preds = %bb.i, %.critedge.i
  %.sroa.05.0 = phi i32 [ %i.as, %.critedge.i ], [ %i.aw, %bb.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ay = load i8, ptr %i.ax, align 8, !range !20, !noundef !21
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = and i32 %.sroa.05.0, 16
  %i.bb = icmp eq i32 %i.ba, 0
  %or.cond39.not = select i1 %i.az, i1 %i.bb, i1 false
  br i1 %or.cond39.not, label %bb.j, label %.critedge.i.i, !prof !33

bb.j:                                             ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit
  %i.bc = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.k)
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.k, ptr noundef nonnull @.str.290, ptr noundef %i.bc)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i

.critedge.i.i:                                    ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 5 uses
  store ptr %i.k, ptr %i.be, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 %.sroa.05.0, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 2, ptr %.sroa.630.0..sroa_idx, align 8
  %.sroa.731.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.731.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.933.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr null, ptr %.sroa.933.0..sroa_idx, align 8
  %i.bf = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store ptr %i.bg, ptr %i.bd, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i: ; preds = %.critedge.i.i, %bb.j
  %.0.i.i = phi ptr [ %i.bf, %.critedge.i.i ], [ null, %bb.j ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bi = load i8, ptr %i.bh, align 8, !range !20, !noundef !21
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.k, label %bb.l, !prof !19

bb.k:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface7RefNullEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEENS1_9ValueTypeEPNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(88) %i.bk, ptr noundef nonnull align 8 dereferenceable(336) %0, i32 %.sroa.05.0, ptr noundef %.0.i.i) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i
  %i.bl = add i32 %.sroa.46.0.extract.trunc.i, 1
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefNullImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefNullImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.d, %bb.a, %bb.h, %bb.l
  %.0.i = phi i32 [ %i.bl, %bb.l ], [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13DecodeRefFuncEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 524288
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ult ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %.critedge.i.i.i, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.k = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.k, -1
  br i1 %.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i8 %i.k to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit

.critedge.i.i.i:                                  ; preds = %bb.b, %bb.a
  %i.m = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.76) ; 3 uses
  %i.n = icmp ult i64 %i.m, 25769803776
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.m, 32
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = add nuw nsw i32 %i.p, 1
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit: ; preds = %bb.c, %.critedge.i.i.i
  %.sroa.05.0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.m, %.critedge.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.c ], [ %i.q, %.critedge.i.i.i ] ; 2 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 5
  %i.ab = and i64 %.sroa.05.0.i.i, 4294967295     ; 2 uses
  %i.ac = icmp ugt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE16ValidateFunctionEPKhRNS1_14IndexImmediateE.exit, !prof !19

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE16ValidateFunctionEPKhRNS1_14IndexImmediateE.exit: ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit
  %i.ad = load ptr, ptr %i.e, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.1035, i32 noundef %.sroa.04.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefFuncImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.d:                                             ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.sroa.05.0.copyload.i = load i32, ptr %i.ag, align 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = sdiv exact i64 %i.an, 24
  %i.ap = zext i32 %.sroa.05.0.copyload.i to i64  ; 2 uses
  %i.aq = icmp ugt i64 %i.ao, %i.ap
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp ult i32 %.sroa.05.0.copyload.i, 1048576
  br i1 %i.ar, label %_ZN2v88internal4wasm9ValueType3RefENS1_15ModuleTypeIndexEbNS1_11RefTypeKindE.exit, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.280) #23
  unreachable

_ZN2v88internal4wasm9ValueType3RefENS1_15ModuleTypeIndexEbNS1_11RefTypeKindE.exit: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 22
  %i.au = load i8, ptr %i.at, align 2, !range !20, !noundef !21
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = select i1 %i.av, i32 51, i32 35
  %i.ax = shl nuw nsw i32 %.sroa.05.0.copyload.i, 8
  %i.ay = or disjoint i32 %i.aw, %i.ax            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 8
  %i.ba = and i32 %.sroa.0.0.copyload.i, 8
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %_ZN2v88internal4wasm9ValueType3RefENS1_15ModuleTypeIndexEbNS1_11RefTypeKindE.exit
  %i.bb = or disjoint i32 %i.ay, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit: ; preds = %_ZN2v88internal4wasm9ValueType3RefENS1_15ModuleTypeIndexEbNS1_11RefTypeKindE.exit, %bb.f
  %.sroa.0.0.i = phi i32 [ %i.bb, %bb.f ], [ %i.ay, %_ZN2v88internal4wasm9ValueType3RefENS1_15ModuleTypeIndexEbNS1_11RefTypeKindE.exit ] ; 2 uses
  %i.bc = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.be = load i8, ptr %i.bd, align 8, !range !20, !noundef !21
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = and i32 %.sroa.0.0.i, 16
  %i.bh = icmp eq i32 %i.bg, 0
  %or.cond.not = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond.not, label %bb.g, label %.critedge.i.i, !prof !33

bb.g:                                             ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit
  %i.bi = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bc)
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bc, ptr noundef nonnull @.str.290, ptr noundef %i.bi)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i

.critedge.i.i:                                    ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 5 uses
  store ptr %i.bc, ptr %i.bk, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.sroa.0.0.i, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 2, ptr %.sroa.626.0..sroa_idx, align 8
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.727.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.929.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr null, ptr %.sroa.929.0..sroa_idx, align 8
  %i.bl = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store ptr %i.bm, ptr %i.bj, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i: ; preds = %.critedge.i.i, %bb.g
  %.0.i.i = phi ptr [ %i.bl, %.critedge.i.i ], [ null, %bb.g ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bo = load i8, ptr %i.bn, align 8, !range !20, !noundef !21
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.h, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefFuncImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !19

bb.h:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm27ConstantExpressionInterface7RefFuncEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEjPNS2_5ValueE(ptr noundef nonnull align 8 dereferenceable(88) %i.bq, ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.04.0.extract.trunc.i, ptr noundef %.0.i.i) #22
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefFuncImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE17DecodeRefFuncImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i, %bb.h, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE16ValidateFunctionEPKhRNS1_14IndexImmediateE.exit
  %.0.i = phi i32 [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE16ValidateFunctionEPKhRNS1_14IndexImmediateE.exit ], [ %.sroa.5.0.i.i, %bb.h ], [ %.sroa.5.0.i.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE8DecodeGCEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ult ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %.critedge.i.i.i, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.g, -1
  br i1 %.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.h = zext nneg i8 %i.g to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i.i:                                  ; preds = %bb.b, %bb.a
  %i.i = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.c, ptr noundef nonnull @.str.1012) ; 3 uses
  %i.j = icmp ult i64 %i.i, 25769803776
  tail call void @llvm.assume(i1 %i.j)
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw nsw i64 %i.k to i32
  %i.m = add nuw nsw i32 %i.l, 1
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i.i, %bb.c
  %.sroa.05.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %.critedge.i.i.i ] ; 2 uses
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.c ], [ %i.m, %.critedge.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 3 uses
  %i.n = icmp ugt i32 %.sroa.0.0.extract.trunc.i, 4095
  br i1 %i.n, label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.thread, label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, !prof !18

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.thread: ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.o = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i, 255
  %i.p = load i8, ptr %i.b, align 1
  %i.q = zext i8 %i.p to i64
  %. = select i1 %i.o, i64 12, i64 8
  %i.r = shl nuw nsw i64 %i.q, %.
  %i.s = or disjoint i64 %i.r, %.sroa.05.0.i.i
  %.sroa.02.0.extract.trunc = trunc i64 %i.s to i32 ; 4 uses
  %.not.i = icmp eq i32 %.sroa.02.0.extract.trunc, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12DecodeGCImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.t = icmp sgt i32 %.sroa.02.0.extract.trunc, 64383
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.v = load i32, ptr %i.u, align 8
  %i.w = and i32 %i.v, 1024
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.f, label %bb.g, !prof !18

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
  %i.f = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !20, !noundef !21
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
  br i1 %i.m, label %bb.f, label %.critedge.i.i.i, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.j, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.n, -1
  br i1 %.not.i.i.i, label %bb.g, label %.critedge.i.i.i, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i8 %i.n to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %i.p = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.j, ptr noundef nonnull @.str.1012) ; 3 uses
  %i.q = icmp ult i64 %i.p, 25769803776
  tail call void @llvm.assume(i1 %i.q)
  %i.r = lshr i64 %i.p, 32
  %i.s = add nuw nsw i64 %i.r, 1
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %.critedge.i.i.i, %bb.g
  %.sroa.05.0.i.i = phi i64 [ %i.o, %bb.g ], [ %i.p, %.critedge.i.i.i ] ; 3 uses
  %.sroa.5.0.i.i = phi i64 [ 2, %bb.g ], [ %i.s, %.critedge.i.i.i ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.extract.trunc.i, 4095
  br i1 %i.t, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.i, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.i:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i
  %i.u = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i, 255
  %i.v = load i8, ptr %i.i, align 1
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = shl nuw nsw i64 %i.w, 12
  %i.y = or disjoint i64 %i.x, %.sroa.05.0.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE:bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i81:                                    ; preds = %bb.p
  %i.bt = shl nuw i64 %i.bb, 8
  %i.bu = ashr exact i64 %i.bt, 8
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i61:                                  ; preds = %bb.m
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i70:                                    ; preds = %bb.n
  %i.bv = shl nuw i64 %i.au, 15
  %i.bw = ashr exact i64 %i.bv, 15
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i50:                                  ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i59:                                    ; preds = %bb.l
  %i.bx = shl nuw i64 %i.an, 22
  %i.by = ashr exact i64 %i.bx, 22
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i39:                                  ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i48:                                    ; preds = %bb.j
  %i.bz = shl nuw i64 %i.ag, 29
  %i.ca = ashr exact i64 %i.bz, 29
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i28:                                  ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.u, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i37:                                    ; preds = %bb.h
  %i.cb = shl nuw i64 %i.z, 36
  %i.cc = ashr exact i64 %i.cb, 36
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i17:                                  ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i26:                                    ; preds = %bb.f
  %i.cd = shl nuw i64 %i.s, 43
  %i.ce = ashr exact i64 %i.cd, 43
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i6:                                   ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i15:                                    ; preds = %bb.d
  %i.cf = shl nuw i64 %i.l, 50
  %i.cg = ashr exact i64 %i.cf, 50
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i:                                    ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.186, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge.i:                                      ; preds = %bb.b
  %i.ch = shl nuw i64 %i.e, 57
  %i.ci = ashr exact i64 %i.ch, 57
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm64ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %.critedge.i15, %.critedge14.i6, %.critedge.i37, %.critedge14.i28, %.critedge.i59, %.critedge14.i50, %.critedge.i81, %.critedge14.i72, %bb.v, %.thread, %bb.u, %bb.u, %.critedge14.i83, %.critedge.i92, %.critedge14.i61, %.critedge.i70, %.critedge14.i39, %.critedge.i48, %.critedge14.i17, %.critedge.i26, %.critedge14.i, %.critedge.i
  %.sroa.6.0 = phi i32 [ 1, %.critedge.i ], [ 0, %.critedge14.i ], [ 2, %.critedge.i15 ], [ 0, %.critedge14.i6 ], [ 3, %.critedge.i26 ], [ 0, %.critedge14.i17 ], [ 4, %.critedge.i37 ], [ 0, %.critedge14.i28 ], [ 5, %.critedge.i48 ], [ 0, %.critedge14.i39 ], [ 6, %.critedge.i59 ], [ 0, %.critedge14.i50 ], [ 7, %.critedge.i70 ], [ 0, %.critedge14.i61 ], [ 8, %.critedge.i81 ], [ 0, %.critedge14.i72 ], [ 9, %.critedge.i92 ], [ 0, %.critedge14.i83 ], [ 0, %.thread ], [ 0, %bb.v ], [ 10, %bb.u ], [ 10, %bb.u ]
  %.sroa.0.0 = phi i64 [ %i.ci, %.critedge.i ], [ 0, %.critedge14.i ], [ %i.cg, %.critedge.i15 ], [ 0, %.critedge14.i6 ], [ %i.ce, %.critedge.i26 ], [ 0, %.critedge14.i17 ], [ %i.cc, %.critedge.i37 ], [ 0, %.critedge14.i28 ], [ %i.ca, %.critedge.i48 ], [ 0, %.critedge14.i39 ], [ %i.by, %.critedge.i59 ], [ 0, %.critedge14.i50 ], [ %i.bw, %.critedge.i70 ], [ 0, %.critedge14.i61 ], [ %i.bu, %.critedge.i81 ], [ 0, %.critedge14.i72 ], [ %i.bs, %.critedge.i92 ], [ 0, %.critedge14.i83 ], [ 0, %.thread ], [ 0, %bb.v ], [ %i.bq, %bb.u ], [ %i.bq, %bb.u ]
  %.fca.0.insert.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert.i = insertvalue { i64, i32 } %.fca.0.insert.i, i32 %.sroa.6.0, 1
  ret { i64, i32 } %.fca.1.insert.i
}

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface8F32ConstEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueEf(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface8F64ConstEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEEPNS2_5ValueEd(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE19BuildSimpleOperatorENS1_10WasmOpcodeENS1_9ValueTypeES9_S9_(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, i32 %2, i32 %3, i32 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.v8::internal::wasm::ConstantExpressionInterface::Value", align 8 ; 6 uses
  %.sroa.6.i12 = alloca [36 x i8], align 4        ; 4 uses
  %6 = alloca %"struct.v8::internal::wasm::ConstantExpressionInterface::Value", align 8 ; 6 uses
  %.sroa.6.i = alloca [36 x i8], align 4          ; 4 uses
  %7 = alloca %"struct.std::array.1285", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !noalias !199
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -152
  %i.d = load i32, ptr %i.c, align 8, !noalias !199
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !199 ; 2 uses
  %i.h = load ptr, ptr %i.e, align 8, !noalias !199
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 48
  %i.m = trunc i64 %i.l to i32
  %i.n = add i32 %i.d, 2
  %.not.i = icmp ugt i32 %i.n, %i.m
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.o = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 2), !noalias !199 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !noalias !199
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit: ; preds = %bb.a, %bb.b
  %i.p = phi ptr [ %i.g, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  %scevgep.i = getelementptr i8, ptr %i.p, i64 -96 ; 2 uses
  store ptr %scevgep.i, ptr %i.f, align 8, !noalias !199
  %.sroa.06.0.copyload.i = load ptr, ptr %scevgep.i, align 8, !noalias !200
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -88
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !200 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 -84
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx.i, i64 36, i1 false), !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !200
  %i.q = icmp eq i32 %.sroa.2.0.copyload.i, %3
  br i1 %i.q, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i, !prof !19

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !noalias !200 ; 2 uses
  %i.t = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i, i32 %3, ptr noundef %i.s, ptr noundef %i.s) #22, !noalias !200
  %i.u = icmp eq i32 %.sroa.2.0.copyload.i, 514
  %or.cond.i = or i1 %i.u, %i.t
  %i.v = icmp eq i32 %3, 514
  %or.cond10.i = or i1 %i.v, %or.cond.i
  br i1 %or.cond10.i, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit, label %bb.c, !prof !32

bb.c:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i
  store ptr %.sroa.06.0.copyload.i, ptr %6, align 8, !noalias !200
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !200
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, i64 36, i1 false), !noalias !200
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %6, i32 %3), !noalias !200
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !200
  %i.w = load ptr, ptr %i.f, align 8, !noalias !200 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.06.0.copyload.i13 = load ptr, ptr %i.y, align 8, !noalias !201
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %.sroa.2.0.copyload.i15 = load i32, ptr %.sroa.2.0..sroa_idx.i14, align 8, !noalias !201 ; 4 uses
  %.sroa.3.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i12, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx.i16, i64 36, i1 false), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !201
  %i.z = icmp eq i32 %.sroa.2.0.copyload.i15, %4
  br i1 %i.z, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit22, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i17, !prof !19

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i17: ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !201 ; 2 uses
  %i.ac = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i15, i32 %4, ptr noundef %i.ab, ptr noundef %i.ab) #22, !noalias !201
  %i.ad = icmp eq i32 %.sroa.2.0.copyload.i15, 514
  %or.cond.i18 = or i1 %i.ad, %i.ac
  %i.ae = icmp eq i32 %4, 514
  %or.cond10.i19 = or i1 %i.ae, %or.cond.i18
  br i1 %or.cond10.i19, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit22, label %bb.d, !prof !32

bb.d:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i17
  store ptr %.sroa.06.0.copyload.i13, ptr %5, align 8, !noalias !201
  %.sroa.4.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.sroa.2.0.copyload.i15, ptr %.sroa.4.0..sroa_idx.i20, align 8, !noalias !201
  %.sroa.6.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx.i21, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i12, i64 36, i1 false), !noalias !201
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 1, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %5, i32 %4), !noalias !201
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit22

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit22: ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i17, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i12)
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !201
  %i.af = load ptr, ptr %i.f, align 8, !noalias !201 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  %i.ah = icmp eq i32 %2, 2
  br i1 %i.ah, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit, label %bb.e

bb.e:                                             ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit22
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = load i8, ptr %i.ak, align 8, !range !20, !noundef !21
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = and i32 %2, 16
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond.not = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond.not, label %bb.f, label %.critedge.i, !prof !33

bb.f:                                             ; preds = %bb.e
  %i.ap = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.aj)
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.aj, ptr noundef nonnull @.str.290, ptr noundef %i.ap)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit

.critedge.i:                                      ; preds = %bb.e
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.747.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.af, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %2, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 2, ptr %.sroa.646.0..sroa_idx, align 8
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr null, ptr %.sroa.949.0..sroa_idx, align 8
  %i.aq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store ptr %i.ar, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit: ; preds = %.critedge.i, %bb.f, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit22
  %i.as = phi ptr [ null, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeES9_EQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_.exit22 ], [ %i.aq, %.critedge.i ], [ null, %bb.f ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.au = load i8, ptr %i.at, align 8, !range !20, !noundef !21
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.h, !prof !19

bb.g:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEENS1_10WasmOpcodeERKNS2_5ValueESC_PSA_(ptr noundef nonnull align 8 dereferenceable(88) %i.aw, ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.as) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret i32 1
}

declare void @_ZN2v88internal4wasm27ConstantExpressionInterface5BinOpEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEENS1_10WasmOpcodeERKNS2_5ValueESC_PSA_(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -152
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -175
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 48
  %i.p = trunc i64 %i.o to i32
  %i.q = sub i32 %i.p, %i.d
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE23NotEnoughArgumentsErrorEii(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, i32 noundef %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 9 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 48
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = sub i32 %i.z, %i.d                      ; 4 uses
  %i.ab = sub nsw i32 %1, %i.aa                   ; 10 uses
  %i.ac = add nsw i32 %i.ab, 1                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.v
  %i.ah = sdiv exact i64 %i.ag, 48
  %i.ai = sext i32 %i.ac to i64
  %.not.i = icmp slt i64 %i.ah, %i.ai
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit, !prof !18

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i32 noundef %i.ac, ptr noundef %i.ak)
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit: ; preds = %bb.c, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = icmp sgt i32 %i.ab, 0                   ; 2 uses
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %.pre = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ao = add i32 %i.d, %1
  %.neg = add i32 %i.z, 1
  %xtraiter = and i32 %i.ab, 1
  %i.ap = icmp eq i32 %i.ao, %.neg
  br i1 %i.ap, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ab, 2147483646
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod60 = trunc i32 %i.ab to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %.sroa.749.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.epil.init, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.749.0..sroa_idx.epil, i8 0, i64 16, i1 false)
  store ptr %i.am, ptr %.epil.init, align 8
  %.sroa.446.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.epil.init, i64 8
  store i32 514, ptr %.sroa.446.0..sroa_idx.epil, align 8
  %.sroa.648.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.epil.init, i64 16
  store i32 2, ptr %.sroa.648.0..sroa_idx.epil, align 8
  %.sroa.9.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.epil.init, i64 40
  store ptr null, ptr %.sroa.9.0..sroa_idx.epil, align 8
  %i.aq = load ptr, ptr %i.s, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store ptr %i.ar, ptr %i.s, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %i.as = icmp sgt i32 %i.aa, 0
  br i1 %i.as, label %bb.e, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.at = phi ptr [ %.pre, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.749.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.am, ptr %i.at, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 514, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i32 2, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8
  %i.au = load ptr, ptr %i.s, align 8             ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  store ptr %i.av, ptr %i.s, align 8
  %.sroa.749.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.749.0..sroa_idx.1, i8 0, i64 16, i1 false)
  store ptr %i.am, ptr %i.av, align 8
  %.sroa.446.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i32 514, ptr %.sroa.446.0..sroa_idx.1, align 8
  %.sroa.648.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store i32 2, ptr %.sroa.648.0..sroa_idx.1, align 8
  %.sroa.9.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store ptr null, ptr %.sroa.9.0..sroa_idx.1, align 8
  %i.aw = load ptr, ptr %i.s, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  store ptr %i.ax, ptr %i.s, align 8
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !202

bb.e:                                             ; preds = %._crit_edge
  %i.ay = load ptr, ptr %i.s, align 8
  %i.az = zext i32 %1 to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [48 x i8], ptr %i.ay, i64 %i.ba ; 7 uses
  %i.bc = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.bd = sext i32 %i.ab to i64
  %invariant.gep = getelementptr [48 x i8], ptr %i.bb, i64 %i.bd ; 3 uses
  %xtraiter61 = and i64 %i.bc, 1
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.e
  %indvars.iv.next.prol = add nsw i64 %i.bc, -1   ; 3 uses
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.bb, i64 %indvars.iv.next.prol
  %gep.prol = getelementptr [48 x i8], ptr %invariant.gep, i64 %indvars.iv.next.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %gep.prol, ptr noundef nonnull align 8 dereferenceable(48) %i.be, i64 48, i1 false)
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.e
  %indvars.iv.unr = phi i64 [ %i.bc, %bb.e ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.bf = icmp eq i32 %i.aa, 1
  br i1 %i.bf, label %.preheader, label %.new

.preheader:                                       ; preds = %.new, %.prol.loopexit
  br i1 %i.an, label %.lr.ph53.preheader, label %.loopexit

.lr.ph53.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 2 uses
  %xtraiter63 = and i64 %wide.trip.count, 1
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i8, ptr %i.ag, align 4
  %i.ai = icmp eq i8 %i.ah, 2
  br i1 %i.ai, label %bb.e, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit, !prof !29

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit: ; preds = %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit, %_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.s, ptr noundef nonnull @.str.1049, i32 noundef %.sroa.04.0.extract.trunc.i.i)
  br label %bb.q

bb.e:                                             ; preds = %_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i
  %i.aj = load ptr, ptr %i.af, align 8            ; 3 uses
  store ptr %i.aj, ptr %i.q, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 22
  %i.al = load i8, ptr %i.ak, align 2, !range !20, !noundef !21 ; 2 uses
  store i8 %i.al, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13PopDescriptorENS1_15ModuleTypeIndexE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %12, ptr noundef nonnull align 8 dereferenceable(336) %0, i32 %.sroa.04.0.extract.trunc.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.am = load i16, ptr %i.aj, align 8, !noalias !240 ; 5 uses
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !240
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -152
  %i.ar = load i32, ptr %i.aq, align 8, !noalias !240
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.au = load ptr, ptr %i.at, align 8, !noalias !240 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !noalias !240
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = sdiv exact i64 %i.ay, 48
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.ar, %i.an
  %.not.i.i = icmp ugt i32 %i.bb, %i.ba
  br i1 %.not.i.i, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i, !prof !18

bb.f:                                             ; preds = %bb.e
  %i.bc = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.an), !noalias !240 ; 0 uses
  %.pre1113 = load ptr, ptr %i.at, align 8, !noalias !240
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i: ; preds = %bb.f, %bb.e
  %i.bd = phi ptr [ %.pre1113, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.be = zext i16 %i.am to i64                   ; 4 uses
  %.idx1063 = mul nsw i64 %i.be, -48
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %.idx1063 ; 2 uses
  %.not1073 = icmp eq i16 %i.am, 0
  br i1 %.not1073, label %_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit, label %.lr.ph1071

.lr.ph1071:                                       ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4903.0..sroa_idx904 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.6906.0..sroa_idx907 = getelementptr inbounds nuw i8, ptr %10, i64 12
  %wide.trip.count1083 = zext i16 %i.am to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph1071, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i
  %indvars.iv1080 = phi i64 [ 0, %.lr.ph1071 ], [ %indvars.iv.next1081, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.bf, i64 %indvars.iv1080 ; 3 uses
  %.sroa.0908.0.copyload = load ptr, ptr %i.bh, align 8, !noalias !240
  %.sroa.4909.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.4909.0.copyload = load i32, ptr %.sroa.4909.0..sroa_idx, align 8, !noalias !240 ; 4 uses
  %.sroa.5910.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bi = load ptr, ptr %i.bg, align 8, !noalias !240
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv1080
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.bj, align 4, !noalias !240 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i.i, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit [
    i32 6928, label %bb.h
    i32 7184, label %bb.h
    i32 7440, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

bb.i:                                             ; preds = %bb.g
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit:  ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ 5648, %bb.h ], [ 6160, %bb.i ], [ %.sroa.0.0.copyload.i.i, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6906)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6906, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5910.0..sroa_idx, i64 36, i1 false)
  %i.bk = icmp eq i32 %.sroa.4909.0.copyload, %.sroa.0.0.i
  br i1 %i.bk, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i, !prof !19

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i: ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit
  %i.bl = load ptr, ptr %i.t, align 8, !noalias !240 ; 2 uses
  %i.bm = call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.4909.0.copyload, i32 %.sroa.0.0.i, ptr noundef %i.bl, ptr noundef %i.bl) #22, !noalias !240
  %i.bn = icmp eq i32 %.sroa.4909.0.copyload, 514
  %or.cond = select i1 %i.bm, i1 true, i1 %i.bn
  %i.bo = icmp eq i32 %.sroa.0.0.i, 514
  %or.cond1037 = or i1 %i.bo, %or.cond
  br i1 %or.cond1037, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i, label %bb.j, !prof !32

bb.j:                                             ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i
  store ptr %.sroa.0908.0.copyload, ptr %10, align 8, !noalias !240
  store i32 %.sroa.4909.0.copyload, ptr %.sroa.4903.0..sroa_idx904, align 8, !noalias !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6906.0..sroa_idx907, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6906, i64 36, i1 false), !noalias !240
  %i.bp = trunc nuw nsw i64 %indvars.iv1080 to i32
  call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.bp, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %10, i32 %.sroa.0.0.i), !noalias !240
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i: ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit, %bb.j, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6906)
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !240
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 1 ; 2 uses
  %exitcond1084.not = icmp eq i64 %indvars.iv.next1081, %wide.trip.count1083
  br i1 %exitcond1084.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit, label %bb.g, !llvm.loop !210

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i
  %i.bq = load ptr, ptr %i.at, align 8, !noalias !240
  %i.br = mul nuw nsw i64 %i.be, 48
  %i.bs = add nsw i64 %i.br, -48                  ; 2 uses
  %.lhs.trunc = trunc nsw i64 %i.bs to i32
  %i.bt = urem i32 %.lhs.trunc, 48
  %.zext = zext nneg i32 %i.bt to i64
  %.neg.i = sub nsw i64 %.zext, %i.bs
  %i.bu = getelementptr i8, ptr %i.bq, i64 %.neg.i
  %scevgep.i = getelementptr i8, ptr %i.bu, i64 -48
  store ptr %scevgep.i, ptr %i.at, align 8, !noalias !240
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  store ptr %i.bv, ptr %13, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 408
  store ptr %i.by, ptr %i.bx, align 8
  %i.bz = icmp ugt i16 %i.am, 8
  br i1 %i.bz, label %bb.k, label %.lr.ph.i.i.i.preheader

bb.k:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(408) %13, i64 noundef %i.be)
  %.pre1114 = load ptr, ptr %13, align 8
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit, %bb.k
  %.011.i.i.i.ph = phi ptr [ %i.bv, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit ], [ %.pre1114, %bb.k ]
  br label %.lr.ph.i.i.i

_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store ptr %i.ca, ptr %13, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 408
  store ptr %i.cd, ptr %i.cc, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i, i64 48, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 48 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bd
  br i1 %.not.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !211

_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre1115 = load ptr, ptr %13, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit, %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit
  %i.cg = phi ptr [ %i.bw, %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.cb, %_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit ]
  %i.ch = phi ptr [ %.pre1115, %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.ca, %_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit ]
  %i.ci = getelementptr inbounds nuw [48 x i8], ptr %i.ch, i64 %i.be
  store ptr %i.ci, ptr %i.cg, align 8
  %i.cj = icmp ult i32 %.sroa.04.0.extract.trunc.i.i, 1048576
  br i1 %i.cj, label %_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.280) #23
  unreachable

_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %i.ck = shl nuw nsw i8 %i.al, 4
  %i.cl = or disjoint i8 %i.ck, 67
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i, 8
  %i.co = or disjoint i32 %i.cn, %i.cm            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.045.0.copyload = load i32, ptr %i.cp, align 8
  %i.cq = and i32 %.sroa.045.0.copyload, 8
  %.not.i149 = icmp eq i32 %i.cq, 0
  br i1 %.not.i149, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit, label %bb.m, !prof !19

bb.m:                                             ; preds = %_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit
  %i.cr = or disjoint i32 %i.co, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit: ; preds = %_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit, %bb.m
  %.sroa.0.0.i151 = phi i32 [ %i.cr, %bb.m ], [ %i.co, %_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit ] ; 2 uses
  %i.cs = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cu = load i8, ptr %i.ct, align 8, !range !20, !noundef !21
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = and i32 %.sroa.0.0.i151, 16
  %i.cx = icmp eq i32 %i.cw, 0
  %or.cond1040.not = select i1 %i.cv, i1 %i.cx, i1 false
  br i1 %or.cond1040.not, label %bb.n, label %.critedge.i, !prof !33

bb.n:                                             ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit
  %i.cy = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cs)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cs, ptr noundef nonnull @.str.290, ptr noundef %i.cy)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit

.critedge.i:                                      ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit
  %i.cz = load ptr, ptr %i.at, align 8            ; 5 uses
  store ptr %i.cs, ptr %i.cz, align 8
  %.sroa.4969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %.sroa.0.0.i151, ptr %.sroa.4969.0..sroa_idx, align 8
  %.sroa.6971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i32 2, ptr %.sroa.6971.0..sroa_idx, align 8
  %.sroa.7972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7972.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9974.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr null, ptr %.sroa.9974.0..sroa_idx, align 8
  %i.da = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store ptr %i.db, ptr %i.at, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit: ; preds = %bb.n, %.critedge.i
  %.0.i = phi ptr [ %i.da, %.critedge.i ], [ null, %bb.n ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dd = load i8, ptr %i.dc, align 8, !range !20, !noundef !21
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.o, label %bb.p, !prof !19

bb.o:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dg = load ptr, ptr %13, align 8
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface9StructNewEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_20StructIndexImmediateERKNS2_5ValueEPSD_PSC_(ptr noundef nonnull align 8 dereferenceable(88) %i.df, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(17) %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef %i.dg, ptr noundef %.0.i) #22
  %.pre1116 = load i32, ptr %i.p, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit
  %i.dh = phi i32 [ %.pre1116, %bb.o ], [ %.sroa.5.0.i.i.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit ]
  %i.di = add i32 %i.dh, %2
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(408) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit, %bb.p
  %.0 = phi i32 [ %i.di, %bb.p ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.mh

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = zext i32 %2 to i64                      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = icmp ult ptr %i.dm, %i.do
  br i1 %i.dp, label %bb.s, label %.critedge.i.i.i.i153, !prof !19

bb.s:                                             ; preds = %bb.r
  %i.dq = load i8, ptr %i.dm, align 1             ; 2 uses
  %.not.i.i.i.i157 = icmp sgt i8 %i.dq, -1
  br i1 %.not.i.i.i.i157, label %bb.t, label %.critedge.i.i.i.i153, !prof !19

bb.t:                                             ; preds = %bb.s
  %i.dr = zext nneg i8 %i.dq to i64
  br label %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit158

.critedge.i.i.i.i153:                             ; preds = %bb.s, %bb.r
  %i.ds = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.dm, ptr noundef nonnull @.str.1048) ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 25769803776
  tail call void @llvm.assume(i1 %i.dt)
  %i.du = lshr i64 %i.ds, 32
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %.pre1109 = load ptr, ptr %i.dj, align 8
  br label %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit158

_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit158: ; preds = %bb.t, %.critedge.i.i.i.i153
  %i.dw = phi ptr [ %i.dk, %bb.t ], [ %.pre1109, %.critedge.i.i.i.i153 ]
  %.sroa.05.0.i.i.i154 = phi i64 [ %i.dr, %bb.t ], [ %i.ds, %.critedge.i.i.i.i153 ] ; 2 uses
  %.sroa.5.0.i.i.i155 = phi i32 [ 1, %bb.t ], [ %i.dv, %.critedge.i.i.i.i153 ] ; 2 uses
  %.sroa.04.0.extract.trunc.i.i156 = trunc i64 %.sroa.05.0.i.i.i154 to i32 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  store i32 %.sroa.5.0.i.i.i155, ptr %i.dx, align 4
  store i32 %.sroa.04.0.extract.trunc.i.i156, ptr %14, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dl
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = and i64 %.sroa.05.0.i.i.i154, 4294967295 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 152
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 160
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = sdiv exact i64 %i.ek, 24
  %i.em = icmp ugt i64 %i.el, %i.ed
  br i1 %i.em, label %_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i161, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162.thread, !prof !28

_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i161: ; preds = %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit158
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %i.ed ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = load i8, ptr %i.eo, align 4
  %i.eq = icmp eq i8 %i.ep, 2
  br i1 %i.eq, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162.thread, !prof !29

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162.thread: ; preds = %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit158, %_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i161
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.ea, ptr noundef nonnull @.str.1049, i32 noundef %.sroa.04.0.extract.trunc.i.i156)
  br label %bb.aa

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162: ; preds = %_ZNK2v88internal4wasm10WasmModule10has_structENS1_15ModuleTypeIndexE.exit.i161
  %i.er = load ptr, ptr %i.en, align 8            ; 3 uses
  store ptr %i.er, ptr %i.dy, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 22
  %i.et = load i8, ptr %i.es, align 2, !range !20, !noundef !21 ; 2 uses
  store i8 %i.et, ptr %i.dz, align 8
  %i.eu = load i16, ptr %i.er, align 8
  %.fr = freeze i16 %i.eu                         ; 4 uses
  %.not1067.not = icmp eq i16 %.fr, 0
  br i1 %.not1067.not, label %.critedge88, label %.lr.ph1069

.lr.ph1069:                                       ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.pre1110 = load ptr, ptr %i.ev, align 8        ; 3 uses
  %i.ew = zext i16 %.fr to i64                    ; 2 uses
  %xtraiter = and i64 %i.ew, 1
  %i.ex = icmp eq i16 %.fr, 1
  br i1 %i.ex, label %.epil.preheader, label %.lr.ph1069.new

.lr.ph1069.new:                                   ; preds = %.lr.ph1069
  %unroll_iter = and i64 %i.ew, 65534
  br label %bb.u

bb.u:                                             ; preds = %.critedge.1, %.lr.ph1069.new
  %indvars.iv1077 = phi i64 [ 0, %.lr.ph1069.new ], [ %indvars.iv.next1078.1, %.critedge.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1069.new ], [ %niter.next.1, %.critedge.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.pre1110, i64 %indvars.iv1077
  %.sroa.0.0.copyload.i.i163 = load i32, ptr %i.ey, align 4 ; 3 uses
  store i32 %.sroa.0.0.copyload.i.i163, ptr %15, align 4
  %i.ez = and i32 %.sroa.0.0.copyload.i.i163, 3
  %i.fa = icmp eq i32 %i.ez, 0
  %i.fb = and i32 %.sroa.0.0.copyload.i.i163, 5
  %i.fc = icmp eq i32 %i.fb, 5
  %i.fd = or i1 %i.fa, %i.fc
  br i1 %i.fd, label %.critedge, label %.loopexit, !prof !19

.loopexit:                                        ; preds = %bb.u, %.critedge, %.epil.preheader
  %indvars.iv1077.lcssa = phi i64 [ %indvars.iv1077.epil.init, %.epil.preheader ], [ %indvars.iv1077, %bb.u ], [ %indvars.iv.next1078, %.critedge ]
  %i.fe = trunc nuw nsw i64 %indvars.iv1077.lcssa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 4 dereferenceable(4) %15) #22
  %i.ff = load ptr, ptr %16, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjjS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1042, ptr noundef nonnull @.str.895, i32 noundef %.sroa.04.0.extract.trunc.i.i156, i32 noundef %i.fe, ptr noundef %i.ff)
  %i.fg = load ptr, ptr %16, align 8              ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.fj = load i64, ptr %i.fh, align 8
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.aa

.critedge:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %indvars.iv.next1078 = or disjoint i64 %indvars.iv1077, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.pre1110, i64 %indvars.iv.next1078
  %.sroa.0.0.copyload.i.i163.1 = load i32, ptr %i.fl, align 4 ; 3 uses
  store i32 %.sroa.0.0.copyload.i.i163.1, ptr %15, align 4
  %i.fm = and i32 %.sroa.0.0.copyload.i.i163.1, 3
  %i.fn = icmp eq i32 %i.fm, 0
  %i.fo = and i32 %.sroa.0.0.copyload.i.i163.1, 5
  %i.fp = icmp eq i32 %i.fo, 5
  %i.fq = or i1 %i.fn, %i.fp
  br i1 %i.fq, label %.critedge.1, label %.loopexit, !prof !19

.critedge.1:                                      ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %indvars.iv.next1078.1 = add nuw nsw i64 %indvars.iv1077, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge88.loopexit.unr-lcssa, label %bb.u, !llvm.loop !212

.critedge88.loopexit.unr-lcssa:                   ; preds = %.critedge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge88, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge88.loopexit.unr-lcssa, %.lr.ph1069
  %indvars.iv1077.epil.init = phi i64 [ 0, %.lr.ph1069 ], [ %indvars.iv.next1078.1, %.critedge88.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1274 = trunc i16 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod1274)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.pre1110, i64 %indvars.iv1077.epil.init
  %.sroa.0.0.copyload.i.i163.epil = load i32, ptr %i.fr, align 4 ; 3 uses
  store i32 %.sroa.0.0.copyload.i.i163.epil, ptr %15, align 4
  %i.fs = and i32 %.sroa.0.0.copyload.i.i163.epil, 3
  %i.ft = icmp eq i32 %i.fs, 0
  %i.fu = and i32 %.sroa.0.0.copyload.i.i163.epil, 5
  %i.fv = icmp eq i32 %i.fu, 5
  %i.fw = or i1 %i.ft, %i.fv
  br i1 %i.fw, label %.critedge.epil, label %.loopexit, !prof !19

.critedge.epil:                                   ; preds = %.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %.critedge88

.critedge88:                                      ; preds = %.critedge.epil, %.critedge88.loopexit.unr-lcssa, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE13PopDescriptorENS1_15ModuleTypeIndexE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %17, ptr noundef nonnull align 8 dereferenceable(336) %0, i32 %.sroa.04.0.extract.trunc.i.i156)
  %i.fx = icmp ult i32 %.sroa.04.0.extract.trunc.i.i156, 1048576
  br i1 %i.fx, label %_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit166, label %bb.v, !prof !19

bb.v:                                             ; preds = %.critedge88
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.280) #23
  unreachable

_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit166: ; preds = %.critedge88
  %i.fy = shl nuw nsw i8 %i.et, 4
  %i.fz = or disjoint i8 %i.fy, 67
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i156, 8
  %i.gc = or disjoint i32 %i.gb, %i.ga            ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.036.0.copyload = load i32, ptr %i.gd, align 8
  %i.ge = and i32 %.sroa.036.0.copyload, 8
  %.not.i167 = icmp eq i32 %i.ge, 0
  br i1 %.not.i167, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit170, label %bb.w, !prof !19

bb.w:                                             ; preds = %_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit166
  %i.gf = or disjoint i32 %i.gc, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit170

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit170: ; preds = %_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit166, %bb.w
  %.sroa.0.0.i169 = phi i32 [ %i.gf, %bb.w ], [ %i.gc, %_ZNK2v88internal4wasm20StructIndexImmediate9heap_typeEv.exit166 ] ; 2 uses
  %i.gg = load ptr, ptr %i.dj, align 8            ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gi = load i8, ptr %i.gh, align 8, !range !20, !noundef !21
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = and i32 %.sroa.0.0.i169, 16
  %i.gl = icmp eq i32 %i.gk, 0
  %or.cond1043.not = select i1 %i.gj, i1 %i.gl, i1 false
  br i1 %or.cond1043.not, label %bb.x, label %.critedge.i89, !prof !33

bb.x:                                             ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit170
  %i.gm = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.gg)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.gg, ptr noundef nonnull @.str.290, ptr noundef %i.gm)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit91

.critedge.i89:                                    ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit170
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8            ; 5 uses
  store ptr %i.gg, ptr %i.go, align 8
  %.sroa.4976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i32 %.sroa.0.0.i169, ptr %.sroa.4976.0..sroa_idx, align 8
  %.sroa.6978.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i32 2, ptr %.sroa.6978.0..sroa_idx, align 8
  %.sroa.7979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7979.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9981.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  store ptr null, ptr %.sroa.9981.0..sroa_idx, align 8
  %i.gp = load ptr, ptr %i.gn, align 8            ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  store ptr %i.gq, ptr %i.gn, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit91

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit91: ; preds = %bb.x, %.critedge.i89
  %.0.i90 = phi ptr [ %i.gp, %.critedge.i89 ], [ null, %bb.x ]
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.gs = load i8, ptr %i.gr, align 8, !range !20, !noundef !21
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %bb.y, label %bb.z, !prof !19

bb.y:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit91
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface16StructNewDefaultEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_20StructIndexImmediateERKNS2_5ValueEPSC_(ptr noundef nonnull align 8 dereferenceable(88) %i.gu, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(17) %14, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %.0.i90) #22
  %.pre1111 = load i32, ptr %i.dx, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit91
  %i.gv = phi i32 [ %.pre1111, %bb.y ], [ %.sroa.5.0.i.i.i155, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit91 ]
  %i.gw = add i32 %i.gv, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162.thread, %bb.z
  %.4 = phi i32 [ %i.gw, %bb.z ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_20StructIndexImmediateE.exit162.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.mh

bb.ab:                                            ; preds = %bb.a
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8            ; 6 uses
  %.not.i173 = icmp eq ptr %i.gy, null
  br i1 %.not.i173, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8            ; 2 uses
  %.not9.i = icmp ult ptr %i.gy, %i.ha
  br i1 %.not9.i, label %bb.ad, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit

bb.ad:                                            ; preds = %bb.ac
  %i.hb = load i8, ptr %i.gy, align 1             ; 2 uses
  %i.hc = add i8 %i.hb, 6
  %switch.i.i = icmp ult i8 %i.hc, 5
  br i1 %switch.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hd = zext i8 %i.hb to i32
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.ad
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 1 ; 3 uses
  %i.hf = icmp ult ptr %i.he, %i.ha
  br i1 %i.hf, label %bb.ag, label %.critedge.i.i.i.i174, !prof !19

bb.ag:                                            ; preds = %bb.af
  %i.hg = load i8, ptr %i.he, align 1             ; 2 uses
  %.not.i.i.i.i176 = icmp sgt i8 %i.hg, -1
  br i1 %.not.i.i.i.i176, label %bb.ah, label %.critedge.i.i.i.i174, !prof !19

bb.ah:                                            ; preds = %bb.ag
  %i.hh = zext nneg i8 %i.hg to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i

.critedge.i.i.i.i174:                             ; preds = %bb.ag, %bb.af
  %i.hi = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.he, ptr noundef nonnull @.str.1012) ; 2 uses
  %i.hj = icmp ult i64 %i.hi, 25769803776
  tail call void @llvm.assume(i1 %i.hj)
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i: ; preds = %.critedge.i.i.i.i174, %bb.ah
  %.sroa.05.0.i.i.i175 = phi i64 [ %i.hh, %bb.ah ], [ %i.hi, %.critedge.i.i.i.i174 ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.05.0.i.i.i175 to i32 ; 3 uses
  %i.hk = icmp ugt i32 %.sroa.0.0.extract.trunc.i.i, 4095
  br i1 %i.hk, label %bb.ai, label %bb.aj, !prof !18

bb.ai:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.gy, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i.i)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

bb.aj:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i
  %i.hl = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i.i, 255
  %i.hm = load i8, ptr %i.gy, align 1
  %i.hn = zext i8 %i.hm to i64                    ; 2 uses
  br i1 %i.hl, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ho = shl nuw nsw i64 %i.hn, 12
  %i.hp = or disjoint i64 %i.ho, %.sroa.05.0.i.i.i175
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.hq = shl nuw nsw i64 %i.hn, 8
  %i.hr = or disjoint i64 %i.hq, %.sroa.05.0.i.i.i175
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i: ; preds = %bb.al, %bb.ak, %bb.ai
  %.sroa.018.0.i.i = phi i64 [ 0, %bb.ai ], [ %i.hp, %bb.ak ], [ %i.hr, %bb.al ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.018.0.i.i to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i, %bb.ae
  %.sink.i = phi i32 [ %i.hd, %bb.ae ], [ %.sroa.0.0.extract.trunc.i, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i ]
  %i.hs = tail call noundef ptr @_ZN2v88internal4wasm11WasmOpcodes10OpcodeNameENS1_10WasmOpcodeE(i32 noundef %.sink.i)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit: ; preds = %bb.ab, %bb.ac, %.sink.split.i
  %.1.i = phi ptr [ @.str.291, %bb.ab ], [ @.str.292, %bb.ac ], [ %i.hs, %.sink.split.i ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1015, ptr noundef %.1.i)
  br label %bb.mh

bb.am:                                            ; preds = %bb.a, %bb.a
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8            ; 6 uses
  %.not.i177 = icmp eq ptr %i.hu, null
  br i1 %.not.i177, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit191, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %.not9.i178 = icmp ult ptr %i.hu, %i.hw
  br i1 %.not9.i178, label %bb.ao, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit191

bb.ao:                                            ; preds = %bb.an
  %i.hx = load i8, ptr %i.hu, align 1             ; 2 uses
  %i.hy = add i8 %i.hx, 6
  %switch.i.i180 = icmp ult i8 %i.hy, 5
  br i1 %switch.i.i180, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hz = zext i8 %i.hx to i32
  br label %.sink.split.i181

bb.aq:                                            ; preds = %bb.ao
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 3 uses
  %i.ib = icmp ult ptr %i.ia, %i.hw
  br i1 %i.ib, label %bb.ar, label %.critedge.i.i.i.i183, !prof !19

bb.ar:                                            ; preds = %bb.aq
  %i.ic = load i8, ptr %i.ia, align 1             ; 2 uses
  %.not.i.i.i.i190 = icmp sgt i8 %i.ic, -1
  br i1 %.not.i.i.i.i190, label %bb.as, label %.critedge.i.i.i.i183, !prof !19

bb.as:                                            ; preds = %bb.ar
  %i.id = zext nneg i8 %i.ic to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i184

.critedge.i.i.i.i183:                             ; preds = %bb.ar, %bb.aq
  %i.ie = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.ia, ptr noundef nonnull @.str.1012) ; 2 uses
  %i.if = icmp ult i64 %i.ie, 25769803776
  tail call void @llvm.assume(i1 %i.if)
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i184

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i184: ; preds = %.critedge.i.i.i.i183, %bb.as
  %.sroa.05.0.i.i.i185 = phi i64 [ %i.id, %bb.as ], [ %i.ie, %.critedge.i.i.i.i183 ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i186 = trunc i64 %.sroa.05.0.i.i.i185 to i32 ; 3 uses
  %i.ig = icmp ugt i32 %.sroa.0.0.extract.trunc.i.i186, 4095
  br i1 %i.ig, label %bb.at, label %bb.au, !prof !18

bb.at:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i184
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.hu, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i.i186)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i187

bb.au:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i184
  %i.ih = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i.i186, 255
  %i.ii = load i8, ptr %i.hu, align 1
  %i.ij = zext i8 %i.ii to i64                    ; 2 uses
  br i1 %i.ih, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ik = shl nuw nsw i64 %i.ij, 12
  %i.il = or disjoint i64 %i.ik, %.sroa.05.0.i.i.i185
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i187

bb.aw:                                            ; preds = %bb.au
  %i.im = shl nuw nsw i64 %i.ij, 8
  %i.in = or disjoint i64 %i.im, %.sroa.05.0.i.i.i185
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i187

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i187: ; preds = %bb.aw, %bb.av, %bb.at
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
.critedge.i.i.i.i198:                             ; preds = %bb.bc, %bb.bb
  %i.ja = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.iw, ptr noundef nonnull @.str.1012) ; 2 uses
  %i.jb = icmp ult i64 %i.ja, 25769803776
  tail call void @llvm.assume(i1 %i.jb)
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i199

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i199: ; preds = %.critedge.i.i.i.i198, %bb.bd
  %.sroa.05.0.i.i.i200 = phi i64 [ %i.iz, %bb.bd ], [ %i.ja, %.critedge.i.i.i.i198 ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i201 = trunc i64 %.sroa.05.0.i.i.i200 to i32 ; 3 uses
  %i.jc = icmp ugt i32 %.sroa.0.0.extract.trunc.i.i201, 4095
  br i1 %i.jc, label %bb.be, label %bb.bf, !prof !18

bb.be:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i199
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.iq, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i.i201)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i202

bb.bf:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i199
  %i.jd = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i.i201, 255
  %i.je = load i8, ptr %i.iq, align 1
  %i.jf = zext i8 %i.je to i64                    ; 2 uses
  br i1 %i.jd, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jg = shl nuw nsw i64 %i.jf, 12
  %i.jh = or disjoint i64 %i.jg, %.sroa.05.0.i.i.i200
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i202

bb.bh:                                            ; preds = %bb.bf
  %i.ji = shl nuw nsw i64 %i.jf, 8
  %i.jj = or disjoint i64 %i.ji, %.sroa.05.0.i.i.i200
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i202

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i202: ; preds = %bb.bh, %bb.bg, %bb.be
  %.sroa.018.0.i.i203 = phi i64 [ 0, %bb.be ], [ %i.jh, %bb.bg ], [ %i.jj, %bb.bh ]
  %.sroa.0.0.extract.trunc.i204 = trunc i64 %.sroa.018.0.i.i203 to i32
  br label %.sink.split.i196

.sink.split.i196:                                 ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i202, %bb.ba
  %.sink.i197 = phi i32 [ %i.iv, %bb.ba ], [ %.sroa.0.0.extract.trunc.i204, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i202 ]
  %i.jk = tail call noundef ptr @_ZN2v88internal4wasm11WasmOpcodes10OpcodeNameENS1_10WasmOpcodeE(i32 noundef %.sink.i197)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit206

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit206: ; preds = %bb.ax, %bb.ay, %.sink.split.i196
  %.1.i194 = phi ptr [ @.str.291, %bb.ax ], [ @.str.292, %bb.ay ], [ %i.jk, %.sink.split.i196 ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1015, ptr noundef %.1.i194)
  br label %bb.mh

bb.bi:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.jm = load ptr, ptr %i.jl, align 8            ; 2 uses
  %i.jn = zext i32 %2 to i64                      ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jn ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8
  %i.jr = icmp ult ptr %i.jo, %i.jq
  br i1 %i.jr, label %bb.bj, label %.critedge.i.i.i.i207, !prof !19

bb.bj:                                            ; preds = %bb.bi
  %i.js = load i8, ptr %i.jo, align 1             ; 2 uses
  %.not.i.i.i.i211 = icmp sgt i8 %i.js, -1
  br i1 %.not.i.i.i.i211, label %bb.bk, label %.critedge.i.i.i.i207, !prof !19

bb.bk:                                            ; preds = %bb.bj
  %i.jt = zext nneg i8 %i.js to i64
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

.critedge.i.i.i.i207:                             ; preds = %bb.bj, %bb.bi
  %i.ju = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.jo, ptr noundef nonnull @.str.1051) ; 3 uses
  %i.jv = icmp ult i64 %i.ju, 25769803776
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = lshr i64 %i.ju, 32
  %i.jx = trunc nuw nsw i64 %i.jw to i32
  %.pre1106 = load ptr, ptr %i.jl, align 8
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.bk, %.critedge.i.i.i.i207
  %i.jy = phi ptr [ %i.jm, %bb.bk ], [ %.pre1106, %.critedge.i.i.i.i207 ]
  %.sroa.05.0.i.i.i208 = phi i64 [ %i.jt, %bb.bk ], [ %i.ju, %.critedge.i.i.i.i207 ] ; 2 uses
  %.sroa.5.0.i.i.i209 = phi i32 [ 1, %bb.bk ], [ %i.jx, %.critedge.i.i.i.i207 ] ; 2 uses
  %.sroa.04.0.extract.trunc.i.i210 = trunc i64 %.sroa.05.0.i.i.i208 to i32 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %18, i64 4 ; 2 uses
  store i32 %.sroa.5.0.i.i.i209, ptr %i.jz, align 4
  store i32 %.sroa.04.0.extract.trunc.i.i210, ptr %18, align 8
  %i.ka = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.kb = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jn
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ke = load ptr, ptr %i.kd, align 8            ; 2 uses
  %i.kf = and i64 %.sroa.05.0.i.i.i208, 4294967295 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 152
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 160
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = load ptr, ptr %i.kg, align 8            ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = sdiv exact i64 %i.km, 24
  %i.ko = icmp ugt i64 %i.kn, %i.kf
  br i1 %i.ko, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit, !prof !28

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.kj, i64 %i.kf ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 20
  %i.kr = load i8, ptr %i.kq, align 4
  %i.ks = icmp eq i8 %i.kr, 3
  br i1 %i.ks, label %bb.bl, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit, !prof !29

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.kc, ptr noundef nonnull @.str.1052, i32 noundef %.sroa.04.0.extract.trunc.i.i210)
  br label %bb.bu

bb.bl:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i
  %i.kt = load ptr, ptr %i.kp, align 8            ; 2 uses
  store ptr %i.kt, ptr %i.ka, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 22
  %i.kv = load i8, ptr %i.ku, align 2, !range !20, !noundef !21 ; 2 uses
  store i8 %i.kv, ptr %i.kb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %.sroa.0.0.copyload.i213 = load i32, ptr %i.kw, align 4 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i213, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit215 [
    i32 6928, label %bb.bm
    i32 7184, label %bb.bm
    i32 7440, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl, %bb.bl
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit215

bb.bn:                                            ; preds = %bb.bl
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit215

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit215: ; preds = %bb.bl, %bb.bm, %bb.bn
  %.sroa.0.0.i214 = phi i32 [ 5648, %bb.bm ], [ 6160, %bb.bn ], [ %.sroa.0.0.copyload.i213, %bb.bl ]
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !241
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 -152
  %i.la = load i32, ptr %i.kz, align 8, !noalias !241
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !241 ; 2 uses
  %i.le = load ptr, ptr %i.lb, align 8, !noalias !241
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = sdiv exact i64 %i.lh, 48
  %i.lj = trunc i64 %i.li to i32
  %i.lk = add i32 %i.la, 2
  %.not.i.i114 = icmp ugt i32 %i.lk, %i.lj
  br i1 %.not.i.i114, label %bb.bo, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit, !prof !18

bb.bo:                                            ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit215
  %i.ll = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 2), !noalias !241 ; 0 uses
  %.pre1107 = load ptr, ptr %i.lc, align 8, !noalias !241
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit: ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit215, %bb.bo
  %i.lm = phi ptr [ %i.ld, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit215 ], [ %.pre1107, %bb.bo ]
  %scevgep.i217 = getelementptr i8, ptr %i.lm, i64 -96
  store ptr %scevgep.i217, ptr %i.lc, align 8, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !241
  store ptr %0, ptr %9, align 8, !noalias !241
  %i.ln = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.ln, align 8, !noalias !241
  call void @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %19, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 %.sroa.0.0.i214)
  %i.lo = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  call void @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlS9_E_clES9_(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %i.lo, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 5648)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !241
  %i.lp = icmp ult i32 %.sroa.04.0.extract.trunc.i.i210, 1048576
  br i1 %i.lp, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit, label %bb.bp, !prof !19

bb.bp:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.280) #23
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_9ValueTypeENS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vISA_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit
  %i.lq = shl nuw nsw i8 %i.kv, 4
  %i.lr = or disjoint i8 %i.lq, 99
  %i.ls = zext nneg i8 %i.lr to i32
  %i.lt = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i210, 8
  %i.lu = or disjoint i32 %i.lt, %i.ls            ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.028.0.copyload = load i32, ptr %i.lv, align 8
  %i.lw = and i32 %.sroa.028.0.copyload, 8
  %.not.i220 = icmp eq i32 %i.lw, 0
  br i1 %.not.i220, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit223, label %bb.bq, !prof !19

bb.bq:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit
  %i.lx = or disjoint i32 %i.lu, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit223

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit223: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit, %bb.bq
  %.sroa.0.0.i222 = phi i32 [ %i.lx, %bb.bq ], [ %i.lu, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit ] ; 2 uses
  %i.ly = load ptr, ptr %i.jl, align 8            ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ma = load i8, ptr %i.lz, align 8, !range !20, !noundef !21
  %i.mb = trunc nuw i8 %i.ma to i1
  %i.mc = and i32 %.sroa.0.0.i222, 16
  %i.md = icmp eq i32 %i.mc, 0
  %or.cond1046.not = select i1 %i.mb, i1 %i.md, i1 false
  br i1 %or.cond1046.not, label %bb.br, label %.critedge.i92, !prof !33

bb.br:                                            ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit223
  %i.me = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ly)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ly, ptr noundef nonnull @.str.290, ptr noundef %i.me)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit94

.critedge.i92:                                    ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit223
  %i.mf = load ptr, ptr %i.lc, align 8            ; 5 uses
  store ptr %i.ly, ptr %i.mf, align 8
  %.sroa.4983.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 %.sroa.0.0.i222, ptr %.sroa.4983.0..sroa_idx, align 8
  %.sroa.6985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store i32 2, ptr %.sroa.6985.0..sroa_idx, align 8
  %.sroa.7986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7986.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  store ptr null, ptr %.sroa.9988.0..sroa_idx, align 8
  %i.mg = load ptr, ptr %i.lc, align 8            ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  store ptr %i.mh, ptr %i.lc, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit94

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit94: ; preds = %bb.br, %.critedge.i92
  %.0.i93 = phi ptr [ %i.mg, %.critedge.i92 ], [ null, %bb.br ]
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.mj = load i8, ptr %i.mi, align 8, !range !20, !noundef !21
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.bs, label %bb.bt, !prof !19

bb.bs:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit94
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface8ArrayNewEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS2_5ValueESE_PSC_(ptr noundef nonnull align 8 dereferenceable(88) %i.ml, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(17) %18, ptr noundef nonnull align 8 dereferenceable(48) %i.lo, ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef %.0.i93) #22
  %.pre1108 = load i32, ptr %i.jz, align 4
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit94
  %i.mm = phi i32 [ %.pre1108, %bb.bs ], [ %.sroa.5.0.i.i.i209, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit94 ]
  %i.mn = add i32 %i.mm, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bu

bb.bu:                                            ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit, %bb.bt
  %.5 = phi i32 [ %i.mn, %bb.bt ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.mh

bb.bv:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.mp = load ptr, ptr %i.mo, align 8            ; 2 uses
  %i.mq = zext i32 %2 to i64                      ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mq ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8
  %i.mu = icmp ult ptr %i.mr, %i.mt
  br i1 %i.mu, label %bb.bw, label %.critedge.i.i.i.i226, !prof !19

bb.bw:                                            ; preds = %bb.bv
  %i.mv = load i8, ptr %i.mr, align 1             ; 2 uses
  %.not.i.i.i.i230 = icmp sgt i8 %i.mv, -1
  br i1 %.not.i.i.i.i230, label %bb.bx, label %.critedge.i.i.i.i226, !prof !19

bb.bx:                                            ; preds = %bb.bw
  %i.mw = zext nneg i8 %i.mv to i64
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit231

.critedge.i.i.i.i226:                             ; preds = %bb.bw, %bb.bv
  %i.mx = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.mr, ptr noundef nonnull @.str.1051) ; 3 uses
  %i.my = icmp ult i64 %i.mx, 25769803776
  tail call void @llvm.assume(i1 %i.my)
  %i.mz = lshr i64 %i.mx, 32
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %.pre1103 = load ptr, ptr %i.mo, align 8
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit231

_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit231: ; preds = %bb.bx, %.critedge.i.i.i.i226
  %i.nb = phi ptr [ %i.mp, %bb.bx ], [ %.pre1103, %.critedge.i.i.i.i226 ]
  %.sroa.05.0.i.i.i227 = phi i64 [ %i.mw, %bb.bx ], [ %i.mx, %.critedge.i.i.i.i226 ] ; 2 uses
  %.sroa.5.0.i.i.i228 = phi i32 [ 1, %bb.bx ], [ %i.na, %.critedge.i.i.i.i226 ] ; 2 uses
  %.sroa.04.0.extract.trunc.i.i229 = trunc i64 %.sroa.05.0.i.i.i227 to i32 ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %20, i64 4 ; 2 uses
  store i32 %.sroa.5.0.i.i.i228, ptr %i.nc, align 4
  store i32 %.sroa.04.0.extract.trunc.i.i229, ptr %20, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mq
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.nh = load ptr, ptr %i.ng, align 8            ; 2 uses
  %i.ni = and i64 %.sroa.05.0.i.i.i227, 4294967295 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 152
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 160
  %i.nl = load ptr, ptr %i.nk, align 8
  %i.nm = load ptr, ptr %i.nj, align 8            ; 2 uses
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = sub i64 %i.nn, %i.no
  %i.nq = sdiv exact i64 %i.np, 24
  %i.nr = icmp ugt i64 %i.nq, %i.ni
  br i1 %i.nr, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i234, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit235, !prof !28

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i234: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit231
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %i.nm, i64 %i.ni ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 20
  %i.nu = load i8, ptr %i.nt, align 4
  %i.nv = icmp eq i8 %i.nu, 3
  br i1 %i.nv, label %bb.by, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit235, !prof !29

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit235: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit231, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i234
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.nf, ptr noundef nonnull @.str.1052, i32 noundef %.sroa.04.0.extract.trunc.i.i229)
  br label %bb.ch

bb.by:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i234
  %i.nw = load ptr, ptr %i.ns, align 8            ; 2 uses
  store ptr %i.nw, ptr %i.nd, align 8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ns, i64 22
  %i.ny = load i8, ptr %i.nx, align 2, !range !20, !noundef !21 ; 2 uses
  store i8 %i.ny, ptr %i.ne, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %.sroa.0.0.copyload.i236 = load i32, ptr %i.nz, align 4 ; 3 uses
  %i.oa = and i32 %.sroa.0.0.copyload.i236, 3
  %i.ob = icmp eq i32 %i.oa, 0
  %i.oc = and i32 %.sroa.0.0.copyload.i236, 5
  %i.od = icmp eq i32 %i.oc, 5
  %i.oe = or i1 %i.ob, %i.od
  br i1 %i.oe, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store i32 %.sroa.0.0.copyload.i236, ptr %22, align 4
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 4 dereferenceable(4) %22) #22
  %i.of = load ptr, ptr %21, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1043, ptr noundef nonnull @.str.901, i32 noundef %.sroa.04.0.extract.trunc.i.i229, ptr noundef %i.of)
  %i.og = load ptr, ptr %21, align 8              ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.bz
  %i.oj = load i64, ptr %i.oh, align 8
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.ok) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.ch

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.om = load ptr, ptr %i.ol, align 8, !noalias !242
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 -152
  %i.oo = load i32, ptr %i.on, align 8, !noalias !242
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !242 ; 2 uses
  %i.os = load ptr, ptr %i.op, align 8, !noalias !242
  %i.ot = ptrtoint ptr %i.or to i64
  %i.ou = ptrtoint ptr %i.os to i64
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = sdiv exact i64 %i.ov, 48
  %i.ox = trunc i64 %i.ow to i32
  %i.oy = add i32 %i.oo, 1
  %.not.i.i124 = icmp ugt i32 %i.oy, %i.ox
  br i1 %.not.i.i124, label %bb.cb, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit127, !prof !18

bb.cb:                                            ; preds = %bb.ca
  %i.oz = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 1), !noalias !242 ; 0 uses
  %.pre1104 = load ptr, ptr %i.oq, align 8, !noalias !242
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit127

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit127: ; preds = %bb.ca, %bb.cb
  %i.pa = phi ptr [ %i.or, %bb.ca ], [ %.pre1104, %bb.cb ]
  %scevgep.i243 = getelementptr i8, ptr %i.pa, i64 -48
  store ptr %scevgep.i243, ptr %i.oq, align 8, !noalias !242
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !242
  store ptr %0, ptr %8, align 8, !noalias !242
  %i.pb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.pb, align 8, !noalias !242
  call void @_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %23, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 5648)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !242
  %i.pc = icmp ult i32 %.sroa.04.0.extract.trunc.i.i229, 1048576
  br i1 %i.pc, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit246, label %bb.cc, !prof !19

bb.cc:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit127
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.280) #23
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit246: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit127
  %i.pd = shl nuw nsw i8 %i.ny, 4
  %i.pe = or disjoint i8 %i.pd, 99
  %i.pf = zext nneg i8 %i.pe to i32
  %i.pg = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i229, 8
  %i.ph = or disjoint i32 %i.pg, %i.pf            ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.023.0.copyload = load i32, ptr %i.pi, align 8
  %i.pj = and i32 %.sroa.023.0.copyload, 8
  %.not.i247 = icmp eq i32 %i.pj, 0
  br i1 %.not.i247, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit250, label %bb.cd, !prof !19

bb.cd:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit246
  %i.pk = or disjoint i32 %i.ph, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit250

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit250: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit246, %bb.cd
  %.sroa.0.0.i249 = phi i32 [ %i.pk, %bb.cd ], [ %i.ph, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit246 ] ; 2 uses
  %i.pl = load ptr, ptr %i.mo, align 8            ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.pn = load i8, ptr %i.pm, align 8, !range !20, !noundef !21
  %i.po = trunc nuw i8 %i.pn to i1
  %i.pp = and i32 %.sroa.0.0.i249, 16
  %i.pq = icmp eq i32 %i.pp, 0
  %or.cond1049.not = select i1 %i.po, i1 %i.pq, i1 false
  br i1 %or.cond1049.not, label %bb.ce, label %.critedge.i95, !prof !33

bb.ce:                                            ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit250
  %i.pr = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.pl)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.pl, ptr noundef nonnull @.str.290, ptr noundef %i.pr)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit97

.critedge.i95:                                    ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit250
  %i.ps = load ptr, ptr %i.oq, align 8            ; 5 uses
  store ptr %i.pl, ptr %i.ps, align 8
  %.sroa.4990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  store i32 %.sroa.0.0.i249, ptr %.sroa.4990.0..sroa_idx, align 8
  %.sroa.6992.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  store i32 2, ptr %.sroa.6992.0..sroa_idx, align 8
  %.sroa.7993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ps, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7993.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9995.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ps, i64 40
  store ptr null, ptr %.sroa.9995.0..sroa_idx, align 8
  %i.pt = load ptr, ptr %i.oq, align 8            ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 48
  store ptr %i.pu, ptr %i.oq, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit97

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit97: ; preds = %bb.ce, %.critedge.i95
  %.0.i96 = phi ptr [ %i.pt, %.critedge.i95 ], [ null, %bb.ce ]
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.pw = load i8, ptr %i.pv, align 8, !range !20, !noundef !21
  %i.px = trunc nuw i8 %i.pw to i1
  br i1 %i.px, label %bb.cf, label %bb.cg, !prof !19

bb.cf:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit97
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface15ArrayNewDefaultEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS2_5ValueEPSC_(ptr noundef nonnull align 8 dereferenceable(88) %i.py, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(17) %20, ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %.0.i96) #22
  %.pre1105 = load i32, ptr %i.nc, align 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit97
  %i.pz = phi i32 [ %.pre1105, %bb.cf ], [ %.sroa.5.0.i.i.i228, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit97 ]
  %i.qa = add i32 %i.pz, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit235, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %.6 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.qa, %bb.cg ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit235 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.mh

bb.ci:                                            ; preds = %bb.a
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qc = load ptr, ptr %i.qb, align 8            ; 6 uses
  %.not.i253 = icmp eq ptr %i.qc, null
  br i1 %.not.i253, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit267, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8            ; 2 uses
  %.not9.i254 = icmp ult ptr %i.qc, %i.qe
  br i1 %.not9.i254, label %bb.ck, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit267

bb.ck:                                            ; preds = %bb.cj
  %i.qf = load i8, ptr %i.qc, align 1             ; 2 uses
  %i.qg = add i8 %i.qf, 6
  %switch.i.i256 = icmp ult i8 %i.qg, 5
  br i1 %switch.i.i256, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qh = zext i8 %i.qf to i32
  br label %.sink.split.i257

bb.cm:                                            ; preds = %bb.ck
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qc, i64 1 ; 3 uses
  %i.qj = icmp ult ptr %i.qi, %i.qe
  br i1 %i.qj, label %bb.cn, label %.critedge.i.i.i.i259, !prof !19

bb.cn:                                            ; preds = %bb.cm
  %i.qk = load i8, ptr %i.qi, align 1             ; 2 uses
  %.not.i.i.i.i266 = icmp sgt i8 %i.qk, -1
  br i1 %.not.i.i.i.i266, label %bb.co, label %.critedge.i.i.i.i259, !prof !19

bb.co:                                            ; preds = %bb.cn
  %i.ql = zext nneg i8 %i.qk to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i260

.critedge.i.i.i.i259:                             ; preds = %bb.cn, %bb.cm
  %i.qm = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.qi, ptr noundef nonnull @.str.1012) ; 2 uses
  %i.qn = icmp ult i64 %i.qm, 25769803776
  tail call void @llvm.assume(i1 %i.qn)
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i260

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i260: ; preds = %.critedge.i.i.i.i259, %bb.co
  %.sroa.05.0.i.i.i261 = phi i64 [ %i.ql, %bb.co ], [ %i.qm, %.critedge.i.i.i.i259 ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i262 = trunc i64 %.sroa.05.0.i.i.i261 to i32 ; 3 uses
  %i.qo = icmp ugt i32 %.sroa.0.0.extract.trunc.i.i262, 4095
  br i1 %i.qo, label %bb.cp, label %bb.cq, !prof !18

bb.cp:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i260
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.qc, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i.i262)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i263

bb.cq:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i260
  %i.qp = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i.i262, 255
  %i.qq = load i8, ptr %i.qc, align 1
  %i.qr = zext i8 %i.qq to i64                    ; 2 uses
  br i1 %i.qp, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.qs = shl nuw nsw i64 %i.qr, 12
  %i.qt = or disjoint i64 %i.qs, %.sroa.05.0.i.i.i261
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i263

bb.cs:                                            ; preds = %bb.cq
  %i.qu = shl nuw nsw i64 %i.qr, 8
  %i.qv = or disjoint i64 %i.qu, %.sroa.05.0.i.i.i261
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i263

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i263: ; preds = %bb.cs, %bb.cr, %bb.cp
  %.sroa.018.0.i.i264 = phi i64 [ 0, %bb.cp ], [ %i.qt, %bb.cr ], [ %i.qv, %bb.cs ]
  %.sroa.0.0.extract.trunc.i265 = trunc i64 %.sroa.018.0.i.i264 to i32
  br label %.sink.split.i257

.sink.split.i257:                                 ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i263, %bb.cl
  %.sink.i258 = phi i32 [ %i.qh, %bb.cl ], [ %.sroa.0.0.extract.trunc.i265, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i263 ]
  %i.qw = tail call noundef ptr @_ZN2v88internal4wasm11WasmOpcodes10OpcodeNameENS1_10WasmOpcodeE(i32 noundef %.sink.i258)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit267

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit267: ; preds = %bb.ci, %bb.cj, %.sink.split.i257
  %.1.i255 = phi ptr [ @.str.291, %bb.ci ], [ @.str.292, %bb.cj ], [ %i.qw, %.sink.split.i257 ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1015, ptr noundef %.1.i255)
  br label %bb.mh

bb.ct:                                            ; preds = %bb.a
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8            ; 6 uses
  %.not.i268 = icmp eq ptr %i.qy, null
  br i1 %.not.i268, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit282, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8            ; 2 uses
  %.not9.i269 = icmp ult ptr %i.qy, %i.ra
  br i1 %.not9.i269, label %bb.cv, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit282

bb.cv:                                            ; preds = %bb.cu
  %i.rb = load i8, ptr %i.qy, align 1             ; 2 uses
  %i.rc = add i8 %i.rb, 6
  %switch.i.i271 = icmp ult i8 %i.rc, 5
  br i1 %switch.i.i271, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rd = zext i8 %i.rb to i32
  br label %.sink.split.i272

bb.cx:                                            ; preds = %bb.cv
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 1 ; 3 uses
  %i.rf = icmp ult ptr %i.re, %i.ra
  br i1 %i.rf, label %bb.cy, label %.critedge.i.i.i.i274, !prof !19

bb.cy:                                            ; preds = %bb.cx
  %i.rg = load i8, ptr %i.re, align 1             ; 2 uses
  %.not.i.i.i.i281 = icmp sgt i8 %i.rg, -1
  br i1 %.not.i.i.i.i281, label %bb.cz, label %.critedge.i.i.i.i274, !prof !19

bb.cz:                                            ; preds = %bb.cy
  %i.rh = zext nneg i8 %i.rg to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i275

.critedge.i.i.i.i274:                             ; preds = %bb.cy, %bb.cx
  %i.ri = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.re, ptr noundef nonnull @.str.1012) ; 2 uses
  %i.rj = icmp ult i64 %i.ri, 25769803776
  tail call void @llvm.assume(i1 %i.rj)
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i275

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i275: ; preds = %.critedge.i.i.i.i274, %bb.cz
  %.sroa.05.0.i.i.i276 = phi i64 [ %i.rh, %bb.cz ], [ %i.ri, %.critedge.i.i.i.i274 ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i277 = trunc i64 %.sroa.05.0.i.i.i276 to i32 ; 3 uses
  %i.rk = icmp ugt i32 %.sroa.0.0.extract.trunc.i.i277, 4095
  br i1 %i.rk, label %bb.da, label %bb.db, !prof !18

bb.da:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i275
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.qy, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i.i277)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i278

bb.db:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i275
  %i.rl = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i.i277, 255
  %i.rm = load i8, ptr %i.qy, align 1
  %i.rn = zext i8 %i.rm to i64                    ; 2 uses
  br i1 %i.rl, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ro = shl nuw nsw i64 %i.rn, 12
  %i.rp = or disjoint i64 %i.ro, %.sroa.05.0.i.i.i276
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i278

bb.dd:                                            ; preds = %bb.db
  %i.rq = shl nuw nsw i64 %i.rn, 8
  %i.rr = or disjoint i64 %i.rq, %.sroa.05.0.i.i.i276
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i278

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i278: ; preds = %bb.dd, %bb.dc, %bb.da
  %.sroa.018.0.i.i279 = phi i64 [ 0, %bb.da ], [ %i.rp, %bb.dc ], [ %i.rr, %bb.dd ]
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  switch i32 %.sroa.0.0.copyload.i414, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416 [
    i32 6928, label %bb.gw
    i32 7184, label %bb.gw
    i32 7440, label %bb.gx
  ]

bb.gw:                                            ; preds = %bb.gv, %bb.gv
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416

bb.gx:                                            ; preds = %bb.gv
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416: ; preds = %bb.gv, %bb.gw, %bb.gx
  %.sroa.0.0.i415 = phi i32 [ 5648, %bb.gw ], [ 6160, %bb.gx ], [ %.sroa.0.0.copyload.i414, %bb.gv ]
  store i32 %.sroa.0.0.i415, ptr %27, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EEC2EmRKS3_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %26, i64 noundef %i.aal, ptr noundef nonnull align 4 dereferenceable(4) %27, ptr noundef nonnull align 1 dereferenceable(1) %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.aan = load ptr, ptr %26, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aap = load ptr, ptr %i.aao, align 8, !noalias !243
  %i.aaq = getelementptr inbounds i8, ptr %i.aap, i64 -152
  %i.aar = load i32, ptr %i.aaq, align 8, !noalias !243
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.aau = load ptr, ptr %i.aat, align 8, !noalias !243 ; 2 uses
  %i.aav = load ptr, ptr %i.aas, align 8, !noalias !243
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = sdiv exact i64 %i.aay, 48
  %i.aba = trunc i64 %i.aaz to i32
  %i.abb = add i32 %i.aar, %.sroa.04.0.extract.trunc.i
  %.not.i.i137 = icmp ugt i32 %i.abb, %i.aba
  br i1 %.not.i.i137, label %bb.gy, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138, !prof !18

bb.gy:                                            ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416
  %i.abc = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.04.0.extract.trunc.i), !noalias !243 ; 0 uses
  %.pre1098 = load ptr, ptr %i.aat, align 8, !noalias !243
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138: ; preds = %bb.gy, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416
  %i.abd = phi ptr [ %.pre1098, %bb.gy ], [ %i.aau, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416 ] ; 2 uses
  %.idx = mul nsw i64 %i.aal, -48
  %i.abe = getelementptr inbounds i8, ptr %i.abd, i64 %.idx ; 2 uses
  %.not1072 = icmp eq i32 %.sroa.04.0.extract.trunc.i, 0
  br i1 %.not1072, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138
  %.sroa.4952.0..sroa_idx953 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6955.0..sroa_idx956 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %wide.trip.count = and i64 %.sroa.05.0.i.i, 16383
  br label %bb.gz

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138
  %i.abf = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  store ptr %i.abf, ptr %29, align 8, !alias.scope !243
  %i.abg = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr %i.abf, ptr %i.abg, align 8, !alias.scope !243
  %i.abh = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.abi = getelementptr inbounds nuw i8, ptr %29, i64 408
  store ptr %i.abi, ptr %i.abh, align 8, !alias.scope !243
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146
  %i.abj = load ptr, ptr %i.aat, align 8, !noalias !243
  %i.abk = mul nuw nsw i64 %i.aal, 48
  %i.abl = add nsw i64 %i.abk, -48                ; 2 uses
  %i.abm = urem i64 %i.abl, 48
  %.neg.i419 = sub nsw i64 %i.abm, %i.abl
  %i.abn = getelementptr i8, ptr %i.abj, i64 %.neg.i419
  %scevgep.i420 = getelementptr i8, ptr %i.abn, i64 -48
  store ptr %scevgep.i420, ptr %i.aat, align 8, !noalias !243
  %i.abo = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  store ptr %i.abo, ptr %29, align 8, !alias.scope !243
  %i.abp = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  store ptr %i.abo, ptr %i.abp, align 8, !alias.scope !243
  %i.abq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.abr = getelementptr inbounds nuw i8, ptr %29, i64 408
  store ptr %i.abr, ptr %i.abq, align 8, !alias.scope !243
  %i.abs = icmp samesign ugt i64 %i.aal, 8
  br i1 %i.abs, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(408) %29, i64 noundef %i.aal)
  %.pre1099 = load ptr, ptr %29, align 8, !alias.scope !243
  br label %.lr.ph.i.i.i428.preheader

bb.gz:                                            ; preds = %.lr.ph, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146 ] ; 5 uses
  %i.abt = getelementptr inbounds nuw [48 x i8], ptr %i.abe, i64 %indvars.iv ; 3 uses
  %.sroa.0957.0.copyload = load ptr, ptr %i.abt, align 8, !noalias !243
  %.sroa.4958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %.sroa.4958.0.copyload = load i32, ptr %.sroa.4958.0..sroa_idx, align 8, !noalias !243 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.aal
  br i1 %exitcond.not, label %bb.ha, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit, !prof !18

bb.ha:                                            ; preds = %bb.gz
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.92) #23, !noalias !243
  unreachable

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit: ; preds = %bb.gz
  %.sroa.5959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abt, i64 12
  %i.abu = getelementptr [4 x i8], ptr %i.aan, i64 %indvars.iv
  %.sroa.0.0.copyload.i426 = load i32, ptr %i.abu, align 4, !noalias !243 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6955)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6955, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5959.0..sroa_idx, i64 36, i1 false)
  %i.abv = icmp eq i32 %.sroa.4958.0.copyload, %.sroa.0.0.copyload.i426
  br i1 %i.abv, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i143, !prof !19

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i143: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit
  %i.abw = load ptr, ptr %i.zg, align 8, !noalias !243 ; 2 uses
  %i.abx = call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.4958.0.copyload, i32 %.sroa.0.0.copyload.i426, ptr noundef %i.abw, ptr noundef %i.abw) #22, !noalias !243
  %i.aby = icmp eq i32 %.sroa.4958.0.copyload, 514
  %or.cond1050 = select i1 %i.abx, i1 true, i1 %i.aby
  %i.abz = icmp eq i32 %.sroa.0.0.copyload.i426, 514
  %or.cond1051 = or i1 %i.abz, %or.cond1050
  br i1 %or.cond1051, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146, label %bb.hb, !prof !32

bb.hb:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i143
  store ptr %.sroa.0957.0.copyload, ptr %7, align 8, !noalias !243
  store i32 %.sroa.4958.0.copyload, ptr %.sroa.4952.0..sroa_idx953, align 8, !noalias !243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6955.0..sroa_idx956, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6955, i64 36, i1 false), !noalias !243
  %i.aca = trunc nuw nsw i64 %indvars.iv to i32
  call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.aca, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %7, i32 %.sroa.0.0.copyload.i426), !noalias !243
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit, %bb.hb, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6955)
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !243
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1076.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1076.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421, label %bb.gz, !llvm.loop !219

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421
  %i.acb = phi ptr [ %i.abf, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread ], [ %i.abo, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421 ] ; 2 uses
  %i.acc = phi ptr [ %i.abg, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread ], [ %i.abp, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421 ] ; 2 uses
  %.not9.i.i.i427 = icmp eq i64 %i.aal, 0
  br i1 %.not9.i.i.i427, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433, label %.lr.ph.i.i.i428.preheader

.lr.ph.i.i.i428.preheader:                        ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit
  %i.acd = phi ptr [ %i.abp, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread ], [ %i.acc, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit ]
  %i.ace = phi ptr [ %.pre1099, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread ], [ %i.acb, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit ]
  br label %.lr.ph.i.i.i428

.lr.ph.i.i.i428:                                  ; preds = %.lr.ph.i.i.i428.preheader, %.lr.ph.i.i.i428
  %.011.i.i.i429 = phi ptr [ %i.acg, %.lr.ph.i.i.i428 ], [ %i.ace, %.lr.ph.i.i.i428.preheader ] ; 2 uses
  %.0810.i.i.i430 = phi ptr [ %i.acf, %.lr.ph.i.i.i428 ], [ %i.abe, %.lr.ph.i.i.i428.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i429, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i430, i64 48, i1 false)
  %i.acf = getelementptr inbounds nuw i8, ptr %.0810.i.i.i430, i64 48 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.011.i.i.i429, i64 48
  %.not.i.i.i431 = icmp eq ptr %i.acf, %i.abd
  br i1 %.not.i.i.i431, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit, label %.lr.ph.i.i.i428, !llvm.loop !211

_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit: ; preds = %.lr.ph.i.i.i428
  %.pre1100 = load ptr, ptr %29, align 8, !alias.scope !243
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433

_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit
  %i.ach = phi ptr [ %i.acd, %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit ], [ %i.acc, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit ]
  %i.aci = phi ptr [ %.pre1100, %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit ], [ %i.acb, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit ]
  %i.acj = getelementptr inbounds nuw [48 x i8], ptr %i.aci, i64 %i.aal
  store ptr %i.acj, ptr %i.ach, align 8, !alias.scope !243
  %i.ack = icmp ult i32 %.sroa.04.0.extract.trunc.i.i406, 1048576
  br i1 %i.ack, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435, label %bb.hc, !prof !19

bb.hc:                                            ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.280) #23
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433
  %i.acl = shl nuw nsw i8 %i.zy, 4
  %i.acm = or disjoint i8 %i.acl, 99
  %i.acn = zext nneg i8 %i.acm to i32
  %i.aco = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i406, 8
  %i.acp = or disjoint i32 %i.aco, %i.acn         ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.016.0.copyload = load i32, ptr %i.acq, align 8
  %i.acr = and i32 %.sroa.016.0.copyload, 8
  %.not.i436 = icmp eq i32 %i.acr, 0
  br i1 %.not.i436, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439, label %bb.hd, !prof !19

bb.hd:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435
  %i.acs = or disjoint i32 %i.acp, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435, %bb.hd
  %.sroa.0.0.i438 = phi i32 [ %i.acs, %bb.hd ], [ %i.acp, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435 ] ; 2 uses
  %i.act = load ptr, ptr %i.yn, align 8           ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.acv = load i8, ptr %i.acu, align 8, !range !20, !noundef !21
  %i.acw = trunc nuw i8 %i.acv to i1
  %i.acx = and i32 %.sroa.0.0.i438, 16
  %i.acy = icmp eq i32 %i.acx, 0
  %or.cond1054.not = select i1 %i.acw, i1 %i.acy, i1 false
  br i1 %or.cond1054.not, label %bb.he, label %.critedge.i98, !prof !33

bb.he:                                            ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439
  %i.acz = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.act)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.act, ptr noundef nonnull @.str.290, ptr noundef %i.acz)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100

.critedge.i98:                                    ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439
  %i.ada = load ptr, ptr %i.aat, align 8          ; 5 uses
  store ptr %i.act, ptr %i.ada, align 8
  %.sroa.4997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  store i32 %.sroa.0.0.i438, ptr %.sroa.4997.0..sroa_idx, align 8
  %.sroa.6999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  store i32 2, ptr %.sroa.6999.0..sroa_idx, align 8
  %.sroa.71000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ada, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.71000.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.91002.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ada, i64 40
  store ptr null, ptr %.sroa.91002.0..sroa_idx, align 8
  %i.adb = load ptr, ptr %i.aat, align 8          ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 48
  store ptr %i.adc, ptr %i.aat, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100: ; preds = %bb.he, %.critedge.i98
  %.0.i99 = phi ptr [ %i.adb, %.critedge.i98 ], [ null, %bb.he ]
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ade = load i8, ptr %i.add, align 8, !range !20, !noundef !21
  %i.adf = trunc nuw i8 %i.ade to i1
  br i1 %i.adf, label %bb.hf, label %bb.hg, !prof !19

bb.hf:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100
  %i.adg = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.adh = load ptr, ptr %29, align 8
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface13ArrayNewFixedEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateEPKNS2_5ValueEPSF_(ptr noundef nonnull align 8 dereferenceable(88) %i.adg, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(17) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef %i.adh, ptr noundef %.0.i99) #22
  %.pre1101 = load i32, ptr %i.zc, align 4
  %.pre1102 = load i32, ptr %i.aaj, align 4
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100
  %i.adi = phi i32 [ %.pre1102, %bb.hf ], [ %.sroa.5.0.i.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100 ]
  %i.adj = phi i32 [ %.pre1101, %bb.hf ], [ %i.zb, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100 ]
  %i.adk = add i32 %i.adj, %2
  %i.adl = add i32 %i.adk, %i.adi
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(408) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.adm = load ptr, ptr %26, align 8             ; 3 uses
  %.not.i.i.i442 = icmp eq ptr %i.adm, null
  br i1 %.not.i.i.i442, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.adn = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ado = load ptr, ptr %i.adn, align 8
  %i.adp = ptrtoint ptr %i.ado to i64
  %i.adq = ptrtoint ptr %i.adm to i64
  %i.adr = sub i64 %i.adp, %i.adq
  call void @_ZdlPvm(ptr noundef nonnull %i.adm, i64 noundef %i.adr) #25
  br label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit: ; preds = %bb.hg, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.hi

bb.hi:                                            ; preds = %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit, %bb.gu
  %.7 = phi i32 [ %i.adl, %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit ], [ 0, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.hj

bb.hj:                                            ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit412, %bb.hi
  %.8 = phi i32 [ %.7, %bb.hi ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit412 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.mh

bb.hk:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.ads = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.adt = load ptr, ptr %i.ads, align 8, !noalias !244
  %i.adu = getelementptr inbounds i8, ptr %i.adt, i64 -152
  %i.adv = load i32, ptr %i.adu, align 8, !noalias !244
  %i.adw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.adx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.ady = load ptr, ptr %i.adx, align 8, !noalias !244 ; 2 uses
  %i.adz = load ptr, ptr %i.adw, align 8, !noalias !244
  %i.aea = ptrtoint ptr %i.ady to i64
  %i.aeb = ptrtoint ptr %i.adz to i64
  %i.aec = sub i64 %i.aea, %i.aeb
  %i.aed = sdiv exact i64 %i.aec, 48
  %i.aee = trunc i64 %i.aed to i32
  %i.aef = add i32 %i.adv, 1
  %.not.i.i120 = icmp ugt i32 %i.aef, %i.aee
  br i1 %.not.i.i120, label %bb.hl, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123, !prof !18

bb.hl:                                            ; preds = %bb.hk
  %i.aeg = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 1), !noalias !244 ; 0 uses
  %.pre1096 = load ptr, ptr %i.adx, align 8, !noalias !244
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123: ; preds = %bb.hk, %bb.hl
  %i.aeh = phi ptr [ %i.ady, %bb.hk ], [ %.pre1096, %bb.hl ] ; 3 uses
  %scevgep.i444 = getelementptr i8, ptr %i.aeh, i64 -48 ; 2 uses
  store ptr %scevgep.i444, ptr %i.adx, align 8, !noalias !244
  %.sroa.06.0.copyload.i = load ptr, ptr %scevgep.i444, align 8, !noalias !245
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.aeh, i64 -40
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !245 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.aeh, i64 -36
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx.i, i64 36, i1 false), !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !245
  %i.aei = icmp eq i32 %.sroa.2.0.copyload.i, 5648
  br i1 %i.aei, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i446, !prof !19

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i446: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123
  %i.aej = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aek = load ptr, ptr %i.aej, align 8, !noalias !245 ; 2 uses
  %i.ael = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i, i32 5648, ptr noundef %i.aek, ptr noundef %i.aek) #22, !noalias !245
  %i.aem = icmp eq i32 %.sroa.2.0.copyload.i, 514
  %or.cond.i = or i1 %i.aem, %i.ael
  br i1 %or.cond.i, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, label %bb.hm, !prof !32

bb.hm:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i446
  store ptr %.sroa.06.0.copyload.i, ptr %6, align 8, !noalias !245
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !245
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, i64 36, i1 false), !noalias !245
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %6, i32 5648), !noalias !245
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i446, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !245
  %i.aen = load ptr, ptr %i.adx, align 8, !noalias !245 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull align 8 dereferenceable(48) %i.aen, i64 48, i1 false)
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aep = load ptr, ptr %i.aeo, align 8          ; 3 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aer = load i8, ptr %i.aeq, align 8, !range !20, !noundef !21
  %i.aes = trunc nuw i8 %i.aer to i1
  br i1 %i.aes, label %bb.hn, label %.critedge.i101

bb.hn:                                            ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit
  %i.aet = tail call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.aep)
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.aep, ptr noundef nonnull @.str.290, ptr noundef %i.aet)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit103

.critedge.i101:                                   ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit
  %.sroa.71007.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aen, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.71007.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.aep, ptr %i.aen, align 8
  %.sroa.41004.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aen, i64 8
  store i32 3073, ptr %.sroa.41004.0..sroa_idx, align 8
  %.sroa.61006.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  store i32 2, ptr %.sroa.61006.0..sroa_idx, align 8
  %.sroa.91009.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aen, i64 40
  store ptr null, ptr %.sroa.91009.0..sroa_idx, align 8
  %i.aeu = load ptr, ptr %i.adx, align 8          ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 48
  store ptr %i.aev, ptr %i.adx, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit103

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit103: ; preds = %bb.hn, %.critedge.i101
  %.0.i102 = phi ptr [ %i.aeu, %.critedge.i101 ], [ null, %bb.hn ]
  %i.aew = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aex = load i8, ptr %i.aew, align 8, !range !20, !noundef !21
  %i.aey = trunc nuw i8 %i.aex to i1
  br i1 %i.aey, label %bb.ho, label %bb.hp, !prof !19

bb.ho:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit103
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface6RefI31EPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS2_5ValueEPS9_(ptr noundef nonnull align 8 dereferenceable(88) %i.aez, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %.0.i102) #22
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit103
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.mh

bb.hq:                                            ; preds = %bb.a
  %i.afa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.afb = load i32, ptr %i.afa, align 8
  %i.afc = and i32 %i.afb, 16
  %.not1058 = icmp eq i32 %i.afc, 0
  br i1 %.not1058, label %bb.hr, label %bb.hs, !prof !18

bb.hr:                                            ; preds = %bb.hq
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1046, i32 noundef 64287)
  br label %bb.mh

bb.hs:                                            ; preds = %bb.hq
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.afe = load ptr, ptr %i.afd, align 8          ; 2 uses
  %i.aff = load i64, ptr %i.afe, align 8
  %i.afg = or i64 %i.aff, 16
  store i64 %i.afg, ptr %i.afe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.afi = load ptr, ptr %i.afh, align 8, !noalias !246
  %i.afj = getelementptr inbounds i8, ptr %i.afi, i64 -152
  %i.afk = load i32, ptr %i.afj, align 8, !noalias !246
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.afm = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.afn = load ptr, ptr %i.afm, align 8, !noalias !246 ; 2 uses
end_hunk_5
