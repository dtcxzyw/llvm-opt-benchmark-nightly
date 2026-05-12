inline.NumInlined: 65941
inline.NumDeleted: 17507
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_27RequiredOptimizationReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerES3_S4_S6_S8_EEEEEEEEEEEEEEEE4BindEPNS2_5BlockE:bb.a
  %i.ad = shl nuw i64 %i.ac, 3                    ; 2 uses
  %i.ae = getelementptr i8, ptr %.pre, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.ae, i64 8
  %6 = xor i64 %i.ad, -8
  %scevgep72 = getelementptr i8, ptr %.pre56, i64 %6
  %bound0 = icmp ult ptr %.pre, %.pre56
  %bound1 = icmp ult ptr %scevgep72, %scevgep
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerES3_S5_EEEEEEEEEE23RecordOldEpochAndSetNewEPNS2_5BlockE:bb.a
  %i.az = shl nuw i64 %i.ay, 3                    ; 2 uses
  %i.ba = getelementptr i8, ptr %.pre.i18, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 8
  %3 = xor i64 %i.az, -8
  %scevgep46 = getelementptr i8, ptr %.pre8.i, i64 %3
  %bound0 = icmp ult ptr %.pre.i18, %.pre8.i
  %bound1 = icmp ult ptr %scevgep46, %scevgep
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor35StartMultiPredecessorExceptionBlockEPNS0_6maglev10BasicBlockEPNS2_5BlockE:bb.a
  %i.fi = shl nuw i64 %i.fh, 3                    ; 2 uses
  %i.fj = getelementptr i8, ptr %.pre.i33, i64 %i.fi
  %scevgep = getelementptr i8, ptr %i.fj, i64 8
  %5 = xor i64 %i.fi, -8
  %scevgep135 = getelementptr i8, ptr %.pre8.i, i64 %5
  %bound0 = icmp ult ptr %.pre.i33, %.pre8.i
  %bound1 = icmp ult ptr %scevgep135, %scevgep
end_hunk_2
begin_hunk_3_@_ZN2v88internal8compiler10turboshaft18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_26BlockOriginTrackingReducerENS2_28TurbolevEarlyLoweringReducerENS2_26MachineOptimizationReducerENS2_15VariableReducerENS2_27RequiredOptimizationReducerENS2_21ValueNumberingReducerES4_EEEEEEEE21ReduceCatchBlockBeginEv:bb.a
  %i.ai = shl nuw i64 %i.ah, 3                    ; 2 uses
  %i.aj = getelementptr i8, ptr %.pre.i, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.aj, i64 8
  %3 = xor i64 %i.ai, -8
  %scevgep27 = getelementptr i8, ptr %.pre8.i, i64 %3
  %bound0 = icmp ult ptr %.pre.i, %.pre8.i
  %bound1 = icmp ult ptr %scevgep27, %scevgep
end_hunk_3
begin_hunk_4_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25ThrowReferenceErrorIfHoleERKNS4_15ProcessingStateE:bb.a
  %i.aj = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aj
  %i.al = ptrtoint ptr %i.ak to i64
  %8 = xor i64 %i.ag, -88
  %i.am = add i64 %8, %i.al
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor13ThrowingScopeC2EPS3_PNS0_6maglev8NodeBaseE:bb.a
  %i.l = sext i32 %narrow.i.i.i.i.i to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  %4 = xor i64 %i.h, -88
  %i.o = add i64 %4, %i.n
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i32, ptr %i.q, align 8
end_hunk_5
begin_hunk_6_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25ThrowSuperNotCalledIfHoleERKNS4_15ProcessingStateE:bb.a
  %i.bi = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bi
  %i.bk = ptrtoint ptr %i.bj to i64
  %7 = xor i64 %i.bf, -88
  %i.bl = add i64 %7, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
end_hunk_6
begin_hunk_7_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev32ThrowSuperAlreadyCalledIfNotHoleERKNS4_15ProcessingStateE:bb.a
  %i.bi = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bi
  %i.bk = ptrtoint ptr %i.bj to i64
  %7 = xor i64 %i.bf, -88
  %i.bl = add i64 %7, %i.bk
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i32, ptr %i.bn, align 8
end_hunk_7
begin_hunk_8_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev18ThrowIfNotCallableERKNS4_15ProcessingStateE:bb.a
  %i.ax = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ax
  %i.az = ptrtoint ptr %i.ay to i64
  %7 = xor i64 %i.au, -88
  %i.ba = add i64 %7, %i.az
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %i.bc, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev26ThrowIfNotSuperConstructorERKNS4_15ProcessingStateE:bb.a
  %i.ba = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ba
  %i.bc = ptrtoint ptr %i.bb to i64
  %9 = xor i64 %i.ax, -88
  %i.bd = add i64 %9, %i.bc
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i32, ptr %i.bf, align 8
end_hunk_9
begin_hunk_10_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor19GenerateBuiltinCallEPNS0_6maglev8NodeBaseENS0_7BuiltinENS2_9OptionalVINS2_10FrameStateEEENS_4base6VectorIKNS2_7OpIndexEEESt8optionalIiE:bb.a
  %i.ao = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = ptrtoint ptr %i.ap to i64
  %10 = xor i64 %i.ak, -88
  %i.ar = add i64 %10, %i.aq
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8
end_hunk_10
begin_hunk_11_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev18CallForwardVarargsERKNS4_15ProcessingStateE:bb.a
  %i.cc = and i64 %i.cb, 8
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.pre-phi82
  %i.ce = ptrtoint ptr %i.cd to i64
  %7 = xor i64 %i.cc, -88
  %i.cf = add i64 %7, %i.ce
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 8
end_hunk_11
begin_hunk_12_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev11CallRuntimeERKNS4_15ProcessingStateE:bb.a
  %i.n = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  %i.p = ptrtoint ptr %i.o to i64
  %6 = xor i64 %i.j, -88
  %i.q = add i64 %6, %i.p
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8
end_hunk_12
begin_hunk_13_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17CallWithArrayLikeERKNS4_15ProcessingStateE:bb.a
  %i.cf = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.cf
  %i.ch = ptrtoint ptr %i.cg to i64
  %7 = xor i64 %i.cc, -88
  %i.ci = add i64 %7, %i.ch
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 8
end_hunk_13
begin_hunk_14_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev14CallWithSpreadERKNS4_15ProcessingStateE:bb.a
  %i.cv = and i64 %i.cu, 8
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.o, i64 %.pre-phi102
  %i.cx = ptrtoint ptr %i.cw to i64
  %7 = xor i64 %i.cv, -88
  %i.cy = add i64 %7, %i.cx
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 8
end_hunk_14
begin_hunk_15_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19CallKnownJSFunctionERKNS4_15ProcessingStateE:bb.a
  %i.jb = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jb
  %i.jd = ptrtoint ptr %i.jc to i64
  %10 = xor i64 %i.iy, -88
  %i.je = add i64 %10, %i.jd
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = load i32, ptr %i.jg, align 8
end_hunk_15
begin_hunk_16_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev27CheckDerivedConstructResultERKNS4_15ProcessingStateE:bb.a
  %i.am = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.am
  %i.ao = ptrtoint ptr %i.an to i64
  %5 = xor i64 %i.aj, -88
  %i.ap = add i64 %5, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load i32, ptr %i.ar, align 8
end_hunk_16
begin_hunk_17_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev21CreateFunctionContextERKNS4_15ProcessingStateE:bb.a
  %i.bh = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bh
  %i.bj = ptrtoint ptr %i.bi to i64
  %8 = xor i64 %i.be, -88
  %i.bk = add i64 %8, %i.bj
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.bm, align 8
end_hunk_17
begin_hunk_18_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev21CreateFunctionContextERKNS4_15ProcessingStateE:bb.a
  %i.cf = sext i32 %narrow.i.i.i.i.i.i31 to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.cf
  %i.ch = ptrtoint ptr %i.cg to i64
  %9 = xor i64 %i.cc, -88
  %i.ci = add i64 %9, %i.ch
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 8
end_hunk_18
begin_hunk_19_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19HasInPrototypeChainERKNS4_15ProcessingStateE:bb.a
  %i.an = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.an
  %i.ap = ptrtoint ptr %i.ao to i64
  %5 = xor i64 %i.ak, -88
  %i.aq = add i64 %5, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8
end_hunk_19
begin_hunk_20_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor18StringConcatHelperINS0_6maglev12StringConcatEEENS5_13ProcessResultEPT_NS2_1VINS0_6StringEEESC_:bb.a
  %i.eg = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.eg
  %i.ei = ptrtoint ptr %i.eh to i64
  %13 = xor i64 %i.ed, -88
  %i.ej = add i64 %13, %i.ei
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load i32, ptr %i.el, align 8
end_hunk_20
begin_hunk_21_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17ToNumberOrNumericERKNS4_15ProcessingStateE:bb.a
  %i.an = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.an
  %i.ap = ptrtoint ptr %i.ao to i64
  %5 = xor i64 %i.ak, -88
  %i.aq = add i64 %5, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8
end_hunk_21
begin_hunk_22_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev8ToStringERKNS4_15ProcessingStateE:bb.a
  %i.cm = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cm
  %i.co = ptrtoint ptr %i.cn to i64
  %14 = xor i64 %i.cj, -88
  %i.cp = add i64 %14, %i.co
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load i32, ptr %i.cr, align 8
end_hunk_22
begin_hunk_23_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev8ToStringERKNS4_15ProcessingStateE:bb.a
  %i.eq = sext i32 %narrow.i.i.i.i.i.i97 to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.eq
  %i.es = ptrtoint ptr %i.er to i64
  %15 = xor i64 %i.en, -88
  %i.et = add i64 %15, %i.es
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i32, ptr %i.ev, align 8
end_hunk_23
begin_hunk_24_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev10GenericAddERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_24
begin_hunk_25_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15GenericSubtractERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_25
begin_hunk_26_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15GenericMultiplyERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_26
begin_hunk_27_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev13GenericDivideERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_27
begin_hunk_28_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev14GenericModulusERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_28
begin_hunk_29_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev19GenericExponentiateERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_29
begin_hunk_30_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17GenericBitwiseAndERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_30
begin_hunk_31_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16GenericBitwiseOrERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_31
begin_hunk_32_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17GenericBitwiseXorERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_32
begin_hunk_33_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16GenericShiftLeftERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_33
begin_hunk_34_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17GenericShiftRightERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_34
begin_hunk_35_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev24GenericShiftRightLogicalERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_35
begin_hunk_36_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev17GenericBitwiseNotERKNS4_15ProcessingStateE:bb.a
  %i.al = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %5 = xor i64 %i.ai, -88
  %i.ao = add i64 %5, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
end_hunk_36
begin_hunk_37_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev13GenericNegateERKNS4_15ProcessingStateE:bb.a
  %i.al = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %5 = xor i64 %i.ai, -88
  %i.ao = add i64 %5, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
end_hunk_37
begin_hunk_38_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16GenericIncrementERKNS4_15ProcessingStateE:bb.a
  %i.al = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %5 = xor i64 %i.ai, -88
  %i.ao = add i64 %5, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
end_hunk_38
begin_hunk_39_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev16GenericDecrementERKNS4_15ProcessingStateE:bb.a
  %i.al = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.al
  %i.an = ptrtoint ptr %i.am to i64
  %5 = xor i64 %i.ai, -88
  %i.ao = add i64 %5, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8
end_hunk_39
begin_hunk_40_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev12GenericEqualERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_40
begin_hunk_41_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev18GenericStrictEqualERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_41
begin_hunk_42_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev15GenericLessThanERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_42
begin_hunk_43_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev22GenericLessThanOrEqualERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_43
begin_hunk_44_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev18GenericGreaterThanERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_44
begin_hunk_45_@_ZN2v88internal8compiler10turboshaft26GraphBuildingNodeProcessor7ProcessEPNS0_6maglev25GenericGreaterThanOrEqualERKNS4_15ProcessingStateE:bb.a
  %i.az = sext i32 %narrow.i.i.i.i.i.i to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = ptrtoint ptr %i.ba to i64
  %5 = xor i64 %i.aw, -88
  %i.bc = add i64 %5, %i.bb
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i32, ptr %i.be, align 8
end_hunk_45
