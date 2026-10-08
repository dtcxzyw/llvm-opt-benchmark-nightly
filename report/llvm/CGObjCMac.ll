Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGObjCMac?download=true
inline.NumInlined: 9386
inline.NumDeleted: 3979
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_19CGObjCMac25EmitTryOrSynchronizedStmtERN5clang7CodeGen15CodeGenFunctionERKNS1_4StmtE:bb.a
  %.sroa.0.0.i = load i64, ptr %.sroa.0.0.in.i, align 8, !tbaa !307
  %i.zt = and i64 %.sroa.0.0.i, -16
  %i.zu = inttoptr i64 %i.zt to ptr
  %i.zv = load ptr, ptr %i.zu, align 16, !tbaa !1265 ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16
  %i.zx = load i8, ptr %i.zw, align 16            ; 2 uses
  %i.zy = and i8 %i.zx, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i305 = icmp eq i8 %i.zy, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i305, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i, label %bb.az

bb.az:                                            ; preds = %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.zz, align 8, !tbaa !307
  %i.aaa = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.aab = inttoptr i64 %i.aaa to ptr
  %i.aac = load ptr, ptr %i.aab, align 16, !tbaa !1265
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aae = load i8, ptr %i.aad, align 16
  %i.aaf = and i8 %i.aae, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.aaf, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i, label %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i: ; preds = %bb.az
  %i.aag = call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.zv) #28 ; 3 uses
  %.not.i306 = icmp eq ptr %i.aag, null
  br i1 %.not.i306, label %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit, label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %.pre.i307 = load i8, ptr %.phi.trans.insert.i, align 16
  br label %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i

_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i: ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit
  %i.aah = phi i8 [ %.pre.i307, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i ], [ %i.zx, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit ]
  %.1.i19.i = phi ptr [ %i.aag, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit._ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16_crit_edge.i ], [ %i.zv, %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit ] ; 2 uses
  %.not31.i = icmp eq i8 %i.aah, 33
  br i1 %.not31.i, label %.thread26.i, label %_ZNK5clang21ObjCObjectPointerType13getObjectTypeEv.exit

.thread26.i:                                      ; preds = %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.thread16.i
  %i.aai = call noundef ptr @_ZNK5clang17ObjCInterfaceType7getDeclEv(ptr noundef nonnull align 16 dereferenceable(48) %.1.i19.i) #28
  br label %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit

_ZNK5clang14ObjCObjectType12getInterfaceEv.exit:  ; preds = %bb.az, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i, %.thread26.i
  %.3.i = phi ptr [ %i.aai, %.thread26.i ], [ null, %_ZNK5clang4Type5getAsINS_14ObjCObjectTypeEEEPKT_v.exit.i ], [ null, %bb.az ]
  %i.aaj = call fastcc noundef ptr @_ZN12_GLOBAL__N_19CGObjCMac12EmitClassRefERN5clang7CodeGen15CodeGenFunctionEPKNS1_17ObjCInterfaceDeclE(ptr noundef nonnull align 8 dereferenceable(2568) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #28
  store ptr %i.aaj, ptr %i.x, align 16, !tbaa !1339
  store ptr %i.qt, ptr %i.uq, align 8, !tbaa !1339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.aak = load ptr, ptr %i.ur, align 8, !tbaa !693
  store ptr %i.aak, ptr %i.e, align 16, !tbaa !685
  %i.aal = load ptr, ptr %i.qf, align 8, !tbaa !750
  store ptr %i.aal, ptr %i.us, align 8, !tbaa !685
  %i.aam = load ptr, ptr %i.ld, align 8, !tbaa !696, !nonnull !315, !align !316 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !697
  %i.aap = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %i.aao, ptr nonnull %i.e, i64 2, i1 noundef zeroext false) #28
  %i.aaq = call { ptr, ptr } @_ZN5clang7CodeGen13CodeGenModule21CreateRuntimeFunctionEPN4llvm12FunctionTypeENS2_9StringRefENS2_13AttributeListEbb(ptr noundef nonnull align 8 dereferenceable(4008) %i.aam, ptr noundef %i.aap, ptr nonnull @.str.195, i64 20, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.aar = extractvalue { ptr, ptr } %i.aaq, 0
  %i.aas = extractvalue { ptr, ptr } %i.aaq, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  store i8 1, ptr %i.uu, align 1, !tbaa !312
  store ptr @.str.182, ptr %47, align 8, !tbaa !307
  store i8 3, ptr %i.ut, align 8, !tbaa !313
  %i.aat = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction23EmitNounwindRuntimeCallEN4llvm14FunctionCalleeENS2_8ArrayRefIPNS2_5ValueEEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr %i.aar, ptr %i.aas, ptr nonnull %i.x, i64 2, ptr noundef nonnull align 8 dereferenceable(34) %47) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  store i8 1, ptr %i.uw, align 1, !tbaa !312
  store ptr @.str.182, ptr %48, align 8, !tbaa !307
  store i8 3, ptr %i.uv, align 8, !tbaa !313
  %i.aau = load ptr, ptr %i.ah, align 8, !tbaa !314, !nonnull !315, !align !316
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 232
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !670, !nonnull !315, !align !316
  %i.aax = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29 ; 3 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.aax, ptr noundef nonnull align 8 dereferenceable(8) %i.aaw, ptr noundef nonnull align 8 dereferenceable(34) %48, ptr noundef null, ptr noundef null) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  store i8 1, ptr %i.uy, align 1, !tbaa !312
  store ptr @.str.183, ptr %49, align 8, !tbaa !307
  store i8 3, ptr %i.ux, align 8, !tbaa !313
  %i.aay = load ptr, ptr %i.ah, align 8, !tbaa !314, !nonnull !315, !align !316
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 232
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !670, !nonnull !315, !align !316
  %i.abb = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #29 ; 3 uses
  call void @_ZN4llvm10BasicBlockC1ERNS_11LLVMContextERKNS_5TwineEPNS_8FunctionEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.abb, ptr noundef nonnull align 8 dereferenceable(8) %i.aba, ptr noundef nonnull align 8 dereferenceable(34) %49, ptr noundef null, ptr noundef null) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #28
  store i8 1, ptr %i.va, align 1, !tbaa !312
  store ptr @.str.184, ptr %50, align 8, !tbaa !307
  store i8 3, ptr %i.uz, align 8, !tbaa !313
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !1277
  %i.abe = call noundef ptr @_ZN4llvm8Constant12getNullValueEPNS_4TypeE(ptr noundef %i.abd) #28
  %i.abf = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateICmpENS_7CmpInst9PredicateEPNS_5ValueES4_RKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.ko, i32 noundef 33, ptr noundef nonnull %i.aat, ptr noundef %i.abe, ptr noundef nonnull align 8 dereferenceable(34) %50)
  %i.abg = call noundef ptr @_ZN4llvm4UsernwEmNS0_28IntrusiveOperandsAllocMarkerE(i64 noundef 72, i32 3) #28 ; 3 uses
  call void @_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72) %i.abg, ptr noundef %i.abf, ptr noundef nonnull %i.aax, ptr noundef nonnull %i.abb, ptr null, i64 0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i16 257, ptr %i.vb, align 8
  %i.abh = load ptr, ptr %i.oh, align 8, !tbaa !1346, !nonnull !315, !align !316 ; 2 uses
  %.sroa.0.0.copyload.i.i312 = load ptr, ptr %i.oj, align 8
  %.sroa.2.0.copyload.i.i314 = load i64, ptr %.sroa.2.0..sroa_idx.i.i237, align 8
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !680
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abk = load ptr, ptr %i.abj, align 8
  call void %i.abk(ptr noundef nonnull align 8 dereferenceable(8) %i.abh, ptr noundef nonnull %i.abg, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr %.sroa.0.0.copyload.i.i312, i64 %.sroa.2.0.copyload.i.i314) #28, !inline_history !5
  call void @_ZNK4llvm13IRBuilderBase20SetInstDebugLocationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(88) %i.ko, ptr noundef nonnull %i.abg) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  call void @_ZN5clang7CodeGen15CodeGenFunction9EmitBlockEPN4llvm10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull %i.aax, i1 noundef zeroext false) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #28
  store ptr %1, ptr %i.vd, align 8, !tbaa !2548
  %i.abl = load i32, ptr %i.vf, align 8, !tbaa !297
  %i.abm = zext i32 %i.abl to i64
  store i64 %i.abm, ptr %i.ve, align 8, !tbaa !1526
  store i8 0, ptr %i.vg, align 8, !tbaa !1527
  store i8 1, ptr %i.vh, align 1, !tbaa !2574
  store ptr %1, ptr %i.vi, align 8, !tbaa !2548
  %i.abn = load ptr, ptr %i.vj, align 8, !tbaa !2575
  %i.abo = load ptr, ptr %i.vk, align 8, !tbaa !2576
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = sub i64 %i.abp, %i.abq                 ; 2 uses
  store i64 %i.abr, ptr %51, align 8, !tbaa !1178
  %i.abs = load i64, ptr %i.vl, align 8, !tbaa !1246
  store i64 %i.abs, ptr %i.vm, align 8, !tbaa !2577
  %i.abt = load i8, ptr %i.vn, align 1, !tbaa !2578, !range !1292, !noundef !315
  store i8 %i.abt, ptr %i.vo, align 8, !tbaa !2579
  store i8 0, ptr %i.vn, align 1, !tbaa !2578
  %i.abu = load i64, ptr %i.vp, align 8, !tbaa !1178
  store i64 %i.abu, ptr %i.vc, align 8, !tbaa !1178
  store i64 %i.abr, ptr %i.vp, align 8, !tbaa !1178
  call void @_ZN5clang7CodeGen15CodeGenFunction15EmitAutoVarDeclERKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull align 8 dereferenceable(100) %i.vt) #28
  %.sroa.0.0.copyload.i315 = load i64, ptr %i.vu, align 8, !tbaa !307
  %i.abv = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction11ConvertTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(6288) %1, i64 %.sroa.0.0.copyload.i315) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #28
  store i16 257, ptr %i.vq, align 8
  %i.abw = call noundef ptr @_ZN4llvm13IRBuilderBase10CreateCastENS_11Instruction7CastOpsEPNS_5ValueEPNS_4TypeERKNS_5TwineEPNS_6MDNodeENS_9FMFSourceE(ptr noundef nonnull align 8 dereferenceable(88) %i.ko, i32 noundef 51, ptr noundef %i.qt, ptr noundef %i.abv, ptr noundef nonnull align 8 dereferenceable(34) %52, ptr noundef null, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  call void @_ZN5clang7CodeGen13CGObjCRuntime20EmitInitOfCatchParamERNS0_15CodeGenFunctionEPN4llvm5ValueEPKNS_7VarDeclE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %i.abw, ptr noundef nonnull %i.vt) #28
  %i.abx = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !2580
  call void @_ZN5clang7CodeGen15CodeGenFunction8EmitStmtEPKNS_4StmtEN4llvm8ArrayRefIPKNS_4AttrEEE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %i.aby, ptr null, i64 0) #28
  %i.abz = load i8, ptr %i.vo, align 8, !tbaa !2579, !range !1292, !noundef !315
  %i.aca = load ptr, ptr %i.vi, align 8, !tbaa !2581, !nonnull !315, !align !316
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 3037
  store i8 %i.abz, ptr %i.acb, align 1, !tbaa !2578
  call void @_ZN5clang7CodeGen15CodeGenFunction24CleanupDeactivationScope15ForceDeactivateEv(ptr noundef nonnull align 8 dereferenceable(17) %i.vd)
  %i.acc = load ptr, ptr %i.vi, align 8, !tbaa !2581, !nonnull !315, !align !316
  %.sroa.01.0.copyload.i317 = load i64, ptr %51, align 8, !tbaa !1178
  %i.acd = load i64, ptr %i.vm, align 8, !tbaa !2577
  call void @_ZN5clang7CodeGen15CodeGenFunction16PopCleanupBlocksENS0_12EHScopeStack15stable_iteratorEmSt16initializer_listIPPN4llvm5ValueEE(ptr noundef nonnull align 8 dereferenceable(6288) %i.acc, i64 %.sroa.01.0.copyload.i317, i64 noundef %i.acd, ptr null, i64 0) #28
  store i8 0, ptr %i.vh, align 1, !tbaa !2574
  %i.ace = load ptr, ptr %i.vi, align 8, !tbaa !2581, !nonnull !315, !align !316
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 3016
  %i.acg = load i64, ptr %i.vc, align 8, !tbaa !1178
  store i64 %i.acg, ptr %i.acf, align 8, !tbaa !1178
  store ptr %i.al, ptr %53, align 8, !tbaa !1494
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.6596.0..sroa_idx597, align 8, !tbaa !1178
  store i32 %i.ao, ptr %.sroa.7599.0..sroa_idx600, align 8, !tbaa !308
  call void @_ZN5clang7CodeGen15CodeGenFunction24EmitBranchThroughCleanupENS1_8JumpDestE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull byval(%"struct.clang::CodeGen::CodeGenFunction::JumpDest") align 8 %53) #28
  call void @_ZN5clang7CodeGen15CodeGenFunction9EmitBlockEPN4llvm10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull %i.abb, i1 noundef zeroext false) #28
  %i.ach = load i8, ptr %i.vh, align 1, !tbaa !2574, !range !1292, !noundef !315
  %i.aci = trunc nuw i8 %i.ach to i1
  br i1 %i.aci, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit
  %i.acj = load i8, ptr %i.vo, align 8, !tbaa !2579, !range !1292, !noundef !315
  %i.ack = load ptr, ptr %i.vi, align 8, !tbaa !2581, !nonnull !315, !align !316
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 3037
  store i8 %i.acj, ptr %i.acl, align 1, !tbaa !2578
  call void @_ZN5clang7CodeGen15CodeGenFunction24CleanupDeactivationScope15ForceDeactivateEv(ptr noundef nonnull align 8 dereferenceable(17) %i.vd)
  %i.acm = load ptr, ptr %i.vi, align 8, !tbaa !2581, !nonnull !315, !align !316
  %.sroa.01.0.copyload.i.i318 = load i64, ptr %51, align 8, !tbaa !1178
  %i.acn = load i64, ptr %i.vm, align 8, !tbaa !2577
  call void @_ZN5clang7CodeGen15CodeGenFunction16PopCleanupBlocksENS0_12EHScopeStack15stable_iteratorEmSt16initializer_listIPPN4llvm5ValueEE(ptr noundef nonnull align 8 dereferenceable(6288) %i.acm, i64 %.sroa.01.0.copyload.i.i318, i64 noundef %i.acn, ptr null, i64 0) #28
  store i8 0, ptr %i.vh, align 1, !tbaa !2574
  %i.aco = load ptr, ptr %i.vi, align 8, !tbaa !2581, !nonnull !315, !align !316
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 3016
  %i.acq = load i64, ptr %i.vc, align 8, !tbaa !1178
  store i64 %i.acq, ptr %i.acp, align 8, !tbaa !1178
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK5clang14ObjCObjectType12getInterfaceEv.exit
  %i.acr = load i8, ptr %i.vg, align 8, !tbaa !1527, !range !1292, !noundef !315
  %i.acs = trunc nuw i8 %i.acr to i1
  br i1 %i.acs, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN5clang7CodeGen15CodeGenFunction24CleanupDeactivationScope15ForceDeactivateEv(ptr noundef nonnull align 8 dereferenceable(17) %i.vd)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  %i.act = getelementptr inbounds nuw i8, ptr %.sroa.0394.0699, i64 8 ; 2 uses
  %.not693 = icmp eq ptr %i.act, %i.up
  br i1 %.not693, label %.loopexit, label %bb.am

.loopexit:                                        ; preds = %bb.bd, %_ZNK5clang13ObjCAtTryStmt14getFinallyStmtEv.exit.thread, %.thread690
  %.2 = phi i1 [ false, %.thread690 ], [ true, %_ZNK5clang13ObjCAtTryStmt14getFinallyStmtEv.exit.thread ], [ true, %bb.bd ]
  %i.acu = load i32, ptr %i.qv, align 8, !tbaa !297
  %i.acv = add i32 %i.acu, -1
  store i32 %i.acv, ptr %i.qv, align 8, !tbaa !297
  %i.acw = getelementptr inbounds nuw i8, ptr %i.qt, i64 16
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !2582
  %i.acy = icmp eq ptr %i.acx, null
  br i1 %i.acy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.loopexit
  %i.acz = call { ptr, i64 } @_ZN4llvm11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(72) %i.qt) #28 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.loopexit
  br i1 %.2, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.aw, ptr %54, align 8, !tbaa !1494
  %.sroa.7577.0..sroa_idx578 = getelementptr inbounds nuw i8, ptr %54, i64 8
  store i64 %.sroa.0.0.copyload.i.i.i207, ptr %.sroa.7577.0..sroa_idx578, align 8, !tbaa !1178
  %.sroa.8582.0..sroa_idx583 = getelementptr inbounds nuw i8, ptr %54, i64 16
  store i32 %i.ax, ptr %.sroa.8582.0..sroa_idx583, align 8, !tbaa !308
  call void @_ZN5clang7CodeGen15CodeGenFunction24EmitBranchThroughCleanupENS1_8JumpDestE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull byval(%"struct.clang::CodeGen::CodeGenFunction::JumpDest") align 8 %54) #28
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.ug, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN5clang7CodeGen15CodeGenFunction9EmitBlockEPN4llvm10BasicBlockEb(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef %.0, i1 noundef zeroext false) #28
  %.val203 = load ptr, ptr %i.ld, align 8, !tbaa !696 ; 2 uses
  %.val204 = load ptr, ptr %i.qf, align 8, !tbaa !750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ada = getelementptr inbounds nuw i8, ptr %.val203, i64 96
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !307
  store ptr %i.adb, ptr %i.d, align 8, !tbaa !685
  %i.adc = call noundef ptr @_ZN4llvm12FunctionType3getEPNS_4TypeENS_8ArrayRefIS2_EEb(ptr noundef %.val204, ptr nonnull %i.d, i64 1, i1 noundef zeroext false) #28
  %i.add = call { ptr, ptr } @_ZN5clang7CodeGen13CodeGenModule21CreateRuntimeFunctionEPN4llvm12FunctionTypeENS2_9StringRefENS2_13AttributeListEbb(ptr noundef nonnull align 8 dereferenceable(4008) %.val203, ptr noundef %i.adc, ptr nonnull @.str.194, i64 22, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.ade = extractvalue { ptr, ptr } %i.add, 0
  %i.adf = extractvalue { ptr, ptr } %i.add, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #28
  %i.adg = load i8, ptr %i.cw, align 8
  %i.adh = and i8 %i.adg, 3
  %.not.i320 = icmp eq i8 %i.adh, 0
  br i1 %.not.i320, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.0.copyload.i.i.i.i.i322 = load i64, ptr %24, align 8
  %i.adi = and i64 %.0.copyload.i.i.i.i.i322, -8
  %i.adj = inttoptr i64 %i.adi to ptr
  br label %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323

bb.bk:                                            ; preds = %bb.bi
  %i.adk = call noundef ptr @_ZNK5clang7CodeGen7Address18emitRawPointerSlowERNS0_15CodeGenFunctionE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(6288) %1) #28
  br label %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323

_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323: ; preds = %bb.bj, %bb.bk
  %.0.i321 = phi ptr [ %i.adk, %bb.bk ], [ %i.adj, %bb.bj ]
  store ptr %.0.i321, ptr %i.y, align 8, !tbaa !1339
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  %i.adl = getelementptr inbounds nuw i8, ptr %55, i64 32
  %i.adm = getelementptr inbounds nuw i8, ptr %55, i64 33
  store i8 1, ptr %i.adm, align 1, !tbaa !312
  store ptr @.str.177, ptr %55, align 8, !tbaa !307
  store i8 3, ptr %i.adl, align 8, !tbaa !313
  %i.adn = call noundef ptr @_ZN5clang7CodeGen15CodeGenFunction23EmitNounwindRuntimeCallEN4llvm14FunctionCalleeENS2_8ArrayRefIPNS2_5ValueEEERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr %i.ade, ptr %i.adf, ptr nonnull %i.y, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %55) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #28
  %i.ado = and i64 %.sroa.0422.0, -8
  %i.adp = inttoptr i64 %i.ado to ptr
  %i.adq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.9.0, i1 false)
  %i.adr = trunc nuw nsw i64 %i.adq to i16
  %i.ads = sub nsw i16 63, %i.adr
  %.sroa.02.0.insert.ext.i327 = and i16 %i.ads, 255
  %.sroa.02.0.insert.insert.i328 = or disjoint i16 %.sroa.02.0.insert.ext.i327, 256
  %i.adt = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateAlignedStoreEPNS_5ValueES2_NS_10MaybeAlignEb(ptr noundef nonnull align 8 dereferenceable(128) %i.ko, ptr noundef %i.adn, ptr noundef %i.adp, i16 %.sroa.02.0.insert.insert.i328, i1 noundef zeroext false) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN12_GLOBAL__N_114FragileHazards15emitWriteHazardEv.exit, %bb.ad, %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323
  %.sink750.sroa.phi = phi ptr [ %.sink750.sroa.gep, %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323 ], [ %.sink750.sroa.gep764, %bb.ad ], [ %.sink750.sroa.gep765, %_ZN12_GLOBAL__N_114FragileHazards15emitWriteHazardEv.exit ]
  %.sink750.sroa.phi766 = phi ptr [ %.sink750.sroa.gep767, %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323 ], [ %.sink750.sroa.gep768, %bb.ad ], [ %.sink750.sroa.gep769, %_ZN12_GLOBAL__N_114FragileHazards15emitWriteHazardEv.exit ]
  %.sink750 = phi ptr [ %56, %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323 ], [ %36, %bb.ad ], [ %36, %_ZN12_GLOBAL__N_114FragileHazards15emitWriteHazardEv.exit ] ; 2 uses
  %.sroa.9.1.ph = phi i64 [ %.sroa.9.0, %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323 ], [ 0, %bb.ad ], [ 0, %_ZN12_GLOBAL__N_114FragileHazards15emitWriteHazardEv.exit ]
  %.sroa.8425.1.ph = phi ptr [ %.sroa.8425.0, %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323 ], [ null, %bb.ad ], [ null, %_ZN12_GLOBAL__N_114FragileHazards15emitWriteHazardEv.exit ]
  %.sroa.0422.1.ph = phi i64 [ %.sroa.0422.0, %_ZNK5clang7CodeGen7Address14emitRawPointerERNS0_15CodeGenFunctionE.exit323 ], [ 0, %bb.ad ], [ 0, %_ZN12_GLOBAL__N_114FragileHazards15emitWriteHazardEv.exit ]
  %i.adu = load ptr, ptr %i.kp, align 8, !tbaa !1354, !nonnull !315, !align !316
  %i.adv = call noundef ptr @_ZN4llvm11ConstantInt8getFalseERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.adu) #28
  %i.adw = call noundef ptr @_ZN4llvm13IRBuilderBase18CreateAlignedStoreEPNS_5ValueES2_NS_10MaybeAlignEb(ptr noundef nonnull align 8 dereferenceable(128) %i.ko, ptr noundef %i.adv, ptr noundef %i.oq, i16 %.sroa.02.0.insert.insert.i242, i1 noundef zeroext false) ; 0 uses
  store ptr %i.aw, ptr %.sink750, align 8, !tbaa !1494
  store i64 %.sroa.0.0.copyload.i.i.i207, ptr %.sink750.sroa.phi, align 8, !tbaa !1178
  store i32 %i.ax, ptr %.sink750.sroa.phi766, align 8, !tbaa !308
  call void @_ZN5clang7CodeGen15CodeGenFunction24EmitBranchThroughCleanupENS1_8JumpDestE(ptr noundef nonnull align 8 dereferenceable(6288) %1, ptr noundef nonnull byval(%"struct.clang::CodeGen::CodeGenFunction::JumpDest") align 8 %.sink750) #28
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split, %bb.bh
  %.sroa.9.1 = phi i64 [ %.sroa.9.0, %bb.bh ], [ %.sroa.9.1.ph, %.sink.split ]
  %.sroa.8425.1 = phi ptr [ %.sroa.8425.0, %bb.bh ], [ %.sroa.8425.1.ph, %.sink.split ]
  %.sroa.0422.1 = phi i64 [ %.sroa.0422.0, %bb.bh ], [ %.sroa.0422.1.ph, %.sink.split ] ; 2 uses
  %i.adx = load i32, ptr %i.dc, align 8, !tbaa !297
  %.not.i.i333 = icmp eq i32 %i.adx, 0
  br i1 %.not.i.i333, label %_ZN12_GLOBAL__N_114FragileHazards22emitHazardsInNewBlocksEv.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ady = load ptr, ptr %27, align 8, !tbaa !2556, !nonnull !315, !align !316
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 144
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !314, !nonnull !315, !align !316 ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 232
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !670, !nonnull !315, !align !316
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aea, i64 200
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !1190, !nonnull !315, !align !316
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 296 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %5, align 8, !tbaa !680
  %i.aeg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aef, ptr %i.aeg, align 8, !tbaa !2583
  %i.aeh = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !2584
  %i.aej = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.aec, ptr %i.aej, align 8, !tbaa !678
  %i.aek = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.aeh, ptr %i.aek, align 8, !tbaa !2585
  %i.ael = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.aei, ptr %i.ael, align 8, !tbaa !2586
  %i.aem = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr null, ptr %i.aem, align 8, !tbaa !2587
  %i.aen = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.aen, align 8, !tbaa !1503
  %i.aeo = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i8 0, ptr %i.aeo, align 4, !tbaa !1506
  %i.aep = getelementptr inbounds nuw i8, ptr %6, i64 69
  store i8 2, ptr %i.aep, align 1, !tbaa !2588
  %i.aeq = getelementptr inbounds nuw i8, ptr %6, i64 70
  store i8 7, ptr %i.aeq, align 2, !tbaa !2589
  %i.aer = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.aes = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.aes, i8 0, i64 18, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aer, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4llvm12TargetFolderE, i64 16), ptr %i.aeh, align 8, !tbaa !680
  %i.aet = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %i.aef, ptr %i.aet, align 8, !tbaa !2583
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5clang7CodeGen17CGBuilderInserterE, i64 16), ptr %i.aei, align 8, !tbaa !680
  %i.aeu = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr null, ptr %i.aeu, align 8, !tbaa !2590
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  %i.aev = getelementptr inbounds nuw i8, ptr %6, i64 120
  store ptr %i.aea, ptr %i.aev, align 8, !tbaa !2591
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aew = load ptr, ptr %27, align 8, !tbaa !2556, !nonnull !315, !align !316
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 1656
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !2558 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 88
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 80 ; 2 uses
  %.sroa.028.041.i = load ptr, ptr %i.aez, align 8, !tbaa !1518 ; 2 uses
  %.not42.i = icmp eq ptr %.sroa.028.041.i, %i.afa
  br i1 %.not42.i, label %._crit_edge.i339, label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.bm
  %i.afb = getelementptr inbounds nuw i8, ptr %27, i64 192
  %i.afc = getelementptr inbounds nuw i8, ptr %27, i64 204
  %i.afd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.afe = getelementptr inbounds nuw i8, ptr %27, i64 208
  %i.aff = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %bb.bn

._crit_edge.i339:                                 ; preds = %_ZNK4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countEPKS2_.exit.i, %bb.bm
  call void @_ZN4llvm24IRBuilderDefaultInserterD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aei) #28
  call void @_ZN4llvm15IRBuilderFolderD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aeh) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN12_GLOBAL__N_114FragileHazards22emitHazardsInNewBlocksEv.exit

bb.bn:                                            ; preds = %_ZNK4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countEPKS2_.exit.i, %.lr.ph44.i
  %.sroa.028.043.i = phi ptr [ %.sroa.028.041.i, %.lr.ph44.i ], [ %.sroa.028.0.i, %_ZNK4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countEPKS2_.exit.i ] ; 4 uses
  %i.afg = getelementptr inbounds i8, ptr %.sroa.028.043.i, i64 -24 ; 3 uses
  %i.afh = load ptr, ptr %i.de, align 8, !tbaa !1528, !noalias !2592
  %i.afi = load ptr, ptr %i.afb, align 8, !tbaa !1529, !noalias !2592 ; 2 uses
  %i.afj = load i32, ptr %i.afc, align 4, !tbaa !1530, !noalias !2592 ; 2 uses
  %i.afk = icmp eq i32 %i.afj, 0
  br i1 %i.afk, label %.loopexit.i334, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.afl = add i32 %i.afj, -1                     ; 2 uses
  %i.afm = ptrtoint ptr %i.afg to i64
  %i.afn = mul i64 %i.afm, -4658895280553007687   ; 2 uses
  %i.afo = lshr i64 %i.afn, 31
  %i.afp = xor i64 %i.afo, %i.afn
  %i.afq = trunc i64 %i.afp to i32
  %i.afr = and i32 %i.afl, %i.afq                 ; 3 uses
  %i.afs = zext i32 %i.afr to i64                 ; 2 uses
  %i.aft = lshr i64 %i.afs, 5
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %i.aft
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !308
  %i.afw = and i32 %i.afr, 31
  %i.afx = lshr i32 %i.afv, %i.afw
  %i.afy = trunc i32 %i.afx to i1
  br i1 %i.afy, label %.lr.ph.i.i.i.i.i, label %.loopexit.i334, !prof !1327

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bo, %bb.bp
  %i.afz = phi i64 [ %i.agf, %bb.bp ], [ %i.afs, %bb.bo ]
  %.019.i.i.i.i.i = phi i32 [ %i.age, %bb.bp ], [ %i.afr, %bb.bo ]
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.afz
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !1494
  %i.agc = icmp eq ptr %i.afg, %i.agb
  br i1 %i.agc, label %_ZNK4llvm6detail12DenseSetImplIPNS_10BasicBlockENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5countEPKS2_.exit.i, label %bb.bp, !prof !1134

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.agd = add nuw i32 %.019.i.i.i.i.i, 1
  %i.age = and i32 %i.agd, %i.afl                 ; 3 uses
  %i.agf = zext i32 %i.age to i64                 ; 2 uses
  %i.agg = lshr i64 %i.agf, 5
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.afi, i64 %i.agg
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !308
end_hunk_0
