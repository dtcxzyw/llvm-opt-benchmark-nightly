Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Debugify?download=true
inline.NumInlined: 3876
inline.NumDeleted: 2074
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEE:bb.a
  br i1 %.not.i.i.i75, label %bb.n, label %bb.m

bb.m:                                             ; preds = %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_1clEj.exit"
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 -32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !34
  br label %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_1clEj.exit79"

bb.n:                                             ; preds = %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_1clEj.exit"
  %i.bd = lshr i64 %i.az, 2
  %i.be = and i64 %i.bd, 15
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.bf
  br label %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_1clEj.exit79"

"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_1clEj.exit79": ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i.i76 = phi ptr [ %i.bg, %bb.n ], [ %i.bc, %bb.m ]
  %i.bh = load ptr, ptr %.sroa.0.0.i.i.i76, align 8, !tbaa !226
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 136
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !777 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !779
  %i.bn = icmp ult i32 %i.bm, 65
  %i.bo = load ptr, ptr %i.bk, align 8
  %spec.select.i.i.i77 = select i1 %i.bn, ptr %i.bk, ptr %i.bo
  %.0.i.i.i78 = load i64, ptr %spec.select.i.i.i77, align 8, !tbaa !47 ; 2 uses
  %i.bp = trunc i64 %.0.i.i.i78 to i32            ; 4 uses
  %.not68 = icmp eq ptr %6, null
  %i.bq = icmp eq i64 %4, 0
  %or.cond = select i1 %.not68, i1 true, i1 %i.bq
  br i1 %or.cond, label %bb.t, label %bb.o

bb.o:                                             ; preds = %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_1clEj.exit79"
  %i.br = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %9), !noalias !780 ; 2 uses
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.br, 0 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.br, 1
  %i.bs = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  br i1 %i.bs, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !221 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 16
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !782
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %9, ptr %7, align 8, !tbaa !347, !alias.scope !783
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !224
  %.not.i.i.i80 = icmp ult i32 %i.bv, %i.by
  br i1 %.not.i.i.i80, label %bb.r, label %bb.q, !prof !235

bb.q:                                             ; preds = %bb.p
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefE18DebugifyStatisticsELb1EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESA_IJEEEEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8) ; 0 uses
  %.pre.i.i = load i32, ptr %i.bu, align 8, !tbaa !221
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefE18DebugifyStatisticsEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESA_IJEEEEERS4_DpOT_.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ca = zext i32 %i.bv to i64
  %i.cb = load ptr, ptr %i.bt, align 8, !tbaa !34
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %i.cb, i64 %i.ca ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !295
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  %i.ce = load i32, ptr %i.bu, align 8, !tbaa !221
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.bu, align 8, !tbaa !221
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefE18DebugifyStatisticsEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESA_IJEEEEERS4_DpOT_.exit.i.i

_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefE18DebugifyStatisticsEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESA_IJEEEEERS4_DpOT_.exit.i.i: ; preds = %bb.r, %bb.q
  %i.cg = phi i32 [ %.pre.i.i, %bb.q ], [ %i.cf, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !34
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -32
  br label %_ZN4llvm9MapVectorINS_9StringRefE18DebugifyStatisticsNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj0EEELj0EEixERKS1_.exit

bb.s:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !782
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.co
  br label %_ZN4llvm9MapVectorINS_9StringRefE18DebugifyStatisticsNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj0EEELj0EEixERKS1_.exit

_ZN4llvm9MapVectorINS_9StringRefE18DebugifyStatisticsNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj0EEELj0EEixERKS1_.exit: ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefE18DebugifyStatisticsEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESA_IJEEEEERS4_DpOT_.exit.i.i, %bb.s
  %.sroa.09.0.i.i = phi ptr [ %i.ck, %_ZN4llvm15SmallVectorImplISt4pairINS_9StringRefE18DebugifyStatisticsEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS2_EESA_IJEEEEERS4_DpOT_.exit.i.i ], [ %i.cp, %bb.s ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i, i64 16
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm9MapVectorINS_9StringRefE18DebugifyStatisticsNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj0EEELj0EEixERKS1_.exit, %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_1clEj.exit79"
  %.066 = phi ptr [ null, %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_1clEj.exit79" ], [ %i.cq, %_ZN4llvm9MapVectorINS_9StringRefE18DebugifyStatisticsNS_8DenseMapIS1_jNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_jEEEENS_11SmallVectorISt4pairIS1_S2_ELj0EEELj0EEixERKS1_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.cr = add i32 %i.aw, 63                       ; 2 uses
  %i.cs = lshr i32 %i.cr, 6                       ; 3 uses
  %i.ct = zext nneg i32 %i.cs to i64              ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.cu, ptr %10, align 8, !tbaa !34
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 6, ptr %i.cw, align 4, !tbaa !224
  %i.cx = icmp ugt i32 %i.cr, 447
  br i1 %i.cx, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.loopexit: ; preds = %bb.t
  store i32 0, ptr %i.cv, align 8, !tbaa !221
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %10, ptr noundef nonnull %i.cu, i64 noundef %i.ct, i64 noundef 8) #25
  %i.cy = load ptr, ptr %10, align 8, !tbaa !34
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.t
  %.not.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.loopexit
  %.sink = phi ptr [ %i.cy, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.loopexit ], [ %i.cu, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ] ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ct, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 -1, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !215
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i:       ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %i.cz = phi ptr [ %i.cu, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ], [ %.sink, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i.sink.split ]
  store i32 %i.cs, ptr %i.cv, align 8, !tbaa !221
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 3 uses
  store i32 %i.aw, ptr %i.da, align 8, !tbaa !790
  %i.db = and i32 %i.aw, 63
  %.not.i.i.i81 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i81, label %_ZN4llvm9BitVectorC2Ejb.exit, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i
  %i.dc = and i64 %.0.i.i.i, 63
  %i.dd = shl nsw i64 -1, %i.dc
  %i.de = xor i64 %i.dd, -1
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ct
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !215
  %i.di = and i64 %i.dh, %i.de
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !215
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.dj = add i32 %i.bp, 63                       ; 2 uses
  %i.dk = lshr i32 %i.dj, 6                       ; 3 uses
  %i.dl = zext nneg i32 %i.dk to i64              ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.dm, ptr %11, align 8, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 6, ptr %i.do, align 4, !tbaa !224
  %i.dp = icmp ugt i32 %i.dj, 447
  br i1 %i.dp, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i82

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.loopexit: ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  store i32 0, ptr %i.dn, align 8, !tbaa !221
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %11, ptr noundef nonnull %i.dm, i64 noundef %i.dl, i64 noundef 8) #25
  %i.dq = load ptr, ptr %11, align 8, !tbaa !34
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i82:      ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  %.not.i.i83 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i83, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88, label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.sink.split

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.sink.split: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i82, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.loopexit
  %.sink320 = phi ptr [ %i.dq, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.loopexit ], [ %i.dm, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i82 ] ; 2 uses
  %.idx.i.i.i.i.i.i.i84 = shl nuw nsw i64 %i.dl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink320, i8 -1, i64 %.idx.i.i.i.i.i.i.i84, i1 false), !tbaa !215
  br label %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88

_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88:     ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i82
  %i.dr = phi ptr [ %i.dm, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i82 ], [ %.sink320, %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88.sink.split ]
  store i32 %i.dk, ptr %i.dn, align 8, !tbaa !221
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  store i32 %i.bp, ptr %i.ds, align 8, !tbaa !790
  %i.dt = and i32 %i.bp, 63
  %.not.i.i.i89 = icmp eq i32 %i.dt, 0
  br i1 %.not.i.i.i89, label %_ZN4llvm9BitVectorC2Ejb.exit94, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88
  %i.du = and i64 %.0.i.i.i78, 63
  %i.dv = shl nsw i64 -1, %i.du
  %i.dw = xor i64 %i.dv, -1
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dl
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !215
  %i.ea = and i64 %i.dz, %i.dw
  store i64 %i.ea, ptr %i.dy, align 8, !tbaa !215
  br label %_ZN4llvm9BitVectorC2Ejb.exit94

_ZN4llvm9BitVectorC2Ejb.exit94:                   ; preds = %_ZN4llvm11SmallVectorImLj6EEC2EmRKm.exit.i88, %bb.v
  %.not90143 = icmp eq ptr %1, %2
  br i1 %.not90143, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %_ZN4llvm9BitVectorC2Ejb.exit94
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.z

._crit_edge147:                                   ; preds = %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread, %_ZN4llvm9BitVectorC2Ejb.exit94
  %.086.lcssa = phi i1 [ false, %_ZN4llvm9BitVectorC2Ejb.exit94 ], [ %.4, %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread ] ; 2 uses
  %i.ec = load i32, ptr %i.da, align 8, !tbaa !790, !noalias !791 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %._crit_edge152, label %bb.w

bb.w:                                             ; preds = %._crit_edge147
  %i.ee = add i32 %i.ec, -1                       ; 2 uses
  %i.ef = lshr i32 %i.ee, 6                       ; 3 uses
  %i.eg = load ptr, ptr %10, align 8, !tbaa !34, !noalias !791 ; 2 uses
  %i.eh = and i32 %i.ee, 63
  %i.ei = xor i32 %i.eh, 63
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = lshr i64 -1, %i.ej                      ; 2 uses
  %i.el = zext nneg i32 %i.ef to i64
  %i.em = add nuw nsw i32 %i.ef, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.em to i64
  %i.en = load i64, ptr %i.eg, align 8, !tbaa !215, !noalias !791
  %i.eo = icmp eq i32 %i.ef, 0                    ; 2 uses
  %i.ep = select i1 %i.eo, i64 %i.ek, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %i.en, %i.ep     ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.x, label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.x:                                             ; preds = %bb.w
  br i1 %i.eo, label %._crit_edge152, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.x, %bb.y
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.y ], [ 1, %bb.x ] ; 4 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.i.i.i.i.i
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !215, !noalias !791
  %i.es = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.el
  %i.et = select i1 %i.es, i64 %i.ek, i64 -1
  %.230.i.i.i.i.i = and i64 %i.et, %i.er          ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.y, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.eu = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.y:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge152, label %.peel.next.i.i.i.i.i, !llvm.loop !754

_ZNK4llvm9BitVector8set_bitsEv.exit:              ; preds = %bb.w, %.loopexit48.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.eu, %.loopexit48.i.i.i.i.i ], [ 0, %bb.w ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %bb.w ]
  %i.ev = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true)
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  %i.ex = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.ew ; 2 uses
  %.not91149 = icmp eq i32 %i.ex, -1
  br i1 %.not91149, label %._crit_edge152, label %.lr.ph151

bb.z:                                             ; preds = %.lr.ph146, %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread
  %.sroa.078.0145 = phi ptr [ %1, %.lr.ph146 ], [ %i.re, %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread ] ; 5 uses
  %.086144 = phi i1 [ false, %.lr.ph146 ], [ %.4, %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread ] ; 9 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.078.0145, i64 -64 ; 5 uses
  %i.ez = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ey) #25
  br i1 %i.ez, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = call noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ey) #25
  br i1 %i.fa, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fb = getelementptr inbounds i8, ptr %.sroa.078.0145, i64 -32
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = and i32 %i.fc, 15
  switch i32 %i.fd, label %bb.ad [
    i32 5, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread
    i32 3, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread
    i32 1, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread
    i32 4, label %bb.ac
    i32 2, label %bb.ac
    i32 10, label %bb.ac
    i32 9, label %bb.ac
    i32 0, label %bb.ac
    i32 6, label %bb.ac
    i32 7, label %bb.ac
    i32 8, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.fe = call noundef zeroext i1 @_ZNK4llvm11GlobalValue14isInterposableEb(ptr noundef nonnull align 8 dereferenceable(140) %i.ey, i1 noundef zeroext true) #25
  br i1 %i.fe, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit

bb.ad:                                            ; preds = %bb.ab
  unreachable

_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit: ; preds = %bb.ac
  %i.ff = call noundef zeroext i1 @_ZNK4llvm11GlobalValue16isNobuiltinFnDefEv(ptr noundef nonnull align 8 dereferenceable(140) %i.ey) #25
  br i1 %i.ff, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.078.0145, i64 16 ; 14 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.078.0145, i64 24 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !188, !noalias !793 ; 7 uses
  %.not.i.i.i102 = icmp eq ptr %i.fi, %i.fg
  br i1 %.not.i.i.i102, label %_ZN4llvm12instructionsERNS_8FunctionE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !196, !noalias !793 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %.lr.ph.i.i.preheader.i.i, label %_ZN4llvm12instructionsERNS_8FunctionE.exit

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !188, !noalias !793 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, %i.fg
  br i1 %i.fp, label %_ZN4llvm12instructionsERNS_8FunctionE.exit, label %.lr.ph.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !188, !noalias !793 ; 3 uses
  %i.fs = icmp eq ptr %i.fr, %i.fg
  br i1 %i.fs, label %_ZN4llvm12instructionsERNS_8FunctionE.exit, label %.lr.ph.i.i, !llvm.loop !759

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader.i.i, %.lr.ph.i.i.i.i
  %i.ft = phi ptr [ %i.fr, %.lr.ph.i.i.i.i ], [ %i.fo, %.lr.ph.i.i.preheader.i.i ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !196, !noalias !793 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %.lr.ph.i.i.i.i, label %..sink.split.i.i_crit_edge.i.i, !llvm.loop !759

..sink.split.i.i_crit_edge.i.i:                   ; preds = %.lr.ph.i.i
  br label %_ZN4llvm12instructionsERNS_8FunctionE.exit, !llvm.loop !759

_ZN4llvm12instructionsERNS_8FunctionE.exit:       ; preds = %.lr.ph.i.i.i.i, %bb.ae, %bb.af, %.lr.ph.i.i.preheader.i.i, %..sink.split.i.i_crit_edge.i.i
  %.sroa.23.0.i = phi ptr [ %i.fi, %bb.ae ], [ %i.fi, %bb.af ], [ %i.ft, %..sink.split.i.i_crit_edge.i.i ], [ %i.fo, %.lr.ph.i.i.preheader.i.i ], [ %i.fr, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.44.0.i = phi ptr [ null, %bb.ae ], [ %i.fk, %bb.af ], [ %i.fv, %..sink.split.i.i_crit_edge.i.i ], [ %i.fk, %.lr.ph.i.i.preheader.i.i ], [ %i.fv, %.lr.ph.i.i.i.i ]
  %i.fy = icmp eq ptr %.sroa.23.0.i, %i.fg
  br i1 %i.fy, label %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit, label %.lr.ph127

_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.loopexit: ; preds = %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit
  %.pre190 = load ptr, ptr %i.fh, align 8, !tbaa !188, !noalias !794
  br label %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit

_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit: ; preds = %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.loopexit, %_ZN4llvm12instructionsERNS_8FunctionE.exit
  %i.fz = phi ptr [ %.pre190, %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit.loopexit ], [ %i.fi, %_ZN4llvm12instructionsERNS_8FunctionE.exit ] ; 6 uses
  %.not.i.i.i103 = icmp eq ptr %i.fz, %i.fg
  br i1 %.not.i.i.i103, label %_ZN4llvm12instructionsERNS_8FunctionE.exit118, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !196, !noalias !794 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %.lr.ph.i.i.preheader.i.i114, label %_ZN4llvm12instructionsERNS_8FunctionE.exit118

.lr.ph.i.i.preheader.i.i114:                      ; preds = %bb.ag
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !188, !noalias !794 ; 3 uses
  %i.gg = icmp eq ptr %i.gf, %i.fg
  br i1 %i.gg, label %_ZN4llvm12instructionsERNS_8FunctionE.exit118, label %.lr.ph.i.i115

.lr.ph.i.i.i.i117:                                ; preds = %.lr.ph.i.i115
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !188, !noalias !794 ; 3 uses
  %i.gj = icmp eq ptr %i.gi, %i.fg
  br i1 %i.gj, label %_ZN4llvm12instructionsERNS_8FunctionE.exit118, label %.lr.ph.i.i115, !llvm.loop !759

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i.preheader.i.i114, %.lr.ph.i.i.i.i117
  %i.gk = phi ptr [ %i.gi, %.lr.ph.i.i.i.i117 ], [ %i.gf, %.lr.ph.i.i.preheader.i.i114 ] ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !196, !noalias !794 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %.lr.ph.i.i.i.i117, label %..sink.split.i.i_crit_edge.i.i116, !llvm.loop !759

..sink.split.i.i_crit_edge.i.i116:                ; preds = %.lr.ph.i.i115
  br label %_ZN4llvm12instructionsERNS_8FunctionE.exit118, !llvm.loop !759

_ZN4llvm12instructionsERNS_8FunctionE.exit118:    ; preds = %.lr.ph.i.i.i.i117, %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit, %bb.ag, %.lr.ph.i.i.preheader.i.i114, %..sink.split.i.i_crit_edge.i.i116
  %.sroa.23.0.i104 = phi ptr [ %i.fz, %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit ], [ %i.fz, %bb.ag ], [ %i.gk, %..sink.split.i.i_crit_edge.i.i116 ], [ %i.gf, %.lr.ph.i.i.preheader.i.i114 ], [ %i.gi, %.lr.ph.i.i.i.i117 ] ; 2 uses
  %.sroa.44.0.i105 = phi ptr [ null, %_ZNK4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EneERKSD_.exit ], [ %i.gb, %bb.ag ], [ %i.gm, %..sink.split.i.i_crit_edge.i.i116 ], [ %i.gb, %.lr.ph.i.i.preheader.i.i114 ], [ %i.gm, %.lr.ph.i.i.i.i117 ]
  %i.gp = icmp eq ptr %.sroa.23.0.i104, %i.fg
  br i1 %i.gp, label %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread, label %.lr.ph141

.lr.ph127:                                        ; preds = %_ZN4llvm12instructionsERNS_8FunctionE.exit, %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit
  %.sroa.560.0126 = phi ptr [ %.sroa.560.1, %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit ], [ %.sroa.23.0.i, %_ZN4llvm12instructionsERNS_8FunctionE.exit ] ; 3 uses
  %.sroa.861.0125 = phi ptr [ %.sroa.861.3, %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit ], [ %.sroa.44.0.i, %_ZN4llvm12instructionsERNS_8FunctionE.exit ] ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %.sroa.861.0125, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.861.0125, i64 24
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !198 ; 3 uses
  store i64 %i.gs, ptr %12, align 8, !tbaa !198
  %.not93 = icmp eq i64 %i.gs, 0
  %i.gt = inttoptr i64 %i.gs to ptr
  br i1 %.not93, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph127
  %i.gu = call noundef i32 @_ZNK4llvm8DebugLoc7getLineEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #25
  %.not70 = icmp eq i32 %i.gu, 0
  br i1 %.not70, label %._crit_edge188, label %bb.ai

._crit_edge188:                                   ; preds = %bb.ah
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEE:bb.a
_ZNK4llvm10DIVariable7getTypeEv.exit.i.i.i:       ; preds = %bb.bq, %bb.bp
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.nx, %bb.bq ], [ %i.nt, %bb.bp ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 24
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !226 ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 4, !tbaa !249
  switch i8 %i.oa, label %bb.cg [
    i8 37, label %_ZNK4llvm10DIVariable13getSignednessEv.exit.i.i
    i8 12, label %_ZNK4llvm10DIVariable13getSignednessEv.exit.i.i
  ]

_ZNK4llvm10DIVariable13getSignednessEv.exit.i.i:  ; preds = %_ZNK4llvm10DIVariable7getTypeEv.exit.i.i.i, %_ZNK4llvm10DIVariable7getTypeEv.exit.i.i.i
  %i.ob = call i64 @_ZNK4llvm11DIBasicType13getSignednessEv(ptr noundef nonnull align 8 dereferenceable(36) %i.nz) #25
  %i.oc = and i64 %i.ob, 8589934591
  %i.od = icmp eq i64 %i.oc, 4294967296
  %i.oe = icmp ult i64 %i.ng, %i.ni
  %or.cond45.i.i = select i1 %i.od, i1 %i.oe, i1 false
  br i1 %or.cond45.i.i, label %bb.br, label %bb.cg

.split.i.i:                                       ; preds = %bb.bn
  %.not46.i.i = icmp eq i64 %i.ng, %i.ni
  br i1 %.not46.i.i, label %bb.cg, label %bb.br

bb.br:                                            ; preds = %.split.i.i, %_ZNK4llvm10DIVariable13getSignednessEv.exit.i.i
  %i.of = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_15QuietE, i64 120), align 8, !tbaa !59, !range !30, !noundef !31
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.oh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %i.oi = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit.i.i

_ZN12_GLOBAL__N_13dbgEv.exit.i.i:                 ; preds = %bb.bt, %bb.bs
  %i.oj = phi ptr [ %i.oh, %bb.bs ], [ %i.oi, %bb.bt ] ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !63
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 32 ; 3 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !64 ; 2 uses
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = ptrtoint ptr %i.on to i64
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = icmp ult i64 %i.oq, 34
  br i1 %i.or, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit.i.i
  %i.os = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.oj, ptr noundef nonnull @.str.104, i64 noundef 34) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.bv:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.on, ptr noundef nonnull align 1 dereferenceable(34) @.str.104, i64 34, i1 false)
  %i.ot = load ptr, ptr %i.om, align 8, !tbaa !64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 34
  store ptr %i.ou, ptr %i.om, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.bv, %bb.bu
  %.0.i.i.i.i = phi ptr [ %i.os, %bb.bu ], [ %i.oj, %bb.bv ]
  %i.ov = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, i64 noundef %i.ng) #25 ; 4 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !63
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 32 ; 3 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !64 ; 2 uses
  %i.pa = ptrtoint ptr %i.ox to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = icmp ult i64 %i.pc, 28
  br i1 %i.pd, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.pe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ov, ptr noundef nonnull @.str.105, i64 noundef 28) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24.i.i

bb.bx:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.oz, ptr noundef nonnull align 1 dereferenceable(28) @.str.105, i64 28, i1 false)
  %i.pf = load ptr, ptr %i.oy, align 8, !tbaa !64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 28
  store ptr %i.pg, ptr %i.oy, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit24.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit24.i.i:           ; preds = %bb.bx, %bb.bw
  %.0.i.i23.i.i = phi ptr [ %i.pe, %bb.bw ], [ %i.ov, %bb.bx ]
  %i.ph = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i23.i.i, i64 noundef %i.ni) #25 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !63
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 32 ; 3 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !64 ; 2 uses
  %i.pm = ptrtoint ptr %i.pj to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = icmp ult i64 %i.po, 2
  br i1 %i.pp, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit24.i.i
  %i.pq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ph, ptr noundef nonnull @.str.101, i64 noundef 2) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27.i.i

bb.bz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit24.i.i
  store i16 8250, ptr %i.pl, align 1
  %i.pr = load ptr, ptr %i.pk, align 8, !tbaa !64
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 2
  store ptr %i.ps, ptr %i.pk, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit27.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit27.i.i:           ; preds = %bb.bz, %bb.by
  %i.pt = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_15QuietE, i64 120), align 8, !tbaa !59, !range !30, !noundef !31
  %i.pu = trunc nuw i8 %i.pt to i1
  br i1 %i.pu, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit27.i.i
  %i.pv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit28.i.i

bb.cb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit27.i.i
  %i.pw = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit28.i.i

_ZN12_GLOBAL__N_13dbgEv.exit28.i.i:               ; preds = %bb.cb, %bb.ca
  %i.px = phi ptr [ %i.pv, %bb.ca ], [ %i.pw, %bb.cb ]
  call void @_ZNK4llvm17DbgVariableRecord5printERNS_11raw_ostreamEb(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.024.0130, ptr noundef nonnull align 8 dereferenceable(48) %i.px, i1 noundef zeroext false) #25
  %i.py = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_15QuietE, i64 120), align 8, !tbaa !59, !range !30, !noundef !31
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit28.i.i
  %i.qa = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit29.i.i

bb.cd:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit28.i.i
  %i.qb = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit29.i.i

_ZN12_GLOBAL__N_13dbgEv.exit29.i.i:               ; preds = %bb.cd, %bb.cc
  %i.qc = phi ptr [ %i.qa, %bb.cc ], [ %i.qb, %bb.cd ] ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !63
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 32 ; 3 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !64 ; 2 uses
  %i.qh = icmp eq ptr %i.qe, %i.qg
  br i1 %i.qh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit29.i.i
  %i.qi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.qc, ptr noundef nonnull @.str.96, i64 noundef 1) #25 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_0clINS0_17DbgVariableRecordEEEDaPT_.exit"

bb.cf:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit29.i.i
  store i8 10, ptr %i.qg, align 1
  %i.qj = load ptr, ptr %i.qf, align 8, !tbaa !64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 1
  store ptr %i.qk, ptr %i.qf, align 8, !tbaa !64
  br label %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_0clINS0_17DbgVariableRecordEEEDaPT_.exit"

bb.cg:                                            ; preds = %.split.i.i, %_ZNK4llvm10DIVariable13getSignednessEv.exit.i.i, %_ZNK4llvm10DIVariable7getTypeEv.exit.i.i.i, %_ZN12_GLOBAL__N_118getAllocSizeInBitsERN4llvm6ModuleEPNS0_4TypeE.exit.i.i, %_ZN12_GLOBAL__N_118getAllocSizeInBitsERN4llvm6ModuleEPNS0_4TypeE.exit.thread.i.i, %bb.bi, %_ZNK4llvm10DIVariable7getNameEv.exit.i
  %i.ql = add i32 %i.mg, -1
  %i.qm = select i1 %i.mh, i32 -2, i32 %i.ql      ; 2 uses
  %i.qn = and i32 %i.qm, 63
  %i.qo = zext nneg i32 %i.qn to i64
  %i.qp = shl nuw i64 1, %i.qo
  %i.qq = xor i64 %i.qp, -1
  %i.qr = lshr i32 %i.qm, 6
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = load ptr, ptr %11, align 8, !tbaa !34
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %i.qs ; 2 uses
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !215
  %i.qw = and i64 %i.qv, %i.qq
  store i64 %i.qw, ptr %i.qu, align 8, !tbaa !215
  br label %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_0clINS0_17DbgVariableRecordEEEDaPT_.exit"

"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_0clINS0_17DbgVariableRecordEEEDaPT_.exit": ; preds = %bb.cg, %bb.cf, %bb.ce, %.lr.ph131
  %.3 = phi i1 [ %.2129, %.lr.ph131 ], [ %.2129, %bb.cg ], [ true, %bb.ce ], [ true, %bb.cf ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.024.0130, i64 8
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !188 ; 3 uses
  %.not1.i.i.i = icmp eq ptr %i.qy, %i.kr
  br i1 %.not1.i.i.i, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS_L13filterDbgVarsENS_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS_17DbgVariableRecordEEEESE_SD_SI_lPSI_SI_EppEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_0clINS0_17DbgVariableRecordEEEDaPT_.exit", %bb.ch
  %.sroa.024.1 = phi ptr [ %i.rc, %bb.ch ], [ %i.qy, %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_0clINS0_17DbgVariableRecordEEEDaPT_.exit" ] ; 3 uses
  %i.qz = getelementptr i8, ptr %.sroa.024.1, i64 32
  %.val.i.i.i = load i8, ptr %i.qz, align 8, !tbaa !269
  %i.ra = icmp eq i8 %.val.i.i.i, 0
  br i1 %i.ra, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS_L13filterDbgVarsENS_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS_17DbgVariableRecordEEEESE_SD_SI_lPSI_SI_EppEv.exit, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.i
  %i.rb = getelementptr inbounds nuw i8, ptr %.sroa.024.1, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !188 ; 3 uses
  %.not.i.i.i144 = icmp eq ptr %i.rc, %i.kr
  br i1 %.not.i.i.i144, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS_L13filterDbgVarsENS_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS_17DbgVariableRecordEEEESE_SD_SI_lPSI_SI_EppEv.exit, label %.lr.ph.i.i.i, !llvm.loop !3

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_20filter_iterator_implINS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_9DbgRecordELb0ELb0EvLb0EvEELb0ELb0EEEZNS_L13filterDbgVarsENS_14iterator_rangeIS8_EEEUlRS6_E_St26bidirectional_iterator_tagEEZNS_L13filterDbgVarsESA_EUlSB_E0_St17reference_wrapperINS_17DbgVariableRecordEEEESE_SD_SI_lPSI_SI_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.ch, %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_0clINS0_17DbgVariableRecordEEEDaPT_.exit"
  %.sroa.024.2 = phi ptr [ %i.qy, %"_ZZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEEENK3$_0clINS0_17DbgVariableRecordEEEDaPT_.exit" ], [ %i.rc, %bb.ch ], [ %.sroa.024.1, %.lr.ph.i.i.i ] ; 2 uses
  %.not94 = icmp eq ptr %.sroa.024.2, %i.kr
  br i1 %.not94, label %._crit_edge, label %.lr.ph131

_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit.thread: ; preds = %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit141, %_ZN4llvm12instructionsERNS_8FunctionE.exit118, %bb.ac, %bb.ab, %bb.ab, %bb.ab, %bb.aa, %bb.z, %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit
  %.4 = phi i1 [ %.086144, %_ZN12_GLOBAL__N_117isFunctionSkippedERN4llvm8FunctionE.exit ], [ %.086144, %bb.ac ], [ %.086144, %bb.z ], [ %.086144, %bb.aa ], [ %.086144, %bb.ab ], [ %.086144, %bb.ab ], [ %.086144, %bb.ab ], [ %.086144, %_ZN4llvm12instructionsERNS_8FunctionE.exit118 ], [ %.2.lcssa, %_ZN4llvm12InstIteratorINS_15SymbolTableListINS_10BasicBlockEJEEENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEENS_21ilist_iterator_w_bitsINS6_INS_11InstructionELb0ELb0EvLb1ES2_EELb0ELb0EEESA_EppEv.exit141 ] ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.078.0145, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !188 ; 2 uses
  %.not90 = icmp eq ptr %i.re, %2
  br i1 %.not90, label %._crit_edge147, label %bb.z

._crit_edge152:                                   ; preds = %bb.y, %bb.cs, %bb.cr, %_ZN4llvm11raw_ostreamlsEPKc.exit178, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit, %bb.ct, %bb.x, %._crit_edge147, %_ZNK4llvm9BitVector8set_bitsEv.exit
  %i.rf = load i32, ptr %i.ds, align 8, !tbaa !790, !noalias !808 ; 2 uses
  %i.rg = icmp eq i32 %i.rf, 0
  br i1 %i.rg, label %._crit_edge156, label %bb.ci

bb.ci:                                            ; preds = %._crit_edge152
  %i.rh = add i32 %i.rf, -1                       ; 2 uses
  %i.ri = lshr i32 %i.rh, 6                       ; 3 uses
  %i.rj = load ptr, ptr %11, align 8, !tbaa !34, !noalias !808 ; 2 uses
  %i.rk = and i32 %i.rh, 63
  %i.rl = xor i32 %i.rk, 63
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = lshr i64 -1, %i.rm                      ; 2 uses
  %i.ro = zext nneg i32 %i.ri to i64
  %i.rp = add nuw nsw i32 %i.ri, 1
  %wide.trip.count.i.i.i.i.i145 = zext nneg i32 %i.rp to i64
  %i.rq = load i64, ptr %i.rj, align 8, !tbaa !215, !noalias !808
  %i.rr = icmp eq i32 %i.ri, 0                    ; 2 uses
  %i.rs = select i1 %i.rr, i64 %i.rn, i64 -1
  %.230.peel.i.i.i.i.i146 = and i64 %i.rq, %i.rs  ; 2 uses
  %.not37.peel.i.i.i.i.i147 = icmp eq i64 %.230.peel.i.i.i.i.i146, 0
  br i1 %.not37.peel.i.i.i.i.i147, label %bb.cj, label %_ZNK4llvm9BitVector8set_bitsEv.exit161

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.rr, label %._crit_edge156, label %.peel.next.i.i.i.i.i153

.peel.next.i.i.i.i.i153:                          ; preds = %bb.cj, %bb.ck
  %indvars.iv.i.i.i.i.i154 = phi i64 [ %indvars.iv.next.i.i.i.i.i159, %bb.ck ], [ 1, %bb.cj ] ; 4 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %indvars.iv.i.i.i.i.i154
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !215, !noalias !808
  %i.rv = icmp eq i64 %indvars.iv.i.i.i.i.i154, %i.ro
  %i.rw = select i1 %i.rv, i64 %i.rn, i64 -1
  %.230.i.i.i.i.i155 = and i64 %i.rw, %i.ru       ; 2 uses
  %.not37.i.i.i.i.i156 = icmp eq i64 %.230.i.i.i.i.i155, 0
  br i1 %.not37.i.i.i.i.i156, label %bb.ck, label %.loopexit48.i.i.i.i.i157

.loopexit48.i.i.i.i.i157:                         ; preds = %.peel.next.i.i.i.i.i153
  %.pre.i.i.i.i.i158 = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i154 to i32
  %i.rx = shl nuw i32 %.pre.i.i.i.i.i158, 6
  br label %_ZNK4llvm9BitVector8set_bitsEv.exit161

bb.ck:                                            ; preds = %.peel.next.i.i.i.i.i153
  %indvars.iv.next.i.i.i.i.i159 = add nuw nsw i64 %indvars.iv.i.i.i.i.i154, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i160 = icmp eq i64 %indvars.iv.next.i.i.i.i.i159, %wide.trip.count.i.i.i.i.i145
  br i1 %exitcond.not.i.i.i.i.i160, label %._crit_edge156, label %.peel.next.i.i.i.i.i153, !llvm.loop !754

_ZNK4llvm9BitVector8set_bitsEv.exit161:           ; preds = %bb.ci, %.loopexit48.i.i.i.i.i157
  %.pre-phi.i.i.i.i.i148 = phi i32 [ %i.rx, %.loopexit48.i.i.i.i.i157 ], [ 0, %bb.ci ]
  %.230.lcssa.i.i.i.i.i149 = phi i64 [ %.230.i.i.i.i.i155, %.loopexit48.i.i.i.i.i157 ], [ %.230.peel.i.i.i.i.i146, %bb.ci ]
  %i.ry = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i149, i1 true)
  %i.rz = trunc nuw nsw i64 %i.ry to i32
  %i.sa = or disjoint i32 %.pre-phi.i.i.i.i.i148, %i.rz ; 2 uses
  %.not92153 = icmp eq i32 %i.sa, -1
  br i1 %.not92153, label %._crit_edge156, label %.lr.ph155

.lr.ph151:                                        ; preds = %_ZNK4llvm9BitVector8set_bitsEv.exit, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %.sroa.411.0150 = phi i32 [ %i.ug, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ], [ %i.ex, %_ZNK4llvm9BitVector8set_bitsEv.exit ]
  %i.sb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_15QuietE, i64 120), align 8, !tbaa !59, !range !30, !noundef !31
  %i.sc = trunc nuw i8 %i.sb to i1
  br i1 %i.sc, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.lr.ph151
  %i.sd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit172

bb.cm:                                            ; preds = %.lr.ph151
  %i.se = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit172

_ZN12_GLOBAL__N_13dbgEv.exit172:                  ; preds = %bb.cl, %bb.cm
  %i.sf = phi ptr [ %i.sd, %bb.cl ], [ %i.se, %bb.cm ] ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !63
  %i.si = getelementptr inbounds nuw i8, ptr %i.sf, i64 32 ; 3 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !64 ; 2 uses
  %i.sk = ptrtoint ptr %i.sh to i64
  %i.sl = ptrtoint ptr %i.sj to i64
  %i.sm = sub i64 %i.sk, %i.sl
  %i.sn = icmp ult i64 %i.sm, 22
  br i1 %i.sn, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit172
  %i.so = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.sf, ptr noundef nonnull @.str.97, i64 noundef 22) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit175

bb.co:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.sj, ptr noundef nonnull align 1 dereferenceable(22) @.str.97, i64 22, i1 false)
  %i.sp = load ptr, ptr %i.si, align 8, !tbaa !64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 22
  store ptr %i.sq, ptr %i.si, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit175

_ZN4llvm11raw_ostreamlsEPKc.exit175:              ; preds = %bb.cn, %bb.co
  %.0.i.i174 = phi ptr [ %i.so, %bb.cn ], [ %i.sf, %bb.co ]
  %i.sr = add nuw i32 %.sroa.411.0150, 1          ; 4 uses
  %i.ss = zext i32 %i.sr to i64
  %i.st = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i174, i64 noundef %i.ss) #25 ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !63
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 32 ; 3 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !64 ; 2 uses
  %i.sy = icmp eq ptr %i.sv, %i.sx
  br i1 %i.sy, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit175
  %i.sz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.st, ptr noundef nonnull @.str.96, i64 noundef 1) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit178

bb.cq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit175
  store i8 10, ptr %i.sx, align 1
  %i.ta = load ptr, ptr %i.sw, align 8, !tbaa !64
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 1
  store ptr %i.tb, ptr %i.sw, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit178

_ZN4llvm11raw_ostreamlsEPKc.exit178:              ; preds = %bb.cp, %bb.cq
  %i.tc = load i32, ptr %i.da, align 8, !tbaa !790 ; 2 uses
  %i.td = icmp eq i32 %i.sr, %i.tc
  br i1 %i.td, label %._crit_edge152, label %bb.cr

bb.cr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit178
  %i.te = lshr i32 %i.sr, 6                       ; 4 uses
  %i.tf = add i32 %i.tc, -1                       ; 2 uses
  %i.tg = lshr i32 %i.tf, 6                       ; 4 uses
  %.not42.i.i.i.i = icmp samesign ugt i32 %i.te, %i.tg
  br i1 %.not42.i.i.i.i, label %._crit_edge152, label %.lr.ph.i.i.i.i179

.lr.ph.i.i.i.i179:                                ; preds = %bb.cr
  %i.th = load ptr, ptr %10, align 8, !tbaa !34   ; 2 uses
  %i.ti = and i32 %i.sr, 63                       ; 2 uses
  %i.tj = sub nuw nsw i32 64, %i.ti
  %.not.i.i.i180 = icmp eq i32 %i.ti, 0
  %i.tk = zext nneg i32 %i.tj to i64
  %i.tl = lshr i64 -1, %i.tk
  %i.tm = xor i64 %i.tl, -1
  %i.tn = and i32 %i.tf, 63
  %i.to = xor i32 %i.tn, 63
  %i.tp = zext nneg i32 %i.to to i64
  %i.tq = lshr i64 -1, %i.tp                      ; 2 uses
  %i.tr = zext nneg i32 %i.te to i64              ; 2 uses
  %i.ts = zext nneg i32 %i.tg to i64
  %i.tt = add nuw nsw i32 %i.tg, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.tt to i64 ; 2 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.tr
  %i.tv = load i64, ptr %i.tu, align 8, !tbaa !215
  %i.tw = select i1 %.not.i.i.i180, i64 -1, i64 %i.tm
  %i.tx = icmp eq i32 %i.te, %i.tg
  %i.ty = select i1 %i.tx, i64 %i.tq, i64 -1
  %spec.select44.peel.i.i.i.i = and i64 %i.ty, %i.tw
  %.230.peel.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i, %i.tv ; 2 uses
  %.not37.peel.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i, label %bb.cs, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i179
  %indvars.iv.next.peel.i.i.i.i = add nuw nsw i64 %i.tr, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i, label %._crit_edge152, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.cs, %bb.ct
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.ct ], [ %indvars.iv.next.peel.i.i.i.i, %bb.cs ] ; 4 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %indvars.iv.i.i.i.i
  %i.ua = load i64, ptr %i.tz, align 8, !tbaa !215
  %i.ub = icmp eq i64 %indvars.iv.i.i.i.i, %i.ts
  %i.uc = select i1 %i.ub, i64 %i.tq, i64 -1
  %.230.i.i.i.i = and i64 %i.uc, %i.ua            ; 2 uses
  %.not37.i.i.i.i = icmp eq i64 %.230.i.i.i.i, 0
  br i1 %.not37.i.i.i.i, label %bb.ct, label %.loopexit48.i.i.i.i

.loopexit48.i.i.i.i:                              ; preds = %.peel.next.i.i.i.i
  %.pre.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.ct:                                            ; preds = %.peel.next.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge152, label %.peel.next.i.i.i.i, !llvm.loop !754

_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit: ; preds = %.lr.ph.i.i.i.i179, %.loopexit48.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre.i.i.i.i, %.loopexit48.i.i.i.i ], [ %i.te, %.lr.ph.i.i.i.i179 ]
  %.230.lcssa.i.i.i.i = phi i64 [ %.230.i.i.i.i, %.loopexit48.i.i.i.i ], [ %.230.peel.i.i.i.i, %.lr.ph.i.i.i.i179 ]
  %i.ud = shl nuw i32 %.pre-phi.i.i.i.i, 6
  %i.ue = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i, i1 true)
  %i.uf = trunc nuw nsw i64 %i.ue to i32
  %i.ug = or disjoint i32 %i.ud, %i.uf            ; 2 uses
  %.not91 = icmp eq i32 %i.ug, -1
  br i1 %.not91, label %._crit_edge152, label %.lr.ph151

._crit_edge156:                                   ; preds = %bb.ck, %bb.db, %bb.da, %_ZN4llvm11raw_ostreamlsEPKc.exit187, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit208, %bb.dc, %bb.cj, %._crit_edge152, %_ZNK4llvm9BitVector8set_bitsEv.exit161
  %.not69 = icmp eq ptr %.066, null
  br i1 %.not69, label %bb.de, label %bb.dd

.lr.ph155:                                        ; preds = %_ZNK4llvm9BitVector8set_bitsEv.exit161, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit208
  %.sroa.4.0154 = phi i32 [ %i.wm, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit208 ], [ %i.sa, %_ZNK4llvm9BitVector8set_bitsEv.exit161 ]
  %i.uh = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_15QuietE, i64 120), align 8, !tbaa !59, !range !30, !noundef !31
  %i.ui = trunc nuw i8 %i.uh to i1
  br i1 %i.ui, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.lr.ph155
  %i.uj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #25
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_121checkDebugifyMetadataERN4llvm6ModuleENS0_14iterator_rangeINS0_14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_8FunctionELb0ELb0EvLb0EvEELb0ELb0EEEEENS0_9StringRefESB_bPNS0_9MapVectorISB_18DebugifyStatisticsNS0_8DenseMapISB_jNS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_jEEEENS0_11SmallVectorISt4pairISB_SD_ELj0EEELj0EEE:bb.a
  %.0911.i214 = phi ptr [ %i.yr, %.lr.ph.i212 ], [ %.0911.i214.ph, %.lr.ph.i212.preheader373 ] ; 2 uses
  %i.yn = load i64, ptr %.0911.i214, align 8, !tbaa !215
  %i.yo = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.yn)
  %i.yp = trunc nuw nsw i64 %i.yo to i32
  %i.yq = add i32 %.012.i213, %i.yp               ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.0911.i214, i64 8 ; 2 uses
  %.not.i215 = icmp eq ptr %i.yr, %i.xx
  br i1 %.not.i215, label %_ZNK4llvm9BitVector5countEv.exit217, label %.lr.ph.i212, !llvm.loop !773

_ZNK4llvm9BitVector5countEv.exit217:              ; preds = %.lr.ph.i212, %middle.block368, %_ZNK4llvm9BitVector5countEv.exit
  %.0.lcssa.i216 = phi i32 [ 0, %_ZNK4llvm9BitVector5countEv.exit ], [ %i.ym, %middle.block368 ], [ %i.yq, %.lr.ph.i212 ]
  %i.ys = load i32, ptr %.066, align 4, !tbaa !815
  %i.yt = add i32 %i.ys, %.0.lcssa.i216
  store i32 %i.yt, ptr %.066, align 4, !tbaa !815
  br label %bb.de

bb.de:                                            ; preds = %_ZNK4llvm9BitVector5countEv.exit217, %._crit_edge156
  %i.yu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_15QuietE, i64 120), align 8, !tbaa !59, !range !30, !noundef !31
  %i.yv = trunc nuw i8 %i.yu to i1
  br i1 %i.yv, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.yw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit218

bb.dg:                                            ; preds = %bb.de
  %i.yx = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit218

_ZN12_GLOBAL__N_13dbgEv.exit218:                  ; preds = %bb.df, %bb.dg
  %i.yy = phi ptr [ %i.yw, %bb.df ], [ %i.yx, %bb.dg ] ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 24
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !63
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yy, i64 32 ; 3 uses
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !64 ; 2 uses
  %i.zd = ptrtoint ptr %i.za to i64
  %i.ze = ptrtoint ptr %i.zc to i64
  %i.zf = sub i64 %i.zd, %i.ze
  %i.zg = icmp ugt i64 %.8.val, %i.zf
  br i1 %i.zg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit218
  %i.zh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.yy, ptr noundef %.0.val, i64 noundef %.8.val) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit221

bb.di:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit218
  %.not.i219 = icmp eq i64 %.8.val, 0
  br i1 %.not.i219, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit221, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zc, ptr align 1 %.0.val, i64 %.8.val, i1 false)
  %i.zi = load ptr, ptr %i.zb, align 8, !tbaa !64
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 %.8.val
  store ptr %i.zj, ptr %i.zb, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit221

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit221:   ; preds = %bb.dh, %bb.di, %bb.dj
  %i.zk = load i64, ptr %i.b, align 8, !tbaa !178
  %i.zl = icmp eq i64 %i.zk, 0
  br i1 %i.zl, label %_ZN4llvm11raw_ostreamlsEPKc.exit231, label %bb.dk

bb.dk:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit221
  %i.zm = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_15QuietE, i64 120), align 8, !tbaa !59, !range !30, !noundef !31
  %i.zn = trunc nuw i8 %i.zm to i1
  br i1 %i.zn, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.zo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit222

bb.dm:                                            ; preds = %bb.dk
  %i.zp = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit222

_ZN12_GLOBAL__N_13dbgEv.exit222:                  ; preds = %bb.dl, %bb.dm
  %i.zq = phi ptr [ %i.zo, %bb.dl ], [ %i.zp, %bb.dm ] ; 4 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !63
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 32 ; 3 uses
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !64 ; 2 uses
  %i.zv = ptrtoint ptr %i.zs to i64
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = sub i64 %i.zv, %i.zw
  %i.zy = icmp ult i64 %i.zx, 2
  br i1 %i.zy, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit222
  %i.zz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.zq, ptr noundef nonnull @.str.99, i64 noundef 2) #25 ; 2 uses
  %.phi.trans.insert191 = getelementptr inbounds nuw i8, ptr %i.zz, i64 32
  %.pre192 = load ptr, ptr %.phi.trans.insert191, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit225

bb.do:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit222
  store i16 23328, ptr %i.zu, align 1
  %i.aaa = load ptr, ptr %i.zt, align 8, !tbaa !64
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2 ; 2 uses
  store ptr %i.aab, ptr %i.zt, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit225

_ZN4llvm11raw_ostreamlsEPKc.exit225:              ; preds = %bb.dn, %bb.do
  %i.aac = phi ptr [ %.pre192, %bb.dn ], [ %i.aab, %bb.do ] ; 3 uses
  %.0.i.i224 = phi ptr [ %i.zz, %bb.dn ], [ %i.zq, %bb.do ] ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %9, align 8, !tbaa !276 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %i.b, align 8, !tbaa !215 ; 5 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.0.i.i224, i64 24
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !63
  %i.aaf = getelementptr inbounds nuw i8, ptr %.0.i.i224, i64 32 ; 2 uses
  %i.aag = ptrtoint ptr %i.aae to i64
  %i.aah = ptrtoint ptr %i.aac to i64
  %i.aai = sub i64 %i.aag, %i.aah
  %i.aaj = icmp ugt i64 %.sroa.2.0.copyload, %i.aai
  br i1 %i.aaj, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit225
  %i.aak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i224, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #25 ; 2 uses
  %.phi.trans.insert193 = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  %.pre194 = load ptr, ptr %.phi.trans.insert193, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit228

bb.dq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit225
  %.not.i226 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i226, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit228, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aac, ptr align 1 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  %i.aal = load ptr, ptr %i.aaf, align 8, !tbaa !64
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aal, i64 %.sroa.2.0.copyload ; 2 uses
  store ptr %i.aam, ptr %i.aaf, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit228

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit228:   ; preds = %bb.dp, %bb.dq, %bb.dr
  %i.aan = phi ptr [ %.pre194, %bb.dp ], [ %i.aam, %bb.dr ], [ %i.aac, %bb.dq ] ; 2 uses
  %.0.i227 = phi ptr [ %i.aak, %bb.dp ], [ %.0.i.i224, %bb.dr ], [ %.0.i.i224, %bb.dq ] ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %.0.i227, i64 24
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !63
  %i.aaq = icmp eq ptr %i.aap, %i.aan
  br i1 %i.aaq, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit228
  %i.aar = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i227, ptr noundef nonnull @.str.100, i64 noundef 1) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit231

bb.dt:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit228
  %i.aas = getelementptr inbounds nuw i8, ptr %.0.i227, i64 32 ; 2 uses
  store i8 93, ptr %i.aan, align 1
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !64
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 1
  store ptr %i.aau, ptr %i.aas, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit231

_ZN4llvm11raw_ostreamlsEPKc.exit231:              ; preds = %bb.dt, %bb.ds, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit221
  %i.aav = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_15QuietE, i64 120), align 8, !tbaa !59, !range !30, !noundef !31
  %i.aaw = trunc nuw i8 %i.aav to i1
  br i1 %i.aaw, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit231
  %i.aax = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit232

bb.dv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit231
  %i.aay = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #25
  br label %_ZN12_GLOBAL__N_13dbgEv.exit232

_ZN12_GLOBAL__N_13dbgEv.exit232:                  ; preds = %bb.du, %bb.dv
  %i.aaz = phi ptr [ %i.aax, %bb.du ], [ %i.aay, %bb.dv ] ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !63
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 32 ; 3 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !64 ; 2 uses
  %i.abe = ptrtoint ptr %i.abb to i64
  %i.abf = ptrtoint ptr %i.abd to i64
  %i.abg = sub i64 %i.abe, %i.abf
  %i.abh = icmp ult i64 %i.abg, 2
  br i1 %i.abh, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit232
  %i.abi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aaz, ptr noundef nonnull @.str.101, i64 noundef 2) #25 ; 2 uses
  %.phi.trans.insert195 = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %.pre196 = load ptr, ptr %.phi.trans.insert195, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

bb.dx:                                            ; preds = %_ZN12_GLOBAL__N_13dbgEv.exit232
  store i16 8250, ptr %i.abd, align 1
  %i.abj = load ptr, ptr %i.abc, align 8, !tbaa !64
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 2 ; 2 uses
  store ptr %i.abk, ptr %i.abc, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit235

_ZN4llvm11raw_ostreamlsEPKc.exit235:              ; preds = %bb.dw, %bb.dx
  %i.abl = phi ptr [ %.pre196, %bb.dw ], [ %i.abk, %bb.dx ] ; 2 uses
  %.0.i.i234 = phi ptr [ %i.abi, %bb.dw ], [ %i.aaz, %bb.dx ] ; 4 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.0.i.i234, i64 24
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !63
  %i.abo = ptrtoint ptr %i.abn to i64
  %i.abp = ptrtoint ptr %i.abl to i64
  %i.abq = sub i64 %i.abo, %i.abp
  %i.abr = icmp ult i64 %i.abq, 4
  br i1 %i.abr, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit235
  %.str.102..str.103 = select i1 %.086.lcssa, ptr @.str.102, ptr @.str.103
  %i.abs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i234, ptr noundef nonnull %.str.102..str.103, i64 noundef 4) #25 ; 2 uses
  %.phi.trans.insert197 = getelementptr inbounds nuw i8, ptr %i.abs, i64 32
  %.pre198 = load ptr, ptr %.phi.trans.insert197, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit239

bb.dz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit235
  %i.abt = getelementptr inbounds nuw i8, ptr %.0.i.i234, i64 32 ; 2 uses
  %13 = select i1 %.086.lcssa, i32 1279869254, i32 1397965136
  store i32 %13, ptr %i.abl, align 1
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !64
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 4 ; 2 uses
  store ptr %i.abv, ptr %i.abt, align 8, !tbaa !64
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit239

_ZN4llvm11raw_ostreamlsEPKc.exit239:              ; preds = %bb.dy, %bb.dz
  %i.abw = phi ptr [ %.pre198, %bb.dy ], [ %i.abv, %bb.dz ] ; 3 uses
  %.0.i.i238 = phi ptr [ %i.abs, %bb.dy ], [ %.0.i.i234, %bb.dz ] ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %.0.i.i238, i64 24
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !63
  %.not.i240 = icmp ult ptr %i.abw, %i.aby
  br i1 %.not.i240, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit239
  %i.abz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i238, i8 noundef zeroext 10) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.eb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit239
  %i.aca = getelementptr inbounds nuw i8, ptr %.0.i.i238, i64 32
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 1
  store ptr %i.acb, ptr %i.aca, align 8, !tbaa !64
  store i8 10, ptr %i.abw, align 1, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.ea, %bb.eb
  br i1 %5, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.acc = call noundef zeroext i1 @_ZN4llvm21stripDebugifyMetadataERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(1288) %0)
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %_ZN4llvm11raw_ostreamlsEc.exit
  %.0 = phi i1 [ %i.acc, %bb.ec ], [ false, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %i.acd = load ptr, ptr %11, align 8, !tbaa !34  ; 2 uses
  %i.ace = icmp eq ptr %i.acd, %i.dm
  br i1 %i.ace, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @free(ptr noundef %i.acd) #25
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.ed, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.acf = load ptr, ptr %10, align 8, !tbaa !34  ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.cu
  br i1 %i.acg, label %_ZN4llvm9BitVectorD2Ev.exit242, label %bb.ef

bb.ef:                                            ; preds = %_ZN4llvm9BitVectorD2Ev.exit
  call void @free(ptr noundef %i.acf) #25
  br label %_ZN4llvm9BitVectorD2Ev.exit242

_ZN4llvm9BitVectorD2Ev.exit242:                   ; preds = %_ZN4llvm9BitVectorD2Ev.exit, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.i, %bb.h, %_ZN4llvm9BitVectorD2Ev.exit242
  %.064 = phi i1 [ %.0, %_ZN4llvm9BitVectorD2Ev.exit242 ], [ false, %bb.h ], [ false, %bb.i ]
  ret i1 %.064
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(1784) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %class.anon.341, align 8            ; 5 uses
  %4 = alloca %class.anon.308, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %0, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !221  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 364
  %i.f = load i32, ptr %i.e, align 4, !tbaa !224
  %.not.i.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !235

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE18growAndEmplaceBackIJZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0EEERS5_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %4)
  br label %"_ZN4llvm28PassInstrumentationCallbacks36registerBeforeNonSkippedPassCallbackIZNS_27DebugifyEachInstrumentation17registerCallbacksERS0_RNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0EEvT_.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.g ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 0, ptr %i.k, align 8
  store ptr %0, ptr %i.i, align 8, !tbaa !816
  %.sroa.2.0..0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %2, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i, align 8, !tbaa !332
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0SD_EET_NS4_8CalledAsIT0_EEENUlPKS4_S2_RS3_E_8__invokeESJ_S2_SK_", ptr %i.j, align 8, !tbaa !350
  %i.l = load i32, ptr %i.c, align 8, !tbaa !221
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !221
  br label %"_ZN4llvm28PassInstrumentationCallbacks36registerBeforeNonSkippedPassCallbackIZNS_27DebugifyEachInstrumentation17registerCallbacksERS0_RNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0EEvT_.exit"

"_ZN4llvm28PassInstrumentationCallbacks36registerBeforeNonSkippedPassCallbackIZNS_27DebugifyEachInstrumentation17registerCallbacksERS0_RNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0EEvT_.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %0, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !221  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 540
  %i.s = load i32, ptr %i.r, align 4, !tbaa !224
  %.not.i.i7 = icmp ult i32 %i.q, %i.s
  br i1 %.not.i.i7, label %bb.e, label %bb.d, !prof !235

bb.d:                                             ; preds = %"_ZN4llvm28PassInstrumentationCallbacks36registerBeforeNonSkippedPassCallbackIZNS_27DebugifyEachInstrumentation17registerCallbacksERS0_RNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0EEvT_.exit"
  call fastcc void @"_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEELb0EE18growAndEmplaceBackIJZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1EEERS8_DpOT_"(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(16) %3)
  br label %"_ZN4llvm28PassInstrumentationCallbacks25registerAfterPassCallbackIZNS_27DebugifyEachInstrumentation17registerCallbacksERS0_RNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1EEvT_b.exit"

bb.e:                                             ; preds = %"_ZN4llvm28PassInstrumentationCallbacks36registerBeforeNonSkippedPassCallbackIZNS_27DebugifyEachInstrumentation17registerCallbacksERS0_RNS_15AnalysisManagerINS_6ModuleEJEEEE3$_0EEvT_.exit"
  %i.t = zext i32 %i.q to i64
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.t ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 0, ptr %i.x, align 8
  store ptr %0, ptr %i.v, align 8, !tbaa !816
  %.sroa.2.0..0..sroa_idx.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %2, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i8, align 8, !tbaa !332
  store ptr @"_ZZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyERKNS_17PreservedAnalysesEEEC1IZNS_27DebugifyEachInstrumentation17registerCallbacksERNS_28PassInstrumentationCallbacksERNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1SG_EET_NS7_8CalledAsIT0_EEENUlPKS7_S2_RS3_S6_E_8__invokeESM_S2_SN_S6_", ptr %i.w, align 8, !tbaa !352
  %i.y = load i32, ptr %i.p, align 8, !tbaa !221
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.p, align 8, !tbaa !221
  br label %"_ZN4llvm28PassInstrumentationCallbacks25registerAfterPassCallbackIZNS_27DebugifyEachInstrumentation17registerCallbacksERS0_RNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1EEvT_b.exit"

"_ZN4llvm28PassInstrumentationCallbacks25registerAfterPassCallbackIZNS_27DebugifyEachInstrumentation17registerCallbacksERS0_RNS_15AnalysisManagerINS_6ModuleEJEEEE3$_1EEvT_b.exit": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm2cl3optImLb0ENS0_6parserImEEE16handleOccurrenceEjNS_9StringRefES5_(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !215
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.c = call noundef zeroext i1 @_ZN4llvm2cl6parserImE5parseERNS0_6OptionENS_9StringRefES5_Rm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25 ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.a, align 8, !tbaa !215
  store i64 %i.e, ptr %i.d, align 8, !tbaa !241
  %i.f = trunc i32 %1 to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.f, ptr %i.g, align 4, !tbaa !361
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  %.not.i.i.not = icmp eq ptr %i.i, null
  br i1 %.not.i.i.not, label %bb.c, label %_ZNKSt8functionIFvRKmEEclES1_.exit

_ZNKSt8functionIFvRKmEEclES1_.exit:               ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !819
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25, !inline_history !817
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt8functionIFvRKmEEclES1_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm2cl3optImLb0ENS0_6parserImEEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 2
}

declare void @_ZN4llvm2cl6Option6anchorEv(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optImLb0ENS0_6parserImEEED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optImLb0ENS0_6parserImEEEE, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #25, !inline_history !820 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !22
end_hunk_2
