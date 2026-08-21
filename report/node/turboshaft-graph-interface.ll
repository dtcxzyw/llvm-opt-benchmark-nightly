Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turboshaft-graph-interface?download=true
inline.NumInlined: 30203
inline.NumDeleted: 8013
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeContBindEPS7_NS1_10WasmOpcodeE:bb.a
  %i.n = trunc nuw nsw i64 %i.m to i32
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ]
  %.sroa.04.0.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i32 [ 1, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 24                  ; 2 uses
  %i.z = and i64 %.sroa.04.0.i.i.i, 4294967295    ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = zext nneg i32 %.sroa.5.0.i.i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %.not.i.i.i.i2 = icmp sgt i8 %i.ag, -1
  br i1 %.not.i.i.i.i2, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.ah = zext nneg i8 %i.ag to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ai = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.af) ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 25769803776
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp samesign ugt i64 %i.ai, 4294967295
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = lshr i64 %i.ai, 32
  %i.am = trunc nuw nsw i64 %i.al to i32
  %.pre52 = load ptr, ptr %i.p, align 8           ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre52, i64 160
  %.pre53 = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert54 = getelementptr inbounds nuw i8, ptr %.pre52, i64 152
  %.pre55 = load ptr, ptr %.phi.trans.insert54, align 8 ; 2 uses
  %.pre62 = ptrtoint ptr %.pre53 to i64
  %.pre63 = ptrtoint ptr %.pre55 to i64
  %.pre65 = sub i64 %.pre62, %.pre63
  %.pre67 = sdiv exact i64 %.pre65, 24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre-phi68 = phi i64 [ %.pre67, %bb.f ], [ %i.y, %bb.e ] ; 3 uses
  %i.an = phi ptr [ %.pre55, %bb.f ], [ %i.u, %bb.e ] ; 3 uses
  %.sroa.04.0.i.i.i3 = phi i64 [ %i.ai, %bb.f ], [ %i.ah, %bb.e ] ; 3 uses
  %.sroa.5.0.i.i.i4 = phi i32 [ %i.am, %bb.f ], [ 1, %bb.e ]
  %i.ao = and i64 %.sroa.04.0.i.i.i3, 4294967295  ; 2 uses
  %i.ap = icmp ugt i64 %.pre-phi68, %i.ao
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 22
  %i.at = load i8, ptr %i.as, align 2, !range !10, !noundef !11
  %.sroa.0.0.copyload.i = load i32, ptr %i.ac, align 4
  %i.au = zext i32 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.av = icmp ugt i64 %.pre-phi68, %i.au
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.au
  %i.ax = load ptr, ptr %i.aw, align 8
  %.sroa.0.0.copyload.i8 = load i32, ptr %i.ar, align 4
  %i.ay = zext i32 %.sroa.0.0.copyload.i8 to i64  ; 2 uses
  %i.az = icmp ugt i64 %.pre-phi68, %i.ay
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 4 uses
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bg = load i64, ptr %i.bf, align 8            ; 4 uses
  %i.bh = trunc i64 %i.bg to i32                  ; 2 uses
  %i.bi = sub nsw i32 %i.be, %i.bh                ; 6 uses
  %i.bj = and i64 %.sroa.04.0.i.i.i, 4293918720
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.46) #21
  unreachable

_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -104
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 8 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 3
  %i.bx = trunc i64 %i.bw to i32
  %i.by = add i32 %i.bo, 1
  %.not.i.i18.i = icmp ugt i32 %i.by, %i.bx
  br i1 %.not.i.i18.i, label %bb.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i, !prof !9

bb.i:                                             ; preds = %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit
  %i.bz = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef 1) ; 0 uses
  %.pre56 = load ptr, ptr %i.bq, align 8
  %.pre57 = load ptr, ptr %i.bl, align 8, !noalias !230
  %.pre58 = load ptr, ptr %i.bp, align 8, !noalias !230
  %.pre69 = ptrtoint ptr %.pre58 to i64
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i: ; preds = %bb.i, %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit
  %.pre-phi70 = phi i64 [ %.pre69, %bb.i ], [ %i.bu, %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit ]
  %i.ca = phi ptr [ %.pre57, %bb.i ], [ %i.bm, %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit ]
  %i.cb = phi ptr [ %.pre56, %bb.i ], [ %i.br, %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit ]
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8     ; 3 uses
  store ptr %i.cc, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 -104
  %i.ce = load i32, ptr %i.cd, align 8, !noalias !230
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = sub i64 %i.cf, %.pre-phi70
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = add i32 %i.ce, %i.bi
  %.not.i.i.i = icmp ugt i32 %i.cj, %i.ci
  br i1 %.not.i.i.i, label %bb.j, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i, !prof !9

bb.j:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i
  %i.ck = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %i.bi), !noalias !230 ; 0 uses
  %.pre59 = load ptr, ptr %i.bq, align 8, !noalias !230
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i: ; preds = %bb.j, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i
  %i.cl = phi ptr [ %.pre59, %bb.j ], [ %i.cc, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i ] ; 4 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = sext i32 %i.bi to i64                   ; 3 uses
  %.neg = mul nsw i64 %i.cn, -8
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %.neg ; 4 uses
  %i.cp = icmp sgt i32 %i.bi, 0
  br i1 %i.cp, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %i.cq = load i64, ptr %i.bc, align 8, !noalias !230
  %i.cr = xor i64 %i.bg, -1
  %i.cs = add i64 %i.bd, %i.cr
  %.fr = freeze i64 %i.cs
  %i.ct = and i64 %.fr, 4294967295
  %.not.not = icmp ugt i64 %i.cq, %i.ct
  br i1 %.not.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i, label %bb.k, !prof !8

bb.k:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.57) #21, !noalias !230
  unreachable

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %.not2.i = icmp eq i32 %i.be, %i.bh
  br i1 %.not2.i, label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.cu = zext i32 %i.bi to i64
  %.neg.i = mul nsw i64 %i.cu, -8
  %i.cv = getelementptr i8, ptr %i.cl, i64 %.neg.i
  store ptr %i.cv, ptr %i.bq, align 8, !noalias !230
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.cw, ptr %2, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.cz, ptr %i.cy, align 8
  %i.da = icmp ugt i32 %i.bi, 8
  br i1 %i.da, label %bb.l, label %.lr.ph.i.i.i.preheader

bb.l:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %2, i64 noundef %i.cn)
  %.pre60 = load ptr, ptr %2, align 8
  br label %.lr.ph.i.i.i.preheader

_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.db, ptr %2, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 88
  store ptr %i.de, ptr %i.dd, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  %.ph = phi ptr [ %i.cw, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ], [ %.pre60, %bb.l ] ; 5 uses
  %sext = shl i64 %i.bd, 32
  %i.df = ashr exact i64 %sext, 29
  %sext76 = shl i64 %i.bg, 32
  %3 = ashr exact i64 %sext76, 29
  %4 = add nsw i64 %i.df, -8
  %i.dg = sub nsw i64 %4, %3                      ; 2 uses
  %i.dh = lshr exact i64 %i.dg, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dg, 232
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %.ph72 = ptrtoaddr ptr %.ph to i64
  %sext77 = shl i64 %i.bg, 32
  %i.dj = ashr exact i64 %sext77, 29
  %i.dk = add i64 %i.dj, %i.cm
  %sext78 = shl i64 %i.bd, 32
  %i.dl = ashr exact i64 %sext78, 29
  %.neg79 = sub i64 %i.dl, %i.dk
  %i.dm = add i64 %.neg79, %.ph72
  %i.dn = add i64 %i.dm, -1
  %diff.check = icmp ult i64 %i.dn, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.do = shl i64 %n.vec, 3                       ; 2 uses
  %i.dp = getelementptr i8, ptr %.ph, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.co, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.ph, i64 %i.dr ; 2 uses
  %next.gep73 = getelementptr i8, ptr %i.co, i64 %i.dr ; 2 uses
  %i.ds = getelementptr i8, ptr %next.gep73, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep73, align 4
  %wide.load74 = load <2 x i64>, ptr %i.ds, align 4
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load74, ptr %i.dt, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !233

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.preheader80

.lr.ph.i.i.i.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %.ph, %vector.memcheck ], [ %.ph, %.lr.ph.i.i.i.preheader ], [ %i.dp, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader80, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 2 uses
  %i.dv = load i64, ptr %.0810.i.i.i, align 4
  store i64 %i.dv, ptr %.011.i.i.i, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.not.i.i.i21 = icmp eq ptr %i.dw, %i.cl
  br i1 %.not.i.i.i21, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !234

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre61 = load ptr, ptr %2, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit
  %i.dy = phi ptr [ %i.cx, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.dc, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ]
  %i.dz = phi ptr [ %.pre61, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.db, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ]
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.cn
  store ptr %i.ea, ptr %i.dy, align 8
  %i.eb = and i64 %.sroa.04.0.i.i.i3, 4293918720
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit23, label %bb.m, !prof !8

bb.m:                                             ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.46) #21
  unreachable

_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit23: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %i.ed = shl nuw nsw i8 %i.at, 4
  %i.ee = or disjoint i8 %i.ed, -125
  %i.ef = zext i8 %i.ee to i64
  %i.eg = shl nuw nsw i64 %.sroa.04.0.i.i.i3, 8
  %.sroa.035.0.insert.ext = or disjoint i64 %i.eg, %i.ef
  %.sroa.035.0.insert.insert = or i64 %.sroa.035.0.insert.ext, -4294967296
  %i.eh = load ptr, ptr %i.bq, align 8
  store i64 %.sroa.035.0.insert.insert, ptr %i.eh, align 4
  %i.ei = load ptr, ptr %i.bq, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ej, ptr %i.bq, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.el = load i8, ptr %i.ek, align 8, !range !10, !noundef !11
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.n, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18DecodeContBindImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !8

bb.n:                                             ; preds = %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit23
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.881) #21
  unreachable

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18DecodeContBindImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZNK2v88internal4wasm18ContIndexImmediate9heap_typeEv.exit23
  %i.en = add nuw nsw i32 %.sroa.5.0.i.i.i, 1
  %i.eo = add nuw nsw i32 %i.en, %.sroa.5.0.i.i.i4
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.eo
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeSuspendEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.638", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 128
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.g) ; 4 uses
  %i.k = icmp ult i64 %i.j, 25769803776
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %i.j, 4294967295
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = add nuw nsw i32 %i.n, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.5.0.i.i.i = phi i32 [ 2, %bb.b ], [ %i.o, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 376
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4
  %i.z = and i64 %.sroa.04.0.i.i.i, 4294967295    ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !235 ; 4 uses
  %i.af = trunc i64 %i.ae to i32                  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !238
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -104
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !238
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 15 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !238 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !noalias !238
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i32 %i.aj, %i.af
  %.not.i.i.i = icmp ugt i32 %i.at, %i.as
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.au = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %i.af), !noalias !238 ; 0 uses
  %.pre = load ptr, ptr %i.al, align 8, !noalias !238
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.av = phi ptr [ %.pre, %bb.e ], [ %i.am, %bb.d ] ; 4 uses
  %i.aw = ptrtoaddr ptr %i.av to i64
  %sext = shl i64 %i.ae, 32                       ; 3 uses
  %i.ax = ashr exact i64 %sext, 32                ; 3 uses
  %i.ay = ashr exact i64 %sext, 29                ; 3 uses
  %.idx = sub nsw i64 0, %i.ay
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %.idx ; 4 uses
  %i.ba = icmp sgt i32 %i.af, 0
  br i1 %i.ba, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %i.bb = load i64, ptr %i.ad, align 8, !noalias !238
  %i.bc = add i64 %i.ae, 4294967295
  %i.bd = and i64 %i.bc, 4294967295
  %.not.not = icmp ugt i64 %i.bb, %i.bd
  br i1 %.not.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.57) #21, !noalias !238
end_hunk_0
