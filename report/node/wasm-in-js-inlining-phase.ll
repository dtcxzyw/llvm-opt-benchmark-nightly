inline.NumInlined: 28862
inline.NumDeleted: 9814
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi:bb.a
  %i.ay = sub i32 %i.ax, %i.d
  %i.az = sext i32 %i.ay to i64
  %i.ba = sext i32 %1 to i64
  %i.bb = sub nsw i64 %i.az, %i.ba
  %i.bc = and i64 %i.bb, 2305843009213693948
  %diff.check = icmp eq i64 %i.bc, 0
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 2147483644              ; 2 uses
  %i.bd = and i64 %i.at, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.be = xor i64 %index, -1
  %i.bf = add i64 %i.be, %i.at                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bf ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bf ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bj = getelementptr inbounds i8, ptr %i.bg, i64 -24
  %wide.load = load <2 x i64>, ptr %i.bi, align 4
  %wide.load40 = load <2 x i64>, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %i.bh, i64 -8
  %i.bl = getelementptr i8, ptr %i.bh, i64 -24
  store <2 x i64> %wide.load, ptr %i.bk, align 4
  store <2 x i64> %wide.load40, ptr %i.bl, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !764

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %vector.memcheck ], [ %i.at, %bb.c ], [ %i.bd, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block
  br i1 %i.y, label %.lr.ph33.preheader, label %.loopexit

.lr.ph33.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 3 uses
  %min.iters.check42 = icmp ult i32 %i.o, 4
  br i1 %min.iters.check42, label %.lr.ph33.preheader52, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph33.preheader
  %n.vec45 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph43
  %index47 = phi i64 [ 0, %vector.ph43 ], [ %index.next48, %vector.body46 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index47 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store <2 x i64> splat (i64 -4294966782), ptr %i.bn, align 4
  store <2 x i64> splat (i64 -4294966782), ptr %i.bo, align 4
  %index.next48 = add nuw i64 %index47, 4         ; 2 uses
  %i.bp = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.bp, label %middle.block49, label %vector.body46, !llvm.loop !765

middle.block49:                                   ; preds = %vector.body46
  %cmp.n50 = icmp eq i64 %n.vec45, %wide.trip.count
  br i1 %cmp.n50, label %.loopexit, label %.lr.ph33.preheader52

.lr.ph33.preheader52:                             ; preds = %.lr.ph33.preheader, %middle.block49
  %indvars.iv35.ph = phi i64 [ 0, %.lr.ph33.preheader ], [ %n.vec45, %middle.block49 ]
  br label %.lr.ph33

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.br = load i64, ptr %i.bq, align 4
  store i64 %i.br, ptr %gep, align 4
  %i.bs = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.bs, label %scalar.ph, label %.preheader, !llvm.loop !766

.lr.ph33:                                         ; preds = %.lr.ph33.preheader52, %.lr.ph33
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph33 ], [ %indvars.iv35.ph, %.lr.ph33.preheader52 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv35
  store i64 -4294966782, ptr %i.bt, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond38.not, label %.loopexit, label %.lr.ph33, !llvm.loop !767

.loopexit:                                        ; preds = %.lr.ph33, %middle.block49, %.preheader, %._crit_edge
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
  %i.x = load i32, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.v, align 8
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = load i32, ptr %i.u, align 8             ; 4 uses
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds i8, ptr %i.c, i64 -24
  %.sroa.03.0.copyload.i = load i64, ptr %i.ae, align 8
  store i64 %.sroa.03.0.copyload.i, ptr %i.aa, align 4
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.ag, ptr %i.ab, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.aa to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 3
  %i.an = sext i32 %i.ac to i64
  %.not.i.i = icmp slt i64 %i.am, %i.an
  br i1 %.not.i.i, label %bb.i, label %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, !prof !5

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i32 noundef %i.ac, ptr noundef %i.ap)
  %.pre.i = load i32, ptr %i.u, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i: ; preds = %bb.i, %bb.h
  %i.aq = phi i32 [ %i.ac, %bb.h ], [ %.pre.i, %bb.i ]
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %i.ar = getelementptr inbounds i8, ptr %i.c, i64 -24
  %.pre13.i = load ptr, ptr %i.ab, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %i.as = phi ptr [ %.pre13.i, %.lr.ph.i ], [ %i.aw, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.au, align 4
  store i64 %.sroa.0.0.copyload.i, ptr %i.as, align 4
  %i.av = load ptr, ptr %i.ab, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.ab, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ax = load i32, ptr %i.u, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next.i, %i.ay
  br i1 %i.az, label %bb.j, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit, !llvm.loop !720

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit: ; preds = %bb.j, %_ZN2v88internal4wasm14FastZoneVectorINS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS4_9AssemblerINS_4base3tmp5list1IJNS4_12GraphVisitorENS4_23WasmInJSInliningReducerENS4_19WasmLoweringReducerENS4_13TSReducerBaseEEEEEEE5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, %bb.g, %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.bb = load i8, ptr %i.ba, align 1, !range !11, !noundef !6
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit

bb.k:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit
  %i.bd = getelementptr inbounds i8, ptr %i.c, i64 -68
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = load ptr, ptr %i.bf, align 8
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = icmp ult i32 %i.be, %i.bn
  br i1 %i.bo, label %.lr.ph.i10, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit

.lr.ph.i10:                                       ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 248
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i10
  %i.bq = phi ptr [ %i.bh, %.lr.ph.i10 ], [ %i.bw, %bb.l ]
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  store ptr %i.br, ptr %i.bg, align 8
  %i.bt = load ptr, ptr %i.bp, align 8
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu
  store i8 0, ptr %i.bv, align 1
  %i.bw = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bx = load ptr, ptr %i.bf, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = lshr exact i64 %i.ca, 2
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = icmp ult i32 %i.be, %i.cc
  br i1 %i.cd, label %bb.l, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit, !llvm.loop !721

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit: ; preds = %bb.l, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINSI_5ValueES4_EEPNS1_5MergeISM_EE.exit, %bb.k
  %1 = getelementptr inbounds i8, ptr %i.c, i64 -95
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit..critedge_crit_edge, label %bb.m

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit..critedge_crit_edge: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit
  %.pre = load ptr, ptr %i.b, align 8
  br label %.critedge

bb.m:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit
  %i.ce = getelementptr inbounds i8, ptr %i.c, i64 -16
  %i.cf = load i8, ptr %i.ce, align 8, !range !11, !noundef !6
  %i.cg = trunc nuw i8 %i.cf to i1
  %.pre12 = load ptr, ptr %i.b, align 8           ; 3 uses
  br i1 %i.cg, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i8, ptr %i.d, align 8
  %i.ci = icmp eq i8 %i.ch, 0
  %scevgep.i = getelementptr i8, ptr %.pre12, i64 -96 ; 3 uses
  store ptr %scevgep.i, ptr %i.b, align 8
  br i1 %i.ci, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr i8, ptr %.pre12, i64 -191 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.cj, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 0, ptr %i.cm, align 8
  %.pre13 = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

.critedge:                                        ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit..critedge_crit_edge, %bb.m
  %4 = phi ptr [ %.pre, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE28RollbackLocalsInitializationEPNS1_11ControlBaseINSI_5ValueES4_EE.exit..critedge_crit_edge ], [ %.pre12, %bb.m ]
  %scevgep.i11 = getelementptr i8, ptr %4, i64 -96 ; 2 uses
  store ptr %scevgep.i11, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit: ; preds = %bb.p, %bb.o, %.critedge, %bb.n
  %i.cn = phi ptr [ %.pre13, %bb.p ], [ %scevgep.i, %bb.o ], [ %scevgep.i11, %.critedge ], [ %scevgep.i, %bb.n ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -95
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = icmp eq i8 %i.cp, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.cs = zext i1 %i.cq to i8
  store i8 %i.cs, ptr %i.cr, align 8
  ret void
}

declare void @_ZN2v88internal8compiler10turboshaft48CanonicalizeEmbeddedBuiltinsConstantIfNeededImplEPNS0_7IsolateENS0_6HandleINS0_10HeapObjectEEE(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = add nuw i64 %i.m, 7
  %i.p = and i64 %i.o, -8                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.b, label %_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef %i.p) #22
  %.pre.i.i.i.i = load i64, ptr %i.s, align 8
  br label %_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit: ; preds = %bb.a, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.t, %bb.a ] ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 5 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.4) #23
  unreachable

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit
  %i.aa = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %bb.g, label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.aa, align 1, !range !11, !noundef !6
  store i8 %i.ah, ptr %i.x, align 1
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit:  ; preds = %bb.e, %bb.f, %bb.g
  %i.ai = ptrtoint ptr %i.b to i64
  %i.aj = sub i64 %i.ai, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  store ptr %i.x, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aj
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.m
  store ptr %i.al, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE13DecodeLoadMemENS1_8LoadTypeEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i8 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.v8::internal::wasm::MemoryAccessImmediate", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = zext i8 %1 to i64                        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr @_ZN2v88internal4wasm8LoadType13kLoadSizeLog2E, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !noalias !768
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.i, align 8
  %i.j = load i8, ptr %i.h, align 1               ; 2 uses
  %.not.i = icmp ult i8 %i.j, 64
  br i1 %.not.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %.not8.i = icmp sgt i8 %i.l, -1
  br i1 %.not8.i, label %bb.c, label %.critedge.i, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.j to i32
  store i32 %i.m, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.n, align 4
  %i.o = zext nneg i8 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 2, ptr %i.q, align 8
  br label %bb.d

.critedge.i:                                      ; preds = %bb.b, %bb.a
  call preserve_mostcc void @_ZN2v88internal4wasm21MemoryAccessImmediate13ConstructSlowINS1_7Decoder15NoValidationTagEEEvPS4_PKhj(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull %i.h, i32 noundef %i.d)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.r = zext i32 %.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %.critedge.i, %bb.c
  %i.s = phi i64 [ %i.r, %.critedge.i ], [ 0, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 296
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = sdiv exact i64 %i.ab, 48
  %i.ad = icmp ugt i64 %i.ac, %i.s
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.s
  store ptr %i.ae, ptr %i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -72
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 3
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add i32 %i.ai, 1
  %.not.i.i = icmp ugt i32 %i.as, %i.ar
  br i1 %.not.i.i, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.at = call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef 1) ; 0 uses
  %.pre23 = load ptr, ptr %i.ak, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS0_8compiler10turboshaft25WasmInJsInliningInterfaceINS6_9AssemblerINS_4base3tmp5list1IJNS6_12GraphVisitorENS6_23WasmInJSInliningReducerENS6_19WasmLoweringReducerENS6_13TSReducerBaseEEEEEEEELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vISM_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESN_EEENSt11conditionalIXeqsZT_Li1EENSI_5ValueESt5arrayISQ_XsZT_EEE4typeEDpT_.exit: ; preds = %bb.d, %bb.e
  %i.au = phi ptr [ %i.al, %bb.d ], [ %.pre23, %bb.e ]
  %i.av = getelementptr i8, ptr %i.au, i64 -8     ; 2 uses
  store ptr %i.av, ptr %i.ak, align 8
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZN2v88internal4wasm8LoadType10kValueTypeE, i64 %i.a
  %.sroa.0.0.copyload.i10 = load i32, ptr %i.aw, align 4
  %.sroa.018.0.insert.ext = zext i32 %.sroa.0.0.copyload.i10 to i64
  %.sroa.018.0.insert.insert = or disjoint i64 %.sroa.018.0.insert.ext, -4294967296
  store i64 %.sroa.018.0.insert.insert, ptr %i.av, align 4
  %i.ax = load ptr, ptr %i.ak, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.ak, align 8
  %i.az = load ptr, ptr %i.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN2v88internal4wasm8LoadType9kLoadSizeE, i64 %i.a
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i64                    ; 2 uses
end_hunk_0
