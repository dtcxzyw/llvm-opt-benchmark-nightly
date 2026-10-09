Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APINotesWriter?download=true
inline.NumInlined: 8467
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang9api_notes14APINotesWriter14Implementation22writeObjCPropertyBlockERN4llvm15BitstreamWriterE:bb.a
  %.val44.i.i = load i32, ptr %i.dq, align 8, !tbaa !144 ; 2 uses
  %i.dr = zext i32 %.val44.i.i to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.dr, 136
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i.i.i.i
  %.not1.i.i.i.i = icmp eq i32 %.val44.i.i, 0
  br i1 %.not1.i.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.03.i.i.i.i = phi i32 [ %i.em, %.lr.ph.i.i.i.i ], [ 2, %.lr.ph.i.i ]
  %.0112.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i ], [ %.val.i.i, %.lr.ph.i.i ] ; 6 uses
  %.011.val.i.i.i.i = load i64, ptr %.0112.i.i.i.i, align 4
  %i.dt = getelementptr i8, ptr %.0112.i.i.i.i, i64 8
  %.011.val12.i.i.i.i = load i64, ptr %i.dt, align 4 ; 2 uses
  %i.du = icmp slt i64 %.011.val.i.i.i.i, 0
  %spec.select.i.i.i47.i.i = select i1 %i.du, i32 9, i32 5
  %i.dv = trunc i64 %.011.val12.i.i.i.i to i32
  %i.dw = lshr i32 %i.dv, 29
  %i.dx = and i32 %i.dw, 4
  %i.dy = lshr i64 %.011.val12.i.i.i.i, 60
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = and i32 %i.dz, 4
  %i.eb = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 24
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.eb, align 8, !tbaa !151
  %i.ec = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 64
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !tbaa !151
  %i.ed = add i64 %.val.i.i.i.i.i.i.i, 5
  %i.ee = add i64 %i.ed, %.val2.i.i.i.i.i.i.i
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 104
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !151
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = add i32 %.03.i.i.i.i, 5
  %i.ek = add i32 %i.ej, %spec.select.i.i.i47.i.i
  %.1.i.i.i.i.i = add i32 %i.ek, %i.dx
  %.2.i.i.i.i.i = add i32 %.1.i.i.i.i.i, %i.ea
  %i.el = add i32 %.2.i.i.i.i.i, %i.ef
  %i.em = add i32 %i.el, %i.ei                    ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0112.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, %i.ds
  br i1 %.not.i.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.eo = trunc i32 %i.em to i16
  br label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.i.i

_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.i.i: ; preds = %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.loopexit.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i16 [ 2, %.lr.ph.i.i ], [ %i.eo, %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.loopexit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i16 9, ptr %i.o, align 2, !tbaa !222
  %i.ep = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.o, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i16 %.0.lcssa.i.i.i.i, ptr %i.n, align 2, !tbaa !222
  %i.eq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.n, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.02.0.copyload.i.i = load i8, ptr %.03718.i.i, align 8
  %.sroa.23.0..037.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.03718.i.i, i64 4
  %.sroa.23.0.copyload.i.i = load i32, ptr %.sroa.23.0..037.sroa_idx.i.i, align 4
  %.sroa.3.0..037.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.03718.i.i, i64 8
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..037.sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i32 %.sroa.3.0.copyload.i.i, ptr %i.m, align 4, !tbaa !133
  %i.er = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.m, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i32 %.sroa.23.0.copyload.i.i, ptr %i.l, align 4, !tbaa !133
  %i.es = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.l, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %.sroa.02.0.copyload.i.i, ptr %i.k, align 1, !tbaa !142
  %i.et = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.k, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.eu = load ptr, ptr %i.dp, align 8, !tbaa !147 ; 5 uses
  %i.ev = load i32, ptr %i.dq, align 8, !tbaa !144 ; 3 uses
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %.idx.i.i48.i.i = mul nuw nsw i64 %i.ew, 136
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i48.i.i ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ev, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.i.i
  %i.ey = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ew, i1 true)
  %i.ez = shl nuw nsw i64 %i.ey, 1
  %i.fa = xor i64 %i.ez, 126
  call fastcc void @_ZSt16__introsort_loopIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_T1_(ptr noundef %i.eu, ptr noundef nonnull %i.ex, i64 noundef %i.fa)
  %i.fb = icmp ugt i32 %i.ev, 16
  br i1 %i.fb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 2176 ; 2 uses
  call fastcc void @_ZSt16__insertion_sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_(ptr noundef nonnull %i.eu, ptr noundef nonnull %i.fc)
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.l
  %.07.i.i.i.i.i.i.i.i = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fc, %bb.l ] ; 2 uses
  call fastcc void @_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_T0_(ptr noundef nonnull %.07.i.i.i.i.i.i.i.i)
  %i.fd = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.fd, %i.ex
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !683

bb.m:                                             ; preds = %bb.k
  call fastcc void @_ZSt16__insertion_sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_SG_T0_(ptr noundef nonnull %i.eu, ptr noundef nonnull %i.ex)
  br label %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i

_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.m, %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE17EmitKeyDataLengthERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEE.exit.i.i
  %i.fe = load i32, ptr %i.dq, align 8, !tbaa !144
  %i.ff = trunc i32 %i.fe to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.ff, ptr %i.j, align 2, !tbaa !222
  %i.fg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.j, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fh = load ptr, ptr %i.dp, align 8, !tbaa !147 ; 2 uses
  %i.fi = load i32, ptr %i.dq, align 8, !tbaa !144 ; 2 uses
  %i.fj = zext i32 %i.fi to i64
  %.idx18.i.i.i.i = mul nuw nsw i64 %i.fj, 136
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.idx18.i.i.i.i
  %.not16.i.i.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not16.i.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE8EmitDataERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEEj.exit.i.i, label %.lr.ph.i.i49.i.i

.lr.ph.i.i49.i.i:                                 ; preds = %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i, %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes16ObjCPropertyInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_21ObjCPropertyTableInfoESt5tupleIJjjcEES5_E8EmitDataES2_SF_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i
  %.017.i.i.i.i = phi ptr [ %i.gt, %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes16ObjCPropertyInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_21ObjCPropertyTableInfoESt5tupleIJjjcEES5_E8EmitDataES2_SF_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i ], [ %i.fh, %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i ] ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 8 ; 3 uses
  %i.fm = load i64, ptr %i.fl, align 4            ; 2 uses
  %i.fn = and i64 %i.fm, 4611686018427387904
  %.not.i.i.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph.i.i49.i.i
  %i.fo = and i64 %i.fm, 2147483648
  %.not56.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not56.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fp = load i64, ptr %.017.i.i.i.i, align 4
  %.lobit.i.i.i = lshr i64 %i.fp, 63
  %..i.i.i = trunc nuw nsw i64 %.lobit.i.i.i to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph.i.i49.i.i
  %.0.i57.i.i = phi i8 [ 2, %bb.n ], [ 3, %.lr.ph.i.i49.i.i ], [ %..i.i.i, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %.0.i57.i.i, ptr %i.e, align 1, !tbaa !142
  %i.fq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.e, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fr = load i64, ptr %.017.i.i.i.i, align 4
  %i.fs = trunc i64 %i.fr to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.fs, ptr %i.d, align 4, !tbaa !133
  %i.ft = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.d, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fu = load i64, ptr %.017.i.i.i.i, align 4    ; 2 uses
  %i.fv = icmp slt i64 %i.fu, 0
  br i1 %i.fv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fw = lshr i64 %i.fu, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = and i32 %i.fx, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.fy, ptr %i.c, align 4, !tbaa !133
  %i.fz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.c, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ga = load i64, ptr %i.fl, align 4            ; 3 uses
  %i.gb = and i64 %i.ga, 2147483648
  %.not57.i.i.i = icmp eq i64 %i.gb, 0
  br i1 %.not57.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gc = trunc i64 %i.ga to i32
  %.sroa.030.0.extract.trunc.i.i.i = and i32 %i.gc, 2147483647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %.sroa.030.0.extract.trunc.i.i.i, ptr %i.b, align 4, !tbaa !133
  %i.gd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.b, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre.i.i.i = load i64, ptr %i.fl, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ge = phi i64 [ %.pre.i.i.i, %bb.s ], [ %i.ga, %bb.r ] ; 2 uses
  %i.gf = and i64 %i.ge, 4611686018427387904
  %.not58.i.i.i = icmp eq i64 %i.gf, 0
  br i1 %.not58.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gg = lshr i64 %i.ge, 32
  %i.gh = trunc nuw i64 %i.gg to i32
  %i.gi = and i32 %i.gh, 1048575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.gi, ptr %i.a, align 4, !tbaa !133
  %i.gj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.a, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i

_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i: ; preds = %bb.u, %bb.t
  %i.gk = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 16
  call fastcc void @_ZN5clang9api_notes12_GLOBAL__N_116emitVariableInfoERN4llvm11raw_ostreamERKNS0_12VariableInfoE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull readonly align 8 dereferenceable(113) %i.gk)
  %i.gl = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 128
  %i.gm = load i8, ptr %i.gl, align 8             ; 2 uses
  %i.gn = and i8 %i.gm, 1
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.gn, 0
  %.lobit.i.i.i.i.i.i.i = and i8 %i.gm, 2
  %i.go = or disjoint i8 %.lobit.i.i.i.i.i.i.i, 1
  %.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i8 0, i8 %i.go ; 2 uses
  %i.gp = load ptr, ptr %i.cc, align 8, !tbaa !131 ; 3 uses
  %i.gq = load ptr, ptr %i.cd, align 8, !tbaa !228
  %.not.i6.i.i.i.i.i.i = icmp ult ptr %i.gp, %i.gq
  br i1 %.not.i6.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  %i.gr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 noundef zeroext %.0.i.i.i.i.i.i) #17 ; 0 uses
  br label %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes16ObjCPropertyInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_21ObjCPropertyTableInfoESt5tupleIJjjcEES5_E8EmitDataES2_SF_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i

bb.w:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store ptr %i.gs, ptr %i.cc, align 8, !tbaa !131
  store i8 %.0.i.i.i.i.i.i, ptr %i.gp, align 1, !tbaa !142
  br label %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes16ObjCPropertyInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_21ObjCPropertyTableInfoESt5tupleIJjjcEES5_E8EmitDataES2_SF_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i

_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes16ObjCPropertyInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_21ObjCPropertyTableInfoESt5tupleIJjjcEES5_E8EmitDataES2_SF_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i: ; preds = %bb.w, %bb.v
  %i.gt = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 136 ; 2 uses
  %.not.i.i50.i.i = icmp eq ptr %i.gt, %i.fk
  br i1 %.not.i.i50.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE8EmitDataERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEEj.exit.i.i, label %.lr.ph.i.i49.i.i

_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE8EmitDataERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEEj.exit.i.i: ; preds = %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes16ObjCPropertyInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_21ObjCPropertyTableInfoESt5tupleIJjjcEES5_E8EmitDataES2_SF_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i.i, %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.03718.i.i, i64 168
  %.037.i.i = load ptr, ptr %i.gu, align 8, !tbaa !694 ; 2 uses
  %.not43.i.i = icmp eq ptr %.037.i.i, null
  br i1 %.not43.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !684

.loopexit.i.i:                                    ; preds = %_ZN5clang9api_notes12_GLOBAL__N_118VersionedTableInfoINS1_21ObjCPropertyTableInfoESt5tupleIJjjcEENS0_16ObjCPropertyInfoEE8EmitDataERN4llvm11raw_ostreamES5_RNS8_11SmallVectorISt4pairINS8_12VersionTupleES6_ELj1EEEj.exit.i.i, %bb.j, %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gv = load i32, ptr %4, align 8, !tbaa !282
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp samesign ult i64 %indvars.iv.next.i.i, %i.gw
  br i1 %i.gx, label %bb.i, label %._crit_edge.i.i, !llvm.loop !685

.lr.ph24.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph24.i.i
  %.03622.i.i = phi i64 [ %i.gy, %.lr.ph24.i.i ], [ %i.cs, %._crit_edge.i.i ]
  %i.gy = add i64 %.03622.i.i, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 0, ptr %i.i, align 1, !tbaa !142
  %i.gz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.i, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not41.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not41.i.i, label %._crit_edge25.i.i, label %.lr.ph24.i.i, !llvm.loop !686

._crit_edge25.i.i:                                ; preds = %.lr.ph24.i.i, %._crit_edge.i.i
  %i.ha = load i32, ptr %4, align 8, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i32 %i.ha, ptr %i.h, align 4, !tbaa !133
  %i.hb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.h, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.hc = load i32, ptr %i.ai, align 4, !tbaa !690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.hc, ptr %i.g, align 4, !tbaa !133
  %i.hd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.g, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.he = load i32, ptr %4, align 8, !tbaa !282
  %.not31.i.i = icmp eq i32 %i.he, 0
  br i1 %.not31.i.i, label %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4EmitERNS_11raw_ostreamE.exit, label %.lr.ph28.i.i

.lr.ph28.i.i:                                     ; preds = %._crit_edge25.i.i, %.lr.ph28.i.i
  %indvars.iv33.i.i = phi i64 [ %indvars.iv.next34.i.i, %.lr.ph28.i.i ], [ 0, %._crit_edge25.i.i ] ; 2 uses
  %i.hf = load ptr, ptr %i.af, align 8, !tbaa !283
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %indvars.iv33.i.i
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.hh, ptr %i.f, align 4, !tbaa !133
  %i.hi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.f, i64 noundef 4) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %indvars.iv.next34.i.i = add nuw nsw i64 %indvars.iv33.i.i, 1 ; 2 uses
  %i.hj = load i32, ptr %4, align 8, !tbaa !282
  %i.hk = zext i32 %i.hj to i64
  %i.hl = icmp samesign ult i64 %indvars.iv.next34.i.i, %i.hk
  br i1 %i.hl, label %.lr.ph28.i.i, label %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4EmitERNS_11raw_ostreamE.exit, !llvm.loop !687

_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4EmitERNS_11raw_ostreamE.exit: ; preds = %.lr.ph28.i.i, %._crit_edge25.i.i
  %i.hm = add i64 %i.cs, %i.co
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.hn = load ptr, ptr %i.af, align 8, !tbaa !283
  call void @free(ptr noundef %i.hn) #17
  %i.ho = load ptr, ptr %i.aa, align 8, !tbaa !147 ; 2 uses
  %i.hp = load i32, ptr %i.ac, align 8, !tbaa !144 ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.hq, 3
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.idx.i.i.i
  %.not48.i.i.i = icmp eq i32 %i.hp, 0
  br i1 %.not48.i.i.i, label %._crit_edge.i.i.i13, label %.lr.ph.i.i.i7

._crit_edge.i.i.i13:                              ; preds = %_ZZN4llvm24SpecificBumpPtrAllocatorINS_31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4ItemEE10DestroyAllEvENKUlPcS9_E_clES9_S9_.exit.i.i.i, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4EmitERNS_11raw_ostreamE.exit
  %i.hs = load ptr, ptr %i.ae, align 8, !tbaa !147 ; 2 uses
  %i.ht = load i32, ptr %i.ag, align 8, !tbaa !144 ; 2 uses
  %i.hu = zext i32 %i.ht to i64
  %.idx55.i.i.i = shl nuw nsw i64 %i.hu, 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx55.i.i.i
  %.not2350.i.i.i = icmp eq i32 %i.ht, 0
  br i1 %.not2350.i.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm1EE26DeallocateCustomSizedSlabsEv.exit.i.i.i.i, label %.lr.ph53.i.i.i

.lr.ph.i.i.i7:                                    ; preds = %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4EmitERNS_11raw_ostreamE.exit, %_ZZN4llvm24SpecificBumpPtrAllocatorINS_31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4ItemEE10DestroyAllEvENKUlPcS9_E_clES9_S9_.exit.i.i.i
  %.049.i.i.i = phi ptr [ %i.jx, %_ZZN4llvm24SpecificBumpPtrAllocatorINS_31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4ItemEE10DestroyAllEvENKUlPcS9_E_clES9_S9_.exit.i.i.i ], [ %i.ho, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4EmitERNS_11raw_ostreamE.exit ] ; 3 uses
  %i.hw = load ptr, ptr %i.aa, align 8, !tbaa !147 ; 2 uses
  %i.hx = load ptr, ptr %.049.i.i.i, align 8, !tbaa !233 ; 3 uses
  %i.hy = ptrtoint ptr %i.hx to i64
  %i.hz = add i64 %i.hy, 7
  %i.ia = and i64 %i.hz, -8
  %i.ib = inttoptr i64 %i.ia to ptr               ; 2 uses
  %i.ic = load i32, ptr %i.ac, align 8, !tbaa !144
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.id
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !233
  %i.ih = icmp eq ptr %i.hx, %i.ig
  br i1 %i.ih, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i.i7
  %i.ii = load ptr, ptr %i.z, align 8, !tbaa !695
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.i.i.i7
  %i.ij = ptrtoint ptr %.049.i.i.i to i64
  %i.ik = ptrtoint ptr %i.hw to i64
  %i.il = sub i64 %i.ij, %i.ik
  %sum.shift.i.i.i = lshr i64 %i.il, 10
  %i.im = trunc i64 %sum.shift.i.i.i to i32
  %i.in = and i32 %i.im, 33554431
  %i.io = call i32 @llvm.umin.i32(i32 %i.in, i32 30)
  %.sroa.speculated.i.i.i.i = zext nneg i32 %i.io to i64
  %i.ip = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.ip
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ir = phi ptr [ %i.ii, %bb.x ], [ %i.iq, %bb.y ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ib, i64 184 ; 2 uses
  %.not1.i.i.i.i8 = icmp ugt ptr %i.is, %i.ir
  br i1 %.not1.i.i.i.i8, label %_ZZN4llvm24SpecificBumpPtrAllocatorINS_31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4ItemEE10DestroyAllEvENKUlPcS9_E_clES9_S9_.exit.i.i.i, label %.lr.ph.i.i.i.i9

.lr.ph.i.i.i.i9:                                  ; preds = %bb.z, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4ItemD2Ev.exit.i.i.i.i
  %i.it = phi ptr [ %i.jw, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4ItemD2Ev.exit.i.i.i.i ], [ %i.is, %bb.z ] ; 2 uses
  %.02.i.i.i.i = phi ptr [ %i.it, %_ZN4llvm31OnDiskChainedHashTableGeneratorIN5clang9api_notes12_GLOBAL__N_121ObjCPropertyTableInfoEE4ItemD2Ev.exit.i.i.i.i ], [ %i.ib, %bb.z ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 16 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !147 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 24
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !144 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.ix, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i9
  %i.iy = zext i32 %i.ix to i64
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %i.iy, 136
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.idx.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ja, %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i.i.i.i.i ], [ %i.iz, %.lr.ph.i.preheader.i.i.i.i.i.i ] ; 7 uses
  %i.ja = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -136 ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -120
  %i.jc = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -40
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !150 ; 2 uses
  %i.je = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !142
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ji = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -80
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !150 ; 2 uses
  %i.jk = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !142
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jo = load ptr, ptr %i.jb, align 8, !tbaa !150 ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i.i, i64 -104 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !142
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #20
  br label %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i10 = icmp eq ptr %i.iv, %i.ja
  br i1 %.not.i.i.i.i.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.i.i.i: ; preds = %_ZNSt4pairIN4llvm12VersionTupleEN5clang9api_notes16ObjCPropertyInfoEED2Ev.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.iu, align 8, !tbaa !147
end_hunk_0
begin_hunk_1_@_ZN5clang9api_notes14APINotesWriter14Implementation13writeTagBlockERN4llvm15BitstreamWriterE:bb.a
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
  %.017.i.i.i.i = phi ptr [ %i.pe, %_ZN4llvm12function_refIFvRNS_11raw_ostreamERKN5clang9api_notes7TagInfoEEE11callback_fnIZNS4_12_GLOBAL__N_118VersionedTableInfoINSB_12TagTableInfoENS4_18SingleDeclTableKeyES5_E8EmitDataES2_SE_RNS_11SmallVectorISt4pairINS_12VersionTupleES5_ELj1EEEjEUlS2_S7_E_EEvlS2_S7_.exit.i.i ], [ %i.hq, %_ZSt4sortIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes7TagInfoEEZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSB_RKNS8_13MakeDependentISD_E4TypeEEEEEUlRKS6_SQ_E_EvSD_SD_T0_.exit.i.i.i.i ] ; 23 uses
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
  %i.jh = lshr i8 %i.jf, 3
  %.lobit.i21.i.i.i.i.i = and i8 %i.jh, 1
  %i.ji = sub nuw nsw i8 2, %.lobit.i21.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i8 %i.ji, ptr %i.x, align 1, !tbaa !142
  %i.jj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.x, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.x

bb.w:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_116emitVersionTupleERN4llvm11raw_ostreamERKNS2_12VersionTupleE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i8 0, ptr %i.w, align 1, !tbaa !142
  %i.jk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.w, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.jl = load i8, ptr %i.iz, align 8             ; 2 uses
  %i.jm = and i8 %i.jl, 16
  %.not.i23.i.i.i.i.i = icmp eq i8 %i.jm, 0
  br i1 %.not.i23.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jn = lshr i8 %i.jl, 5
  %.lobit.i24.i.i.i.i.i = and i8 %i.jn, 1
  %i.jo = sub nuw nsw i8 2, %.lobit.i24.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 %i.jo, ptr %i.v, align 1, !tbaa !142
  %i.jp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.v, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i8 0, ptr %i.u, align 1, !tbaa !142
  %i.jq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.u, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.jr = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 248
  store i8 0, ptr %i.ct, align 8, !tbaa !495
  %i.js = load i8, ptr %i.jr, align 8, !tbaa !495, !range !330, !noundef !331
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.ab, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ju = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 216
  store ptr %i.cu, ptr %3, align 8, !tbaa !332
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !150 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 224
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #17
  store i64 %i.jx, ptr %i.t, align 8, !tbaa !190
  %i.jy = icmp ugt i64 %i.jx, 15
  br i1 %i.jy, label %bb.ac, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.jz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0) #17 ; 2 uses
  store ptr %i.jz, ptr %3, align 8, !tbaa !150
  %i.ka = load i64, ptr %i.t, align 8, !tbaa !190
  store i64 %i.ka, ptr %i.cu, align 8, !tbaa !142
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %bb.ac, %bb.ab
  %i.kb = phi ptr [ %i.jz, %bb.ac ], [ %i.cu, %bb.ab ] ; 2 uses
  switch i64 %i.jx, label %bb.ae [
    i64 1, label %bb.ad
    i64 0, label %bb.af
  ]

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kc = load i8, ptr %i.jv, align 1, !tbaa !142
  store i8 %i.kc, ptr %i.kb, align 1, !tbaa !142
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kb, ptr align 1 %i.jv, i64 %i.jx, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kd = load i64, ptr %i.t, align 8, !tbaa !190 ; 2 uses
  store i64 %i.kd, ptr %i.cv, align 8, !tbaa !151
  %i.ke = load ptr, ptr %3, align 8, !tbaa !150
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kd
  store i8 0, ptr %i.kf, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #17
  store i8 1, ptr %i.ct, align 8, !tbaa !495
  %i.kg = load i64, ptr %i.cv, align 8, !tbaa !151
  %i.kh = trunc i64 %i.kg to i16
  %i.ki = add i16 %i.kh, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i16 %i.ki, ptr %i.s, align 2, !tbaa !222
  %i.kj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.s, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.kk = load ptr, ptr %3, align 8, !tbaa !150
  %i.kl = load i64, ptr %i.cv, align 8, !tbaa !151
  %i.km = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.kk, i64 noundef %i.kl) #17 ; 0 uses
  br label %bb.ag

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i16 0, ptr %i.r, align 2, !tbaa !222
  %i.kn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.r, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit.i.i.i.i.i, %bb.af
  %i.ko = load i8, ptr %i.ct, align 8, !tbaa !495, !range !330, !noundef !331
  %i.kp = trunc nuw i8 %i.ko to i1
  store i8 0, ptr %i.ct, align 8, !tbaa !495
  br i1 %i.kp, label %bb.ah, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.kq = load ptr, ptr %3, align 8, !tbaa !150   ; 2 uses
  %i.kr = icmp eq ptr %i.kq, %i.cu
  br i1 %i.kr, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.ks = load i64, ptr %i.cu, align 8, !tbaa !142
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kq, i64 noundef %i.kt) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ku = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 288
  store i8 0, ptr %i.cw, align 8, !tbaa !495
  %i.kv = load i8, ptr %i.ku, align 8, !tbaa !495, !range !330, !noundef !331
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.ai, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit30.i.i.i.i.i

bb.ai:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 256
  store ptr %i.cx, ptr %4, align 8, !tbaa !332
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !150 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 264
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !151 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #17
  store i64 %i.la, ptr %i.q, align 8, !tbaa !190
  %i.lb = icmp ugt i64 %i.la, 15
  br i1 %i.lb, label %bb.aj, label %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.lc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0) #17 ; 2 uses
  store ptr %i.lc, ptr %4, align 8, !tbaa !150
  %i.ld = load i64, ptr %i.q, align 8, !tbaa !190
  store i64 %i.ld, ptr %i.cx, align 8, !tbaa !142
  br label %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i:        ; preds = %bb.aj, %bb.ai
  %i.le = phi ptr [ %i.lc, %bb.aj ], [ %i.cx, %bb.ai ] ; 2 uses
  switch i64 %i.la, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  %i.lf = load i8, ptr %i.ky, align 1, !tbaa !142
  store i8 %i.lf, ptr %i.le, align 1, !tbaa !142
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.le, ptr align 1 %i.ky, i64 %i.la, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i.i.i.i.i.i.i28.i.i.i.i.i
  %i.lg = load i64, ptr %i.q, align 8, !tbaa !190 ; 2 uses
  store i64 %i.lg, ptr %i.cy, align 8, !tbaa !151
  %i.lh = load ptr, ptr %4, align 8, !tbaa !150
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.lg
  store i8 0, ptr %i.li, align 1, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #17
  store i8 1, ptr %i.cw, align 8, !tbaa !495
  %i.lj = load i64, ptr %i.cy, align 8, !tbaa !151
  %i.lk = trunc i64 %i.lj to i16
  %i.ll = add i16 %i.lk, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i16 %i.ll, ptr %i.p, align 2, !tbaa !222
  %i.lm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull %i.p, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ln = load ptr, ptr %4, align 8, !tbaa !150
  %i.lo = load i64, ptr %i.cy, align 8, !tbaa !151
  %i.lp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.ln, i64 noundef %i.lo) #17 ; 0 uses
  br label %bb.an

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit30.i.i.i.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
end_hunk_1
begin_hunk_2_@_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm12VersionTupleEN5clang9api_notes14ObjCMethodInfoEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS4_12_GLOBAL__N_117emitVersionedInfoIS5_EEvRNS1_11raw_ostreamERNS1_15SmallVectorImplIS0_IS2_T_EEENS1_12function_refIFvSE_RKNSB_13MakeDependentISG_E4TypeEEEEEUlRKS6_ST_E_EEEvSG_T0_:bb.a
  br i1 %i.dh, label %_ZN5clang9api_notes12FunctionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !142
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #20
  br label %_ZN5clang9api_notes12FunctionInfoD2Ev.exit

_ZN5clang9api_notes12FunctionInfoD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5clang9api_notes12_GLOBAL__N_116emitFunctionInfoERN4llvm11raw_ostreamERKNS0_12FunctionInfoE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i8, ptr %i.l, align 8               ; 5 uses
  %i.n = and i8 %i.m, 16
  %.not.i = icmp eq i8 %i.n, 0
  %i.o = and i8 %i.m, 96
  %i.p = or disjoint i8 %i.o, 16
  %.0.i = select i1 %.not.i, i8 0, i8 %i.p
  %i.q = and i8 %i.m, 4
  %.not.i.not.i = icmp eq i8 %i.q, 0
  %i.r = and i8 %i.m, 12
  %i.s = icmp eq i8 %i.r, 12
  %spec.select.v.i = select i1 %i.s, i8 12, i8 4
  %spec.select.i = select i1 %.not.i.not.i, i8 0, i8 %spec.select.v.i
  %trunc.i = trunc i8 %i.m to i2
  %rev.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i)
  %.1.i = zext i2 %rev.i to i8
  %i.t = or disjoint i8 %.0.i, %.1.i
  %i.u = or disjoint i8 %i.t, %spec.select.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 %i.u, ptr %i.k, align 1, !tbaa !142
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.k, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !151
  %i.y = trunc i64 %i.x to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.y, ptr %i.j, align 2, !tbaa !222
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.j, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.aa = load ptr, ptr %1, align 8, !tbaa !150
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !151
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.aa, i64 noundef %i.ab) #17 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !151
  %i.ag = trunc i64 %i.af to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i16 %i.ag, ptr %i.i, align 2, !tbaa !222
  %i.ah = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !150
  %i.aj = load i64, ptr %i.ae, align 8, !tbaa !151
  %i.ak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.ai, i64 noundef %i.aj) #17 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.am = load i16, ptr %i.al, align 8            ; 4 uses
  %.tr = trunc i16 %i.am to i8
  %i.an = shl i8 %.tr, 3
  %i.ao = and i8 %i.an, 8
  %i.ap = and i16 %i.am, 3584
  %.not.not.i = icmp eq i16 %i.ap, 0
  %i.aq = lshr i16 %i.am, 9
  %i.ar = trunc nuw nsw i16 %i.aq to i8
  %i.as = and i8 %i.ar, 7
  %i.at = select i1 %.not.not.i, i8 0, i8 %i.as
  %.0 = or disjoint i8 %i.at, %i.ao
  %i.au = shl nuw nsw i8 %.0, 1
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
  %i.au = or disjoint i8 %i.at, 1
  %.1.i = select i1 %.not.i.i, i8 %i.au, i8 %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.1.i, ptr %i.c, align 1, !tbaa !142
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !151
  %i.az = trunc i64 %i.ay to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.az, ptr %i.b, align 2, !tbaa !222
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i64 noundef 2) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !150 ; 2 uses
  %i.bc = load i64, ptr %i.ax, align 8, !tbaa !151 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bc
  %.not9.i.i.i = icmp samesign eq i64 %i.bc, 0
  br i1 %.not9.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %i.bb, %bb.f ] ; 2 uses
  %i.be = load i8, ptr %.010.i.i.i, align 1, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.be, ptr %i.a, align 1, !tbaa !142
  %i.bf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, %i.bd
  br i1 %.not.i.i.i, label %_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit, label %.lr.ph.i.i.i

_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit: ; preds = %.lr.ph.i.i.i, %bb.a, %bb.f
  %i.bh = load i8, ptr %i.t, align 8, !tbaa !329, !range !330, !noundef !331
  %i.bi = trunc nuw i8 %i.bh to i1
  store i8 0, ptr %i.t, align 8, !tbaa !329
  br i1 %i.bi, label %bb.g, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZN5clang9api_notes12_GLOBAL__N_120emitBoundsSafetyInfoERN4llvm11raw_ostreamERKNS0_16BoundsSafetyInfoE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !150 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !142
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #20
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
  store i8 0, ptr %i.l, align 8, !tbaa !334
  br i1 %i.n, label %bb.b, label %_ZNSt22_Optional_payload_baseIN5clang9api_notes9ParamInfoEE8_M_resetEv.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.o = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -16 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !329, !range !330, !noundef !331
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !329
  br i1 %i.q, label %bb.c, label %_ZNSt14_Optional_baseIN5clang9api_notes16BoundsSafetyInfoELb0ELb0EED2Ev.exit.i.i.i

bb.c:                                             ; preds = %bb.b
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
end_hunk_2
