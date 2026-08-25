Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PGOCtxProfFlattening?download=true
inline.NumInlined: 775
inline.NumDeleted: 557
begin_hunk_0_@_ZN4llvm24PGOCtxProfFlatteningPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.fv = getelementptr inbounds [16 x i8], ptr %i.ft, i64 %i.fu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 8 dereferenceable(1) %.val.pre.i.i, i64 %i.fq, i1 false)
  br label %_ZSt13move_backwardIP18InstrProfValueDataS1_ET0_T_S3_S2_.exit.i40.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.fw = icmp eq i64 %i.fq, 16
  br i1 %i.fw, label %bb.ad, label %_ZSt13move_backwardIP18InstrProfValueDataS1_ET0_T_S3_S2_.exit.i40.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn18.i26.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(16) %.val.pre.i.i, i64 16, i1 false), !tbaa.struct !94
  br label %_ZSt13move_backwardIP18InstrProfValueDataS1_ET0_T_S3_S2_.exit.i40.i.i.i.i.i.i.i

_ZSt13move_backwardIP18InstrProfValueDataS1_ET0_T_S3_S2_.exit.i40.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  store <2 x i64> %.sroa.0216.0.copyload, ptr %.val.pre.i.i, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %.sroa.0.0.copyload.i.i29.i.i.i.i.i.i.i = load i64, ptr %.019.i25.i.i.i.i.i.i.i, align 8, !tbaa !44
  %i.fy = getelementptr i8, ptr %.pn18.i26.i.i.i.i.i.i.i, i64 8
  %.0.val12.i.i30.i.i.i.i.i.i.i = load i64, ptr %i.fy, align 8, !tbaa !92
  %i.fz = icmp ugt i64 %.0.val.i27.i.i.i.i.i.i.i, %.0.val12.i.i30.i.i.i.i.i.i.i
  br i1 %i.fz, label %.lr.ph.i.i36.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP18InstrProfValueDataN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120annotateIndirectCallERN4llvm6ModuleERNS6_8CallBaseERKNS6_8DenseMapIjNSB_ImmNS6_12DenseMapInfoImvEENS6_6detail12DenseMapPairImmEEEENSC_IjvEENSF_IjSH_EEEERKNS6_17InstrProfCallsiteEE3$_0EEEvT_T0_.exit.i31.i.i.i.i.i.i.i"

.lr.ph.i.i36.i.i.i.i.i.i.i:                       ; preds = %bb.ae, %.lr.ph.i.i36.i.i.i.i.i.i.i
  %.0913.i.i37.i.i.i.i.i.i.i = phi ptr [ %.0.i.i38.i.i.i.i.i.i.i, %.lr.ph.i.i36.i.i.i.i.i.i.i ], [ %.019.i25.i.i.i.i.i.i.i, %bb.ae ] ; 3 uses
  %.0.i.i38.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0913.i.i37.i.i.i.i.i.i.i, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0913.i.i37.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0.i.i38.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !94
  %i.ga = getelementptr i8, ptr %.0913.i.i37.i.i.i.i.i.i.i, i64 -24
  %.0.val.i.i39.i.i.i.i.i.i.i = load i64, ptr %i.ga, align 8, !tbaa !92
  %i.gb = icmp ugt i64 %.0.val.i27.i.i.i.i.i.i.i, %.0.val.i.i39.i.i.i.i.i.i.i
  br i1 %i.gb, label %.lr.ph.i.i36.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIP18InstrProfValueDataN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120annotateIndirectCallERN4llvm6ModuleERNS6_8CallBaseERKNS6_8DenseMapIjNSB_ImmNS6_12DenseMapInfoImvEENS6_6detail12DenseMapPairImmEEEENSC_IjvEENSF_IjSH_EEEERKNS6_17InstrProfCallsiteEE3$_0EEEvT_T0_.exit.i31.i.i.i.i.i.i.i", !llvm.loop !95

"_ZSt25__unguarded_linear_insertIP18InstrProfValueDataN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120annotateIndirectCallERN4llvm6ModuleERNS6_8CallBaseERKNS6_8DenseMapIjNSB_ImmNS6_12DenseMapInfoImvEENS6_6detail12DenseMapPairImmEEEENSC_IjvEENSF_IjSH_EEEERKNS6_17InstrProfCallsiteEE3$_0EEEvT_T0_.exit.i31.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i36.i.i.i.i.i.i.i, %bb.ae
  %.09.lcssa.i.i32.i.i.i.i.i.i.i = phi ptr [ %.019.i25.i.i.i.i.i.i.i, %bb.ae ], [ %.0.i.i38.i.i.i.i.i.i.i, %.lr.ph.i.i36.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i29.i.i.i.i.i.i.i, ptr %.09.lcssa.i.i32.i.i.i.i.i.i.i, align 8, !tbaa !44
  %.sroa.4.0..09.sroa_idx.i.i33.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i32.i.i.i.i.i.i.i, i64 8
  store i64 %.0.val.i27.i.i.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i33.i.i.i.i.i.i.i, align 8, !tbaa !44
  br label %bb.af

bb.af:                                            ; preds = %"_ZSt25__unguarded_linear_insertIP18InstrProfValueDataN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120annotateIndirectCallERN4llvm6ModuleERNS6_8CallBaseERKNS6_8DenseMapIjNSB_ImmNS6_12DenseMapInfoImvEENS6_6detail12DenseMapPairImmEEEENSC_IjvEENSF_IjSH_EEEERKNS6_17InstrProfCallsiteEE3$_0EEEvT_T0_.exit.i31.i.i.i.i.i.i.i", %_ZSt13move_backwardIP18InstrProfValueDataS1_ET0_T_S3_S2_.exit.i40.i.i.i.i.i.i.i
  %.0.i34.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i25.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i35.i.i.i.i.i.i.i = icmp eq ptr %.0.i34.i.i.i.i.i.i.i, %i.eq
  br i1 %.not.i35.i.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorI18InstrProfValueDataLj2EEEZN12_GLOBAL__N_120annotateIndirectCallERNS_6ModuleERNS_8CallBaseERKNS_8DenseMapIjNSA_ImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEENSB_IjvEENSE_IjSG_EEEERKNS_17InstrProfCallsiteEE3$_0EEvOT_T0_.exit.i.i", label %bb.z, !llvm.loop !96

"_ZN4llvm4sortIRNS_11SmallVectorI18InstrProfValueDataLj2EEEZN12_GLOBAL__N_120annotateIndirectCallERNS_6ModuleERNS_8CallBaseERKNS_8DenseMapIjNSA_ImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEENSB_IjvEENSE_IjSG_EEEERKNS_17InstrProfCallsiteEE3$_0EEvOT_T0_.exit.i.i": ; preds = %.lr.ph.i.i.i14.i.i, %bb.af, %"_ZSt25__unguarded_linear_insertIP18InstrProfValueDataN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120annotateIndirectCallERN4llvm6ModuleERNS6_8CallBaseERKNS6_8DenseMapIjNSB_ImmNS6_12DenseMapInfoImvEENS6_6detail12DenseMapPairImmEEEENSC_IjvEENSF_IjSH_EEEERKNS6_17InstrProfCallsiteEE3$_0EEEvT_T0_.exit.i15.i.i.i.i.i.i.i", %.lr.ph.i.i.i14.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i, %._crit_edge.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E5beginEv.exit.i.i, %bb.p
  %.0.lcssa65.i.i = phi i64 [ %i.gs, %bb.af ], [ 0, %.lr.ph.i.i.i14.i.i.preheader ], [ %i.gs, %.preheader.i.i.i.i.i.i.i.i ], [ %i.gs, %._crit_edge.i.i ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E5beginEv.exit.i.i ], [ 0, %bb.p ], [ %i.gs, %"_ZSt25__unguarded_linear_insertIP18InstrProfValueDataN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120annotateIndirectCallERN4llvm6ModuleERNS6_8CallBaseERKNS6_8DenseMapIjNSB_ImmNS6_12DenseMapInfoImvEENS6_6detail12DenseMapPairImmEEEENSC_IjvEENSF_IjSH_EEEERKNS6_17InstrProfCallsiteEE3$_0EEEvT_T0_.exit.i15.i.i.i.i.i.i.i" ], [ 0, %.lr.ph.i.i.i14.i.i ]
  %i.gc = load ptr, ptr %6, align 8, !tbaa !74
  %i.gd = load i32, ptr %i.x, align 8, !tbaa !76  ; 2 uses
  %i.ge = zext i32 %i.gd to i64
  call void @_ZN4llvm17annotateValueSiteERNS_6ModuleERNS_11InstructionENS_8ArrayRefI18InstrProfValueDataEEmNS_18InstrProfValueKindEj(ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.cc, ptr %i.gc, i64 %i.ge, i64 noundef %.0.lcssa65.i.i, i32 noundef 0, i32 noundef %i.gd) #13
  %i.gf = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.w
  br i1 %i.gg, label %_ZN4llvm11SmallVectorI18InstrProfValueDataLj2EED2Ev.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %"_ZN4llvm4sortIRNS_11SmallVectorI18InstrProfValueDataLj2EEEZN12_GLOBAL__N_120annotateIndirectCallERNS_6ModuleERNS_8CallBaseERKNS_8DenseMapIjNSA_ImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEENSB_IjvEENSE_IjSG_EEEERKNS_17InstrProfCallsiteEE3$_0EEvOT_T0_.exit.i.i"
  call void @free(ptr noundef %i.gf) #13
  br label %_ZN4llvm11SmallVectorI18InstrProfValueDataLj2EED2Ev.exit.i.i

_ZN4llvm11SmallVectorI18InstrProfValueDataLj2EED2Ev.exit.i.i: ; preds = %bb.ag, %"_ZN4llvm4sortIRNS_11SmallVectorI18InstrProfValueDataLj2EEEZN12_GLOBAL__N_120annotateIndirectCallERNS_6ModuleERNS_8CallBaseERKNS_8DenseMapIjNSA_ImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEENSB_IjvEENSE_IjSG_EEEERKNS_17InstrProfCallsiteEE3$_0EEvOT_T0_.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %_ZN12_GLOBAL__N_120annotateIndirectCallERN4llvm6ModuleERNS0_8CallBaseERKNS0_8DenseMapIjNS5_ImmNS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImmEEEENS6_IjvEENS9_IjSB_EEEERKNS0_17InstrProfCallsiteE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E5beginEv.exit.i.i, %_ZN4llvm16DenseMapIteratorImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEELb1EEppEv.exit.i.i
  %.035.i.i = phi i64 [ %i.gs, %_ZN4llvm16DenseMapIteratorImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEELb1EEppEv.exit.i.i ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E5beginEv.exit.i.i ]
  %.pn.i.i = phi i64 [ %i.hn, %_ZN4llvm16DenseMapIteratorImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEELb1EEppEv.exit.i.i ], [ %i.eo, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E5beginEv.exit.i.i ] ; 2 uses
  %.sroa.016.034.i.i = getelementptr i8, ptr %i.dr, i64 %.pn.i.i ; 2 uses
  %i.gh = load i64, ptr %.sroa.016.034.i.i, align 8, !tbaa !98 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.016.034.i.i, i64 8 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !100 ; 2 uses
  %i.gk = load i32, ptr %i.x, align 8, !tbaa !76  ; 2 uses
  %i.gl = load i32, ptr %i.y, align 4, !tbaa !77
  %.not.i.i.i = icmp ult i32 %i.gk, %i.gl
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ah, !prof !46

bb.ah:                                            ; preds = %.lr.ph.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseI18InstrProfValueDataLb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 %i.gh, i64 %i.gj)
  br label %_ZN4llvm23SmallVectorTemplateBaseI18InstrProfValueDataLb1EE9push_backES1_.exit.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.gm = zext i32 %i.gk to i64
  %i.gn = load ptr, ptr %6, align 8, !tbaa !74
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %i.gm ; 2 uses
  store i64 %i.gh, ptr %i.go, align 1
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.gj, ptr %.sroa.3.0..sroa_idx.i.i.i, align 1
  %i.gp = load i32, ptr %i.x, align 8, !tbaa !76
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.x, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseI18InstrProfValueDataLb1EE9push_backES1_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseI18InstrProfValueDataLb1EE9push_backES1_.exit.i.i: ; preds = %bb.ai, %bb.ah
  %i.gr = load i64, ptr %i.gi, align 8, !tbaa !100
  %i.gs = add i64 %i.gr, %.035.i.i                ; 5 uses
  %i.gt = add i64 %.pn.i.i, 16
  %i.gu = ashr exact i64 %i.gt, 4                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.gu, %i.dz
  br i1 %.not.i.i.i.i, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseI18InstrProfValueDataLb1EE9push_backES1_.exit.i.i
  %i.gv = lshr i64 %i.gu, 5                       ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !41
  %i.gy = trunc nuw i64 %i.gu to i32
  %i.gz = and i32 %i.gy, 31
  %i.ha = shl nsw i32 -1, %i.gz
  %i.hb = and i32 %i.gx, %i.ha                    ; 2 uses
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph.i.i.i33.i.preheader, label %_ZN4llvm16DenseMapIteratorImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEELb1EEppEv.exit.i.i

.lr.ph.i.i.i33.i.preheader:                       ; preds = %bb.aj
  %i.hd = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %i.he = icmp eq i64 %i.hd, %i.eb
  br i1 %i.he, label %._crit_edge.i.i, label %.lr.ph196

.lr.ph.i.i.i33.i:                                 ; preds = %.lr.ph196
  %i.hf = add i64 %i.hh, 1                        ; 2 uses
  %i.hg = icmp eq i64 %i.hf, %i.eb
  br i1 %i.hg, label %._crit_edge.i.i, label %.lr.ph196, !llvm.loop !90

.lr.ph196:                                        ; preds = %.lr.ph.i.i.i33.i.preheader, %.lr.ph.i.i.i33.i
  %i.hh = phi i64 [ %i.hf, %.lr.ph.i.i.i33.i ], [ %i.hd, %.lr.ph.i.i.i33.i.preheader ] ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !41 ; 2 uses
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph.i.i.i33.i, label %_ZN4llvm16DenseMapIteratorImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEELb1EEppEv.exit.i.i, !llvm.loop !90

_ZN4llvm16DenseMapIteratorImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEELb1EEppEv.exit.i.i: ; preds = %.lr.ph196, %bb.aj
  %.012.lcssa.i.i.i.i = phi i64 [ %i.gv, %bb.aj ], [ %i.hh, %.lr.ph196 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.hb, %bb.aj ], [ %i.hj, %.lr.ph196 ]
  %i.hl = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 9
  %i.hm = shl nuw nsw i32 %i.hl, 4
  %.idx80.i.i = zext nneg i32 %i.hm to i64
  %i.hn = or disjoint i64 %.idx.i.i.i.i, %.idx80.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.hn, %.idx79.i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_120annotateIndirectCallERN4llvm6ModuleERNS0_8CallBaseERKNS0_8DenseMapIjNS5_ImmNS0_12DenseMapInfoImvEENS0_6detail12DenseMapPairImmEEEENS6_IjvEENS9_IjSB_EEEERKNS0_17InstrProfCallsiteE.exit.i: ; preds = %_ZN4llvm11SmallVectorI18InstrProfValueDataLj2EED2Ev.exit.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNS1_ImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEENS2_IjvEENS5_IjS7_EEEEjS7_S8_S9_E4findERKj.exit.i.i, %bb.l, %_ZN4llvm8dyn_castINS_8CallBaseENS_11InstructionEEEDcPT0_.exit.i, %.lr.ph.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.034.073.i, i64 8
  %.sroa.034.0.i = load ptr, ptr %i.ho, align 8, !tbaa !48 ; 2 uses
  %.not56.i = icmp eq ptr %.sroa.034.0.i, %i.ca
  br i1 %.not56.i, label %._crit_edge.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %._crit_edge.i, %bb.j, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImNS1_IjNS1_ImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEENS2_IjvEENS5_IjS7_EEEES3_NS5_ImSA_EEEEmSA_S3_SB_E4findERKm.exit.i, %bb.f
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.050.081.i, i64 8
  %.sroa.050.0.i = load ptr, ptr %i.hp, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.050.0.i, %i.t
  br i1 %.not.i, label %._crit_edge84.i, label %bb.f

_ZN12_GLOBAL__N_121annotateIndirectCallsERN4llvm6ModuleERKNS0_20PGOContextualProfileE.exit: ; preds = %._crit_edge84.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_121annotateIndirectCallsERN4llvm6ModuleERKNS0_20PGOContextualProfileE.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @_ZNK4llvm20PGOContextualProfile7flattenEv(ptr dead_on_unwind nonnull writable sret(%"class.std::map.90") align 8 %8, ptr noundef nonnull align 8 dereferenceable(152) %i.f) #13
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.068.094 = load ptr, ptr %i.hq, align 8, !tbaa !23 ; 2 uses
  %.not7695 = icmp eq ptr %.sroa.068.094, %i.hr
  br i1 %.not7695, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.an

._crit_edge:                                      ; preds = %bb.ay, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  %i.hy = load ptr, ptr @_ZN4llvm21ProfileSummaryBuilder14DefaultCutoffsE, align 8, !tbaa !101, !noalias !103 ; 2 uses
  %i.hz = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm21ProfileSummaryBuilder14DefaultCutoffsE, i64 8), align 8, !tbaa !106, !noalias !103 ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.hz, 2              ; 4 uses
  %.not.i.i.i.i32 = icmp eq i64 %i.hz, 0
  br i1 %.not.i.i.i.i32, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %._crit_edge
  %i.ia = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i.i: ; preds = %._crit_edge
  %i.ib = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #14, !noalias !103 ; 5 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %.idx.i ; 2 uses
  %.not.i33 = icmp eq i64 %i.hz, 1
  br i1 %.not.i33, label %bb.am, label %bb.al, !prof !107

bb.al:                                            ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ib, ptr align 4 %i.hy, i64 %.idx.i, i1 false), !noalias !103
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.am:                                            ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i.i
  %i.id = load i32, ptr %i.hy, align 4, !tbaa !41, !noalias !103
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !41, !noalias !103
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.am, %bb.al, %.thread.i.i.i
  %.sroa.7.0.a = phi ptr [ null, %.thread.i.i.i ], [ %i.ib, %bb.am ], [ %i.ib, %bb.al ]
  %.sroa.060.0 = phi ptr [ %i.ia, %.thread.i.i.i ], [ %i.ic, %bb.am ], [ %i.ic, %bb.al ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 0, ptr %i.ie, align 8, !tbaa !108
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.if, align 8, !tbaa !113
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.ie, ptr %i.ig, align 8, !tbaa !114
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.ie, ptr %i.ih, align 8, !tbaa !115
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.ii, align 8, !tbaa !116
  %i.ij = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %.sroa.7.0.a, ptr %i.ij, align 8, !tbaa !117
  %i.ik = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %.sroa.060.0, ptr %i.ik, align 8, !tbaa !119
  %i.il = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store ptr %.sroa.060.0, ptr %i.il, align 8, !tbaa !120
  %i.im = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.im, i8 0, i64 64, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !114 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not77103 = icmp eq ptr %i.io, %i.ip
  br i1 %.not77103, label %._crit_edge106, label %.lr.ph105

bb.an:                                            ; preds = %.lr.ph, %bb.ay
  %.sroa.068.096 = phi ptr [ %.sroa.068.094, %.lr.ph ], [ %.sroa.068.0, %bb.ay ] ; 6 uses
  %i.iq = getelementptr inbounds i8, ptr %.sroa.068.096, i64 -64 ; 5 uses
  %i.ir = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48) %i.iq) #13
  br i1 %i.ir, label %bb.ay, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.is = call noundef i64 @_ZNK4llvm11GlobalValue7getGUIDEv(ptr noundef nonnull align 8 dereferenceable(48) %i.iq) #13 ; 2 uses
  %i.it = load ptr, ptr %i.hs, align 8, !tbaa !113 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ao, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.it, %bb.ao ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.ht, %bb.ao ] ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !44
  %i.iw = icmp ult i64 %i.iv, %i.is               ; 3 uses
  %.19.i.i.i = select i1 %i.iw, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.iw, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !121 ; 2 uses
  %.not.i.i.i35 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i35, label %_ZNKSt8_Rb_treeImSt4pairIKmN4llvm11SmallVectorImLj1EEEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !122

_ZNKSt8_Rb_treeImSt4pairIKmN4llvm11SmallVectorImLj1EEEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ix = icmp eq ptr %.19.i.i.i, %i.ht
  br i1 %i.ix, label %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread, label %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit

_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmN4llvm11SmallVectorImLj1EEEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.iw, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.iy = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44
  %i.iz = icmp ult i64 %i.is, %i.iy
  br i1 %i.iz, label %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread, label %bb.ap

_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmN4llvm11SmallVectorImLj1EEEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.ao, %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.068.096, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.068.096, i64 16 ; 2 uses
  %.sroa.05.08.i = load ptr, ptr %i.ja, align 8, !tbaa !23 ; 2 uses
  %.not9.i = icmp eq ptr %.sroa.05.08.i, %i.jb
  br i1 %.not9.i, label %_ZN12_GLOBAL__N_124clearColdFunctionProfileERN4llvm8FunctionE.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread, %.lr.ph.i36
  %.sroa.05.010.i = phi ptr [ %.sroa.05.0.i, %.lr.ph.i36 ], [ %.sroa.05.08.i, %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread ] ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !123
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -24
  call void @_ZN4llvm11Instruction11setMetadataEjPNS_6MDNodeE(ptr noundef nonnull align 8 dereferenceable(72) %i.je, i32 noundef 2, ptr noundef null) #13
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 8
  %.sroa.05.0.i = load ptr, ptr %i.jf, align 8, !tbaa !23 ; 2 uses
  %.not.i37 = icmp eq ptr %.sroa.05.0.i, %i.jb
  br i1 %.not.i37, label %_ZN12_GLOBAL__N_124clearColdFunctionProfileERN4llvm8FunctionE.exit, label %.lr.ph.i36

_ZN12_GLOBAL__N_124clearColdFunctionProfileERN4llvm8FunctionE.exit: ; preds = %.lr.ph.i36, %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread
  call void @_ZN4llvm8Function13setEntryCountEmPKNS_8DenseSetImNS_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(140) %i.iq, i64 noundef 0, ptr noundef null) #13
  br label %bb.ay

bb.ap:                                            ; preds = %_ZNKSt3mapImN4llvm11SmallVectorImLj1EEESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !74 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !76
  %i.jk = zext i32 %i.jj to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4llvm16ProfileAnnotatorC1ERKNS_8FunctionENS_8ArrayRefImEE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(140) %i.iq, ptr %i.jh, i64 %i.jk) #13
  %i.jl = load i64, ptr %i.jh, align 8, !tbaa !44
  call void @_ZN4llvm8Function13setEntryCountEmPKNS_8DenseSetImNS_12DenseMapInfoImvEEEE(ptr noundef nonnull align 8 dereferenceable(140) %i.iq, i64 noundef %i.jl, ptr noundef null) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %i.hu, ptr %5, align 8, !tbaa !74
  store i32 0, ptr %i.hv, align 8, !tbaa !76
  store i32 2, ptr %i.hw, align 4, !tbaa !77
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.068.096, i64 24
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.068.096, i64 16 ; 2 uses
  %.sroa.038.049.i = load ptr, ptr %i.jm, align 8, !tbaa !23 ; 2 uses
  %.not4350.i = icmp eq ptr %.sroa.038.049.i, %i.jn
  br i1 %.not4350.i, label %_ZN12_GLOBAL__N_117assignProfileDataERN4llvm8FunctionENS0_8ArrayRefImEE.exit, label %.lr.ph53.i

._crit_edge54.i:                                  ; preds = %bb.ax
  %.pre.i44 = load ptr, ptr %5, align 8, !tbaa !74 ; 2 uses
  %i.jo = icmp eq ptr %.pre.i44, %i.hu
  br i1 %i.jo, label %_ZN12_GLOBAL__N_117assignProfileDataERN4llvm8FunctionENS0_8ArrayRefImEE.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge54.i
  call void @free(ptr noundef %.pre.i44) #13
  br label %_ZN12_GLOBAL__N_117assignProfileDataERN4llvm8FunctionENS0_8ArrayRefImEE.exit

.lr.ph53.i:                                       ; preds = %bb.ap, %bb.ax
  %.sroa.038.051.i = phi ptr [ %.sroa.038.0.i43, %bb.ax ], [ %.sroa.038.049.i, %bb.ap ] ; 4 uses
  %i.jp = getelementptr inbounds i8, ptr %.sroa.038.051.i, i64 -24
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.038.051.i, i64 32
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.038.051.i, i64 24 ; 4 uses
  %.sroa.034.046.i = load ptr, ptr %i.jq, align 8, !tbaa !48 ; 2 uses
  %.not4447.i = icmp eq ptr %.sroa.034.046.i, %i.jr
  br i1 %.not4447.i, label %._crit_edge.i42, label %.lr.ph.i39

._crit_edge.i42:                                  ; preds = %bb.at, %.lr.ph53.i
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !123
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 -24
  %i.ju = call { ptr, ptr } @_ZNK4llvm11Instruction10successorsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.jt) #15 ; 2 uses
  %i.jv = extractvalue { ptr, ptr } %i.ju, 0
  %i.jw = extractvalue { ptr, ptr } %i.ju, 1
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.jv to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = and i64 %i.jz, 137438953408
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %bb.ax, label %bb.au

.lr.ph.i39:                                       ; preds = %.lr.ph53.i, %bb.at
  %.sroa.034.048.i = phi ptr [ %.sroa.034.0.i41, %bb.at ], [ %.sroa.034.046.i, %.lr.ph53.i ] ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %.sroa.034.048.i, i64 -24 ; 3 uses
  %i.kd = load i8, ptr %i.kc, align 8, !tbaa !51
  %.not.i40 = icmp eq i8 %i.kd, 89
  br i1 %.not.i40, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %.lr.ph.i39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 0, ptr %i.b, align 8, !tbaa !44
  %i.ke = call noundef zeroext i1 @_ZNK4llvm16ProfileAnnotator21getSelectInstrProfileERNS_10SelectInstERmS3_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(76) %i.kc, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13
  br i1 %i.ke, label %bb.as, label %.sink.split.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.kf = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  store i64 %i.kf, ptr %i.c, align 8, !tbaa !44
  %i.kg = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  store i64 %i.kg, ptr %i.hx, align 8, !tbaa !44
  %i.kh = call i64 @llvm.umax.i64(i64 %i.kf, i64 %i.kg)
  call void @_ZN4llvm15setProfMetadataEPNS_11InstructionENS_8ArrayRefImEEm(ptr noundef nonnull %i.kc, ptr nonnull %i.c, i64 2, i64 noundef %i.kh) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.at

bb.at:                                            ; preds = %.sink.split.i, %.lr.ph.i39
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.034.048.i, i64 8
  %.sroa.034.0.i41 = load ptr, ptr %i.ki, align 8, !tbaa !48 ; 2 uses
  %.not44.i = icmp eq ptr %.sroa.034.0.i41, %i.jr
  br i1 %.not44.i, label %._crit_edge.i42, label %.lr.ph.i39

bb.au:                                            ; preds = %._crit_edge.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 0, ptr %i.d, align 8, !tbaa !44
  %i.kj = call noundef zeroext i1 @_ZNK4llvm16ProfileAnnotator24getOutgoingBranchWeightsERNS_10BasicBlockERNS_15SmallVectorImplImEERm(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(80) %i.jp, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #13
  br i1 %i.kj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.kk = load ptr, ptr %i.jr, align 8, !tbaa !123
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -24
  %i.km = load ptr, ptr %5, align 8, !tbaa !74
  %i.kn = load i32, ptr %i.hv, align 8, !tbaa !76
  %i.ko = zext i32 %i.kn to i64
  %i.kp = load i64, ptr %i.d, align 8, !tbaa !44
  call void @_ZN4llvm15setProfMetadataEPNS_11InstructionENS_8ArrayRefImEEm(ptr noundef nonnull %i.kl, ptr %i.km, i64 %i.ko, i64 noundef %i.kp) #13
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i42
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.038.051.i, i64 8
  %.sroa.038.0.i43 = load ptr, ptr %i.kq, align 8, !tbaa !23 ; 2 uses
  %.not43.i = icmp eq ptr %.sroa.038.0.i43, %i.jn
  br i1 %.not43.i, label %._crit_edge54.i, label %.lr.ph53.i

_ZN12_GLOBAL__N_117assignProfileDataERN4llvm8FunctionENS0_8ArrayRefImEE.exit: ; preds = %bb.ap, %._crit_edge54.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN4llvm16ProfileAnnotatorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_124clearColdFunctionProfileERN4llvm8FunctionE.exit, %_ZN12_GLOBAL__N_117assignProfileDataERN4llvm8FunctionENS0_8ArrayRefImEE.exit, %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.068.096, i64 8
  %.sroa.068.0 = load ptr, ptr %i.kr, align 8, !tbaa !23 ; 2 uses
  %.not76 = icmp eq ptr %.sroa.068.0, %i.hr
  br i1 %.not76, label %._crit_edge, label %bb.an

._crit_edge106:                                   ; preds = %._crit_edge102, %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @_ZN4llvm23InstrProfSummaryBuilder10getSummaryEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.129") align 8 %10, ptr noundef nonnull align 8 dereferenceable(136) %9) #13
  %i.ks = load ptr, ptr %10, align 8, !tbaa !124
  %i.kt = load ptr, ptr %2, align 8, !tbaa !126, !nonnull !12, !align !229
  %i.ku = call noundef ptr @_ZN4llvm14ProfileSummary5getMDERNS_11LLVMContextEbb(ptr noundef nonnull align 8 dereferenceable(88) %i.ks, ptr noundef nonnull align 8 dereferenceable(8) %i.kt, i1 noundef zeroext true, i1 noundef zeroext true) #13
  call void @_ZN4llvm6Module17setProfileSummaryEPNS_8MetadataENS_14ProfileSummary4KindE(ptr noundef nonnull align 8 dereferenceable(1288) %2, ptr noundef %i.ku, i32 noundef 0) #13
  %i.kv = load ptr, ptr %10, align 8, !tbaa !124  ; 4 uses
  %.not.i45 = icmp eq ptr %i.kv, null
end_hunk_0
