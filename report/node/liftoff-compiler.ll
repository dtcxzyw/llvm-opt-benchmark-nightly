Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/liftoff-compiler?download=true
inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal4wasm14FieldImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_:bb.a
  tail call void @llvm.assume(i1 %i.e)
  %i.f = lshr i64 %i.c, 32
  %i.g = trunc nuw nsw i64 %i.f to i32
  br label %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.b, %bb.c
  %.sroa.04.0.i.i.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %.sroa.5.0.i.i.i = phi i32 [ 1, %bb.b ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %.sroa.04.0.i.i.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %.sroa.5.0.i.i.i, ptr %i.h, align 4
  store i32 %.sroa.04.0.extract.trunc.i.i, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.j, align 8
  %i.k = zext nneg i32 %.sroa.5.0.i.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.m, -1
  br i1 %.not.i.i.i, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit
  %i.n = zext nneg i8 %i.m to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit

bb.e:                                             ; preds = %_ZN2v88internal4wasm20StructIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit
  %i.o = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.l) ; 4 uses
  %i.p = icmp ult i64 %i.o, 25769803776
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp samesign ugt i64 %i.o, 4294967295
  tail call void @llvm.assume(i1 %i.q)
  %i.r = lshr i64 %i.o, 32
  %i.s = trunc nuw nsw i64 %i.r to i32
  %.pre = load i32, ptr %i.h, align 4
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhPKcT_.exit: ; preds = %bb.d, %bb.e
  %i.t = phi i32 [ %.sroa.5.0.i.i.i, %bb.d ], [ %.pre, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ %i.n, %bb.d ], [ %i.o, %bb.e ]
  %.sroa.5.0.i.i = phi i32 [ 1, %bb.d ], [ %i.s, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.04.0.i.i to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.04.0.extract.trunc.i, ptr %i.u, align 8
  store i32 %.sroa.5.0.i.i, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = add i32 %i.t, %.sroa.5.0.i.i
  store i32 %i.x, ptr %i.w, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9StructGetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EERKNS1_14FieldImmediateEbPSB_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 4 ; 4 uses
  %i.i = and i32 %.sroa.0.0.copyload.i.i, 3
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %.sroa.0.0.copyload.i.i, 268435440
  %i.l = add nsw i32 %i.k, -5648                  ; 2 uses
  %i.m = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 24) ; 2 uses
  %i.n = icmp ult i32 %i.m, 8
  br i1 %i.n, label %switch.lookup.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.o = and i32 %.sroa.0.0.copyload.i.i, 268435427
  switch i32 %i.o, label %bb.e [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
    i32 514, label %.fold.split.i
    i32 2, label %.fold.split1.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %.sroa.0.0.copyload.i.i, 5
  %i.q = icmp eq i32 %i.p, 5
  %i.r = select i1 %i.q, i8 10, i8 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split.i:                                    ; preds = %bb.d
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split1.i:                                   ; preds = %bb.d
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

switch.lookup.i:                                  ; preds = %bb.b
  %switch.idx.cast.i = trunc nuw nsw i32 %i.m to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.d, %bb.e, %.fold.split.i, %.fold.split1.i, %switch.lookup.i
  %.0.i32 = phi i8 [ %i.r, %bb.e ], [ 0, %.fold.split1.i ], [ 12, %.fold.split.i ], [ 11, %bb.d ], [ %switch.offset.i, %switch.lookup.i ] ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.t = load i32, ptr %i.s, align 8
  %i.u = zext nneg i8 %.0.i32 to i32
  %i.v = shl nuw nsw i32 1, %i.u
  %i.w = and i32 %i.v, %i.t
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread, !prof !25

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.x = tail call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler30MaybeBailoutForUnsupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull %1, i8 noundef zeroext %.0.i32, ptr noundef nonnull @.str.977)
  br i1 %i.x, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit._ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread_crit_edge, label %bb.q

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit._ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread_crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit
  %.pre = load i32, ptr %i.c, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit._ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread_crit_edge, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.y = phi i32 [ %.pre, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit._ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread_crit_edge ], [ %i.d, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit ] ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ab = load i8, ptr %i.aa, align 2, !range !23, !noundef !24
  %i.ac = shl nuw nsw i8 %i.ab, 3
  %i.ad = zext nneg i8 %i.ac to i32
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit

bb.g:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = add i32 %i.y, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ad, %bb.f ], [ %i.aj, %bb.g ]
  %i.ak = add i32 %.0.i.i, 15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -12 ; 2 uses
  %.sroa.09.0.copyload = load i64, ptr %i.ao, align 4 ; 3 uses
  %.sroa.09.sroa.510.0.extract.shift = lshr i64 %.sroa.09.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.an, i64 -4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.ao, ptr %i.am, align 8
  %i.ap = and i64 %.sroa.09.0.copyload, 255
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !26

bb.h:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.as = and i64 %.sroa.09.sroa.510.0.extract.shift, 255
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc nuw i64 %.sroa.09.sroa.510.0.extract.shift to i32
  %i.ay = and i32 %i.ax, 255
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ba = shl nuw i32 1, %i.ay
  %i.bb = xor i32 %i.ba, -1
  %i.bc = load i32, ptr %i.az, align 8
  %i.bd = and i32 %i.bc, %i.bb
  store i32 %i.bd, ptr %i.az, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.011.4.extract.trunc = trunc i64 %.sroa.09.sroa.510.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit
  %i.be = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.09.0.copyload, i32 %.sroa.6.0.copyload, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.j, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit
  %.sroa.07.0.i = phi i8 [ %.sroa.011.4.extract.trunc, %bb.j ], [ %i.be, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 5 uses
  %i.bf = zext nneg i8 %.sroa.07.0.i to i32
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %.sroa.012.0.copyload = load i32, ptr %2, align 4 ; 2 uses
  %i.bh = load i32, ptr %i.c, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %.val = load i32, ptr %i.bi, align 8
  %i.bj = and i32 %.sroa.012.0.copyload, 5
  %i.bk = icmp eq i32 %i.bj, 5                    ; 2 uses
  %i.bl = icmp eq i32 %.val, 0
  %i.bm = icmp sgt i32 %i.bh, 4000
  %or.cond.i = or i1 %i.bm, %i.bl                 ; 2 uses
  %narrow = select i1 %i.bk, i1 %or.cond.i, i1 false
  %i.bn = xor i1 %or.cond.i, true
  %5 = select i1 %i.bk, i1 %i.bn, i1 false
  br i1 %narrow, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.bo = icmp samesign ult i8 %.sroa.07.0.i, 16
  tail call void @llvm.assume(i1 %i.bo)
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18MaybeEmitNullCheckEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterENS1_14LiftoffRegListENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, i8 %.sroa.07.0.i, i32 %i.bg, i32 %.sroa.012.0.copyload)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.bp = zext nneg i8 %.0.i32 to i64
  %i.bq = icmp samesign ult i8 %.0.i32, 11
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.bp
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp ne i8 %.0.i32, 0
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = zext nneg i8 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.bu
  %.sroa.0.0.copyload.i.i35 = load i32, ptr %i.bv, align 4
  %i.bw = xor i32 %i.bg, -1
  %i.bx = and i32 %.sroa.0.0.copyload.i.i35, %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.by, align 8
  %i.bz = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.ca = and i32 %i.bx, %i.bz                    ; 2 uses
  %.not.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m, !prof !25

bb.m:                                             ; preds = %bb.l
  %i.cb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ca, i1 true)
  %i.cc = trunc nuw nsw i32 %i.cb to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.n:                                             ; preds = %bb.l
  %i.cd = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.bx) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.m, %bb.n
  %.sroa.06.0.i.i = phi i8 [ %i.cc, %bb.m ], [ %i.cd, %bb.n ] ; 4 uses
  %i.ce = icmp samesign ult i8 %.sroa.07.0.i, 16
  tail call void @llvm.assume(i1 %i.ce)
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15LoadObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15LiftoffRegisterENS0_8RegisterESB_iNS1_9ValueKindEbbNS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, i8 %.sroa.06.0.i.i, i8 %.sroa.07.0.i, i8 -1, i32 noundef %i.ak, i8 noundef zeroext %.0.i32, i1 noundef zeroext %4, i1 noundef zeroext %5)
  %i.cf = add nsw i8 %.0.i32, -6
  %spec.select.i.i = icmp ult i8 %i.cf, 3
  %i.cg = icmp eq i8 %.0.i32, 8
  %i.ch = select i1 %i.cg, i8 3, i8 1
  %i.ci = select i1 %spec.select.i.i, i8 %i.ch, i8 %.0.i32 ; 3 uses
  %i.cj = zext nneg i8 %.sroa.06.0.i.i to i32
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = load i32, ptr %i.by, align 8
  %i.cm = or i32 %i.cl, %i.ck
  store i32 %i.cm, ptr %i.by, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.co = zext i8 %.sroa.06.0.i.i to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4
  %i.cs = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = icmp eq ptr %i.cs, %i.cu
  br i1 %i.cv, label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, -1
  tail call void @llvm.assume(i1 %i.cy)
  br label %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i

_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i: ; preds = %bb.o, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %i.cz = phi i32 [ %i.cx, %bb.o ], [ 32, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit ] ; 2 uses
  %i.da = add nsw i8 %i.ci, -9
  %i.db = icmp ult i8 %i.da, 2
  br i1 %i.db, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i, label %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.dc = zext nneg i8 %i.ci to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = sext i8 %i.de to i32
  %i.dg = add nsw i32 %i.cz, %i.df
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i: ; preds = %_ZNK2v88internal4wasm16LiftoffAssembler14TopSpillOffsetEv.exit.i
  %i.dh = add nuw i32 %i.cz, 15
  %i.di = and i32 %i.dh, -8
  br label %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i

_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i
  %.0.i.i36 = phi i32 [ %i.di, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit2.i ], [ %i.dg, %_ZN2v88internal4wasm16LiftoffAssembler15SlotSizeForTypeENS1_9ValueKindE.exit.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = icmp eq ptr %i.cs, %i.dk
  br i1 %i.dl, label %bb.p, label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit, !prof !25

bb.p:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm15LiftoffVarStateELm16ENS2_13ZoneAllocatorIS4_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(224) %i.al)
  %.pre.i.i = load ptr, ptr %i.am, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit

_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i, %bb.p
  %i.dm = phi ptr [ %.pre.i.i, %bb.p ], [ %i.cs, %_ZN2v88internal4wasm16LiftoffAssembler15NextSpillOffsetENS1_9ValueKindEi.exit.i ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store ptr %i.dn, ptr %i.am, align 8
  store i8 1, ptr %i.dm, align 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store i8 %i.ci, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i8 %.sroa.06.0.i.i, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %.0.i.i36, ptr %i.dq, align 4
  br label %bb.q

bb.q:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18CheckSupportedTypeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_9ValueKindEPKc.exit, %_ZN2v88internal4wasm16LiftoffAssembler12PushRegisterENS1_9ValueKindENS1_15LiftoffRegisterE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9StructSetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EERKNS1_14FieldImmediateESD_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.h, align 4 ; 4 uses
  %i.i = and i32 %.sroa.0.0.copyload.i.i, 3
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %.sroa.0.0.copyload.i.i, 268435440
  %i.l = add nsw i32 %i.k, -5648                  ; 2 uses
  %i.m = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 24) ; 2 uses
  %i.n = icmp ult i32 %i.m, 8
  br i1 %i.n, label %switch.lookup.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.o = and i32 %.sroa.0.0.copyload.i.i, 268435427
  switch i32 %i.o, label %bb.e [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
    i32 514, label %.fold.split.i
    i32 2, label %.fold.split1.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = and i32 %.sroa.0.0.copyload.i.i, 5
  %i.q = icmp eq i32 %i.p, 5
  %i.r = select i1 %i.q, i8 10, i8 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split.i:                                    ; preds = %bb.d
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split1.i:                                   ; preds = %bb.d
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

switch.lookup.i:                                  ; preds = %bb.b
  %switch.idx.cast.i = trunc nuw nsw i32 %i.m to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.d, %bb.e, %.fold.split.i, %.fold.split1.i, %switch.lookup.i
  %.0.i = phi i8 [ %i.r, %bb.e ], [ 0, %.fold.split1.i ], [ 12, %.fold.split.i ], [ 11, %bb.d ], [ %switch.offset.i, %switch.lookup.i ]
  %i.s = icmp eq i32 %i.d, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.u = load i8, ptr %i.t, align 2, !range !23, !noundef !24
  %i.v = shl nuw nsw i8 %i.u, 3
  %i.w = zext nneg i8 %i.v to i32
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit

bb.g:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = add i32 %i.d, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.w, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -12 ; 3 uses
  %.sroa.010.0.copyload = load i64, ptr %i.af, align 4 ; 3 uses
  %.sroa.010.sroa.511.0.extract.shift = lshr i64 %.sroa.010.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.af, ptr %i.ad, align 8
  %i.ag = and i64 %.sroa.010.0.copyload, 255
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !26

bb.h:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.aj = and i64 %.sroa.010.sroa.511.0.extract.shift, 255
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add i32 %i.al, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ak, align 4
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = trunc nuw i64 %.sroa.010.sroa.511.0.extract.shift to i32
  %i.ap = and i32 %i.ao, 255
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ar = shl nuw i32 1, %i.ap
  %i.as = xor i32 %i.ar, -1
  %i.at = load i32, ptr %i.aq, align 8
  %i.au = and i32 %i.at, %i.as
  store i32 %i.au, ptr %i.aq, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.4.extract.trunc = trunc i64 %.sroa.010.sroa.511.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit
  %i.av = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.010.0.copyload, i32 %.sroa.6.0.copyload, i32 0) #24
  %.pre = load ptr, ptr %i.ad, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.j, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit
  %i.aw = phi ptr [ %i.af, %bb.j ], [ %.pre, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 2 uses
  %.sroa.07.0.i = phi i8 [ %.sroa.015.4.extract.trunc, %bb.j ], [ %i.av, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 2 uses
  %i.ax = zext nneg i8 %.sroa.07.0.i to i32
  %i.ay = shl nuw i32 1, %i.ax                    ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 -12 ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.az, align 4 ; 3 uses
  %.sroa.012.sroa.514.0.extract.shift = lshr i64 %.sroa.012.0.copyload, 32 ; 3 uses
  %.sroa.613.0..sroa_idx = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %.sroa.613.0.copyload = load i32, ptr %.sroa.613.0..sroa_idx, align 4
  store ptr %i.az, ptr %i.ad, align 8
  %i.ba = and i64 %.sroa.012.0.copyload, 255
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.k, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit33, !prof !26

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.bd = and i64 %.sroa.012.sroa.514.0.extract.shift, 255
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = trunc nuw i64 %.sroa.012.sroa.514.0.extract.shift to i32
  %i.bj = and i32 %i.bi, 255
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.bl = shl nuw i32 1, %i.bj
  %i.bm = xor i32 %i.bl, -1
  %i.bn = load i32, ptr %i.bk, align 8
  %i.bo = and i32 %i.bn, %i.bm
  store i32 %i.bo, ptr %i.bk, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.018.4.extract.trunc = trunc i64 %.sroa.012.sroa.514.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit38

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit33: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.bp = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.012.0.copyload, i32 %.sroa.613.0.copyload, i32 %i.ay) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit38

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit38: ; preds = %bb.m, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit33
  %.sroa.07.0.i37 = phi i8 [ %.sroa.018.4.extract.trunc, %bb.m ], [ %i.bp, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit33 ] ; 5 uses
  %i.bq = zext nneg i8 %.sroa.07.0.i37 to i32
  %i.br = shl nuw i32 1, %i.bq
  %i.bs = or i32 %i.br, %i.ay                     ; 2 uses
  %.sroa.08.0.copyload = load i32, ptr %2, align 4 ; 2 uses
  %i.bt = load i32, ptr %i.c, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %.val = load i32, ptr %i.bu, align 8
  %i.bv = and i32 %.sroa.08.0.copyload, 5
  %i.bw = icmp eq i32 %i.bv, 5                    ; 2 uses
  %i.bx = icmp eq i32 %.val, 0
  %i.by = icmp sgt i32 %i.bt, 4000
  %or.cond.i = or i1 %i.by, %i.bx                 ; 2 uses
  %narrow = select i1 %i.bw, i1 %or.cond.i, i1 false
  br i1 %narrow, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit38
  %i.bz = icmp samesign ult i8 %.sroa.07.0.i37, 16
  tail call void @llvm.assume(i1 %i.bz)
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18MaybeEmitNullCheckEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterENS1_14LiftoffRegListENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, i8 %.sroa.07.0.i37, i32 %i.bs, i32 %.sroa.08.0.copyload)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit38
  %i.ca = xor i1 %or.cond.i, true
  %4 = select i1 %i.bw, i1 %i.ca, i1 false
  %i.cb = add i32 %.0.i.i, 15
  %i.cc = icmp samesign ult i8 %.sroa.07.0.i37, 16
  tail call void @llvm.assume(i1 %i.cc)
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16StoreObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterESA_iNS1_15LiftoffRegisterEbNS1_14LiftoffRegListENS1_9ValueKindENS1_16LiftoffAssembler16SkipWriteBarrierE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, i8 %.sroa.07.0.i37, i8 -1, i32 noundef %i.cb, i8 %.sroa.07.0.i, i1 noundef zeroext %4, i32 %i.bs, i8 noundef zeroext %.0.i, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15ArrayNewSegmentEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateERKNS1_9ValueBaseIS6_EESJ_PSH_(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::base::OwnedVector.731", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %7 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %8 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 7 uses
  %9 = alloca %"class.v8::internal::Operand", align 8 ; 8 uses
  %10 = alloca %"class.v8::internal::wasm::(anonymous namespace)::PrototypeSetupSequenceDetector", align 8 ; 44 uses
  %11 = alloca %"struct.v8::internal::wasm::(anonymous namespace)::LiftoffCompiler::ElseState", align 8 ; 15 uses
  %12 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 13 uses
  %13 = alloca %"class.v8::internal::FixedSizeSignature.784", align 8 ; 7 uses
  %14 = alloca [2 x %"class.v8::internal::wasm::LiftoffVarState"], align 4 ; 11 uses
  %15 = alloca %"struct.v8::internal::wasm::LiftoffAssembler::CacheState", align 8 ; 14 uses
  %16 = alloca %"class.v8::internal::FixedSizeSignature.917", align 8 ; 10 uses
  %17 = alloca %"class.v8::internal::FixedSizeSignature.772", align 8 ; 6 uses
  %18 = alloca [6 x %"class.v8::internal::wasm::LiftoffVarState"], align 4 ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler13CheckMaxStepsEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef 1000)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.ao

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.f, align 8
  %i.r = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.i
  %i.u = trunc i64 %i.t to i32
  %i.v = add i32 %i.k, %i.u
  store ptr %i.r, ptr %i.n, align 8
  store <2 x ptr> %i.q, ptr %i.o, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  store i32 -1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 4 uses
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i64 0, ptr %i.aa, align 8
  store i8 0, ptr %i.z, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetectorE, i64 16), ptr %10, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr %i.m, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  store i32 -1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 92 ; 2 uses
  store i32 -1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 3 uses
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 3 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 6 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = icmp eq i8 %i.ak, 2
  br i1 %i.al, label %bb.e, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -23
  %i.an = load i8, ptr %i.am, align 1
  %.not.i = icmp eq i8 %i.an, 1
  br i1 %.not.i, label %bb.f, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 -20
  %i.ap = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds i8, ptr %i.ai, i64 -12
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = icmp eq i8 %i.as, 2
  br i1 %i.at, label %bb.g, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds i8, ptr %i.ai, i64 -11
  %i.av = load i8, ptr %i.au, align 1
  %.not12.i = icmp eq i8 %i.av, 1
  br i1 %.not12.i, label %bb.h, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 116
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 120
  %i.ba = call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector21ExpectArrayNewSegmentENS1_10WasmOpcodeENS1_18CanonicalTypeIndexEjjRj(ptr noundef nonnull align 8 dereferenceable(148) %10, i32 noundef 64266, i32 2, i32 noundef %i.ap, i32 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.az)
  br i1 %i.ba, label %bb.i, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 124 ; 2 uses
  %i.bc = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = and i64 %i.bg, 4294967295
  %.not.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i, label %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread.i.i, label %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.i.i, !prof !25

_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.thread.i.i: ; preds = %bb.i
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(148) %10, ptr noundef %i.bd, ptr noundef nonnull @.str.51, i32 noundef 1)
  %i.bi = load ptr, ptr %i.p, align 8
  store ptr %i.bi, ptr %i.o, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.i.i: ; preds = %bb.i
  %.0.copyload.i.i.i.i.i.i.i = load i8, ptr %i.bd, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 5 uses
  store ptr %i.bj, ptr %i.o, align 8
  %.not.i.i = icmp eq i8 %.0.copyload.i.i.i.i.i.i.i, 65
  br i1 %.not.i.i, label %bb.j, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.j:                                             ; preds = %_ZN2v88internal4wasm7Decoder10consume_u8EPKc.exit.i.i
  %i.bk = icmp ult ptr %i.bj, %i.bc
  br i1 %i.bk, label %bb.k, label %.critedge.i.i.i.i, !prof !26

bb.k:                                             ; preds = %bb.j
  %i.bl = load i8, ptr %i.bj, align 1             ; 2 uses
  %.not.i.i3.i.i = icmp sgt i8 %i.bl, -1
  br i1 %.not.i.i3.i.i, label %bb.l, label %.critedge.i.i.i.i, !prof !26

bb.l:                                             ; preds = %bb.k
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = shl nuw i32 %i.bm, 25
  %i.bo = ashr exact i32 %i.bn, 25
  br label %bb.m

.critedge.i.i.i.i:                                ; preds = %bb.k, %bb.j
  %i.bp = call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIiNS2_17FullValidationTagELNS2_9TraceFlagE1ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(148) %10, ptr noundef nonnull %i.bj, ptr noundef null) ; 3 uses
  %.sroa.04.0.extract.trunc.i.i.i = trunc i64 %i.bp to i32
  %i.bq = icmp ult i64 %i.bp, 25769803776
  call void @llvm.assume(i1 %i.bq)
  %i.br = lshr i64 %i.bp, 32
  %.pre.i.i.i = load ptr, ptr %i.o, align 8
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i.i.i.i, %bb.l
  %i.bs = phi ptr [ %i.bj, %bb.l ], [ %.pre.i.i.i, %.critedge.i.i.i.i ]
  %.sroa.09.0.i.i.i = phi i32 [ %i.bo, %bb.l ], [ %.sroa.04.0.extract.trunc.i.i.i, %.critedge.i.i.i.i ]
  %.sroa.5.0.i.i.i = phi i64 [ 1, %bb.l ], [ %i.br, %.critedge.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.5.0.i.i.i
  store ptr %i.bt, ptr %i.o, align 8
  store i32 %.sroa.09.0.i.i.i, ptr %i.bb, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 128 ; 2 uses
  %i.bv = call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14ExpectI32ConstERj(ptr noundef nonnull align 8 dereferenceable(148) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.bu)
  br i1 %i.bv, label %bb.n, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bw = load i32, ptr %i.bb, align 4
  %i.bx = load i32, ptr %i.bu, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 132
  %i.bz = call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector21ExpectArrayNewSegmentENS1_10WasmOpcodeENS1_18CanonicalTypeIndexEjjRj(ptr noundef nonnull align 8 dereferenceable(148) %10, i32 noundef 64266, i32 3, i32 noundef %i.bw, i32 noundef %i.bx, ptr noundef nonnull align 4 dereferenceable(4) %i.by)
  br i1 %i.bz, label %bb.o, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  %i.cb = call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14ExpectI32ConstERj(ptr noundef nonnull align 8 dereferenceable(148) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.ca)
  br i1 %i.cb, label %bb.p, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 140 ; 2 uses
  %i.cd = call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14ExpectI32ConstERj(ptr noundef nonnull align 8 dereferenceable(148) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.cc)
  br i1 %i.cd, label %bb.q, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.ce = load i32, ptr %i.ca, align 8
  %i.cf = load i32, ptr %i.cc, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.ch = call fastcc noundef zeroext i1 @_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector21ExpectArrayNewSegmentENS1_10WasmOpcodeENS1_18CanonicalTypeIndexEjjRj(ptr noundef nonnull align 8 dereferenceable(148) %10, i32 noundef 64265, i32 0, i32 noundef %i.ce, i32 noundef %i.cf, ptr noundef nonnull align 4 dereferenceable(4) %i.cg)
  br i1 %i.ch, label %bb.r, label %_ZN2v88internal4wasm12_GLOBAL__N_130PrototypeSetupSequenceDetector14DetectSequenceEPNS1_16LiftoffAssembler10CacheStateE.exit.thread

end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8RttCanonEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15ModuleTypeIndexENS1_14LiftoffRegListE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %5, align 8
  store i64 1, ptr %i.ac, align 8
  switch i8 %.sroa.015.0, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit19._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge [
    i8 4, label %bb.f
    i8 12, label %bb.f
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit19._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit19
  %.pre = and i8 %.sroa.015.0, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit

bb.f:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit19, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit19
  %scevgep.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  %i.ad = and i8 %.sroa.015.0, 7                  ; 2 uses
  %i.ae = or disjoint i8 %i.ad, 32
  store i8 %i.ae, ptr %scevgep.i, align 1
  %i.af = icmp samesign ult i8 %.sroa.015.0, 16
  tail call void @llvm.assume(i1 %i.af)
  store i64 2, ptr %i.ac, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit19._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge, %bb.f
  %.pre-phi = phi i8 [ %.pre, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit19._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge ], [ %i.ad, %bb.f ]
  %i.ag = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit19._ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit_crit_edge ], [ 2, %bb.f ]
  %i.ah = lshr i8 %.sroa.015.0, 3
  %i.ai = or disjoint i8 %.pre-phi, -128
  store i8 %i.ai, ptr %i.ab, align 2
  %i.aj = icmp samesign ult i8 %.sroa.015.0, 16
  tail call void @llvm.assume(i1 %i.aj)
  store i8 %i.ah, ptr %i.aa, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  store i32 167, ptr %i.ak, align 1
  %i.al = load i64, ptr %i.ac, align 8
  %i.am = add i64 %i.al, 4
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %5, align 8
  tail call void @_ZN2v88internal14MacroAssembler25LoadProtectedPointerFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %i.ao, ptr %i.an) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 0, ptr %4, align 8
  store i64 1, ptr %i.ar, align 8
  switch i8 %.sroa.06.0.i.i, label %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge [
    i8 4, label %bb.g
    i8 12, label %bb.g
  ]

_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit
  %.pre19 = and i8 %.sroa.06.0.i.i, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit

bb.g:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit
  %scevgep.i20 = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.as = and i8 %.sroa.06.0.i.i, 7               ; 2 uses
  %i.at = or disjoint i8 %i.as, 32
  store i8 %i.at, ptr %scevgep.i20, align 1
  store i64 2, ptr %i.ar, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit

_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge, %bb.g
  %.pre-phi20 = phi i8 [ %.pre19, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge ], [ %i.as, %bb.g ]
  %i.au = phi i64 [ 1, %_ZN2v88internal4wasm16LiftoffAssembler20LoadProtectedPointerENS0_8RegisterES3_i.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit_crit_edge ], [ 2, %bb.g ]
  %i.av = lshr i8 %.sroa.06.0.i.i, 3
  %i.aw = or disjoint i8 %.pre-phi20, -128
  store i8 %i.aw, ptr %i.aq, align 2
  store i8 %i.av, ptr %i.ap, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.au
  store i32 239, ptr %i.ax, align 1
  %i.ay = load i64, ptr %i.ar, align 8
  %i.az = add i64 %i.ay, 4
  %i.ba = inttoptr i64 %i.az to ptr
  %i.bb = load i64, ptr %4, align 8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %i.bb, ptr %i.ba) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.k

bb.h:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  br i1 %i.y, label %bb.i, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call preserve_mostcc i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler29LoadInstanceIntoRegister_SlowENS1_14LiftoffRegListENS0_8RegisterE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 %i.u, i8 %.sroa.06.0.i.i)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit: ; preds = %bb.h, %bb.i
  %.sroa.013.0 = phi i8 [ %i.bc, %bb.i ], [ %i.x, %bb.h ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %3, align 8
  store i64 1, ptr %i.bf, align 8
  switch i8 %.sroa.013.0, label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22_crit_edge [
    i8 4, label %bb.j
    i8 12, label %bb.j
  ]

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22_crit_edge: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit
  %.pre23 = and i8 %.sroa.013.0, 7
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit
  %scevgep.i21 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.bg = and i8 %.sroa.013.0, 7                  ; 2 uses
  %i.bh = or disjoint i8 %i.bg, 32
  store i8 %i.bh, ptr %scevgep.i21, align 1
  %i.bi = icmp samesign ult i8 %.sroa.013.0, 16
  tail call void @llvm.assume(i1 %i.bi)
  store i64 2, ptr %i.bf, align 8
  br label %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22

_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22: ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22_crit_edge, %bb.j
  %.pre-phi24 = phi i8 [ %.pre23, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22_crit_edge ], [ %i.bg, %bb.j ]
  %i.bj = phi i64 [ 1, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24LoadInstanceIntoRegisterENS1_14LiftoffRegListENS0_8RegisterE.exit._ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22_crit_edge ], [ 2, %bb.j ]
  %i.bk = lshr i8 %.sroa.013.0, 3
  %i.bl = or disjoint i8 %.pre-phi24, -128
  store i8 %i.bl, ptr %i.be, align 2
  %i.bm = icmp samesign ult i8 %.sroa.013.0, 16
  tail call void @llvm.assume(i1 %i.bm)
  store i8 %i.bk, ptr %i.bd, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj
  store i32 239, ptr %i.bn, align 1
  %i.bo = load i64, ptr %i.bf, align 8
  %i.bp = add i64 %i.bo, 4
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load i64, ptr %3, align 8
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %i.br, ptr %i.bq) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit22, %_ZN2v88internal4wasm16LiftoffAssembler29LoadTaggedPointerFromInstanceENS0_8RegisterES3_i.exit
  %i.bs = shl nsw i32 %1, 3
  %i.bt = add i32 %i.bs, 15
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call { i64, ptr } @_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i8 -1, i64 noundef %i.bu, i8 noundef signext 0) ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 1
  %i.bx = extractvalue { i64, ptr } %i.bv, 0
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %.sroa.06.0.i.i, i64 %i.bx, ptr %i.bw) #24
  ret i8 %.sroa.06.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i8 0, 16) i8 @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler27GetRttFromDescriptorOnStackEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_9ValueBaseIS6_EE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::Operand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -12 ; 2 uses
  %.sroa.029.0.copyload = load i64, ptr %i.c, align 4 ; 3 uses
  %.sroa.029.sroa.530.0.extract.shift = lshr i64 %.sroa.029.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.b, i64 -4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.c, ptr %i.a, align 8
  %i.d = and i64 %.sroa.029.0.copyload, 255
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.g = and i64 %.sroa.029.sroa.530.0.extract.shift, 255
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nuw i64 %.sroa.029.sroa.530.0.extract.shift to i32
  %i.m = and i32 %i.l, 255
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.o = shl nuw i32 1, %i.m
  %i.p = xor i32 %i.o, -1
  %i.q = load i32, ptr %i.n, align 8
  %i.r = and i32 %i.q, %i.p
  store i32 %i.r, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.031.4.extract.trunc = trunc i64 %.sroa.029.sroa.530.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %bb.a
  %i.s = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.029.0.copyload, i32 %.sroa.6.0.copyload, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.d, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit
  %.sroa.07.0.i = phi i8 [ %.sroa.031.4.extract.trunc, %bb.d ], [ %i.s, %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit ] ; 8 uses
  %i.t = zext nneg i8 %.sroa.07.0.i to i32
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %.sroa.09.0.copyload = load i32, ptr %2, align 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %.val = load i32, ptr %i.v, align 8
  %i.w = and i32 %.sroa.09.0.copyload, 5
  %i.x = icmp eq i32 %i.w, 5                      ; 2 uses
  %i.y = icmp eq i32 %.val, 0                     ; 2 uses
  %narrow = select i1 %i.x, i1 %i.y, i1 false
  br i1 %narrow, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.z = icmp samesign ult i8 %.sroa.07.0.i, 16
  tail call void @llvm.assume(i1 %i.z)
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler18MaybeEmitNullCheckEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterENS1_14LiftoffRegListENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef %1, i8 %.sroa.07.0.i, i32 %i.u, i32 %.sroa.09.0.copyload)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.aa = and i32 %i.u, 37839
  %i.ab = xor i32 %i.aa, 37839                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.ac, align 8
  %i.ad = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.ae = and i32 %i.ab, %i.ad                    ; 2 uses
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !25

bb.g:                                             ; preds = %bb.f
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ae, i1 true)
  %i.ag = trunc nuw nsw i32 %i.af to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.ab) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit: ; preds = %bb.g, %bb.h
  %.sroa.06.0.i.i = phi i8 [ %i.ag, %bb.g ], [ %i.ah, %bb.h ] ; 4 uses
  %i.ai = icmp samesign ult i8 %.sroa.07.0.i, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ult i8 %.sroa.06.0.i.i, 16
  tail call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i64 0, ptr %3, align 8
  switch i8 %.sroa.07.0.i, label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit._ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit_crit_edge [
    i8 4, label %bb.i
    i8 12, label %bb.i
  ]

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit._ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit_crit_edge: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %.pre = and i8 %.sroa.07.0.i, 7
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit

bb.i:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit
  %scevgep83.i = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.am = and i8 %.sroa.07.0.i, 7                 ; 2 uses
  %i.an = or disjoint i8 %i.am, 32
  store i8 %i.an, ptr %scevgep83.i, align 1
  br label %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit

_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit._ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit_crit_edge, %bb.i
  %.pre-phi = phi i8 [ %.pre, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit._ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit_crit_edge ], [ %i.am, %bb.i ]
  %i.ao = phi i64 [ 1, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit._ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit_crit_edge ], [ 2, %bb.i ] ; 2 uses
  %i.ap = lshr i8 %.sroa.07.0.i, 3
  %i.aq = or disjoint i8 %.pre-phi, 64
  store i8 %i.aq, ptr %i.al, align 2
  store i8 %i.ap, ptr %i.ak, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  store i8 15, ptr %i.ar, align 1
  %i.as = add nuw nsw i64 %i.ao, 1
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %.fca.0.load.i = load i64, ptr %3, align 8      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %not. = xor i1 %i.x, true
  %4 = select i1 %not., i1 true, i1 %i.y
  br i1 %4, label %_ZN2v88internal4wasm16LiftoffAssembler17LoadTaggedPointerENS0_8RegisterES3_S3_iPjb.exit.i, label %bb.j

_ZN2v88internal4wasm16LiftoffAssembler17LoadTaggedPointerENS0_8RegisterES3_S3_iPjb.exit.i: ; preds = %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.06.0.i.i, i64 %.fca.0.load.i, ptr nonnull %i.at) #24
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15LoadObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15LiftoffRegisterENS0_8RegisterESB_iNS1_9ValueKindEbbNS1_14LiftoffRegListE.exit

bb.j:                                             ; preds = %_ZN2v88internal4wasm7liftoff8GetMemOpEPNS1_16LiftoffAssemblerENS0_8RegisterES5_mNS0_11ScaleFactorE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = trunc i64 %i.ba to i32
  tail call void @_ZN2v88internal14MacroAssembler15LoadTaggedFieldENS0_8RegisterENS0_7OperandE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.06.0.i.i, i64 %.fca.0.load.i, ptr nonnull %i.at) #24
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler28RegisterProtectedInstructionEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEj(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull readonly %1, i32 noundef %i.bb)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15LoadObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15LiftoffRegisterENS0_8RegisterESB_iNS1_9ValueKindEbbNS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler15LoadObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15LiftoffRegisterENS0_8RegisterESB_iNS1_9ValueKindEbbNS1_14LiftoffRegListE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler17LoadTaggedPointerENS0_8RegisterES3_S3_iPjb.exit.i, %bb.j
  ret i8 %.sroa.06.0.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm16LiftoffAssembler13emit_s128_xorENS1_15LiftoffRegisterES3_S3_(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 %1, i8 %2, i8 %3) #4 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal4wasm7liftoff24EmitSimdCommutativeBinOpIXadL_ZNS0_9Assembler5vpxorENS0_11XMMRegisterES5_S5_EEXadL_ZNS4_4pxorES5_S5_EEEEvPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterES8_S8_St8optionalINS0_10CpuFeatureEE(ptr noundef nonnull %0, i8 %1, i8 %2, i8 %3, i64 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7liftoff24EmitSimdCommutativeBinOpIXadL_ZNS0_9Assembler5vpxorENS0_11XMMRegisterES5_S5_EEXadL_ZNS4_4pxorES5_S5_EEEEvPNS1_16LiftoffAssemblerENS1_15LiftoffRegisterES8_S8_St8optionalINS0_10CpuFeatureEE(ptr noundef %0, i8 %1, i8 %2, i8 %3, i64 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr @_ZN2v88internal11CpuFeatures10supported_E, align 4
  %i.b = and i32 %i.a, 32
  %.not = icmp eq i32 %i.b, 0
  %i.c = add nsw i8 %1, -16                       ; 4 uses
  %i.d = icmp slt i8 %1, 32
  tail call void @llvm.assume(i1 %i.d)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i8 %2, -16
  %i.f = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i8 %3, -16
  %i.h = icmp slt i8 %3, 32
  tail call void @llvm.assume(i1 %i.h)
  tail call void @_ZN2v88internal9Assembler6vinstrEhNS0_11XMMRegisterES2_S2_NS1_10SIMDPrefixENS1_13LeadingOpcodeENS1_4VexWENS0_10CpuFeatureE(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 noundef zeroext -17, i8 %i.c, i8 %i.e, i8 %i.g, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 5) #24
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = add nsw i8 %3, -16
  %i.j = icmp slt i8 %3, 32
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i8 %1, %3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nsw i8 %2, -16
  %i.m = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.m)
  tail call void @_ZN2v88internal9Assembler10sse2_instrENS0_11XMMRegisterES2_hhh(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.c, i8 %i.l, i8 noundef zeroext 102, i8 noundef zeroext 15, i8 noundef zeroext -17) #24
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.n = icmp slt i8 %2, 32
  tail call void @llvm.assume(i1 %i.n)
  %.not33 = icmp eq i8 %1, %2
  br i1 %.not33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i8 %2, -16
  tail call void @_ZN2v88internal9Assembler6movapsENS0_11XMMRegisterES2_(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.c, i8 %i.o) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @_ZN2v88internal9Assembler10sse2_instrENS0_11XMMRegisterES2_hhh(ptr noundef nonnull align 8 dereferenceable(408) %0, i8 %i.c, i8 %i.i, i8 noundef zeroext 102, i8 noundef zeroext 15, i8 noundef zeroext -17) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler8ArrayNewEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_19ArrayIndexImmediateEb(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(17) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::FixedSizeSignature", align 8 ; 7 uses
  %5 = alloca %"class.v8::internal::FixedSizeSignature.772", align 8 ; 6 uses
  %6 = alloca [3 x %"class.v8::internal::wasm::LiftoffVarState"], align 4 ; 12 uses
  %7 = alloca %"class.v8::internal::wasm::WasmValue", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler13CheckMaxStepsEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef 1000)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -12
  %.sroa.038.0.copyload = load i64, ptr %i.f, align 4 ; 3 uses
  %i.g = and i64 %.sroa.038.0.copyload, 255
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  %.sroa.079.4.extract.shift = lshr i64 %.sroa.038.0.copyload, 32
  %.sroa.079.4.extract.trunc = trunc i64 %.sroa.079.4.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

bb.e:                                             ; preds = %bb.c
  %.sroa.239.0..sroa_idx = getelementptr inbounds i8, ptr %i.e, i64 -4
  %.sroa.239.0.copyload = load i32, ptr %.sroa.239.0..sroa_idx, align 4
  %i.i = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.038.0.copyload, i32 %.sroa.239.0.copyload, i32 0) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit: ; preds = %bb.d, %bb.e
  %.sroa.07.0.i = phi i8 [ %.sroa.079.4.extract.trunc, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  %i.j = tail call fastcc ptr @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16AddOutOfLineTrapEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(1284) %0, ptr noundef nonnull %1, i32 noundef 1385)
  %i.k = icmp samesign ult i8 %.sroa.07.0.i, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.n, align 4 ; 2 uses
  %i.o = trunc i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.o, label %_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit
  %i.p = lshr i32 %.sroa.0.0.copyload.i.i, 8
  %i.q = add nuw nsw i32 %i.p, 2
  %i.r = and i32 %i.q, 7
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @__const._ZNK2v88internal4wasm13ValueTypeBase15value_kind_sizeEv.kValueKindSize, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  br label %_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit

_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit: ; preds = %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit, %bb.f
  %.0.i.i = phi i32 [ %i.v, %bb.f ], [ 8, %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit ]
  %i.w = udiv i32 1073741799, %.0.i.i
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.w to i64
  tail call void @_ZN2v88internal9Assembler23immediate_arithmetic_opEhNS0_8RegisterENS0_9ImmediateEi(ptr noundef nonnull align 8 dereferenceable(824) %0, i8 noundef zeroext 7, i8 %.sroa.07.0.i, i64 %.sroa.0.0.insert.ext.i, i32 noundef 4) #24
  tail call void @_ZN2v88internal9Assembler1jENS0_9ConditionEPNS0_5LabelENS3_8DistanceE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 noundef 7, ptr noundef nonnull %i.j, i32 noundef 1) #24
  %i.x = load ptr, ptr %i.l, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.0.0.copyload.i56 = load i32, ptr %i.y, align 4 ; 5 uses
  %i.z = and i32 %.sroa.0.0.copyload.i56, 3
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit
  %i.ab = and i32 %.sroa.0.0.copyload.i56, 268435440
  %i.ac = add nsw i32 %i.ab, -5648                ; 2 uses
  %i.ad = tail call i32 @llvm.fshl.i32(i32 %i.ac, i32 %i.ac, i32 24) ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 8
  br i1 %i.ae, label %switch.lookup.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.i:                                             ; preds = %_ZN2v88internal9WasmArray9MaxLengthEPKNS0_4wasm9ArrayTypeE.exit
  %i.af = and i32 %.sroa.0.0.copyload.i56, 268435427
  switch i32 %i.af, label %bb.j [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
    i32 514, label %.fold.split.i
    i32 2, label %.fold.split1.i
  ]

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %.sroa.0.0.copyload.i56, 5
  %i.ah = icmp eq i32 %i.ag, 5
  %i.ai = select i1 %i.ah, i8 10, i8 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split.i:                                    ; preds = %bb.i
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split1.i:                                   ; preds = %bb.i
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

switch.lookup.i:                                  ; preds = %bb.g
  %switch.idx.cast.i = trunc nuw nsw i32 %i.ad to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.i, %bb.j, %.fold.split.i, %.fold.split1.i, %switch.lookup.i
  %.0.i57 = phi i8 [ %i.ai, %bb.j ], [ 0, %.fold.split1.i ], [ 12, %.fold.split.i ], [ 11, %bb.i ], [ %switch.offset.i, %switch.lookup.i ] ; 6 uses
  %i.aj = zext nneg i8 %.0.i57 to i64             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasm15value_kind_sizeENS1_9ValueKindE.kElementSize, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = sext i8 %i.al to i32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.sroa.028.0.copyload = load i32, ptr %2, align 8 ; 2 uses
end_hunk_1
