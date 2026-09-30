Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopVectorize?download=true
inline.NumInlined: 19623
inline.NumDeleted: 9774
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN4llvm24LoopVectorizationPlanner29addReductionResultComputationERSt10unique_ptrINS_5VPlanESt14default_deleteIS2_EERNS_15VPRecipeBuilderENS_12ElementCountE:.lr.ph.i
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
  %i.uk = trunc nuw i8 %i.uj to i1
  %i.ul = select i1 %i.uk, i32 41, i32 40         ; 2 uses
  %i.um = call noundef ptr @_ZN4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gm) #28
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 72
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !995
  %i.up = call noundef ptr @_ZN4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gm) #28
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !652
  store ptr %i.uo, ptr %i.aa, align 8, !tbaa !996
  store ptr %i.ur, ptr %i.ad, align 8
  %i.us = call noundef ptr @_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i32 noundef 39, ptr noundef nonnull %i.gm, ptr noundef %i.uh) ; 2 uses
  %i.ut = icmp eq ptr %i.us, null
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 96
  %spec.select7 = select i1 %i.ut, ptr null, ptr %i.uu ; 2 uses
  %i.uv = call noundef ptr @_ZN4llvm9VPBuilder15createWidenCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i32 noundef %i.ul, ptr noundef %spec.select7, ptr noundef %i.ew) ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.0289.0323, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !80
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !716
  %i.va = icmp eq ptr %i.uz, %i.gm
  br i1 %i.va, label %bb.au, label %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit

bb.au:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit187
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0289.0323, i64 16
  %i.vc = icmp eq ptr %i.uv, null
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uv, i64 96
  %spec.select8 = select i1 %i.vc, ptr null, ptr %i.vd
  call void @_ZN4llvm6VPUser10setOperandEjPNS_7VPValueE(ptr noundef nonnull align 8 dereferenceable(40) %i.vb, i32 noundef 1, ptr noundef %spec.select8)
  br label %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit

_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit:    ; preds = %bb.au, %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12VPRecipeBaseELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit187
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !996
  store ptr %i.ae, ptr %i.ad, align 8
  br label %bb.av

bb.av:                                            ; preds = %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit, %bb.at, %bb.as
  %.0141 = phi ptr [ %spec.select7, %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit ], [ %i.gm, %bb.at ], [ %i.gm, %bb.as ]
  %.0140 = phi i32 [ %i.ul, %_ZN4llvm9VPBuilder16InsertPointGuardD2Ev.exit ], [ 53, %bb.at ], [ 53, %bb.as ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0289.0323, i64 156
  %i.vf = load i8, ptr %i.ve, align 4, !tbaa !779 ; 2 uses
  %i.vg = icmp eq i8 %i.vf, 0
  %spec.select.i190 = icmp ult i8 %i.vf, 2
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0289.0323, i64 144
  %i.vi = call i32 @_ZNK4llvm9VPIRFlags22getFastMathFlagsOrNoneEv(ptr noundef nonnull align 1 dereferenceable(3) %i.vh) #28
  store i8 9, ptr %22, align 1, !tbaa !997
  store i16 0, ptr %i.bh, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 %i.vi, ptr %8, align 4
  %i.vj = trunc i32 %i.cy to i8
  %i.vk = and i8 %i.vj, 63
  %i.vl = select i1 %i.vg, i8 64, i8 0
  %28 = or disjoint i8 %i.vl, %i.vk
  %i.vm = select i1 %spec.select.i190, i8 -128, i8 0
  %i.vn = or disjoint i8 %28, %i.vm
  store i8 %i.vn, ptr %9, align 2
  call void @_ZN4llvm9VPIRFlags15FastMathFlagsTyC1ERKNS_13FastMathFlagsE(ptr noundef nonnull align 1 dereferenceable(1) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.vo = load i16, ptr %9, align 2, !tbaa !122
  store i16 %i.vo, ptr %i.bh, align 1, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store ptr %.0141, ptr %i.i, align 8, !tbaa !716
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  store i16 257, ptr %i.bj, align 8
  %i.vp = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i8 0, i64 48, i1 false)
  store ptr %i.bk, ptr %7, align 8, !tbaa !80
  store i32 0, ptr %i.bl, align 8, !tbaa !132
  store i32 3, ptr %i.bm, align 4, !tbaa !133
  %i.vq = ptrtoint ptr %.sroa.076.0.copyload to i64
  call void @_ZN4llvm13VPInstructionC1EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.vp, i32 noundef 85, ptr nonnull %i.i, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %22, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 %i.vq, ptr noundef nonnull align 8 dereferenceable(34) %23, ptr noundef null) #28
  %i.vr = load ptr, ptr %i.aa, align 8, !tbaa !996 ; 2 uses
  %.not.i.i192 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i192, label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.0.0.copyload.i.i193 = load ptr, ptr %i.ad, align 8 ; 3 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 72
  store ptr %i.vr, ptr %i.vs, align 8, !tbaa !995
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vp, i64 16 ; 3 uses
  %i.vu = load ptr, ptr %.sroa.0.0.copyload.i.i193, align 8, !tbaa !752 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  store ptr %.sroa.0.0.copyload.i.i193, ptr %i.vv, align 8, !tbaa !652
  store ptr %i.vu, ptr %i.vt, align 8, !tbaa !752
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  store ptr %i.vt, ptr %i.vw, align 8, !tbaa !652
  store ptr %i.vt, ptr %.sroa.0.0.copyload.i.i193, align 8, !tbaa !752
  br label %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194

_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194: ; preds = %bb.aw, %bb.av
  %i.vx = load ptr, ptr %7, align 8, !tbaa !80    ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.bk
  br i1 %i.vy, label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194
  call void @free(ptr noundef %i.vx) #28
  br label %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit

_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit: ; preds = %_ZN4llvm9VPBuilder20tryInsertInstructionINS_13VPInstructionEEEPT_S4_.exit.i194, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  %.not153 = icmp eq i32 %.0140, 53
  br i1 %.not153, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vp, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i8 0, i64 48, i1 false)
  store ptr %i.bn, ptr %24, align 8, !tbaa !80
  store i32 0, ptr %i.bo, align 8, !tbaa !132
  store i32 3, ptr %i.bp, align 4, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.vz, ptr %i.b, align 8, !tbaa !716
  %i.wa = call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #32 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.wb = call i24 @_ZN4llvm9VPIRFlags15getDefaultFlagsEjPNS_4TypeE(i32 noundef %.0140, ptr noundef null) #28
  store i24 %i.wb, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i16 257, ptr %i.bq, align 8
  call void @_ZN4llvm13VPInstructionC2EjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsERKNS_12VPIRMetadataENS_8DebugLocERKNS_5TwineEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(264) %i.wa, i32 noundef %.0140, ptr nonnull %i.b, i64 1, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(64) %24, i64 0, ptr noundef nonnull align 8 dereferenceable(34) %6, ptr noundef %i.ew) #28
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 16), ptr %i.wa, align 8, !tbaa !68
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 32
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 96), ptr %i.wc, align 8, !tbaa !68
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wa, i64 96
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm21VPInstructionWithTypeE, i64 152), ptr %i.wd, align 8, !tbaa !68
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 136
  store ptr null, ptr %i.we, align 8, !tbaa !698
  %i.wf = load ptr, ptr %i.aa, align 8, !tbaa !996 ; 2 uses
  %.not.i.i195 = icmp eq ptr %i.wf, null
  br i1 %.not.i.i195, label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.sroa.0.0.copyload.i.i196 = load ptr, ptr %i.ad, align 8 ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wa, i64 72
  store ptr %i.wf, ptr %i.wg, align 8, !tbaa !995
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wa, i64 16 ; 3 uses
  %i.wi = load ptr, ptr %.sroa.0.0.copyload.i.i196, align 8, !tbaa !752 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wa, i64 24
  store ptr %.sroa.0.0.copyload.i.i196, ptr %i.wj, align 8, !tbaa !652
  store ptr %i.wi, ptr %i.wh, align 8, !tbaa !752
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  store ptr %i.wh, ptr %i.wk, align 8, !tbaa !652
  store ptr %i.wh, ptr %.sroa.0.0.copyload.i.i196, align 8, !tbaa !752
  br label %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit

_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.wl = load ptr, ptr %24, align 8, !tbaa !80   ; 2 uses
  %i.wm = icmp eq ptr %i.wl, %i.bn
  br i1 %i.wm, label %_ZN4llvm12VPIRMetadataD2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit
  call void @free(ptr noundef %i.wl) #28
  br label %_ZN4llvm12VPIRMetadataD2Ev.exit

_ZN4llvm12VPIRMetadataD2Ev.exit:                  ; preds = %_ZN4llvm9VPBuilder16createScalarCastENS_11Instruction7CastOpsEPNS_7VPValueEPNS_4TypeENS_8DebugLocERKNS_12VPIRMetadataE.exit, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm12VPIRMetadataD2Ev.exit, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit
  %.0142 = phi ptr [ %i.wa, %_ZN4llvm12VPIRMetadataD2Ev.exit ], [ %i.vp, %_ZN4llvm9VPBuilder12createNaryOpEjNS_8ArrayRefIPNS_7VPValueEEERKNS_9VPIRFlagsENS_8DebugLocERKNS_5TwineE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit
  %.1143 = phi ptr [ %i.tu, %_ZN4llvm8DenseMapIPNS_7VPValueES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit ], [ %.0142, %bb.bb ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  %i.wn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !80
  %i.wp = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !132 ; 4 uses
  %i.wr = zext i32 %i.wq to i64                   ; 2 uses
  store ptr %i.cg, ptr %25, align 8, !tbaa !80, !alias.scope !2663
  store i32 0, ptr %i.ch, align 8, !tbaa !132, !alias.scope !2663
  store i32 6, ptr %i.ci, align 4, !tbaa !133, !alias.scope !2663
  %.idx = shl nuw nsw i64 %i.wr, 3
  %i.ws = icmp ugt i32 %i.wq, 6
  br i1 %i.ws, label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread, label %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread: ; preds = %bb.bc
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull %i.cg, i64 noundef %i.wr, i64 noundef 8) #28
  %.pre8.pre.i.i.i = load i32, ptr %i.ch, align 8, !tbaa !132, !alias.scope !2663
  %.pre339.pre = load ptr, ptr %25, align 8, !tbaa !80
  %i.wt = zext i32 %.pre8.pre.i.i.i to i64
  br label %bb.bd

_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i: ; preds = %bb.bc
  %.not.i.i.i.i = icmp eq i32 %i.wq, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i
  %.pre8.i.i.i391 = phi i64 [ %i.wt, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i ]
  %.pre339390 = phi ptr [ %.pre339.pre, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i.thread ], [ %i.cg, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i ]
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.pre339390, i64 %.pre8.i.i.i391
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wu, ptr align 8 %i.wo, i64 %.idx, i1 false)
  %.pre.i.i.i = load i32, ptr %i.ch, align 8, !tbaa !132, !alias.scope !2663
  %.pre338 = load ptr, ptr %25, align 8, !tbaa !80
  br label %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit

_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit: ; preds = %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i, %bb.bd
  %i.wv = phi ptr [ %i.cg, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i ], [ %.pre338, %bb.bd ] ; 3 uses
  %i.ww = phi i32 [ 0, %_ZN4llvm15SmallVectorImplIPNS_6VPUserEE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.bd ]
  %i.wx = add i32 %i.ww, %i.wq                    ; 3 uses
  store i32 %i.wx, ptr %i.ch, align 8, !tbaa !132, !alias.scope !2663
  %i.wy = zext i32 %i.wx to i64
  %.idx327 = shl nuw nsw i64 %i.wy, 3
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wv, i64 %.idx327
  %.not156320 = icmp eq i32 %i.wx, 0
  br i1 %.not156320, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit
  %i.xa = icmp eq ptr %.1143, null                ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.1143, i64 32
  %spec.select10 = select i1 %i.xa, ptr null, ptr %i.xb
  %i.xc = icmp eq i32 %i.cy, 26
  %i.xd = getelementptr inbounds nuw i8, ptr %.1143, i64 96
  %spec.select15 = select i1 %i.xa, ptr null, ptr %i.xd ; 2 uses
  br label %bb.bf

._crit_edge.loopexit:                             ; preds = %.critedge12
  %.pre340 = load ptr, ptr %25, align 8, !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit
  %i.xe = phi ptr [ %.pre340, %._crit_edge.loopexit ], [ %i.wv, %_ZN4llvm9to_vectorINS_14iterator_rangeIPPNS_6VPUserEEEEENS_11SmallVectorINSt12remove_constINSt16remove_referenceIDTdecl9adl_beginclsr3stdE7declvalIRT_EEEEE4typeEE4typeEXsr42CalculateSmallVectorDefaultInlinedElementsISF_EE5valueEEEOS9_.exit ] ; 2 uses
  %i.xf = icmp eq ptr %i.xe, %i.cg
  br i1 %i.xf, label %_ZN4llvm11SmallVectorIPNS_6VPUserELj6EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.xe) #28
  br label %_ZN4llvm11SmallVectorIPNS_6VPUserELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_6VPUserELj6EED2Ev.exit: ; preds = %._crit_edge, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %i.xg = load i32, ptr %i.cx, align 4, !tbaa !731 ; 5 uses
  %.off = add i32 %i.xg, -25
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.bx, label %bb.bn

bb.bf:                                            ; preds = %.lr.ph, %.critedge12
  %.0139321 = phi ptr [ %i.wv, %.lr.ph ], [ %i.yz, %.critedge12 ] ; 2 uses
  %i.xh = load ptr, ptr %.0139321, align 8, !tbaa !733 ; 13 uses
  %i.xi = getelementptr inbounds i8, ptr %i.xh, i64 -32 ; 2 uses
  %i.xj = icmp eq ptr %spec.select10, %i.xh
  br i1 %i.xj, label %.critedge12, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 40
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !995
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 40
end_hunk_0
