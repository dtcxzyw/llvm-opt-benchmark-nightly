Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProf?download=true
inline.NumInlined: 4195
inline.NumDeleted: 2052
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_SN_T0_T1_":bb.a
  br i1 %.not9.i.i.i.i.i57, label %.split._crit_edge.i.i25, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i58

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i58: ; preds = %bb.ab
  %i.mo = tail call i32 @memcmp(ptr noundef nonnull %i.mg, ptr noundef nonnull %i.mh, i64 noundef %i.mm) #23 ; 2 uses
  %.not.i.i.i.i59 = icmp eq i32 %i.mo, 0
  br i1 %.not.i.i.i.i59, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i61, label %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit.i60

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i61: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i58, %bb.z
  %i.mp = icmp ult i64 %i.ml, %i.mk
  br i1 %i.mp, label %.split._crit_edge35.i.i, label %.split._crit_edge.i.i25

bb.ac:                                            ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i.i52
  %i.mq = add nuw i64 %.02056.i.i45, 1            ; 2 uses
  %exitcond.not.i.i54 = icmp eq i64 %i.mq, %.sroa.speculated.i.i43
  br i1 %exitcond.not.i.i54, label %._crit_edge.i57.i, label %bb.ad, !llvm.loop !29

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i56.i
  %.02056.i.i45 = phi i64 [ 0, %.lr.ph.i56.i ], [ %i.mq, %bb.ac ] ; 3 uses
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.me, i64 %.02056.i.i45 ; 4 uses
  %i.ms = getelementptr inbounds nuw [24 x i8], ptr %i.mf, i64 %.02056.i.i45 ; 4 uses
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !100 ; 3 uses
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !100 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !84 ; 3 uses
  %i.my = load i64, ptr %i.mv, align 8, !tbaa !84 ; 3 uses
  %i.mz = tail call i64 @llvm.umin.i64(i64 %i.mx, i64 %i.my)
  %i.na = icmp eq ptr %i.mt, %i.mu
  br i1 %i.na, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i51, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not.i.i27.i.i46 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i27.i.i46, label %.split._crit_edge35.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i.i.i47 = icmp eq ptr %i.mu, null
  br i1 %.not9.i.i.i.i47, label %.split._crit_edge.i.i25, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i48

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i48: ; preds = %bb.af
  %i.nb = tail call i32 @memcmp(ptr noundef nonnull %i.mt, ptr noundef nonnull %i.mu, i64 noundef %i.mz) #23 ; 2 uses
  %.not.i.i.i49 = icmp eq i32 %i.nb, 0
  br i1 %.not.i.i.i49, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i51, label %.loopexit.loopexit.i.i50

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i51: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i48, %bb.ad
  %i.nc = icmp eq i64 %i.my, %i.mx
  br i1 %i.nc, label %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i.i52, label %.split63.i.a

.split63.i.a:                                     ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i51
  %i.nd = icmp ult i64 %i.my, %i.mx
  br i1 %i.nd, label %.split._crit_edge35.i.i, label %.split._crit_edge.i.i25

.loopexit.loopexit.i.i50:                         ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i48
  %i.ne = icmp slt i32 %i.nb, 0
  br i1 %i.ne, label %.split._crit_edge35.i.i, label %.split._crit_edge.i.i25

_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i.i52: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i51
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.nh = load i32, ptr %i.nf, align 8, !tbaa !86 ; 3 uses
  %i.ni = load i32, ptr %i.ng, align 8, !tbaa !86 ; 3 uses
  %.not.i28.i.i53 = icmp ne i32 %i.nh, %i.ni
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mr, i64 20
  %i.nk = load i32, ptr %i.nj, align 4            ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ms, i64 20
  %i.nm = load i32, ptr %i.nl, align 4            ; 2 uses
  %i.nn = icmp ne i32 %i.nk, %i.nm
  %i.no = select i1 %.not.i28.i.i53, i1 true, i1 %i.nn
  br i1 %i.no, label %bb.ag, label %bb.ac

bb.ag:                                            ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i.i52
  %i.np = icmp ult i32 %i.nh, %i.ni
  br i1 %i.np, label %.split._crit_edge35.i.i, label %.split64.i

.split64.i:                                       ; preds = %bb.ag
  %i.nq = icmp uge i32 %i.ni, %i.nh
  %i.nr = icmp ult i32 %i.nk, %i.nm
  %spec.select.i.i55 = select i1 %i.nq, i1 %i.nr, i1 false
  br i1 %spec.select.i.i55, label %.split._crit_edge35.i.i, label %.split._crit_edge.i.i25

._crit_edge.i57.i:                                ; preds = %bb.ac, %.preheader.i.i42
  %i.ns = icmp ult i64 %i.lz, %i.mb
  br i1 %i.ns, label %.split._crit_edge35.i.i, label %.split._crit_edge.i.i25

_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit.i60: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i.i58
  %i.nt = icmp slt i32 %i.mo, 0
  br i1 %i.nt, label %.split._crit_edge35.i.i, label %.split._crit_edge.i.i25

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIPSD_SK_EEbT_T0_.exit.i.i": ; preds = %.lr.ph.i.i24
  %i.nu = icmp ugt i64 %i.ln, %i.lp
  br i1 %i.nu, label %.split._crit_edge35.i.i, label %.split._crit_edge.i.i25

.split._crit_edge35.i.i:                          ; preds = %bb.ae, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIPSD_SK_EEbT_T0_.exit.i.i", %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit.i60, %._crit_edge.i57.i, %.split64.i, %bb.ag, %.loopexit.loopexit.i.i50, %.split63.i.a, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i61, %bb.aa, %.split.i40
  %i.nv = load i64, ptr %.01629.i.i, align 8, !tbaa !84
  store i64 %i.nv, ptr %.sroa.0.027.i.i, align 8, !tbaa !84
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.016.val.i.i, ptr %i.nw, align 8, !tbaa !146
  %i.nx = getelementptr inbounds nuw i8, ptr %.01629.i.i, i64 16
  br label %bb.ah

.split._crit_edge.i.i25:                          ; preds = %bb.af, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIPSD_SK_EEbT_T0_.exit.i.i", %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit.i60, %._crit_edge.i57.i, %.split64.i, %.loopexit.loopexit.i.i50, %.split63.i.a, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i.i61, %bb.ab, %.split.i40
  %i.ny = load i64, ptr %.030.i.i, align 8, !tbaa !84
  store i64 %i.ny, ptr %.sroa.0.027.i.i, align 8, !tbaa !84
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 8
  store ptr %.0.val.i.i, ptr %i.nz, align 8, !tbaa !146
  %i.oa = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 16
  br label %bb.ah

bb.ah:                                            ; preds = %.split._crit_edge.i.i25, %.split._crit_edge35.i.i
  %.117.i.i = phi ptr [ %i.nx, %.split._crit_edge35.i.i ], [ %.01629.i.i, %.split._crit_edge.i.i25 ] ; 3 uses
  %.1.i.i = phi ptr [ %.030.i.i, %.split._crit_edge35.i.i ], [ %i.oa, %.split._crit_edge.i.i25 ] ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i.i, i64 16 ; 2 uses
  %i.oc = icmp ne ptr %.1.i.i, %i.li
  %i.od = icmp ne ptr %.117.i.i, %i.lj
  %i.oe = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %i.oe, label %.lr.ph.i.i24, label %._crit_edge.i.i26, !llvm.loop !636

._crit_edge.i.i26:                                ; preds = %bb.ah, %bb.x
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.0105.i, %bb.x ], [ %i.ob, %bb.ah ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.li, %bb.x ], [ %.117.i.i, %bb.ah ] ; 3 uses
  %.0.lcssa.i.i27 = phi ptr [ %.0104.i, %bb.x ], [ %.1.i.i, %bb.ah ] ; 3 uses
  %i.of = ptrtoint ptr %i.li to i64
  %i.og = ptrtoint ptr %.0.lcssa.i.i27 to i64
  %i.oh = sub i64 %i.of, %i.og
  %i.oi = ashr exact i64 %i.oh, 4                 ; 5 uses
  %i.oj = icmp sgt i64 %i.oi, 0
  br i1 %i.oj, label %.lr.ph.i.i.i.i.i.i.i34.preheader, label %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

.lr.ph.i.i.i.i.i.i.i34.preheader:                 ; preds = %._crit_edge.i.i26
  %xtraiter711 = and i64 %i.oi, 3                 ; 2 uses
  %lcmp.mod712.not = icmp eq i64 %xtraiter711, 0
  br i1 %lcmp.mod712.not, label %.lr.ph.i.i.i.i.i.i.i34.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i34.prol

.lr.ph.i.i.i.i.i.i.i34.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i34.preheader, %.lr.ph.i.i.i.i.i.i.i34.prol
  %.012.i.i.i.i.i.i.i35.prol = phi i64 [ %i.oq, %.lr.ph.i.i.i.i.i.i.i34.prol ], [ %i.oi, %.lr.ph.i.i.i.i.i.i.i34.preheader ]
  %.0811.i.i.i.i.i.i.i36.prol = phi ptr [ %i.op, %.lr.ph.i.i.i.i.i.i.i34.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i34.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i37.prol = phi ptr [ %i.oo, %.lr.ph.i.i.i.i.i.i.i34.prol ], [ %.0.lcssa.i.i27, %.lr.ph.i.i.i.i.i.i.i34.preheader ] ; 3 uses
  %prol.iter713 = phi i64 [ %prol.iter713.next, %.lr.ph.i.i.i.i.i.i.i34.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i34.preheader ]
  %i.ok = load i64, ptr %.0910.i.i.i.i.i.i.i37.prol, align 8, !tbaa !84
  store i64 %i.ok, ptr %.0811.i.i.i.i.i.i.i36.prol, align 8, !tbaa !84
  %i.ol = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37.prol, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !143
  %i.on = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36.prol, i64 8
  store ptr %i.om, ptr %i.on, align 8, !tbaa !146
  %i.oo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37.prol, i64 16 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36.prol, i64 16 ; 3 uses
  %i.oq = add nsw i64 %.012.i.i.i.i.i.i.i35.prol, -1 ; 2 uses
  %prol.iter713.next = add i64 %prol.iter713, 1   ; 2 uses
  %prol.iter713.cmp.not = icmp eq i64 %prol.iter713.next, %xtraiter711
  br i1 %prol.iter713.cmp.not, label %.lr.ph.i.i.i.i.i.i.i34.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i34.prol, !llvm.loop !637

.lr.ph.i.i.i.i.i.i.i34.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i34.prol, %.lr.ph.i.i.i.i.i.i.i34.preheader
  %.012.i.i.i.i.i.i.i35.unr = phi i64 [ %i.oi, %.lr.ph.i.i.i.i.i.i.i34.preheader ], [ %i.oq, %.lr.ph.i.i.i.i.i.i.i34.prol ]
  %.0811.i.i.i.i.i.i.i36.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i34.preheader ], [ %i.op, %.lr.ph.i.i.i.i.i.i.i34.prol ]
  %.0910.i.i.i.i.i.i.i37.unr = phi ptr [ %.0.lcssa.i.i27, %.lr.ph.i.i.i.i.i.i.i34.preheader ], [ %i.oo, %.lr.ph.i.i.i.i.i.i.i34.prol ]
  %.lcssa673.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i34.preheader ], [ %i.op, %.lr.ph.i.i.i.i.i.i.i34.prol ]
  %i.or = icmp ult i64 %i.oi, 4
  br i1 %i.or, label %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i.i34:                           ; preds = %.lr.ph.i.i.i.i.i.i.i34.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i34
  %.012.i.i.i.i.i.i.i35 = phi i64 [ %i.pq, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.012.i.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i.i34.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i36 = phi ptr [ %i.pp, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.0811.i.i.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i.i.i34.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i37 = phi ptr [ %i.po, %.lr.ph.i.i.i.i.i.i.i34 ], [ %.0910.i.i.i.i.i.i.i37.unr, %.lr.ph.i.i.i.i.i.i.i34.prol.loopexit ] ; 9 uses
  %i.os = load i64, ptr %.0910.i.i.i.i.i.i.i37, align 8, !tbaa !84
  store i64 %i.os, ptr %.0811.i.i.i.i.i.i.i36, align 8, !tbaa !84
  %i.ot = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !143
  %i.ov = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 8
  store ptr %i.ou, ptr %i.ov, align 8, !tbaa !146
  %i.ow = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 16
  %i.ox = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 16
  %i.oy = load i64, ptr %i.ow, align 8, !tbaa !84
  store i64 %i.oy, ptr %i.ox, align 8, !tbaa !84
  %i.oz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !143
  %i.pb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 24
  store ptr %i.pa, ptr %i.pb, align 8, !tbaa !146
  %i.pc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 32
  %i.pd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 32
  %i.pe = load i64, ptr %i.pc, align 8, !tbaa !84
  store i64 %i.pe, ptr %i.pd, align 8, !tbaa !84
  %i.pf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 40
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !143
  %i.ph = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 40
  store ptr %i.pg, ptr %i.ph, align 8, !tbaa !146
  %i.pi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 48
  %i.pj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 48
  %i.pk = load i64, ptr %i.pi, align 8, !tbaa !84
  store i64 %i.pk, ptr %i.pj, align 8, !tbaa !84
  %i.pl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 56
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !143
  %i.pn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 56
  store ptr %i.pm, ptr %i.pn, align 8, !tbaa !146
  %i.po = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i37, i64 64
  %i.pp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i36, i64 64 ; 2 uses
  %i.pq = add nsw i64 %.012.i.i.i.i.i.i.i35, -4
  %i.pr = icmp sgt i64 %.012.i.i.i.i.i.i.i35, 4
  br i1 %i.pr, label %.lr.ph.i.i.i.i.i.i.i34, label %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i, !llvm.loop !30

_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i34.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i34, %._crit_edge.i.i26
  %.08.lcssa.i.i.i.i.i.i.i28 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i26 ], [ %.lcssa673.unr.a, %.lr.ph.i.i.i.i.i.i.i34.prol.loopexit ], [ %i.pp, %.lr.ph.i.i.i.i.i.i.i34 ]
  %i.ps = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i28 to i64 ; 3 uses
  %i.pt = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.pu ; 3 uses
  %i.pw = ptrtoint ptr %i.lj to i64               ; 2 uses
  %i.px = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.py = sub i64 %i.pw, %i.px
  %i.pz = ashr exact i64 %i.py, 4                 ; 5 uses
  %i.qa = icmp sgt i64 %i.pz, 0
  br i1 %i.qa, label %.lr.ph.i.i.i.i.i19.i.i.preheader, label %"_ZSt12__move_mergeIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS3_16sortFuncProfilesERKNS3_16SampleProfileMapERSD_E3$_0EEET0_T_SO_SO_SO_SN_T1_.exit.i"

.lr.ph.i.i.i.i.i19.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  %xtraiter714 = and i64 %i.pz, 3                 ; 2 uses
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol

.lr.ph.i.i.i.i.i19.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i19.i.i.preheader, %.lr.ph.i.i.i.i.i19.i.i.prol
  %.012.i.i.i.i.i20.i.i.prol = phi i64 [ %i.qh, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.pz, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %.0811.i.i.i.i.i21.i.i.prol = phi ptr [ %i.qg, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %i.pv, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i22.i.i.prol = phi ptr [ %i.qf, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ] ; 3 uses
  %prol.iter716 = phi i64 [ %prol.iter716.next, %.lr.ph.i.i.i.i.i19.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i19.i.i.preheader ]
  %i.qb = load i64, ptr %.0910.i.i.i.i.i22.i.i.prol, align 8, !tbaa !84
  store i64 %i.qb, ptr %.0811.i.i.i.i.i21.i.i.prol, align 8, !tbaa !84
  %i.qc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !143
  %i.qe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 8
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !146
  %i.qf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i.prol, i64 16 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i.prol, i64 16 ; 3 uses
  %i.qh = add nsw i64 %.012.i.i.i.i.i20.i.i.prol, -1 ; 2 uses
  %prol.iter716.next = add i64 %prol.iter716, 1   ; 2 uses
  %prol.iter716.cmp.not = icmp eq i64 %prol.iter716.next, %xtraiter714
  br i1 %prol.iter716.cmp.not, label %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i19.i.i.prol, !llvm.loop !638

.lr.ph.i.i.i.i.i19.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol, %.lr.ph.i.i.i.i.i19.i.i.preheader
  %.012.i.i.i.i.i20.i.i.unr = phi i64 [ %i.pz, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.qh, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0811.i.i.i.i.i21.i.i.unr = phi ptr [ %i.pv, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.qg, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.0910.i.i.i.i.i22.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.qf, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %.lcssa674.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i19.i.i.preheader ], [ %i.qg, %.lr.ph.i.i.i.i.i19.i.i.prol ]
  %i.qi = icmp ult i64 %i.pz, 4
  br i1 %i.qi, label %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit23.loopexit.i.i, label %.lr.ph.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i19.i.i:                           ; preds = %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i20.i.i = phi i64 [ %i.rh, %.lr.ph.i.i.i.i.i19.i.i ], [ %.012.i.i.i.i.i20.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i21.i.i = phi ptr [ %i.rg, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0811.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i22.i.i = phi ptr [ %i.rf, %.lr.ph.i.i.i.i.i19.i.i ], [ %.0910.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ] ; 9 uses
  %i.qj = load i64, ptr %.0910.i.i.i.i.i22.i.i, align 8, !tbaa !84
  store i64 %i.qj, ptr %.0811.i.i.i.i.i21.i.i, align 8, !tbaa !84
  %i.qk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !143
  %i.qm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 8
  store ptr %i.ql, ptr %i.qm, align 8, !tbaa !146
  %i.qn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 16
  %i.qo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 16
  %i.qp = load i64, ptr %i.qn, align 8, !tbaa !84
  store i64 %i.qp, ptr %i.qo, align 8, !tbaa !84
  %i.qq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !143
  %i.qs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 24
  store ptr %i.qr, ptr %i.qs, align 8, !tbaa !146
  %i.qt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 32
  %i.qu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 32
  %i.qv = load i64, ptr %i.qt, align 8, !tbaa !84
  store i64 %i.qv, ptr %i.qu, align 8, !tbaa !84
  %i.qw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 40
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !143
  %i.qy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 40
  store ptr %i.qx, ptr %i.qy, align 8, !tbaa !146
  %i.qz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 48
  %i.ra = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 48
  %i.rb = load i64, ptr %i.qz, align 8, !tbaa !84
  store i64 %i.rb, ptr %i.ra, align 8, !tbaa !84
  %i.rc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 56
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !143
  %i.re = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 56
  store ptr %i.rd, ptr %i.re, align 8, !tbaa !146
  %i.rf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i.i, i64 64
  %i.rg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i.i, i64 64 ; 2 uses
  %i.rh = add nsw i64 %.012.i.i.i.i.i20.i.i, -4
  %i.ri = icmp sgt i64 %.012.i.i.i.i.i20.i.i, 4
  br i1 %i.ri, label %.lr.ph.i.i.i.i.i19.i.i, label %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit23.loopexit.i.i, !llvm.loop !30

_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit23.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i19.i.i, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit
  %.lcssa674 = phi ptr [ %.lcssa674.unr, %.lr.ph.i.i.i.i.i19.i.i.prol.loopexit ], [ %i.rg, %.lr.ph.i.i.i.i.i19.i.i ]
  %3 = ptrtoint ptr %.lcssa674 to i64
  br label %"_ZSt12__move_mergeIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS3_16sortFuncProfilesERKNS3_16SampleProfileMapERSD_E3$_0EEET0_T_SO_SO_SO_SN_T1_.exit.i"

"_ZSt12__move_mergeIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS3_16sortFuncProfilesERKNS3_16SampleProfileMapERSD_E3$_0EEET0_T_SO_SO_SO_SN_T1_.exit.i": ; preds = %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit23.loopexit.i.i, %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi i64 [ %i.ps, %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i ], [ %3, %_ZSt4moveIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit23.loopexit.i.i ]
  %i.rj = sub i64 %.08.lcssa.i.i.i.i.i18.i.i, %i.ps
  %i.rk = getelementptr inbounds i8, ptr %i.pv, i64 %i.rj ; 2 uses
  %i.rl = sub i64 %i.l, %i.pw
  %i.rm = ashr exact i64 %i.rl, 4                 ; 2 uses
  %.not.i29 = icmp slt i64 %i.rm, %i.lh
  br i1 %.not.i29, label %._crit_edge.i30, label %bb.x, !llvm.loop !639

._crit_edge.i30:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS3_16sortFuncProfilesERKNS3_16SampleProfileMapERSD_E3$_0EEET0_T_SO_SO_SO_SN_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_SN_T0_T1_T2_.exit"
  %.0.lcssa.i31 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_SN_T0_T1_T2_.exit" ], [ %i.lj, %"_ZSt12__move_mergeIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS3_16sortFuncProfilesERKNS3_16SampleProfileMapERSD_E3$_0EEET0_T_SO_SO_SO_SN_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_SN_T0_T1_T2_.exit" ], [ %i.rk, %"_ZSt12__move_mergeIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS3_16sortFuncProfilesERKNS3_16SampleProfileMapERSD_E3$_0EEET0_T_SO_SO_SO_SN_T1_.exit.i" ] ; 2 uses
  %.lcssa101.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9hash_codeEPKNS3_10sampleprof15FunctionSamplesEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS5_16sortFuncProfilesERKNS5_16SampleProfileMapERSD_E3$_0EEEvT_SN_T0_T1_T2_.exit" ], [ %i.rm, %"_ZSt12__move_mergeIPSt4pairIN4llvm9hash_codeEPKNS1_10sampleprof15FunctionSamplesEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS3_16sortFuncProfilesERKNS3_16SampleProfileMapERSD_E3$_0EEET0_T_SO_SO_SO_SN_T1_.exit.i" ]
  %.sroa.speculated.i32 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa101.i) ; 2 uses
  %.idx75.i33 = shl nsw i64 %.sroa.speculated.i32, 4
  %i.rn = getelementptr inbounds i8, ptr %.0.lcssa.i31, i64 %.idx75.i33 ; 5 uses
  %i.ro = icmp ne i64 %.sroa.speculated.i32, 0
  %i.rp = icmp ne ptr %i.rn, %i.e
  %i.rq = and i1 %i.ro, %i.rp
  br i1 %i.rq, label %.lr.ph.i41.i, label %._crit_edge.i25.i

.lr.ph.i41.i:                                     ; preds = %._crit_edge.i30, %bb.ar
  %.030.i42.i = phi ptr [ %.1.i49.i, %bb.ar ], [ %.0.lcssa.i31, %._crit_edge.i30 ] ; 4 uses
  %.01629.i43.i = phi ptr [ %.117.i48.i, %bb.ar ], [ %i.rn, %._crit_edge.i30 ] ; 4 uses
  %.sroa.0.027.i44.i = phi ptr [ %i.ui, %bb.ar ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i30 ] ; 5 uses
  %i.rr = getelementptr i8, ptr %.01629.i43.i, i64 8
  %.016.val.i45.i = load ptr, ptr %i.rr, align 8, !tbaa !146 ; 7 uses
  %i.rs = getelementptr i8, ptr %.030.i42.i, i64 8
  %.0.val.i46.i = load ptr, ptr %i.rs, align 8, !tbaa !146 ; 7 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.016.val.i45.i, i64 56
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !120 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.val.i46.i, i64 56
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !120 ; 2 uses
  %i.rx = icmp eq i64 %i.ru, %i.rw
  br i1 %i.rx, label %.split.i50.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIPSD_SK_EEbT_T0_.exit.i47.i"

.split.i50.i:                                     ; preds = %.lr.ph.i41.i
  %i.ry = getelementptr inbounds nuw i8, ptr %.016.val.i45.i, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %.0.val.i46.i, i64 16
  %i.sa = getelementptr inbounds nuw i8, ptr %.016.val.i45.i, i64 48
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !210 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.0.val.i46.i, i64 48
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !210 ; 2 uses
  %.not.i72 = icmp eq i32 %i.sb, %i.sd
  br i1 %.not.i72, label %bb.ai, label %.split110.a

.split110.a:                                      ; preds = %.split.i50.i
  %i.se = icmp ult i32 %i.sb, %i.sd
  br i1 %i.se, label %.split._crit_edge35.i53.i, label %.split._crit_edge.i51.i

bb.ai:                                            ; preds = %.split.i50.i
  %.not38.i74 = icmp eq i32 %i.sb, 0
  br i1 %.not38.i74, label %bb.aj, label %.preheader.i75

.preheader.i75:                                   ; preds = %bb.ai
  %i.sf = getelementptr inbounds nuw i8, ptr %.016.val.i45.i, i64 40
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !206 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0.val.i46.i, i64 40
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !206 ; 2 uses
  %.sroa.speculated.i76 = tail call i64 @llvm.umin.i64(i64 %i.si, i64 %i.sg) ; 2 uses
  %.not58.i77 = icmp eq i64 %.sroa.speculated.i76, 0
  br i1 %.not58.i77, label %._crit_edge.i90, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.preheader.i75
  %i.sj = getelementptr inbounds nuw i8, ptr %.0.val.i46.i, i64 32
  %i.sk = getelementptr inbounds nuw i8, ptr %.016.val.i45.i, i64 32
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !257
  %i.sm = load ptr, ptr %i.sj, align 8, !tbaa !257
  br label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.sn = load ptr, ptr %i.ry, align 8, !tbaa !100 ; 3 uses
  %i.so = load ptr, ptr %i.rz, align 8, !tbaa !100 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %.016.val.i45.i, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %.0.val.i46.i, i64 24
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !84 ; 2 uses
  %i.ss = load i64, ptr %i.sp, align 8, !tbaa !84 ; 2 uses
  %i.st = tail call i64 @llvm.umin.i64(i64 %i.sr, i64 %i.ss)
  %i.su = icmp eq ptr %i.sn, %i.so
  br i1 %i.su, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i98, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i.i92 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i.i92, label %.split._crit_edge35.i53.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not9.i.i.i.i93 = icmp eq ptr %i.so, null
  br i1 %.not9.i.i.i.i93, label %.split._crit_edge.i51.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i94

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i94: ; preds = %bb.al
  %i.sv = tail call i32 @memcmp(ptr noundef nonnull %i.sn, ptr noundef nonnull %i.so, i64 noundef %i.st) #23 ; 2 uses
  %.not.i.i.i95 = icmp eq i32 %i.sv, 0
  br i1 %.not.i.i.i95, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i98, label %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit99

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i98: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i94, %bb.aj
  %i.sw = icmp ult i64 %i.ss, %i.sr
  br i1 %i.sw, label %.split._crit_edge35.i53.i, label %.split._crit_edge.i51.i

bb.am:                                            ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i87
  %i.sx = add nuw i64 %.02056.i79, 1              ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %i.sx, %.sroa.speculated.i76
  br i1 %exitcond.not.i89, label %._crit_edge.i90, label %bb.an, !llvm.loop !29

bb.an:                                            ; preds = %bb.am, %.lr.ph.i78
  %.02056.i79 = phi i64 [ 0, %.lr.ph.i78 ], [ %i.sx, %bb.am ] ; 3 uses
  %i.sy = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %.02056.i79 ; 4 uses
  %i.sz = getelementptr inbounds nuw [24 x i8], ptr %i.sm, i64 %.02056.i79 ; 4 uses
  %i.ta = load ptr, ptr %i.sy, align 8, !tbaa !100 ; 3 uses
  %i.tb = load ptr, ptr %i.sz, align 8, !tbaa !100 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.te = load i64, ptr %i.td, align 8, !tbaa !84 ; 3 uses
  %i.tf = load i64, ptr %i.tc, align 8, !tbaa !84 ; 3 uses
  %i.tg = tail call i64 @llvm.umin.i64(i64 %i.te, i64 %i.tf)
  %i.th = icmp eq ptr %i.ta, %i.tb
  br i1 %i.th, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i86, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i.i27.i80 = icmp eq ptr %i.ta, null
  br i1 %.not.i.i27.i80, label %.split._crit_edge35.i53.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not9.i.i.i81 = icmp eq ptr %i.tb, null
  br i1 %.not9.i.i.i81, label %.split._crit_edge.i51.i, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i82

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i82: ; preds = %bb.ap
  %i.ti = tail call i32 @memcmp(ptr noundef nonnull %i.ta, ptr noundef nonnull %i.tb, i64 noundef %i.tg) #23 ; 2 uses
  %.not.i.i83 = icmp eq i32 %i.ti, 0
  br i1 %.not.i.i83, label %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i86, label %.loopexit.loopexit.i84

_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i86: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i82, %bb.an
  %i.tj = icmp eq i64 %i.tf, %i.te
  br i1 %i.tj, label %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i87, label %.split111.a

.split111.a:                                      ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i86
  %i.tk = icmp ult i64 %i.tf, %i.te
  br i1 %i.tk, label %.split._crit_edge35.i53.i, label %.split._crit_edge.i51.i

.loopexit.loopexit.i84:                           ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i82
  %i.tl = icmp slt i32 %i.ti, 0
  br i1 %i.tl, label %.split._crit_edge35.i53.i, label %.split._crit_edge.i51.i

_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i87: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i86
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sz, i64 16
  %i.to = load i32, ptr %i.tm, align 8, !tbaa !86 ; 3 uses
  %i.tp = load i32, ptr %i.tn, align 8, !tbaa !86 ; 3 uses
  %.not.i28.i88 = icmp ne i32 %i.to, %i.tp
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sy, i64 20
  %i.tr = load i32, ptr %i.tq, align 4            ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sz, i64 20
  %i.tt = load i32, ptr %i.ts, align 4            ; 2 uses
  %i.tu = icmp ne i32 %i.tr, %i.tt
  %i.tv = select i1 %.not.i28.i88, i1 true, i1 %i.tu
  br i1 %i.tv, label %bb.aq, label %bb.am

bb.aq:                                            ; preds = %_ZNK4llvm10sampleprof10FunctionId7compareERKS1_.exit.i87
  %i.tw = icmp ult i32 %i.to, %i.tp
  br i1 %i.tw, label %.split._crit_edge35.i53.i, label %.split112

.split112:                                        ; preds = %bb.aq
  %i.tx = icmp uge i32 %i.tp, %i.to
  %i.ty = icmp ult i32 %i.tr, %i.tt
  %spec.select.i91 = select i1 %i.tx, i1 %i.ty, i1 false
  br i1 %spec.select.i91, label %.split._crit_edge35.i53.i, label %.split._crit_edge.i51.i

._crit_edge.i90:                                  ; preds = %bb.am, %.preheader.i75
  %i.tz = icmp ult i64 %i.sg, %i.si
  br i1 %i.tz, label %.split._crit_edge35.i53.i, label %.split._crit_edge.i51.i

_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit99: ; preds = %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.i.i.i94
  %i.ua = icmp slt i32 %i.sv, 0
  br i1 %i.ua, label %.split._crit_edge35.i53.i, label %.split._crit_edge.i51.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIPSD_SK_EEbT_T0_.exit.i47.i": ; preds = %.lr.ph.i41.i
  %i.ub = icmp ugt i64 %i.ru, %i.rw
  br i1 %i.ub, label %.split._crit_edge35.i53.i, label %.split._crit_edge.i51.i

.split._crit_edge35.i53.i:                        ; preds = %bb.ao, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i98, %bb.ak, %bb.aq, %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit99, %.split110.a, %.split111.a, %.split112, %.loopexit.loopexit.i84, %._crit_edge.i90, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIPSD_SK_EEbT_T0_.exit.i47.i"
  %i.uc = load i64, ptr %.01629.i43.i, align 8, !tbaa !84
  store i64 %i.uc, ptr %.sroa.0.027.i44.i, align 8, !tbaa !84
  %i.ud = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.016.val.i45.i, ptr %i.ud, align 8, !tbaa !146
  %i.ue = getelementptr inbounds nuw i8, ptr %.01629.i43.i, i64 16
  br label %bb.ar

.split._crit_edge.i51.i:                          ; preds = %bb.ap, %bb.al, %_ZN4llvm10sampleprof10FunctionId13compareMemoryEPKcS3_m.exit.thread12.i.i.i98, %_ZNK4llvm10sampleprof13SampleContextltERKS1_.exit99, %.split110.a, %.split111.a, %.split112, %.loopexit.loopexit.i84, %._crit_edge.i90, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm10sampleprof16sortFuncProfilesERKNS3_16SampleProfileMapERSt6vectorISt4pairINS2_9hash_codeEPKNS3_15FunctionSamplesEESaISD_EEE3$_0EclIPSD_SK_EEbT_T0_.exit.i47.i"
  %i.uf = load i64, ptr %.030.i42.i, align 8, !tbaa !84
  store i64 %i.uf, ptr %.sroa.0.027.i44.i, align 8, !tbaa !84
  %i.ug = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 8
  store ptr %.0.val.i46.i, ptr %i.ug, align 8, !tbaa !146
  %i.uh = getelementptr inbounds nuw i8, ptr %.030.i42.i, i64 16
  br label %bb.ar

bb.ar:                                            ; preds = %.split._crit_edge.i51.i, %.split._crit_edge35.i53.i
  %.117.i48.i = phi ptr [ %i.ue, %.split._crit_edge35.i53.i ], [ %.01629.i43.i, %.split._crit_edge.i51.i ] ; 3 uses
  %.1.i49.i = phi ptr [ %.030.i42.i, %.split._crit_edge35.i53.i ], [ %i.uh, %.split._crit_edge.i51.i ] ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i44.i, i64 16 ; 2 uses
  %i.uj = icmp ne ptr %.1.i49.i, %i.rn
  %i.uk = icmp ne ptr %.117.i48.i, %i.e
  %i.ul = select i1 %i.uj, i1 %i.uk, i1 false
  br i1 %i.ul, label %.lr.ph.i41.i, label %._crit_edge.i25.i, !llvm.loop !636

end_hunk_0
