Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/graph-builder?download=true
inline.NumInlined: 30038
inline.NumDeleted: 7795
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder7ProcessEPNS1_4NodeEPNS1_10BasicBlockERKNS_4base11SmallVectorIiLm16ESaIiEEERNS2_7OpIndexEPSt8optionalINS0_13BailoutReasonEEb:bb.a
  %i.kzv = lshr i8 %.sroa.0.0.copyload.i.i, 5
  %.lobit14844 = and i8 %i.kzv, 1
  %i.kzw = xor i8 %.lobit14844, 1
  %i.kzx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kzy = load ptr, ptr %i.kzx, align 8
  %i.kzz = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef nonnull %i.kza, i8 noundef zeroext %i.kzw, i8 noundef zeroext 0, ptr noundef %i.kzy, ptr noundef %.02820)
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #23
  %i.laa = getelementptr inbounds nuw i8, ptr %144, i64 24 ; 2 uses
  store ptr %i.laa, ptr %144, align 8
  %i.lab = getelementptr inbounds nuw i8, ptr %144, i64 8 ; 5 uses
  store ptr %i.laa, ptr %i.lab, align 8
  %i.lac = getelementptr inbounds nuw i8, ptr %144, i64 16 ; 2 uses
  %i.lad = getelementptr inbounds nuw i8, ptr %144, i64 88
  store ptr %i.lad, ptr %i.lac, align 8
  %i.lae = load i32, ptr %i.e, align 4
  %i.laf = and i32 %i.lae, 251658240
  %.not.i.i8176 = icmp eq i32 %i.laf, 251658240
  %i.lag = ptrtoint ptr %1 to i64
  %i.lah = add i64 %i.lag, 32
  %i.lai = inttoptr i64 %i.lah to ptr             ; 6 uses
  br i1 %.not.i.i8176, label %bb.aoy, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8178

bb.aoy:                                           ; preds = %bb.aox
  %i.laj = load ptr, ptr %i.lai, align 8
  %i.lak = ptrtoint ptr %i.laj to i64
  %i.lal = add i64 %i.lak, 16
  %i.lam = inttoptr i64 %i.lal to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8178

_ZNK2v88internal8compiler4Node7InputAtEi.exit8178: ; preds = %bb.aox, %bb.aoy
  %.sink.i.i8177 = phi ptr [ %i.lam, %bb.aoy ], [ %i.lai, %bb.aox ]
  %i.lan = load ptr, ptr %.sink.i.i8177, align 8
  %i.lao = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %.val4404 = load ptr, ptr %i.lao, align 8       ; 2 uses
  %i.lap = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  %.val4405 = load ptr, ptr %i.lap, align 8
  %i.laq = getelementptr i8, ptr %i.lan, i64 20
  %.val4406 = load i32, ptr %i.laq, align 4
  %i.lar = and i32 %.val4406, 16777215
  %i.las = zext nneg i32 %i.lar to i64            ; 2 uses
  %i.lat = ptrtoint ptr %.val4405 to i64
  %i.lau = ptrtoint ptr %.val4404 to i64
  %i.lav = sub i64 %i.lat, %i.lau
  %i.law = ashr exact i64 %i.lav, 2
  %i.lax = icmp ugt i64 %i.law, %i.las
  br i1 %i.lax, label %bb.aoz, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8181

bb.aoz:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8178
  %i.lay = getelementptr inbounds nuw [4 x i8], ptr %.val4404, i64 %i.las
  %.sroa.0.0.copyload.i.i.i8180 = load i32, ptr %i.lay, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8181

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8181: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8178, %bb.aoz
  %.sroa.0.0.i.i.i8179 = phi i32 [ %.sroa.0.0.copyload.i.i.i8180, %bb.aoz ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8178 ]
  %i.laz = getelementptr inbounds nuw i8, ptr %i.kza, i64 32 ; 2 uses
  %i.lba = load ptr, ptr %i.laz, align 8
  %i.lbb = getelementptr inbounds nuw i8, ptr %i.lba, i64 8
  %i.lbc = load i64, ptr %i.lbb, align 8
  %i.lbd = trunc i64 %i.lbc to i32
  %i.lbe = add i32 %i.lbd, 1                      ; 2 uses
  %i.lbf = icmp sgt i32 %i.lbe, 1
  br i1 %i.lbf, label %.lr.ph14869, label %._crit_edge14870

._crit_edge14870:                                 ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8181
  %.lcssa = phi i32 [ %i.lbe, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8181 ], [ %i.lci, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ]
  %i.lbg = getelementptr inbounds nuw i8, ptr %i.kza, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i8182 = load i32, ptr %i.lbg, align 8
  %i.lbh = trunc i32 %.sroa.0.0.copyload.i.i8182 to i1
  br i1 %i.lbh, label %bb.apd, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8195

.lr.ph14869:                                      ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8181, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %indvars.iv14890 = phi i64 [ %indvars.iv.next14891, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ], [ 1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8181 ] ; 2 uses
  %i.lbi = load i32, ptr %i.e, align 4
  %i.lbj = and i32 %i.lbi, 251658240
  %.not.i.i8183 = icmp eq i32 %i.lbj, 251658240
  br i1 %.not.i.i8183, label %bb.apa, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8185

bb.apa:                                           ; preds = %.lr.ph14869
  %i.lbk = load ptr, ptr %i.lai, align 8
  %i.lbl = ptrtoint ptr %i.lbk to i64
  %i.lbm = add i64 %i.lbl, 16
  %i.lbn = inttoptr i64 %i.lbm to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8185

_ZNK2v88internal8compiler4Node7InputAtEi.exit8185: ; preds = %.lr.ph14869, %bb.apa
  %.sink.i.i8184 = phi ptr [ %i.lbn, %bb.apa ], [ %i.lai, %.lr.ph14869 ]
  %i.lbo = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i8184, i64 %indvars.iv14890
  %i.lbp = load ptr, ptr %i.lbo, align 8
  %.val4401 = load ptr, ptr %i.lao, align 8       ; 2 uses
  %.val4402 = load ptr, ptr %i.lap, align 8
  %i.lbq = getelementptr i8, ptr %i.lbp, i64 20
  %.val4403 = load i32, ptr %i.lbq, align 4
  %i.lbr = and i32 %.val4403, 16777215
  %i.lbs = zext nneg i32 %i.lbr to i64            ; 2 uses
  %i.lbt = ptrtoint ptr %.val4402 to i64
  %i.lbu = ptrtoint ptr %.val4401 to i64
  %i.lbv = sub i64 %i.lbt, %i.lbu
  %i.lbw = ashr exact i64 %i.lbv, 2
  %i.lbx = icmp ugt i64 %i.lbw, %i.lbs
  br i1 %i.lbx, label %bb.apb, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8188

bb.apb:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8185
  %i.lby = getelementptr inbounds nuw [4 x i8], ptr %.val4401, i64 %i.lbs
  %.sroa.0.0.copyload.i.i.i8187 = load i32, ptr %i.lby, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8188

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8188: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8185, %bb.apb
  %.sroa.0.0.i.i.i8186 = phi i32 [ %.sroa.0.0.copyload.i.i.i8187, %bb.apb ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8185 ]
  %i.lbz = load ptr, ptr %i.lab, align 8          ; 2 uses
  %i.lca = load ptr, ptr %i.lac, align 8
  %i.lcb = icmp eq ptr %i.lbz, %i.lca
  br i1 %i.lcb, label %bb.apc, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, !prof !77

bb.apc:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8188
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %144)
  %.pre.i8189 = load ptr, ptr %i.lab, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8188, %bb.apc
  %i.lcc = phi ptr [ %.pre.i8189, %bb.apc ], [ %i.lbz, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8188 ] ; 2 uses
  %i.lcd = getelementptr inbounds nuw i8, ptr %i.lcc, i64 4
  store ptr %i.lcd, ptr %i.lab, align 8
  store i32 %.sroa.0.0.i.i.i8186, ptr %i.lcc, align 4
  %indvars.iv.next14891 = add nuw nsw i64 %indvars.iv14890, 1 ; 2 uses
  %i.lce = load ptr, ptr %i.laz, align 8
  %i.lcf = getelementptr inbounds nuw i8, ptr %i.lce, i64 8
  %i.lcg = load i64, ptr %i.lcf, align 8
  %i.lch = trunc i64 %i.lcg to i32
  %i.lci = add i32 %i.lch, 1                      ; 2 uses
  %i.lcj = sext i32 %i.lci to i64
  %i.lck = icmp slt i64 %indvars.iv.next14891, %i.lcj
  br i1 %i.lck, label %.lr.ph14869, label %._crit_edge14870, !llvm.loop !130

bb.apd:                                           ; preds = %._crit_edge14870
  %i.lcl = load i32, ptr %i.e, align 4
  %i.lcm = and i32 %i.lcl, 251658240
  %.not.i.i8190 = icmp eq i32 %i.lcm, 251658240
  br i1 %.not.i.i8190, label %bb.ape, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8192

bb.ape:                                           ; preds = %bb.apd
  %i.lcn = load ptr, ptr %i.lai, align 8
  %i.lco = ptrtoint ptr %i.lcn to i64
  %i.lcp = add i64 %i.lco, 16
  %i.lcq = inttoptr i64 %i.lcp to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8192

_ZNK2v88internal8compiler4Node7InputAtEi.exit8192: ; preds = %bb.apd, %bb.ape
  %.sink.i.i8191 = phi ptr [ %i.lcq, %bb.ape ], [ %i.lai, %bb.apd ]
  %i.lcr = sext i32 %.lcssa to i64
  %i.lcs = getelementptr inbounds [8 x i8], ptr %.sink.i.i8191, i64 %i.lcr
  %i.lct = load ptr, ptr %i.lcs, align 8
  %.val4398 = load ptr, ptr %i.lao, align 8       ; 2 uses
  %.val4399 = load ptr, ptr %i.lap, align 8
  %i.lcu = getelementptr i8, ptr %i.lct, i64 20
  %.val4400 = load i32, ptr %i.lcu, align 4
  %i.lcv = and i32 %.val4400, 16777215
  %i.lcw = zext nneg i32 %i.lcv to i64            ; 2 uses
  %i.lcx = ptrtoint ptr %.val4399 to i64
  %i.lcy = ptrtoint ptr %.val4398 to i64
  %i.lcz = sub i64 %i.lcx, %i.lcy
  %i.lda = ashr exact i64 %i.lcz, 2
  %i.ldb = icmp ugt i64 %i.lda, %i.lcw
  br i1 %i.ldb, label %bb.apf, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8195

bb.apf:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8192
  %i.ldc = getelementptr inbounds nuw [4 x i8], ptr %.val4398, i64 %i.lcw
  %.sroa.0.0.copyload.i.i.i8194 = load i32, ptr %i.ldc, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8195

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8195: ; preds = %bb.apf, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8192, %._crit_edge14870
  %.sroa.01475.0 = phi i32 [ -1, %._crit_edge14870 ], [ %.sroa.0.0.copyload.i.i.i8194, %bb.apf ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8192 ]
  br i1 %6, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEEE7emplaceIJRNS3_11TSAssemblerIJS9_SA_EEERPNS3_5BlockEEEENSt9enable_ifIX18is_constructible_vISE_DpT_EERSE_E4typeEDpOSO_.exit, label %bb.apg

_ZNSt8optionalIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEEE7emplaceIJRNS3_11TSAssemblerIJS9_SA_EEERPNS3_5BlockEEEENSt9enable_ifIX18is_constructible_vISE_DpT_EERSE_E4typeEDpOSO_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8195
  %i.ldd = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.lde = load ptr, ptr %i.ldd, align 8
  %i.ldf = getelementptr inbounds nuw i8, ptr %i.lde, i64 8
  %i.ldg = load ptr, ptr %i.ldf, align 8
  %i.ldh = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.val2871 = load ptr, ptr %i.ldh, align 8
  %i.ldi = getelementptr i8, ptr %i.ldg, i64 4
  %.val2872 = load i32, ptr %i.ldi, align 4
  %i.ldj = sext i32 %.val2872 to i64
  %i.ldk = getelementptr inbounds nuw [16 x i8], ptr %.val2871, i64 %i.ldj
  %i.ldl = load ptr, ptr %i.ldk, align 8
  %i.ldm = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ldn = load ptr, ptr %i.ldm, align 8
  store ptr %i.ldl, ptr %i.ldm, align 8
  br label %bb.apg

bb.apg:                                           ; preds = %_ZNSt8optionalIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEEE7emplaceIJRNS3_11TSAssemblerIJS9_SA_EEERPNS3_5BlockEEEENSt9enable_ifIX18is_constructible_vISE_DpT_EERSE_E4typeEDpOSO_.exit, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8195
  %.sroa.513017.0 = phi ptr [ %i.ldn, %_ZNSt8optionalIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEEE7emplaceIJRNS3_11TSAssemblerIJS9_SA_EEERPNS3_5BlockEEEENSt9enable_ifIX18is_constructible_vISE_DpT_EERSE_E4typeEDpOSO_.exit ], [ undef, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8195 ]
  %i.ldo = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ldp = load ptr, ptr %i.b, align 8
  %i.ldq = icmp eq ptr %i.ldp, null
  br i1 %i.ldq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.aph, !prof !77

bb.aph:                                           ; preds = %bb.apg
  %.sroa.0.0.copyload.i.i8212 = load i8, ptr %i.kzu, align 2
  %i.ldr = and i8 %.sroa.0.0.copyload.i.i8212, 16
  %.not14845 = icmp eq i8 %i.ldr, 0               ; 2 uses
  %.sroa.0.0.copyload.i8204 = load i32, ptr %i.lbg, align 8
  %i.lds = and i32 %.sroa.0.0.copyload.i8204, 16  ; 2 uses
  %i.ldt = icmp eq i32 %i.lds, 0                  ; 2 uses
  %.sroa.012975.0 = xor i32 %i.lds, 83            ; 2 uses
  %209 = or disjoint i32 %.sroa.012975.0, 12
  %.sroa.012975.1 = select i1 %.not14845, i32 %209, i32 %.sroa.012975.0
  %.sroa.10.0 = select i1 %i.ldt, i32 27648, i32 19456 ; 2 uses
  %.sroa.13.0.insert.ext = select i1 %i.ldt, i32 458752, i32 262144
  %i.ldu = or i32 %.sroa.10.0, 20224
  %.sroa.10.0.insert.shift = select i1 %.not14845, i32 %i.ldu, i32 %.sroa.10.0
  %.sroa.10.0.insert.insert = or disjoint i32 %.sroa.10.0.insert.shift, %.sroa.13.0.insert.ext
  %.sroa.012975.0.insert.insert = or disjoint i32 %.sroa.10.0.insert.insert, %.sroa.012975.1
  %i.ldv = load ptr, ptr %i.lab, align 8
  %i.ldw = ptrtoint ptr %i.ldv to i64
  %i.ldx = load ptr, ptr %144, align 8            ; 2 uses
  %i.ldy = ptrtoint ptr %i.ldx to i64
  %i.ldz = sub i64 %i.ldw, %i.ldy
  %i.lea = ashr exact i64 %i.ldz, 2
  %i.leb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lec = call i32 @_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_(ptr noundef nonnull align 8 dereferenceable(816) %i.leb, i32 %.sroa.0.0.i.i.i8179, i32 %.sroa.01475.0, ptr %i.ldx, i64 %i.lea, ptr noundef %i.kzz, i32 %.sroa.012975.0.insert.insert)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %bb.apg, %bb.aph
  %.sroa.010.0.i.i = phi i32 [ %i.lec, %bb.aph ], [ -1, %bb.apg ]
  br i1 %6, label %bb.api, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEELb0ELb0EED2Ev.exit

bb.api:                                           ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %i.led = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.lee = load ptr, ptr %i.led, align 8
  %i.lef = load ptr, ptr %i.lee, align 8
  %i.leg = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.val2869 = load ptr, ptr %i.leg, align 8
  %i.leh = getelementptr i8, ptr %i.lef, i64 4
  %.val2870 = load i32, ptr %i.leh, align 4
  %i.lei = sext i32 %.val2870 to i64
  %i.lej = getelementptr inbounds nuw [16 x i8], ptr %.val2869, i64 %i.lei
  %i.lek = load ptr, ptr %i.lej, align 8
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(136) %i.ldo, ptr noundef %i.lek)
  %i.lel = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %.sroa.513017.0, ptr %i.lel, align 8
  br label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEELb0ELb0EED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, %bb.api
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %144)
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #23
  br label %.critedge

bb.apj:                                           ; preds = %bb.b
  %i.lem = tail call noundef ptr @_ZN2v88internal8compiler16CallDescriptorOfEPKNS1_8OperatorE(ptr noundef nonnull %i.k) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #23
  %i.len = getelementptr inbounds nuw i8, ptr %145, i64 24 ; 2 uses
  store ptr %i.len, ptr %145, align 8
  %i.leo = getelementptr inbounds nuw i8, ptr %145, i64 8 ; 5 uses
  store ptr %i.len, ptr %i.leo, align 8
  %i.lep = getelementptr inbounds nuw i8, ptr %145, i64 16 ; 2 uses
  %i.leq = getelementptr inbounds nuw i8, ptr %145, i64 88
  store ptr %i.leq, ptr %i.lep, align 8
  %i.ler = load i32, ptr %i.e, align 4
  %i.les = and i32 %i.ler, 251658240
  %.not.i.i8222 = icmp eq i32 %i.les, 251658240
  %i.let = ptrtoint ptr %1 to i64
  %i.leu = add i64 %i.let, 32
  %i.lev = inttoptr i64 %i.leu to ptr             ; 4 uses
  br i1 %.not.i.i8222, label %bb.apk, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8224

bb.apk:                                           ; preds = %bb.apj
  %i.lew = load ptr, ptr %i.lev, align 8
  %i.lex = ptrtoint ptr %i.lew to i64
  %i.ley = add i64 %i.lex, 16
  %i.lez = inttoptr i64 %i.ley to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8224

_ZNK2v88internal8compiler4Node7InputAtEi.exit8224: ; preds = %bb.apj, %bb.apk
  %.sink.i.i8223 = phi ptr [ %i.lez, %bb.apk ], [ %i.lev, %bb.apj ]
  %i.lfa = load ptr, ptr %.sink.i.i8223, align 8
  %i.lfb = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %.val4395 = load ptr, ptr %i.lfb, align 8       ; 2 uses
  %i.lfc = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %.val4396 = load ptr, ptr %i.lfc, align 8
  %i.lfd = getelementptr i8, ptr %i.lfa, i64 20
  %.val4397 = load i32, ptr %i.lfd, align 4
  %i.lfe = and i32 %.val4397, 16777215
  %i.lff = zext nneg i32 %i.lfe to i64            ; 2 uses
  %i.lfg = ptrtoint ptr %.val4396 to i64
  %i.lfh = ptrtoint ptr %.val4395 to i64
  %i.lfi = sub i64 %i.lfg, %i.lfh
  %i.lfj = ashr exact i64 %i.lfi, 2
  %i.lfk = icmp ugt i64 %i.lfj, %i.lff
  br i1 %i.lfk, label %bb.apl, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8227

bb.apl:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8224
  %i.lfl = getelementptr inbounds nuw [4 x i8], ptr %.val4395, i64 %i.lff
  %.sroa.0.0.copyload.i.i.i8226 = load i32, ptr %i.lfl, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8227

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8227: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8224, %bb.apl
  %.sroa.0.0.i.i.i8225 = phi i32 [ %.sroa.0.0.copyload.i.i.i8226, %bb.apl ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8224 ]
  %i.lfm = getelementptr inbounds nuw i8, ptr %i.lem, i64 32 ; 2 uses
  %i.lfn = load ptr, ptr %i.lfm, align 8
  %i.lfo = getelementptr inbounds nuw i8, ptr %i.lfn, i64 8
  %i.lfp = load i64, ptr %i.lfo, align 8
  %i.lfq = trunc i64 %i.lfp to i32
  %i.lfr = add i32 %i.lfq, 1
  %i.lfs = icmp sgt i32 %i.lfr, 1
  br i1 %i.lfs, label %.lr.ph14866, label %._crit_edge14867

._crit_edge14867:                                 ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8240, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8227
  %i.lft = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %.sroa.0.0.copyload.i.i8228 = load i8, ptr %i.lft, align 2
  %i.lfu = lshr i8 %.sroa.0.0.copyload.i.i8228, 5
  %.lobit = and i8 %i.lfu, 1
  %i.lfv = xor i8 %.lobit, 1
  %i.lfw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lfx = load ptr, ptr %i.lfw, align 8
  %i.lfy = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef nonnull %i.lem, i8 noundef zeroext %i.lfv, i8 noundef zeroext 0, ptr noundef %i.lfx, ptr noundef null)
  %i.lfz = load ptr, ptr %i.b, align 8
  %i.lga = icmp eq ptr %i.lfz, null
  br i1 %i.lga, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8TailCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSG_ILm32EEEEEEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorE.exit, label %bb.apm, !prof !77

bb.apm:                                           ; preds = %._crit_edge14867
  %i.lgb = load ptr, ptr %i.leo, align 8
  %i.lgc = ptrtoint ptr %i.lgb to i64
  %i.lgd = load ptr, ptr %145, align 8            ; 2 uses
  %i.lge = ptrtoint ptr %i.lgd to i64
  %i.lgf = sub i64 %i.lgc, %i.lge
  %i.lgg = ashr exact i64 %i.lgf, 2
  %i.lgh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lgi = call i32 @_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE2ENS2_21UniformReducerAdapterIS3_SH_E26ReduceTailCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESY_DpT1_(ptr noundef nonnull align 8 dereferenceable(816) %i.lgh, i32 %.sroa.0.0.i.i.i8225, ptr %i.lgd, i64 %i.lgg, ptr noundef %i.lfy) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8TailCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSG_ILm32EEEEEEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8TailCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSG_ILm32EEEEEEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorE.exit: ; preds = %._crit_edge14867, %bb.apm
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %145)
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #23
  br label %.critedge

.lr.ph14866:                                      ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8227, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8240
  %indvars.iv14887 = phi i64 [ %indvars.iv.next14888, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8240 ], [ 1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8227 ] ; 2 uses
  %i.lgj = load i32, ptr %i.e, align 4
  %i.lgk = and i32 %i.lgj, 251658240
  %.not.i.i8233 = icmp eq i32 %i.lgk, 251658240
  br i1 %.not.i.i8233, label %bb.apn, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8235

bb.apn:                                           ; preds = %.lr.ph14866
  %i.lgl = load ptr, ptr %i.lev, align 8
  %i.lgm = ptrtoint ptr %i.lgl to i64
  %i.lgn = add i64 %i.lgm, 16
  %i.lgo = inttoptr i64 %i.lgn to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8235

_ZNK2v88internal8compiler4Node7InputAtEi.exit8235: ; preds = %.lr.ph14866, %bb.apn
  %.sink.i.i8234 = phi ptr [ %i.lgo, %bb.apn ], [ %i.lev, %.lr.ph14866 ]
  %i.lgp = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i8234, i64 %indvars.iv14887
  %i.lgq = load ptr, ptr %i.lgp, align 8
  %.val4392 = load ptr, ptr %i.lfb, align 8       ; 2 uses
  %.val4393 = load ptr, ptr %i.lfc, align 8
  %i.lgr = getelementptr i8, ptr %i.lgq, i64 20
  %.val4394 = load i32, ptr %i.lgr, align 4
  %i.lgs = and i32 %.val4394, 16777215
  %i.lgt = zext nneg i32 %i.lgs to i64            ; 2 uses
  %i.lgu = ptrtoint ptr %.val4393 to i64
  %i.lgv = ptrtoint ptr %.val4392 to i64
  %i.lgw = sub i64 %i.lgu, %i.lgv
  %i.lgx = ashr exact i64 %i.lgw, 2
  %i.lgy = icmp ugt i64 %i.lgx, %i.lgt
  br i1 %i.lgy, label %bb.apo, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8238

bb.apo:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8235
  %i.lgz = getelementptr inbounds nuw [4 x i8], ptr %.val4392, i64 %i.lgt
  %.sroa.0.0.copyload.i.i.i8237 = load i32, ptr %i.lgz, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8238

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8238: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8235, %bb.apo
  %.sroa.0.0.i.i.i8236 = phi i32 [ %.sroa.0.0.copyload.i.i.i8237, %bb.apo ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8235 ]
  %i.lha = load ptr, ptr %i.leo, align 8          ; 2 uses
  %i.lhb = load ptr, ptr %i.lep, align 8
  %i.lhc = icmp eq ptr %i.lha, %i.lhb
  br i1 %i.lhc, label %bb.app, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8240, !prof !77

bb.app:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8238
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %145)
  %.pre.i8239 = load ptr, ptr %i.leo, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8240

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8240: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8238, %bb.app
  %i.lhd = phi ptr [ %.pre.i8239, %bb.app ], [ %i.lha, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8238 ] ; 2 uses
  %i.lhe = getelementptr inbounds nuw i8, ptr %i.lhd, i64 4
  store ptr %i.lhe, ptr %i.leo, align 8
  store i32 %.sroa.0.0.i.i.i8236, ptr %i.lhd, align 4
  %indvars.iv.next14888 = add nuw nsw i64 %indvars.iv14887, 1 ; 2 uses
  %i.lhf = load ptr, ptr %i.lfm, align 8
  %i.lhg = getelementptr inbounds nuw i8, ptr %i.lhf, i64 8
  %i.lhh = load i64, ptr %i.lhg, align 8
  %i.lhi = shl i64 %i.lhh, 32
  %sext = add i64 %i.lhi, 4294967296
  %i.lhj = ashr exact i64 %sext, 32
  %i.lhk = icmp slt i64 %indvars.iv.next14888, %i.lhj
  br i1 %i.lhk, label %.lr.ph14866, label %._crit_edge14867, !llvm.loop !131

bb.apq:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #23
  %i.lhl = getelementptr inbounds nuw i8, ptr %146, i64 24 ; 2 uses
  store ptr %i.lhl, ptr %146, align 8
  %i.lhm = getelementptr inbounds nuw i8, ptr %146, i64 8
  store ptr %i.lhl, ptr %i.lhm, align 8
  %i.lhn = getelementptr inbounds nuw i8, ptr %146, i64 16
  %i.lho = getelementptr inbounds nuw i8, ptr %146, i64 56 ; 2 uses
  store ptr %i.lho, ptr %i.lhn, align 8
  %i.lhp = getelementptr inbounds nuw i8, ptr %146, i64 80 ; 2 uses
  store ptr %i.lhp, ptr %i.lho, align 8
  %i.lhq = getelementptr inbounds nuw i8, ptr %146, i64 64
  store ptr %i.lhp, ptr %i.lhq, align 8
  %i.lhr = getelementptr inbounds nuw i8, ptr %146, i64 72
end_hunk_0
