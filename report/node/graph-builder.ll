Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/graph-builder?download=true
inline.NumInlined: 29995
inline.NumDeleted: 7796
loop-unroll.NumCompletelyUnrolled: 84
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder7ProcessEPNS1_4NodeEPNS1_10BasicBlockERKNS_4base11SmallVectorIiLm16ESaIiEEERNS2_7OpIndexEPSt8optionalINS0_13BailoutReasonEEb:bb.a
  %i.lab = lshr i8 %.sroa.0.0.copyload.i.i, 5
  %.lobit14851 = and i8 %i.lab, 1
  %i.lac = xor i8 %.lobit14851, 1
  %i.lad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lae = load ptr, ptr %i.lad, align 8
  %i.laf = tail call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef nonnull %i.kzg, i8 noundef zeroext %i.lac, i8 noundef zeroext 0, ptr noundef %i.lae, ptr noundef %.02820)
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #23
  %i.lag = getelementptr inbounds nuw i8, ptr %144, i64 24 ; 2 uses
  store ptr %i.lag, ptr %144, align 8
  %i.lah = getelementptr inbounds nuw i8, ptr %144, i64 8 ; 5 uses
  store ptr %i.lag, ptr %i.lah, align 8
  %i.lai = getelementptr inbounds nuw i8, ptr %144, i64 16 ; 2 uses
  %i.laj = getelementptr inbounds nuw i8, ptr %144, i64 88
  store ptr %i.laj, ptr %i.lai, align 8
  %i.lak = load i32, ptr %i.e, align 4
  %i.lal = and i32 %i.lak, 251658240
  %.not.i.i8178 = icmp eq i32 %i.lal, 251658240
  %i.lam = ptrtoint ptr %1 to i64
  %i.lan = add i64 %i.lam, 32
  %i.lao = inttoptr i64 %i.lan to ptr             ; 6 uses
  br i1 %.not.i.i8178, label %bb.aoz, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8180

bb.aoz:                                           ; preds = %bb.aoy
  %i.lap = load ptr, ptr %i.lao, align 8
  %i.laq = ptrtoint ptr %i.lap to i64
  %i.lar = add i64 %i.laq, 16
  %i.las = inttoptr i64 %i.lar to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8180

_ZNK2v88internal8compiler4Node7InputAtEi.exit8180: ; preds = %bb.aoy, %bb.aoz
  %.sink.i.i8179 = phi ptr [ %i.las, %bb.aoz ], [ %i.lao, %bb.aoy ]
  %i.lat = load ptr, ptr %.sink.i.i8179, align 8
  %i.lau = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %.val4404 = load ptr, ptr %i.lau, align 8       ; 2 uses
  %i.lav = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 3 uses
  %.val4405 = load ptr, ptr %i.lav, align 8
  %i.law = getelementptr i8, ptr %i.lat, i64 20
  %.val4406 = load i32, ptr %i.law, align 4
  %i.lax = and i32 %.val4406, 16777215
  %i.lay = zext nneg i32 %i.lax to i64            ; 2 uses
  %i.laz = ptrtoint ptr %.val4405 to i64
  %i.lba = ptrtoint ptr %.val4404 to i64
  %i.lbb = sub i64 %i.laz, %i.lba
  %i.lbc = ashr exact i64 %i.lbb, 2
  %i.lbd = icmp ugt i64 %i.lbc, %i.lay
  br i1 %i.lbd, label %bb.apa, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8183

bb.apa:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8180
  %i.lbe = getelementptr inbounds nuw [4 x i8], ptr %.val4404, i64 %i.lay
  %.sroa.0.0.copyload.i.i.i8182 = load i32, ptr %i.lbe, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8183

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8183: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8180, %bb.apa
  %.sroa.0.0.i.i.i8181 = phi i32 [ %.sroa.0.0.copyload.i.i.i8182, %bb.apa ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8180 ]
  %i.lbf = getelementptr inbounds nuw i8, ptr %i.kzg, i64 32 ; 2 uses
  %i.lbg = load ptr, ptr %i.lbf, align 8
  %i.lbh = getelementptr inbounds nuw i8, ptr %i.lbg, i64 8
  %i.lbi = load i64, ptr %i.lbh, align 8
  %i.lbj = trunc i64 %i.lbi to i32
  %i.lbk = add i32 %i.lbj, 1                      ; 2 uses
  %i.lbl = icmp sgt i32 %i.lbk, 1
  br i1 %i.lbl, label %.lr.ph14876, label %._crit_edge14877

._crit_edge14877:                                 ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8183
  %.lcssa = phi i32 [ %i.lbk, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8183 ], [ %i.lco, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ]
  %i.lbm = getelementptr inbounds nuw i8, ptr %i.kzg, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i8184 = load i32, ptr %i.lbm, align 8
  %i.lbn = trunc i32 %.sroa.0.0.copyload.i.i8184 to i1
  br i1 %i.lbn, label %bb.ape, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8197

.lr.ph14876:                                      ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8183, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit
  %indvars.iv14897 = phi i64 [ %indvars.iv.next14898, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit ], [ 1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8183 ] ; 2 uses
  %i.lbo = load i32, ptr %i.e, align 4
  %i.lbp = and i32 %i.lbo, 251658240
  %.not.i.i8185 = icmp eq i32 %i.lbp, 251658240
  br i1 %.not.i.i8185, label %bb.apb, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8187

bb.apb:                                           ; preds = %.lr.ph14876
  %i.lbq = load ptr, ptr %i.lao, align 8
  %i.lbr = ptrtoint ptr %i.lbq to i64
  %i.lbs = add i64 %i.lbr, 16
  %i.lbt = inttoptr i64 %i.lbs to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8187

_ZNK2v88internal8compiler4Node7InputAtEi.exit8187: ; preds = %.lr.ph14876, %bb.apb
  %.sink.i.i8186 = phi ptr [ %i.lbt, %bb.apb ], [ %i.lao, %.lr.ph14876 ]
  %i.lbu = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i8186, i64 %indvars.iv14897
  %i.lbv = load ptr, ptr %i.lbu, align 8
  %.val4401 = load ptr, ptr %i.lau, align 8       ; 2 uses
  %.val4402 = load ptr, ptr %i.lav, align 8
  %i.lbw = getelementptr i8, ptr %i.lbv, i64 20
  %.val4403 = load i32, ptr %i.lbw, align 4
  %i.lbx = and i32 %.val4403, 16777215
  %i.lby = zext nneg i32 %i.lbx to i64            ; 2 uses
  %i.lbz = ptrtoint ptr %.val4402 to i64
  %i.lca = ptrtoint ptr %.val4401 to i64
  %i.lcb = sub i64 %i.lbz, %i.lca
  %i.lcc = ashr exact i64 %i.lcb, 2
  %i.lcd = icmp ugt i64 %i.lcc, %i.lby
  br i1 %i.lcd, label %bb.apc, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8190

bb.apc:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8187
  %i.lce = getelementptr inbounds nuw [4 x i8], ptr %.val4401, i64 %i.lby
  %.sroa.0.0.copyload.i.i.i8189 = load i32, ptr %i.lce, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8190

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8190: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8187, %bb.apc
  %.sroa.0.0.i.i.i8188 = phi i32 [ %.sroa.0.0.copyload.i.i.i8189, %bb.apc ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8187 ]
  %i.lcf = load ptr, ptr %i.lah, align 8          ; 2 uses
  %i.lcg = load ptr, ptr %i.lai, align 8
  %i.lch = icmp eq ptr %i.lcf, %i.lcg
  br i1 %i.lch, label %bb.apd, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit, !prof !18

bb.apd:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8190
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %144)
  %.pre.i8191 = load ptr, ptr %i.lah, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8190, %bb.apd
  %i.lci = phi ptr [ %.pre.i8191, %bb.apd ], [ %i.lcf, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8190 ] ; 2 uses
  %i.lcj = getelementptr inbounds nuw i8, ptr %i.lci, i64 4
  store ptr %i.lcj, ptr %i.lah, align 8
  store i32 %.sroa.0.0.i.i.i8188, ptr %i.lci, align 4
  %indvars.iv.next14898 = add nuw nsw i64 %indvars.iv14897, 1 ; 2 uses
  %i.lck = load ptr, ptr %i.lbf, align 8
  %i.lcl = getelementptr inbounds nuw i8, ptr %i.lck, i64 8
  %i.lcm = load i64, ptr %i.lcl, align 8
  %i.lcn = trunc i64 %i.lcm to i32
  %i.lco = add i32 %i.lcn, 1                      ; 2 uses
  %i.lcp = sext i32 %i.lco to i64
  %i.lcq = icmp slt i64 %indvars.iv.next14898, %i.lcp
  br i1 %i.lcq, label %.lr.ph14876, label %._crit_edge14877, !llvm.loop !58

bb.ape:                                           ; preds = %._crit_edge14877
  %i.lcr = load i32, ptr %i.e, align 4
  %i.lcs = and i32 %i.lcr, 251658240
  %.not.i.i8192 = icmp eq i32 %i.lcs, 251658240
  br i1 %.not.i.i8192, label %bb.apf, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8194

bb.apf:                                           ; preds = %bb.ape
  %i.lct = load ptr, ptr %i.lao, align 8
  %i.lcu = ptrtoint ptr %i.lct to i64
  %i.lcv = add i64 %i.lcu, 16
  %i.lcw = inttoptr i64 %i.lcv to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8194

_ZNK2v88internal8compiler4Node7InputAtEi.exit8194: ; preds = %bb.ape, %bb.apf
  %.sink.i.i8193 = phi ptr [ %i.lcw, %bb.apf ], [ %i.lao, %bb.ape ]
  %i.lcx = sext i32 %.lcssa to i64
  %i.lcy = getelementptr inbounds [8 x i8], ptr %.sink.i.i8193, i64 %i.lcx
  %i.lcz = load ptr, ptr %i.lcy, align 8
  %.val4398 = load ptr, ptr %i.lau, align 8       ; 2 uses
  %.val4399 = load ptr, ptr %i.lav, align 8
  %i.lda = getelementptr i8, ptr %i.lcz, i64 20
  %.val4400 = load i32, ptr %i.lda, align 4
  %i.ldb = and i32 %.val4400, 16777215
  %i.ldc = zext nneg i32 %i.ldb to i64            ; 2 uses
  %i.ldd = ptrtoint ptr %.val4399 to i64
  %i.lde = ptrtoint ptr %.val4398 to i64
  %i.ldf = sub i64 %i.ldd, %i.lde
  %i.ldg = ashr exact i64 %i.ldf, 2
  %i.ldh = icmp ugt i64 %i.ldg, %i.ldc
  br i1 %i.ldh, label %bb.apg, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8197

bb.apg:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8194
  %i.ldi = getelementptr inbounds nuw [4 x i8], ptr %.val4398, i64 %i.ldc
  %.sroa.0.0.copyload.i.i.i8196 = load i32, ptr %i.ldi, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8197

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8197: ; preds = %bb.apg, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8194, %._crit_edge14877
  %.sroa.01475.0 = phi i32 [ -1, %._crit_edge14877 ], [ %.sroa.0.0.copyload.i.i.i8196, %bb.apg ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8194 ]
  br i1 %6, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEEE7emplaceIJRNS3_11TSAssemblerIJS9_SA_EEERPNS3_5BlockEEEENSt9enable_ifIX18is_constructible_vISE_DpT_EERSE_E4typeEDpOSO_.exit, label %bb.aph

_ZNSt8optionalIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEEE7emplaceIJRNS3_11TSAssemblerIJS9_SA_EEERPNS3_5BlockEEEENSt9enable_ifIX18is_constructible_vISE_DpT_EERSE_E4typeEDpOSO_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8197
  %i.ldj = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.ldk = load ptr, ptr %i.ldj, align 8
  %i.ldl = getelementptr inbounds nuw i8, ptr %i.ldk, i64 8
  %i.ldm = load ptr, ptr %i.ldl, align 8
  %i.ldn = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.val2871 = load ptr, ptr %i.ldn, align 8
  %i.ldo = getelementptr i8, ptr %i.ldm, i64 4
  %.val2872 = load i32, ptr %i.ldo, align 4
  %i.ldp = sext i32 %.val2872 to i64
  %i.ldq = getelementptr inbounds nuw [16 x i8], ptr %.val2871, i64 %i.ldp
  %i.ldr = load ptr, ptr %i.ldq, align 8
  %i.lds = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 2 uses
  %i.ldt = load ptr, ptr %i.lds, align 8
  store ptr %i.ldr, ptr %i.lds, align 8
  br label %bb.aph

bb.aph:                                           ; preds = %_ZNSt8optionalIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEEE7emplaceIJRNS3_11TSAssemblerIJS9_SA_EEERPNS3_5BlockEEEENSt9enable_ifIX18is_constructible_vISE_DpT_EERSE_E4typeEDpOSO_.exit, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8197
  %.sroa.513023.0 = phi ptr [ %i.ldt, %_ZNSt8optionalIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEEE7emplaceIJRNS3_11TSAssemblerIJS9_SA_EEERPNS3_5BlockEEEENSt9enable_ifIX18is_constructible_vISE_DpT_EERSE_E4typeEDpOSO_.exit ], [ undef, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8197 ]
  %i.ldu = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ldv = load ptr, ptr %i.b, align 8
  %i.ldw = icmp eq ptr %i.ldv, null
  br i1 %i.ldw, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, label %bb.api, !prof !18

bb.api:                                           ; preds = %bb.aph
  %.sroa.0.0.copyload.i.i8214 = load i8, ptr %i.laa, align 2
  %i.ldx = and i8 %.sroa.0.0.copyload.i.i8214, 16
  %.not14852 = icmp eq i8 %i.ldx, 0               ; 2 uses
  %.sroa.0.0.copyload.i8206 = load i32, ptr %i.lbm, align 8
  %i.ldy = and i32 %.sroa.0.0.copyload.i8206, 16  ; 2 uses
  %i.ldz = icmp eq i32 %i.ldy, 0                  ; 2 uses
  %.sroa.012981.0 = xor i32 %i.ldy, 83            ; 2 uses
  %209 = or disjoint i32 %.sroa.012981.0, 12
  %.sroa.012981.1 = select i1 %.not14852, i32 %209, i32 %.sroa.012981.0
  %.sroa.10.0 = select i1 %i.ldz, i32 27648, i32 19456 ; 2 uses
  %.sroa.13.0.insert.ext = select i1 %i.ldz, i32 458752, i32 262144
  %i.lea = or i32 %.sroa.10.0, 20224
  %.sroa.10.0.insert.shift = select i1 %.not14852, i32 %i.lea, i32 %.sroa.10.0
  %.sroa.10.0.insert.insert = or disjoint i32 %.sroa.10.0.insert.shift, %.sroa.13.0.insert.ext
  %.sroa.012981.0.insert.insert = or disjoint i32 %.sroa.10.0.insert.insert, %.sroa.012981.1
  %i.leb = load ptr, ptr %i.lah, align 8
  %i.lec = ptrtoint ptr %i.leb to i64
  %i.led = load ptr, ptr %144, align 8            ; 2 uses
  %i.lee = ptrtoint ptr %i.led to i64
  %i.lef = sub i64 %i.lec, %i.lee
  %i.leg = ashr exact i64 %i.lef, 2
  %i.leh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lei = call i32 @_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE93ENS2_21UniformReducerAdapterIS3_SH_E22ReduceCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsEEEES11_DpT1_(ptr noundef nonnull align 8 dereferenceable(816) %i.leh, i32 %.sroa.0.0.i.i.i8181, i32 %.sroa.01475.0, ptr %i.led, i64 %i.leg, ptr noundef %i.laf, i32 %.sroa.012981.0.insert.insert)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit: ; preds = %bb.aph, %bb.api
  %.sroa.010.0.i.i = phi i32 [ %i.lei, %bb.api ], [ -1, %bb.aph ]
  br i1 %6, label %bb.apj, label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEELb0ELb0EED2Ev.exit

bb.apj:                                           ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit
  %i.lej = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.lek = load ptr, ptr %i.lej, align 8
  %i.lel = load ptr, ptr %i.lek, align 8
  %i.lem = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.val2869 = load ptr, ptr %i.lem, align 8
  %i.len = getelementptr i8, ptr %i.lel, i64 4
  %.val2870 = load i32, ptr %i.len, align 4
  %i.leo = sext i32 %.val2870 to i64
  %i.lep = getelementptr inbounds nuw [16 x i8], ptr %.val2869, i64 %i.leo
  %i.leq = load ptr, ptr %i.lep, align 8
  call void @_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(136) %i.ldu, ptr noundef %i.leq)
  %i.ler = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr %.sroa.513023.0, ptr %i.ler, align 8
  br label %_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal8compiler10turboshaft14CatchScopeImplINS3_9AssemblerINS0_4base3tmp5list1IJNS3_25ExplicitTruncationReducerENS3_15VariableReducerENS3_13TSReducerBaseEEEEEEEELb0ELb0EED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4CallINS2_13UntaggedUnionIJNS2_3AnyENS2_4NoneEEEEEENS2_1VIT_EENSJ_INSF_IJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSM_ILm32EEEEEEEENS2_9OptionalVINS2_10FrameStateEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorENS2_9OpEffectsE.exit, %bb.apj
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %144)
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #23
  br label %.critedge

bb.apk:                                           ; preds = %bb.b
  %i.les = tail call noundef ptr @_ZN2v88internal8compiler16CallDescriptorOfEPKNS1_8OperatorE(ptr noundef nonnull %i.k) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #23
  %i.let = getelementptr inbounds nuw i8, ptr %145, i64 24 ; 2 uses
  store ptr %i.let, ptr %145, align 8
  %i.leu = getelementptr inbounds nuw i8, ptr %145, i64 8 ; 5 uses
  store ptr %i.let, ptr %i.leu, align 8
  %i.lev = getelementptr inbounds nuw i8, ptr %145, i64 16 ; 2 uses
  %i.lew = getelementptr inbounds nuw i8, ptr %145, i64 88
  store ptr %i.lew, ptr %i.lev, align 8
  %i.lex = load i32, ptr %i.e, align 4
  %i.ley = and i32 %i.lex, 251658240
  %.not.i.i8224 = icmp eq i32 %i.ley, 251658240
  %i.lez = ptrtoint ptr %1 to i64
  %i.lfa = add i64 %i.lez, 32
  %i.lfb = inttoptr i64 %i.lfa to ptr             ; 4 uses
  br i1 %.not.i.i8224, label %bb.apl, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8226

bb.apl:                                           ; preds = %bb.apk
  %i.lfc = load ptr, ptr %i.lfb, align 8
  %i.lfd = ptrtoint ptr %i.lfc to i64
  %i.lfe = add i64 %i.lfd, 16
  %i.lff = inttoptr i64 %i.lfe to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8226

_ZNK2v88internal8compiler4Node7InputAtEi.exit8226: ; preds = %bb.apk, %bb.apl
  %.sink.i.i8225 = phi ptr [ %i.lff, %bb.apl ], [ %i.lfb, %bb.apk ]
  %i.lfg = load ptr, ptr %.sink.i.i8225, align 8
  %i.lfh = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 2 uses
  %.val4395 = load ptr, ptr %i.lfh, align 8       ; 2 uses
  %i.lfi = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %.val4396 = load ptr, ptr %i.lfi, align 8
  %i.lfj = getelementptr i8, ptr %i.lfg, i64 20
  %.val4397 = load i32, ptr %i.lfj, align 4
  %i.lfk = and i32 %.val4397, 16777215
  %i.lfl = zext nneg i32 %i.lfk to i64            ; 2 uses
  %i.lfm = ptrtoint ptr %.val4396 to i64
  %i.lfn = ptrtoint ptr %.val4395 to i64
  %i.lfo = sub i64 %i.lfm, %i.lfn
  %i.lfp = ashr exact i64 %i.lfo, 2
  %i.lfq = icmp ugt i64 %i.lfp, %i.lfl
  br i1 %i.lfq, label %bb.apm, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8229

bb.apm:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8226
  %i.lfr = getelementptr inbounds nuw [4 x i8], ptr %.val4395, i64 %i.lfl
  %.sroa.0.0.copyload.i.i.i8228 = load i32, ptr %i.lfr, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8229

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8229: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8226, %bb.apm
  %.sroa.0.0.i.i.i8227 = phi i32 [ %.sroa.0.0.copyload.i.i.i8228, %bb.apm ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8226 ]
  %i.lfs = getelementptr inbounds nuw i8, ptr %i.les, i64 32 ; 2 uses
  %i.lft = load ptr, ptr %i.lfs, align 8
  %i.lfu = getelementptr inbounds nuw i8, ptr %i.lft, i64 8
  %i.lfv = load i64, ptr %i.lfu, align 8
  %i.lfw = trunc i64 %i.lfv to i32
  %i.lfx = add i32 %i.lfw, 1
  %i.lfy = icmp sgt i32 %i.lfx, 1
  br i1 %i.lfy, label %.lr.ph14873, label %._crit_edge14874

._crit_edge14874:                                 ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8242, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8229
  %i.lfz = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %.sroa.0.0.copyload.i.i8230 = load i8, ptr %i.lfz, align 2
  %i.lga = lshr i8 %.sroa.0.0.copyload.i.i8230, 5
  %.lobit = and i8 %i.lga, 1
  %i.lgb = xor i8 %.lobit, 1
  %i.lgc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lgd = load ptr, ptr %i.lgc, align 8
  %i.lge = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef nonnull %i.les, i8 noundef zeroext %i.lgb, i8 noundef zeroext 0, ptr noundef %i.lgd, ptr noundef null)
  %i.lgf = load ptr, ptr %i.b, align 8
  %i.lgg = icmp eq ptr %i.lgf, null
  br i1 %i.lgg, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8TailCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSG_ILm32EEEEEEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorE.exit, label %bb.apn, !prof !18

bb.apn:                                           ; preds = %._crit_edge14874
  %i.lgh = load ptr, ptr %i.leu, align 8
  %i.lgi = ptrtoint ptr %i.lgh to i64
  %i.lgj = load ptr, ptr %145, align 8            ; 2 uses
  %i.lgk = ptrtoint ptr %i.lgj to i64
  %i.lgl = sub i64 %i.lgi, %i.lgk
  %i.lgm = ashr exact i64 %i.lgl, 2
  %i.lgn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lgo = call i32 @_ZN2v88internal8compiler10turboshaft25ExplicitTruncationReducerINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE15ReduceOperationILNS2_6OpcodeE2ENS2_21UniformReducerAdapterIS3_SH_E26ReduceTailCallContinuationEJNS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSQ_ILm32EEEEEEEENS9_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorEEEESY_DpT1_(ptr noundef nonnull align 8 dereferenceable(816) %i.lgn, i32 %.sroa.0.0.i.i.i8227, ptr %i.lgj, i64 %i.lgm, ptr noundef %i.lge) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8TailCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSG_ILm32EEEEEEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_25ExplicitTruncationReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8TailCallENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSG_ILm32EEEEEEEENS5_6VectorIKNS2_7OpIndexEEEPKNS2_16TSCallDescriptorE.exit: ; preds = %._crit_edge14874, %bb.apn
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %145)
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #23
  br label %.critedge

.lr.ph14873:                                      ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8229, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8242
  %indvars.iv14894 = phi i64 [ %indvars.iv.next14895, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8242 ], [ 1, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8229 ] ; 2 uses
  %i.lgp = load i32, ptr %i.e, align 4
  %i.lgq = and i32 %i.lgp, 251658240
  %.not.i.i8235 = icmp eq i32 %i.lgq, 251658240
  br i1 %.not.i.i8235, label %bb.apo, label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8237

bb.apo:                                           ; preds = %.lr.ph14873
  %i.lgr = load ptr, ptr %i.lfb, align 8
  %i.lgs = ptrtoint ptr %i.lgr to i64
  %i.lgt = add i64 %i.lgs, 16
  %i.lgu = inttoptr i64 %i.lgt to ptr
  br label %_ZNK2v88internal8compiler4Node7InputAtEi.exit8237

_ZNK2v88internal8compiler4Node7InputAtEi.exit8237: ; preds = %.lr.ph14873, %bb.apo
  %.sink.i.i8236 = phi ptr [ %i.lgu, %bb.apo ], [ %i.lfb, %.lr.ph14873 ]
  %i.lgv = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i8236, i64 %indvars.iv14894
  %i.lgw = load ptr, ptr %i.lgv, align 8
  %.val4392 = load ptr, ptr %i.lfh, align 8       ; 2 uses
  %.val4393 = load ptr, ptr %i.lfi, align 8
  %i.lgx = getelementptr i8, ptr %i.lgw, i64 20
  %.val4394 = load i32, ptr %i.lgx, align 4
  %i.lgy = and i32 %.val4394, 16777215
  %i.lgz = zext nneg i32 %i.lgy to i64            ; 2 uses
  %i.lha = ptrtoint ptr %.val4393 to i64
  %i.lhb = ptrtoint ptr %.val4392 to i64
  %i.lhc = sub i64 %i.lha, %i.lhb
  %i.lhd = ashr exact i64 %i.lhc, 2
  %i.lhe = icmp ugt i64 %i.lhd, %i.lgz
  br i1 %i.lhe, label %bb.app, label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8240

bb.app:                                           ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8237
  %i.lhf = getelementptr inbounds nuw [4 x i8], ptr %.val4392, i64 %i.lgz
  %.sroa.0.0.copyload.i.i.i8239 = load i32, ptr %i.lhf, align 4
  br label %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8240

_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8240: ; preds = %_ZNK2v88internal8compiler4Node7InputAtEi.exit8237, %bb.app
  %.sroa.0.0.i.i.i8238 = phi i32 [ %.sroa.0.0.copyload.i.i.i8239, %bb.app ], [ -1, %_ZNK2v88internal8compiler4Node7InputAtEi.exit8237 ]
  %i.lhg = load ptr, ptr %i.leu, align 8          ; 2 uses
  %i.lhh = load ptr, ptr %i.lev, align 8
  %i.lhi = icmp eq ptr %i.lhg, %i.lhh
  br i1 %i.lhi, label %bb.apq, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8242, !prof !18

bb.apq:                                           ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8240
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %145)
  %.pre.i8241 = load ptr, ptr %i.leu, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8242

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm16ESaIS5_EE12emplace_backIJS5_EEEvDpOT_.exit8242: ; preds = %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8240, %bb.apq
  %i.lhj = phi ptr [ %.pre.i8241, %bb.apq ], [ %i.lhg, %_ZN2v88internal8compiler10turboshaft12_GLOBAL__N_112GraphBuilder3MapEPNS1_4NodeE.exit8240 ] ; 2 uses
  %i.lhk = getelementptr inbounds nuw i8, ptr %i.lhj, i64 4
  store ptr %i.lhk, ptr %i.leu, align 8
  store i32 %.sroa.0.0.i.i.i8238, ptr %i.lhj, align 4
  %indvars.iv.next14895 = add nuw nsw i64 %indvars.iv14894, 1 ; 2 uses
  %i.lhl = load ptr, ptr %i.lfs, align 8
  %i.lhm = getelementptr inbounds nuw i8, ptr %i.lhl, i64 8
  %i.lhn = load i64, ptr %i.lhm, align 8
  %i.lho = shl i64 %i.lhn, 32
  %sext = add i64 %i.lho, 4294967296
  %i.lhp = ashr exact i64 %sext, 32
  %i.lhq = icmp slt i64 %indvars.iv.next14895, %i.lhp
  br i1 %i.lhq, label %.lr.ph14873, label %._crit_edge14874, !llvm.loop !59

bb.apr:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #23
  %i.lhr = getelementptr inbounds nuw i8, ptr %146, i64 24 ; 2 uses
  store ptr %i.lhr, ptr %146, align 8
  %i.lhs = getelementptr inbounds nuw i8, ptr %146, i64 8
  store ptr %i.lhr, ptr %i.lhs, align 8
  %i.lht = getelementptr inbounds nuw i8, ptr %146, i64 16
  %i.lhu = getelementptr inbounds nuw i8, ptr %146, i64 56 ; 2 uses
  store ptr %i.lhu, ptr %i.lht, align 8
  %i.lhv = getelementptr inbounds nuw i8, ptr %146, i64 80 ; 2 uses
  store ptr %i.lhv, ptr %i.lhu, align 8
  %i.lhw = getelementptr inbounds nuw i8, ptr %146, i64 64
  store ptr %i.lhv, ptr %i.lhw, align 8
  %i.lhx = getelementptr inbounds nuw i8, ptr %146, i64 72
end_hunk_0
