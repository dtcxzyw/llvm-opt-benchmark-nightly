Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstructionCombining?download=true
inline.NumInlined: 12731
inline.NumDeleted: 6421
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4llvm16InstCombinerImpl22visitGetElementPtrInstERNS_17GetElementPtrInstE:bb.a
bb.fw:                                            ; preds = %bb.fu
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 8 dereferenceable(12) %i.afi) #24
  br label %_ZN4llvm5APIntC2ERKS0_.exit557

_ZN4llvm5APIntC2ERKS0_.exit557:                   ; preds = %bb.fv, %bb.fw
  %i.afo = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntmIEm(ptr noundef nonnull align 8 dereferenceable(16) %39, i64 noundef %i.afg) #24, !noalias !874 ; 0 uses
  %i.afp = load i32, ptr %i.afj, align 8, !tbaa !126, !noalias !874 ; 3 uses
  %i.afq = load i64, ptr %39, align 8, !noalias !874 ; 3 uses
  store i32 0, ptr %i.afj, align 8, !tbaa !126, !noalias !874
  %i.afr = load i8, ptr %i.aez, align 8, !tbaa !362, !range !46, !noundef !47
  %i.afs = trunc nuw i8 %i.afr to i1
  %i.aft = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 4 uses
  br i1 %i.afs, label %bb.fx, label %_ZN4llvm5APIntD2Ev.exit558.thread

bb.fx:                                            ; preds = %_ZN4llvm5APIntC2ERKS0_.exit557
  %i.afu = load i32, ptr %i.aft, align 8, !tbaa !126
  %i.afv = icmp ult i32 %i.afu, 65
  br i1 %i.afv, label %_ZN4llvm5APIntD2Ev.exit558.thread995, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.afw = load ptr, ptr %37, align 8, !tbaa !127 ; 2 uses
  %i.afx = icmp eq ptr %i.afw, null
  br i1 %i.afx, label %_ZN4llvm5APIntD2Ev.exit558.thread995, label %_ZN4llvm5APIntD2Ev.exit558

_ZN4llvm5APIntD2Ev.exit558.thread:                ; preds = %_ZN4llvm5APIntC2ERKS0_.exit557
  store i32 %i.afp, ptr %i.aft, align 8, !tbaa !126
  store i64 %i.afq, ptr %37, align 8
  store i8 1, ptr %i.aez, align 8, !tbaa !362
  br label %_ZN4llvm5APIntD2Ev.exit559

_ZN4llvm5APIntD2Ev.exit558.thread995:             ; preds = %bb.fy, %bb.fx
  store i64 %i.afq, ptr %37, align 8
  store i32 %i.afp, ptr %i.aft, align 8, !tbaa !126
  br label %_ZN4llvm5APIntD2Ev.exit559

_ZN4llvm5APIntD2Ev.exit558:                       ; preds = %bb.fy
  call void @_ZdaPv(ptr noundef nonnull %i.afw) #25
  %.pre886.pre = load i32, ptr %i.afj, align 8, !tbaa !126
  %i.afy = icmp ugt i32 %.pre886.pre, 64
  store i64 %i.afq, ptr %37, align 8
  store i32 %i.afp, ptr %i.aft, align 8, !tbaa !126
  br i1 %i.afy, label %bb.fz, label %_ZN4llvm5APIntD2Ev.exit559

bb.fz:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit558
  %i.afz = load ptr, ptr %39, align 8, !tbaa !127 ; 2 uses
  %i.aga = icmp eq ptr %i.afz, null
  br i1 %i.aga, label %_ZN4llvm5APIntD2Ev.exit559, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_ZdaPv(ptr noundef nonnull %i.afz) #25
  br label %_ZN4llvm5APIntD2Ev.exit559

.critedge36:                                      ; preds = %_ZN4llvm14has_single_bitImvEEbT_.exit554.thread, %_ZN4llvm14has_single_bitImvEEbT_.exit554, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #24
  %.pre896 = ptrtoint ptr %i.c to i64
  br label %bb.gb

bb.gb:                                            ; preds = %.critedge36, %bb.ft
  %.pre-phi897 = phi i64 [ %.pre896, %.critedge36 ], [ %i.afc, %bb.ft ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  store i64 %.pre-phi897, ptr %40, align 8, !tbaa !238, !alias.scope !875
  %i.agb = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %i.d, ptr %i.agb, align 8, !tbaa !343
  %.sroa.4645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %40, i64 16
  store i8 0, ptr %.sroa.4645.0..sroa_idx, align 8, !tbaa !191
  %i.agc = call noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_21PossiblyExactOperatorENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_8ap_matchINS_5APIntEEELj20ELb0EEEEEbPT_RKT0_(ptr noundef nonnull %i.adr, ptr noundef nonnull align 8 dereferenceable(24) %40)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  br i1 %i.agc, label %bb.gc, label %bb.gh

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.agd = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store i32 1, ptr %i.agd, align 8, !tbaa !126
  store i64 0, ptr %41, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.age = load ptr, ptr %i.d, align 8, !tbaa !339
  call void @_ZN4llvm5APInt7udivremERKS0_mRS0_Rm(ptr noundef nonnull align 8 dereferenceable(12) %i.age, i64 noundef %.fca.0.extract96, ptr noundef nonnull align 8 dereferenceable(12) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #24
  %i.agf = load i64, ptr %i.e, align 8, !tbaa !319
  %i.agg = icmp eq i64 %i.agf, 0
  br i1 %i.agg, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.agh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8optionalIN4llvm5APIntEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(12) %41) ; 0 uses
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.agi = load i32, ptr %i.agd, align 8, !tbaa !126
  %i.agj = icmp ugt i32 %i.agi, 64
  br i1 %i.agj, label %bb.gf, label %_ZN4llvm5APIntD2Ev.exit562

bb.gf:                                            ; preds = %bb.ge
  %i.agk = load ptr, ptr %41, align 8, !tbaa !127 ; 2 uses
  %i.agl = icmp eq ptr %i.agk, null
  br i1 %i.agl, label %_ZN4llvm5APIntD2Ev.exit562, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @_ZdaPv(ptr noundef nonnull %i.agk) #25
  br label %_ZN4llvm5APIntD2Ev.exit562

_ZN4llvm5APIntD2Ev.exit562:                       ; preds = %bb.ge, %bb.gf, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %_ZN4llvm5APIntD2Ev.exit559

bb.gh:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  store i64 %.pre-phi897, ptr %42, align 8, !tbaa !238, !alias.scope !876
  %i.agm = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %i.d, ptr %i.agm, align 8, !tbaa !343
  %.sroa.4641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %42, i64 16
  store i8 0, ptr %.sroa.4641.0..sroa_idx, align 8, !tbaa !191
  %i.agn = call noundef zeroext i1 @_ZN4llvm12PatternMatch5matchINS_21PossiblyExactOperatorENS0_14BinaryOp_matchINS_19PatternMatchHelpers10match_bindINS_5ValueEEENS0_8ap_matchINS_5APIntEEELj21ELb0EEEEEbPT_RKT0_(ptr noundef nonnull %i.adr, ptr noundef nonnull align 8 dereferenceable(24) %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #24
  br i1 %i.agn, label %bb.gi, label %_ZN4llvm5APIntD2Ev.exit559

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.ago = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store i32 1, ptr %i.ago, align 8, !tbaa !126
  store i64 0, ptr %43, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.agp = load ptr, ptr %i.d, align 8, !tbaa !339
  call void @_ZN4llvm5APInt7sdivremERKS0_lRS0_Rl(ptr noundef nonnull align 8 dereferenceable(12) %i.agp, i64 noundef %.fca.0.extract96, ptr noundef nonnull align 8 dereferenceable(12) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #24
  %i.agq = call noundef zeroext i1 @_ZNK4llvm5APInt9isAllOnesEv(ptr noundef nonnull align 8 dereferenceable(12) %43)
  %i.agr = load i64, ptr %i.f, align 8
  %i.ags = icmp ne i64 %i.agr, 0
  %or.cond38.not = select i1 %i.agq, i1 true, i1 %i.ags
  br i1 %or.cond38.not, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.agt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8optionalIN4llvm5APIntEEaSIRS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES6_ISt6__and_IJSt9is_scalarIS1_ES7_IS1_NSt5decayISA_E4typeEEEEESt16is_constructibleIS1_JSA_EESt13is_assignableIS4_SA_EEERS2_E4typeEOSA_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(12) %43) ; 0 uses
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.agu = load i32, ptr %i.ago, align 8, !tbaa !126
  %i.agv = icmp ugt i32 %i.agu, 64
  br i1 %i.agv, label %bb.gl, label %_ZN4llvm5APIntD2Ev.exit565

bb.gl:                                            ; preds = %bb.gk
  %i.agw = load ptr, ptr %43, align 8, !tbaa !127 ; 2 uses
  %i.agx = icmp eq ptr %i.agw, null
  br i1 %i.agx, label %_ZN4llvm5APIntD2Ev.exit565, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  call void @_ZdaPv(ptr noundef nonnull %i.agw) #25
  br label %_ZN4llvm5APIntD2Ev.exit565

_ZN4llvm5APIntD2Ev.exit565:                       ; preds = %bb.gk, %bb.gl, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #24
  br label %_ZN4llvm5APIntD2Ev.exit559

_ZN4llvm5APIntD2Ev.exit559:                       ; preds = %_ZN4llvm5APIntD2Ev.exit558.thread995, %_ZN4llvm5APIntD2Ev.exit558.thread, %bb.ga, %bb.fz, %_ZN4llvm5APIntD2Ev.exit558, %_ZN4llvm5APIntD2Ev.exit562, %_ZN4llvm5APIntD2Ev.exit565, %bb.gh
  %i.agy = load i8, ptr %i.aez, align 8, !tbaa !362, !range !46, !noundef !47
  %i.agz = trunc nuw i8 %i.agy to i1
  br i1 %i.agz, label %bb.gn, label %bb.gq

bb.gn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.aha = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ahb = load i8, ptr %i.adr, align 8, !tbaa !110 ; 2 uses
  %i.ahc = icmp ugt i8 %i.ahb, 29
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.adr, i64 2
  %i.ahe = load i16, ptr %i.ahd, align 2
  %i.ahf = zext i16 %i.ahe to i32
  %i.ahg = zext i8 %i.ahb to i32
  %i.ahh = add nsw i32 %i.ahg, -30
  %.1.i566 = select i1 %i.ahc, i32 %i.ahh, i32 %i.ahf
  %i.ahi = load ptr, ptr %i.c, align 8, !tbaa !133 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !148
  %i.ahl = call noundef ptr @_ZN4llvm11ConstantInt3getEPNS_4TypeERKNS_5APIntE(ptr noundef %i.ahk, ptr noundef nonnull align 8 dereferenceable(12) %37) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  %i.ahm = getelementptr inbounds nuw i8, ptr %44, i64 32
  store i16 257, ptr %i.ahm, align 8
  %i.ahn = call noundef ptr @_ZN4llvm13IRBuilderBase16CreateExactBinOpENS_11Instruction9BinaryOpsEPNS_5ValueES4_bRKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88) %i.aha, i32 noundef %.1.i566, ptr noundef nonnull %i.ahi, ptr noundef %i.ahl, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(34) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  store ptr %i.ahn, ptr %i.g, align 8, !tbaa !133
  %i.aho = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !135, !nonnull !47, !align !55
  %i.ahq = call noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8) %i.ahp) #24
  %i.ahr = load i32, ptr %i.q, align 4
  %i.ahs = and i32 %i.ahr, 268435455
  %i.aht = zext nneg i32 %i.ahs to i64
  %i.ahu = sub nsw i64 0, %i.aht
  %i.ahv = getelementptr inbounds [32 x i8], ptr %1, i64 %i.ahu
  %i.ahw = load ptr, ptr %i.ahv, align 8, !tbaa !115
  %i.ahx = call i32 @_ZNK4llvm17GetElementPtrInst14getNoWrapFlagsEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.ahy = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i16 257, ptr %i.ahy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ahz = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %i.ahq, ptr noundef %i.ahw, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 8 dereferenceable(34) %45, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %6) ; 2 uses
  call void @_ZN4llvm17GetElementPtrInst14setNoWrapFlagsENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %i.ahz, i32 %i.ahx) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  %.pre887 = load i8, ptr %i.aez, align 8, !tbaa !362, !range !46
  %i.aia = trunc nuw i8 %.pre887 to i1
  store i8 0, ptr %i.aez, align 8, !tbaa !362
  %62 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %63 = load i32, ptr %62, align 8
  %64 = icmp ugt i32 %63, 64
  %or.cond.i.i.i = select i1 %i.aia, i1 %64, i1 false
  br i1 %or.cond.i.i.i, label %bb.go, label %.thread1001

bb.go:                                            ; preds = %bb.gn
  %i.aib = load ptr, ptr %37, align 8, !tbaa !127 ; 2 uses
  %i.aic = icmp eq ptr %i.aib, null
  br i1 %i.aic, label %.thread1001, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @_ZdaPv(ptr noundef nonnull %i.aib) #25
  br label %.thread1001

.thread792:                                       ; preds = %_ZN4llvm8dyn_castINS_21PossiblyExactOperatorENS_5ValueEEEDcPT0_.exit, %_ZNK4llvm5Value9hasOneUseEv.exit, %bb.fp, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread799

.thread1001:                                      ; preds = %bb.gp, %bb.go, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.ia

bb.gq:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit559
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread799

.thread799:                                       ; preds = %bb.gq, %bb.fk, %bb.fl, %.thread781, %.thread792, %_ZNK4llvm17GetElementPtrInst22getPointerAddressSpaceEv.exit, %.thread776
  %i.aid = load i32, ptr %i.bw, align 8
  %i.aie = and i32 %i.aid, 254
  %spec.select.i567 = icmp eq i32 %i.aie, 18
  br i1 %spec.select.i567, label %bb.ia, label %bb.gr

bb.gr:                                            ; preds = %.thread799
  %i.aif = call noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst10isInBoundsEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #24
  br i1 %i.aif, label %bb.hi, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.aig = load ptr, ptr %i.de, align 8, !tbaa !129, !nonnull !47, !align !55
  %i.aih = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !148 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 8
  %i.aik = load i32, ptr %i.aij, align 8          ; 2 uses
  %i.ail = and i32 %i.aik, 254
  %spec.select.i.i.i = icmp eq i32 %i.ail, 18
  br i1 %spec.select.i.i.i, label %bb.gt, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.gt:                                            ; preds = %bb.gs
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aii, i64 16
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !171
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !172
  %.phi.trans.insert.i568 = getelementptr inbounds nuw i8, ptr %i.aio, i64 8
  %.pre.i569 = load i32, ptr %.phi.trans.insert.i568, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.gs, %bb.gt
  %i.aip = phi i32 [ %.pre.i569, %bb.gt ], [ %i.aik, %bb.gs ]
  %i.aiq = lshr i32 %i.aip, 8
  %i.air = call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %i.aig, i32 noundef %i.aiq) #24
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 12
  %i.ait = load i32, ptr %i.ais, align 4, !tbaa !872 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  %i.aiu = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  store i32 %i.ait, ptr %i.aiu, align 8, !tbaa !126
  %i.aiv = icmp ult i32 %i.ait, 65                ; 2 uses
  br i1 %i.aiv, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit
  store i64 0, ptr %46, align 8, !tbaa !127
  br label %_ZN4llvm5APIntC2Ejmbb.exit570

bb.gv:                                            ; preds = %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %46, i64 noundef 0, i1 noundef zeroext false) #24
  br label %_ZN4llvm5APIntC2Ejmbb.exit570

_ZN4llvm5APIntC2Ejmbb.exit570:                    ; preds = %bb.gu, %bb.gv
  %i.aiw = load ptr, ptr %i.de, align 8, !tbaa !129, !nonnull !47, !align !55
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr null, ptr %5, align 8
  %i.aix = call noundef ptr @_ZNK4llvm5Value33stripAndAccumulateConstantOffsetsERKNS_10DataLayoutERNS_5APIntEbbNS_12function_refIFbRS0_S5_EEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(912) %i.aiw, ptr noundef nonnull align 8 dereferenceable(12) %46, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.llvm::function_ref.1034") align 8 %5, i1 noundef zeroext false) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.aiy = load ptr, ptr %i.de, align 8, !tbaa !129, !nonnull !47, !align !55
  %i.aiz = call noundef i64 @_ZNK4llvm5Value30getPointerDereferenceableBytesERKNS_10DataLayoutERbPb(ptr noundef nonnull align 8 dereferenceable(24) %i.aix, ptr noundef nonnull align 8 dereferenceable(912) %i.aiy, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef null) #24 ; 3 uses
  %i.aja = load i8, ptr %i.h, align 1, !tbaa !191, !range !46, !noundef !47
  %i.ajb = trunc nuw i8 %i.aja to i1
  %i.ajc = icmp eq i64 %i.aiz, 0
  %or.cond41.not = or i1 %i.ajc, %i.ajb
  br i1 %or.cond41.not, label %bb.hf, label %bb.gw

bb.gw:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit570
  %i.ajd = load ptr, ptr %i.de, align 8, !tbaa !129, !nonnull !47, !align !55
  %i.aje = call noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst24accumulateConstantOffsetERKNS_10DataLayoutERNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(912) %i.ajd, ptr noundef nonnull align 8 dereferenceable(12) %46) #24
  br i1 %i.aje, label %bb.gx, label %bb.hf

bb.gx:                                            ; preds = %bb.gw
  %i.ajf = load i32, ptr %i.aiu, align 8, !tbaa !126 ; 2 uses
  %i.ajg = add i32 %i.ajf, -1                     ; 2 uses
  %i.ajh = and i32 %i.ajg, 63
  %i.aji = zext nneg i32 %i.ajh to i64
  %i.ajj = shl nuw i64 1, %i.aji
  %i.ajk = icmp ult i32 %i.ajf, 65
  %i.ajl = load ptr, ptr %46, align 8
  %i.ajm = lshr i32 %i.ajg, 6
  %i.ajn = zext nneg i32 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %i.ajn
  %.in.i.i.i.i = select i1 %i.ajk, ptr %46, ptr %i.ajo
  %i.ajp = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !127
  %i.ajq = and i64 %i.ajj, %i.ajp
  %.not.i571 = icmp eq i64 %i.ajq, 0
  br i1 %.not.i571, label %bb.gy, label %bb.hf

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  %i.ajr = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  store i32 %i.ait, ptr %i.ajr, align 8, !tbaa !126
  br i1 %i.aiv, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  store i64 %i.aiz, ptr %47, align 8, !tbaa !127
  br label %_ZN4llvm5APIntC2Ejmbb.exit572

bb.ha:                                            ; preds = %bb.gy
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %47, i64 noundef %i.aiz, i1 noundef zeroext false) #24
  br label %_ZN4llvm5APIntC2Ejmbb.exit572

_ZN4llvm5APIntC2Ejmbb.exit572:                    ; preds = %bb.gz, %bb.ha
  %i.ajs = call noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %46, ptr noundef nonnull align 8 dereferenceable(12) %47) #26
  %i.ajt = icmp sgt i32 %i.ajs, 0                 ; 2 uses
  br i1 %i.ajt, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit572
  %i.aju = load ptr, ptr %i.bo, align 8, !tbaa !341
  %i.ajv = load ptr, ptr %12, align 8, !tbaa !37
  %i.ajw = load i32, ptr %i.y, align 8, !tbaa !141
  %i.ajx = zext i32 %i.ajw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  %i.ajy = call { ptr, i64 } @_ZNK4llvm5Value7getNameEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #24 ; 2 uses
  %i.ajz = extractvalue { ptr, i64 } %i.ajy, 0
  %i.aka = extractvalue { ptr, i64 } %i.ajy, 1
  %i.akb = getelementptr inbounds nuw i8, ptr %48, i64 32
  store i8 5, ptr %i.akb, align 8, !tbaa !196
  %i.akc = getelementptr inbounds nuw i8, ptr %48, i64 33
  store i8 1, ptr %i.akc, align 1, !tbaa !197
  store ptr %i.ajz, ptr %48, align 8, !tbaa !127
  %i.akd = getelementptr inbounds nuw i8, ptr %48, i64 8
  store i64 %i.aka, ptr %i.akd, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.ake = call noundef ptr @_ZN4llvm17GetElementPtrInst6CreateEPNS_4TypeEPNS_5ValueENS_8ArrayRefIS4_EERKNS_5TwineENS_14InsertPositionE(ptr noundef %i.aju, ptr noundef nonnull %i.v, ptr %i.ajv, i64 %i.ajx, ptr noundef nonnull align 8 dereferenceable(34) %48, ptr noundef nonnull byval(%"class.llvm::InsertPosition") align 8 %4) ; 2 uses
  call void @_ZN4llvm17GetElementPtrInst14setNoWrapFlagsENS_14GEPNoWrapFlagsE(ptr noundef nonnull align 8 dereferenceable(88) %i.ake, i32 3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  br label %bb.hc

bb.hc:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit572, %bb.hb
  %.28 = phi ptr [ %i.ake, %bb.hb ], [ %.5, %_ZN4llvm5APIntC2Ejmbb.exit572 ]
  %i.akf = load i32, ptr %i.ajr, align 8, !tbaa !126
  %i.akg = icmp ugt i32 %i.akf, 64
  br i1 %i.akg, label %bb.hd, label %_ZN4llvm5APIntD2Ev.exit573

bb.hd:                                            ; preds = %bb.hc
  %i.akh = load ptr, ptr %47, align 8, !tbaa !127 ; 2 uses
  %i.aki = icmp eq ptr %i.akh, null
  br i1 %i.aki, label %_ZN4llvm5APIntD2Ev.exit573, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_ZdaPv(ptr noundef nonnull %i.akh) #25
  br label %_ZN4llvm5APIntD2Ev.exit573

_ZN4llvm5APIntD2Ev.exit573:                       ; preds = %bb.hc, %bb.hd, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #24
  br label %bb.hf

bb.hf:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit573, %_ZN4llvm5APIntC2Ejmbb.exit570, %bb.gx, %bb.gw
  %cond7 = phi i1 [ %i.ajt, %_ZN4llvm5APIntD2Ev.exit573 ], [ true, %bb.gw ], [ true, %bb.gx ], [ true, %_ZN4llvm5APIntC2Ejmbb.exit570 ]
  %.30 = phi ptr [ %.28, %_ZN4llvm5APIntD2Ev.exit573 ], [ %.5, %bb.gw ], [ %.5, %bb.gx ], [ %.5, %_ZN4llvm5APIntC2Ejmbb.exit570 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.akj = load i32, ptr %i.aiu, align 8, !tbaa !126
  %i.akk = icmp ugt i32 %i.akj, 64
  br i1 %i.akk, label %bb.hg, label %_ZN4llvm5APIntD2Ev.exit574

bb.hg:                                            ; preds = %bb.hf
  %i.akl = load ptr, ptr %46, align 8, !tbaa !127 ; 2 uses
  %i.akm = icmp eq ptr %i.akl, null
  br i1 %i.akm, label %_ZN4llvm5APIntD2Ev.exit574, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @_ZdaPv(ptr noundef nonnull %i.akl) #25
  br label %_ZN4llvm5APIntD2Ev.exit574

_ZN4llvm5APIntD2Ev.exit574:                       ; preds = %bb.hf, %bb.hg, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br i1 %cond7, label %bb.hi, label %bb.ia

bb.hi:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit574, %bb.gr
  %i.akn = call noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst23hasNoUnsignedSignedWrapEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #24
  br i1 %i.akn, label %bb.hj, label %.critedge43

bb.hj:                                            ; preds = %bb.hi
  %i.ako = call noundef zeroext i1 @_ZNK4llvm17GetElementPtrInst17hasNoUnsignedWrapEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #24
  br i1 %i.ako, label %.critedge43, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.akp = load i32, ptr %i.q, align 4
  %i.akq = and i32 %i.akp, 268435455
  %i.akr = zext nneg i32 %i.akq to i64
  %i.aks = sub nsw i64 0, %i.akr
  %i.akt = getelementptr inbounds [32 x i8], ptr %1, i64 %i.aks
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 32
  %i.akv = call fastcc noundef zeroext i1 @"_ZN4llvm6all_ofINS_14iterator_rangeIPNS_3UseEEEZNS_16InstCombinerImpl22visitGetElementPtrInstERNS_17GetElementPtrInstEE3$_3EEbOT_T0_"(ptr nonnull %i.aku, ptr nonnull %1, ptr %0, ptr %1)
  br i1 %i.akv, label %bb.hl, label %.critedge43

bb.hl:                                            ; preds = %bb.hk
  %i.akw = call i32 @_ZNK4llvm17GetElementPtrInst14getNoWrapFlagsEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #24
  %i.akx = or i32 %i.akw, 4
end_hunk_0
