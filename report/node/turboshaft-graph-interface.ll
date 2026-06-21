inline.NumInlined: 30203
inline.NumDeleted: 8013
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18DecodeCallFunctionEPS7_NS1_10WasmOpcodeE:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18DecodeCallIndirectEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::CallIndirectImmediate", align 8 ; 13 uses
  %3 = alloca %"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value", align 8 ; 4 uses
  %4 = alloca %"class.v8::base::SmallVector.638", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i8 %i.d to i64
  br label %_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.f = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.c) ; 4 uses
  %i.g = icmp ult i64 %i.f, 25769803776
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp samesign ugt i64 %i.f, 4294967295
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i64 %i.f, 32
  %i.j = trunc nuw nsw i64 %i.i to i32
  br label %_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i

_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %.pre.i = phi i32 [ 1, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %.sroa.04.0.extract.trunc.i.i.i = trunc i64 %.sroa.04.0.i.i.i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.pre.i, ptr %i.k, align 4
  store i32 %.sroa.04.0.extract.trunc.i.i.i, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = zext nneg i32 %.pre.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %.not.i.i.i.i5.i = icmp sgt i8 %i.p, -1
  br i1 %.not.i.i.i.i5.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i
  %i.q = zext nneg i8 %i.p to i64
  br label %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit

bb.e:                                             ; preds = %_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i
  %i.r = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.o) ; 4 uses
  %i.s = icmp ult i64 %i.r, 25769803776
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp samesign ugt i64 %i.r, 4294967295
  tail call void @llvm.assume(i1 %i.t)
  %i.u = lshr i64 %i.r, 32
  %i.v = trunc nuw nsw i64 %i.u to i32
  br label %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.d, %bb.e
  %.sroa.04.0.i.i.i6.i = phi i64 [ %i.q, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.5.0.i.i.i7.i = phi i32 [ 1, %bb.d ], [ %i.v, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.04.0.extract.trunc.i.i8.i = trunc i64 %.sroa.04.0.i.i.i6.i to i32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sroa.04.0.extract.trunc.i.i8.i, ptr %i.w, align 8
  store i32 %.sroa.5.0.i.i.i7.i, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aa = add nuw nsw i32 %.sroa.5.0.i.i.i7.i, %.pre.i
  store i32 %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = sdiv exact i64 %i.ak, 24
  %i.am = and i64 %.sroa.04.0.i.i.i.i, 4294967295 ; 3 uses
  %i.an = icmp ugt i64 %i.al, %i.am
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.am ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  store ptr %i.ap, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 22
  %i.ar = load i8, ptr %i.aq, align 2, !range !10, !noundef !11
  store i8 %i.ar, ptr %i.m, align 8
  %.not.i.i3 = icmp ne i32 %.sroa.04.0.extract.trunc.i.i8.i, 0
  %i.as = icmp samesign ugt i32 %.sroa.5.0.i.i.i7.i, 1
  %or.cond.i.i = select i1 %.not.i.i3, i1 true, i1 %i.as
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = or i64 %i.av, 524288
  store i64 %i.aw, ptr %i.au, align 8
  %i.ax = and i64 %.sroa.04.0.i.i.i6.i, 4294967295
  %.pre = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.phi.trans.insert26 = getelementptr inbounds nuw i8, ptr %.pre, i64 152
  %.pre27 = load ptr, ptr %.phi.trans.insert26, align 8
  %.phi.trans.insert28 = getelementptr inbounds nuw [24 x i8], ptr %.pre27, i64 %i.am
  %.pre29 = load ptr, ptr %.phi.trans.insert28, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit
  %i.ay = phi ptr [ %.pre29, %bb.f ], [ %i.ap, %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit ] ; 4 uses
  %i.az = phi ptr [ %.pre, %bb.f ], [ %i.ad, %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit ]
  %i.ba = phi i64 [ %i.ax, %bb.f ], [ 0, %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 272
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bd, ptr %i.y, align 8
  store ptr %i.ay, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -104
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 17 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = lshr exact i64 %i.bp, 3
  %i.br = trunc i64 %i.bq to i32
  %i.bs = add i32 %i.bi, 1
  %.not.i.i = icmp ugt i32 %i.bs, %i.br
  br i1 %.not.i.i, label %bb.h, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.bt = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef 1) ; 0 uses
  %.pre30 = load ptr, ptr %i.bk, align 8
  %.pre31 = load ptr, ptr %i.bf, align 8, !noalias !175
  %.pre32 = load ptr, ptr %i.bj, align 8, !noalias !175
  %.pre44 = ptrtoint ptr %.pre32 to i64
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit: ; preds = %bb.g, %bb.h
  %.pre-phi45 = phi i64 [ %i.bo, %bb.g ], [ %.pre44, %bb.h ]
  %i.bu = phi ptr [ %i.bg, %bb.g ], [ %.pre31, %bb.h ]
  %i.bv = phi ptr [ %i.bl, %bb.g ], [ %.pre30, %bb.h ]
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8     ; 4 uses
  store ptr %i.bw, ptr %i.bk, align 8
  %.sroa.03.0.copyload.i = load i64, ptr %i.bw, align 4
  store i64 %.sroa.03.0.copyload.i, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !noalias !178 ; 4 uses
  %i.bz = trunc i64 %i.by to i32                  ; 4 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bu, i64 -104
  %i.cb = load i32, ptr %i.ca, align 8, !noalias !175
  %i.cc = ptrtoint ptr %i.bw to i64
  %i.cd = sub i64 %i.cc, %.pre-phi45
  %i.ce = lshr exact i64 %i.cd, 3
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = add i32 %i.cb, %i.bz
  %.not.i.i.i = icmp ugt i32 %i.cg, %i.cf
  br i1 %.not.i.i.i, label %bb.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i, !prof !9

bb.i:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit
  %i.ch = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %i.bz), !noalias !175 ; 0 uses
  %.pre33 = load ptr, ptr %i.bk, align 8, !noalias !175
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i: ; preds = %bb.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit
  %i.ci = phi ptr [ %.pre33, %bb.i ], [ %i.bw, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit ] ; 4 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %sext = shl i64 %i.by, 32                       ; 3 uses
  %i.ck = ashr exact i64 %sext, 32                ; 3 uses
  %i.cl = ashr exact i64 %sext, 29                ; 3 uses
  %.idx = sub nsw i64 0, %i.cl
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %.idx ; 4 uses
  %i.cn = icmp sgt i32 %i.bz, 0
  br i1 %i.cn, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %i.co = load i64, ptr %i.bx, align 8, !noalias !175
  %i.cp = add i64 %i.by, 4294967295
  %i.cq = and i64 %i.cp, 4294967295
  %.not.not = icmp ugt i64 %i.co, %i.cq
  br i1 %.not.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit, label %bb.j, !prof !8

bb.j:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.57) #21, !noalias !175
  unreachable

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %.not2.i = icmp eq i32 %i.bz, 0
  br i1 %.not2.i, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.cr, ptr %4, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.cu, ptr %i.ct, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.cv = and i64 %i.by, 4294967295
  %.neg.i = mul nsw i64 %i.cv, -8
  %i.cw = getelementptr i8, ptr %i.ci, i64 %.neg.i
  store ptr %i.cw, ptr %i.bk, align 8, !noalias !175
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.cx, ptr %4, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.cx, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.da, ptr %i.cz, align 8
  %i.db = icmp ugt i64 %i.ck, 8
  br i1 %i.db, label %bb.k, label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

bb.k:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %4, i64 noundef %i.ck)
  %.pre34 = load ptr, ptr %4, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread, %bb.k, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  %i.dc = phi ptr [ %i.cr, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread ], [ %.pre34, %bb.k ], [ %i.cx, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ] ; 6 uses
  %i.dd = phi ptr [ %i.cs, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread ], [ %i.cy, %bb.k ], [ %i.cy, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ]
  %i.de = ptrtoaddr ptr %i.dc to i64
  %.not9.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i
  %i.df = add nsw i64 %i.cl, -8                   ; 2 uses
  %i.dg = lshr exact i64 %i.df, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.df, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.di = add i64 %i.cl, %i.de
  %i.dj = sub i64 %i.di, %i.cj
  %diff.check = icmp ult i64 %i.dj, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dh, 4611686018427387900     ; 3 uses
  %i.dk = shl i64 %n.vec, 3                       ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dc, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.cm, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dc, i64 %i.dn ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.cm, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep52, align 4
  %wide.load53 = load <2 x i64>, ptr %i.do, align 4
  %i.dp = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load53, ptr %i.dp, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %i.dc, %vector.memcheck ], [ %i.dc, %.lr.ph.i.i.i.preheader ], [ %i.dl, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph.i.i.i.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %i.dr = load i64, ptr %.0810.i.i.i, align 4
  store i64 %i.dr, ptr %.011.i.i.i, align 4
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.not.i.i.i9 = icmp eq ptr %i.ds, %i.ci
  br i1 %.not.i.i.i9, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !182

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre35 = load ptr, ptr %4, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i
  %i.du = phi ptr [ %.pre35, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.dc, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ck
  store ptr %i.dv, ptr %i.dd, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8            ; 5 uses
  %i.dy = load i64, ptr %i.ay, align 8            ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3
  %sext.i.i = shl i64 %i.dy, 32
  %i.eg = ashr exact i64 %sext.i.i, 32
  %.not.i.i.i10 = icmp slt i64 %i.ef, %i.eg
  br i1 %.not.i.i.i10, label %bb.l, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i, !prof !9

bb.l:                                             ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %i.eh = trunc i64 %i.dy to i32
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i32 noundef %i.eh, ptr noundef %i.ej)
  %.pre10.pre.i.i = load ptr, ptr %i.bk, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i: ; preds = %bb.l, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %.pre10.i.i = phi ptr [ %i.eb, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit ], [ %.pre10.pre.i.i, %bb.l ] ; 3 uses
  %.not.i.i11 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i11, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i
  %xtraiter = and i64 %i.dy, 3                    ; 3 uses
  %i.ek = icmp ult i64 %i.dy, 4
  br i1 %i.ek, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.dy, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.el = phi ptr [ %.pre10.i.i, %.lr.ph.i.i.preheader.new ], [ %i.fa, %.lr.ph.i.i ]
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.fb, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.09.i.i
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.em, align 4
  %.sroa.08.0.insert.ext.i.i = zext i32 %.sroa.0.0.copyload.i.i to i64
  %.sroa.08.0.insert.insert.i.i = or disjoint i64 %.sroa.08.0.insert.ext.i.i, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i, ptr %i.el, align 4
  %i.en = load ptr, ptr %i.bk, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  store ptr %i.eo, ptr %i.bk, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.09.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %.sroa.0.0.copyload.i.i.1 = load i32, ptr %i.eq, align 4
  %.sroa.08.0.insert.ext.i.i.1 = zext i32 %.sroa.0.0.copyload.i.i.1 to i64
  %.sroa.08.0.insert.insert.i.i.1 = or disjoint i64 %.sroa.08.0.insert.ext.i.i.1, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i.1, ptr %i.eo, align 4
  %i.er = load ptr, ptr %i.bk, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.bk, align 8
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.09.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.0.0.copyload.i.i.2 = load i32, ptr %i.eu, align 4
  %.sroa.08.0.insert.ext.i.i.2 = zext i32 %.sroa.0.0.copyload.i.i.2 to i64
  %.sroa.08.0.insert.insert.i.i.2 = or disjoint i64 %.sroa.08.0.insert.ext.i.i.2, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i.2, ptr %i.es, align 4
  %i.ev = load ptr, ptr %i.bk, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  store ptr %i.ew, ptr %i.bk, align 8
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.09.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %.sroa.0.0.copyload.i.i.3 = load i32, ptr %i.ey, align 4
  %.sroa.08.0.insert.ext.i.i.3 = zext i32 %.sroa.0.0.copyload.i.i.3 to i64
  %.sroa.08.0.insert.insert.i.i.3 = or disjoint i64 %.sroa.08.0.insert.ext.i.i.3, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i.3, ptr %i.ew, align 4
  %i.ez = load ptr, ptr %i.bk, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  store ptr %i.fa, ptr %i.bk, align 8
  %i.fb = add nuw i64 %.09.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !173

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi ptr [ %.pre10.i.i, %.lr.ph.i.i.preheader ], [ %i.fa, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa ]
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.fb, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod57 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod57)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.fc = phi ptr [ %i.ff, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.09.i.i.epil = phi i64 [ %i.fg, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.09.i.i.epil
  %.sroa.0.0.copyload.i.i.epil = load i32, ptr %i.fd, align 4
  %.sroa.08.0.insert.ext.i.i.epil = zext i32 %.sroa.0.0.copyload.i.i.epil to i64
  %.sroa.08.0.insert.insert.i.i.epil = or disjoint i64 %.sroa.08.0.insert.ext.i.i.epil, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i.epil, ptr %i.fc, align 4
  %i.fe = load ptr, ptr %i.bk, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 3 uses
  store ptr %i.ff, ptr %i.bk, align 8
  %i.fg = add nuw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE24DecodeReturnCallIndirectEPS7_NS1_10WasmOpcodeE
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE24DecodeReturnCallIndirectEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::CallIndirectImmediate", align 8 ; 13 uses
  %3 = alloca %"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value", align 8 ; 4 uses
  %4 = alloca %"class.v8::base::SmallVector.638", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 4194304
  store i64 %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i.i.i.i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i8 %i.h to i64
  br label %_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.g) ; 4 uses
  %i.k = icmp ult i64 %i.j, 25769803776
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ugt i64 %i.j, 4294967295
  tail call void @llvm.assume(i1 %i.l)
  %i.m = lshr i64 %i.j, 32
  %i.n = trunc nuw nsw i64 %i.m to i32
  br label %_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i

_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.pre.i = phi i32 [ 1, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.04.0.extract.trunc.i.i.i = trunc i64 %.sroa.04.0.i.i.i.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.pre.i, ptr %i.o, align 4
  store i32 %.sroa.04.0.extract.trunc.i.i.i, ptr %2, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = zext nneg i32 %.pre.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r ; 2 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %.not.i.i.i.i5.i = icmp sgt i8 %i.t, -1
  br i1 %.not.i.i.i.i5.i, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i
  %i.u = zext nneg i8 %i.t to i64
  br label %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit

bb.e:                                             ; preds = %_ZN2v88internal4wasm17SigIndexImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit.i
  %i.v = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.s) ; 4 uses
  %i.w = icmp ult i64 %i.v, 25769803776
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp samesign ugt i64 %i.v, 4294967295
  tail call void @llvm.assume(i1 %i.x)
  %i.y = lshr i64 %i.v, 32
  %i.z = trunc nuw nsw i64 %i.y to i32
  br label %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit

_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit: ; preds = %bb.d, %bb.e
  %.sroa.04.0.i.i.i6.i = phi i64 [ %i.u, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %.sroa.5.0.i.i.i7.i = phi i32 [ 1, %bb.d ], [ %i.z, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.04.0.extract.trunc.i.i8.i = trunc i64 %.sroa.04.0.i.i.i6.i to i32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sroa.04.0.extract.trunc.i.i8.i, ptr %i.aa, align 8
  store i32 %.sroa.5.0.i.i.i7.i, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ae = add nuw nsw i32 %.sroa.5.0.i.i.i7.i, %.pre.i
  store i32 %i.ae, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 24
  %i.aq = and i64 %.sroa.04.0.i.i.i.i, 4294967295 ; 3 uses
  %i.ar = icmp ugt i64 %i.ap, %i.aq
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.aq ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  store ptr %i.at, ptr %i.p, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 22
  %i.av = load i8, ptr %i.au, align 2, !range !10, !noundef !11
  store i8 %i.av, ptr %i.q, align 8
  %.not.i.i = icmp ne i32 %.sroa.04.0.extract.trunc.i.i8.i, 0
  %i.aw = icmp samesign ugt i32 %.sroa.5.0.i.i.i7.i, 1
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.aw
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit
  %i.ax = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = or i64 %i.ay, 524288
  store i64 %i.az, ptr %i.ax, align 8
  %i.ba = and i64 %.sroa.04.0.i.i.i6.i, 4294967295
  %.pre = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %.pre, i64 152
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8
  %.phi.trans.insert24 = getelementptr inbounds nuw [24 x i8], ptr %.pre23, i64 %i.aq
  %.pre25 = load ptr, ptr %.phi.trans.insert24, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit
  %i.bb = phi ptr [ %.pre25, %bb.f ], [ %i.at, %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit ] ; 2 uses
  %i.bc = phi ptr [ %.pre, %bb.f ], [ %i.ah, %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit ]
  %i.bd = phi i64 [ %i.ba, %bb.f ], [ 0, %_ZN2v88internal4wasm21CallIndirectImmediateC2INS1_7Decoder15NoValidationTagEEEPS4_PKhT_.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 272
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.bg, ptr %i.ac, align 8
  store ptr %i.bb, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -104
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 6 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = load ptr, ptr %i.bl, align 8
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = lshr exact i64 %i.br, 3
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add i32 %i.bk, 1
  %.not.i.i2.i = icmp ugt i32 %i.bu, %i.bt
  br i1 %.not.i.i2.i, label %bb.h, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.bv = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef 1) ; 0 uses
  %.pre26 = load ptr, ptr %i.bm, align 8
  %.pre27 = load ptr, ptr %i.bh, align 8, !noalias !192
  %.pre28 = load ptr, ptr %i.bl, align 8, !noalias !192
  %.pre39 = ptrtoint ptr %.pre28 to i64
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i: ; preds = %bb.h, %bb.g
  %.pre-phi40 = phi i64 [ %.pre39, %bb.h ], [ %i.bq, %bb.g ]
  %i.bw = phi ptr [ %.pre27, %bb.h ], [ %i.bi, %bb.g ]
  %i.bx = phi ptr [ %.pre26, %bb.h ], [ %i.bn, %bb.g ]
  %i.by = getelementptr i8, ptr %i.bx, i64 -8     ; 4 uses
  store ptr %i.by, ptr %i.bm, align 8
  %.sroa.03.0.copyload.i = load i64, ptr %i.by, align 4
  store i64 %.sroa.03.0.copyload.i, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !195 ; 4 uses
  %i.cb = trunc i64 %i.ca to i32                  ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 -104
  %i.cd = load i32, ptr %i.cc, align 8, !noalias !192
  %i.ce = ptrtoint ptr %i.by to i64
  %i.cf = sub i64 %i.ce, %.pre-phi40
  %i.cg = lshr exact i64 %i.cf, 3
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = add i32 %i.cd, %i.cb
  %.not.i.i.i = icmp ugt i32 %i.ci, %i.ch
  br i1 %.not.i.i.i, label %bb.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i, !prof !9

bb.i:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i
  %i.cj = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %i.cb), !noalias !192 ; 0 uses
  %.pre29 = load ptr, ptr %i.bm, align 8, !noalias !192
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i: ; preds = %bb.i, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i
  %i.ck = phi ptr [ %.pre29, %bb.i ], [ %i.by, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i ] ; 4 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64
  %sext = shl i64 %i.ca, 32                       ; 3 uses
  %i.cm = ashr exact i64 %sext, 32                ; 3 uses
  %i.cn = ashr exact i64 %sext, 29                ; 3 uses
  %.idx = sub nsw i64 0, %i.cn
  %i.co = getelementptr inbounds i8, ptr %i.ck, i64 %.idx ; 4 uses
  %i.cp = icmp sgt i32 %i.cb, 0
  br i1 %i.cp, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %i.cq = load i64, ptr %i.bz, align 8, !noalias !192
  %i.cr = add i64 %i.ca, 4294967295
  %i.cs = and i64 %i.cr, 4294967295
  %.not.not = icmp ugt i64 %i.cq, %i.cs
  br i1 %.not.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit, label %bb.j, !prof !8

bb.j:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.57) #21, !noalias !192
  unreachable

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %.not2.i = icmp eq i32 %i.cb, 0
  br i1 %.not2.i, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.ct, ptr %4, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.cw, ptr %i.cv, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.cx = and i64 %i.ca, 4294967295
  %.neg.i = mul nsw i64 %i.cx, -8
  %i.cy = getelementptr i8, ptr %i.ck, i64 %.neg.i
  store ptr %i.cy, ptr %i.bm, align 8, !noalias !192
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store ptr %i.cz, ptr %4, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.cz, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %i.dc, ptr %i.db, align 8
  %i.dd = icmp ugt i64 %i.cm, 8
  br i1 %i.dd, label %bb.k, label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

bb.k:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %4, i64 noundef %i.cm)
  %.pre30 = load ptr, ptr %4, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread, %bb.k, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  %i.de = phi ptr [ %i.ct, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread ], [ %.pre30, %bb.k ], [ %i.cz, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ] ; 6 uses
  %i.df = phi ptr [ %i.cu, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread ], [ %i.da, %bb.k ], [ %i.da, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ]
  %i.dg = ptrtoaddr ptr %i.de to i64
  %.not9.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i
  %i.dh = add nsw i64 %i.cn, -8                   ; 2 uses
  %i.di = lshr exact i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dh, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader48, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.dk = add i64 %i.cn, %i.dg
  %i.dl = sub i64 %i.dk, %i.cl
  %diff.check = icmp ult i64 %i.dl, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dj, 4611686018427387900     ; 3 uses
  %i.dm = shl i64 %n.vec, 3                       ; 2 uses
  %i.dn = getelementptr i8, ptr %i.de, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.co, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dp ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.co, i64 %i.dp ; 2 uses
  %i.dq = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep45, align 4
  %wide.load46 = load <2 x i64>, ptr %i.dq, align 4
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load46, ptr %i.dr, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.preheader48

.lr.ph.i.i.i.preheader48:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.preheader ], [ %i.dn, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.co, %vector.memcheck ], [ %i.co, %.lr.ph.i.i.i.preheader ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader48, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader48 ] ; 2 uses
  %i.dt = load i64, ptr %.0810.i.i.i, align 4
  store i64 %i.dt, ptr %.011.i.i.i, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.not.i.i.i7 = icmp eq ptr %i.du, %i.ck
  br i1 %.not.i.i.i7, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !199

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre31 = load ptr, ptr %4, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i
  %i.dw = phi ptr [ %.pre31, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.de, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.cm
  store ptr %i.dx, ptr %i.df, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 8, !range !10, !noundef !11
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.l, label %bb.m, !prof !8

bb.l:                                             ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface18ReturnCallIndirectEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueERKNS1_21CallIndirectImmediateEPSA_(ptr noundef nonnull align 8 dereferenceable(288) %i.eb, ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.dw)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %i.ec = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -104
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = load ptr, ptr %i.bl, align 8
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.eg
  store ptr %i.eh, ptr %i.bm, align 8
  %i.ei = getelementptr inbounds i8, ptr %i.ec, i64 -127
  store i8 2, ptr %i.ei, align 1
  store i8 0, ptr %i.dy, align 8
  %i.ej = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %2, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 152
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 160
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 24
  %i.es = zext i32 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.et = icmp ugt i64 %i.er, %i.es
  call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.es
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 21
  %i.ew = load i8, ptr %i.ev, align 1, !range !10, !noundef !11
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE28DecodeReturnCallIndirectImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ey = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = or i64 %i.ez, 33554432
  store i64 %i.fa, ptr %i.ey, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE28DecodeReturnCallIndirectImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE28DecodeReturnCallIndirectImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %bb.m, %bb.n
  %i.fb = load i32, ptr %i.ad, align 8
  %i.fc = add i32 %i.fb, 1
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.fc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE13DecodeCallRefEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::SmallVector.638", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 67108864
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
  %.sroa.04.0.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i32 [ 2, %bb.b ], [ %i.o, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  %i.z = and i64 %.sroa.04.0.i.i.i, 4294967295    ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ad = and i64 %.sroa.04.0.i.i.i, 4293918720
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.46) #21
  unreachable

_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -104
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 17 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i32 %i.aj, 1
  %.not.i.i3.i = icmp ugt i32 %i.at, %i.as
  br i1 %.not.i.i3.i, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i, !prof !9

bb.f:                                             ; preds = %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit
  %i.au = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %i.al, align 8
  %.pre26 = load ptr, ptr %i.ag, align 8, !noalias !200
  %.pre27 = load ptr, ptr %i.ak, align 8, !noalias !200
  %.pre32 = ptrtoint ptr %.pre27 to i64
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i: ; preds = %bb.f, %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit
  %.pre-phi = phi i64 [ %.pre32, %bb.f ], [ %i.ap, %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit ]
  %i.av = phi ptr [ %.pre26, %bb.f ], [ %i.ah, %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit ]
  %i.aw = phi ptr [ %.pre, %bb.f ], [ %i.am, %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit ]
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8     ; 4 uses
  store ptr %i.ax, ptr %i.al, align 8
  %.sroa.03.0.copyload.i = load i64, ptr %i.ax, align 4
  store i64 %.sroa.03.0.copyload.i, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !203 ; 4 uses
  %i.ba = trunc i64 %i.az to i32                  ; 4 uses
  %i.bb = getelementptr inbounds i8, ptr %i.av, i64 -104
  %i.bc = load i32, ptr %i.bb, align 8, !noalias !200
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = sub i64 %i.bd, %.pre-phi
  %i.bf = lshr exact i64 %i.be, 3
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = add i32 %i.bc, %i.ba
  %.not.i.i.i = icmp ugt i32 %i.bh, %i.bg
  br i1 %.not.i.i.i, label %bb.g, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i, !prof !9

bb.g:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i
  %i.bi = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %i.ba), !noalias !200 ; 0 uses
  %.pre28 = load ptr, ptr %i.al, align 8, !noalias !200
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i: ; preds = %bb.g, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i
  %i.bj = phi ptr [ %.pre28, %bb.g ], [ %i.ax, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i ] ; 4 uses
  %i.bk = ptrtoaddr ptr %i.bj to i64
  %sext = shl i64 %i.az, 32                       ; 3 uses
  %i.bl = ashr exact i64 %sext, 32                ; 3 uses
  %i.bm = ashr exact i64 %sext, 29                ; 3 uses
  %.idx = sub nsw i64 0, %i.bm
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %.idx ; 4 uses
  %i.bo = icmp sgt i32 %i.ba, 0
  br i1 %i.bo, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %i.bp = load i64, ptr %i.ay, align 8, !noalias !200
  %i.bq = add i64 %i.az, 4294967295
  %i.br = and i64 %i.bq, 4294967295
  %.not.not = icmp ugt i64 %i.bp, %i.br
  br i1 %.not.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.57) #21, !noalias !200
  unreachable

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %.not2.i = icmp eq i32 %i.ba, 0
  br i1 %.not2.i, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.bs, ptr %3, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.bv, ptr %i.bu, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.bw = and i64 %i.az, 4294967295
  %.neg.i = mul nsw i64 %i.bw, -8
  %i.bx = getelementptr i8, ptr %i.bj, i64 %.neg.i
  store ptr %i.bx, ptr %i.al, align 8, !noalias !200
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.by, ptr %3, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.by, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.cb, ptr %i.ca, align 8
  %i.cc = icmp ugt i64 %i.bl, 8
  br i1 %i.cc, label %bb.i, label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

bb.i:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %i.bl)
  %.pre29 = load ptr, ptr %3, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread, %bb.i, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  %i.cd = phi ptr [ %i.bs, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread ], [ %.pre29, %bb.i ], [ %i.by, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ] ; 6 uses
  %i.ce = phi ptr [ %i.bt, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread ], [ %i.bz, %bb.i ], [ %i.bz, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ]
  %i.cf = ptrtoaddr ptr %i.cd to i64
  %.not9.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i
  %i.cg = add nsw i64 %i.bm, -8                   ; 2 uses
  %i.ch = lshr exact i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader41, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.cj = add i64 %i.bm, %i.cf
  %i.ck = sub i64 %i.cj, %i.bk
  %diff.check = icmp ult i64 %i.ck, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 4611686018427387900     ; 3 uses
  %i.cl = shl i64 %n.vec, 3                       ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cd, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.bn, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cd, i64 %i.co ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.bn, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep38, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep38, align 4
  %wide.load39 = load <2 x i64>, ptr %i.cp, align 4
  %i.cq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load39, ptr %i.cq, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.preheader41

.lr.ph.i.i.i.preheader41:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %i.cd, %vector.memcheck ], [ %i.cd, %.lr.ph.i.i.i.preheader ], [ %i.cm, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader41, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader41 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader41 ] ; 2 uses
  %i.cs = load i64, ptr %.0810.i.i.i, align 4
  store i64 %i.cs, ptr %.011.i.i.i, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.not.i.i.i5 = icmp eq ptr %i.ct, %i.bj
  br i1 %.not.i.i.i5, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !207

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre30 = load ptr, ptr %3, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i
  %i.cv = phi ptr [ %.pre30, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.cd, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.bl
  store ptr %i.cw, ptr %i.ce, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8            ; 5 uses
  %i.cz = load i64, ptr %i.ac, align 8            ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = ashr exact i64 %i.df, 3
  %sext.i.i = shl i64 %i.cz, 32
  %i.dh = ashr exact i64 %sext.i.i, 32
  %.not.i.i.i6 = icmp slt i64 %i.dg, %i.dh
  br i1 %.not.i.i.i6, label %bb.j, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i, !prof !9

bb.j:                                             ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %i.di = trunc i64 %i.cz to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i32 noundef %i.di, ptr noundef %i.dk)
  %.pre10.pre.i.i = load ptr, ptr %i.al, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i: ; preds = %bb.j, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %.pre10.i.i = phi ptr [ %i.dc, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit ], [ %.pre10.pre.i.i, %bb.j ] ; 3 uses
  %.not.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i
  %xtraiter = and i64 %i.cz, 3                    ; 3 uses
  %i.dl = icmp ult i64 %i.cz, 4
  br i1 %i.dl, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.cz, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.dm = phi ptr [ %.pre10.i.i, %.lr.ph.i.i.preheader.new ], [ %i.eb, %.lr.ph.i.i ]
  %.09.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ec, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.09.i.i
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.dn, align 4
  %.sroa.08.0.insert.ext.i.i = zext i32 %.sroa.0.0.copyload.i.i to i64
  %.sroa.08.0.insert.insert.i.i = or disjoint i64 %.sroa.08.0.insert.ext.i.i, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i, ptr %i.dm, align 4
  %i.do = load ptr, ptr %i.al, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.al, align 8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.09.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %.sroa.0.0.copyload.i.i.1 = load i32, ptr %i.dr, align 4
  %.sroa.08.0.insert.ext.i.i.1 = zext i32 %.sroa.0.0.copyload.i.i.1 to i64
  %.sroa.08.0.insert.insert.i.i.1 = or disjoint i64 %.sroa.08.0.insert.ext.i.i.1, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i.1, ptr %i.dp, align 4
  %i.ds = load ptr, ptr %i.al, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  store ptr %i.dt, ptr %i.al, align 8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.09.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.0.0.copyload.i.i.2 = load i32, ptr %i.dv, align 4
  %.sroa.08.0.insert.ext.i.i.2 = zext i32 %.sroa.0.0.copyload.i.i.2 to i64
  %.sroa.08.0.insert.insert.i.i.2 = or disjoint i64 %.sroa.08.0.insert.ext.i.i.2, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i.2, ptr %i.dt, align 4
  %i.dw = load ptr, ptr %i.al, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  store ptr %i.dx, ptr %i.al, align 8
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.09.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %.sroa.0.0.copyload.i.i.3 = load i32, ptr %i.dz, align 4
  %.sroa.08.0.insert.ext.i.i.3 = zext i32 %.sroa.0.0.copyload.i.i.3 to i64
  %.sroa.08.0.insert.insert.i.i.3 = or disjoint i64 %.sroa.08.0.insert.ext.i.i.3, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i.3, ptr %i.dx, align 4
  %i.ea = load ptr, ptr %i.al, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  store ptr %i.eb, ptr %i.al, align 8
  %i.ec = add nuw i64 %.09.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !173

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi ptr [ %.pre10.i.i, %.lr.ph.i.i.preheader ], [ %i.eb, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa ]
  %.09.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ec, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.ed = phi ptr [ %i.eg, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.09.i.i.epil = phi i64 [ %i.eh, %.lr.ph.i.i.epil ], [ %.09.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.09.i.i.epil
  %.sroa.0.0.copyload.i.i.epil = load i32, ptr %i.ee, align 4
  %.sroa.08.0.insert.ext.i.i.epil = zext i32 %.sroa.0.0.copyload.i.i.epil to i64
  %.sroa.08.0.insert.insert.i.i.epil = or disjoint i64 %.sroa.08.0.insert.ext.i.i.epil, -4294967296
  store i64 %.sroa.08.0.insert.insert.i.i.epil, ptr %i.ed, align 4
  %i.ef = load ptr, ptr %i.al, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  store ptr %i.eg, ptr %i.al, align 8
  %i.eh = add nuw i64 %.09.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !208

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i
  %i.ei = phi ptr [ %.pre10.i.i, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i.i ], [ %i.eb, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit.loopexit.unr-lcssa ], [ %i.eg, %.lr.ph.i.i.epil ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 8, !range !10, !noundef !11
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.k, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeCallRefImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !8

bb.k:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit
  %i.em = sub i64 0, %i.cz
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ep = load ptr, ptr %3, align 8
  call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7CallRefEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueEPKNS0_9SignatureINS1_9ValueTypeEEEPSA_PS9_(ptr noundef nonnull align 8 dereferenceable(288) %i.eo, ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull %i.ac, ptr noundef %i.ep, ptr noundef %i.en)
  %.pre31 = load i8, ptr %i.ej, align 8, !range !10
  %i.eq = trunc nuw i8 %.pre31 to i1
  br i1 %i.eq, label %bb.l, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeCallRefImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

bb.l:                                             ; preds = %bb.k
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.es = load i32, ptr %i.er, align 4            ; 2 uses
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeCallRefImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eu = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ev = load ptr, ptr %i.af, align 8
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = lshr exact i64 %i.ey, 7
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = xor i32 %i.es, -1
  %i.fc = add i32 %i.fa, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = sub nsw i64 0, %i.fd
  %i.ff = getelementptr [128 x i8], ptr %i.eu, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -40
  store i8 1, ptr %i.fg, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeCallRefImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE17DecodeCallRefImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PushReturnsEPKNS0_9SignatureINS1_9ValueTypeEEE.exit, %bb.m, %bb.l, %bb.k
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.sroa.5.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE19DecodeReturnCallRefEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.v8::internal::wasm::TurboshaftGraphBuildingInterface::Value", align 8 ; 4 uses
  %3 = alloca %"class.v8::base::SmallVector.638", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 67108864
  store i64 %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = or i64 %i.f, 4194304
  store i64 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not.i.i.i.i = icmp sgt i8 %i.k, -1
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.l = zext nneg i8 %i.k to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.j) ; 4 uses
  %i.n = icmp ult i64 %i.m, 25769803776
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp samesign ugt i64 %i.m, 4294967295
  tail call void @llvm.assume(i1 %i.o)
  %i.p = lshr i64 %i.m, 32
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = add nuw nsw i32 %i.q, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.04.0.i.i.i = phi i64 [ %i.l, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.5.0.i.i.i = phi i32 [ 2, %bb.b ], [ %i.r, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = and i64 %.sroa.04.0.i.i.i, 4294967295   ; 2 uses
  %i.ad = icmp ugt i64 %i.ab, %i.ac
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ag = and i64 %.sroa.04.0.i.i.i, 4293918720
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.46) #21
  unreachable

_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -104
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 3
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %i.al, 1
  %.not.i.i2.i = icmp ugt i32 %i.av, %i.au
  br i1 %.not.i.i2.i, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i, !prof !9

bb.f:                                             ; preds = %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit
  %i.aw = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %i.an, align 8
  %.pre24 = load ptr, ptr %i.ai, align 8, !noalias !209
  %.pre25 = load ptr, ptr %i.am, align 8, !noalias !209
  %.pre29 = ptrtoint ptr %.pre25 to i64
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i: ; preds = %bb.f, %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit
  %.pre-phi = phi i64 [ %.pre29, %bb.f ], [ %i.ar, %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit ]
  %i.ax = phi ptr [ %.pre24, %bb.f ], [ %i.aj, %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit ]
  %i.ay = phi ptr [ %.pre, %bb.f ], [ %i.ao, %_ZNK2v88internal4wasm17SigIndexImmediate9heap_typeEv.exit ]
  %i.az = getelementptr i8, ptr %i.ay, i64 -8     ; 4 uses
  store ptr %i.az, ptr %i.an, align 8
  %.sroa.03.0.copyload.i = load i64, ptr %i.az, align 4
  store i64 %.sroa.03.0.copyload.i, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !212 ; 4 uses
  %i.bc = trunc i64 %i.bb to i32                  ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.ax, i64 -104
  %i.be = load i32, ptr %i.bd, align 8, !noalias !209
  %i.bf = ptrtoint ptr %i.az to i64
  %i.bg = sub i64 %i.bf, %.pre-phi
  %i.bh = lshr exact i64 %i.bg, 3
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = add i32 %i.be, %i.bc
  %.not.i.i.i = icmp ugt i32 %i.bj, %i.bi
  br i1 %.not.i.i.i, label %bb.g, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i, !prof !9

bb.g:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i
  %i.bk = tail call preserve_mostcc noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE25EnsureStackArguments_SlowEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %i.bc), !noalias !209 ; 0 uses
  %.pre26 = load ptr, ptr %i.an, align 8, !noalias !209
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i: ; preds = %bb.g, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i
  %i.bl = phi ptr [ %.pre26, %bb.g ], [ %i.az, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE3PopIJNS1_9ValueTypeEEQfraaoosr3stdE9is_same_vIS9_TL0__Esr3stdE12is_base_of_vINS1_20IndependentValueTypeESA_EEENSt11conditionalIXeqsZT_Li1EENS5_5ValueESt5arrayISD_XsZT_EEE4typeEDpT_.exit.i ] ; 4 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %sext = shl i64 %i.bb, 32                       ; 3 uses
  %i.bn = ashr exact i64 %sext, 32                ; 3 uses
  %i.bo = ashr exact i64 %sext, 29                ; 3 uses
  %.idx = sub nsw i64 0, %i.bo
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %.idx ; 4 uses
  %i.bq = icmp sgt i32 %i.bc, 0
  br i1 %i.bq, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %i.br = load i64, ptr %i.ba, align 8, !noalias !209
  %i.bs = add i64 %i.bb, 4294967295
  %i.bt = and i64 %i.bs, 4294967295
  %.not.not = icmp ugt i64 %i.br, %i.bt
  br i1 %.not.not, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit, label %bb.h, !prof !8

bb.h:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.57) #21, !noalias !209
  unreachable

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.i.i
  %.not2.i = icmp eq i32 %i.bc, 0
  br i1 %.not2.i, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.bu, ptr %3, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.bx, ptr %i.bw, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit: ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit.lr.ph, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE11PopSomeArgsEPKNS0_9SignatureINS1_9ValueTypeEEEi.exit.i
  %i.by = and i64 %i.bb, 4294967295
  %.neg.i = mul nsw i64 %i.by, -8
  %i.bz = getelementptr i8, ptr %i.bl, i64 %.neg.i
  store ptr %i.bz, ptr %i.an, align 8, !noalias !209
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.ca, ptr %3, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr %i.cd, ptr %i.cc, align 8
  %i.ce = icmp ugt i64 %i.bn, 8
  br i1 %i.ce, label %bb.i, label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

bb.i:                                             ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 noundef %i.bn)
  %.pre27 = load ptr, ptr %3, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i

_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i: ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread, %bb.i, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit
  %i.cf = phi ptr [ %i.bu, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread ], [ %.pre27, %bb.i ], [ %i.ca, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ] ; 6 uses
  %i.cg = phi ptr [ %i.bv, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit.thread ], [ %i.cb, %bb.i ], [ %i.cb, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE3popEj.exit ]
  %i.ch = ptrtoaddr ptr %i.cf to i64
  %.not9.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not9.i.i.i, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i
  %i.ci = add nsw i64 %i.bo, -8                   ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ci, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader36, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.cl = add i64 %i.bo, %i.ch
  %i.cm = sub i64 %i.cl, %i.bm
  %diff.check = icmp ult i64 %i.cm, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader36, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ck, 4611686018427387900     ; 3 uses
  %i.cn = shl i64 %n.vec, 3                       ; 2 uses
  %i.co = getelementptr i8, ptr %i.cf, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.bp, i64 %i.cn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cq ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.bp, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep33, align 4
  %wide.load34 = load <2 x i64>, ptr %i.cr, align 4
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load34, ptr %i.cs, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i.preheader36

.lr.ph.i.i.i.preheader36:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.011.i.i.i.ph = phi ptr [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.i.i.i.preheader ], [ %i.co, %middle.block ]
  %.0810.i.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader36, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %.011.i.i.i.ph, %.lr.ph.i.i.i.preheader36 ] ; 2 uses
  %.0810.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i ], [ %.0810.i.i.i.ph, %.lr.ph.i.i.i.preheader36 ] ; 2 uses
  %i.cu = load i64, ptr %.0810.i.i.i, align 4
  store i64 %i.cu, ptr %.011.i.i.i, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.0810.i.i.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %.not.i.i.i5 = icmp eq ptr %i.cv, %i.bl
  br i1 %.not.i.i.i5, label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !216

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit: ; preds = %.lr.ph.i.i.i, %middle.block
  %.pre28 = load ptr, ptr %3, align 8
  br label %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit

_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i
  %i.cx = phi ptr [ %.pre28, %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit.loopexit ], [ %i.cf, %_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EEC2ENS0_6VectorIKS5_EERKS6_.exit.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.bn
  store ptr %i.cy, ptr %i.cg, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !range !10, !noundef !11
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.j, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeReturnCallRefImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit, !prof !8

bb.j:                                             ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13ReturnCallRefEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS2_5ValueEPKNS0_9SignatureINS1_9ValueTypeEEEPSA_(ptr noundef nonnull align 8 dereferenceable(288) %i.dc, ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull %i.af, ptr noundef %i.cx)
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeReturnCallRefImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE23DecodeReturnCallRefImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit: ; preds = %_ZSt18uninitialized_copyIPKN2v88internal4wasm32TurboshaftGraphBuildingInterface5ValueEPS4_ET0_T_S9_S8_.exit, %bb.j
  %i.dd = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -104
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = load ptr, ptr %i.am, align 8
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  store ptr %i.di, ptr %i.an, align 8
  %i.dj = getelementptr inbounds i8, ptr %i.dd, i64 -127
  store i8 2, ptr %i.dj, align 1
  store i8 0, ptr %i.cz, align 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal4wasm32TurboshaftGraphBuildingInterface5ValueELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %.sroa.5.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE39DecodeNopForTestingUnsupportedInLiftoffEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE43DecodeNopForTestingUnsupportedInLiftoffImplEPNS7_9TraceLineENS1_10WasmOpcodeE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, -1
  %..i = zext i1 %.not to i32
  ret i32 %..i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE18UnknownOpcodeErrorEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE14DecodeDelegateEPS7_NS1_10WasmOpcodeE(ptr noundef %0, i32 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = or i64 %i.c, 8192
  store i64 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i.i.i, label %bb.b, label %bb.c, !prof !8

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
  %.sroa.04.0.i.i = phi i64 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  %.sroa.5.0.i.i = phi i32 [ 2, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.03.0.extract.trunc.i = trunc i64 %.sroa.04.0.i.i to i32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 7 uses
  %i.s = load ptr, ptr %i.p, align 8
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 7
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, -1                         ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -128 ; 2 uses
  %i.aa = add i32 %.sroa.03.0.extract.trunc.i, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.y, i32 %i.aa) ; 3 uses
  %i.ab = add i32 %umax, -1                       ; 2 uses
  %.0.i7 = add i32 %.sroa.03.0.extract.trunc.i, 1 ; 2 uses
  %i.ac = icmp ult i32 %.0.i7, %i.y
  br i1 %i.ac, label %.lr.ph, label %.critedge.i

.critedge2.i:                                     ; preds = %.lr.ph
  %.0.i = add i32 %.0.i9, 1                       ; 2 uses
  %i.ad = icmp ult i32 %.0.i, %i.y
  br i1 %i.ad, label %.lr.ph, label %.critedge.i, !llvm.loop !217

.lr.ph:                                           ; preds = %bb.d, %.critedge2.i
  %.0.i9 = phi i32 [ %.0.i, %.critedge2.i ], [ %.0.i7, %bb.d ] ; 4 uses
  %.0.in.i8 = phi i32 [ %.0.i9, %.critedge2.i ], [ %.sroa.03.0.extract.trunc.i, %bb.d ]
  %i.ae = zext i32 %.0.i9 to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [128 x i8], ptr %i.z, i64 %i.af
end_hunk_1
