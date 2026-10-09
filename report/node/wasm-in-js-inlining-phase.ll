Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-in-js-inlining-phase?download=true
inline.NumInlined: 28862
inline.NumDeleted: 9814
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateE:bb.a
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv51
  %.sroa.0.0.copyload.i.i.i26 = load i32, ptr %i.de, align 4
  %.sroa.01.0.insert.ext.i27 = zext i32 %.sroa.0.0.copyload.i.i.i26 to i64
  %.sroa.01.0.insert.insert.i28 = or disjoint i64 %.sroa.01.0.insert.ext.i27, -4294967296
  %i.df = load ptr, ptr %i.cy, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv51
  store i64 %.sroa.01.0.insert.insert.i28, ptr %i.dg, align 4
  %indvars.iv.next52 = or disjoint i64 %indvars.iv51, 1 ; 3 uses
  %i.dh = load i64, ptr %i.a, align 8
  %i.di = icmp ugt i64 %i.dh, %indvars.iv.next52
  br i1 %i.di, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEENKUljE_clEj.exit29.1, label %.loopexit77, !prof !20

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEENKUljE_clEj.exit29.1: ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEENKUljE_clEj.exit29
  %i.dj = load ptr, ptr %i.cz, align 8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next52
  %.sroa.0.0.copyload.i.i.i26.1 = load i32, ptr %i.dk, align 4
  %.sroa.01.0.insert.ext.i27.1 = zext i32 %.sroa.0.0.copyload.i.i.i26.1 to i64
  %.sroa.01.0.insert.insert.i28.1 = or disjoint i64 %.sroa.01.0.insert.ext.i27.1, -4294967296
  %i.dl = load ptr, ptr %i.cy, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next52
  store i64 %.sroa.01.0.insert.insert.i28.1, ptr %i.dm, align 4
  %indvars.iv.next52.1 = add nuw nsw i64 %indvars.iv51, 2 ; 2 uses
  %niter76.next.1 = add nuw i64 %niter76, 2       ; 2 uses
  %niter76.ncmp.1 = icmp eq i64 %niter76.next.1, %unroll_iter75
  br i1 %niter76.ncmp.1, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !758

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa: ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEENKUljE_clEj.exit29.1
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit, label %.epil.preheader71

.epil.preheader71:                                ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, %.lr.ph43
  %indvars.iv51.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next52.1, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod74 = trunc i64 %.fr to i1
  tail call void @llvm.assume(i1 %lcmp.mod74)
  %i.dn = load i64, ptr %i.a, align 8
  %i.do = icmp ugt i64 %i.dn, %indvars.iv51.epil.init
  br i1 %i.do, label %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEENKUljE_clEj.exit29.epil, label %.loopexit77, !prof !20

_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEENKUljE_clEj.exit29.epil: ; preds = %.epil.preheader71
  %i.dp = load ptr, ptr %i.cz, align 8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv51.epil.init
  %.sroa.0.0.copyload.i.i.i26.epil = load i32, ptr %i.dq, align 4
  %.sroa.01.0.insert.ext.i27.epil = zext i32 %.sroa.0.0.copyload.i.i.i26.epil to i64
  %.sroa.01.0.insert.insert.i28.epil = or disjoint i64 %.sroa.01.0.insert.ext.i27.epil, -4294967296
  %i.dr = load ptr, ptr %i.cy, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv51.epil.init
  store i64 %.sroa.01.0.insert.insert.i28.epil, ptr %i.ds, align 4
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit: ; preds = %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEENKUljE_clEj.exit29.epil, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, %._crit_edge, %_ZZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEENKUljE_clEj.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.du = load i64, ptr %i.b, align 8             ; 5 uses
  %i.dv = trunc i64 %i.du to i32                  ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 8
  switch i32 %i.dv, label %bb.k [
    i32 1, label %bb.j
    i32 0, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit
  ]

bb.j:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit
  %.sroa.0.0.copyload.i30 = load i64, ptr %i.bv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i64 %.sroa.0.0.copyload.i30, ptr %i.dw, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit

bb.k:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit
  %i.dx = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.dy = shl i64 %i.du, 3
  %i.dz = and i64 %i.dy, 34359738360              ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 3 uses
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.ee = sub i64 %i.eb, %i.ed
  %i.ef = icmp ugt i64 %i.dz, %i.ee
  br i1 %i.ef, label %bb.l, label %.lr.ph45.preheader, !prof !17

bb.l:                                             ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dx, i64 noundef %i.dz) #22
  %.pre.i.i31 = load i64, ptr %i.ec, align 8
  br label %.lr.ph45.preheader

.lr.ph45.preheader:                               ; preds = %bb.l, %bb.k
  %i.eg = phi i64 [ %.pre.i.i31, %bb.l ], [ %i.ed, %bb.k ] ; 2 uses
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = add i64 %i.eg, %i.dz
  store i64 %i.ei, ptr %i.ec, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 6 uses
  store ptr %i.eh, ptr %i.ej, align 8
  %wide.trip.count59 = and i64 %i.du, 4294967295
  %i.ek = add nsw i64 %wide.trip.count59, -1
  %xtraiter78 = and i64 %i.du, 3                  ; 3 uses
  %i.el = icmp ult i64 %i.ek, 3
  br i1 %i.el, label %.lr.ph45.epil.preheader, label %.lr.ph45.preheader.new

.lr.ph45.preheader.new:                           ; preds = %.lr.ph45.preheader
  %unroll_iter81 = and i64 %i.du, 4294967292
  br label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45, %.lr.ph45.preheader.new
  %indvars.iv56 = phi i64 [ 0, %.lr.ph45.preheader.new ], [ %indvars.iv.next57.3, %.lr.ph45 ] ; 6 uses
  %niter82 = phi i64 [ 0, %.lr.ph45.preheader.new ], [ %niter82.next.3, %.lr.ph45 ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv56
  %.sroa.0.0.copyload.i33 = load i64, ptr %i.em, align 4
  %i.en = load ptr, ptr %i.ej, align 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv56
  store i64 %.sroa.0.0.copyload.i33, ptr %i.eo, align 4
  %indvars.iv.next57 = or disjoint i64 %indvars.iv56, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next57
  %.sroa.0.0.copyload.i33.1 = load i64, ptr %i.ep, align 4
  %i.eq = load ptr, ptr %i.ej, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next57
  store i64 %.sroa.0.0.copyload.i33.1, ptr %i.er, align 4
  %indvars.iv.next57.1 = or disjoint i64 %indvars.iv56, 2 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next57.1
  %.sroa.0.0.copyload.i33.2 = load i64, ptr %i.es, align 4
  %i.et = load ptr, ptr %i.ej, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.next57.1
  store i64 %.sroa.0.0.copyload.i33.2, ptr %i.eu, align 4
  %indvars.iv.next57.2 = or disjoint i64 %indvars.iv56, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next57.2
  %.sroa.0.0.copyload.i33.3 = load i64, ptr %i.ev, align 4
  %i.ew = load ptr, ptr %i.ej, align 8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.next57.2
  store i64 %.sroa.0.0.copyload.i33.3, ptr %i.ex, align 4
  %indvars.iv.next57.3 = add nuw nsw i64 %indvars.iv56, 4 ; 2 uses
  %niter82.next.3 = add i64 %niter82, 4           ; 2 uses
  %niter82.ncmp.3 = icmp eq i64 %niter82.next.3, %unroll_iter81
  br i1 %niter82.ncmp.3, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, label %.lr.ph45, !llvm.loop !759

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph45
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit, label %.lr.ph45.epil.preheader

.lr.ph45.epil.preheader:                          ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, %.lr.ph45.preheader
  %indvars.iv56.epil.init = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next57.3, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter78, 0
  tail call void @llvm.assume(i1 %lcmp.mod80)
  br label %.lr.ph45.epil

.lr.ph45.epil:                                    ; preds = %.lr.ph45.epil, %.lr.ph45.epil.preheader
  %indvars.iv56.epil = phi i64 [ %indvars.iv56.epil.init, %.lr.ph45.epil.preheader ], [ %indvars.iv.next57.epil, %.lr.ph45.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph45.epil.preheader ], [ %epil.iter.next, %.lr.ph45.epil ]
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv56.epil
  %.sroa.0.0.copyload.i33.epil = load i64, ptr %i.ey, align 4
  %i.ez = load ptr, ptr %i.ej, align 8
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv56.epil
  store i64 %.sroa.0.0.copyload.i33.epil, ptr %i.fa, align 4
  %indvars.iv.next57.epil = add nuw nsw i64 %indvars.iv56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter78
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit, label %.lr.ph45.epil, !llvm.loop !760

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE0_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit.loopexit.unr-lcssa, %.lr.ph45.epil, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE9InitMergeIZNSK_11PushControlENS1_11ControlKindERKNS1_18BlockTypeImmediateEEUljE_EEvPNS1_5MergeINSI_5ValueEEEjT_.exit, %bb.j
  ret ptr %i.bq

bb.m:                                             ; preds = %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1 ]
  %i.fb = load i64, ptr %i.b, align 8
  %i.fc = icmp ugt i64 %i.fb, %indvars.iv
  br i1 %i.fc, label %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit, label %.loopexit, !prof !20

.loopexit:                                        ; preds = %bb.m, %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit, %.epil.preheader
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.803) #23
  unreachable

_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit: ; preds = %bb.m
  %i.fd = load ptr, ptr %i.bw, align 8
  %i.fe = load i64, ptr %i.a, align 8
  %i.ff = getelementptr [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = getelementptr [4 x i8], ptr %i.ff, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  store i32 %.sroa.0.0.copyload.i.i, ptr %i.fh, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.fi = load i64, ptr %i.b, align 8
  %i.fj = icmp ugt i64 %i.fi, %indvars.iv.next
  br i1 %i.fj, label %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1, label %.loopexit, !prof !20

_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit.1: ; preds = %_ZNK2v88internal4wasm18BlockTypeImmediate7in_typeEj.exit
  %i.fk = load ptr, ptr %i.bw, align 8
  %i.fl = load i64, ptr %i.a, align 8
  %i.fm = getelementptr [4 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv.next
  %.sroa.0.0.copyload.i.i.1 = load i32, ptr %i.fn, align 4
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next
  store i32 %.sroa.0.0.copyload.i.i.1, ptr %i.fo, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !761
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -72
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 13 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = sub i32 %i.m, %i.d                       ; 5 uses
  %i.o = sub nsw i32 %1, %i.n                     ; 8 uses
  %i.p = add nsw i32 %i.o, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.i
  %i.u = ashr exact i64 %i.t, 3
  %i.v = sext i32 %i.p to i64
  %.not.i = icmp slt i64 %i.u, %i.v
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.p, ptr noundef %i.x)
  br label %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit

_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit: ; preds = %bb.a, %bb.b
  %i.y = icmp sgt i32 %i.o, 0                     ; 2 uses
  br i1 %i.y, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %.pre = load ptr, ptr %i.f, align 8             ; 2 uses
  %2 = add i32 %i.d, %1
  %xtraiter = and i32 %i.o, 3                     ; 3 uses
  %i.z = sub i32 %i.m, %2
  %i.aa = icmp ugt i32 %i.z, -4
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.o, 2147483644
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.an, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.ab = phi ptr [ %i.ad, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i64 -4294966782, ptr %i.ab, align 4
  %i.ac = load ptr, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.f, align 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !762

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit
  %i.ae = icmp sgt i32 %i.n, 0
  br i1 %i.ae, label %bb.c, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.af = phi ptr [ %.pre, %.lr.ph.preheader.new ], [ %i.an, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  store i64 -4294966782, ptr %i.af, align 4
  %i.ag = load ptr, ptr %i.f, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.ah, ptr %i.f, align 8
  store i64 -4294966782, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.f, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.f, align 8
  store i64 -4294966782, ptr %i.aj, align 4
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.f, align 8
  store i64 -4294966782, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  store ptr %i.an, ptr %i.f, align 8
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !763

bb.c:                                             ; preds = %._crit_edge
  %i.ao = load ptr, ptr %i.f, align 8
  %i.ap = zext i32 %1 to i64
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.aq ; 5 uses
  %i.as = zext nneg i32 %i.n to i64               ; 6 uses
  %i.at = sext i32 %i.o to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ar, i64 %i.at ; 2 uses
  %min.iters.check = icmp ult i32 %i.n, 18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.au = zext nneg i32 %i.n to i64
  %i.av = sext i32 %1 to i64
  %i.aw = sub nsw i64 %i.au, %i.av
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = add nsw i64 %i.ax, -1
  %diff.check = icmp ult i64 %i.ay, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 2147483644              ; 2 uses
  %i.az = and i64 %i.as, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = xor i64 %index, -1
  %i.bb = add i64 %i.ba, %i.as                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bb ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bb ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -24
  %wide.load = load <2 x i64>, ptr %i.be, align 4
  %wide.load40 = load <2 x i64>, ptr %i.bf, align 4
  %i.bg = getelementptr i8, ptr %i.bd, i64 -8
  %i.bh = getelementptr i8, ptr %i.bd, i64 -24
  store <2 x i64> %wide.load, ptr %i.bg, align 4
  store <2 x i64> %wide.load40, ptr %i.bh, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !764

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.as
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ %i.as, %vector.memcheck ], [ %i.as, %bb.c ], [ %i.az, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block
  br i1 %i.y, label %.lr.ph33.preheader, label %.loopexit

.lr.ph33.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.o, 4
  br i1 %min.iters.check42, label %.lr.ph33.preheader51, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph33.preheader
  %n.vec44 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next47, %vector.body45 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index46 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <2 x i64> splat (i64 -4294966782), ptr %i.bj, align 4
  store <2 x i64> splat (i64 -4294966782), ptr %i.bk, align 4
  %index.next47 = add nuw i64 %index46, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next47, %n.vec44
  br i1 %i.bl, label %middle.block48, label %vector.body45, !llvm.loop !765

middle.block48:                                   ; preds = %vector.body45
  %cmp.n49 = icmp eq i64 %n.vec44, %wide.trip.count
  br i1 %cmp.n49, label %.loopexit, label %.lr.ph33.preheader51

.lr.ph33.preheader51:                             ; preds = %.lr.ph33.preheader, %middle.block48
  %indvars.iv35.ph = phi i64 [ 0, %.lr.ph33.preheader ], [ %n.vec44, %middle.block48 ]
  br label %.lr.ph33

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bn = load i64, ptr %i.bm, align 4
  store i64 %i.bn, ptr %gep, align 4
  %i.bo = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bo, label %scalar.ph, label %.preheader, !llvm.loop !766

.lr.ph33:                                         ; preds = %.lr.ph33.preheader51, %.lr.ph33
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph33 ], [ %indvars.iv35.ph, %.lr.ph33.preheader51 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv35
  store i64 -4294966782, ptr %i.bp, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond38.not, label %.loopexit, label %.lr.ph33, !llvm.loop !767

.loopexit:                                        ; preds = %.lr.ph33, %middle.block48, %.preheader, %._crit_edge
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE10PopControlEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -96 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 96
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -191
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal8compiler10turboshaft25WasmInJsInliningInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_23WasmInJSInliningReducerENS2_19WasmLoweringReducerENS2_13TSReducerBaseEEEEEEE7BailoutEPNS0_4wasm15WasmFullDecoderINSF_7Decoder15NoValidationTagESE_LNSF_12DecodingModeE0EEE(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = load i8, ptr %i.d, align 8
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %i.c, i64 -95
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 2
  br i1 %i.t, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.c, i64 -72
end_hunk_0
