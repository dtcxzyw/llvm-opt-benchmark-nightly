Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APINotesWriter?download=true
inline.NumInlined: 8467
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang9api_notes14APINotesWriter14Implementation17writeContextBlockERN4llvm15BitstreamWriterE:bb.a
  %.03712.i.i = load ptr, ptr %i.ms, align 8, !tbaa !674 ; 2 uses
  %.not4313.i.i = icmp eq ptr %.03712.i.i, null
  br i1 %.not4313.i.i, label %.loopexit.i.i38, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %bb.ae, %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE8EmitDataERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEEj.exit.i.i
  %.03714.i.i = phi ptr [ %.037.i.i, %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE8EmitDataERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEEj.exit.i.i ], [ %.03712.i.i, %bb.ae ] ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.03714.i.i, i64 248
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 %i.nk, ptr %i.n, align 8, !tbaa !190
  %i.nl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.n, i64 noundef 8) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.nm = getelementptr inbounds nuw i8, ptr %.03714.i.i, i64 8 ; 3 uses
  %.val.i.i35 = load ptr, ptr %i.nm, align 8, !tbaa !147 ; 2 uses
  %i.nn = getelementptr i8, ptr %.03714.i.i, i64 16 ; 4 uses
  %.val44.i.i = load i32, ptr %i.nn, align 8, !tbaa !144 ; 2 uses
  %i.no = zext i32 %.val44.i.i to i64
  %.idx.i.i.i.i36 = mul nuw nsw i64 %i.no, 216
  %i.np = getelementptr inbounds nuw i8, ptr %.val.i.i35, i64 %.idx.i.i.i.i36
  %.not1.i.i.i.i = icmp eq i32 %.val44.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i34, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.oc, %.lr.ph.i.i.i.i ], [ 2, %.lr.ph.i.i34 ]
  %.0112.i.i.i.i = phi ptr [ %i.od, %.lr.ph.i.i.i.i ], [ %.val.i.i35, %.lr.ph.i.i34 ] ; 4 uses
  %.011.val.i.i.i.i = load i64, ptr %.0112.i.i.i.i, align 4
  %i.nq = getelementptr i8, ptr %.0112.i.i.i.i, i64 8
  %.011.val12.i.i.i.i = load i64, ptr %i.nq, align 4 ; 2 uses
  %i.nr = icmp slt i64 %.011.val.i.i.i.i, 0
  %spec.select.i.i.i47.i.i = select i1 %i.nr, i32 9, i32 5
  %i.ns = trunc i64 %.011.val12.i.i.i.i to i32
  %i.nt = lshr i32 %i.ns, 29
  %i.nu = and i32 %i.nt, 4
  %i.nv = lshr i64 %.011.val12.i.i.i.i, 60
  %i.nw = trunc nuw nsw i64 %i.nv to i32
  %i.nx = and i32 %i.nw, 4
  %i.ny = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 16
  %i.nz = call fastcc noundef i32 @_ZN5clang9api_notes12_GLOBAL__N_121getCommonTypeInfoSizeERKNS0_14CommonTypeInfoE(ptr noundef nonnull readonly align 8 dereferenceable(193) %i.ny)
  %i.oa = add i32 %.03.i.i.i.i, 1
  %.1.i.i.i.i.i = add i32 %i.oa, %spec.select.i.i.i47.i.i
  %.2.i.i.i.i.i = add i32 %.1.i.i.i.i.i, %i.nz
  %i.ob = add i32 %.2.i.i.i.i.i, %i.nu
  %i.oc = add i32 %i.ob, %i.nx                    ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.od, %i.np
  br i1 %.not.i.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.oe = trunc i32 %i.oc to i16
  br label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.i.i

_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.i.i: ; preds = %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.loopexit.i.i, %.lr.ph.i.i34
  %.0.lcssa.i.i.i.i = phi i16 [ 2, %.lr.ph.i.i34 ], [ %i.oe, %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i16 4, ptr %i.m, align 2, !tbaa !222
  %i.of = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.m, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i16 %.0.lcssa.i.i.i.i, ptr %i.l, align 2, !tbaa !222
  %i.og = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.l, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.oh = load i32, ptr %.03714.i.i, align 8, !tbaa !675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i32 %i.oh, ptr %i.k, align 4, !tbaa !133
  %i.oi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.k, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.oj = load ptr, ptr %i.nm, align 8, !tbaa !147 ; 5 uses
  %i.ok = load i32, ptr %i.nn, align 8, !tbaa !144 ; 3 uses
  %i.ol = zext i32 %i.ok to i64                   ; 2 uses
  %.idx.i.i48.i.i = mul nuw nsw i64 %i.ol, 216
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.idx.i.i48.i.i ; 3 uses
  %.not.i.i.i.i.i.i37 = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.i.i
  %i.on = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ol, i1 true)
  %i.oo = shl nuw nsw i64 %i.on, 1
  %i.op = xor i64 %i.oo, 126
  call fastcc void @_ZSt16__introsort_loopIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_T1_(ptr noundef %i.oj, ptr noundef nonnull %i.om, i64 noundef %i.op)
  %i.oq = icmp ugt i32 %i.ok, 16
  br i1 %i.oq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.or = getelementptr inbounds nuw i8, ptr %i.oj, i64 3456 ; 2 uses
  call fastcc void @_ZSt16__insertion_sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_(ptr noundef nonnull %i.oj, ptr noundef nonnull %i.or)
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ag
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.os, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.or, %bb.ag ] ; 2 uses
  call fastcc void @_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_T0_(ptr noundef nonnull %.07.i.i.i.i.i.i.i.i)
  %i.os = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.os, %i.om
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !658

bb.ah:                                            ; preds = %bb.af
  call fastcc void @_ZSt16__insertion_sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_(ptr noundef nonnull %i.oj, ptr noundef nonnull %i.om)
  br label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i

_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.ah, %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEE.exit.i.i
  %i.ot = load i32, ptr %i.nn, align 8, !tbaa !144
  %i.ou = trunc i32 %i.ot to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.ou, ptr %i.j, align 2, !tbaa !222
  %i.ov = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.j, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ow = load ptr, ptr %i.nm, align 8, !tbaa !147 ; 2 uses
  %i.ox = load i32, ptr %i.nn, align 8, !tbaa !144 ; 2 uses
  %i.oy = zext i32 %i.ox to i64
  %.idx18.i.i.i.i = mul nuw nsw i64 %i.oy, 216
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.idx18.i.i.i.i
  %.not16.i.i.i.i = icmp eq i32 %i.ox, 0
  br i1 %.not16.i.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE8EmitDataERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEEj.exit.i.i, label %.lr.ph.i.i49.i.i

.lr.ph.i.i49.i.i:                                 ; preds = %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes11ContextInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_20ContextInfoTableInfoEjS5_E8EmitDataES2_jRNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i
  %.017.i.i.i.i = phi ptr [ %i.qr, %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes11ContextInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_20ContextInfoTableInfoEjS5_E8EmitDataES2_jRNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i ], [ %i.ow, %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i ] ; 7 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 8 ; 3 uses
  %i.pb = load i64, ptr %i.pa, align 4            ; 2 uses
  %i.pc = and i64 %i.pb, 4611686018427387904
  %.not.i.i.i = icmp eq i64 %i.pc, 0
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph.i.i49.i.i
  %i.pd = and i64 %i.pb, 2147483648
  %.not56.i.i.i = icmp eq i64 %i.pd, 0
  br i1 %.not56.i.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.pe = load i64, ptr %.017.i.i.i.i, align 4
  %.lobit.i.i.i = lshr i64 %i.pe, 63
  %..i.i.i = trunc nuw nsw i64 %.lobit.i.i.i to i8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.lr.ph.i.i49.i.i
  %.0.i57.i.i = phi i8 [ 2, %bb.ai ], [ 3, %.lr.ph.i.i49.i.i ], [ %..i.i.i, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %.0.i57.i.i, ptr %i.e, align 1, !tbaa !142
  %i.pf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.e, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.pg = load i64, ptr %.017.i.i.i.i, align 4
  %i.ph = trunc i64 %i.pg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ph, ptr %i.d, align 4, !tbaa !133
  %i.pi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.d, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.pj = load i64, ptr %.017.i.i.i.i, align 4    ; 2 uses
  %i.pk = icmp slt i64 %i.pj, 0
  br i1 %i.pk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pl = lshr i64 %i.pj, 32
  %i.pm = trunc nuw i64 %i.pl to i32
  %i.pn = and i32 %i.pm, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.pn, ptr %i.c, align 4, !tbaa !133
  %i.po = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.c, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.pp = load i64, ptr %i.pa, align 4            ; 3 uses
  %i.pq = and i64 %i.pp, 2147483648
  %.not57.i.i.i = icmp eq i64 %i.pq, 0
  br i1 %.not57.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.pr = trunc i64 %i.pp to i32
  %.sroa.030.0.extract.trunc.i.i.i = and i32 %i.pr, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.030.0.extract.trunc.i.i.i, ptr %i.b, align 4, !tbaa !133
  %i.ps = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.b, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre.i.i.i = load i64, ptr %i.pa, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.pt = phi i64 [ %.pre.i.i.i, %bb.an ], [ %i.pp, %bb.am ] ; 2 uses
  %i.pu = and i64 %i.pt, 4611686018427387904
  %.not58.i.i.i = icmp eq i64 %i.pu, 0
  br i1 %.not58.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.pv = lshr i64 %i.pt, 32
  %i.pw = trunc nuw i64 %i.pv to i32
  %i.px = and i32 %i.pw, 1048575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.px, ptr %i.a, align 4, !tbaa !133
  %i.py = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.a, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i

_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i: ; preds = %bb.ap, %bb.ao
  %i.pz = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 16
  call fastcc void @_ZN5clang9api_notes12_GLOBAL__N_118emitCommonTypeInfoERN4llvm11raw_ostreamERKNS0_14CommonTypeInfoE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull readonly align 8 dereferenceable(193) %i.pz)
  %i.qa = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 208
  %i.qb = load i8, ptr %i.qa, align 8             ; 5 uses
  %i.qc = and i8 %i.qb, 16
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.qc, 0
  %i.qd = lshr i8 %i.qb, 3                        ; 2 uses
  %i.qe = and i8 %i.qd, 4
  %i.qf = or disjoint i8 %i.qe, 8
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i8 0, i8 %i.qf
  %.lobit.i13.i.i.i.i.i.i = lshr i8 %i.qb, 7
  %i.qg = and i8 %i.qb, 64
  %.not.i.i.i3.i.i.i = icmp eq i8 %i.qg, 0
  %i.qh = or disjoint i8 %.lobit.i13.i.i.i.i.i.i, 2
  %i.qi = select i1 %.not.i.i.i3.i.i.i, i8 0, i8 %i.qh
  %.1.i.i.i.i.i.i = or disjoint i8 %.0.i.i.i.i.i.i, %i.qi
  %i.qj = and i8 %i.qb, 7                         ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq i8 %i.qj, 0
  %9 = shl nuw i8 %.1.i.i.i.i.i.i, 4
  %10 = shl nuw nsw i8 %i.qj, 1
  %11 = add nsw i8 %10, -2
  %i.qk = or i8 %11, 8
  %i.ql = select i1 %.not7.i.i.i.i.i.i, i8 0, i8 %i.qk
  %.lobit.i.i.i.i.i.i = and i8 %i.qd, 1
  %12 = or disjoint i8 %i.ql, %.lobit.i.i.i.i.i.i
  %i.qm = or i8 %12, %9                           ; 2 uses
  %i.qn = load ptr, ptr %i.lz, align 8, !tbaa !131 ; 3 uses
  %i.qo = load ptr, ptr %i.ma, align 8, !tbaa !228
  %.not.i15.i.i.i.i.i.i = icmp ult ptr %i.qn, %i.qo
  br i1 %.not.i15.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  %i.qp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 noundef zeroext %i.qm) #17 ; 0 uses
  br label %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes11ContextInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_20ContextInfoTableInfoEjS5_E8EmitDataES2_jRNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i

bb.ar:                                            ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 1
  store ptr %i.qq, ptr %i.lz, align 8, !tbaa !131
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !142
  br label %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes11ContextInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_20ContextInfoTableInfoEjS5_E8EmitDataES2_jRNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i

_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes11ContextInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_20ContextInfoTableInfoEjS5_E8EmitDataES2_jRNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i: ; preds = %bb.ar, %bb.aq
  %i.qr = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 216 ; 2 uses
  %.not.i.i50.i.i = icmp eq ptr %i.qr, %i.oz
  br i1 %.not.i.i50.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE8EmitDataERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEEj.exit.i.i, label %.lr.ph.i.i49.i.i

_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE8EmitDataERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEEj.exit.i.i: ; preds = %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes11ContextInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_20ContextInfoTableInfoEjS5_E8EmitDataES2_jRNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i, %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes11ContextInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %.03714.i.i, i64 240
  %.037.i.i = load ptr, ptr %i.qs, align 8, !tbaa !674 ; 2 uses
  %.not43.i.i = icmp eq ptr %.037.i.i, null
  br i1 %.not43.i.i, label %.loopexit.i.i38, label %.lr.ph.i.i34, !llvm.loop !659

.loopexit.i.i38:                                  ; preds = %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_20ContextInfoTableInfoEjNS0_11ContextInfoEE8EmitDataERN4llvm11raw_ostreamEjRNS6_11SmallVectorISt4pairINS6_12VersionTupleES4_ELj1EEEj.exit.i.i, %bb.ae, %bb.ad
  %indvars.iv.next.i.i39 = add nuw nsw i64 %indvars.iv.i.i33, 1 ; 2 uses
  %i.qt = load i32, ptr %7, align 8, !tbaa !260
  %i.qu = zext i32 %i.qt to i64
  %i.qv = icmp samesign ult i64 %indvars.iv.next.i.i39, %i.qu
  br i1 %i.qv, label %bb.ad, label %._crit_edge.i.i40, !llvm.loop !660

.lr.ph20.i.i41:                                   ; preds = %._crit_edge.i.i40, %.lr.ph20.i.i41
  %.03618.i.i = phi i64 [ %i.qw, %.lr.ph20.i.i41 ], [ %i.mp, %._crit_edge.i.i40 ]
  %i.qw = add i64 %.03618.i.i, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 0, ptr %i.i, align 1, !tbaa !142
  %i.qx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.i, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not41.i.i = icmp eq i64 %i.qw, 0
  br i1 %.not41.i.i, label %._crit_edge21.i.i42, label %.lr.ph20.i.i41, !llvm.loop !661

._crit_edge21.i.i42:                              ; preds = %.lr.ph20.i.i41, %._crit_edge.i.i40
  %i.qy = load i32, ptr %7, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.qy, ptr %i.h, align 4, !tbaa !133
  %i.qz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.h, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ra = load i32, ptr %i.if, align 4, !tbaa !669
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.ra, ptr %i.g, align 4, !tbaa !133
  %i.rb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.g, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.rc = load i32, ptr %7, align 8, !tbaa !260
  %.not27.i.i43 = icmp eq i32 %i.rc, 0
  br i1 %.not27.i.i43, label %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_120ContextInfoTableInfoEE4EmitERNS_11raw_ostreamE.exit, label %.lr.ph24.i.i44

.lr.ph24.i.i44:                                   ; preds = %._crit_edge21.i.i42, %.lr.ph24.i.i44
  %indvars.iv29.i.i45 = phi i64 [ %indvars.iv.next30.i.i46, %.lr.ph24.i.i44 ], [ 0, %._crit_edge21.i.i42 ] ; 2 uses
  %i.rd = load ptr, ptr %i.ic, align 8, !tbaa !261
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.rd, i64 %indvars.iv29.i.i45
  %i.rf = load i32, ptr %i.re, align 8, !tbaa !673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.rf, ptr %i.f, align 4, !tbaa !133
  %i.rg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %i.f, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %indvars.iv.next30.i.i46 = add nuw nsw i64 %indvars.iv29.i.i45, 1 ; 2 uses
  %i.rh = load i32, ptr %7, align 8, !tbaa !260
  %i.ri = zext i32 %i.rh to i64
  %i.rj = icmp samesign ult i64 %indvars.iv.next30.i.i46, %i.ri
  br i1 %i.rj, label %.lr.ph24.i.i44, label %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_120ContextInfoTableInfoEE4EmitERNS_11raw_ostreamE.exit, !llvm.loop !662

_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_120ContextInfoTableInfoEE4EmitERNS_11raw_ostreamE.exit: ; preds = %.lr.ph24.i.i44, %._crit_edge21.i.i42
  %i.rk = add i64 %i.mp, %i.ml
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.rl = load ptr, ptr %i.ic, align 8, !tbaa !261
  call void @free(ptr noundef %i.rl) #17
  %i.rm = load ptr, ptr %i.hx, align 8, !tbaa !147 ; 2 uses
  %i.rn = load i32, ptr %i.hz, align 8, !tbaa !144 ; 2 uses
  %i.ro = zext i32 %i.rn to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ro, 3
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 %.idx.i.i.i
  %.not24.i.i.i = icmp eq i32 %i.rn, 0
  br i1 %.not24.i.i.i, label %._crit_edge.i.i.i49, label %.lr.ph.i.i.i47

._crit_edge.i.i.i49:                              ; preds = %bb.au, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_120ContextInfoTableInfoEE4EmitERNS_11raw_ostreamE.exit
  %i.rq = load ptr, ptr %i.ib, align 8, !tbaa !147 ; 2 uses
  %i.rr = load i32, ptr %i.id, align 8, !tbaa !144 ; 2 uses
  %i.rs = zext i32 %i.rr to i64
  %.idx31.i.i.i = shl nuw nsw i64 %i.rs, 4
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 %.idx31.i.i.i
  %.not2326.i.i.i = icmp eq i32 %i.rr, 0
  br i1 %.not2326.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i56, label %.lr.ph29.i.i.i

.lr.ph.i.i.i47:                                   ; preds = %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_120ContextInfoTableInfoEE4EmitERNS_11raw_ostreamE.exit, %bb.au
  %.025.i.i.i = phi ptr [ %i.sq, %bb.au ], [ %i.rm, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_120ContextInfoTableInfoEE4EmitERNS_11raw_ostreamE.exit ] ; 3 uses
  %i.ru = load ptr, ptr %i.hx, align 8, !tbaa !147 ; 2 uses
  %i.rv = load ptr, ptr %.025.i.i.i, align 8, !tbaa !233 ; 3 uses
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = add i64 %i.rw, 7
  %i.ry = and i64 %i.rx, -8
  %i.rz = inttoptr i64 %i.ry to ptr
  %i.sa = load i32, ptr %i.hz, align 8, !tbaa !144
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.ru, i64 %i.sb
  %i.sd = getelementptr inbounds i8, ptr %i.sc, i64 -8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !233
  %i.sf = icmp eq ptr %i.rv, %i.se
  br i1 %i.sf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i.i.i47
  %i.sg = load ptr, ptr %i.hw, align 8, !tbaa !676
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.i.i47
  %i.sh = ptrtoint ptr %.025.i.i.i to i64
  %i.si = ptrtoint ptr %i.ru to i64
  %i.sj = sub i64 %i.sh, %i.si
  %sum.shift.i.i.i = lshr i64 %i.sj, 10
  %i.sk = trunc i64 %sum.shift.i.i.i to i32
  %i.sl = and i32 %i.sk, 33554431
  %i.sm = call i32 @llvm.umin.i32(i32 %i.sl, i32 30)
  %.sroa.speculated.i.i.i.i = zext nneg i32 %i.sm to i64
  %i.sn = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.sn
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.sp = phi ptr [ %i.sg, %bb.as ], [ %i.so, %bb.at ]
  call fastcc void @_ZZN4llvm24SpecificBumpPtrAllocatorINS_31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_120ContextInfoTableInfoEE4ItemEE10DestroyAllEvENKUlPcS9_E_clES9_S9_(ptr noundef %i.rz, ptr noundef %i.sp)
  %i.sq = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.sq, %i.rp
  br i1 %.not.i.i.i48, label %._crit_edge.i.i.i49, label %.lr.ph.i.i.i47, !llvm.loop !663

._crit_edge30.i.i.i:                              ; preds = %.lr.ph29.i.i.i
  %.pre.i.i.i50 = load ptr, ptr %i.ib, align 8, !tbaa !147 ; 2 uses
  %.pre32.i.i.i = load i32, ptr %i.id, align 8, !tbaa !144 ; 2 uses
  %i.sr = zext i32 %.pre32.i.i.i to i64
  %.idx.i.i.i.i.i51 = shl nuw nsw i64 %i.sr, 4
  %i.ss = getelementptr inbounds nuw i8, ptr %.pre.i.i.i50, i64 %.idx.i.i.i.i.i51
  %.not10.i.i.i.i.i52 = icmp eq i32 %.pre32.i.i.i, 0
  br i1 %.not10.i.i.i.i.i52, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i56, label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %._crit_edge30.i.i.i, %.lr.ph.i.i.i.i.i53
  %.011.i.i.i.i.i54 = phi ptr [ %i.sw, %.lr.ph.i.i.i.i.i53 ], [ %.pre.i.i.i50, %._crit_edge30.i.i.i ] ; 3 uses
  %i.st = load ptr, ptr %.011.i.i.i.i.i54, align 8, !tbaa !231
  %i.su = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i54, i64 8
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !232
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.st, i64 noundef %i.sv, i64 noundef 16) #17
  %i.sw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i54, i64 16 ; 2 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.sw, %i.ss
  br i1 %.not.i.i.i.i.i55, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i56, label %.lr.ph.i.i.i.i.i53

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i56: ; preds = %.lr.ph.i.i.i.i.i53, %._crit_edge30.i.i.i, %._crit_edge.i.i.i49
  store i32 0, ptr %i.id, align 8, !tbaa !144
  %i.sx = load i32, ptr %i.hz, align 8, !tbaa !144 ; 3 uses
  %.not.i1.i.i.i.i57 = icmp eq i32 %i.sx, 0
  %.pre164 = load ptr, ptr %i.hx, align 8, !tbaa !147 ; 4 uses
  br i1 %.not.i1.i.i.i.i57, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE15DeallocateSlabsEPPvS4_.exit.i96.thread, label %bb.av

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE15DeallocateSlabsEPPvS4_.exit.i96.thread: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i56
  %i.sy = load ptr, ptr %i.ib, align 8, !tbaa !147
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i104

bb.av:                                            ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i56
  %i.sz = load ptr, ptr %.pre164, align 8, !tbaa !233 ; 2 uses
  store ptr %i.sz, ptr %i.hw, align 8, !tbaa !234
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = add i64 %i.ta, 4097
  %i.tc = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.tb, ptr %i.tc, align 8, !tbaa !235
  %i.td = zext i32 %i.sx to i64
  %.idx.i.i.i.i58 = shl nuw nsw i64 %i.td, 3
  %i.te = getelementptr inbounds nuw i8, ptr %.pre164, i64 %.idx.i.i.i.i58
  %.not6.i.i.i.i.i59 = icmp eq i32 %i.sx, 1
  br i1 %.not6.i.i.i.i.i59, label %.lr.ph.i.i91.preheader, label %.lr.ph.i2.preheader.i.i.i.i60

.lr.ph.i2.preheader.i.i.i.i60:                    ; preds = %bb.av
  %i.tf = getelementptr inbounds nuw i8, ptr %.pre164, i64 8
  br label %.lr.ph.i2.i.i.i.i61

.lr.ph.i2.i.i.i.i61:                              ; preds = %.lr.ph.i2.i.i.i.i61, %.lr.ph.i2.preheader.i.i.i.i60
  %.07.i.i.i.i.i62 = phi ptr [ %i.tp, %.lr.ph.i2.i.i.i.i61 ], [ %i.tf, %.lr.ph.i2.preheader.i.i.i.i60 ] ; 3 uses
  %i.tg = load ptr, ptr %i.hx, align 8, !tbaa !147
  %i.th = ptrtoint ptr %.07.i.i.i.i.i62 to i64
  %i.ti = ptrtoint ptr %i.tg to i64
  %i.tj = sub i64 %i.th, %i.ti
  %sum.shift.i.i.i.i.i63 = lshr i64 %i.tj, 10
  %i.tk = trunc i64 %sum.shift.i.i.i.i.i63 to i32
  %i.tl = and i32 %i.tk, 33554431
  %i.tm = call i32 @llvm.umin.i32(i32 %i.tl, i32 30)
  %.sroa.speculated.i.i.i.i.i.i64 = zext nneg i32 %i.tm to i64
  %i.tn = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i.i.i64
  %i.to = load ptr, ptr %.07.i.i.i.i.i62, align 8, !tbaa !233
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.to, i64 noundef %i.tn, i64 noundef 16) #17
  %i.tp = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i62, i64 8 ; 2 uses
  %.not.i3.i.i.i.i65 = icmp eq ptr %i.tp, %i.te
  br i1 %.not.i3.i.i.i.i65, label %_ZN4llvm15SmallVectorImplIPvE5eraseEPKS1_S4_.exit.i.i.i.i66.loopexit, label %.lr.ph.i2.i.i.i.i61, !llvm.loop !0
end_hunk_0
begin_hunk_1_@_ZN5clang9api_notes14APINotesWriter14Implementation13writeTagBlockERN4llvm15BitstreamWriterE:bb.a
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !495, !range !330, !noundef !331
  %i.fn = trunc nuw i8 %i.fm to i1
  %i.fo = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 264
  %i.fp = load i64, ptr %i.fo, align 8
  %i.fq = select i1 %i.fn, i64 %i.fp, i64 0
  %i.fr = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 328
  %i.fs = load i8, ptr %i.fr, align 8, !tbaa !495, !range !330, !noundef !331
  %i.ft = trunc nuw i8 %i.fs to i1
  %i.fu = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 304
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = select i1 %i.ft, i64 %i.fv, i64 0
  %i.fx = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 368
  %i.fy = load i8, ptr %i.fx, align 8, !tbaa !495, !range !330, !noundef !331
  %i.fz = trunc nuw i8 %i.fy to i1
  %i.ga = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 344
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = select i1 %i.fz, i64 %i.gb, i64 0
  %i.gd = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 408
  %i.ge = load i8, ptr %i.gd, align 8, !tbaa !495, !range !330, !noundef !331
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
  %.sroa.08.0.copyload.i.i = load i64, ptr %.04076.i.i, align 8, !tbaa !133 ; 2 uses
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
  %.017.i.i.i.i = phi ptr [ %i.pd, %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes7TagInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_12TagTableInfoENS4_18SingleDeclTableKeyES5_E8EmitDataES2_SE_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i ], [ %i.hq, %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i ] ; 23 uses
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
  %12 = select i1 %.not.i.i.i.i60.i.i, i8 0, i8 %i.jc
  %.1.i.i.i61.i.i = or disjoint i8 %.0.i.i.i.i.i, %12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i8 %.1.i.i.i61.i.i, ptr %i.y, align 1, !tbaa !142
  %i.jd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.y, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.je = load i8, ptr %i.iz, align 8             ; 2 uses
  %i.jf = and i8 %i.je, 4
  %.not.i20.i.i.i.i.i = icmp eq i8 %i.jf, 0
  br i1 %.not.i20.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  %i.jg = lshr i8 %i.je, 3
  %.lobit.i21.i.i.i.i.i = and i8 %i.jg, 1
  %i.jh = sub nuw nsw i8 2, %.lobit.i21.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i8 %i.jh, ptr %i.x, align 1, !tbaa !142
  %i.ji = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.x, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.x

bb.w:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.w, align 1, !tbaa !142
  %i.jj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.w, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.jk = load i8, ptr %i.iz, align 8             ; 2 uses
  %i.jl = and i8 %i.jk, 16
  %.not.i23.i.i.i.i.i = icmp eq i8 %i.jl, 0
  br i1 %.not.i23.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jm = lshr i8 %i.jk, 5
  %.lobit.i24.i.i.i.i.i = and i8 %i.jm, 1
  %i.jn = sub nuw nsw i8 2, %.lobit.i24.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 %i.jn, ptr %i.v, align 1, !tbaa !142
  %i.jo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.v, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 0, ptr %i.u, align 1, !tbaa !142
  %i.jp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.u, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.jq = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 248
  store i8 0, ptr %i.ct, align 8, !tbaa !495
  %i.jr = load i8, ptr %i.jq, align 8, !tbaa !495, !range !330, !noundef !331
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %bb.ab, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.jt = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 216
  store ptr %i.cu, ptr %3, align 8, !tbaa !332
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !150 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 224
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #17
  store i64 %i.jw, ptr %i.t, align 8, !tbaa !190
  %i.jx = icmp ugt i64 %i.jw, 15
  br i1 %i.jx, label %bb.ac, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.jy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0) #17 ; 2 uses
  store ptr %i.jy, ptr %3, align 8, !tbaa !150
  %i.jz = load i64, ptr %i.t, align 8, !tbaa !190
  store i64 %i.jz, ptr %i.cu, align 8, !tbaa !142
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.ac, %bb.ab
  %i.ka = phi ptr [ %i.jy, %bb.ac ], [ %i.cu, %bb.ab ] ; 2 uses
  switch i64 %i.jw, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kb = load i8, ptr %i.ju, align 1, !tbaa !142
  store i8 %i.kb, ptr %i.ka, align 1, !tbaa !142
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 1 %i.ju, i64 %i.jw, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kc = load i64, ptr %i.t, align 8, !tbaa !190 ; 2 uses
  store i64 %i.kc, ptr %i.cv, align 8, !tbaa !151
  %i.kd = load ptr, ptr %3, align 8, !tbaa !150
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kc
  store i8 0, ptr %i.ke, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #17
  store i8 1, ptr %i.ct, align 8, !tbaa !495
  %i.kf = load i64, ptr %i.cv, align 8, !tbaa !151
  %i.kg = trunc i64 %i.kf to i16
  %i.kh = add i16 %i.kg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i16 %i.kh, ptr %i.s, align 2, !tbaa !222
  %i.ki = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.s, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.kj = load ptr, ptr %3, align 8, !tbaa !150
  %i.kk = load i64, ptr %i.cv, align 8, !tbaa !151
  %i.kl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.kj, i64 noundef %i.kk) #17 ; 0 uses
  br label %bb.ag

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i16 0, ptr %i.r, align 2, !tbaa !222
  %i.km = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.r, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i, %bb.af
  %i.kn = load i8, ptr %i.ct, align 8, !tbaa !495, !range !330, !noundef !331
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.ah, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  store i8 0, ptr %i.ct, align 8, !tbaa !495
  %i.kp = load ptr, ptr %3, align 8, !tbaa !150   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.cu
  br i1 %i.kq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.kr = load i64, ptr %i.cu, align 8, !tbaa !142
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.kt = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 288
  store i8 0, ptr %i.cw, align 8, !tbaa !495
  %i.ku = load i8, ptr %i.kt, align 8, !tbaa !495, !range !330, !noundef !331
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.ai, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit30.i.i.i.i.i

bb.ai:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 256
  store ptr %i.cx, ptr %4, align 8, !tbaa !332
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !150 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 264
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #17
  store i64 %i.kz, ptr %i.q, align 8, !tbaa !190
  %i.la = icmp ugt i64 %i.kz, 15
  br i1 %i.la, label %bb.aj, label %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.lb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0) #17 ; 2 uses
  store ptr %i.lb, ptr %4, align 8, !tbaa !150
  %i.lc = load i64, ptr %i.q, align 8, !tbaa !190
  store i64 %i.lc, ptr %i.cx, align 8, !tbaa !142
  br label %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i:        ; preds = %bb.aj, %bb.ai
  %i.ld = phi ptr [ %i.lb, %bb.aj ], [ %i.cx, %bb.ai ] ; 2 uses
  switch i64 %i.kz, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  %i.le = load i8, ptr %i.kx, align 1, !tbaa !142
  store i8 %i.le, ptr %i.ld, align 1, !tbaa !142
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ld, ptr align 1 %i.kx, i64 %i.kz, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  %i.lf = load i64, ptr %i.q, align 8, !tbaa !190 ; 2 uses
  store i64 %i.lf, ptr %i.cy, align 8, !tbaa !151
  %i.lg = load ptr, ptr %4, align 8, !tbaa !150
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lf
  store i8 0, ptr %i.lh, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #17
  store i8 1, ptr %i.cw, align 8, !tbaa !495
  %i.li = load i64, ptr %i.cy, align 8, !tbaa !151
  %i.lj = trunc i64 %i.li to i16
  %i.lk = add i16 %i.lj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i16 %i.lk, ptr %i.p, align 2, !tbaa !222
  %i.ll = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.p, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.lm = load ptr, ptr %4, align 8, !tbaa !150
  %i.ln = load i64, ptr %i.cy, align 8, !tbaa !151
  %i.lo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.lm, i64 noundef %i.ln) #17 ; 0 uses
  br label %bb.an

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit30.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
end_hunk_1
begin_hunk_2_@_ZN5clang9api_notes12_GLOBAL__N_116emitFunctionInfoERN4llvm11raw_ostreamERKNS0_12FunctionInfoE:bb.a
  %i.av = lshr i16 %i.am, 12
  %i.aw = trunc nuw nsw i16 %i.av to i8
  %i.ax = and i8 %i.aw, 1
  %i.ay = or disjoint i8 %i.au, %i.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 %i.ay, ptr %i.h, align 1, !tbaa !142
  %i.az = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.h, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ba = load i16, ptr %i.al, align 8
  %i.bb = lshr i16 %i.ba, 1
  %i.bc = trunc i16 %i.bb to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %i.bc, ptr %i.g, align 1, !tbaa !142
  %i.bd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1195
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.bf, ptr %i.f, align 8, !tbaa !190
  %i.bg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.f, i64 noundef 8) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !546
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !545
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = sdiv exact i64 %i.bn, 168
  %i.bp = trunc i64 %i.bo to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.bp, ptr %i.e, align 2, !tbaa !222
  %i.bq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.e, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !327 ; 2 uses
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !327 ; 2 uses
  %.not53 = icmp eq ptr %i.br, %i.bs
  br i1 %.not53, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !151
  %i.bw = trunc i64 %i.bv to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %i.bw, ptr %i.d, align 2, !tbaa !222
  %i.bx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.d, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !150 ; 2 uses
  %i.bz = load i64, ptr %i.bu, align 8, !tbaa !151 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  %.not9.i.i = icmp samesign eq i64 %i.bz, 0
  br i1 %.not9.i.i, label %_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %i.by, %._crit_edge ] ; 2 uses
  %i.cb = load i8, ptr %.010.i.i, align 1, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.cb, ptr %i.c, align 1, !tbaa !142
  %i.cc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cd, %i.ca
  br i1 %.not.i.i, label %_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit, label %.lr.ph.i.i

_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !151
  %i.ch = trunc i64 %i.cg to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ch, ptr %i.b, align 2, !tbaa !222
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !150 ; 2 uses
  %i.ck = load i64, ptr %i.cf, align 8, !tbaa !151 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %.not9.i.i29 = icmp samesign eq i64 %i.ck, 0
  br i1 %.not9.i.i29, label %_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit33, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit, %.lr.ph.i.i30
  %.010.i.i31 = phi ptr [ %i.co, %.lr.ph.i.i30 ], [ %i.cj, %_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit ] ; 2 uses
  %i.cm = load i8, ptr %.010.i.i31, align 1, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.cm, ptr %i.a, align 1, !tbaa !142
  %i.cn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i.i31, i64 1 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.co, %i.cl
  br i1 %.not.i.i32, label %_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit33, label %.lr.ph.i.i30

_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit33: ; preds = %.lr.ph.i.i30, %_ZN4llvm7support6endian6Writer5writeIcEEvNS_8ArrayRefIT_EE.exit
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.037.054 = phi ptr [ %i.cp, %.lr.ph ], [ %i.br, %bb.a ] ; 2 uses
  call fastcc void @_ZN5clang9api_notes12_GLOBAL__N_113emitParamInfoERN4llvm11raw_ostreamERKNS0_9ParamInfoE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.037.054)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.037.054, i64 168 ; 2 uses
  %.not = icmp eq ptr %i.cp, %i.bs
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang9api_notes12_GLOBAL__N_113emitParamInfoERN4llvm11raw_ostreamERKNS0_9ParamInfoE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::optional.271", align 8 ; 12 uses
  tail call fastcc void @_ZN5clang9api_notes12_GLOBAL__N_116emitVariableInfoERN4llvm11raw_ostreamERKNS0_12VariableInfoE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !329, !range !330, !noundef !331
  %spec.select = shl nuw i8 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i8, ptr %i.h, align 8               ; 6 uses
  %.not.i = trunc i8 %i.i to i1
  %i.j = and i8 %i.i, 3
  %i.k = icmp eq i8 %i.j, 3
  %spec.select18.v = select i1 %i.k, i8 96, i8 32
  %spec.select18 = select i1 %.not.i, i8 %spec.select18.v, i8 0
  %.1 = or disjoint i8 %spec.select18, %spec.select
  %i.l = and i8 %i.i, 4
  %.not.i20.not = icmp eq i8 %i.l, 0
  %i.m = and i8 %i.i, 12
  %i.n = icmp eq i8 %i.m, 12
  %spec.select19.v = select i1 %i.n, i8 24, i8 8
  %spec.select19 = select i1 %.not.i20.not, i8 0, i8 %spec.select19.v
  %.2 = or disjoint i8 %.1, %spec.select19
  %i.o = and i8 %i.i, 112
  %.not.not.i = icmp eq i8 %i.o, 0
  %i.p = lshr i8 %i.i, 4
  %i.q = and i8 %i.p, 7
  %i.r = select i1 %.not.not.i, i8 0, i8 %i.q
  %.3 = or disjoint i8 %.2, %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %.3, ptr %i.e, align 1, !tbaa !142
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.e, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  store i8 0, ptr %i.t, align 8, !tbaa !329
  %i.u = load i8, ptr %i.f, align 8, !tbaa !329, !range !330, !noundef !331
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.b, label %_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load i8, ptr %i.w, align 8
  store i8 %i.x, ptr %2, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !332
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !150 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !190
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %bb.c, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #17 ; 2 uses
  store ptr %i.af, ptr %i.y, align 8, !tbaa !150
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !190
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !142
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.c, %bb.b
  %i.ah = phi ptr [ %i.af, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  switch i64 %i.ad, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ab, align 1, !tbaa !142
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !142
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.d, %bb.e
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !190 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !151
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !150
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  store i8 1, ptr %i.t, align 8, !tbaa !329
  %i.an = load i8, ptr %2, align 8                ; 4 uses
  %i.ao = and i8 %i.an, 8
  %.not.i23 = icmp eq i8 %i.ao, 0
  %i.ap = shl i8 %i.an, 5
  %i.aq = or disjoint i8 %i.ap, 16
  %.0.i = select i1 %.not.i23, i8 0, i8 %i.aq     ; 2 uses
  %.not.i.i = icmp slt i8 %i.an, 0
  %i.ar = lshr i8 %i.an, 3
  %i.as = and i8 %i.ar, 14
  %i.at = or disjoint i8 %i.as, %.0.i
  %3 = or disjoint i8 %i.at, 1
  %.1.i = select i1 %.not.i.i, i8 %3, i8 %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.1.i, ptr %i.c, align 1, !tbaa !142
  %i.au = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !151
  %i.ay = trunc i64 %i.ax to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ay, ptr %i.b, align 2, !tbaa !222
  %i.az = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !150 ; 2 uses
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !151 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bb
  %.not9.i.i.i = icmp samesign eq i64 %i.bb, 0
  br i1 %.not9.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %i.ba, %bb.f ] ; 2 uses
  %i.bd = load i8, ptr %.010.i.i.i, align 1, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.bd, ptr %i.a, align 1, !tbaa !142
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.bc
  br i1 %.not.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit, label %.lr.ph.i.i.i

_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.f
  %i.bg = load i8, ptr %i.t, align 8, !tbaa !329, !range !330, !noundef !331
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.g, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit
  store i8 0, ptr %i.t, align 8, !tbaa !329
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !150 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !142
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit: ; preds = %bb.g, %_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN4llvm24SpecificBumpPtrAllocatorINS_31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_118CXXMethodTableInfoEE4ItemEE10DestroyAllEvENKUlPcS9_E_clES9_S9_(ptr nofree noundef captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %.not1 = icmp ugt ptr %i.a, %1
  br i1 %.not1, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_118CXXMethodTableInfoEE4ItemD2Ev.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_118CXXMethodTableInfoEE4ItemD2Ev.exit
  %i.b = phi ptr [ %i.dg, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_118CXXMethodTableInfoEE4ItemD2Ev.exit ], [ %i.a, %bb.a ] ; 2 uses
  %.02 = phi ptr [ %i.b, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_118CXXMethodTableInfoEE4ItemD2Ev.exit ], [ %0, %bb.a ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !147  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !144  ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes13CXXMethodInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph
  %i.g = zext i32 %i.f to i64
  %.idx.i.i = mul nuw nsw i64 %i.g, 368
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZN5clang9api_notes12FunctionInfoD2Ev.exit ], [ %i.h, %.lr.ph.i.preheader.i.i ] ; 22 uses
  %i.i = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -368 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -352
  %i.k = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -176
  %i.l = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !334, !range !330, !noundef !331
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i
  store i8 0, ptr %i.l, align 8, !tbaa !334
  %i.o = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !329, !range !330, !noundef !331
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.o, align 8, !tbaa !329
  %i.r = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !150  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -32 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !142
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.x = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !150  ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -80 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !142
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !150 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -120 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !142
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !150 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -160 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !142
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #20
  br label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -200 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !545 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -192
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !546 ; 2 uses
  %.not4.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN5clang9api_notes9ParamInfoEEEvT_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i
  %.05.i = phi ptr [ %i.bs, %_ZSt8_DestroyIN5clang9api_notes9ParamInfoEEvPT_.exit.i ], [ %i.ap, %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit ] ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i, i64 160 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !329, !range !330, !noundef !331
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.d, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i6

bb.d:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.as, align 8, !tbaa !329
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i, i64 128
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !150 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05.i, i64 144 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i15: ; preds = %bb.d
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !142
  %i.ba = add i64 %i.az, 1
  tail call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #20
  br label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i6

_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i6: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i15, %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.05.i, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !150 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i, i64 96 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i6
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !142
  %i.bg = add i64 %i.bf, 1
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i8: ; preds = %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i7
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !150 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i, i64 56 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i8
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !142
  %i.bm = add i64 %i.bl, 1
end_hunk_2
