Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APINotesWriter?download=true
inline.NumInlined: 8467
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang9api_notes14APINotesWriter14Implementation13writeTagBlockERN4llvm15BitstreamWriterE:bb.a
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 384
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = select i1 %i.gf, i64 %i.gh, i64 0
  %i.gj = add i64 %i.fk, 10
  %i.gk = select i1 %i.fi, i64 %i.gj, i64 10
  %i.gl = add i64 %i.fq, %i.gk
  %i.gm = add i64 %i.gl, %i.fw
  %i.gn = add i64 %i.gm, %i.gc
  %i.go = add i64 %i.gn, %i.gi
  %i.gp = call fastcc noundef i32 @_ZN5clang9api_notes12_GLOBAL__N_121getCommonTypeInfoSizeERKNS0_14CommonTypeInfoE(ptr noundef nonnull readonly align 8 dereferenceable(408) %i.ff)
  %i.gq = trunc i64 %i.go to i32
  %i.gr = add i32 %.03.i.i.i.i, 3
  %i.gs = add i32 %i.gr, %spec.select.i.i.i49.i.i
  %.1.i.i.i.i.i = add i32 %i.gs, %i.fb
  %.2.i.i.i.i.i = add i32 %.1.i.i.i.i.i, %i.fe
  %i.gt = add i32 %.2.i.i.i.i.i, %i.gp
  %i.gu = add i32 %i.gt, %i.gq                    ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 424 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gv, %i.ew
  br i1 %.not.i.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEE.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEE.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gw = trunc i32 %i.gu to i16
  br label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEE.exit.i.i

_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEE.exit.i.i: ; preds = %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEE.exit.loopexit.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i16 [ 2, %.lr.ph.i.i ], [ %i.gw, %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEE.exit.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i16 12, ptr %i.ag, align 2, !tbaa !222
  %i.gx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.ag, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i16 %.0.lcssa.i.i.i.i, ptr %i.af, align 2, !tbaa !222
  %i.gy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.af, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.sroa.08.0.copyload.i.i = load i64, ptr %.04076.i.i, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %.sroa.08.0.copyload.i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i32 %.sroa.0.0.extract.trunc.i.i.i, ptr %i.ae, align 4, !tbaa !133
  %i.gz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.ae, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.ha = shl i64 %.sroa.08.0.copyload.i.i, 1
  %i.hb = and i64 %i.ha, -8589934592
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %i.hb, ptr %8, align 8, !tbaa !190
  %i.hc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %8, i64 noundef 8) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.hd = load ptr, ptr %i.et, align 8, !tbaa !147 ; 5 uses
  %i.he = load i32, ptr %i.eu, align 8, !tbaa !144 ; 3 uses
  %i.hf = zext i32 %i.he to i64                   ; 2 uses
  %.idx.i.i50.i.i = mul nuw nsw i64 %i.hf, 424
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %.idx.i.i50.i.i ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEE.exit.i.i
  %i.hh = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hf, i1 true)
  %i.hi = shl nuw nsw i64 %i.hh, 1
  %i.hj = xor i64 %i.hi, 126
  call fastcc void @_ZSt16__introsort_loopIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_T1_(ptr noundef %i.hd, ptr noundef nonnull %i.hg, i64 noundef %i.hj)
  %i.hk = icmp ugt i32 %i.he, 16
  br i1 %i.hk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hd, i64 6784 ; 2 uses
  call fastcc void @_ZSt16__insertion_sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.hl)
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.l
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.hl, %bb.l ] ; 2 uses
  call fastcc void @_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_T0_(ptr noundef nonnull %.07.i.i.i.i.i.i.i.i)
  %i.hm = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 424 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hm, %i.hg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !834

bb.m:                                             ; preds = %bb.k
  call fastcc void @_ZSt16__insertion_sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_(ptr noundef nonnull %i.hd, ptr noundef nonnull %i.hg)
  br label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i

_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.m, %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEE.exit.i.i
  %i.hn = load i32, ptr %i.eu, align 8, !tbaa !144
  %i.ho = trunc i32 %i.hn to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i16 %i.ho, ptr %i.ad, align 2, !tbaa !222
  %i.hp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.ad, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.hq = load ptr, ptr %i.et, align 8, !tbaa !147 ; 2 uses
  %i.hr = load i32, ptr %i.eu, align 8, !tbaa !144 ; 2 uses
  %i.hs = zext i32 %i.hr to i64
  %.idx18.i.i.i.i = mul nuw nsw i64 %i.hs, 424
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %.idx18.i.i.i.i
  %.not16.i.i.i.i = icmp eq i32 %i.hr, 0
  br i1 %.not16.i.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_12TagTableInfoENS0_18SingleDeclTableKeyENS0_7TagInfoEE8EmitDataERN4llvm11raw_ostreamES4_RNS7_11SmallVectorISt4pairINS7_12VersionTupleES5_ELj1EEEj.exit.i.i, label %.lr.ph.i.i51.i.i

.lr.ph.i.i51.i.i:                                 ; preds = %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes7TagInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_12TagTableInfoENS4_18SingleDeclTableKeyES5_E8EmitDataES2_SE_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i
  %.017.i.i.i.i = phi ptr [ %i.pa, %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes7TagInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_12TagTableInfoENS4_18SingleDeclTableKeyES5_E8EmitDataES2_SE_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i ], [ %i.hq, %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i ] ; 23 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 8 ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 4            ; 2 uses
  %i.hw = and i64 %i.hv, 4611686018427387904
  %.not.i.i.i = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.i51.i.i
  %i.hx = and i64 %i.hv, 2147483648
  %.not56.i.i.i = icmp eq i64 %i.hx, 0
  br i1 %.not56.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hy = load i64, ptr %.017.i.i.i.i, align 4
  %.lobit.i.i.i = lshr i64 %i.hy, 63
  %..i.i.i = trunc nuw nsw i64 %.lobit.i.i.i to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph.i.i51.i.i
  %.0.i62.i.i = phi i8 [ 2, %bb.n ], [ 3, %.lr.ph.i.i51.i.i ], [ %..i.i.i, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %.0.i62.i.i, ptr %i.e, align 1, !tbaa !142
  %i.hz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.e, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ia = load i64, ptr %.017.i.i.i.i, align 4
  %i.ib = trunc i64 %i.ia to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ib, ptr %i.d, align 4, !tbaa !133
  %i.ic = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.d, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.id = load i64, ptr %.017.i.i.i.i, align 4    ; 2 uses
  %i.ie = icmp slt i64 %i.id, 0
  br i1 %i.ie, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.if = lshr i64 %i.id, 32
  %i.ig = trunc nuw i64 %i.if to i32
  %i.ih = and i32 %i.ig, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.ih, ptr %i.c, align 4, !tbaa !133
  %i.ii = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.c, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ij = load i64, ptr %i.hu, align 4            ; 3 uses
  %i.ik = and i64 %i.ij, 2147483648
  %.not57.i.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not57.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.il = trunc i64 %i.ij to i32
  %.sroa.030.0.extract.trunc.i.i.i = and i32 %i.il, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.030.0.extract.trunc.i.i.i, ptr %i.b, align 4, !tbaa !133
  %i.im = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.b, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre.i.i.i = load i64, ptr %i.hu, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.in = phi i64 [ %.pre.i.i.i, %bb.s ], [ %i.ij, %bb.r ] ; 2 uses
  %i.io = and i64 %i.in, 4611686018427387904
  %.not58.i.i.i = icmp eq i64 %i.io, 0
  br i1 %.not58.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ip = lshr i64 %i.in, 32
  %i.iq = trunc nuw i64 %i.ip to i32
  %i.ir = and i32 %i.iq, 1048575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ir, ptr %i.a, align 4, !tbaa !133
  %i.is = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.a, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i

_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i: ; preds = %bb.u, %bb.t
  %i.it = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 416
  %i.iv = load i64, ptr %i.iu, align 8            ; 2 uses
  %i.iw = and i64 %i.iv, 4294967296
  %.not.i.i.i59.i.i = icmp eq i64 %i.iw, 0
  %.tr.i.i.i.i.i = trunc i64 %i.iv to i8
  %i.ix = shl i8 %.tr.i.i.i.i.i, 2
  %i.iy = add i8 %i.ix, 4
  %.0.i.i.i.i.i = select i1 %.not.i.i.i59.i.i, i8 0, i8 %i.iy
  %i.iz = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 208 ; 3 uses
  %i.ja = load i8, ptr %i.iz, align 8             ; 2 uses
  %i.jb = and i8 %i.ja, 1
  %.not.i.i.i.i60.i.i = icmp eq i8 %i.jb, 0
  %.lobit.i.i.i.i.i.i = and i8 %i.ja, 2
  %i.jc = or disjoint i8 %.lobit.i.i.i.i.i.i, 1
  %i.jd = select i1 %.not.i.i.i.i60.i.i, i8 0, i8 %i.jc
  %.1.i.i.i61.i.i = or disjoint i8 %.0.i.i.i.i.i, %i.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i8 %.1.i.i.i61.i.i, ptr %i.y, align 1, !tbaa !142
  %i.je = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.y, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.jf = load i8, ptr %i.iz, align 8             ; 2 uses
  %i.jg = and i8 %i.jf, 4
  %.not.i20.i.i.i.i.i = icmp eq i8 %i.jg, 0
  br i1 %.not.i20.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  %12 = lshr i8 %i.jf, 3
  %.lobit.i21.i.i.i.i.i = and i8 %12, 1
  %13 = sub nuw nsw i8 2, %.lobit.i21.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i8 %13, ptr %i.x, align 1, !tbaa !142
  %i.jh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.x, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.x

bb.w:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.w, align 1, !tbaa !142
  %i.ji = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.w, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.jj = load i8, ptr %i.iz, align 8             ; 2 uses
  %i.jk = and i8 %i.jj, 16
  %.not.i23.i.i.i.i.i = icmp eq i8 %i.jk, 0
  br i1 %.not.i23.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %14 = lshr i8 %i.jj, 5
  %.lobit.i24.i.i.i.i.i = and i8 %14, 1
  %15 = sub nuw nsw i8 2, %.lobit.i24.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 %15, ptr %i.v, align 1, !tbaa !142
  %i.jl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.v, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 0, ptr %i.u, align 1, !tbaa !142
  %i.jm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.u, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.jn = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 248
  store i8 0, ptr %i.ct, align 8, !tbaa !495
  %i.jo = load i8, ptr %i.jn, align 8, !tbaa !495, !range !330, !noundef !331
  %i.jp = trunc nuw i8 %i.jo to i1
  br i1 %i.jp, label %bb.ab, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.jq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 216
  store ptr %i.cu, ptr %3, align 8, !tbaa !332
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !150 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 224
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #17
  store i64 %i.jt, ptr %i.t, align 8, !tbaa !190
  %i.ju = icmp ugt i64 %i.jt, 15
  br i1 %i.ju, label %bb.ac, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.jv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0) #17 ; 2 uses
  store ptr %i.jv, ptr %3, align 8, !tbaa !150
  %i.jw = load i64, ptr %i.t, align 8, !tbaa !190
  store i64 %i.jw, ptr %i.cu, align 8, !tbaa !142
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.ac, %bb.ab
  %i.jx = phi ptr [ %i.jv, %bb.ac ], [ %i.cu, %bb.ab ] ; 2 uses
  switch i64 %i.jt, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jy = load i8, ptr %i.jr, align 1, !tbaa !142
  store i8 %i.jy, ptr %i.jx, align 1, !tbaa !142
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jx, ptr align 1 %i.jr, i64 %i.jt, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jz = load i64, ptr %i.t, align 8, !tbaa !190 ; 2 uses
  store i64 %i.jz, ptr %i.cv, align 8, !tbaa !151
  %i.ka = load ptr, ptr %3, align 8, !tbaa !150
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.jz
  store i8 0, ptr %i.kb, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #17
  store i8 1, ptr %i.ct, align 8, !tbaa !495
  %i.kc = load i64, ptr %i.cv, align 8, !tbaa !151
  %i.kd = trunc i64 %i.kc to i16
  %i.ke = add i16 %i.kd, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i16 %i.ke, ptr %i.s, align 2, !tbaa !222
  %i.kf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.s, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.kg = load ptr, ptr %3, align 8, !tbaa !150
  %i.kh = load i64, ptr %i.cv, align 8, !tbaa !151
  %i.ki = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.kg, i64 noundef %i.kh) #17 ; 0 uses
  br label %bb.ag

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i16 0, ptr %i.r, align 2, !tbaa !222
  %i.kj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.r, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i, %bb.af
  %i.kk = load i8, ptr %i.ct, align 8, !tbaa !495, !range !330, !noundef !331
  %i.kl = trunc nuw i8 %i.kk to i1
  store i8 0, ptr %i.ct, align 8, !tbaa !495
  br i1 %i.kl, label %bb.ah, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.km = load ptr, ptr %3, align 8, !tbaa !150   ; 2 uses
  %i.kn = icmp eq ptr %i.km, %i.cu
  br i1 %i.kn, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.ko = load i64, ptr %i.cu, align 8, !tbaa !142
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kp) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.kq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 288
  store i8 0, ptr %i.cw, align 8, !tbaa !495
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !495, !range !330, !noundef !331
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.ai, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit30.i.i.i.i.i

bb.ai:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 256
  store ptr %i.cx, ptr %4, align 8, !tbaa !332
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !150 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 264
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #17
  store i64 %i.kw, ptr %i.q, align 8, !tbaa !190
  %i.kx = icmp ugt i64 %i.kw, 15
  br i1 %i.kx, label %bb.aj, label %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.ky = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0) #17 ; 2 uses
  store ptr %i.ky, ptr %4, align 8, !tbaa !150
  %i.kz = load i64, ptr %i.q, align 8, !tbaa !190
  store i64 %i.kz, ptr %i.cx, align 8, !tbaa !142
  br label %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i:        ; preds = %bb.aj, %bb.ai
  %i.la = phi ptr [ %i.ky, %bb.aj ], [ %i.cx, %bb.ai ] ; 2 uses
  switch i64 %i.kw, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  %i.lb = load i8, ptr %i.ku, align 1, !tbaa !142
  store i8 %i.lb, ptr %i.la, align 1, !tbaa !142
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.la, ptr align 1 %i.ku, i64 %i.kw, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  %i.lc = load i64, ptr %i.q, align 8, !tbaa !190 ; 2 uses
  store i64 %i.lc, ptr %i.cy, align 8, !tbaa !151
  %i.ld = load ptr, ptr %4, align 8, !tbaa !150
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lc
  store i8 0, ptr %i.le, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #17
  store i8 1, ptr %i.cw, align 8, !tbaa !495
  %i.lf = load i64, ptr %i.cy, align 8, !tbaa !151
  %i.lg = trunc i64 %i.lf to i16
  %i.lh = add i16 %i.lg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i16 %i.lh, ptr %i.p, align 2, !tbaa !222
  %i.li = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.p, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.lj = load ptr, ptr %4, align 8, !tbaa !150
  %i.lk = load i64, ptr %i.cy, align 8, !tbaa !151
  %i.ll = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.lj, i64 noundef %i.lk) #17 ; 0 uses
  br label %bb.an

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit30.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i16 0, ptr %i.o, align 2, !tbaa !222
  %i.lm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.o, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit30.i.i.i.i.i, %bb.am
  %i.ln = load i8, ptr %i.cw, align 8, !tbaa !495, !range !330, !noundef !331
  %i.lo = trunc nuw i8 %i.ln to i1
  store i8 0, ptr %i.cw, align 8, !tbaa !495
  br i1 %i.lo, label %bb.ao, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit37.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.lp = load ptr, ptr %4, align 8, !tbaa !150   ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.cx
  br i1 %i.lq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit37.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i.i.i: ; preds = %bb.ao
  %i.lr = load i64, ptr %i.cx, align 8, !tbaa !142
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit37.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit37.i.i.i.i.i: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35.i.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.lt = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 328
  store i8 0, ptr %i.cz, align 8, !tbaa !495
  %i.lu = load i8, ptr %i.lt, align 8, !tbaa !495, !range !330, !noundef !331
  %i.lv = trunc nuw i8 %i.lu to i1
  br i1 %i.lv, label %bb.ap, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit40.i.i.i.i.i

bb.ap:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit37.i.i.i.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 296
  store ptr %i.da, ptr %5, align 8, !tbaa !332
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !150 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 304
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #17
end_hunk_0
