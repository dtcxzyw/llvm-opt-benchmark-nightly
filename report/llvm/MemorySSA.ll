Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MemorySSA?download=true
inline.NumInlined: 5484
inline.NumDeleted: 2897
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_113ClobberWalker11findClobberERN4llvm14BatchAAResultsEPNS1_12MemoryAccessERNS_18UpwardsMemoryQueryERj:bb.a
  br i1 %.not.i.i38.i224.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i, label %bb.al

bb.al:                                            ; preds = %.critedge.i223.i
  %i.na = load i8, ptr %i.mn, align 8, !tbaa !76, !noalias !877 ; 2 uses
  switch i8 %i.na, label %.thread9.i226.i [
    i8 88, label %.split.i
    i8 36, label %.split.i
    i8 42, label %.split.i
  ]

.split.i:                                         ; preds = %bb.al, %bb.al, %bb.al
  %i.nb = load ptr, ptr %i.mh, align 8, !tbaa !521, !noalias !877, !nonnull !25, !align !526
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.nd = call noundef zeroext i8 @_ZN4llvm9AAResults13getModRefInfoEPKNS_11InstructionEPKNS_8CallBaseERNS_11AAQueryInfoE(ptr noundef nonnull align 8 dereferenceable(56) %i.nb, ptr noundef nonnull %.val.i191.i, ptr noundef nonnull %i.mn, ptr noundef nonnull align 8 dereferenceable(506) %i.nc) #26, !noalias !877
  %i.ne = and i8 %i.nd, 2
  %.not316.i = icmp eq i8 %i.ne, 0
  store i8 %i.mk, ptr %i.mj, align 8, !tbaa !858, !noalias !877
  br i1 %.not316.i, label %..thread43_crit_edge.i192.i, label %.loopexit323.i

.thread9.i226.i:                                  ; preds = %bb.al
  %.not.i227.i = icmp eq i8 %i.mp, 63
  %i.nf = icmp eq i8 %i.na, 63
  %or.cond.i228.i = and i1 %.not.i227.i, %i.nf
  br i1 %or.cond.i228.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i230.i, label %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i

_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i230.i: ; preds = %.thread9.i226.i
  %i.ng = getelementptr i8, ptr %i.mn, i64 2
  %.val.i231.i = load i16, ptr %i.ng, align 2, !tbaa !527, !noalias !877 ; 2 uses
  %i.nh = getelementptr i8, ptr %.val.i191.i, i64 2
  %.val37.i232.i = load i16, ptr %i.nh, align 2, !tbaa !527, !noalias !877 ; 2 uses
  %i.ni = and i16 %.val.i231.i, 1
  %i.nj = and i16 %i.ni, %.val37.i232.i
  %or.cond.not.i.i233.i = icmp eq i16 %i.nj, 0
  br i1 %or.cond.not.i.i233.i, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.i, label %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i230.i
  store i8 %i.mk, ptr %i.mj, align 8, !tbaa !858, !noalias !877
  br label %.loopexit323.i

_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i: ; preds = %.thread9.i226.i, %.critedge.i223.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull readonly align 8 dereferenceable(81) %i.fh, i64 56, i1 false), !tbaa.struct !535, !noalias !877
  store i8 1, ptr %i.bs, align 8, !tbaa !528, !noalias !874
  %i.nk = load ptr, ptr %i.mh, align 8, !tbaa !521, !noalias !877, !nonnull !25, !align !526
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.nm = call noundef zeroext i8 @_ZN4llvm9AAResults13getModRefInfoEPKNS_11InstructionERKSt8optionalINS_14MemoryLocationEERNS_11AAQueryInfoE(ptr noundef nonnull align 8 dereferenceable(56) %i.nk, ptr noundef nonnull %.val.i191.i, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(506) %i.nl) #26, !noalias !877
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !874
  %i.nn = and i8 %i.nm, 2
  %.not317.i = icmp eq i8 %i.nn, 0
  store i8 %i.mk, ptr %i.mj, align 8, !tbaa !858, !noalias !877
  br i1 %.not317.i, label %..thread43_crit_edge.i192.i, label %.loopexit323.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i: ; preds = %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i, %_ZN4llvm8dyn_castINS_13IntrinsicInstENS_11InstructionEEEDcPT0_.exit.i237.i
  store i8 %i.mk, ptr %i.mj, align 8, !tbaa !858, !noalias !877
  br label %..thread43_crit_edge.i192.i

_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.i230.i
  %i.no = and i16 %.val.i231.i, 896
  %i.np = icmp eq i16 %i.no, 896
  %i.nq = lshr i16 %.val37.i232.i, 7
  %i.nr = and i16 %i.nq, 7
  %i.ns = zext nneg i16 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  %i.nv = load i8, ptr %i.nu, align 4, !tbaa !54, !range !24, !noalias !874, !noundef !25
  %i.nw = trunc nuw i8 %i.nv to i1
  %i.nx = or i1 %i.np, %i.nw
  store i8 %i.mk, ptr %i.mj, align 8, !tbaa !858, !noalias !877
  br i1 %i.nx, label %.loopexit323.i, label %..thread43_crit_edge.i192.i

..thread43_crit_edge.i192.i:                      ; preds = %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.i, %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread291.i, %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i, %.split.i
  %.pre.i193.i = load i8, ptr %.sroa.035.057.i176.i, align 8, !tbaa !76, !noalias !877
  br label %.thread43.i179.i

.thread43.i179.i:                                 ; preds = %..thread43_crit_edge.i192.i, %bb.af
  %i.ny = phi i8 [ %.pre.i193.i, %..thread43_crit_edge.i192.i ], [ %i.lz, %bb.af ] ; 2 uses
  %i.nz = add i8 %i.ny, -29
  %spec.select.i.i.i.i.i.i.i.i.i.i180.i = icmp ult i8 %i.nz, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i180.i, label %._crit_edge.i185.i, label %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i181.i

_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i181.i: ; preds = %.thread43.i179.i
  %i.oa = icmp eq i8 %i.ny, 27
  %.1.v.i.i.i.i.i182.i = select i1 %i.oa, i64 -32, i64 -64
  %.1.i.i.i.i.i183.i = getelementptr inbounds i8, ptr %.sroa.035.057.i176.i, i64 %.1.v.i.i.i.i.i182.i
  %i.ob = load ptr, ptr %.1.i.i.i.i.i183.i, align 8, !tbaa !107, !noalias !877 ; 2 uses
  %.not53.i184.i = icmp eq ptr %i.ob, null
  br i1 %.not53.i184.i, label %._crit_edge.i185.i, label %.lr.ph.i175.i

._crit_edge.i185.i:                               ; preds = %_ZN4llvm18def_chain_iteratorIPNS_12MemoryAccessELb0EEppEv.exit.i181.i, %.thread43.i179.i, %bb.ae
  br i1 %.not.i173.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.i185.i
  %i.oc = load ptr, ptr %i.d, align 8, !tbaa !848, !noalias !874
  store i32 0, ptr %i.oc, align 4, !tbaa !111, !noalias !877
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i185.i
  %i.od = load ptr, ptr %i.fi, align 8, !tbaa !855, !noalias !877
  br label %.loopexit322.i

.loopexit323.i:                                   ; preds = %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.i, %_ZN4llvm16dyn_cast_or_nullINS_8LoadInstEKNS_11InstructionEEEDaPT0_.exit.thread.i229.i, %.split.i, %bb.ah, %bb.ag, %_ZL24instructionClobbersQueryIN4llvm14BatchAAResultsEEbPKNS0_9MemoryDefERKNS0_14MemoryLocationEPKNS0_11InstructionERT_.exit238.thread.i
  %i.oe = load ptr, ptr %0, align 8, !tbaa !857, !noalias !874, !nonnull !25, !align !526 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 104
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !250, !noalias !877
  %i.oh = icmp eq ptr %.2.i.i, %i.og
  br i1 %i.oh, label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %.loopexit323.i
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.035.057.i176.i, i64 64
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !272, !noalias !877 ; 2 uses
  %i.ok = load ptr, ptr %i.ey, align 8, !tbaa !272, !noalias !877 ; 2 uses
  %.not.i30.i.i = icmp eq ptr %i.oj, %i.ok
  br i1 %.not.i30.i.i, label %.split.i.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i.i

.split.i.i:                                       ; preds = %bb.ao
  %i.ol = call noundef zeroext i1 @_ZNK4llvm9MemorySSA16locallyDominatesEPKNS_12MemoryAccessES3_(ptr noundef nonnull align 8 dereferenceable(317) %i.oe, ptr noundef nonnull %.sroa.035.057.i176.i, ptr noundef nonnull %.2.i.i), !noalias !877
  br i1 %i.ol, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i, label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i.i: ; preds = %bb.ao
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !188, !noalias !877
  %i.oo = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.on, ptr noundef %i.oj, ptr noundef %i.ok) #26, !noalias !877
  br i1 %i.oo, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i, label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i.i, %.split.i.i
  %i.op = load i32, ptr %i.bb, align 8, !tbaa !137, !noalias !874 ; 2 uses
  %i.oq = load i32, ptr %i.bc, align 4, !tbaa !138, !noalias !874
  %.not.i31.i.i = icmp ult i32 %i.op, %i.oq
  br i1 %.not.i31.i.i, label %bb.aq, label %bb.ap, !prof !115

bb.ap:                                            ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr nonnull %.sroa.035.057.i176.i, i32 %i.fe), !noalias !877
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, !llvm.loop !906

bb.aq:                                            ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i.i
  %i.or = zext i32 %i.op to i64
  %.val.i.i.i = load ptr, ptr %16, align 8, !tbaa !27, !noalias !874
  %i.os = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.or ; 2 uses
  store ptr %.sroa.035.057.i176.i, ptr %i.os, align 1, !noalias !877
  %.sroa.32.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  store i32 %i.fe, ptr %.sroa.32.0..sroa_idx.i.i.i, align 1, !noalias !877
  %i.ot = load i32, ptr %i.bb, align 8, !tbaa !137, !noalias !874
  %i.ou = add i32 %i.ot, 1
  store i32 %i.ou, ptr %i.bb, align 8, !tbaa !137, !noalias !874
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, !llvm.loop !906

.loopexit322.i:                                   ; preds = %.lr.ph.i175.i, %bb.an
  %.sroa.0.6.i186.i = phi ptr [ %i.od, %bb.an ], [ %.sroa.035.057.i176.i, %.lr.ph.i175.i ] ; 3 uses
  %i.ov = icmp eq ptr %.sroa.0.6.i186.i, %.2.i.i
  %i.ow = icmp eq ptr %.sroa.0.6.i186.i, %.028.i.i ; 2 uses
  %or.cond.i.i = or i1 %i.ov, %i.ow
  br i1 %or.cond.i.i, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %.loopexit322.i
  br i1 %i.ow, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, label %bb.as, !llvm.loop !906

bb.as:                                            ; preds = %bb.ar
  %i.ox = load i32, ptr %i.ay, align 8, !tbaa !137, !noalias !874 ; 2 uses
  %i.oy = load i32, ptr %i.az, align 4, !tbaa !138, !noalias !874
  %.not.i32.i.i = icmp ult i32 %i.ox, %i.oy
  br i1 %.not.i32.i.i, label %bb.au, label %bb.at, !prof !115

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.fe), !noalias !877
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, !llvm.loop !906

bb.au:                                            ; preds = %bb.as
  %i.oz = zext i32 %i.ox to i64
  %i.pa = load ptr, ptr %15, align 8, !tbaa !27, !noalias !874
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.oz
  store i32 %i.fe, ptr %i.pb, align 1, !noalias !877
  %i.pc = load i32, ptr %i.ay, align 8, !tbaa !137, !noalias !874
  %i.pd = add i32 %i.pc, 1
  store i32 %i.pd, ptr %i.ay, align 8, !tbaa !137, !noalias !874
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, !llvm.loop !906

bb.av:                                            ; preds = %.loopexit322.i
  %i.pe = load i8, ptr %i.fk, align 8, !tbaa !856, !range !24, !noalias !877, !noundef !25
  %i.pf = trunc nuw i8 %i.pe to i1
  call fastcc void @_ZN12_GLOBAL__N_113ClobberWalker11addSearchesEPN4llvm9MemoryPhiERNS1_15SmallVectorImplIjEEjb(ptr noundef nonnull align 8 dereferenceable(2896) %0, ptr noundef %.sroa.0.6.i186.i, ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef %i.fe, i1 noundef zeroext %i.pf), !noalias !877
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i: ; preds = %bb.av, %bb.au, %bb.at, %bb.ar, %bb.aq, %bb.ap, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_14UpwardDefsElemENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E16try_emplace_implIS2_JEEESt4pairINS_16DenseMapIteratorIS2_S4_S6_S8_Lb0EEEbEOT_DpOT0_.exit.i
  %i.pg = load i32, ptr %i.av, align 8, !tbaa !137, !noalias !874 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.pg, 0
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.m

_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i.i, %.split.i.i, %.loopexit323.i
  %.val6.val.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !27, !noalias !859 ; 2 uses
  br label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i

_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i: ; preds = %bb.aw, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i
  %.sroa.4.0.in36.i.i.i.i.i = phi i64 [ %i.fg, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.lr.ph.i.i.i.i.i ], [ %i.pl, %bb.aw ] ; 2 uses
  %i.ph = and i64 %.sroa.4.0.in36.i.i.i.i.i, 4294967295 ; 3 uses
  %i.pi = icmp ugt i64 %.0284.i, %i.ph
  br i1 %i.pi, label %_ZN4llvm7find_ifINS_14iterator_rangeIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS3_7DefPathES3_EEEEZNS3_14tryOptimizePhiEPNS_9MemoryPhiEPNS_12MemoryAccessERKNS_14MemoryLocationEEUlRKS5_E_EEDaOT_T0_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i
  %i.pj = getelementptr inbounds nuw [88 x i8], ptr %.val6.val.i.i.i.i.i, i64 %i.ph
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 72
  %i.pl = load i64, ptr %i.pk, align 8            ; 5 uses
  %20 = and i64 %i.pl, 1095216660480
  %.not.i.i.i.i.i.i.i = icmp ne i64 %20, 0
  %21 = and i64 %i.pl, 4294967296
  %22 = icmp ne i64 %21, 0
  %i.pm = and i64 %i.pl, 4294967295               ; 2 uses
  %23 = icmp ne i64 %i.pm, 0
  %24 = and i1 %23, %22
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i, %24
  br i1 %or.cond.i.i.i.i.i, label %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i, label %_ZN4llvm7find_ifINS_14iterator_rangeIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS3_7DefPathES3_EEEEZNS3_14tryOptimizePhiEPNS_9MemoryPhiEPNS_12MemoryAccessERKNS_14MemoryLocationEEUlRKS5_E_EEDaOT_T0_.exit.i, !llvm.loop !907

_ZN4llvm7find_ifINS_14iterator_rangeIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS3_7DefPathES3_EEEEZNS3_14tryOptimizePhiEPNS_9MemoryPhiEPNS_12MemoryAccessERKNS_14MemoryLocationEEUlRKS5_E_EEDaOT_T0_.exit.i: ; preds = %bb.aw, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i
  %.pre-phi.i = phi i64 [ %i.ph, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i ], [ %i.pm, %bb.aw ]
  %.sroa.4.0.in.lcssa.i.i.i.i.i = phi i64 [ %.sroa.4.0.in36.i.i.i.i.i, %_ZNK4llvm20iterator_facade_baseIN12_GLOBAL__N_113ClobberWalker25generic_def_path_iteratorINS2_7DefPathES2_EESt20forward_iterator_tagPS4_lPS7_RS7_EneERKS5_.exit.thread.i.i.i.i.i ], [ %i.pl, %bb.aw ]
  %i.pn = getelementptr inbounds nuw [88 x i8], ptr %.val6.val.i.i.i.i.i, i64 %.pre-phi.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 64
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !855
  %i.pq = trunc i64 %.sroa.4.0.in.lcssa.i.i.i.i.i to i32
  store ptr %i.pp, ptr %19, align 8, !tbaa !250, !alias.scope !859
  store i32 %i.pq, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !111, !alias.scope !859
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !27, !alias.scope !859
  store i32 0, ptr %i.bz, align 8, !tbaa !137, !alias.scope !859
  store i32 4, ptr %i.ca, align 4, !tbaa !138, !alias.scope !859
  br label %.critedge69.i

.critedge.i:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i.i, %_ZNK12_GLOBAL__N_113ClobberWalker13getWalkTargetEPKN4llvm9MemoryPhiE.exit.i
  %i.pr = load i32, ptr %i.ay, align 8, !tbaa !137, !noalias !859 ; 2 uses
  %.not.i91.i = icmp eq i32 %i.pr, 0
  br i1 %.not.i91.i, label %bb.ax, label %.lr.ph.preheader.i

bb.ax:                                            ; preds = %.critedge.i
  %.val.i92.i = load ptr, ptr %16, align 8, !tbaa !27, !noalias !859 ; 5 uses
  %.val21.i.i = load i32, ptr %i.bb, align 8, !tbaa !137, !noalias !859 ; 2 uses
  %i.ps = zext i32 %.val21.i.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.ps, 4
  %i.pt = getelementptr inbounds nuw i8, ptr %.val.i92.i, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %.val21.i.i, 1
  br i1 %.not6.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ax
  %.05.i.i = getelementptr inbounds nuw i8, ptr %.val.i92.i, i64 16
  br label %.lr.ph.i93.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i
  %.val18.pre.i.i = load ptr, ptr %16, align 8, !tbaa !27, !noalias !859
  %.val19.pre.i.i = load i32, ptr %i.bb, align 8, !tbaa !137, !noalias !859 ; 2 uses
  %i.pu = zext i32 %.val19.pre.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.ax
  %.val1.i397.i = phi i32 [ 1, %bb.ax ], [ %.val19.pre.i.i, %._crit_edge.loopexit.i.i ]
  %.val19.i.i = phi i64 [ 1, %bb.ax ], [ %i.pu, %._crit_edge.loopexit.i.i ]
  %.val18.i.i = phi ptr [ %.val.i92.i, %bb.ax ], [ %.val18.pre.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.015.lcssa.i.i = phi ptr [ %.val.i92.i, %bb.ax ], [ %i.qm, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %.val18.i.i, i64 %.val19.i.i
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 -16 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.pw, %.015.lcssa.i.i
  br i1 %.not17.i.i, label %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i, label %bb.ba

.lr.ph.i93.i:                                     ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i, %.lr.ph.preheader.i.i
  %.08.i.i = phi ptr [ %.0.i96.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i ], [ %.05.i.i, %.lr.ph.preheader.i.i ] ; 5 uses
  %.0157.i.i = phi ptr [ %i.qm, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i ], [ %.val.i92.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.px = load ptr, ptr %0, align 8, !tbaa !857, !noalias !859, !nonnull !25, !align !526 ; 3 uses
  %i.py = load ptr, ptr %.08.i.i, align 8, !tbaa !908 ; 3 uses
  %i.pz = load ptr, ptr %.0157.i.i, align 8, !tbaa !908 ; 4 uses
  %i.qa = icmp eq ptr %i.py, %i.pz
  br i1 %i.qa, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i93.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 104
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !250
  %i.qd = icmp eq ptr %i.pz, %i.qc
  br i1 %i.qd, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 64
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !272 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pz, i64 64
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !272 ; 2 uses
  %.not.i.i94.i = icmp eq ptr %i.qf, %i.qh
  br i1 %.not.i.i94.i, label %.split.i99.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i

.split.i99.i:                                     ; preds = %bb.az
  %i.qi = call noundef zeroext i1 @_ZNK4llvm9MemorySSA16locallyDominatesEPKNS_12MemoryAccessES3_(ptr noundef nonnull align 8 dereferenceable(317) %i.px, ptr noundef nonnull %i.py, ptr noundef nonnull %i.pz)
  br i1 %i.qi, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i: ; preds = %bb.az
  %i.qj = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !188
  %i.ql = call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_10BasicBlockELb0EE9dominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %i.qk, ptr noundef %i.qf, ptr noundef %i.qh) #26
  br i1 %i.ql, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i, label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i, %.split.i99.i, %.lr.ph.i93.i
  br label %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i

_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread3.i.i: ; preds = %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i, %.split.i99.i, %bb.ay
  %i.qm = phi ptr [ %.0157.i.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.thread.i98.i ], [ %.08.i.i, %_ZNK4llvm9MemorySSA9dominatesEPKNS_12MemoryAccessES3_.exit.i95.i ], [ %.08.i.i, %.split.i99.i ], [ %.08.i.i, %bb.ay ] ; 2 uses
  %.0.i96.i = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %.not.i97.i = icmp eq ptr %.0.i96.i, %i.pt
  br i1 %.not.i97.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i93.i, !llvm.loop !910

bb.ba:                                            ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.pw, i64 16, i1 false), !tbaa.struct !911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pw, ptr noundef nonnull align 8 dereferenceable(16) %.015.lcssa.i.i, i64 16, i1 false), !tbaa.struct !911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.015.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !911
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.val.i100.pre.i = load ptr, ptr %16, align 8, !tbaa !27, !noalias !859
  %.val1.i.pre.i = load i32, ptr %i.bb, align 8, !tbaa !137, !noalias !859
  br label %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i

_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i: ; preds = %bb.ba, %._crit_edge.i.i
  %.val1.i.i = phi i32 [ %.val1.i397.i, %._crit_edge.i.i ], [ %.val1.i.pre.i, %bb.ba ] ; 2 uses
  %.val.i100.i = phi ptr [ %.val18.i.i, %._crit_edge.i.i ], [ %.val.i100.pre.i, %bb.ba ] ; 4 uses
  %i.qn = zext i32 %.val1.i.i to i64
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %.val.i100.i, i64 %i.qn ; 2 uses
  %i.qp = getelementptr inbounds i8, ptr %i.qo, i64 -16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.qp, align 8, !tbaa !250
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.qo, i64 -8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !111
  %i.qq = add i32 %.val1.i.i, -1                  ; 7 uses
  store i32 %i.qq, ptr %i.bb, align 8, !tbaa !137, !noalias !859
  store ptr %.sroa.0.0.copyload.i.i, ptr %19, align 8, !tbaa !250, !alias.scope !859
  store i32 %.sroa.2.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !111, !alias.scope !859
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !27, !alias.scope !859
  store i32 0, ptr %i.bz, align 8, !tbaa !137, !alias.scope !859
  store i32 4, ptr %i.ca, align 4, !tbaa !138, !alias.scope !859
  %.not.i.i101.i = icmp eq i32 %i.qq, 0
  br i1 %.not.i.i101.i, label %.critedge69.i, label %bb.bb

bb.bb:                                            ; preds = %_ZZN12_GLOBAL__N_113ClobberWalker14tryOptimizePhiEPN4llvm9MemoryPhiEPNS1_12MemoryAccessERKNS1_14MemoryLocationEENKUlRNS1_15SmallVectorImplINS0_14TerminatedPathEEEE_clESC_.exit.i
  %i.qr = icmp eq ptr %.val.i100.i, %i.ba
  br i1 %i.qr, label %bb.bc, label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i.i: ; preds = %bb.bb
  store ptr %.val.i100.i, ptr %i.bx, align 8, !tbaa !27, !alias.scope !859
  store i32 %i.qq, ptr %i.bz, align 8, !tbaa !137, !alias.scope !859
  %i.qs = load i32, ptr %i.bc, align 4, !tbaa !138, !noalias !859
  store i32 %i.qs, ptr %i.ca, align 4, !tbaa !138, !alias.scope !859
  store ptr %i.ba, ptr %16, align 8, !tbaa !27, !noalias !859
  store i32 0, ptr %i.bc, align 4, !tbaa !138, !noalias !859
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.qt = icmp ugt i32 %i.qq, 4
  br i1 %i.qt, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i.i: ; preds = %bb.bc
  %i.qu = zext i32 %i.qq to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %i.bx, ptr noundef nonnull %i.by, i64 noundef %i.qu, i64 noundef 16) #26
  %.val41.i.pre.i.i = load i32, ptr %i.bb, align 8, !tbaa !137, !noalias !859 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.val41.i.pre.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i.i
  %.val34.i.i.pre.i = load ptr, ptr %16, align 8, !tbaa !27, !noalias !859
  %.val.i.i103.pre.i = load ptr, ptr %i.bx, align 8, !tbaa !27, !alias.scope !859
  br label %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i.i

_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i, %bb.bc
  %.val.i.i103.i = phi ptr [ %.val.i.i103.pre.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i ], [ %i.by, %bb.bc ]
  %.val34.i.i.i = phi ptr [ %.val34.i.i.pre.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i ], [ %.val.i100.i, %bb.bc ]
  %.val41.i11.i.i = phi i32 [ %.val41.i.pre.i.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i._ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i_crit_edge.i ], [ %i.qq, %bb.bc ]
  %i.qv = zext i32 %.val41.i11.i.i to i64
  %gepdiff.i.i.i = shl nuw nsw i64 %i.qv, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.val.i.i103.i, ptr align 8 %.val34.i.i.i, i64 %gepdiff.i.i.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.thread.i.i, %_ZSt4moveIPN12_GLOBAL__N_113ClobberWalker14TerminatedPathES3_ET0_T_S5_S4_.exit46.i.i.i
  store i32 %i.qq, ptr %i.bz, align 8, !tbaa !137, !alias.scope !859
  br label %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i.i

_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEEaSEOS4_.exit.sink.split.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i.i.i, %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113ClobberWalker14TerminatedPathEE12assignRemoteEOS4_.exit.i.i.i
  store i32 0, ptr %i.bb, align 8, !tbaa !137, !noalias !859
  br label %.critedge69.i

.lr.ph.preheader.i:                               ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26, !noalias !859
  store ptr %i.bt, ptr %17, align 8, !tbaa !27, !noalias !859
  store i32 0, ptr %i.bu, align 8, !tbaa !137, !noalias !859
  store i32 4, ptr %i.bv, align 4, !tbaa !138, !noalias !859
  %i.qw = load ptr, ptr %15, align 8, !tbaa !27, !noalias !859 ; 2 uses
  %i.qx = zext i32 %i.pr to i64
  %.idx.i = shl nuw nsw i64 %i.qx, 2
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.idx.i
  br label %.lr.ph.i21

._crit_edge.i23:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i
  %i.qz = load i32, ptr %i.bb, align 8, !tbaa !137, !noalias !859 ; 2 uses
  %.not.i104.i = icmp eq i32 %i.qz, 0
  br i1 %.not.i104.i, label %.loopexit325.i, label %bb.bp

.lr.ph.i21:                                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i, %.lr.ph.preheader.i
  %.060351.i = phi ptr [ %.161.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i ], [ null, %.lr.ph.preheader.i ] ; 2 uses
  %.063350.i = phi ptr [ %i.tt, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113ClobberWalker14TerminatedPathELb1EE9push_backES3_.exit.i ], [ %i.qw, %.lr.ph.preheader.i ] ; 2 uses
  %i.ra = load i32, ptr %.063350.i, align 4, !tbaa !111 ; 3 uses
  %i.rb = zext i32 %i.ra to i64
  %.val73.i = load ptr, ptr %i.ah, align 8, !tbaa !27, !noalias !859
  %i.rc = getelementptr inbounds nuw [88 x i8], ptr %.val73.i, i64 %i.rb ; 3 uses
  %i.rd = load ptr, ptr %i.d, align 8, !tbaa !848, !noalias !859 ; 2 uses
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !111
  %.not.i105.i = icmp eq i32 %i.re, 0             ; 2 uses
  br i1 %.not.i105.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i21
  store i32 1, ptr %i.rd, align 4, !tbaa !111
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i21
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rc, i64 64 ; 3 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !855 ; 2 uses
  %.not5356.i.i = icmp eq ptr %i.rg, null
  br i1 %.not5356.i.i, label %._crit_edge.i108.i, label %.lr.ph.i106.i

end_hunk_0
