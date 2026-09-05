Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopVectorize?download=true
inline.NumInlined: 19623
inline.NumDeleted: 9774
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4llvm24LoopVectorizationPlanner29addReductionResultComputationERSt10unique_ptrINS_5VPlanESt14default_deleteIS2_EERNS_15VPRecipeBuilderENS_12ElementCountE:.lr.ph.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.1: ; preds = %.lr.ph.i218.1, %bb.aj, %bb.ai, %.loopexit.i.1
  %i.qt = phi ptr [ %i.oh, %.loopexit.i.1 ], [ %i.pn, %bb.ai ], [ %i.pn, %bb.aj ], [ %i.pn, %.lr.ph.i218.1 ]
  %i.qu = phi ptr [ %i.og, %.loopexit.i.1 ], [ %i.po, %bb.ai ], [ %i.po, %bb.aj ], [ %i.po, %.lr.ph.i218.1 ]
  %i.qv = phi ptr [ %.lcssa28.sink.i.ph.i.1, %.loopexit.i.1 ], [ %i.pz, %bb.ai ], [ %i.qg, %.lr.ph.i218.1 ], [ %i.qm, %bb.aj ] ; 3 uses
  %i.qw = ptrtoint ptr %i.qv to i64
  %i.qx = ptrtoint ptr %i.qt to i64
  %i.qy = sub i64 %i.qw, %i.qx
  %i.qz = ashr exact i64 %i.qy, 4                 ; 2 uses
  %i.ra = trunc i64 %i.qz to i32
  %i.rb = and i32 %i.ra, 31
  %i.rc = shl nuw i32 1, %i.rb
  %i.rd = lshr i64 %i.qz, 5
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %i.rd ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !236, !noalias !2658
  %i.rg = or i32 %i.rc, %i.rf
  store i32 %i.rg, ptr %i.re, align 4, !tbaa !236, !noalias !2658
  %i.rh = load i32, ptr %i.cd, align 8, !tbaa !1031, !noalias !2658
  %i.ri = add i32 %i.rh, 1
  store i32 %i.ri, ptr %i.cd, align 8, !tbaa !1031, !noalias !2658
  store ptr %i.eu, ptr %i.qv, align 8, !tbaa !716, !noalias !2658
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store ptr %i.kh, ptr %i.rj, align 8, !tbaa !716, !noalias !2658
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JSD_EEESt4pairIPS8_bEOT_DpOT0_.exit.1

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JSD_EEESt4pairIPS8_bEOT_DpOT0_.exit.1: ; preds = %.lr.ph.i.i217.1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  store ptr %20, ptr %21, align 8, !tbaa !1033
  store ptr %21, ptr %.sroa.4238.0..sroa_idx, align 8, !tbaa !1035
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvPN4llvm17VPSingleDefRecipeEEZNS0_24LoopVectorizationPlanner29addReductionResultComputationERSt10unique_ptrINS0_5VPlanESt14default_deleteIS6_EERNS0_15VPRecipeBuilderENS0_12ElementCountEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvPN4llvm17VPSingleDefRecipeEEZNS0_24LoopVectorizationPlanner29addReductionResultComputationERSt10unique_ptrINS0_5VPlanESt14default_deleteIS6_EERNS0_15VPRecipeBuilderENS0_12ElementCountEE3$_0E9_M_invokeERKSt9_Any_dataOS2_">, ptr %i.cf, align 8, !tbaa !224
  %.not155 = icmp eq ptr %i.gm, %i.ks
  br i1 %.not155, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit, label %_ZNKSt8functionIFvPN4llvm17VPSingleDefRecipeEEEclES2_.exit

_ZNKSt8functionIFvPN4llvm17VPSingleDefRecipeEEEclES2_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JSD_EEESt4pairIPS8_bEOT_DpOT0_.exit.1
  %i.rk = icmp eq ptr %i.gm, null
  %i.rl = getelementptr inbounds i8, ptr %i.gm, i64 -96
  %i.rm = select i1 %i.rk, ptr null, ptr %i.rl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.rm, ptr %i.d, align 8, !tbaa !1037
  call void @"_ZNSt17_Function_handlerIFvPN4llvm17VPSingleDefRecipeEEZNS0_24LoopVectorizationPlanner29addReductionResultComputationERSt10unique_ptrINS0_5VPlanESt14default_deleteIS6_EERNS0_15VPRecipeBuilderENS0_12ElementCountEE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28, !inline_history !2648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.rn = load ptr, ptr %20, align 8, !tbaa !1029, !noalias !2661
  %i.ro = load ptr, ptr %i.ce, align 8, !tbaa !1030, !noalias !2661 ; 2 uses
  %i.rp = load i32, ptr %i.cc, align 4, !tbaa !1028, !noalias !2661 ; 2 uses
  %i.rq = icmp eq i32 %i.rp, 0
  br i1 %i.rq, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt8functionIFvPN4llvm17VPSingleDefRecipeEEEclES2_.exit
  %i.rr = add i32 %i.rp, -1                       ; 2 uses
  %i.rs = ptrtoint ptr %i.gm to i64
  %i.rt = mul i64 %i.rs, -4658895280553007687     ; 2 uses
  %i.ru = lshr i64 %i.rt, 31
  %i.rv = xor i64 %i.ru, %i.rt
  %i.rw = trunc i64 %i.rv to i32
  %i.rx = and i32 %i.rr, %i.rw                    ; 3 uses
  %i.ry = zext i32 %i.rx to i64                   ; 2 uses
  %i.rz = lshr i64 %i.ry, 5
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !236
  %i.sc = and i32 %i.rx, 31
  %i.sd = lshr i32 %i.sb, %i.sc
  %i.se = trunc i32 %i.sd to i1
  br i1 %i.se, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit, !prof !299

.lr.ph.i.i:                                       ; preds = %bb.ak, %bb.al
  %i.sf = phi i64 [ %i.sl, %bb.al ], [ %i.ry, %bb.ak ]
  %.017.i.i = phi i32 [ %i.sk, %bb.al ], [ %i.rx, %bb.ak ]
  %i.sg = getelementptr inbounds nuw [16 x i8], ptr %i.rn, i64 %i.sf ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !716
  %i.si = icmp eq ptr %i.gm, %i.sh
  br i1 %i.si, label %bb.am, label %bb.al, !prof !215

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.sj = add nuw i32 %.017.i.i, 1
  %i.sk = and i32 %i.sj, %i.rr                    ; 3 uses
  %i.sl = zext i32 %i.sk to i64                   ; 2 uses
  %i.sm = lshr i64 %i.sl, 5
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !236
  %i.sp = and i32 %i.sk, 31
  %i.sq = lshr i32 %i.so, %i.sp
  %i.sr = trunc i32 %i.sq to i1
  br i1 %i.sr, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit, !prof !300

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !716
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit: ; preds = %bb.al, %bb.am, %bb.ak, %_ZNKSt8functionIFvPN4llvm17VPSingleDefRecipeEEEclES2_.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JSD_EEESt4pairIPS8_bEOT_DpOT0_.exit.1
  %.0 = phi ptr [ %i.kr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JSD_EEESt4pairIPS8_bEOT_DpOT0_.exit.1 ], [ %i.st, %bb.am ], [ null, %_ZNKSt8functionIFvPN4llvm17VPSingleDefRecipeEEEclES2_.exit ], [ null, %bb.ak ], [ null, %bb.al ] ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  call void @_ZN4llvm6VPUser10setOperandEjPNS_7VPValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.su, i32 noundef 1, ptr noundef %.0)
  %i.sv = load ptr, ptr %1, align 8, !tbaa !536
  %i.sw = load ptr, ptr %i.ev, align 8, !tbaa !1020
  %i.sx = call noundef ptr @_ZN4llvm11PoisonValue3getEPNS_4TypeE(ptr noundef %i.sw) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.sx, ptr %i.c, align 8, !tbaa !235
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 456
  %i.sz = call { ptr, i8 } @_ZN4llvm9MapVectorIPNS_5ValueEPNS_9VPIRValueENS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_S4_ELj16EEELj16EE16try_emplace_implIRKS2_JEEESD_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(296) %i.sy, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.sz, 0 ; 3 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.sz, 1
  %i.ta = trunc nuw i8 %.fca.1.extract.i.i to i1
  br i1 %i.ta, label %bb.an, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %.pre.i.i181 = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !1014
  br label %_ZN4llvm5VPlan9getPoisonEPNS_4TypeE.exit

bb.an:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7VPValueES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E6lookupEPKS2_.exit
  %i.tb = load ptr, ptr %i.c, align 8, !tbaa !235 ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 8, !tbaa !170
  %.not.i.i182 = icmp eq i8 %i.tc, 5
  %i.td = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 18 uses
  br i1 %.not.i.i182, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store i8 0, ptr %i.te, align 8, !tbaa !1015
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 32
  store ptr %i.tg, ptr %i.tf, align 8, !tbaa !80
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  store i32 0, ptr %i.th, align 8, !tbaa !132
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 28
  store i32 1, ptr %i.ti, align 4, !tbaa !133
  %i.tj = getelementptr inbounds nuw i8, ptr %i.td, i64 40
  store ptr %i.tb, ptr %i.tj, align 8, !tbaa !698
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm13VPConstantIntE, i64 16), ptr %i.td, align 8, !tbaa !68
  %i.tk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %i.td, ptr %i.tk, align 8, !tbaa !1014
  br label %_ZN4llvm5VPlan9getPoisonEPNS_4TypeE.exit

bb.ap:                                            ; preds = %bb.an
  %i.tl = load ptr, ptr %i.c, align 8, !tbaa !235
  %i.tm = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  store i8 0, ptr %i.tm, align 8, !tbaa !1015
  %i.tn = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %i.to = getelementptr inbounds nuw i8, ptr %i.td, i64 32
  store ptr %i.to, ptr %i.tn, align 8, !tbaa !80
  %i.tp = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  store i32 0, ptr %i.tp, align 8, !tbaa !132
  %i.tq = getelementptr inbounds nuw i8, ptr %i.td, i64 28
  store i32 1, ptr %i.tq, align 4, !tbaa !133
  %i.tr = getelementptr inbounds nuw i8, ptr %i.td, i64 40
  store ptr %i.tl, ptr %i.tr, align 8, !tbaa !698
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm9VPIRValueE, i64 16), ptr %i.td, align 8, !tbaa !68
  %i.ts = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %i.td, ptr %i.ts, align 8, !tbaa !1014
  br label %_ZN4llvm5VPlan9getPoisonEPNS_4TypeE.exit

_ZN4llvm5VPlan9getPoisonEPNS_4TypeE.exit:         ; preds = %._crit_edge.i.i, %bb.ao, %bb.ap
  %i.tt = phi ptr [ %.pre.i.i181, %._crit_edge.i.i ], [ %i.td, %bb.ao ], [ %i.td, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_ZN4llvm7VPValue18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.eu, ptr noundef %i.tt) #28
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !996
  store ptr %i.ae, ptr %i.ad, align 8
  %i.tu = call noundef ptr @_ZN4llvm9VPBuilder20createAnyOfReductionEPNS_7VPValueES2_S2_NS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef %.0, ptr noundef %i.iw, ptr noundef %i.io, ptr %.sroa.076.0.copyload) #28
  %i.tv = load ptr, ptr %i.cf, align 8, !tbaa !71 ; 2 uses
  %.not.i183 = icmp eq ptr %i.tv, null
  br i1 %.not.i183, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm5VPlan9getPoisonEPNS_4TypeE.exit
  %i.tw = call noundef zeroext i1 %i.tv(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %21, i32 noundef 3) #28, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN4llvm5VPlan9getPoisonEPNS_4TypeE.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  %i.tx = load i32, ptr %i.cc, align 4, !tbaa !1028 ; 2 uses
  %i.ty = icmp eq i32 %i.tx, 0
  br i1 %i.ty, label %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.tz = load ptr, ptr %20, align 8, !tbaa !1029
  %i.ua = zext i32 %i.tx to i64                   ; 2 uses
  %i.ub = shl nuw nsw i64 %i.ua, 4
  %i.uc = add nuw nsw i64 %i.ua, 31
  %i.ud = lshr i64 %i.uc, 3
  %i.ue = and i64 %i.ud, 1073741820
  %i.uf = add nuw nsw i64 %i.ue, %i.ub
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.tz, i64 noundef %i.uf, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %bb.bc

bb.as:                                            ; preds = %bb.n
  br i1 %spec.select.i185, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ug = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !841 ; 2 uses
  %.not152 = icmp eq ptr %i.ew, %i.uh
  br i1 %.not152, label %bb.av, label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit187

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit187: ; preds = %bb.at
  %i.ui = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.uj = load i8, ptr %i.ui, align 8, !tbaa !2662, !range !76, !noundef !77
  %28 = trunc nuw i8 %i.uj to i1
  %29 = select i1 %28, i32 41, i32 40             ; 2 uses
  %i.uk = call noundef ptr @_ZN4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gm) #28
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 72
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !995
  %i.un = call noundef ptr @_ZN4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gm) #28
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !652
  store ptr %i.um, ptr %i.aa, align 8, !tbaa !996
  store ptr %i.up, ptr %i.ad, align 8
  %i.uq = call noundef ptr @_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i32 noundef 39, ptr noundef nonnull %i.gm, ptr noundef %i.uh) ; 2 uses
  %i.ur = icmp eq ptr %i.uq, null
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 96
  %spec.select7 = select i1 %i.ur, ptr null, ptr %i.us ; 2 uses
  %i.ut = call noundef ptr @_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i32 noundef %29, ptr noundef %spec.select7, ptr noundef %i.ew) ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.0289.0323, i64 24
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !80
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !716
  %i.uy = icmp eq ptr %i.ux, %i.gm
  br i1 %i.uy, label %bb.au, label %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit

bb.au:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit187
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0289.0323, i64 16
  %i.va = icmp eq ptr %i.ut, null
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ut, i64 96
  %spec.select8 = select i1 %i.va, ptr null, ptr %i.vb
  call void @_ZN4llvm6VPUser10setOperandEjPNS_7VPValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.uz, i32 noundef 1, ptr noundef %spec.select8)
  br label %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit

_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit:    ; preds = %bb.au, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit187
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !996
  store ptr %i.ae, ptr %i.ad, align 8
  br label %bb.av

bb.av:                                            ; preds = %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit, %bb.at, %bb.as
  %.0141 = phi ptr [ %spec.select7, %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit ], [ %i.gm, %bb.at ], [ %i.gm, %bb.as ]
  %.0140 = phi i32 [ %29, %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit ], [ 53, %bb.at ], [ 53, %bb.as ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.0289.0323, i64 156
  %i.vd = load i8, ptr %i.vc, align 4, !tbaa !779 ; 2 uses
  %i.ve = icmp eq i8 %i.vd, 0
  %spec.select.i190 = icmp ult i8 %i.vd, 2
  %i.vf = getelementptr inbounds nuw i8, ptr %.sroa.0289.0323, i64 144
  %i.vg = call i32 @_ZNK4llvm9VPIRFlags22getFastMathFlagsOrNoneEv(ptr noundef nonnull align 1 dereferenceable(3) %i.vf) #28
  store i8 9, ptr %22, align 1, !tbaa !997
  store i16 0, ptr %i.bh, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 %i.vg, ptr %8, align 4
  %i.vh = trunc i32 %i.cy to i8
  %i.vi = and i8 %i.vh, 63
  %i.vj = select i1 %i.ve, i8 64, i8 0
  %i.vk = or disjoint i8 %i.vj, %i.vi
  %i.vl = select i1 %spec.select.i190, i8 -128, i8 0
  %i.vm = or disjoint i8 %i.vk, %i.vl
  store i8 %i.vm, ptr %9, align 2
  call void @_ZN4llvm9VPIRFlags15FastMathFlagsTyC1ERKNS_13FastMathFlagsE(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.vn = load i16, ptr %9, align 2
  store i16 %i.vn, ptr %i.bh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store ptr %.0141, ptr %i.i, align 8, !tbaa !716
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store i16 257, ptr %i.bj, align 8
  %i.vo = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i8 0, i64 48, i1 false)
  store ptr %i.bk, ptr %7, align 8, !tbaa !80
  store i32 0, ptr %i.bl, align 8, !tbaa !132
  store i32 3, ptr %i.bm, align 4, !tbaa !133
  %i.vp = ptrtoint ptr %.sroa.076.0.copyload to i64
  call void @_ZN4llvm13VPInstructionC1EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.vo, i32 noundef 85, ptr nonnull %i.i, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %22, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 %i.vp, ptr noundef nonnull align 8 dereferenceable(34) %23, ptr noundef null) #28
  %i.vq = load ptr, ptr %i.aa, align 8, !tbaa !996 ; 2 uses
  %.not.i.i192 = icmp eq ptr %i.vq, null
  br i1 %.not.i.i192, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.0.0.copyload.i.i193 = load ptr, ptr %i.ad, align 8 ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 72
  store ptr %i.vq, ptr %i.vr, align 8, !tbaa !995
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 16 ; 3 uses
  %i.vt = load ptr, ptr %.sroa.0.0.copyload.i.i193, align 8, !tbaa !752 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  store ptr %.sroa.0.0.copyload.i.i193, ptr %i.vu, align 8, !tbaa !652
  store ptr %i.vt, ptr %i.vs, align 8, !tbaa !752
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  store ptr %i.vs, ptr %i.vv, align 8, !tbaa !652
  store ptr %i.vs, ptr %.sroa.0.0.copyload.i.i193, align 8, !tbaa !752
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194

_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194: ; preds = %bb.aw, %bb.av
  %i.vw = load ptr, ptr %7, align 8, !tbaa !80    ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.bk
  br i1 %i.vx, label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194
  call void @free(ptr noundef %i.vw) #28
  br label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit

_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit: ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  %.not153 = icmp eq i32 %.0140, 53
  br i1 %.not153, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vo, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i8 0, i64 48, i1 false)
  store ptr %i.bn, ptr %24, align 8, !tbaa !80
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  store i32 3, ptr %i.bp, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.vy, ptr %i.b, align 8, !tbaa !716
  %i.vz = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.wa = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef %.0140, ptr noundef null) #28
  store i24 %i.wa, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i16 257, ptr %i.bq, align 8
  call void @_ZN4llvm13VPInstructionC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.vz, i32 noundef %.0140, ptr nonnull %i.b, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(64) %24, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef %i.ew) #28
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 16), ptr %i.vz, align 8, !tbaa !68
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 96), ptr %i.wb, align 8, !tbaa !68
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 96
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 152), ptr %i.wc, align 8, !tbaa !68
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 136
  store ptr null, ptr %i.wd, align 8, !tbaa !698
  %i.we = load ptr, ptr %i.aa, align 8, !tbaa !996 ; 2 uses
  %.not.i.i195 = icmp eq ptr %i.we, null
  br i1 %.not.i.i195, label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i.i196 = load ptr, ptr %i.ad, align 8 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vz, i64 72
  store ptr %i.we, ptr %i.wf, align 8, !tbaa !995
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 16 ; 3 uses
  %i.wh = load ptr, ptr %.sroa.0.0.copyload.i.i196, align 8, !tbaa !752 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  store ptr %.sroa.0.0.copyload.i.i196, ptr %i.wi, align 8, !tbaa !652
  store ptr %i.wh, ptr %i.wg, align 8, !tbaa !752
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store ptr %i.wg, ptr %i.wj, align 8, !tbaa !652
  store ptr %i.wg, ptr %.sroa.0.0.copyload.i.i196, align 8, !tbaa !752
  br label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit

_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wk = load ptr, ptr %24, align 8, !tbaa !80   ; 2 uses
  %i.wl = icmp eq ptr %i.wk, %i.bn
  br i1 %i.wl, label %_ZN4llvm12VPIRMetadataD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit
  call void @free(ptr noundef %i.wk) #28
  br label %_ZN4llvm12VPIRMetadataD2Ev.exit

_ZN4llvm12VPIRMetadataD2Ev.exit:                  ; preds = %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm12VPIRMetadataD2Ev.exit, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit
  %.0142 = phi ptr [ %i.vz, %_ZN4llvm12VPIRMetadataD2Ev.exit ], [ %i.vo, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit
  %.1143 = phi ptr [ %i.tu, %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit ], [ %.0142, %bb.bb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.wm = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !80
  %i.wo = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !132 ; 4 uses
  %i.wq = zext i32 %i.wp to i64                   ; 2 uses
  store ptr %i.cg, ptr %25, align 8, !tbaa !80, !alias.scope !2663
  store i32 0, ptr %i.ch, align 8, !tbaa !132, !alias.scope !2663
  store i32 6, ptr %i.ci, align 4, !tbaa !133, !alias.scope !2663
  %.idx = shl nuw nsw i64 %i.wq, 3
  %i.wr = icmp ugt i32 %i.wp, 6
  br i1 %i.wr, label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread, label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread: ; preds = %bb.bc
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull %i.cg, i64 noundef %i.wq, i64 noundef 8) #28
  %.pre8.pre.i.i.i = load i32, ptr %i.ch, align 8, !tbaa !132, !alias.scope !2663
  %.pre340.pre = load ptr, ptr %25, align 8, !tbaa !80
  %i.ws = zext i32 %.pre8.pre.i.i.i to i64
  br label %bb.bd

_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i: ; preds = %bb.bc
  %.not.i.i.i.i = icmp eq i32 %i.wp, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i
  %.pre8.i.i.i392 = phi i64 [ %i.ws, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i ]
  %.pre340391 = phi ptr [ %.pre340.pre, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread ], [ %i.cg, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i ]
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %.pre340391, i64 %.pre8.i.i.i392
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wt, ptr align 8 %i.wn, i64 %.idx, i1 false)
  %.pre.i.i.i = load i32, ptr %i.ch, align 8, !tbaa !132, !alias.scope !2663
  %.pre339 = load ptr, ptr %25, align 8, !tbaa !80
  br label %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit

_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i, %bb.bd
  %i.wu = phi ptr [ %i.cg, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i ], [ %.pre339, %bb.bd ] ; 3 uses
  %i.wv = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.bd ]
end_hunk_0
