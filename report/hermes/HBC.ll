Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/HBC?download=true
inline.NumInlined: 3984
inline.NumDeleted: 2586
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6hermes3hbc22generateBytecodeModuleEPNS_6ModuleEPNS_8FunctionES4_RKNS_25BytecodeGenerationOptionsENS_8OptValueIjEEPNS_18SourceMapGeneratorESt10unique_ptrINS0_14BCProviderBaseESt14default_deleteISD_EE:bb.a

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i: ; preds = %bb.di, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i, %bb.dh
  %.sink.i.ph.pn.i.i = phi ptr [ %i.amh, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E15LookupBucketForIPKS3_EEbRKT_RPKSC_.exit.i.i ], [ %i.alv, %bb.dh ], [ %i.amd, %bb.di ] ; 2 uses
  %i.ami = zext i32 %i.alm to i64
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.all, i64 %i.ami
  %i.amk = icmp eq ptr %.sink.i.ph.pn.i.i, %i.amj
  br i1 %i.amk, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit

_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i
  %i.aml = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !642 ; 3 uses
  %.not = icmp eq ptr %i.amm, null
  br i1 %.not, label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, label %bb.dj

bb.dj:                                            ; preds = %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %i.amn = load i8, ptr %i.oh, align 8, !tbaa !553, !range !99, !noundef !100
  %i.amo = trunc nuw i8 %i.amn to i1
  br i1 %i.amo, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.amp = load i32, ptr %i.amm, align 8, !tbaa !644
  call void @_ZN6hermes3hbc23BytecodeModuleGenerator18addCJSModuleStaticEjj(ptr noundef nonnull align 8 dereferenceable(964) %56, i32 noundef %i.amp, i32 noundef %i.alj) #18
  br label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread

bb.dl:                                            ; preds = %bb.dj
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !645 ; 2 uses
  %.sroa.015.0.copyload = load ptr, ptr %i.amr, align 8, !tbaa !103
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  %.sroa.216.0.copyload = load i64, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !104
  %i.ams = call noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator11getStringIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964) %56, ptr %.sroa.015.0.copyload, i64 %.sroa.216.0.copyload) #18
  call void @_ZN6hermes3hbc23BytecodeModuleGenerator12addCJSModuleEjj(ptr noundef nonnull align 8 dereferenceable(964) %56, i32 noundef %i.alj, i32 noundef %i.ams) #18
  br label %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread

_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionEPNS2_6Module9CJSModuleENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_S7_EEEES4_S7_S9_SC_E4findEPKS3_.exit.i, %bb.dk, %bb.dl, %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.0169.0205, i64 64
  %i.amu = load i8, ptr %i.amt, align 8, !tbaa !646, !range !99, !noundef !100
  %i.amv = trunc nuw i8 %i.amu to i1
  br i1 %i.amv, label %bb.dr, label %bb.dm

bb.dm:                                            ; preds = %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #18
  call void @_ZNK6hermes8Function26getSourceRepresentationStrEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Optional") align 8 %71, ptr noundef nonnull align 8 dereferenceable(304) %.sroa.0169.0205) #18
  %i.amw = load i8, ptr %i.ajd, align 8, !tbaa !651, !range !99, !noundef !100
  %i.amx = trunc nuw i8 %i.amw to i1
  br i1 %i.amx, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.amy = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefENS_11SmallVectorIcLj32EEENS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_S4_EEEES2_S4_S6_S9_E15LookupBucketForIS2_EEbRKT_RPKS9_(ptr noundef nonnull align 1 dereferenceable(1) %59, ptr noundef nonnull align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.amz = load ptr, ptr %i.b, align 8, !tbaa !208 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ana = load ptr, ptr %59, align 8, !tbaa !210
  %i.anb = load i32, ptr %i.aje, align 8, !tbaa !211
  %i.anc = zext i32 %i.anb to i64
  %i.and = getelementptr inbounds nuw [64 x i8], ptr %i.ana, i64 %i.anc
  %.not200201 = icmp ne ptr %i.amz, %i.and
  %.not200.not = select i1 %i.amy, i1 %.not200201, i1 false
  br i1 %.not200.not, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !108
  %i.ang = getelementptr inbounds nuw i8, ptr %i.amz, i64 24
  %i.anh = load i32, ptr %i.ang, align 8, !tbaa !194
  %i.ani = zext i32 %i.anh to i64
  %i.anj = call noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator11getStringIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964) %56, ptr %i.anf, i64 %i.ani) #18
  br label %.sink.split

bb.dp:                                            ; preds = %bb.dn
  %.sroa.014.0.copyload = load ptr, ptr %71, align 8, !tbaa !103
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !104
  %i.ank = call noundef i32 @_ZNK6hermes3hbc23BytecodeModuleGenerator11getStringIDEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(964) %56, ptr %.sroa.014.0.copyload, i64 %.sroa.2.0.copyload) #18
  br label %.sink.split

.sink.split:                                      ; preds = %bb.dp, %bb.do
  %.sink = phi i32 [ %i.anj, %bb.do ], [ %i.ank, %bb.dp ]
  call void @_ZN6hermes3hbc23BytecodeModuleGenerator17addFunctionSourceEjj(ptr noundef nonnull align 8 dereferenceable(964) %56, i32 noundef %i.alj, i32 noundef %.sink) #18
  br label %bb.dq

bb.dq:                                            ; preds = %.sink.split, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #18
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNK6hermes6Module13findCJSModuleEPNS_8FunctionE.exit.thread, %bb.dq, %_ZNKSt8functionIFbPKN6hermes8FunctionEEEclES3_.exit
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.0169.0205, i64 8
  %.sroa.0169.0 = load ptr, ptr %i.anl, align 8, !tbaa !574 ; 2 uses
  %.not197.a = icmp eq ptr %.sroa.0169.0, %i.aiz
  br i1 %.not197.a, label %._crit_edge, label %bb.dc

bb.ds:                                            ; preds = %.lr.ph211, %.thread193
  %.sroa.0159.0208 = phi ptr [ %.sroa.0159.0206, %.lr.ph211 ], [ %.sroa.0159.0, %.thread193 ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0159.0208, ptr %i.a, align 8, !tbaa !191
  %i.anm = load ptr, ptr %i.mu, align 8, !tbaa !178
  %.not.i.i119 = icmp eq ptr %i.anm, null
  br i1 %.not.i.i119, label %bb.dt, label %_ZNKSt8functionIFbPKN6hermes8FunctionEEEclES3_.exit120

bb.dt:                                            ; preds = %bb.ds
  call void @_ZSt25__throw_bad_function_callv() #20
  unreachable

_ZNKSt8functionIFbPKN6hermes8FunctionEEEclES3_.exit120: ; preds = %bb.ds
  %i.ann = load ptr, ptr %i.ajj, align 8, !tbaa !193
  %i.ano = call noundef zeroext i1 %i.ann(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #18, !inline_history !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ano, label %bb.du, label %.thread193

bb.du:                                            ; preds = %_ZNKSt8functionIFbPKN6hermes8FunctionEEEclES3_.exit120
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #18
  store ptr null, ptr %74, align 8, !tbaa !653
  %i.anp = getelementptr inbounds nuw i8, ptr %.sroa.0159.0208, i64 248
  %i.anq = load i32, ptr %i.anp, align 8, !tbaa !654
  %.not199 = icmp eq i32 %i.anq, 0
  br i1 %.not199, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #18
  %i.anr = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #19, !noalias !655 ; 9 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.anr, i8 0, i64 25, i1 false), !noalias !655
  store ptr %56, ptr %i.ans, align 8, !tbaa !572, !noalias !655
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anr, i64 40
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anr, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ant, i8 0, i64 56, i1 false)
  store i32 -1, ptr %i.anu, align 8, !tbaa !657, !noalias !655
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anr, i64 104
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anr, i64 160
  store i8 0, ptr %i.anw, align 8, !tbaa !669, !noalias !655
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anr, i64 164
  %i.any = getelementptr inbounds nuw i8, ptr %i.anr, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(53) %i.anv, i8 0, i64 53, i1 false), !noalias !655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.anx, i8 0, i64 7, i1 false), !noalias !655
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.any, i8 0, i64 24, i1 false), !noalias !655
  store ptr null, ptr %75, align 8, !tbaa !219
  %i.anz = load ptr, ptr %74, align 8, !tbaa !219 ; 2 uses
  store ptr %i.anr, ptr %74, align 8, !tbaa !219
  %.not.i.i.i.i121 = icmp eq ptr %i.anz, null
  br i1 %.not.i.i.i.i121, label %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit, label %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EEaSEOS5_.exit

_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EEaSEOS5_.exit: ; preds = %bb.dv
  call void @_ZNKSt14default_deleteIN6hermes3hbc25BytecodeFunctionGeneratorEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull %i.anz)
  %.pr = load ptr, ptr %75, align 8, !tbaa !219   ; 2 uses
  %.not.i122 = icmp eq ptr %.pr, null
  br i1 %.not.i122, label %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EEaSEOS5_.exit
  call void @_ZNKSt14default_deleteIN6hermes3hbc25BytecodeFunctionGeneratorEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %75, ptr noundef nonnull %.pr)
  br label %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.dv, %_ZNSt10unique_ptrIN6hermes3hbc25BytecodeFunctionGeneratorESt14default_deleteIS2_EEaSEOS5_.exit, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #18
  br label %bb.ep

bb.dx:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ajk, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ajl, i8 0, i64 20, i1 false)
  store ptr %i.ajn, ptr %i.ajm, align 8, !tbaa !108
  store i32 0, ptr %i.ajo, align 8, !tbaa !194
  store i32 32, ptr %i.ajp, align 4, !tbaa !109
  store ptr %i.ajr, ptr %i.ajq, align 8, !tbaa !108
  store i32 0, ptr %i.ajs, align 8, !tbaa !194
  store i32 32, ptr %i.ajt, align 4, !tbaa !109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.aju, i8 0, i64 20, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ajv, i8 0, i64 28, i1 false)
  store i64 -1, ptr %i.ajw, align 8, !tbaa !679
  store ptr %.sroa.0159.0208, ptr %i.ajx, align 8, !tbaa !680
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6hermes3hbc20HVMRegisterAllocatorE, i64 16), ptr %76, align 8, !tbaa !13
  store i32 0, ptr %i.ajy, align 8, !tbaa !682
  store i32 0, ptr %i.ajz, align 4, !tbaa !683
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #18
  call void @_ZN6hermes21ScopeRegisterAnalysisC1EPNS_8FunctionERNS_17RegisterAllocatorE(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull %.sroa.0159.0208, ptr noundef nonnull align 8 dereferenceable(1952) %76) #18
  %i.aoa = load i8, ptr %i.ra, align 4, !tbaa !455, !range !99, !noundef !100
  %i.aob = trunc nuw i8 %i.aoa to i1
  br i1 %i.aob, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 250, ptr %i.aka, align 8, !tbaa !684
  store i64 10485760, ptr %i.ajw, align 8, !tbaa !679
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #18
  call void @_ZN6hermes17PostOrderAnalysisC1EPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull %.sroa.0159.0208) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #18
  %i.aoc = load ptr, ptr %i.akb, align 8, !tbaa !685, !noalias !686 ; 3 uses
  %i.aod = load ptr, ptr %i.akc, align 8, !tbaa !685, !noalias !687
  store ptr %i.akd, ptr %79, align 8, !tbaa !108
  store i32 0, ptr %i.ake, align 8, !tbaa !194
  store i32 16, ptr %i.akf, align 4, !tbaa !109
  %i.aoe = ptrtoint ptr %i.aoc to i64
  %i.aof = ptrtoint ptr %i.aod to i64
  %i.aog = sub i64 %i.aoe, %i.aof
  %i.aoh = ashr exact i64 %i.aog, 3               ; 8 uses
  %i.aoi = icmp ugt i64 %i.aoh, 16
  br i1 %i.aoi, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %79, ptr noundef nonnull %i.akd, i64 noundef %i.aoh, i64 noundef 8) #18
  %.pre9.i.i = load i32, ptr %i.ake, align 8, !tbaa !194
  %.pre.pre = load ptr, ptr %79, align 8, !tbaa !108
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pre = phi ptr [ %.pre.pre, %bb.ea ], [ %i.akd, %bb.dz ] ; 2 uses
  %i.aoj = phi i32 [ %.pre9.i.i, %bb.ea ], [ 0, %bb.dz ] ; 2 uses
  %i.aok = icmp sgt i64 %i.aoh, 0
  br i1 %i.aok, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit

.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i:             ; preds = %bb.eb
  %85 = zext i32 %i.aoj to i64
  %i.aol = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %85 ; 2 uses
  %xtraiter = and i64 %i.aoh, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %i.aom = phi ptr [ %i.aon, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.aoc, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %.06.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aoq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.aoh, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %.045.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.aop, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.aol, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ]
  %i.aon = getelementptr inbounds i8, ptr %i.aom, i64 -8 ; 3 uses
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !231
  store ptr %i.aoo, ptr %.045.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !231
  %i.aop = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.aoq = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !419

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i
  %.unr = phi ptr [ %i.aoc, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.aon, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.aoh, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.aoq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.045.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.aol, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i.i ], [ %i.aop, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.aor = icmp ult i64 %i.aoh, 8
  br i1 %i.aor, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.aos = phi ptr [ %i.apo, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.apr, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.apq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.aot = getelementptr inbounds i8, ptr %i.aos, i64 -8
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !231
  store ptr %i.aou, ptr %.045.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !231
  %i.aov = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aow = getelementptr inbounds i8, ptr %i.aos, i64 -16
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !231
  store ptr %i.aox, ptr %i.aov, align 8, !tbaa !231
  %i.aoy = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.aoz = getelementptr inbounds i8, ptr %i.aos, i64 -24
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !231
  store ptr %i.apa, ptr %i.aoy, align 8, !tbaa !231
  %i.apb = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.apc = getelementptr inbounds i8, ptr %i.aos, i64 -32
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !231
  store ptr %i.apd, ptr %i.apb, align 8, !tbaa !231
  %i.ape = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.apf = getelementptr inbounds i8, ptr %i.aos, i64 -40
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !231
  store ptr %i.apg, ptr %i.ape, align 8, !tbaa !231
  %i.aph = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.api = getelementptr inbounds i8, ptr %i.aos, i64 -48
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !231
  store ptr %i.apj, ptr %i.aph, align 8, !tbaa !231
  %i.apk = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 48
  %i.apl = getelementptr inbounds i8, ptr %i.aos, i64 -56
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !231
  store ptr %i.apm, ptr %i.apk, align 8, !tbaa !231
  %i.apn = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 56
  %i.apo = getelementptr inbounds i8, ptr %i.aos, i64 -64 ; 2 uses
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !231
  store ptr %i.app, ptr %i.apn, align 8, !tbaa !231
  %i.apq = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.apr = add nsw i64 %.06.i.i.i.i.i.i.i.i.i.i, -8
  %i.aps = icmp sgt i64 %.06.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.aps, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit, !llvm.loop !420

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.eb
  %i.apt = trunc i64 %i.aoh to i32
  %i.apu = add i32 %i.aoj, %i.apt                 ; 2 uses
  store i32 %i.apu, ptr %i.ake, align 8, !tbaa !194
  %i.apv = zext i32 %i.apu to i64
  call void @_ZN6hermes17RegisterAllocator8allocateEN4llvh8ArrayRefIPNS_10BasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(1952) %76, ptr %.pre, i64 %i.apv) #18
  %i.apw = load i32, ptr %4, align 4, !tbaa !107
  %i.apx = icmp eq i32 %i.apw, 7
  br i1 %i.apx, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit
  call void @_ZN6hermes17RegisterAllocator4dumpEv(ptr noundef nonnull align 8 dereferenceable(1952) %76) #18
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj16EEC2ISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_SaIS3_EEEEEvEET_SF_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #18
  %i.apy = load ptr, ptr %i.akg, align 8, !tbaa !446
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 240
  call void @_ZN6hermes11PassManagerC1ERKNS_22CodeGenerationSettingsE(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(392) %i.apz) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.aqa = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !noalias !688 ; 6 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  store i32 0, ptr %i.aqb, align 8, !tbaa !450, !noalias !688
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 16
  store ptr @.str.31, ptr %i.aqc, align 8, !tbaa !103, !noalias !688
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqa, i64 24
  store i64 16, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !104, !noalias !688
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes16LowerStoreInstrsE, i64 16), ptr %i.aqa, align 8, !tbaa !13, !noalias !688
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqa, i64 32
  store ptr %76, ptr %i.aqd, align 8, !tbaa !690, !noalias !688
  store ptr %i.aqa, ptr %14, align 8, !tbaa !453
  call void @_ZN6hermes11PassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull %14) #18
  %i.aqe = load ptr, ptr %14, align 8, !tbaa !454 ; 3 uses
  %.not.i.i123.a = icmp eq ptr %i.aqe, null
  br i1 %.not.i.i123.a, label %_ZN6hermes11PassManager7addPassINS_16LowerStoreInstrsEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit, label %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i: ; preds = %bb.ed
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !13
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %i.aqh = load ptr, ptr %i.aqg, align 8
  call void %i.aqh(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aqe) #18, !inline_history !423
  br label %_ZN6hermes11PassManager7addPassINS_16LowerStoreInstrsEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit

_ZN6hermes11PassManager7addPassINS_16LowerStoreInstrsEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit: ; preds = %bb.ed, %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.aqi = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !noalias !691 ; 6 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  store i32 0, ptr %i.aqj, align 8, !tbaa !450, !noalias !691
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqi, i64 16
  store ptr @.str.32, ptr %i.aqk, align 8, !tbaa !103, !noalias !691
  %.sroa.2.0..sroa_idx.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %i.aqi, i64 24
  store i64 10, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i124, align 8, !tbaa !104, !noalias !691
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes3hbc10LowerCallsE, i64 16), ptr %i.aqi, align 8, !tbaa !13, !noalias !691
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqi, i64 32
  store ptr %76, ptr %i.aql, align 8, !tbaa !693, !noalias !691
  store ptr %i.aqi, ptr %13, align 8, !tbaa !453
  call void @_ZN6hermes11PassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull %13) #18
  %i.aqm = load ptr, ptr %13, align 8, !tbaa !454 ; 3 uses
  %.not.i.i125 = icmp eq ptr %i.aqm, null
  br i1 %.not.i.i125, label %_ZN6hermes11PassManager7addPassINS_3hbc10LowerCallsEJRNS2_20HVMRegisterAllocatorEEEEvDpOT0_.exit, label %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i126

_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i126: ; preds = %_ZN6hermes11PassManager7addPassINS_16LowerStoreInstrsEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit
  %i.aqn = load ptr, ptr %i.aqm, align 8, !tbaa !13
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqn, i64 8
  %i.aqp = load ptr, ptr %i.aqo, align 8
  call void %i.aqp(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aqm) #18, !inline_history !426
  br label %_ZN6hermes11PassManager7addPassINS_3hbc10LowerCallsEJRNS2_20HVMRegisterAllocatorEEEEvDpOT0_.exit

_ZN6hermes11PassManager7addPassINS_3hbc10LowerCallsEJRNS2_20HVMRegisterAllocatorEEEEvDpOT0_.exit: ; preds = %_ZN6hermes11PassManager7addPassINS_16LowerStoreInstrsEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit, %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.aqq = load i8, ptr %i.ra, align 4, !tbaa !455, !range !99, !noundef !100
  %i.aqr = trunc nuw i8 %i.aqq to i1
  br i1 %i.aqr, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %_ZN6hermes11PassManager7addPassINS_3hbc10LowerCallsEJRNS2_20HVMRegisterAllocatorEEEEvDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.aqs = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !noalias !694 ; 6 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  store i32 0, ptr %i.aqt, align 8, !tbaa !450, !noalias !694
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16
  store ptr @.str.33, ptr %i.aqu, align 8, !tbaa !103, !noalias !694
  %.sroa.2.0..sroa_idx.i.i.i.i.i127 = getelementptr inbounds nuw i8, ptr %i.aqs, i64 24
  store i64 14, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i127, align 8, !tbaa !104, !noalias !694
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes14MovEliminationE, i64 16), ptr %i.aqs, align 8, !tbaa !13, !noalias !694
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqs, i64 32
  store ptr %76, ptr %i.aqv, align 8, !tbaa !690, !noalias !694
  store ptr %i.aqs, ptr %12, align 8, !tbaa !453
  call void @_ZN6hermes11PassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull %12) #18
  %i.aqw = load ptr, ptr %12, align 8, !tbaa !454 ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.aqw, null
  br i1 %.not.i.i128, label %_ZN6hermes11PassManager7addPassINS_14MovEliminationEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit, label %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i129

_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i129: ; preds = %bb.ee
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !13
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  %i.aqz = load ptr, ptr %i.aqy, align 8
  call void %i.aqz(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aqw) #18, !inline_history !429
  br label %_ZN6hermes11PassManager7addPassINS_14MovEliminationEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit

_ZN6hermes11PassManager7addPassINS_14MovEliminationEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit: ; preds = %bb.ee, %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.ara = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !noalias !695 ; 6 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 8
  store i32 0, ptr %i.arb, align 8, !tbaa !450, !noalias !695
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ara, i64 16
  store ptr @.str.34, ptr %i.arc, align 8, !tbaa !103, !noalias !695
  %.sroa.2.0..sroa_idx.i.i.i.i.i130 = getelementptr inbounds nuw i8, ptr %i.ara, i64 24
  store i64 19, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i130, align 8, !tbaa !104, !noalias !695
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes3hbc19RecreateCheapValuesE, i64 16), ptr %i.ara, align 8, !tbaa !13, !noalias !695
  %i.ard = getelementptr inbounds nuw i8, ptr %i.ara, i64 32
  store ptr %76, ptr %i.ard, align 8, !tbaa !693, !noalias !695
  store ptr %i.ara, ptr %11, align 8, !tbaa !453
  call void @_ZN6hermes11PassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull %11) #18
  %i.are = load ptr, ptr %11, align 8, !tbaa !454 ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.are, null
  br i1 %.not.i.i131, label %_ZN6hermes11PassManager7addPassINS_3hbc19RecreateCheapValuesEJRNS2_20HVMRegisterAllocatorEEEEvDpOT0_.exit, label %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i132

_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i132: ; preds = %_ZN6hermes11PassManager7addPassINS_14MovEliminationEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !13
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 8
  %i.arh = load ptr, ptr %i.arg, align 8
  call void %i.arh(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.are) #18, !inline_history !432
  br label %_ZN6hermes11PassManager7addPassINS_3hbc19RecreateCheapValuesEJRNS2_20HVMRegisterAllocatorEEEEvDpOT0_.exit

_ZN6hermes11PassManager7addPassINS_3hbc19RecreateCheapValuesEJRNS2_20HVMRegisterAllocatorEEEEvDpOT0_.exit: ; preds = %_ZN6hermes11PassManager7addPassINS_14MovEliminationEJRNS_3hbc20HVMRegisterAllocatorEEEEvDpOT0_.exit, %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ari = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #19, !noalias !696 ; 6 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 8
  store i32 0, ptr %i.arj, align 8, !tbaa !450, !noalias !696
  %i.ark = getelementptr inbounds nuw i8, ptr %i.ari, i64 16
  store ptr @.str.35, ptr %i.ark, align 8, !tbaa !103, !noalias !696
  %.sroa.2.0..sroa_idx.i.i.i.i.i133 = getelementptr inbounds nuw i8, ptr %i.ari, i64 24
end_hunk_0
