Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/module-instantiate?download=true
inline.NumInlined: 6065
inline.NumDeleted: 2754
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE14DecodeGCOpcodeENS1_10WasmOpcodeEj:bb.a
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit387

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit387: ; preds = %bb.fs, %bb.ft, %.sink.split.i377
  %.1.i375 = phi ptr [ @.str.291, %bb.fs ], [ @.str.292, %bb.ft ], [ %i.xq, %.sink.split.i377 ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1015, ptr noundef %.1.i375)
  br label %bb.mf

bb.gd:                                            ; preds = %bb.a
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8            ; 6 uses
  %.not.i388 = icmp eq ptr %i.xs, null
  br i1 %.not.i388, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit402, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xu = load ptr, ptr %i.xt, align 8            ; 2 uses
  %.not9.i389 = icmp ult ptr %i.xs, %i.xu
  br i1 %.not9.i389, label %bb.gf, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit402

bb.gf:                                            ; preds = %bb.ge
  %i.xv = load i8, ptr %i.xs, align 1             ; 2 uses
  %i.xw = add i8 %i.xv, 6
  %switch.i.i391 = icmp ult i8 %i.xw, 5
  br i1 %switch.i.i391, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.xx = zext i8 %i.xv to i32
  br label %.sink.split.i392

bb.gh:                                            ; preds = %bb.gf
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xs, i64 1 ; 3 uses
  %i.xz = icmp ult ptr %i.xy, %i.xu
  br i1 %i.xz, label %bb.gi, label %.critedge.i.i.i.i394, !prof !980

bb.gi:                                            ; preds = %bb.gh
  %i.ya = load i8, ptr %i.xy, align 1             ; 2 uses
  %.not.i.i.i.i401 = icmp sgt i8 %i.ya, -1
  br i1 %.not.i.i.i.i401, label %bb.gj, label %.critedge.i.i.i.i394, !prof !980

bb.gj:                                            ; preds = %bb.gi
  %i.yb = zext nneg i8 %i.ya to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i395

.critedge.i.i.i.i394:                             ; preds = %bb.gi, %bb.gh
  %i.yc = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.xy, ptr noundef nonnull @.str.1012) ; 2 uses
  %i.yd = icmp ult i64 %i.yc, 25769803776
  tail call void @llvm.assume(i1 %i.yd)
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i395

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i395: ; preds = %.critedge.i.i.i.i394, %bb.gj
  %.sroa.05.0.i.i.i396 = phi i64 [ %i.yb, %bb.gj ], [ %i.yc, %.critedge.i.i.i.i394 ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i397 = trunc i64 %.sroa.05.0.i.i.i396 to i32 ; 3 uses
  %i.ye = icmp ugt i32 %.sroa.0.0.extract.trunc.i.i397, 4095
  br i1 %i.ye, label %bb.gk, label %bb.gl, !prof !979

bb.gk:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i395
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.xs, ptr noundef nonnull @.str.1013, i32 noundef %.sroa.0.0.extract.trunc.i.i397)
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i398

bb.gl:                                            ; preds = %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i.i395
  %i.yf = icmp samesign ugt i32 %.sroa.0.0.extract.trunc.i.i397, 255
  %i.yg = load i8, ptr %i.xs, align 1
  %i.yh = zext i8 %i.yg to i64                    ; 2 uses
  br i1 %i.yf, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.yi = shl nuw nsw i64 %i.yh, 12
  %i.yj = or disjoint i64 %i.yi, %.sroa.05.0.i.i.i396
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i398

bb.gn:                                            ; preds = %bb.gl
  %i.yk = shl nuw nsw i64 %i.yh, 8
  %i.yl = or disjoint i64 %i.yk, %.sroa.05.0.i.i.i396
  br label %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i398

_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i398: ; preds = %bb.gn, %bb.gm, %bb.gk
  %.sroa.018.0.i.i399 = phi i64 [ 0, %bb.gk ], [ %i.yj, %bb.gm ], [ %i.yl, %bb.gn ]
  %.sroa.0.0.extract.trunc.i400 = trunc i64 %.sroa.018.0.i.i399 to i32
  br label %.sink.split.i392

.sink.split.i392:                                 ; preds = %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i398, %bb.gg
  %.sink.i393 = phi i32 [ %i.xx, %bb.gg ], [ %.sroa.0.0.extract.trunc.i400, %_ZN2v88internal4wasm7Decoder20read_prefixed_opcodeINS2_17FullValidationTagEEESt4pairINS1_10WasmOpcodeEjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit.i398 ]
  %i.ym = tail call noundef ptr @_ZN2v88internal4wasm11WasmOpcodes10OpcodeNameENS1_10WasmOpcodeE(i32 noundef %.sink.i393)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit402

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh.exit402: ; preds = %bb.gd, %bb.ge, %.sink.split.i392
  %.1.i390 = phi ptr [ @.str.291, %bb.gd ], [ @.str.292, %bb.ge ], [ %i.ym, %.sink.split.i392 ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1015, ptr noundef %.1.i390)
  br label %bb.mf

bb.go:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.yo = load ptr, ptr %i.yn, align 8            ; 2 uses
  %i.yp = zext i32 %2 to i64                      ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yp ; 3 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ys = load ptr, ptr %i.yr, align 8
  %i.yt = icmp ult ptr %i.yq, %i.ys
  br i1 %i.yt, label %bb.gp, label %.critedge.i.i.i.i403, !prof !980

bb.gp:                                            ; preds = %bb.go
  %i.yu = load i8, ptr %i.yq, align 1             ; 2 uses
  %.not.i.i.i.i407 = icmp sgt i8 %i.yu, -1
  br i1 %.not.i.i.i.i407, label %bb.gq, label %.critedge.i.i.i.i403, !prof !980

bb.gq:                                            ; preds = %bb.gp
  %i.yv = zext nneg i8 %i.yu to i64
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit408

.critedge.i.i.i.i403:                             ; preds = %bb.gp, %bb.go
  %i.yw = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.yq, ptr noundef nonnull @.str.1051) ; 3 uses
  %i.yx = icmp ult i64 %i.yw, 25769803776
  tail call void @llvm.assume(i1 %i.yx)
  %i.yy = lshr i64 %i.yw, 32
  %i.yz = trunc nuw nsw i64 %i.yy to i32
  %.pre1097.a = load ptr, ptr %i.yn, align 8
  br label %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit408

_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit408: ; preds = %bb.gq, %.critedge.i.i.i.i403
  %i.za = phi ptr [ %i.yo, %bb.gq ], [ %.pre1097.a, %.critedge.i.i.i.i403 ]
  %.sroa.05.0.i.i.i404 = phi i64 [ %i.yv, %bb.gq ], [ %i.yw, %.critedge.i.i.i.i403 ] ; 2 uses
  %i.zb = phi i32 [ 1, %bb.gq ], [ %i.yz, %.critedge.i.i.i.i403 ] ; 3 uses
  %.sroa.04.0.extract.trunc.i.i406 = trunc i64 %.sroa.05.0.i.i.i404 to i32 ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 2 uses
  store i32 %i.zb, ptr %i.zc, align 4
  store i32 %.sroa.04.0.extract.trunc.i.i406, ptr %24, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.ze = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.zf = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.yp ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8            ; 2 uses
  %i.zi = and i64 %.sroa.05.0.i.i.i404, 4294967295 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zh, i64 152
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zh, i64 160
  %i.zl = load ptr, ptr %i.zk, align 8
  %i.zm = load ptr, ptr %i.zj, align 8            ; 2 uses
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = sub i64 %i.zn, %i.zo
  %i.zq = sdiv exact i64 %i.zp, 24
  %i.zr = icmp ugt i64 %i.zq, %i.zi
  br i1 %i.zr, label %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i411, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit412, !prof !991

_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i411: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit408
  %i.zs = getelementptr inbounds nuw [24 x i8], ptr %i.zm, i64 %i.zi ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 20
  %i.zu = load i8, ptr %i.zt, align 4
  %i.zv = icmp eq i8 %i.zu, 3
  br i1 %i.zv, label %bb.gr, label %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit412, !prof !992

_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit412: ; preds = %_ZN2v88internal4wasm19ArrayIndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhT_.exit408, %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i411
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.zf, ptr noundef nonnull @.str.1052, i32 noundef %.sroa.04.0.extract.trunc.i.i406)
  br label %bb.hh

bb.gr:                                            ; preds = %_ZNK2v88internal4wasm10WasmModule9has_arrayENS1_15ModuleTypeIndexE.exit.i411
  %i.zw = load ptr, ptr %i.zs, align 8            ; 2 uses
  store ptr %i.zw, ptr %i.zd, align 8
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zs, i64 22
  %i.zy = load i8, ptr %i.zx, align 2, !range !981, !noundef !982 ; 2 uses
  store i8 %i.zy, ptr %i.ze, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.zz = zext nneg i32 %i.zb to i64
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zz ; 3 uses
  %i.aab = load ptr, ptr %i.yr, align 8
  %i.aac = icmp ult ptr %i.aaa, %i.aab
  br i1 %i.aac, label %bb.gs, label %.critedge.i.i.i, !prof !980

bb.gs:                                            ; preds = %bb.gr
  %i.aad = load i8, ptr %i.aaa, align 1           ; 2 uses
  %.not.i.i.i413 = icmp sgt i8 %i.aad, -1
  br i1 %.not.i.i.i413, label %bb.gt, label %.critedge.i.i.i, !prof !980

bb.gt:                                            ; preds = %bb.gs
  %i.aae = zext nneg i8 %i.aad to i64
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit

.critedge.i.i.i:                                  ; preds = %bb.gs, %bb.gr
  %i.aaf = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.aaa, ptr noundef nonnull @.str.1044) ; 3 uses
  %i.aag = icmp ult i64 %i.aaf, 25769803776
  tail call void @llvm.assume(i1 %i.aag)
  %i.aah = lshr i64 %i.aaf, 32
  %i.aai = trunc nuw nsw i64 %i.aah to i32
  br label %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit

_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit: ; preds = %bb.gt, %.critedge.i.i.i
  %.sroa.05.0.i.i = phi i64 [ %i.aae, %bb.gt ], [ %i.aaf, %.critedge.i.i.i ] ; 3 uses
  %.sroa.5.0.i.i = phi i32 [ 1, %bb.gt ], [ %i.aai, %.critedge.i.i.i ] ; 2 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %.sroa.05.0.i.i to i32 ; 6 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 2 uses
  store i32 %.sroa.04.0.extract.trunc.i, ptr %25, align 4
  store i32 %.sroa.5.0.i.i, ptr %i.aaj, align 4
  %i.aak = icmp ult i32 %.sroa.04.0.extract.trunc.i, 10001
  br i1 %i.aak, label %bb.gv, label %bb.gu, !prof !980

bb.gu:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.1045, i32 noundef %.sroa.04.0.extract.trunc.i, i64 noundef 10000)
  br label %bb.hg

bb.gv:                                            ; preds = %_ZN2v88internal4wasm14IndexImmediateC2INS1_7Decoder17FullValidationTagEEEPS4_PKhPKcT_.exit
  %i.aal = and i64 %.sroa.05.0.i.i, 16383         ; 7 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zw, i64 4
  %.sroa.0.0.copyload.i414 = load i32, ptr %i.aam, align 4 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.aap = load ptr, ptr %i.aao, align 8, !noalias !1372
  %i.aaq = getelementptr inbounds i8, ptr %i.aap, i64 -152
  %i.aar = load i32, ptr %i.aaq, align 8, !noalias !1372
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.aau = load ptr, ptr %i.aat, align 8, !noalias !1372 ; 2 uses
  %i.aav = load ptr, ptr %i.aas, align 8, !noalias !1372
  %i.aaw = ptrtoint ptr %i.aau to i64
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = sub i64 %i.aaw, %i.aax
  %i.aaz = sdiv exact i64 %i.aay, 48
  %i.aba = trunc i64 %i.aaz to i32
  %i.abb = add i32 %i.aar, %.sroa.04.0.extract.trunc.i
  %.not.i.i137 = icmp ugt i32 %i.abb, %i.aba
  br i1 %.not.i.i137, label %bb.gy, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138, !prof !979

bb.gy:                                            ; preds = %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416
  %i.abc = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %.sroa.04.0.extract.trunc.i), !noalias !1372 ; 0 uses
  %.pre1098.a = load ptr, ptr %i.aat, align 8, !noalias !1372
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138: ; preds = %bb.gy, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416
  %i.abd = phi ptr [ %.pre1098.a, %bb.gy ], [ %i.aau, %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit416 ] ; 2 uses
  %.idx = mul nsw i64 %i.aal, -48
  %i.abe = getelementptr inbounds i8, ptr %i.abd, i64 %.idx ; 2 uses
  %.not1072 = icmp eq i32 %.sroa.04.0.extract.trunc.i, 0
  br i1 %.not1072, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138
  %.sroa.4952.0..sroa_idx953 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6955.0..sroa_idx956 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %wide.trip.count = and i64 %.sroa.05.0.i.i, 16383
  br label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE20EnsureStackArgumentsEi.exit.i138
  %i.abf = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  store ptr %i.abf, ptr %29, align 8, !alias.scope !1372
  %i.abg = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  store ptr %i.abf, ptr %i.abg, align 8, !alias.scope !1372
  %i.abh = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.abi = getelementptr inbounds nuw i8, ptr %29, i64 408
  store ptr %i.abi, ptr %i.abh, align 8, !alias.scope !1372
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146
  %i.abj = load ptr, ptr %i.aat, align 8, !noalias !1372
  %i.abk = mul nuw nsw i64 %i.aal, 48
  %i.abl = add nsw i64 %i.abk, -48                ; 2 uses
  %i.abm = urem i64 %i.abl, 48
  %.neg.i419 = sub nsw i64 %i.abm, %i.abl
  %i.abn = getelementptr i8, ptr %i.abj, i64 %.neg.i419
  %scevgep.i420 = getelementptr i8, ptr %i.abn, i64 -48
  store ptr %scevgep.i420, ptr %i.aat, align 8, !noalias !1372
  %i.abo = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 3 uses
  store ptr %i.abo, ptr %29, align 8, !alias.scope !1372
  %i.abp = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  store ptr %i.abo, ptr %i.abp, align 8, !alias.scope !1372
  %i.abq = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.abr = getelementptr inbounds nuw i8, ptr %29, i64 408
  store ptr %i.abr, ptr %i.abq, align 8, !alias.scope !1372
  %i.abs = icmp samesign ugt i64 %i.aal, 8
  br i1 %i.abs, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(408) %29, i64 noundef %i.aal)
  %.pre1099.a = load ptr, ptr %29, align 8, !alias.scope !1372
  br label %.lr.ph.i.i.i428.preheader

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit: ; preds = %.lr.ph, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146 ] ; 4 uses
  %34 = getelementptr inbounds nuw [48 x i8], ptr %i.abe, i64 %indvars.iv ; 3 uses
  %.sroa.0957.0.copyload = load ptr, ptr %34, align 8, !noalias !1372
  %.sroa.5959.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %34, i64 8
  %.sroa.4958.0.copyload = load i32, ptr %.sroa.5959.0..sroa_idx.a, align 8, !noalias !1372 ; 4 uses
  %.sroa.5959.0..sroa_idx = getelementptr inbounds nuw i8, ptr %34, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6955)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6955, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5959.0..sroa_idx, i64 36, i1 false), !noalias !1372
  %35 = getelementptr [4 x i8], ptr %i.aan, i64 %indvars.iv
  %.sroa.0.0.copyload.i426 = load i32, ptr %35, align 4, !noalias !1372 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !1372
  %i.abt = icmp eq i32 %.sroa.4958.0.copyload, %.sroa.0.0.copyload.i426
  br i1 %i.abt, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i143, !prof !980

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i143: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit
  %i.abu = load ptr, ptr %i.zg, align 8, !noalias !1372 ; 2 uses
  %i.abv = call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.4958.0.copyload, i32 %.sroa.0.0.copyload.i426, ptr noundef %i.abu, ptr noundef %i.abu) #22, !noalias !1372
  %i.abw = icmp eq i32 %.sroa.4958.0.copyload, 514
  %or.cond1050 = or i1 %i.abw, %i.abv
  %i.abx = icmp eq i32 %.sroa.0.0.copyload.i426, 514
  %or.cond1051 = or i1 %i.abx, %or.cond1050
  br i1 %or.cond1051, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146, label %bb.gz, !prof !995

bb.gz:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i143
  store ptr %.sroa.0957.0.copyload, ptr %7, align 8, !noalias !1372
  store i32 %.sroa.4958.0.copyload, ptr %.sroa.4952.0..sroa_idx953, align 8, !noalias !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6955.0..sroa_idx956, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6955, i64 36, i1 false), !noalias !1372
  %i.aby = trunc nuw nsw i64 %indvars.iv to i32
  call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.aby, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %7, i32 %.sroa.0.0.copyload.i426), !noalias !1372
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE18ValidateStackValueEiNS5_5ValueENS1_9ValueTypeE.exit.i146: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit, %bb.gz, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6955)
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1372
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond1076.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond1076.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit, !llvm.loop !1347

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421
  %i.abz = phi ptr [ %i.abf, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread ], [ %i.abo, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421 ] ; 2 uses
  %i.aca = phi ptr [ %i.abg, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421.thread ], [ %i.abp, %_ZN2v88internal4wasm14FastZoneVectorINS1_27ConstantExpressionInterface5ValueEE3popEj.exit421 ] ; 2 uses
  %.not9.i.i.i427 = icmp eq i64 %i.aal, 0
  br i1 %.not9.i.i.i427, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433, label %.lr.ph.i.i.i428.preheader

.lr.ph.i.i.i428.preheader:                        ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit
  %i.acb = phi ptr [ %i.abp, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread ], [ %i.aca, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit ]
  %i.acc = phi ptr [ %.pre1099.a, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.thread ], [ %i.abz, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit ]
  br label %.lr.ph.i.i.i428

.lr.ph.i.i.i428:                                  ; preds = %.lr.ph.i.i.i428.preheader, %.lr.ph.i.i.i428
  %.011.i.i.i429 = phi ptr [ %i.ace, %.lr.ph.i.i.i428 ], [ %i.acc, %.lr.ph.i.i.i428.preheader ] ; 2 uses
  %.0810.i.i.i430 = phi ptr [ %i.acd, %.lr.ph.i.i.i428 ], [ %i.abe, %.lr.ph.i.i.i428.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.011.i.i.i429, ptr noundef nonnull align 8 dereferenceable(48) %.0810.i.i.i430, i64 48, i1 false)
  %i.acd = getelementptr inbounds nuw i8, ptr %.0810.i.i.i430, i64 48 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %.011.i.i.i429, i64 48
  %.not.i.i.i431 = icmp eq ptr %i.acd, %i.abd
  br i1 %.not.i.i.i431, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit, label %.lr.ph.i.i.i428, !llvm.loop !1339

_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit: ; preds = %.lr.ph.i.i.i428
  %.pre1100.a = load ptr, ptr %29, align 8, !alias.scope !1372
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433

_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit
  %i.acf = phi ptr [ %i.acb, %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit ], [ %i.aca, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit ]
  %i.acg = phi ptr [ %.pre1100.a, %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433.loopexit ], [ %i.abz, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit ]
  %i.ach = getelementptr inbounds nuw [48 x i8], ptr %i.acg, i64 %i.aal
  store ptr %i.ach, ptr %i.acf, align 8, !alias.scope !1372
  %i.aci = icmp ult i32 %.sroa.04.0.extract.trunc.i.i406, 1048576
  br i1 %i.aci, label %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435, label %bb.ha, !prof !980

bb.ha:                                            ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.280) #23
  unreachable

_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm27ConstantExpressionInterface5ValueEPS4_ET0_T_S9_S8_.exit433
  %i.acj = shl nuw nsw i8 %i.zy, 4
  %i.ack = or disjoint i8 %i.acj, 99
  %i.acl = zext nneg i8 %i.ack to i32
  %i.acm = shl nuw nsw i32 %.sroa.04.0.extract.trunc.i.i406, 8
  %i.acn = or disjoint i32 %i.acm, %i.acl         ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.016.0.copyload = load i32, ptr %i.aco, align 8
  %i.acp = and i32 %.sroa.016.0.copyload, 8
  %.not.i436 = icmp eq i32 %i.acp, 0
  br i1 %.not.i436, label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439, label %bb.hb, !prof !980

bb.hb:                                            ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435
  %i.acq = or disjoint i32 %i.acn, 8
  br label %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439

_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439: ; preds = %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435, %bb.hb
  %.sroa.0.0.i438 = phi i32 [ %i.acq, %bb.hb ], [ %i.acn, %_ZNK2v88internal4wasm19ArrayIndexImmediate9heap_typeEv.exit435 ] ; 2 uses
  %i.acr = load ptr, ptr %i.yn, align 8           ; 3 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.act = load i8, ptr %i.acs, align 8, !range !981, !noundef !982
  %i.acu = trunc nuw i8 %i.act to i1
  %i.acv = and i32 %.sroa.0.0.i438, 16
  %i.acw = icmp eq i32 %i.acv, 0
  %or.cond1054.not = select i1 %i.acu, i1 %i.acw, i1 false, !prof !996
  br i1 %or.cond1054.not, label %bb.hc, label %.critedge.i98, !prof !996

bb.hc:                                            ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439
  %i.acx = call noundef ptr @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE16SafeOpcodeNameAtEPKh(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.acr)
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.acr, ptr noundef nonnull @.str.290, ptr noundef %i.acx)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100

.critedge.i98:                                    ; preds = %_ZNK2v88internal4wasm9ValueType16AsExactIfEnabledENS1_19WasmEnabledFeaturesENS1_9ExactnessE.exit439
  %i.acy = load ptr, ptr %i.aat, align 8          ; 5 uses
  store ptr %i.acr, ptr %i.acy, align 8
  %.sroa.4997.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  store i32 %.sroa.0.0.i438, ptr %.sroa.4997.0..sroa_idx, align 8
  %.sroa.6999.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  store i32 2, ptr %.sroa.6999.0..sroa_idx, align 8
  %.sroa.71000.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acy, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.71000.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.91002.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acy, i64 40
  store ptr null, ptr %.sroa.91002.0..sroa_idx, align 8
  %i.acz = load ptr, ptr %i.aat, align 8          ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 48
  store ptr %i.ada, ptr %i.aat, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100: ; preds = %bb.hc, %.critedge.i98
  %.0.i99 = phi ptr [ %i.acz, %.critedge.i98 ], [ null, %bb.hc ]
  %i.adb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.adc = load i8, ptr %i.adb, align 8, !range !981, !noundef !982
  %i.add = trunc nuw i8 %i.adc to i1
  br i1 %i.add, label %bb.hd, label %bb.he, !prof !980

bb.hd:                                            ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100
  %i.ade = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.adf = load ptr, ptr %29, align 8
  call void @_ZN2v88internal4wasm27ConstantExpressionInterface13ArrayNewFixedEPNS1_15WasmFullDecoderINS1_7Decoder17FullValidationTagES2_LNS1_12DecodingModeE1EEERKNS1_19ArrayIndexImmediateERKNS1_14IndexImmediateEPKNS2_5ValueEPSF_(ptr noundef nonnull align 8 dereferenceable(88) %i.ade, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(17) %24, ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef %i.adf, ptr noundef %.0.i99) #22
  %.pre1101 = load i32, ptr %i.zc, align 4
  %.pre1102 = load i32, ptr %i.aaj, align 4
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100
  %i.adg = phi i32 [ %.pre1102, %bb.hd ], [ %.sroa.5.0.i.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100 ]
  %i.adh = phi i32 [ %.pre1101, %bb.hd ], [ %i.zb, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE4PushENS5_5ValueE.exit100 ]
  %i.adi = add i32 %i.adh, %2
  %i.adj = add i32 %i.adi, %i.adg
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm27ConstantExpressionInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(408) %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  %i.adk = load ptr, ptr %26, align 8             ; 3 uses
  %.not.i.i.i442 = icmp eq ptr %i.adk, null
  br i1 %.not.i.i.i442, label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.adl = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.adm = load ptr, ptr %i.adl, align 8
  %i.adn = ptrtoint ptr %i.adm to i64
  %i.ado = ptrtoint ptr %i.adk to i64
  %i.adp = sub i64 %i.adn, %i.ado
  call void @_ZdlPvm(ptr noundef nonnull %i.adk, i64 noundef %i.adp) #25
  br label %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit: ; preds = %bb.he, %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.hg

bb.hg:                                            ; preds = %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit, %bb.gu
  %.7 = phi i32 [ %i.adj, %_ZNSt6vectorIN2v88internal4wasm9ValueTypeESaIS3_EED2Ev.exit ], [ 0, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.hh

bb.hh:                                            ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit412, %bb.hg
  %.8 = phi i32 [ %.7, %bb.hg ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE1EE8ValidateEPKhRNS1_19ArrayIndexImmediateE.exit412 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.mf

bb.hi:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.adr = load ptr, ptr %i.adq, align 8, !noalias !1373
  %i.ads = getelementptr inbounds i8, ptr %i.adr, i64 -152
  %i.adt = load i32, ptr %i.ads, align 8, !noalias !1373
  %i.adu = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 6 uses
  %i.adw = load ptr, ptr %i.adv, align 8, !noalias !1373 ; 2 uses
  %i.adx = load ptr, ptr %i.adu, align 8, !noalias !1373
  %i.ady = ptrtoint ptr %i.adw to i64
  %i.adz = ptrtoint ptr %i.adx to i64
  %i.aea = sub i64 %i.ady, %i.adz
  %i.aeb = sdiv exact i64 %i.aea, 48
  %i.aec = trunc i64 %i.aeb to i32
  %i.aed = add i32 %i.adt, 1
  %.not.i.i120 = icmp ugt i32 %i.aed, %i.aec
  br i1 %.not.i.i120, label %bb.hj, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123, !prof !979

bb.hj:                                            ; preds = %bb.hi
  %i.aee = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 1), !noalias !1373 ; 0 uses
  %.pre1096 = load ptr, ptr %i.adv, align 8, !noalias !1373
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123: ; preds = %bb.hi, %bb.hj
  %i.aef = phi ptr [ %i.adw, %bb.hi ], [ %.pre1096, %bb.hj ] ; 3 uses
  %scevgep.i444 = getelementptr i8, ptr %i.aef, i64 -48 ; 2 uses
  store ptr %scevgep.i444, ptr %i.adv, align 8, !noalias !1373
  %.sroa.06.0.copyload.i = load ptr, ptr %scevgep.i444, align 8, !noalias !1374
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.aef, i64 -40
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1374 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.aef, i64 -36
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.3.0..sroa_idx.i, i64 36, i1 false), !noalias !1374
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1374
  %i.aeg = icmp eq i32 %.sroa.2.0.copyload.i, 5648
  br i1 %i.aeg, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i446, !prof !980

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i446: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123
  %i.aeh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aei = load ptr, ptr %i.aeh, align 8, !noalias !1374 ; 2 uses
  %i.aej = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.2.0.copyload.i, i32 5648, ptr noundef %i.aei, ptr noundef %i.aei) #22, !noalias !1374
  %i.aek = icmp eq i32 %.sroa.2.0.copyload.i, 514
  %or.cond.i = or i1 %i.aek, %i.aej
  br i1 %or.cond.i, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit, label %bb.hk, !prof !995

bb.hk:                                            ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i446
  store ptr %.sroa.06.0.copyload.i, ptr %6, align 8, !noalias !1374
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1374
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.i, i64 36, i1 false), !noalias !1374
  tail call preserve_mostcc void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE12PopTypeErrorEiNS5_5ValueENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 0, ptr noundef nonnull byval(%"struct.v8::internal::wasm::ConstantExpressionInterface::Value") align 8 %6, i32 5648), !noalias !1374
  br label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_ENUlSA_E_clESA_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_27ConstantExpressionInterfaceELNS1_12DecodingModeE1EE3PopIJNS1_20IndependentValueTypeEEQfraaoosr3stdE9is_same_vINS1_9ValueTypeETL0__Esr3stdE12is_base_of_vIS9_SB_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit123, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.i.i446, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1374
  %i.ael = load ptr, ptr %i.adv, align 8, !noalias !1374 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull align 8 dereferenceable(48) %i.ael, i64 48, i1 false)
  %i.aem = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aen = load ptr, ptr %i.aem, align 8          ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aep = load i8, ptr %i.aeo, align 8, !range !981, !noundef !982
  %i.aeq = trunc nuw i8 %i.aep to i1
  br i1 %i.aeq, label %bb.hl, label %.critedge.i101
end_hunk_0
