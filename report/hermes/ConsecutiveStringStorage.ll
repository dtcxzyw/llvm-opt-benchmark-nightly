Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ConsecutiveStringStorage?download=true
inline.NumInlined: 2626
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.013.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !99, !noalias !287
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !293, !noalias !287 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !292, !noalias !287 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !97, !noalias !287 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i8 0, i64 24, i1 false), !noalias !287
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.0.i, %.sroa.17.0.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.013.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !287
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 16
  store ptr %i.ie, ptr %i.ij, align 8, !tbaa !293, !noalias !287
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 24
  store ptr %i.ig, ptr %i.ik, align 8, !tbaa !292, !noalias !287
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 32
  store ptr %i.ii, ptr %i.il, align 8, !tbaa !97, !noalias !287
  br label %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.im = ptrtoint ptr %.sroa.17.0.i to i64
  %i.in = ptrtoint ptr %.sroa.075.0.i to i64
  %i.io = sub i64 %i.im, %i.in                    ; 4 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775800
  br i1 %i.ip, label %bb.ai, label %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17, !noalias !287
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.iq = sdiv exact i64 %i.io, 40                ; 3 uses
  %i.ir = icmp eq ptr %.sroa.17.0.i, %.sroa.075.0.i ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ir, i64 1, i64 %i.iq
  %i.is = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %i.iq ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.iq
  %i.iu = call i64 @llvm.umin.i64(i64 %i.is, i64 230584300921369395)
  %i.iv = select i1 %i.it, i64 230584300921369395, i64 %i.iu ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.iv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.iw = mul nuw nsw i64 %i.iv, 40
  %i.ix = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #16, !noalias !287 ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.io ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !99, !noalias !287
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store ptr %i.ie, ptr %i.iz, align 8, !tbaa !293, !noalias !287
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  store ptr %i.ig, ptr %i.ja, align 8, !tbaa !292, !noalias !287
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  store ptr %i.ii, ptr %i.jb, align 8, !tbaa !97, !noalias !287
  br i1 %i.ir, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ix, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.075.0.i, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !99, !alias.scope !296, !noalias !287
  %i.jc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.jd = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.je = load <2 x ptr>, ptr %i.jd, align 8, !tbaa !95, !alias.scope !295, !noalias !297
  store <2 x ptr> %i.je, ptr %i.jc, align 8, !tbaa !95, !alias.scope !294, !noalias !298
  %i.jf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.jg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !97, !alias.scope !295, !noalias !297
  store ptr %i.jh, ptr %i.jf, align 8, !tbaa !97, !alias.scope !294, !noalias !298
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jd, i8 0, i64 24, i1 false), !alias.scope !295, !noalias !297
  %i.ji = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ji, %.sroa.17.0.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !198

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ix, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0.i, i64 noundef %i.io) #18, !noalias !287
  %i.jk = getelementptr inbounds nuw [40 x i8], ptr %i.ix, i64 %i.iv
  br label %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.17.1.i = phi ptr [ %i.jk, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.17.0.i, %bb.ag ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0.i, %bb.ag ]
  %.sroa.075.1.i = phi ptr [ %i.ix, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.075.0.i, %bb.ag ] ; 2 uses
  %.sroa.11.1.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.pn.i, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i, i64 48 ; 3 uses
  %.not18.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jl, %i.hx
  br i1 %.not18.i.i.i.i.i.i.i.i.i, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i, %.critedge2.i.i.i.i.i.i.i.i.i
  %.sroa.011.1.i.i.i.i.i.i.i = phi ptr [ %i.jp, %.critedge2.i.i.i.i.i.i.i.i.i ], [ %i.jl, %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i, i64 16
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !89, !noalias !287
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.aj, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !84, !noalias !287
  %.not.i.i.i.i.i5.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i5.i.i.i.i.i.i.i, label %.critedge2.i.i.i.i.i.i.i.i.i, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i

.critedge2.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.aj
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i, i64 48 ; 3 uses
  %.not.i.i.i.i.i.i.i60.i.i = icmp eq ptr %i.jp, %i.hx
  br i1 %.not.i.i.i.i.i.i.i60.i.i, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !194

_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge2.i.i.i.i.i.i.i.i.i, %bb.aj, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i.i = phi ptr [ %i.jl, %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i ], [ %i.jp, %.critedge2.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.1.i.i.i.i.i.i.i, %bb.aj ], [ %.sroa.011.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.011.2.i.i.i.i.i.i.i, %i.ic
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !199

_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i: ; preds = %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i
  %.sroa.17.2.i = phi ptr [ %i.hv, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.17.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ]
  %.sroa.11.2.i = phi ptr [ %i.hu, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.11.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.075.2.i = phi ptr [ %i.hu, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.075.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.jq = ptrtoint ptr %.sroa.11.2.i to i64
  %i.jr = ptrtoint ptr %.sroa.075.2.i to i64
  %i.js = sub i64 %i.jq, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.075.2.i, i64 %i.js
  call fastcc void @_ZN12_GLOBAL__N_112StringPackerIhE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef nonnull %.sroa.075.2.i, ptr noundef nonnull %i.jt, i64 noundef 0), !noalias !287
  %i.ju = ptrtoint ptr %.sroa.17.2.i to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, %._crit_edge.i.i
  %.sroa.17.3.i = phi i64 [ %i.ju, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ 0, %._crit_edge.i.i ]
  %.sroa.11.3.i = phi ptr [ %.sroa.11.2.i, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ null, %._crit_edge.i.i ] ; 3 uses
  %.sroa.075.3.i = phi ptr [ %.sroa.075.2.i, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ null, %._crit_edge.i.i ] ; 7 uses
  %i.jv = icmp eq i32 %.sroa.29.2.i.i, 0
  br i1 %i.jv, label %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %._crit_edge.thread.i.i
  %i.jw = zext i32 %.sroa.29.2.i.i to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.jw, 48
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.093.2.i.i, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.kg, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i ], [ %.sroa.093.2.i.i, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !89, !noalias !287
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !84, !noalias !287
  %.not.i.i.i.i.i62.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i62.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %i.kb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %.val11.i.i.i.i = load ptr, ptr %i.kb, align 8, !tbaa !293, !noalias !287 ; 3 uses
  %.not.i.i.i24.i.i.i.i = icmp eq ptr %.val11.i.i.i.i, null
  br i1 %.not.i.i.i24.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kc = getelementptr i8, ptr %.06.i.i.i.i, i64 40
  %.val12.i.i.i.i = load ptr, ptr %i.kc, align 8, !tbaa !97, !noalias !287
  %i.kd = ptrtoint ptr %.val12.i.i.i.i to i64
  %i.ke = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %.val11.i.i.i.i, i64 noundef %i.kf) #18, !noalias !287
  br label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.kg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i61.i.i = icmp eq ptr %i.kg, %i.jx
  br i1 %.not.i.i61.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !200

_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, %._crit_edge.thread.i.i
  call void @_ZdlPv(ptr noundef %.sroa.093.2.i.i) #15, !noalias !287
  %i.kh = ptrtoint ptr %.sroa.075.3.i to i64      ; 2 uses
  %i.ki = ptrtoint ptr %.sroa.11.3.i to i64
  %i.kj = sub i64 %i.ki, %i.kh
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.075.3.i, i64 %i.kj
  br label %bb.an

bb.an:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i
  %.sroa.074.0.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.sroa.074.2.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.sroa.9.2.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.sroa.14.0.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.sroa.14.2.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val66.i31.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.val66.i32.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val63.i25.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.val63.i26.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val62.i20.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.val62.i21.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.015.i.i = phi ptr [ %.val7, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %i.pc, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 8 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.sroa.096.0.copyload.i.i.i = load ptr, ptr %i.kl, align 8, !tbaa !58, !noalias !299
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !84, !noalias !299 ; 3 uses
  %.not113.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %.not113.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, label %.lr.ph112.i.i.i

.lr.ph112.i.i.i:                                  ; preds = %bb.an
  %i.km = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 32 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 40
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i, %.lr.ph112.i.i.i
  %.sroa.074.1.i = phi ptr [ %.sroa.074.0.i, %.lr.ph112.i.i.i ], [ %.sroa.074.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 9 uses
  %.sroa.9.1.i = phi ptr [ %.sroa.9.0.i, %.lr.ph112.i.i.i ], [ %.sroa.9.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 7 uses
  %.sroa.14.1.i = phi ptr [ %.sroa.14.0.i, %.lr.ph112.i.i.i ], [ %.sroa.14.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 9 uses
  %.val66.i30.i.i = phi ptr [ %.val66.i31.i.i, %.lr.ph112.i.i.i ], [ %.val66.i34.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 7 uses
  %.val63.i.i.i = phi ptr [ %.val63.i25.i.i, %.lr.ph112.i.i.i ], [ %.val63.i28.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 12 uses
  %.val62.i.i.i = phi ptr [ %.val62.i20.i.i, %.lr.ph112.i.i.i ], [ %.val62.i23.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 11 uses
  %.047110.i.i.i = phi ptr [ %.sroa.075.3.i, %.lr.ph112.i.i.i ], [ %i.lh, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 2 uses
  %.048109.i.i.i = phi ptr [ %i.kk, %.lr.ph112.i.i.i ], [ %i.lv, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ]
  %.049108.i.i.i = phi i64 [ 0, %.lr.ph112.i.i.i ], [ %i.ly, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 8 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload.i.i.i, i64 %.049108.i.i.i
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !59, !noalias !299 ; 2 uses
  %i.kq = ptrtoint ptr %.048109.i.i.i to i64      ; 2 uses
  %i.kr = ptrtoint ptr %.047110.i.i.i to i64
  %i.ks = sub i64 %i.kq, %i.kr                    ; 2 uses
  %i.kt = icmp sgt i64 %i.ks, 0
  br i1 %i.kt, label %.lr.ph.i.i.i23.i, label %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i

.lr.ph.i.i.i23.i:                                 ; preds = %bb.ao
  %i.ku = udiv exact i64 %i.ks, 40
  br label %bb.ap

bb.ap:                                            ; preds = %.split.i.i.i25.i, %.lr.ph.i.i.i23.i
  %.018.i.i.i.i = phi i64 [ %i.ku, %.lr.ph.i.i.i23.i ], [ %i.li, %.split.i.i.i25.i ] ; 3 uses
  %.01017.i.i.i.i = phi ptr [ %.047110.i.i.i, %.lr.ph.i.i.i23.i ], [ %i.lh, %.split.i.i.i25.i ] ; 2 uses
  %i.kv = lshr i64 %.018.i.i.i.i, 1               ; 4 uses
  %i.kw = getelementptr inbounds nuw [40 x i8], ptr %.01017.i.i.i.i, i64 %i.kv ; 4 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 8
  %.val14.i.i.i.i = load i64, ptr %i.kx, align 8, !tbaa !55, !noalias !299
  %.not.i.i.i.i.i24.i = icmp ult i64 %.049108.i.i.i, %.val14.i.i.i.i
  br i1 %.not.i.i.i.i.i24.i, label %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ap
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.kz = xor i64 %i.kv, -1
  %i.la = add nsw i64 %.018.i.i.i.i, %i.kz
  br label %.split.i.i.i25.i

_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i: ; preds = %bb.ap
  %.val13.i.i.i.i = load ptr, ptr %i.kw, align 8, !noalias !299
  %i.lb = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i, i64 %.049108.i.i.i
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !59, !noalias !299
  %i.ld = icmp ult i8 %i.lc, %i.kp
  %cond.fr.i.i.i.i = freeze i1 %i.ld              ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  %i.lf = xor i64 %i.kv, -1
  %i.lg = add nsw i64 %.018.i.i.i.i, %i.lf
  %spec.select.i.i.i = select i1 %cond.fr.i.i.i.i, ptr %i.le, ptr %.01017.i.i.i.i
  %spec.select98.i.i.i = select i1 %cond.fr.i.i.i.i, i64 %i.lg, i64 %i.kv
  br label %.split.i.i.i25.i

.split.i.i.i25.i:                                 ; preds = %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i, %.thread.i.i.i.i
  %i.lh = phi ptr [ %spec.select.i.i.i, %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i ], [ %i.ky, %.thread.i.i.i.i ] ; 10 uses
  %i.li = phi i64 [ %spec.select98.i.i.i, %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i ], [ %i.la, %.thread.i.i.i.i ] ; 2 uses
  %i.lj = icmp sgt i64 %i.li, 0
  br i1 %i.lj, label %bb.ap, label %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i, !llvm.loop !203

_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i: ; preds = %.split.i.i.i25.i
  %.pre.i.i.i = ptrtoint ptr %i.lh to i64
  %.pre116.i.i.i = sub i64 %i.kq, %.pre.i.i.i     ; 2 uses
  %i.lk = icmp sgt i64 %.pre116.i.i.i, 0
  br i1 %i.lk, label %.lr.ph.i73.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i

.lr.ph.i73.i.i.i:                                 ; preds = %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i
  %i.ll = udiv exact i64 %.pre116.i.i.i, 40
  br label %bb.aq

bb.aq:                                            ; preds = %.thread.i80.i.i.i, %.lr.ph.i73.i.i.i
  %.018.i74.i.i.i = phi i64 [ %i.ll, %.lr.ph.i73.i.i.i ], [ %i.lw, %.thread.i80.i.i.i ] ; 2 uses
  %.01017.i75.i.i.i = phi ptr [ %i.lh, %.lr.ph.i73.i.i.i ], [ %i.lv, %.thread.i80.i.i.i ] ; 3 uses
  %i.lm = lshr i64 %.018.i74.i.i.i, 1             ; 4 uses
  %i.ln = getelementptr inbounds nuw [40 x i8], ptr %.01017.i75.i.i.i, i64 %i.lm ; 3 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 8
  %.val14.i78.i.i.i = load i64, ptr %i.lo, align 8, !tbaa !55, !noalias !299
  %.not.i.i.i79.i.i.i = icmp ult i64 %.049108.i.i.i, %.val14.i78.i.i.i
  br i1 %.not.i.i.i79.i.i.i, label %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i, label %.thread.i80.i.i.i

_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i: ; preds = %bb.aq
  %.val13.i81.i.i.i = load ptr, ptr %i.ln, align 8, !noalias !299
  %i.lp = getelementptr inbounds nuw i8, ptr %.val13.i81.i.i.i, i64 %.049108.i.i.i
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !59, !noalias !299
  %i.lr = icmp eq i8 %i.lq, %i.kp
  %cond.fr.i82.i.i.i = freeze i1 %i.lr            ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  %i.lt = xor i64 %i.lm, -1
  %i.lu = add nsw i64 %.018.i74.i.i.i, %i.lt
  %spec.select99.i.i.i = select i1 %cond.fr.i82.i.i.i, ptr %i.ls, ptr %.01017.i75.i.i.i
  %spec.select100.i.i.i = select i1 %cond.fr.i82.i.i.i, i64 %i.lu, i64 %i.lm
  br label %.thread.i80.i.i.i

.thread.i80.i.i.i:                                ; preds = %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i, %bb.aq
  %i.lv = phi ptr [ %.01017.i75.i.i.i, %bb.aq ], [ %spec.select99.i.i.i, %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i ] ; 5 uses
  %i.lw = phi i64 [ %i.lm, %bb.aq ], [ %spec.select100.i.i.i, %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i ] ; 2 uses
  %i.lx = icmp sgt i64 %i.lw, 0
  br i1 %i.lx, label %bb.aq, label %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i, !llvm.loop !204

_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i: ; preds = %.thread.i80.i.i.i
  %.not59.i.i.i = icmp eq ptr %i.lh, %i.lv
  br i1 %.not59.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i
  %i.ly = add nuw i64 %.049108.i.i.i, 1           ; 6 uses
  %i.lz = icmp ult i64 %i.ly, %.sroa.4.0.copyload.i.i.i
  br i1 %i.lz, label %bb.as, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ar
  %i.ma = icmp ult ptr %i.lh, %i.lv
  br i1 %i.ma, label %.lr.ph107.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !55, !noalias !299
  %i.md = icmp eq i64 %i.mc, %i.ly
  br i1 %i.md, label %bb.at, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.me = ptrtoint ptr %.val63.i.i.i to i64       ; 2 uses
  %i.mf = ptrtoint ptr %.val62.i.i.i to i64       ; 2 uses
  %i.mg = sub i64 %i.me, %i.mf                    ; 2 uses
  %i.mh = sdiv exact i64 %i.mg, 24                ; 6 uses
  %.not58.i.i.i = icmp ugt i64 %i.mh, %i.ly
  br i1 %.not58.i.i.i, label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %18 = add nuw i64 %.049108.i.i.i, 2
  %i.mi = sub nuw i64 %18, %i.mh                  ; 5 uses
  %i.mj = ptrtoint ptr %.sroa.14.1.i to i64       ; 2 uses
  %i.mk = sub i64 %i.mj, %i.me
  %i.ml = sdiv exact i64 %i.mk, 24                ; 2 uses
  %i.mm = icmp ult i64 %i.mh, 384307168202282326
  call void @llvm.assume(i1 %i.mm)
  %i.mn = sub nuw nsw i64 384307168202282325, %i.mh
  %i.mo = icmp ule i64 %i.ml, %i.mn
  call void @llvm.assume(i1 %i.mo)
  %.not23.i.i.i.i.i = icmp ult i64 %i.ml, %i.mi
  br i1 %.not23.i.i.i.i.i, label %bb.av, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i: ; preds = %bb.au
  %i.mp = mul nuw nsw i64 %i.mi, 24               ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.val63.i.i.i, i8 0, i64 %i.mp, i1 false), !noalias !299
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val63.i.i.i, i64 %i.mp ; 2 uses
  br label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.mq = icmp ugt i64 %.049108.i.i.i, 384307168202282323
  br i1 %i.mq, label %bb.aw, label %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17, !noalias !299
  unreachable

_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.av
  %.sroa.speculated.i.i.i.i.i30.i = call i64 @llvm.umax.i64(i64 %i.mh, i64 %i.mi)
  %i.mr = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i30.i, %i.mh
  %i.ms = call i64 @llvm.umin.i64(i64 %i.mr, i64 384307168202282325) ; 2 uses
  %i.mt = mul nuw nsw i64 %i.ms, 24
  %i.mu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mt) #16, !noalias !299 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mg ; 2 uses
  %i.mw = mul nuw nsw i64 %i.mi, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.mv, i8 0, i64 %i.mw, i1 false), !noalias !299
  %.not1.i.i.i.i.i.i.i.i = icmp eq ptr %.val62.i.i.i, %.val63.i.i.i
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.mu, %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 3 uses
  %.092.i.i.i.i.i.i.i.i = phi ptr [ %i.nb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.val62.i.i.i, %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.mx = load <2 x ptr>, ptr %.092.i.i.i.i.i.i.i.i, align 8, !tbaa !303, !alias.scope !301, !noalias !304
  store <2 x ptr> %i.mx, ptr %.03.i.i.i.i.i.i.i.i, align 8, !tbaa !303, !alias.scope !300, !noalias !305
  %i.my = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !307, !alias.scope !301, !noalias !304
  store ptr %i.na, ptr %i.my, align 8, !tbaa !307, !alias.scope !300, !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !301, !noalias !304
  %i.nb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i.i31.i = icmp eq ptr %i.nb, %.val63.i.i.i
  br i1 %.not.i.i.i.i.i.i.i31.i, label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !208

_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.not.i33.i.i.i.i.i = icmp eq ptr %.val62.i.i.i, null
  br i1 %.not.i33.i.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i
  %i.nd = sub i64 %i.mj, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %.val62.i.i.i, i64 noundef %i.nd) #18, !noalias !299
  br label %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i: ; preds = %bb.ax, %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %i.mv, i64 %i.mi ; 2 uses
  %i.nf = getelementptr inbounds nuw [24 x i8], ptr %i.mu, i64 %i.ms
  br label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i

_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i, %bb.at
  %.sroa.072.4.i = phi ptr [ %.sroa.074.1.i, %bb.at ], [ %i.mu, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %.sroa.074.1.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9.4.i = phi ptr [ %.sroa.9.1.i, %bb.at ], [ %i.ne, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.13.4.i = phi ptr [ %.sroa.14.1.i, %bb.at ], [ %i.nf, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %.sroa.14.1.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 2 uses
  %.val66.i.i.i = phi ptr [ %.val66.i30.i.i, %bb.at ], [ %i.mu, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %.sroa.074.1.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 5 uses
  %.val63.i29.i.i = phi ptr [ %.val63.i.i.i, %bb.at ], [ %i.ne, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %.val64.i.i.i = load ptr, ptr %i.ng, align 8, !tbaa !293, !noalias !299 ; 3 uses
  %i.nh = getelementptr i8, ptr %i.lh, i64 24
  %.val65.i.i.i = load ptr, ptr %i.nh, align 8, !tbaa !292, !noalias !299
  %i.ni = ptrtoint ptr %.val65.i.i.i to i64
  %i.nj = ptrtoint ptr %.val64.i.i.i to i64
  %i.nk = sub i64 %i.ni, %i.nj
  %i.nl = ashr exact i64 %i.nk, 3                 ; 2 uses
  %i.nm = getelementptr inbounds nuw [24 x i8], ptr %.val66.i.i.i, i64 %i.ly ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8 ; 3 uses
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !308, !noalias !299 ; 8 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 16 ; 3 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !307, !noalias !299
  %.not.i.i.i26.i = icmp eq ptr %i.no, %i.nq
  br i1 %.not.i.i.i26.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i
  store ptr %.val64.i.i.i, ptr %i.no, align 8, !tbaa !95, !noalias !299
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store i64 %i.nl, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !84, !noalias !299
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  store ptr %.015.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !98, !noalias !299
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  store ptr %i.nr, ptr %i.nn, align 8, !tbaa !308, !noalias !299
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i

bb.az:                                            ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i
  %.val.i.i.i.i27.i = load ptr, ptr %i.nm, align 8, !tbaa !309, !noalias !299 ; 5 uses
  %i.ns = ptrtoint ptr %i.no to i64
  %i.nt = ptrtoint ptr %.val.i.i.i.i27.i to i64   ; 2 uses
  %i.nu = sub i64 %i.ns, %i.nt                    ; 3 uses
  %i.nv = icmp eq i64 %i.nu, 9223372036854775800
  br i1 %i.nv, label %bb.ba, label %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17, !noalias !299
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.az
  %i.nw = sdiv exact i64 %i.nu, 24                ; 3 uses
  %i.nx = icmp eq ptr %i.no, %.val.i.i.i.i27.i    ; 2 uses
  %.sroa.speculated.i.i.i83.i.i.i = select i1 %i.nx, i64 1, i64 %i.nw
  %i.ny = add nsw i64 %.sroa.speculated.i.i.i83.i.i.i, %i.nw ; 2 uses
  %i.nz = icmp ult i64 %i.ny, %i.nw
  %i.oa = call i64 @llvm.umin.i64(i64 %i.ny, i64 384307168202282325)
  %i.ob = select i1 %i.nz, i64 384307168202282325, i64 %i.oa ; 3 uses
  %.not.i.i.i84.i.i.i = icmp ne i64 %i.ob, 0
  call void @llvm.assume(i1 %.not.i.i.i84.i.i.i)
  %i.oc = mul nuw nsw i64 %i.ob, 24
  %i.od = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oc) #16, !noalias !299 ; 5 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.nu ; 3 uses
  store ptr %.val64.i.i.i, ptr %i.oe, align 8, !tbaa !95, !noalias !299
  %.sroa.5.0..sroa_idx92.i.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  store i64 %i.nl, ptr %.sroa.5.0..sroa_idx92.i.i.i, align 8, !tbaa !84, !noalias !299
  %.sroa.6.0..sroa_idx94.i.i.i = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store ptr %.015.i.i, ptr %.sroa.6.0..sroa_idx94.i.i.i, align 8, !tbaa !98, !noalias !299
  br i1 %i.nx, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i85.i.i.i

.lr.ph.i.i.i.i.i85.i.i.i:                         ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i85.i.i.i
  %.03.i.i.i.i.i86.i.i.i = phi ptr [ %i.og, %.lr.ph.i.i.i.i.i85.i.i.i ], [ %i.od, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i87.i.i.i = phi ptr [ %i.of, %.lr.ph.i.i.i.i.i85.i.i.i ], [ %.val.i.i.i.i27.i, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i86.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i87.i.i.i, i64 24, i1 false), !tbaa.struct !310, !alias.scope !311, !noalias !299
  %i.of = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i87.i.i.i, i64 24 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i86.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i88.i.i.i = icmp eq ptr %i.of, %i.no
  br i1 %.not.i.i.i.i.i88.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i85.i.i.i, !llvm.loop !212

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i85.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.od, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.og, %.lr.ph.i.i.i.i.i85.i.i.i ]
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 24
  %.not.i27.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i27.i, null
  br i1 %.not.i27.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i
  %i.oi = load ptr, ptr %i.np, align 8, !tbaa !307, !noalias !299
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = sub i64 %i.oj, %i.nt
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i27.i, i64 noundef %i.ok) #18, !noalias !299
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bb, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i
  store ptr %i.od, ptr %i.nm, align 8, !tbaa !309, !noalias !299
  store ptr %i.oh, ptr %i.nn, align 8, !tbaa !308, !noalias !299
  %i.ol = getelementptr inbounds nuw [24 x i8], ptr %i.od, i64 %i.ob
  store ptr %i.ol, ptr %i.np, align 8, !tbaa !307, !noalias !299
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i

.lr.ph107.i.i.i:                                  ; preds = %.preheader.i.i.i, %._crit_edge.i.i.i
  %.0106.i.i.i = phi ptr [ %i.op, %._crit_edge.i.i.i ], [ %i.lh, %.preheader.i.i.i ] ; 4 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.0106.i.i.i, i64 16
  %.val67.i.i.i = load ptr, ptr %i.om, align 8, !tbaa !95, !noalias !299 ; 2 uses
  %i.on = getelementptr i8, ptr %.0106.i.i.i, i64 24
  %.val68.i.i.i = load ptr, ptr %i.on, align 8, !tbaa !95, !noalias !299 ; 2 uses
  %.not101104.i.i.i = icmp eq ptr %.val67.i.i.i, %.val68.i.i.i
  br i1 %.not101104.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph107.i.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.0106.i.i.i, i64 8
  br label %bb.bc

._crit_edge.i.i.i:                                ; preds = %bb.bg, %.lr.ph107.i.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %.0106.i.i.i, i64 40 ; 2 uses
  %i.oq = icmp ult ptr %i.op, %i.lv
  br i1 %i.oq, label %.lr.ph107.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i, !llvm.loop !213

bb.bc:                                            ; preds = %bb.bg, %.lr.ph.i.i.i
  %.sroa.089.0105.i.i.i = phi ptr [ %.val67.i.i.i, %.lr.ph.i.i.i ], [ %i.pb, %bb.bg ] ; 2 uses
  %i.or = load ptr, ptr %.sroa.089.0105.i.i.i, align 8, !tbaa !98, !noalias !299 ; 4 uses
  %i.os = icmp eq ptr %i.or, %.015.i.i
  br i1 %i.os, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ot = load ptr, ptr %i.km, align 8, !tbaa !105, !noalias !299 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !106, !noalias !299
  %i.ov = load i32, ptr %i.or, align 8, !tbaa !106, !noalias !299
  %i.ow = icmp ult i32 %i.ou, %i.ov
  br i1 %i.ow, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr %i.or, ptr %i.km, align 8, !tbaa !105, !noalias !299
  %i.ox = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !55, !noalias !299
  %i.oz = load i64, ptr %i.oo, align 8, !tbaa !55, !noalias !299
  %i.pa = sub i64 %i.oy, %i.oz
  store i64 %i.pa, ptr %i.kn, align 8, !tbaa !107, !noalias !299
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.089.0105.i.i.i, i64 8 ; 2 uses
  %.not101.i.i.i = icmp eq ptr %i.pb, %.val68.i.i.i
  br i1 %.not101.i.i.i, label %._crit_edge.i.i.i, label %bb.bc

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i: ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.ay, %bb.as, %.preheader.i.i.i
  %.sroa.074.3.i = phi ptr [ %.sroa.072.4.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.072.4.i, %bb.ay ], [ %.sroa.074.1.i, %bb.as ], [ %.sroa.074.1.i, %.preheader.i.i.i ], [ %.sroa.074.1.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.9.3.i = phi ptr [ %.sroa.9.4.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.9.4.i, %bb.ay ], [ %.sroa.9.1.i, %bb.as ], [ %.sroa.9.1.i, %.preheader.i.i.i ], [ %.sroa.9.1.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.14.3.i = phi ptr [ %.sroa.13.4.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.13.4.i, %bb.ay ], [ %.sroa.14.1.i, %bb.as ], [ %.sroa.14.1.i, %.preheader.i.i.i ], [ %.sroa.14.1.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val66.i34.i.i = phi ptr [ %.val66.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.val66.i.i.i, %bb.ay ], [ %.val66.i30.i.i, %bb.as ], [ %.val66.i30.i.i, %.preheader.i.i.i ], [ %.val66.i30.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val63.i28.i.i = phi ptr [ %.val63.i29.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.val63.i29.i.i, %bb.ay ], [ %.val63.i.i.i, %bb.as ], [ %.val63.i.i.i, %.preheader.i.i.i ], [ %.val63.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val62.i23.i.i = phi ptr [ %.val66.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.val66.i.i.i, %bb.ay ], [ %.val62.i.i.i, %bb.as ], [ %.val62.i.i.i, %.preheader.i.i.i ], [ %.val62.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ly, %.sroa.4.0.copyload.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, label %bb.ao, !llvm.loop !214

_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i, %bb.ao, %bb.an
  %.sroa.074.2.i = phi ptr [ %.sroa.074.0.i, %bb.an ], [ %.sroa.074.1.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.074.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.sroa.074.1.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.074.1.i, %bb.ao ] ; 9 uses
  %.sroa.9.2.i = phi ptr [ %.sroa.9.0.i, %bb.an ], [ %.sroa.9.1.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.9.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.sroa.9.1.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.9.1.i, %bb.ao ] ; 4 uses
  %.sroa.14.2.i = phi ptr [ %.sroa.14.0.i, %bb.an ], [ %.sroa.14.1.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.14.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.sroa.14.1.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.14.1.i, %bb.ao ] ; 2 uses
  %.val66.i32.i.i = phi ptr [ %.val66.i31.i.i, %bb.an ], [ %.val66.i30.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.val66.i34.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.val66.i30.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.val66.i30.i.i, %bb.ao ]
  %.val63.i26.i.i = phi ptr [ %.val63.i25.i.i, %bb.an ], [ %.val63.i.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.val63.i28.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.val63.i.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.val63.i.i.i, %bb.ao ]
  %.val62.i21.i.i = phi ptr [ %.val62.i20.i.i, %bb.an ], [ %.val62.i.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.val62.i23.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.val62.i.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.val62.i.i.i, %bb.ao ]
  %i.pc = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 96 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.pc, %.val8
  br i1 %.not.i21.i, label %_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i, label %bb.an

_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i
  %.not88.i.i = icmp eq ptr %.sroa.9.2.i, %.sroa.074.2.i ; 2 uses
  br i1 %.not88.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i, label %.lr.ph89.preheader.i.i

.lr.ph89.preheader.i.i:                           ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i
  %i.pd = ptrtoint ptr %.sroa.9.2.i to i64
  %i.pe = ptrtoint ptr %.sroa.074.2.i to i64
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = sdiv exact i64 %i.pf, 24
  br label %.lr.ph89.i.i

.loopexit70.i.i:                                  ; preds = %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, %.lr.ph89.i.i
  %.not.i33.i = icmp eq i64 %i.ph, 0
  br i1 %.not.i33.i, label %_ZN12_GLOBAL__N_112StringPackerIhE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i, label %.lr.ph89.i.i, !llvm.loop !215

.lr.ph89.i.i:                                     ; preds = %.loopexit70.i.i, %.lr.ph89.preheader.i.i
  %.in.i.i = phi i64 [ %i.ph, %.loopexit70.i.i ], [ %i.pg, %.lr.ph89.preheader.i.i ]
  %i.ph = add i64 %.in.i.i, -1                    ; 4 uses
  %i.pi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.074.2.i, i64 %i.ph ; 2 uses
  %.val43.i.i = load ptr, ptr %i.pi, align 8, !tbaa !303, !noalias !284 ; 2 uses
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  %.val44.i.i = load ptr, ptr %i.pj, align 8, !tbaa !303, !noalias !284 ; 2 uses
  %.not6785.i.i = icmp eq ptr %.val43.i.i, %.val44.i.i
  br i1 %.not6785.i.i, label %.loopexit70.i.i, label %.lr.ph87.i.i

.lr.ph87.i.i:                                     ; preds = %.lr.ph89.i.i, %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i
  %.sroa.058.086.i.i = phi ptr [ %i.wh, %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i ], [ %.val43.i.i, %.lr.ph89.i.i ] ; 4 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.058.086.i.i, i64 16
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !314, !noalias !284 ; 9 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 56 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !108, !noalias !284
  %.not36.i32.i = icmp eq ptr %i.pn, null
  br i1 %.not36.i32.i, label %bb.bh, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i

bb.bh:                                            ; preds = %.lr.ph87.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !105, !noalias !284
  %.not37.i35.i = icmp eq ptr %i.pp, null
  br i1 %.not37.i35.i, label %bb.bi, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i

bb.bi:                                            ; preds = %bb.bh
  %.val48.i.i = load ptr, ptr %.sroa.058.086.i.i, align 8, !tbaa !315, !noalias !284 ; 2 uses
  %i.pq = getelementptr i8, ptr %.sroa.058.086.i.i, i64 8
  %.val50.i.i = load i64, ptr %i.pq, align 8, !tbaa !316, !noalias !284 ; 2 uses
  %.idx.i36.i = shl nuw nsw i64 %.val50.i.i, 3
  %i.pr = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 %.idx.i36.i
  %.not3883.i.i = icmp eq i64 %.val50.i.i, 0
  br i1 %.not3883.i.i, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %bb.bi
  %i.ps = ptrtoint ptr %i.pl to i64
  %i.pt = trunc i64 %i.ps to i32                  ; 2 uses
  %i.pu = lshr i32 %i.pt, 4
  %i.pv = lshr i32 %i.pt, 9
  %i.pw = xor i32 %i.pu, %i.pv
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge.i39.i, %.lr.ph.i37.i
  %.03184.i.i = phi ptr [ %.val48.i.i, %.lr.ph.i37.i ], [ %i.wg, %.critedge.i39.i ] ; 2 uses
  %i.px = load ptr, ptr %.03184.i.i, align 8, !tbaa !98, !noalias !284 ; 8 uses
  %i.py = icmp eq ptr %i.px, %i.pl
  br i1 %i.py, label %.critedge.i39.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 32
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !105, !noalias !284
  %.not.i.i38.i = icmp eq ptr %i.qa, null
  br i1 %.not.i.i38.i, label %bb.bl, label %.critedge.i39.i

bb.bl:                                            ; preds = %bb.bk
  %i.qb = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !109, !noalias !284
  %.not12.i.i.i = icmp eq ptr %i.qc, null
  br i1 %.not12.i.i.i, label %bb.bm, label %.critedge.i39.i

bb.bm:                                            ; preds = %bb.bl
  %i.qd = getelementptr inbounds nuw i8, ptr %i.px, i64 72
  %.val.i.i.i = load ptr, ptr %i.qd, align 8, !tbaa !110, !noalias !284 ; 2 uses
  %i.qe = getelementptr i8, ptr %i.px, i64 88
  %.val15.i.i.i = load i32, ptr %i.qe, align 8, !tbaa !111, !noalias !284 ; 2 uses
  %i.qf = icmp eq i32 %.val15.i.i.i, 0
  br i1 %i.qf, label %.loopexit.i41.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qg = add i32 %.val15.i.i.i, -1               ; 2 uses
  %.02710.i.i.i.i.i = and i32 %i.qg, %i.pw        ; 2 uses
  %i.qh = zext nneg i32 %.02710.i.i.i.i.i to i64
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.qh
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !98, !noalias !284 ; 2 uses
  %i.qk = icmp eq ptr %i.pl, %i.qj
  br i1 %i.qk, label %.critedge.i39.i, label %.lr.ph.i.i.i.i40.i, !prof !86

.lr.ph.i.i.i.i40.i:                               ; preds = %bb.bn, %bb.bo
  %i.ql = phi ptr [ %i.qr, %bb.bo ], [ %i.qj, %bb.bn ]
  %.02713.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i, %bb.bo ], [ %.02710.i.i.i.i.i, %bb.bn ]
  %.012.i.i.i.i.i = phi i32 [ %i.qn, %bb.bo ], [ 1, %bb.bn ] ; 2 uses
  %i.qm = icmp eq ptr %i.ql, inttoptr (i64 -8 to ptr)
  br i1 %i.qm, label %.loopexit.i41.i, label %bb.bo, !prof !60

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i40.i
  %i.qn = add i32 %.012.i.i.i.i.i, 1
  %i.qo = add i32 %.012.i.i.i.i.i, %.02713.i.i.i.i.i
  %.027.i.i.i.i.i = and i32 %i.qo, %i.qg          ; 2 uses
  %i.qp = zext i32 %.027.i.i.i.i.i to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.qp
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !98, !noalias !284 ; 2 uses
  %i.qs = icmp eq ptr %i.pl, %i.qr
  br i1 %i.qs, label %.critedge.i39.i, label %.lr.ph.i.i.i.i40.i, !prof !87, !llvm.loop !216

.loopexit.i41.i:                                  ; preds = %bb.bm, %.lr.ph.i.i.i.i40.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.px, i64 48
  store ptr %i.pl, ptr %i.qt, align 8, !tbaa !109, !noalias !284
  store ptr %i.px, ptr %i.pm, align 8, !tbaa !108, !noalias !284
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pl, i64 64
  store i64 %i.ph, ptr %i.qu, align 8, !tbaa !112, !noalias !284
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.loopexit.i41.i
  %.0.i.i = phi ptr [ %i.pl, %.loopexit.i41.i ], [ %i.qw, %bb.bp ] ; 8 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !109, !noalias !284 ; 2 uses
  %.not39.i.i = icmp eq ptr %i.qw, null
  br i1 %.not39.i.i, label %.preheader.i.i, label %bb.bp, !llvm.loop !217

.preheader.i.i:                                   ; preds = %bb.bp, %.preheader.i.i
  %storemerge.i.i = phi ptr [ %i.qy, %.preheader.i.i ], [ %i.px, %bb.bp ] ; 8 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 56
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !108, !noalias !284 ; 2 uses
  %.not40.i.i = icmp eq ptr %i.qy, null
  br i1 %.not40.i.i, label %bb.bq, label %.preheader.i.i, !llvm.loop !218

bb.bq:                                            ; preds = %.preheader.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 72 ; 3 uses
  %.val7.i.i.i.i = load ptr, ptr %i.qz, align 8, !tbaa !110, !noalias !317 ; 6 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 88 ; 5 uses
  %.val8.i.i.i.i = load i32, ptr %i.ra, align 8, !tbaa !111, !noalias !317 ; 8 uses
  %i.rb = icmp eq i32 %.val8.i.i.i.i, 0           ; 2 uses
  br i1 %i.rb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rc = ptrtoint ptr %storemerge.i.i to i64
  %i.rd = trunc i64 %i.rc to i32                  ; 2 uses
  %i.re = lshr i32 %i.rd, 4
  %i.rf = lshr i32 %i.rd, 9
  %i.rg = xor i32 %i.re, %i.rf
  %i.rh = add i32 %.val8.i.i.i.i, -1              ; 2 uses
  %.02710.i.i.i.i.i.i = and i32 %i.rh, %i.rg      ; 2 uses
  %i.ri = zext nneg i32 %.02710.i.i.i.i.i.i to i64
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %.val7.i.i.i.i, i64 %i.ri ; 2 uses
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !98, !noalias !317 ; 2 uses
  %i.rl = icmp eq ptr %storemerge.i.i, %i.rk
  br i1 %i.rl, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !86

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.br, %bb.bt
  %i.rm = phi ptr [ %i.rw, %bb.bt ], [ %i.rk, %bb.br ] ; 2 uses
  %i.rn = phi ptr [ %i.rv, %bb.bt ], [ %i.rj, %bb.br ] ; 2 uses
  %.02713.i.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i.i, %bb.bt ], [ %.02710.i.i.i.i.i.i, %bb.br ]
  %.012.i.i.i.i.i.i = phi i32 [ %i.rs, %bb.bt ], [ 1, %bb.br ] ; 2 uses
  %.02911.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %bb.bt ], [ null, %bb.br ] ; 4 uses
  %i.ro = icmp eq ptr %i.rm, inttoptr (i64 -8 to ptr)
  br i1 %i.ro, label %bb.bs, label %bb.bt, !prof !60

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i42.i = icmp eq ptr %.02911.i.i.i.i.i.i, null
  %i.rp = select i1 %.not.i.i.i.i.i42.i, ptr %i.rn, ptr %.02911.i.i.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.rq = icmp eq ptr %i.rm, inttoptr (i64 -16 to ptr)
  %i.rr = icmp eq ptr %.02911.i.i.i.i.i.i, null
  %or.cond.not.i.i.i.i.i.i = select i1 %i.rq, i1 %i.rr, i1 false
  %spec.select.i.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i.i, ptr %i.rn, ptr %.02911.i.i.i.i.i.i
  %i.rs = add i32 %.012.i.i.i.i.i.i, 1
  %i.rt = add i32 %.012.i.i.i.i.i.i, %.02713.i.i.i.i.i.i
  %.027.i.i.i.i.i.i = and i32 %i.rt, %i.rh        ; 2 uses
  %i.ru = zext i32 %.027.i.i.i.i.i.i to i64
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %.val7.i.i.i.i, i64 %i.ru ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !98, !noalias !317 ; 2 uses
  %i.rx = icmp eq ptr %storemerge.i.i, %i.rw
  br i1 %i.rx, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !87, !llvm.loop !216

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i: ; preds = %bb.bs, %bb.bq
  %.sink.i.i.i.i.i.i = phi ptr [ %i.rp, %bb.bs ], [ null, %bb.bq ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 80 ; 6 uses
  %.val12.i.i.i.i.i.i = load i32, ptr %i.ry, align 8, !tbaa !318, !noalias !317 ; 3 uses
  %i.rz = shl i32 %.val12.i.i.i.i.i.i, 2
  %i.sa = add i32 %i.rz, 4
  %i.sb = mul i32 %.val8.i.i.i.i, 3
  %.not.i.i12.i.i.i.i = icmp ult i32 %i.sa, %i.sb
  br i1 %.not.i.i12.i.i.i.i, label %bb.bv, label %bb.bu, !prof !60

bb.bu:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i
  %i.sc = shl i32 %.val8.i.i.i.i, 1
  br label %.sink.split.i.i.i.i.i43.i

bb.bv:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i
  %i.sd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 84
  %.val13.i.i.i.i.i.i = load i32, ptr %i.sd, align 4, !tbaa !319, !noalias !317
  %.neg.i.i.i.i.i56.i = xor i32 %.val12.i.i.i.i.i.i, -1
  %.neg1.i.i.i.i.i57.i = add i32 %.val8.i.i.i.i, %.neg.i.i.i.i.i56.i
  %i.se = sub i32 %.neg1.i.i.i.i.i57.i, %.val13.i.i.i.i.i.i
  %i.sf = lshr i32 %.val8.i.i.i.i, 3
  %.not10.i.i.i.i.i.i = icmp ugt i32 %i.se, %i.sf
  br i1 %.not10.i.i.i.i.i.i, label %bb.cf, label %.sink.split.i.i.i.i.i43.i, !prof !60

.sink.split.i.i.i.i.i43.i:                        ; preds = %bb.bv, %bb.bu
  %.val11.sink.i.i.i.i.i.i = phi i32 [ %i.sc, %bb.bu ], [ %.val8.i.i.i.i, %bb.bv ]
  %i.sg = add i32 %.val11.sink.i.i.i.i.i.i, -1
  %i.sh = zext i32 %i.sg to i64                   ; 2 uses
  %i.si = lshr i64 %i.sh, 1
  %i.sj = or i64 %i.si, %i.sh                     ; 2 uses
  %i.sk = lshr i64 %i.sj, 2
  %i.sl = or i64 %i.sk, %i.sj                     ; 2 uses
  %i.sm = lshr i64 %i.sl, 4
  %i.sn = or i64 %i.sm, %i.sl                     ; 2 uses
  %i.so = lshr i64 %i.sn, 8
  %i.sp = or i64 %i.so, %i.sn                     ; 2 uses
  %i.sq = lshr i64 %i.sp, 16
  %i.sr = or i64 %i.sq, %i.sp
  %i.ss = trunc nuw i64 %i.sr to i32
  %i.st = add i32 %i.ss, 1
  %.sroa.speculated.i.i.i44.i = call i32 @llvm.umax.i32(i32 %i.st, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i.i44.i, ptr %i.ra, align 8, !tbaa !111, !noalias !317
  %i.su = zext i32 %.sroa.speculated.i.i.i44.i to i64
  %i.sv = shl nuw nsw i64 %i.su, 3
  %i.sw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sv) #19, !noalias !317 ; 11 uses
  store ptr %i.sw, ptr %i.qz, align 8, !tbaa !110, !noalias !317
  %.not.i.i53.i.i = icmp eq ptr %.val7.i.i.i.i, null
  br i1 %.not.i.i53.i.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.sink.split.i.i.i.i.i43.i
  store i32 0, ptr %i.ry, align 8, !tbaa !318, !noalias !317
  %i.sx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 84
  store i32 0, ptr %i.sx, align 4, !tbaa !319, !noalias !317
  %.val7.i.i.i.i.i = load i32, ptr %i.ra, align 8, !tbaa !111, !noalias !317 ; 4 uses
  %i.sy = zext i32 %.val7.i.i.i.i.i to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.sy, 3      ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.idx.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %.val7.i.i.i.i.i, 0
  br i1 %.not8.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, label %.lr.ph.i.i.i56.i.i.preheader

.lr.ph.i.i.i56.i.i.preheader:                     ; preds = %bb.bw
  %i.ta = add nsw i64 %.idx.i.i.i.i.i, -8         ; 2 uses
  %i.tb = lshr exact i64 %i.ta, 3
  %i.tc = add nuw nsw i64 %i.tb, 1
  %xtraiter1126 = and i64 %i.tc, 7                ; 2 uses
  %lcmp.mod1127.not = icmp eq i64 %xtraiter1126, 0
  br i1 %lcmp.mod1127.not, label %.lr.ph.i.i.i56.i.i.prol.loopexit, label %.lr.ph.i.i.i56.i.i.prol

.lr.ph.i.i.i56.i.i.prol:                          ; preds = %.lr.ph.i.i.i56.i.i.preheader, %.lr.ph.i.i.i56.i.i.prol
  %.09.i.i.i.i.i.prol = phi ptr [ %i.td, %.lr.ph.i.i.i56.i.i.prol ], [ %i.sw, %.lr.ph.i.i.i56.i.i.preheader ] ; 2 uses
  %prol.iter1128 = phi i64 [ %prol.iter1128.next, %.lr.ph.i.i.i56.i.i.prol ], [ 0, %.lr.ph.i.i.i56.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.i.i.prol, align 8, !tbaa !98, !noalias !317
  %i.td = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter1128.next = add i64 %prol.iter1128, 1 ; 2 uses
  %prol.iter1128.cmp.not = icmp eq i64 %prol.iter1128.next, %xtraiter1126
  br i1 %prol.iter1128.cmp.not, label %.lr.ph.i.i.i56.i.i.prol.loopexit, label %.lr.ph.i.i.i56.i.i.prol, !llvm.loop !223

.lr.ph.i.i.i56.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i56.i.i.prol, %.lr.ph.i.i.i56.i.i.preheader
  %.09.i.i.i.i.i.unr = phi ptr [ %i.sw, %.lr.ph.i.i.i56.i.i.preheader ], [ %i.td, %.lr.ph.i.i.i56.i.i.prol ]
  %i.te = icmp ult i64 %i.ta, 56
  br i1 %i.te, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i, label %.lr.ph.i.i.i56.i.i

.lr.ph.i.i.i56.i.i:                               ; preds = %.lr.ph.i.i.i56.i.i.prol.loopexit, %.lr.ph.i.i.i56.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.tm, %.lr.ph.i.i.i56.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i56.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.i.i, align 8, !tbaa !98, !noalias !317
  %i.tf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.tf, align 8, !tbaa !98, !noalias !317
  %i.tg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.tg, align 8, !tbaa !98, !noalias !317
  %i.th = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.th, align 8, !tbaa !98, !noalias !317
  %i.ti = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ti, align 8, !tbaa !98, !noalias !317
  %i.tj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.tj, align 8, !tbaa !98, !noalias !317
  %i.tk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.tk, align 8, !tbaa !98, !noalias !317
  %i.tl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.tl, align 8, !tbaa !98, !noalias !317
  %i.tm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i55.i.7 = icmp eq ptr %i.tm, %i.sz
  br i1 %.not.i.i.i.i55.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i, label %.lr.ph.i.i.i56.i.i, !llvm.loop !224

bb.bx:                                            ; preds = %.sink.split.i.i.i.i.i43.i
  %i.tn = zext i32 %.val8.i.i.i.i to i64
  %.idx.i.i.i45.i = shl nuw nsw i64 %i.tn, 3
  %i.to = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i, i64 %.idx.i.i.i45.i
  store i32 0, ptr %i.ry, align 8, !tbaa !318, !noalias !317
  %i.tp = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 84
  store i32 0, ptr %i.tp, align 4, !tbaa !319, !noalias !317
  %.val7.i.i.i.i.i.i = load i32, ptr %i.ra, align 8, !tbaa !111, !noalias !317 ; 3 uses
  %i.tq = zext i32 %.val7.i.i.i.i.i.i to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.tq, 3    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.sw, i64 %.idx.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i = icmp ne i32 %.val7.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i, label %.lr.ph.i.i.i.i54.i.i.preheader, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i

.lr.ph.i.i.i.i54.i.i.preheader:                   ; preds = %bb.bx
  %i.ts = add nsw i64 %.idx.i.i.i.i.i.i, -8       ; 2 uses
  %i.tt = lshr exact i64 %i.ts, 3
  %i.tu = add nuw nsw i64 %i.tt, 1
  %xtraiter1123 = and i64 %i.tu, 7                ; 2 uses
  %lcmp.mod1124.not = icmp eq i64 %xtraiter1123, 0
  br i1 %lcmp.mod1124.not, label %.lr.ph.i.i.i.i54.i.i.prol.loopexit, label %.lr.ph.i.i.i.i54.i.i.prol

.lr.ph.i.i.i.i54.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i54.i.i.preheader, %.lr.ph.i.i.i.i54.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.tv, %.lr.ph.i.i.i.i54.i.i.prol ], [ %i.sw, %.lr.ph.i.i.i.i54.i.i.preheader ] ; 2 uses
  %prol.iter1125 = phi i64 [ %prol.iter1125.next, %.lr.ph.i.i.i.i54.i.i.prol ], [ 0, %.lr.ph.i.i.i.i54.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !98, !noalias !317
  %i.tv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter1125.next = add i64 %prol.iter1125, 1 ; 2 uses
  %prol.iter1125.cmp.not = icmp eq i64 %prol.iter1125.next, %xtraiter1123
  br i1 %prol.iter1125.cmp.not, label %.lr.ph.i.i.i.i54.i.i.prol.loopexit, label %.lr.ph.i.i.i.i54.i.i.prol, !llvm.loop !225

.lr.ph.i.i.i.i54.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i54.i.i.prol, %.lr.ph.i.i.i.i54.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.sw, %.lr.ph.i.i.i.i54.i.i.preheader ], [ %i.tv, %.lr.ph.i.i.i.i54.i.i.prol ]
  %i.tw = icmp ult i64 %i.ts, 56
  br i1 %i.tw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i54.i.i

.lr.ph.i.i.i.i54.i.i:                             ; preds = %.lr.ph.i.i.i.i54.i.i.prol.loopexit, %.lr.ph.i.i.i.i54.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ue, %.lr.ph.i.i.i.i54.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i54.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.i.i.i, align 8, !tbaa !98, !noalias !317
  %i.tx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.tx, align 8, !tbaa !98, !noalias !317
  %i.ty = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ty, align 8, !tbaa !98, !noalias !317
  %i.tz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.tz, align 8, !tbaa !98, !noalias !317
  %i.ua = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ua, align 8, !tbaa !98, !noalias !317
  %i.ub = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ub, align 8, !tbaa !98, !noalias !317
  %i.uc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.uc, align 8, !tbaa !98, !noalias !317
  %i.ud = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ud, align 8, !tbaa !98, !noalias !317
  %i.ue = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i55.i.i.7 = icmp eq ptr %i.ue, %i.tr
  br i1 %.not.i.i.i.i55.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i54.i.i, !llvm.loop !224

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i54.i.i.prol.loopexit, %.lr.ph.i.i.i.i54.i.i, %bb.bx
  br i1 %i.rb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i, label %.lr.ph.i6.i.i.i46.i

.lr.ph.i6.i.i.i46.i:                              ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i
  %i.uf = add i32 %.val7.i.i.i.i.i.i, -1          ; 2 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.cc, %.lr.ph.i6.i.i.i46.i
  %.val.i17.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i6.i.i.i46.i ], [ %.val.i1728.i.i.i.i.i, %bb.cc ] ; 3 uses
  %.023.i.i.i.i.i = phi ptr [ %.val7.i.i.i.i, %.lr.ph.i6.i.i.i46.i ], [ %i.vc, %bb.cc ] ; 2 uses
  %i.ug = load ptr, ptr %.023.i.i.i.i.i, align 8, !tbaa !98, !noalias !317 ; 4 uses
  %magicptr.i.i.i.i.i = ptrtoint ptr %i.ug to i64 ; 2 uses
  switch i64 %magicptr.i.i.i.i.i, label %bb.bz [
    i64 -8, label %bb.cc
    i64 -16, label %bb.cc
  ]

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 %.not8.i.i.i.i.i.i), !noalias !320
  %i.uh = trunc i64 %magicptr.i.i.i.i.i to i32    ; 2 uses
  %i.ui = lshr i32 %i.uh, 4
  %i.uj = lshr i32 %i.uh, 9
  %i.uk = xor i32 %i.ui, %i.uj
  %.02710.i.i.i.i.i.i.i = and i32 %i.uk, %i.uf    ; 2 uses
  %i.ul = zext nneg i32 %.02710.i.i.i.i.i.i.i to i64
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.ul ; 3 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !98, !noalias !317 ; 2 uses
  %i.uo = icmp eq ptr %i.ug, %i.un
  br i1 %i.uo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i53.i, !prof !86

.lr.ph.i.i.i.i.i.i53.i:                           ; preds = %bb.bz, %bb.cb
  %i.up = phi ptr [ %i.uz, %bb.cb ], [ %i.un, %bb.bz ] ; 2 uses
  %i.uq = phi ptr [ %i.uy, %bb.cb ], [ %i.um, %bb.bz ] ; 2 uses
  %.02713.i.i.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i.i.i, %bb.cb ], [ %.02710.i.i.i.i.i.i.i, %bb.bz ]
  %.012.i.i.i.i.i.i.i = phi i32 [ %i.uv, %bb.cb ], [ 1, %bb.bz ] ; 2 uses
  %.02911.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %bb.cb ], [ null, %bb.bz ] ; 4 uses
  %i.ur = icmp eq ptr %i.up, inttoptr (i64 -8 to ptr)
  br i1 %i.ur, label %bb.ca, label %bb.cb, !prof !60

bb.ca:                                            ; preds = %.lr.ph.i.i.i.i.i.i53.i
  %.not.i.i.i.i.i.i54.i = icmp eq ptr %.02911.i.i.i.i.i.i.i, null
  %i.us = select i1 %.not.i.i.i.i.i.i54.i, ptr %i.uq, ptr %.02911.i.i.i.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i

bb.cb:                                            ; preds = %.lr.ph.i.i.i.i.i.i53.i
  %i.ut = icmp eq ptr %i.up, inttoptr (i64 -16 to ptr)
  %i.uu = icmp eq ptr %.02911.i.i.i.i.i.i.i, null
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.ut, i1 %i.uu, i1 false
  %spec.select.i.i.i.i.i.i.i = select i1 %or.cond.not.i.i.i.i.i.i.i, ptr %i.uq, ptr %.02911.i.i.i.i.i.i.i
  %i.uv = add i32 %.012.i.i.i.i.i.i.i, 1
  %i.uw = add i32 %.012.i.i.i.i.i.i.i, %.02713.i.i.i.i.i.i.i
  %.027.i.i.i.i.i.i.i = and i32 %i.uw, %i.uf      ; 2 uses
  %i.ux = zext i32 %.027.i.i.i.i.i.i.i to i64
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.ux ; 3 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !98, !noalias !317 ; 2 uses
  %i.va = icmp eq ptr %i.ug, %i.uz
  br i1 %i.va, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i53.i, !prof !87, !llvm.loop !216

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i: ; preds = %bb.cb, %bb.ca, %bb.bz
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.us, %bb.ca ], [ %i.um, %bb.bz ], [ %i.uy, %bb.cb ]
  store ptr %i.ug, ptr %.sink.i.i.i.i.i.i.i, align 8, !tbaa !98, !noalias !317
  %i.vb = add i32 %.val.i17.i.i.i.i.i, 1          ; 2 uses
  store i32 %i.vb, ptr %i.ry, align 8, !tbaa !318, !noalias !317
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i, %bb.by, %bb.by
  %.val.i1728.i.i.i.i.i = phi i32 [ %.val.i17.i.i.i.i.i, %bb.by ], [ %.val.i17.i.i.i.i.i, %bb.by ], [ %i.vb, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i ]
  %i.vc = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i7.i.i.i.i = icmp eq ptr %i.vc, %i.to
  br i1 %.not.i7.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i, label %bb.by, !llvm.loop !226

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i: ; preds = %bb.cc, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.val7.i.i.i.i) #15, !noalias !317
  %.val15.i.i.i.i.pr.pre.i.i = load i32, ptr %i.ra, align 8, !tbaa !111, !noalias !317 ; 2 uses
  %.val14.i.i.i.i.pre.i.i = load ptr, ptr %i.qz, align 8, !tbaa !110, !noalias !317
  %i.vd = icmp eq i32 %.val15.i.i.i.i.pr.pre.i.i, 0
  br i1 %i.vd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i: ; preds = %.lr.ph.i.i.i56.i.i.prol.loopexit, %.lr.ph.i.i.i56.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i
  %.val15.i.i.i.i.pr129.i.i = phi i32 [ %.val15.i.i.i.i.pr.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i ], [ %.val7.i.i.i.i.i, %.lr.ph.i.i.i56.i.i ], [ %.val7.i.i.i.i.i, %.lr.ph.i.i.i56.i.i.prol.loopexit ]
  %.val14.i.i.i.i128.i.i = phi ptr [ %.val14.i.i.i.i.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i ], [ %i.sw, %.lr.ph.i.i.i56.i.i ], [ %i.sw, %.lr.ph.i.i.i56.i.i.prol.loopexit ] ; 2 uses
  %i.ve = ptrtoint ptr %storemerge.i.i to i64
  %i.vf = trunc i64 %i.ve to i32                  ; 2 uses
  %i.vg = lshr i32 %i.vf, 4
  %i.vh = lshr i32 %i.vf, 9
  %i.vi = xor i32 %i.vg, %i.vh
  %i.vj = add i32 %.val15.i.i.i.i.pr129.i.i, -1   ; 2 uses
  %.02710.i.i.i.i = and i32 %i.vj, %i.vi          ; 2 uses
  %i.vk = zext nneg i32 %.02710.i.i.i.i to i64
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i128.i.i, i64 %i.vk ; 3 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !98, !noalias !317 ; 2 uses
  %i.vn = icmp eq ptr %storemerge.i.i, %i.vm
  br i1 %i.vn, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, label %.lr.ph.i.i.i47.i, !prof !86

.lr.ph.i.i.i47.i:                                 ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i, %bb.ce
  %i.vo = phi ptr [ %i.vy, %bb.ce ], [ %i.vm, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ] ; 2 uses
  %i.vp = phi ptr [ %i.vx, %bb.ce ], [ %i.vl, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ] ; 2 uses
  %.02713.i.i.i.i = phi i32 [ %.027.i.i.i50.i, %bb.ce ], [ %.02710.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ]
  %.012.i.i.i.i = phi i32 [ %i.vu, %bb.ce ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ] ; 2 uses
  %.02911.i.i.i.i = phi ptr [ %spec.select.i.i.i49.i, %bb.ce ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ] ; 4 uses
  %i.vq = icmp eq ptr %i.vo, inttoptr (i64 -8 to ptr)
  br i1 %i.vq, label %bb.cd, label %bb.ce, !prof !60

bb.cd:                                            ; preds = %.lr.ph.i.i.i47.i
  %.not.i.i.i52.i = icmp eq ptr %.02911.i.i.i.i, null
  %i.vr = select i1 %.not.i.i.i52.i, ptr %i.vp, ptr %.02911.i.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i

bb.ce:                                            ; preds = %.lr.ph.i.i.i47.i
  %i.vs = icmp eq ptr %i.vo, inttoptr (i64 -16 to ptr)
  %i.vt = icmp eq ptr %.02911.i.i.i.i, null
  %or.cond.not.i.i.i48.i = select i1 %i.vs, i1 %i.vt, i1 false
  %spec.select.i.i.i49.i = select i1 %or.cond.not.i.i.i48.i, ptr %i.vp, ptr %.02911.i.i.i.i
  %i.vu = add i32 %.012.i.i.i.i, 1
  %i.vv = add i32 %.012.i.i.i.i, %.02713.i.i.i.i
  %.027.i.i.i50.i = and i32 %i.vv, %i.vj          ; 2 uses
  %i.vw = zext i32 %.027.i.i.i50.i to i64
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i128.i.i, i64 %i.vw ; 3 uses
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !98, !noalias !317 ; 2 uses
  %i.vz = icmp eq ptr %storemerge.i.i, %i.vy
  br i1 %i.vz, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, label %.lr.ph.i.i.i47.i, !prof !87, !llvm.loop !216

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i: ; preds = %bb.ce, %bb.cd, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i, %bb.bw
  %.sink.i.i52.i.i = phi ptr [ %i.vr, %bb.cd ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i ], [ %i.vl, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ], [ null, %bb.bw ], [ %i.vx, %bb.ce ]
  %.val.i.i.pre.i.i.i.i.i = load i32, ptr %i.ry, align 8, !tbaa !318, !noalias !317
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, %bb.bv
  %i.wa = phi ptr [ %.sink.i.i52.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i ], [ %.sink.i.i.i.i.i.i, %bb.bv ] ; 2 uses
  %.val.i.i.i.i.i.i51.i = phi i32 [ %.val.i.i.pre.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i ], [ %.val12.i.i.i.i.i.i, %bb.bv ]
  %i.wb = add i32 %.val.i.i.i.i.i.i51.i, 1
  store i32 %i.wb, ptr %i.ry, align 8, !tbaa !318, !noalias !317
  %i.wc = load ptr, ptr %i.wa, align 8, !tbaa !98, !noalias !317
  %i.wd = icmp eq ptr %i.wc, inttoptr (i64 -8 to ptr)
  br i1 %i.wd, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E16InsertIntoBucketIRKS7_JRS9_EEEPSD_SK_OT_DpOT0_.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.we = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 84 ; 2 uses
  %.val.i20.i.i.i.i.i.i = load i32, ptr %i.we, align 4, !tbaa !319, !noalias !317
  %i.wf = add i32 %.val.i20.i.i.i.i.i.i, -1
  store i32 %i.wf, ptr %i.we, align 4, !tbaa !319, !noalias !317
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E16InsertIntoBucketIRKS7_JRS9_EEEPSD_SK_OT_DpOT0_.exit.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E16InsertIntoBucketIRKS7_JRS9_EEEPSD_SK_OT_DpOT0_.exit.i.i.i.i: ; preds = %bb.cg, %bb.cf
  store ptr %storemerge.i.i, ptr %i.wa, align 8, !tbaa !98, !noalias !317
  br label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i

.critedge.i39.i:                                  ; preds = %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bj
  %i.wg = getelementptr inbounds nuw i8, ptr %.03184.i.i, i64 8 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.wg, %i.pr
  br i1 %.not38.i.i, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, label %bb.bj

_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i: ; preds = %.critedge.i39.i, %bb.bt, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E16InsertIntoBucketIRKS7_JRS9_EEEPSD_SK_OT_DpOT0_.exit.i.i.i.i, %bb.br, %bb.bi, %bb.bh, %.lr.ph87.i.i
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.058.086.i.i, i64 24 ; 2 uses
  %.not67.i.i = icmp eq ptr %i.wh, %.val44.i.i
  br i1 %.not67.i.i, label %.loopexit70.i.i, label %.lr.ph87.i.i

_ZN12_GLOBAL__N_112StringPackerIhE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i: ; preds = %.loopexit70.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i
  %.sroa.9.5113.i = phi ptr [ %.sroa.074.2.i, %_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i ], [ %.sroa.9.2.i, %.loopexit70.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !284
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %_ZN12_GLOBAL__N_112StringPackerIhE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i
  %.0171.i = phi ptr [ %i.wi, %.lr.ph.i ], [ %.val7, %_ZN12_GLOBAL__N_112StringPackerIhE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i ] ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_112StringPackerIhE14layoutIfNeededEPNS1_11StringEntryEPSt6vectorIhSaIhEE(ptr noundef %.0171.i, ptr noundef nonnull align 8 %14)
  %i.wi = getelementptr inbounds nuw i8, ptr %.0171.i, i64 96 ; 2 uses
  %.not.i = icmp eq ptr %i.wi, %.val8
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %.not88.i.i, label %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i58.i

.lr.ph.i.i.i58.i:                                 ; preds = %._crit_edge.i, %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i
  %.06.i.i.i59.i = phi ptr [ %i.wn, %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i ], [ %.sroa.074.2.i, %._crit_edge.i ] ; 3 uses
  %.0.val.i.i.i.i = load ptr, ptr %.06.i.i.i59.i, align 8, !tbaa !309 ; 3 uses
  %.not.i.i.i.i.i.i.i60.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i60.i, label %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i.i.i58.i
  %i.wj = getelementptr i8, ptr %.06.i.i.i59.i, i64 16
  %.0.val4.i.i.i.i = load ptr, ptr %i.wj, align 8, !tbaa !307
  %i.wk = ptrtoint ptr %.0.val4.i.i.i.i to i64
  %i.wl = ptrtoint ptr %.0.val.i.i.i.i to i64
  %i.wm = sub i64 %i.wk, %i.wl
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i.i, i64 noundef %i.wm) #18
  br label %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i: ; preds = %bb.ch, %.lr.ph.i.i.i58.i
  %i.wn = getelementptr inbounds nuw i8, ptr %.06.i.i.i59.i, i64 24 ; 2 uses
  %.not.i.i.i61.i = icmp eq ptr %i.wn, %.sroa.9.5113.i
  br i1 %.not.i.i.i61.i, label %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i58.i, !llvm.loop !227

_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i, %._crit_edge.i
  %.not.i.i2.i.i = icmp eq ptr %.sroa.074.2.i, null
  br i1 %.not.i.i2.i.i, label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvT_S8_.exit.i.i
  %i.wo = ptrtoint ptr %.sroa.14.2.i to i64
  %i.wp = ptrtoint ptr %.sroa.074.2.i to i64
  %i.wq = sub i64 %i.wo, %i.wp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.2.i, i64 noundef %i.wq) #18
  br label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i

_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i: ; preds = %bb.ci, %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvT_S8_.exit.i.i
  %.not5.i.i.i63.i = icmp eq ptr %.sroa.075.3.i, %.sroa.11.3.i
  br i1 %.not5.i.i.i63.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i64.i

.lr.ph.i.i.i64.i:                                 ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i
  %.06.i.i.i65.i = phi ptr [ %i.ww, %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i ], [ %.sroa.075.3.i, %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.wr = getelementptr i8, ptr %.06.i.i.i65.i, i64 16
  %.0.val.i.i.i66.i = load ptr, ptr %i.wr, align 8, !tbaa !293 ; 3 uses
  %.not.i.i.i.i.i.i.i.i67.i = icmp eq ptr %.0.val.i.i.i66.i, null
  br i1 %.not.i.i.i.i.i.i.i.i67.i, label %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i64.i
  %i.ws = getelementptr i8, ptr %.06.i.i.i65.i, i64 32
  %.0.val4.i.i.i68.i = load ptr, ptr %i.ws, align 8, !tbaa !97
  %i.wt = ptrtoint ptr %.0.val4.i.i.i68.i to i64
  %i.wu = ptrtoint ptr %.0.val.i.i.i66.i to i64
  %i.wv = sub i64 %i.wt, %i.wu
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i66.i, i64 noundef %i.wv) #18
  br label %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i: ; preds = %bb.cj, %.lr.ph.i.i.i64.i
  %i.ww = getelementptr inbounds nuw i8, ptr %.06.i.i.i65.i, i64 40 ; 2 uses
  %.not.i.i.i69.i = icmp eq ptr %i.ww, %.sroa.11.3.i
  br i1 %.not.i.i.i69.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i64.i, !llvm.loop !228

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i, %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i
  %.not.i.i2.i72.i = icmp eq ptr %.sroa.075.3.i, null
  br i1 %.not.i.i2.i72.i, label %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i
  %i.wx = sub i64 %.sroa.17.3.i, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.3.i, i64 noundef %i.wx) #18
  br label %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i, %bb.ck
  %i.wy = load ptr, ptr %13, align 8, !tbaa !81, !noalias !284
  call void @_ZdlPv(ptr noundef %i.wy) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !284
  %i.wz = load ptr, ptr %1, align 8, !tbaa !113   ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !73
  %i.xc = load <2 x ptr>, ptr %14, align 16, !tbaa !58
  store <2 x ptr> %i.xc, ptr %1, align 8, !tbaa !58
  %i.xd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.xe = load ptr, ptr %i.xd, align 16, !tbaa !73
  store ptr %i.xe, ptr %i.xa, align 8, !tbaa !73
  %.not.i.i.i.i.i13 = icmp eq ptr %i.wz, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit

_ZNSt6vectorIhSaIhEEaSEOS1_.exit:                 ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit
  %i.xf = ptrtoint ptr %i.xb to i64
  %i.xg = ptrtoint ptr %i.wz to i64
  %i.xh = sub i64 %i.xf, %i.xg
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef %i.xh) #18
  %.pr = load ptr, ptr %14, align 16, !tbaa !113  ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit
  %i.xi = load ptr, ptr %i.xd, align 16, !tbaa !73
  %i.xj = ptrtoint ptr %i.xi to i64
  %i.xk = ptrtoint ptr %.pr to i64
  %i.xl = sub i64 %i.xj, %i.xk
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.xl) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, %_ZNSt6vectorIhSaIhEEaSEOS1_.exit, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val11 = load ptr, ptr %i.xm, align 8, !tbaa !116 ; 6 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val12 = load ptr, ptr %i.xn, align 8, !tbaa !117 ; 6 uses
  %i.xo = ptrtoint ptr %.val12 to i64
  %i.xp = ptrtoint ptr %.val11 to i64
  %i.xq = sub i64 %i.xo, %i.xp
  %i.xr = sdiv exact i64 %i.xq, 96                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !321
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.xs = lshr i64 %i.xr, 3
  %i.xt = trunc i64 %i.xs to i32                  ; 2 uses
  %i.xu = icmp eq i32 %i.xt, 0
  br i1 %i.xu, label %bb.cm, label %.lr.ph.preheader.i.i.i.i.i.i.i16

.lr.ph.preheader.i.i.i.i.i.i.i16:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.xv = shl i32 %i.xt, 2
  %i.xw = udiv i32 %i.xv, 3
  %i.xx = add nuw nsw i32 %i.xw, 1
  %i.xy = zext nneg i32 %i.xx to i64              ; 2 uses
  %i.xz = lshr i64 %i.xy, 1
  %i.ya = or i64 %i.xz, %i.xy                     ; 2 uses
  %i.yb = lshr i64 %i.ya, 2
  %i.yc = or i64 %i.yb, %i.ya                     ; 2 uses
  %i.yd = lshr i64 %i.yc, 4
  %i.ye = or i64 %i.yd, %i.yc                     ; 2 uses
  %i.yf = lshr i64 %i.ye, 8
  %i.yg = or i64 %i.yf, %i.ye                     ; 2 uses
  %i.yh = lshr i64 %i.yg, 16
  %i.yi = or i64 %i.yh, %i.yg
  %i.yj = trunc nuw nsw i64 %i.yi to i32
  %i.yk = add nuw i32 %i.yj, 1                    ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.yk, ptr %i.yl, align 8, !tbaa !120, !alias.scope !322, !noalias !321
  %i.ym = zext i32 %i.yk to i64
  %i.yn = shl nuw nsw i64 %i.ym, 3                ; 2 uses
  %i.yo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yn) #19, !noalias !323 ; 2 uses
  store ptr %i.yo, ptr %8, align 8, !tbaa !121, !alias.scope !322, !noalias !321
  %i.yp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.yp, align 8, !tbaa !122, !alias.scope !322, !noalias !321
  %i.yq = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.yq, align 4, !tbaa !123, !alias.scope !322, !noalias !321
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.yo, i8 -1, i64 %i.yn, i1 false), !tbaa !84, !noalias !323
  br label %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i

bb.cm:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 20, i1 false), !alias.scope !322, !noalias !321
  br label %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i

_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i: ; preds = %bb.cm, %.lr.ph.preheader.i.i.i.i.i.i.i16
  %.not16.i.i18 = icmp eq ptr %.val12, %.val11
  br i1 %.not16.i.i18, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, label %.lr.ph.i.i19

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i: ; preds = %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i
  call void @_ZdlPv(ptr noundef null) #15, !noalias !324
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !321
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

.lr.ph.i.i19:                                     ; preds = %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i, %bb.co
  %.017.i.i20 = phi ptr [ %i.zf, %bb.co ], [ %.val11, %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i ] ; 3 uses
  %.sroa.412.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 16
  %.sroa.412.0.copyload.i.i22 = load i64, ptr %.sroa.412.0..sroa_idx.i.i21, align 8, !tbaa !84, !noalias !323
  %i.yr = icmp ugt i64 %.sroa.412.0.copyload.i.i22, 2
  br i1 %i.yr, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i.i19
  %i.ys = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 8
  %.sroa.011.0.copyload.i.i416 = load ptr, ptr %i.ys, align 8, !tbaa !124, !noalias !323 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !323
  %i.yt = load i16, ptr %.sroa.011.0.copyload.i.i416, align 2, !tbaa !66, !noalias !321
  %i.yu = zext i16 %i.yt to i64
  %i.yv = shl nuw nsw i64 %i.yu, 32
  %i.yw = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i416, i64 2
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !66, !noalias !321
  %i.yy = zext i16 %i.yx to i64
  %i.yz = shl nuw nsw i64 %i.yy, 16
  %i.za = or disjoint i64 %i.yz, %i.yv
  %i.zb = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i416, i64 4
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !66, !noalias !321
  %i.zd = zext i16 %i.zc to i64
  %i.ze = or disjoint i64 %i.za, %i.zd
  store i64 %i.ze, ptr %i.c, align 8, !tbaa !84, !noalias !323
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !325
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !325
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorImS3_S5_S7_Lb0EEEbEOmDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.113") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %6), !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !323
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph.i.i19
  %i.zf = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 96 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.zf, %.val12
  br i1 %.not.i.i23, label %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i, label %.lr.ph.i.i19

_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i: ; preds = %bb.co
  %.tr.i.i24 = trunc i64 %i.xr to i32             ; 2 uses
  %.mask.i.i25 = and i32 %.tr.i.i24, 536870911
  %i.zg = icmp eq i32 %.mask.i.i25, 0
  br i1 %i.zg, label %.lr.ph182.i.i, label %bb.cp

bb.cp:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %i.zh = shl i32 %.tr.i.i24, 5
  %i.zi = udiv i32 %i.zh, 3
  %i.zj = add nuw nsw i32 %i.zi, 1
  %i.zk = zext nneg i32 %i.zj to i64              ; 2 uses
  %i.zl = lshr i64 %i.zk, 1
  %i.zm = or i64 %i.zl, %i.zk                     ; 2 uses
  %i.zn = lshr i64 %i.zm, 2
  %i.zo = or i64 %i.zn, %i.zm                     ; 2 uses
  %i.zp = lshr i64 %i.zo, 4
  %i.zq = or i64 %i.zp, %i.zo                     ; 2 uses
  %i.zr = lshr i64 %i.zq, 8
  %i.zs = or i64 %i.zr, %i.zq                     ; 2 uses
  %i.zt = lshr i64 %i.zs, 16
  %i.zu = or i64 %i.zt, %i.zs                     ; 2 uses
  %i.zv = trunc nuw nsw i64 %i.zu to i32
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.013.i.i.i.i.i.i.i98, i64 16, i1 false), !tbaa.struct !137, !noalias !324
  %i.agl = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i98, i64 24 ; 2 uses
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !330, !noalias !324 ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i98, i64 32
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !329, !noalias !324 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i98, i64 40
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !135, !noalias !324 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agl, i8 0, i64 24, i1 false), !noalias !324
  %.not.i.i.i.i.i.i.i.i.i.i99 = icmp eq ptr %.sroa.11.0.i96, %.sroa.17.0.i95
  br i1 %.not.i.i.i.i.i.i.i.i.i.i99, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i94
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0.i96, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.013.i.i.i.i.i.i.i98, i64 16, i1 false), !noalias !324
  %i.agr = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i96, i64 16
  store ptr %i.agm, ptr %i.agr, align 8, !tbaa !330, !noalias !324
  %i.ags = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i96, i64 24
  store ptr %i.ago, ptr %i.ags, align 8, !tbaa !329, !noalias !324
  %i.agt = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i96, i64 32
  store ptr %i.agq, ptr %i.agt, align 8, !tbaa !135, !noalias !324
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i

bb.dr:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i94
  %i.agu = ptrtoint ptr %.sroa.17.0.i95 to i64
  %i.agv = ptrtoint ptr %.sroa.075.0.i97 to i64
  %i.agw = sub i64 %i.agu, %i.agv                 ; 4 uses
  %i.agx = icmp eq i64 %i.agw, 9223372036854775800
  br i1 %i.agx, label %bb.ds, label %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ds:                                            ; preds = %bb.dr
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17, !noalias !324
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dr
  %i.agy = sdiv exact i64 %i.agw, 40              ; 3 uses
  %i.agz = icmp eq ptr %.sroa.17.0.i95, %.sroa.075.0.i97 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i368 = select i1 %i.agz, i64 1, i64 %i.agy
  %i.aha = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i368, %i.agy ; 2 uses
  %i.ahb = icmp ult i64 %i.aha, %i.agy
  %i.ahc = call i64 @llvm.umin.i64(i64 %i.aha, i64 230584300921369395)
  %i.ahd = select i1 %i.ahb, i64 230584300921369395, i64 %i.ahc ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i369 = icmp ne i64 %i.ahd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i369)
  %i.ahe = mul nuw nsw i64 %i.ahd, 40
  %i.ahf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahe) #16, !noalias !324 ; 5 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 %i.agw ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i15, i64 16, i1 false), !tbaa.struct !137, !noalias !324
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16
  store ptr %i.agm, ptr %i.ahh, align 8, !tbaa !330, !noalias !324
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahg, i64 24
  store ptr %i.ago, ptr %i.ahi, align 8, !tbaa !329, !noalias !324
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 32
  store ptr %i.agq, ptr %i.ahj, align 8, !tbaa !135, !noalias !324
  br i1 %i.agz, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i370

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i370:            ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i370
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i371 = phi ptr [ %i.ahr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i370 ], [ %i.ahf, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i372 = phi ptr [ %i.ahq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i370 ], [ %.sroa.075.0.i97, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i371, ptr noundef nonnull align 8 dereferenceable(40) %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i372, i64 16, i1 false), !tbaa.struct !137, !alias.scope !333, !noalias !324
  %i.ahk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i371, i64 16
  %i.ahl = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i372, i64 16 ; 2 uses
  %i.ahm = load <2 x ptr>, ptr %i.ahl, align 8, !tbaa !133, !alias.scope !332, !noalias !334
  store <2 x ptr> %i.ahm, ptr %i.ahk, align 8, !tbaa !133, !alias.scope !331, !noalias !335
  %i.ahn = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i371, i64 32
  %i.aho = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i372, i64 32
  %i.ahp = load ptr, ptr %i.aho, align 8, !tbaa !135, !alias.scope !332, !noalias !334
  store ptr %i.ahp, ptr %i.ahn, align 8, !tbaa !135, !alias.scope !331, !noalias !335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahl, i8 0, i64 24, i1 false), !alias.scope !332, !noalias !334
  %i.ahq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i372, i64 40 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i371, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i373 = icmp eq ptr %i.ahq, %.sroa.17.0.i95
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i373, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i370, !llvm.loop !249

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i370, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i374 = phi ptr [ %i.ahf, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ahr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i370 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.0.i97, i64 noundef %i.agw) #18, !noalias !324
  %i.ahs = getelementptr inbounds nuw [40 x i8], ptr %i.ahf, i64 %i.ahd
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, %bb.dq
  %.sroa.17.1.i100 = phi ptr [ %i.ahs, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.17.0.i95, %bb.dq ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.pn.i101 = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i374, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0.i96, %bb.dq ]
  %.sroa.075.1.i102 = phi ptr [ %i.ahf, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.075.0.i97, %bb.dq ] ; 2 uses
  %.sroa.11.1.i103 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.pn.i101, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i15)
  %i.aht = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i98, i64 48 ; 3 uses
  %.not19.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aht, %i.agf
  br i1 %.not19.i.i.i.i.i.i.i.i.i, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i104

.lr.ph.i.i.i.i.i.i.i.i.i104:                      ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i, %.critedge2.i.i.i.i.i.i.i.i.i366
  %.sroa.011.1.i.i.i.i.i.i.i105 = phi ptr [ %i.ahx, %.critedge2.i.i.i.i.i.i.i.i.i366 ], [ %i.aht, %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i105, i64 16
  %i.ahv = load i32, ptr %i.ahu, align 8, !tbaa !129, !noalias !324
  %i.ahw = icmp eq i32 %i.ahv, 0
  br i1 %i.ahw, label %bb.dt, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i

bb.dt:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i104
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i363 = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i105, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i364 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i363, align 8, !tbaa !84, !noalias !324
  %.not.i.i.i.i.i5.i.i.i.i.i.i.i365 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i364, 0
  br i1 %.not.i.i.i.i.i5.i.i.i.i.i.i.i365, label %.critedge2.i.i.i.i.i.i.i.i.i366, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i

.critedge2.i.i.i.i.i.i.i.i.i366:                  ; preds = %bb.dt
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i105, i64 48 ; 3 uses
  %.not.i.i.i.i.i.i.i60.i.i367 = icmp eq ptr %i.ahx, %i.agf
  br i1 %.not.i.i.i.i.i.i.i60.i.i367, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i104, !llvm.loop !245

_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge2.i.i.i.i.i.i.i.i.i366, %bb.dt, %.lr.ph.i.i.i.i.i.i.i.i.i104, %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i.i106 = phi ptr [ %i.aht, %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i ], [ %i.ahx, %.critedge2.i.i.i.i.i.i.i.i.i366 ], [ %.sroa.011.1.i.i.i.i.i.i.i105, %bb.dt ], [ %.sroa.011.1.i.i.i.i.i.i.i105, %.lr.ph.i.i.i.i.i.i.i.i.i104 ] ; 2 uses
  %.not.i.i.i.i.i.i.i107 = icmp eq ptr %.sroa.011.2.i.i.i.i.i.i.i106, %i.agk
  br i1 %.not.i.i.i.i.i.i.i107, label %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i94, !llvm.loop !250

_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i: ; preds = %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i
  %.sroa.17.2.i108 = phi ptr [ %i.agd, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.17.1.i100, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ]
  %.sroa.11.2.i109 = phi ptr [ %i.agc, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.11.1.i103, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.075.2.i110 = phi ptr [ %i.agc, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.075.1.i102, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.ahy = ptrtoint ptr %.sroa.11.2.i109 to i64
  %i.ahz = ptrtoint ptr %.sroa.075.2.i110 to i64
  %i.aia = sub i64 %i.ahy, %i.ahz
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.075.2.i110, i64 %i.aia
  call fastcc void @_ZN12_GLOBAL__N_112StringPackerIDsE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef nonnull %.sroa.075.2.i110, ptr noundef nonnull %i.aib, i64 noundef 0), !noalias !324
  %i.aic = ptrtoint ptr %.sroa.17.2.i108 to i64
  br label %._crit_edge.thread.i.i111

._crit_edge.thread.i.i111:                        ; preds = %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, %._crit_edge.i.i88
  %.sroa.17.3.i112 = phi i64 [ %i.aic, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ 0, %._crit_edge.i.i88 ]
  %.sroa.11.3.i113 = phi ptr [ %.sroa.11.2.i109, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ null, %._crit_edge.i.i88 ] ; 3 uses
  %.sroa.075.3.i114 = phi ptr [ %.sroa.075.2.i110, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ null, %._crit_edge.i.i88 ] ; 7 uses
  %i.aid = icmp eq i32 %.sroa.29.2.i.i86, 0
  br i1 %i.aid, label %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i, label %.lr.ph.preheader.i.i.i.i115

.lr.ph.preheader.i.i.i.i115:                      ; preds = %._crit_edge.thread.i.i111
  %i.aie = zext i32 %.sroa.29.2.i.i86 to i64
  %.idx.i.i.i.i116 = mul nuw nsw i64 %i.aie, 48
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.095.2.i.i, i64 %.idx.i.i.i.i116
  br label %.lr.ph.i.i.i.i117

.lr.ph.i.i.i.i117:                                ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i115
  %.06.i.i.i.i118 = phi ptr [ %i.aio, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i ], [ %.sroa.095.2.i.i, %.lr.ph.preheader.i.i.i.i115 ] ; 5 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i118, i64 16
  %i.aih = load i32, ptr %i.aig, align 8, !tbaa !129, !noalias !324
  %i.aii = icmp eq i32 %i.aih, 0
  br i1 %i.aii, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.lr.ph.i.i.i.i117
  %.sroa.22.0..sroa_idx.i.i.i.i.i360 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i118, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i361 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i360, align 8, !tbaa !84, !noalias !324
  %.not.i.i.i.i.i62.i.i362 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i361, 0
  br i1 %.not.i.i.i.i.i62.i.i362, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph.i.i.i.i117
  %i.aij = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i118, i64 24
  %.val11.i.i.i.i119 = load ptr, ptr %i.aij, align 8, !tbaa !330, !noalias !324 ; 3 uses
  %.not.i.i.i25.i.i.i.i = icmp eq ptr %.val11.i.i.i.i119, null
  br i1 %.not.i.i.i25.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aik = getelementptr i8, ptr %.06.i.i.i.i118, i64 40
  %.val12.i.i.i.i120 = load ptr, ptr %i.aik, align 8, !tbaa !135, !noalias !324
  %i.ail = ptrtoint ptr %.val12.i.i.i.i120 to i64
  %i.aim = ptrtoint ptr %.val11.i.i.i.i119 to i64
  %i.ain = sub i64 %i.ail, %i.aim
  call void @_ZdlPvm(ptr noundef nonnull %.val11.i.i.i.i119, i64 noundef %i.ain) #18, !noalias !324
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i: ; preds = %bb.dw, %bb.dv, %bb.du
  %i.aio = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i118, i64 48 ; 2 uses
  %.not.i.i61.i.i121 = icmp eq ptr %i.aio, %i.aif
  br i1 %.not.i.i61.i.i121, label %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i, label %.lr.ph.i.i.i.i117, !llvm.loop !251

_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, %._crit_edge.thread.i.i111
  call void @_ZdlPv(ptr noundef %.sroa.095.2.i.i) #15, !noalias !324
  %i.aip = ptrtoint ptr %.sroa.075.3.i114 to i64  ; 2 uses
  %i.aiq = ptrtoint ptr %.sroa.11.3.i113 to i64
  %i.air = sub i64 %i.aiq, %i.aip
  %i.ais = getelementptr inbounds nuw i8, ptr %.sroa.075.3.i114, i64 %i.air
  br label %bb.dx

bb.dx:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i
  %.sroa.074.0.i122 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.sroa.074.2.i143, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.sroa.9.0.i123 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.sroa.9.2.i144, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.sroa.14.0.i124 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.sroa.14.2.i145, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val66.i31.i.i125 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.val66.i32.i.i146, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val63.i25.i.i126 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.val63.i26.i.i147, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val62.i20.i.i127 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.val62.i21.i.i148, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.015.i.i128 = phi ptr [ %.val11, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %i.ank, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 8 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 8
  %.sroa.096.0.copyload.i.i.i129 = load ptr, ptr %i.ait, align 8, !tbaa !124, !noalias !336
  %.sroa.4.0..sroa_idx.i.i.i130 = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 16
  %.sroa.4.0.copyload.i.i.i131 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i130, align 8, !tbaa !84, !noalias !336 ; 3 uses
  %.not113.i.i.i132 = icmp eq i64 %.sroa.4.0.copyload.i.i.i131, 0
  br i1 %.not113.i.i.i132, label %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, label %.lr.ph112.i.i.i133

.lr.ph112.i.i.i133:                               ; preds = %bb.dx
  %i.aiu = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 32 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 40
  br label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i, %.lr.ph112.i.i.i133
  %.sroa.074.1.i134 = phi ptr [ %.sroa.074.0.i122, %.lr.ph112.i.i.i133 ], [ %.sroa.074.3.i297, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 9 uses
  %.sroa.9.1.i135 = phi ptr [ %.sroa.9.0.i123, %.lr.ph112.i.i.i133 ], [ %.sroa.9.3.i298, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 7 uses
  %.sroa.14.1.i136 = phi ptr [ %.sroa.14.0.i124, %.lr.ph112.i.i.i133 ], [ %.sroa.14.3.i299, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 9 uses
  %.val66.i30.i.i137 = phi ptr [ %.val66.i31.i.i125, %.lr.ph112.i.i.i133 ], [ %.val66.i34.i.i300, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 7 uses
  %.val63.i.i.i138 = phi ptr [ %.val63.i25.i.i126, %.lr.ph112.i.i.i133 ], [ %.val63.i28.i.i301, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 12 uses
  %.val62.i.i.i139 = phi ptr [ %.val62.i20.i.i127, %.lr.ph112.i.i.i133 ], [ %.val62.i23.i.i302, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 11 uses
  %.047110.i.i.i140 = phi ptr [ %.sroa.075.3.i114, %.lr.ph112.i.i.i133 ], [ %i.ajp, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 2 uses
  %.048109.i.i.i141 = phi ptr [ %i.ais, %.lr.ph112.i.i.i133 ], [ %i.akd, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ]
  %.049108.i.i.i142 = phi i64 [ 0, %.lr.ph112.i.i.i133 ], [ %i.akg, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 8 uses
  %i.aiw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.096.0.copyload.i.i.i129, i64 %.049108.i.i.i142
  %i.aix = load i16, ptr %i.aiw, align 2, !tbaa !66, !noalias !336 ; 2 uses
  %i.aiy = ptrtoint ptr %.048109.i.i.i141 to i64  ; 2 uses
  %i.aiz = ptrtoint ptr %.047110.i.i.i140 to i64
  %i.aja = sub i64 %i.aiy, %i.aiz                 ; 2 uses
  %i.ajb = icmp sgt i64 %i.aja, 0
  br i1 %i.ajb, label %.lr.ph.i.i.i23.i276, label %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i

.lr.ph.i.i.i23.i276:                              ; preds = %bb.dy
  %i.ajc = udiv exact i64 %i.aja, 40
  br label %bb.dz

bb.dz:                                            ; preds = %.split.i.i.i25.i284, %.lr.ph.i.i.i23.i276
  %.018.i.i.i.i277 = phi i64 [ %i.ajc, %.lr.ph.i.i.i23.i276 ], [ %i.ajq, %.split.i.i.i25.i284 ] ; 3 uses
  %.01017.i.i.i.i278 = phi ptr [ %.047110.i.i.i140, %.lr.ph.i.i.i23.i276 ], [ %i.ajp, %.split.i.i.i25.i284 ] ; 2 uses
  %i.ajd = lshr i64 %.018.i.i.i.i277, 1           ; 4 uses
  %i.aje = getelementptr inbounds nuw [40 x i8], ptr %.01017.i.i.i.i278, i64 %i.ajd ; 4 uses
  %i.ajf = getelementptr i8, ptr %i.aje, i64 8
  %.val14.i.i.i.i281 = load i64, ptr %i.ajf, align 8, !tbaa !126, !noalias !336
  %.not.i.i.i.i.i24.i282 = icmp ult i64 %.049108.i.i.i142, %.val14.i.i.i.i281
  br i1 %.not.i.i.i.i.i24.i282, label %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i, label %.thread.i.i.i.i283

.thread.i.i.i.i283:                               ; preds = %bb.dz
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aje, i64 40
  %i.ajh = xor i64 %i.ajd, -1
  %i.aji = add nsw i64 %.018.i.i.i.i277, %i.ajh
  br label %.split.i.i.i25.i284

_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i: ; preds = %bb.dz
  %.val13.i.i.i.i356 = load ptr, ptr %i.aje, align 8, !noalias !336
  %i.ajj = getelementptr inbounds nuw [2 x i8], ptr %.val13.i.i.i.i356, i64 %.049108.i.i.i142
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !66, !noalias !336
  %i.ajl = icmp ult i16 %i.ajk, %i.aix
  %cond.fr.i.i.i.i357 = freeze i1 %i.ajl          ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aje, i64 40
  %i.ajn = xor i64 %i.ajd, -1
  %i.ajo = add nsw i64 %.018.i.i.i.i277, %i.ajn
  %spec.select.i.i.i358 = select i1 %cond.fr.i.i.i.i357, ptr %i.ajm, ptr %.01017.i.i.i.i278
  %spec.select98.i.i.i359 = select i1 %cond.fr.i.i.i.i357, i64 %i.ajo, i64 %i.ajd
  br label %.split.i.i.i25.i284

.split.i.i.i25.i284:                              ; preds = %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i, %.thread.i.i.i.i283
  %i.ajp = phi ptr [ %spec.select.i.i.i358, %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i ], [ %i.ajg, %.thread.i.i.i.i283 ] ; 10 uses
  %i.ajq = phi i64 [ %spec.select98.i.i.i359, %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i ], [ %i.aji, %.thread.i.i.i.i283 ] ; 2 uses
  %i.ajr = icmp sgt i64 %i.ajq, 0
  br i1 %i.ajr, label %bb.dz, label %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i, !llvm.loop !254

_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i: ; preds = %.split.i.i.i25.i284
  %.pre.i.i.i285 = ptrtoint ptr %i.ajp to i64
  %.pre116.i.i.i286 = sub i64 %i.aiy, %.pre.i.i.i285 ; 2 uses
  %i.ajs = icmp sgt i64 %.pre116.i.i.i286, 0
  br i1 %i.ajs, label %.lr.ph.i73.i.i.i287, label %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i

.lr.ph.i73.i.i.i287:                              ; preds = %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i
  %i.ajt = udiv exact i64 %.pre116.i.i.i286, 40
  br label %bb.ea

bb.ea:                                            ; preds = %.thread.i80.i.i.i294, %.lr.ph.i73.i.i.i287
  %.018.i74.i.i.i288 = phi i64 [ %i.ajt, %.lr.ph.i73.i.i.i287 ], [ %i.ake, %.thread.i80.i.i.i294 ] ; 2 uses
  %.01017.i75.i.i.i289 = phi ptr [ %i.ajp, %.lr.ph.i73.i.i.i287 ], [ %i.akd, %.thread.i80.i.i.i294 ] ; 3 uses
  %i.aju = lshr i64 %.018.i74.i.i.i288, 1         ; 4 uses
  %i.ajv = getelementptr inbounds nuw [40 x i8], ptr %.01017.i75.i.i.i289, i64 %i.aju ; 3 uses
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 8
  %.val14.i78.i.i.i292 = load i64, ptr %i.ajw, align 8, !tbaa !126, !noalias !336
  %.not.i.i.i79.i.i.i293 = icmp ult i64 %.049108.i.i.i142, %.val14.i78.i.i.i292
  br i1 %.not.i.i.i79.i.i.i293, label %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i, label %.thread.i80.i.i.i294

_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i: ; preds = %bb.ea
  %.val13.i81.i.i.i352 = load ptr, ptr %i.ajv, align 8, !noalias !336
  %i.ajx = getelementptr inbounds nuw [2 x i8], ptr %.val13.i81.i.i.i352, i64 %.049108.i.i.i142
  %i.ajy = load i16, ptr %i.ajx, align 2, !tbaa !66, !noalias !336
  %i.ajz = icmp eq i16 %i.ajy, %i.aix
  %cond.fr.i82.i.i.i353 = freeze i1 %i.ajz        ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajv, i64 40
  %i.akb = xor i64 %i.aju, -1
  %i.akc = add nsw i64 %.018.i74.i.i.i288, %i.akb
  %spec.select99.i.i.i354 = select i1 %cond.fr.i82.i.i.i353, ptr %i.aka, ptr %.01017.i75.i.i.i289
  %spec.select100.i.i.i355 = select i1 %cond.fr.i82.i.i.i353, i64 %i.akc, i64 %i.aju
  br label %.thread.i80.i.i.i294

.thread.i80.i.i.i294:                             ; preds = %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i, %bb.ea
  %i.akd = phi ptr [ %.01017.i75.i.i.i289, %bb.ea ], [ %spec.select99.i.i.i354, %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i ] ; 5 uses
  %i.ake = phi i64 [ %i.aju, %bb.ea ], [ %spec.select100.i.i.i355, %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i ] ; 2 uses
  %i.akf = icmp sgt i64 %i.ake, 0
  br i1 %i.akf, label %bb.ea, label %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i, !llvm.loop !255

_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i: ; preds = %.thread.i80.i.i.i294
  %.not59.i.i.i295 = icmp eq ptr %i.ajp, %i.akd
  br i1 %.not59.i.i.i295, label %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, label %bb.eb

bb.eb:                                            ; preds = %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i
  %i.akg = add nuw i64 %.049108.i.i.i142, 1       ; 6 uses
  %i.akh = icmp ult i64 %i.akg, %.sroa.4.0.copyload.i.i.i131
  br i1 %i.akh, label %bb.ec, label %.preheader.i.i.i296

.preheader.i.i.i296:                              ; preds = %bb.eb
  %i.aki = icmp ult ptr %i.ajp, %i.akd
  br i1 %i.aki, label %.lr.ph107.i.i.i304, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !126, !noalias !336
  %i.akl = icmp eq i64 %i.akk, %i.akg
  br i1 %i.akl, label %bb.ed, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i

bb.ed:                                            ; preds = %bb.ec
  %i.akm = ptrtoint ptr %.val63.i.i.i138 to i64   ; 2 uses
  %i.akn = ptrtoint ptr %.val62.i.i.i139 to i64   ; 2 uses
  %i.ako = sub i64 %i.akm, %i.akn                 ; 2 uses
  %i.akp = sdiv exact i64 %i.ako, 24              ; 6 uses
  %.not58.i.i.i314 = icmp ugt i64 %i.akp, %i.akg
  br i1 %.not58.i.i.i314, label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %19 = add nuw i64 %.049108.i.i.i142, 2
  %i.akq = sub nuw i64 %19, %i.akp                ; 5 uses
  %i.akr = ptrtoint ptr %.sroa.14.1.i136 to i64   ; 2 uses
  %i.aks = sub i64 %i.akr, %i.akm
  %i.akt = sdiv exact i64 %i.aks, 24              ; 2 uses
  %i.aku = icmp ult i64 %i.akp, 384307168202282326
  call void @llvm.assume(i1 %i.aku)
  %i.akv = sub nuw nsw i64 384307168202282325, %i.akp
  %i.akw = icmp ule i64 %i.akt, %i.akv
  call void @llvm.assume(i1 %i.akw)
  %.not23.i.i.i.i.i343 = icmp ult i64 %i.akt, %i.akq
  br i1 %.not23.i.i.i.i.i343, label %bb.ef, label %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i

_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i: ; preds = %bb.ee
  %i.akx = mul nuw nsw i64 %i.akq, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.val63.i.i.i138, i8 0, i64 %i.akx, i1 false), !noalias !336
  %scevgep.i.i.i.i.i.i.i.i344 = getelementptr i8, ptr %.val63.i.i.i138, i64 %i.akx ; 2 uses
  br label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.aky = icmp ugt i64 %.049108.i.i.i142, 384307168202282323
  br i1 %i.aky, label %bb.eg, label %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ef
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17, !noalias !336
  unreachable

_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.ef
  %.sroa.speculated.i.i.i.i.i30.i345 = call i64 @llvm.umax.i64(i64 %i.akp, i64 %i.akq)
  %i.akz = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i30.i345, %i.akp
  %i.ala = call i64 @llvm.umin.i64(i64 %i.akz, i64 384307168202282325) ; 2 uses
  %i.alb = mul nuw nsw i64 %i.ala, 24
  %i.alc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alb) #16, !noalias !336 ; 5 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 %i.ako ; 2 uses
  %i.ale = mul nuw nsw i64 %i.akq, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ald, i8 0, i64 %i.ale, i1 false), !noalias !336
  %.not1.i.i.i.i.i.i.i.i346 = icmp eq ptr %.val62.i.i.i139, %.val63.i.i.i138
  br i1 %.not1.i.i.i.i.i.i.i.i346, label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i347

.lr.ph.i.i.i.i.i.i.i.i347:                        ; preds = %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i347
  %.03.i.i.i.i.i.i.i.i348 = phi ptr [ %i.alk, %.lr.ph.i.i.i.i.i.i.i.i347 ], [ %i.alc, %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 3 uses
  %.092.i.i.i.i.i.i.i.i349 = phi ptr [ %i.alj, %.lr.ph.i.i.i.i.i.i.i.i347 ], [ %.val62.i.i.i139, %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.alf = load <2 x ptr>, ptr %.092.i.i.i.i.i.i.i.i349, align 8, !tbaa !340, !alias.scope !338, !noalias !341
  store <2 x ptr> %i.alf, ptr %.03.i.i.i.i.i.i.i.i348, align 8, !tbaa !340, !alias.scope !337, !noalias !342
  %i.alg = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i348, i64 16
  %i.alh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i349, i64 16
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !344, !alias.scope !338, !noalias !341
  store ptr %i.ali, ptr %i.alg, align 8, !tbaa !344, !alias.scope !337, !noalias !342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.092.i.i.i.i.i.i.i.i349, i8 0, i64 24, i1 false), !alias.scope !338, !noalias !341
  %i.alj = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i349, i64 24 ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i348, i64 24
  %.not.i.i.i.i.i.i.i31.i350 = icmp eq ptr %i.alj, %.val63.i.i.i138
  br i1 %.not.i.i.i.i.i.i.i31.i350, label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i347, !llvm.loop !259

_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i347, %_ZNKSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.not.i33.i.i.i.i.i351 = icmp eq ptr %.val62.i.i.i139, null
  br i1 %.not.i33.i.i.i.i.i351, label %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i
  %i.all = sub i64 %i.akr, %i.akn
  call void @_ZdlPvm(ptr noundef nonnull %.val62.i.i.i139, i64 noundef %i.all) #18, !noalias !336
  br label %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i

_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i: ; preds = %bb.eh, %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i.i.i.i.i
  %i.alm = getelementptr inbounds nuw [24 x i8], ptr %i.ald, i64 %i.akq ; 2 uses
  %i.aln = getelementptr inbounds nuw [24 x i8], ptr %i.alc, i64 %i.ala
  br label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i

_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i, %bb.ed
  %.sroa.072.4.i317 = phi ptr [ %.sroa.074.1.i134, %bb.ed ], [ %i.alc, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %.sroa.074.1.i134, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9.4.i318 = phi ptr [ %.sroa.9.1.i135, %bb.ed ], [ %i.alm, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i.i.i344, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.13.4.i319 = phi ptr [ %.sroa.14.1.i136, %bb.ed ], [ %i.aln, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %.sroa.14.1.i136, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 2 uses
  %.val66.i.i.i320 = phi ptr [ %.val66.i30.i.i137, %bb.ed ], [ %i.alc, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %.sroa.074.1.i134, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 5 uses
  %.val63.i29.i.i321 = phi ptr [ %.val63.i.i.i138, %bb.ed ], [ %i.alm, %_ZNSt12_Vector_baseISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i.i.i ], [ %scevgep.i.i.i.i.i.i.i.i344, %_ZSt27__uninitialized_default_n_aIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEmS6_ET_S8_T0_RSaIT1_E.exit.i.i.i.i.i ] ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  %.val64.i.i.i320 = load ptr, ptr %i.alo, align 8, !tbaa !330, !noalias !336 ; 3 uses
  %i.alp = getelementptr i8, ptr %i.ajp, i64 24
  %.val65.i.i.i321 = load ptr, ptr %i.alp, align 8, !tbaa !329, !noalias !336
  %i.alq = ptrtoint ptr %.val65.i.i.i321 to i64
  %i.alr = ptrtoint ptr %.val64.i.i.i320 to i64
  %i.als = sub i64 %i.alq, %i.alr
  %i.alt = ashr exact i64 %i.als, 3               ; 2 uses
  %i.alu = getelementptr inbounds nuw [24 x i8], ptr %.val66.i.i.i320, i64 %i.akg ; 4 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 8 ; 3 uses
  %i.alw = load ptr, ptr %i.alv, align 8, !tbaa !345, !noalias !336 ; 8 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alu, i64 16 ; 3 uses
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !344, !noalias !336
  %.not.i.i.i26.i322 = icmp eq ptr %i.alw, %i.aly
  br i1 %.not.i.i.i26.i322, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i
  store ptr %.val64.i.i.i320, ptr %i.alw, align 8, !tbaa !133, !noalias !336
  %.sroa.5.0..sroa_idx.i.i.i323 = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  store i64 %i.alt, ptr %.sroa.5.0..sroa_idx.i.i.i323, align 8, !tbaa !84, !noalias !336
  %.sroa.6.0..sroa_idx.i.i.i324 = getelementptr inbounds nuw i8, ptr %i.alw, i64 16
  store ptr %.015.i.i128, ptr %.sroa.6.0..sroa_idx.i.i.i324, align 8, !tbaa !136, !noalias !336
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  store ptr %i.alz, ptr %i.alv, align 8, !tbaa !345, !noalias !336
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i

bb.ej:                                            ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EE6resizeEm.exit.i.i.i
  %.val.i.i.i.i27.i325 = load ptr, ptr %i.alu, align 8, !tbaa !346, !noalias !336 ; 5 uses
  %i.ama = ptrtoint ptr %i.alw to i64
  %i.amb = ptrtoint ptr %.val.i.i.i.i27.i325 to i64 ; 2 uses
  %i.amc = sub i64 %i.ama, %i.amb                 ; 3 uses
  %i.amd = icmp eq i64 %i.amc, 9223372036854775800
  br i1 %i.amd, label %bb.ek, label %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ek:                                            ; preds = %bb.ej
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #17, !noalias !336
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.ej
  %i.ame = sdiv exact i64 %i.amc, 24              ; 3 uses
  %i.amf = icmp eq ptr %i.alw, %.val.i.i.i.i27.i325 ; 2 uses
  %.sroa.speculated.i.i.i83.i.i.i326 = select i1 %i.amf, i64 1, i64 %i.ame
  %i.amg = add nsw i64 %.sroa.speculated.i.i.i83.i.i.i326, %i.ame ; 2 uses
  %i.amh = icmp ult i64 %i.amg, %i.ame
  %i.ami = call i64 @llvm.umin.i64(i64 %i.amg, i64 384307168202282325)
  %i.amj = select i1 %i.amh, i64 384307168202282325, i64 %i.ami ; 3 uses
  %.not.i.i.i84.i.i.i327 = icmp ne i64 %i.amj, 0
  call void @llvm.assume(i1 %.not.i.i.i84.i.i.i327)
  %i.amk = mul nuw nsw i64 %i.amj, 24
  %i.aml = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.amk) #16, !noalias !336 ; 5 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.amc ; 3 uses
  store ptr %.val64.i.i.i320, ptr %i.amm, align 8, !tbaa !133, !noalias !336
  %.sroa.5.0..sroa_idx92.i.i.i328 = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  store i64 %i.alt, ptr %.sroa.5.0..sroa_idx92.i.i.i328, align 8, !tbaa !84, !noalias !336
  %.sroa.6.0..sroa_idx94.i.i.i329 = getelementptr inbounds nuw i8, ptr %i.amm, i64 16
  store ptr %.015.i.i128, ptr %.sroa.6.0..sroa_idx94.i.i.i329, align 8, !tbaa !136, !noalias !336
  br i1 %i.amf, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i85.i.i.i330

.lr.ph.i.i.i.i.i85.i.i.i330:                      ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i85.i.i.i330
  %.03.i.i.i.i.i86.i.i.i331 = phi ptr [ %i.amo, %.lr.ph.i.i.i.i.i85.i.i.i330 ], [ %i.aml, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i87.i.i.i332 = phi ptr [ %i.amn, %.lr.ph.i.i.i.i.i85.i.i.i330 ], [ %.val.i.i.i.i27.i325, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i86.i.i.i331, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i87.i.i.i332, i64 24, i1 false), !tbaa.struct !347, !alias.scope !348, !noalias !336
  %i.amn = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i87.i.i.i332, i64 24 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i86.i.i.i331, i64 24 ; 2 uses
  %.not.i.i.i.i.i88.i.i.i333 = icmp eq ptr %i.amn, %i.alw
  br i1 %.not.i.i.i.i.i88.i.i.i333, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i, label %.lr.ph.i.i.i.i.i85.i.i.i330, !llvm.loop !263

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i85.i.i.i330, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i334 = phi ptr [ %i.aml, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i ], [ %i.amo, %.lr.ph.i.i.i.i.i85.i.i.i330 ]
  %i.amp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i334, i64 24
  %.not.i27.i.i.i.i.i335 = icmp eq ptr %.val.i.i.i.i27.i325, null
  br i1 %.not.i27.i.i.i.i.i335, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i
  %i.amq = load ptr, ptr %i.alx, align 8, !tbaa !344, !noalias !336
  %i.amr = ptrtoint ptr %i.amq to i64
  %i.ams = sub i64 %i.amr, %i.amb
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i27.i325, i64 noundef %i.ams) #18, !noalias !336
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i: ; preds = %bb.el, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit26.i.i.i.i.i
  store ptr %i.aml, ptr %i.alu, align 8, !tbaa !346, !noalias !336
  store ptr %i.amp, ptr %i.alv, align 8, !tbaa !345, !noalias !336
  %i.amt = getelementptr inbounds nuw [24 x i8], ptr %i.aml, i64 %i.amj
  store ptr %i.amt, ptr %i.alx, align 8, !tbaa !344, !noalias !336
  br label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i

.lr.ph107.i.i.i304:                               ; preds = %.preheader.i.i.i296, %._crit_edge.i.i.i313
  %.0106.i.i.i305 = phi ptr [ %i.amx, %._crit_edge.i.i.i313 ], [ %i.ajp, %.preheader.i.i.i296 ] ; 4 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %.0106.i.i.i305, i64 16
  %.val67.i.i.i306 = load ptr, ptr %i.amu, align 8, !tbaa !133, !noalias !336 ; 2 uses
  %i.amv = getelementptr i8, ptr %.0106.i.i.i305, i64 24
  %.val68.i.i.i307 = load ptr, ptr %i.amv, align 8, !tbaa !133, !noalias !336 ; 2 uses
  %.not101104.i.i.i308 = icmp eq ptr %.val67.i.i.i306, %.val68.i.i.i307
  br i1 %.not101104.i.i.i308, label %._crit_edge.i.i.i313, label %.lr.ph.i.i.i309

.lr.ph.i.i.i309:                                  ; preds = %.lr.ph107.i.i.i304
  %i.amw = getelementptr inbounds nuw i8, ptr %.0106.i.i.i305, i64 8
  br label %bb.em

._crit_edge.i.i.i313:                             ; preds = %bb.eq, %.lr.ph107.i.i.i304
  %i.amx = getelementptr inbounds nuw i8, ptr %.0106.i.i.i305, i64 40 ; 2 uses
  %i.amy = icmp ult ptr %i.amx, %i.akd
  br i1 %i.amy, label %.lr.ph107.i.i.i304, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i, !llvm.loop !264

bb.em:                                            ; preds = %bb.eq, %.lr.ph.i.i.i309
  %.sroa.089.0105.i.i.i310 = phi ptr [ %.val67.i.i.i306, %.lr.ph.i.i.i309 ], [ %i.anj, %bb.eq ] ; 2 uses
  %i.amz = load ptr, ptr %.sroa.089.0105.i.i.i310, align 8, !tbaa !136, !noalias !336 ; 4 uses
  %i.ana = icmp eq ptr %i.amz, %.015.i.i128
  br i1 %i.ana, label %bb.eq, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.anb = load ptr, ptr %i.aiu, align 8, !tbaa !143, !noalias !336 ; 2 uses
  %.not.i.i.i311 = icmp eq ptr %i.anb, null
  br i1 %.not.i.i.i311, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.anc = load i32, ptr %i.anb, align 8, !tbaa !144, !noalias !336
  %i.and = load i32, ptr %i.amz, align 8, !tbaa !144, !noalias !336
  %i.ane = icmp ult i32 %i.anc, %i.and
  br i1 %i.ane, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  store ptr %i.amz, ptr %i.aiu, align 8, !tbaa !143, !noalias !336
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amz, i64 16
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !126, !noalias !336
  %i.anh = load i64, ptr %i.amw, align 8, !tbaa !126, !noalias !336
  %i.ani = sub i64 %i.ang, %i.anh
  store i64 %i.ani, ptr %i.aiv, align 8, !tbaa !145, !noalias !336
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.em
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.089.0105.i.i.i310, i64 8 ; 2 uses
  %.not101.i.i.i312 = icmp eq ptr %i.anj, %.val68.i.i.i307
  br i1 %.not101.i.i.i312, label %._crit_edge.i.i.i313, label %bb.em

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i: ; preds = %._crit_edge.i.i.i313, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i, %bb.ei, %bb.ec, %.preheader.i.i.i296
  %.sroa.074.3.i297 = phi ptr [ %.sroa.072.4.i317, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.072.4.i317, %bb.ei ], [ %.sroa.074.1.i134, %bb.ec ], [ %.sroa.074.1.i134, %.preheader.i.i.i296 ], [ %.sroa.074.1.i134, %._crit_edge.i.i.i313 ] ; 2 uses
  %.sroa.9.3.i298 = phi ptr [ %.sroa.9.4.i318, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.9.4.i318, %bb.ei ], [ %.sroa.9.1.i135, %bb.ec ], [ %.sroa.9.1.i135, %.preheader.i.i.i296 ], [ %.sroa.9.1.i135, %._crit_edge.i.i.i313 ] ; 2 uses
  %.sroa.14.3.i299 = phi ptr [ %.sroa.13.4.i319, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.sroa.13.4.i319, %bb.ei ], [ %.sroa.14.1.i136, %bb.ec ], [ %.sroa.14.1.i136, %.preheader.i.i.i296 ], [ %.sroa.14.1.i136, %._crit_edge.i.i.i313 ] ; 2 uses
  %.val66.i34.i.i300 = phi ptr [ %.val66.i.i.i320, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.val66.i.i.i320, %bb.ei ], [ %.val66.i30.i.i137, %bb.ec ], [ %.val66.i30.i.i137, %.preheader.i.i.i296 ], [ %.val66.i30.i.i137, %._crit_edge.i.i.i313 ] ; 2 uses
  %.val63.i28.i.i301 = phi ptr [ %.val63.i29.i.i321, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.val63.i29.i.i321, %bb.ei ], [ %.val63.i.i.i138, %bb.ec ], [ %.val63.i.i.i138, %.preheader.i.i.i296 ], [ %.val63.i.i.i138, %._crit_edge.i.i.i313 ] ; 2 uses
  %.val62.i23.i.i302 = phi ptr [ %.val66.i.i.i320, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i ], [ %.val66.i.i.i320, %bb.ei ], [ %.val62.i.i.i139, %bb.ec ], [ %.val62.i.i.i139, %.preheader.i.i.i296 ], [ %.val62.i.i.i139, %._crit_edge.i.i.i313 ] ; 2 uses
  %exitcond.not.i.i.i303 = icmp eq i64 %i.akg, %.sroa.4.0.copyload.i.i.i131
  br i1 %exitcond.not.i.i.i303, label %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, label %bb.dy, !llvm.loop !265

_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i, %bb.dy, %bb.dx
  %.sroa.074.2.i143 = phi ptr [ %.sroa.074.0.i122, %bb.dx ], [ %.sroa.074.1.i134, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.074.3.i297, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.sroa.074.1.i134, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.074.1.i134, %bb.dy ] ; 9 uses
  %.sroa.9.2.i144 = phi ptr [ %.sroa.9.0.i123, %bb.dx ], [ %.sroa.9.1.i135, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.9.3.i298, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.sroa.9.1.i135, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.9.1.i135, %bb.dy ] ; 4 uses
  %.sroa.14.2.i145 = phi ptr [ %.sroa.14.0.i124, %bb.dx ], [ %.sroa.14.1.i136, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.14.3.i299, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.sroa.14.1.i136, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.sroa.14.1.i136, %bb.dy ] ; 2 uses
  %.val66.i32.i.i146 = phi ptr [ %.val66.i31.i.i125, %bb.dx ], [ %.val66.i30.i.i137, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.val66.i34.i.i300, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.val66.i30.i.i137, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.val66.i30.i.i137, %bb.dy ]
  %.val63.i26.i.i147 = phi ptr [ %.val63.i25.i.i126, %bb.dx ], [ %.val63.i.i.i138, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.val63.i28.i.i301, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.val63.i.i.i138, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.val63.i.i.i138, %bb.dy ]
  %.val62.i21.i.i148 = phi ptr [ %.val62.i20.i.i127, %bb.dx ], [ %.val62.i.i.i139, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E0_ET_SK_SK_T0_.exit.i.i.i ], [ %.val62.i23.i.i302, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ], [ %.val62.i.i.i139, %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i ], [ %.val62.i.i.i139, %bb.dy ]
  %i.ank = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 96 ; 2 uses
  %.not.i21.i149 = icmp eq ptr %i.ank, %.val12
  br i1 %.not.i21.i149, label %_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i, label %bb.dx

_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i
  %.not88.i.i150 = icmp eq ptr %.sroa.9.2.i144, %.sroa.074.2.i143 ; 2 uses
  br i1 %.not88.i.i150, label %_ZN12_GLOBAL__N_112StringPackerIDsE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i, label %.lr.ph89.preheader.i.i151

.lr.ph89.preheader.i.i151:                        ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i
  %i.anl = ptrtoint ptr %.sroa.9.2.i144 to i64
  %i.anm = ptrtoint ptr %.sroa.074.2.i143 to i64
  %i.ann = sub i64 %i.anl, %i.anm
  %i.ano = sdiv exact i64 %i.ann, 24
  br label %.lr.ph89.i.i152

.loopexit70.i.i161:                               ; preds = %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, %.lr.ph89.i.i152
  %.not.i33.i162 = icmp eq i64 %i.anp, 0
  br i1 %.not.i33.i162, label %_ZN12_GLOBAL__N_112StringPackerIDsE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i, label %.lr.ph89.i.i152, !llvm.loop !266

.lr.ph89.i.i152:                                  ; preds = %.loopexit70.i.i161, %.lr.ph89.preheader.i.i151
  %.in.i.i153 = phi i64 [ %i.anp, %.loopexit70.i.i161 ], [ %i.ano, %.lr.ph89.preheader.i.i151 ]
  %i.anp = add i64 %.in.i.i153, -1                ; 4 uses
  %i.anq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.074.2.i143, i64 %i.anp ; 2 uses
  %.val43.i.i154 = load ptr, ptr %i.anq, align 8, !tbaa !340, !noalias !321 ; 2 uses
  %i.anr = getelementptr i8, ptr %i.anq, i64 8
  %.val44.i.i155 = load ptr, ptr %i.anr, align 8, !tbaa !340, !noalias !321 ; 2 uses
  %.not6785.i.i156 = icmp eq ptr %.val43.i.i154, %.val44.i.i155
  br i1 %.not6785.i.i156, label %.loopexit70.i.i161, label %.lr.ph87.i.i157

.lr.ph87.i.i157:                                  ; preds = %.lr.ph89.i.i152, %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i
  %.sroa.058.086.i.i158 = phi ptr [ %i.aup, %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i ], [ %.val43.i.i154, %.lr.ph89.i.i152 ] ; 4 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %.sroa.058.086.i.i158, i64 16
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !351, !noalias !321 ; 9 uses
  %i.anu = getelementptr inbounds nuw i8, ptr %i.ant, i64 56 ; 2 uses
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !146, !noalias !321
  %.not36.i32.i159 = icmp eq ptr %i.anv, null
  br i1 %.not36.i32.i159, label %bb.er, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i

bb.er:                                            ; preds = %.lr.ph87.i.i157
  %i.anw = getelementptr inbounds nuw i8, ptr %i.ant, i64 32
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !143, !noalias !321
  %.not37.i35.i183 = icmp eq ptr %i.anx, null
  br i1 %.not37.i35.i183, label %bb.es, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i

bb.es:                                            ; preds = %bb.er
  %.val48.i.i184 = load ptr, ptr %.sroa.058.086.i.i158, align 8, !tbaa !352, !noalias !321 ; 2 uses
  %i.any = getelementptr i8, ptr %.sroa.058.086.i.i158, i64 8
  %.val50.i.i185 = load i64, ptr %i.any, align 8, !tbaa !353, !noalias !321 ; 2 uses
  %.idx.i36.i186 = shl nuw nsw i64 %.val50.i.i185, 3
  %i.anz = getelementptr inbounds nuw i8, ptr %.val48.i.i184, i64 %.idx.i36.i186
  %.not3883.i.i187 = icmp eq i64 %.val50.i.i185, 0
  br i1 %.not3883.i.i187, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, label %.lr.ph.i37.i188

.lr.ph.i37.i188:                                  ; preds = %bb.es
  %i.aoa = ptrtoint ptr %i.ant to i64
  %i.aob = trunc i64 %i.aoa to i32                ; 2 uses
  %i.aoc = lshr i32 %i.aob, 4
  %i.aod = lshr i32 %i.aob, 9
  %i.aoe = xor i32 %i.aoc, %i.aod
  br label %bb.et

bb.et:                                            ; preds = %.critedge.i39.i191, %.lr.ph.i37.i188
  %.03184.i.i189 = phi ptr [ %.val48.i.i184, %.lr.ph.i37.i188 ], [ %i.auo, %.critedge.i39.i191 ] ; 2 uses
  %i.aof = load ptr, ptr %.03184.i.i189, align 8, !tbaa !136, !noalias !321 ; 8 uses
  %i.aog = icmp eq ptr %i.aof, %i.ant
  br i1 %i.aog, label %.critedge.i39.i191, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aof, i64 32
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !143, !noalias !321
  %.not.i.i38.i190 = icmp eq ptr %i.aoi, null
  br i1 %.not.i.i38.i190, label %bb.ev, label %.critedge.i39.i191

bb.ev:                                            ; preds = %bb.eu
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aof, i64 48
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !147, !noalias !321
  %.not12.i.i.i193 = icmp eq ptr %i.aok, null
  br i1 %.not12.i.i.i193, label %bb.ew, label %.critedge.i39.i191

bb.ew:                                            ; preds = %bb.ev
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aof, i64 72
  %.val.i.i.i194 = load ptr, ptr %i.aol, align 8, !tbaa !148, !noalias !321 ; 2 uses
  %i.aom = getelementptr i8, ptr %i.aof, i64 88
  %.val15.i.i.i195 = load i32, ptr %i.aom, align 8, !tbaa !149, !noalias !321 ; 2 uses
  %i.aon = icmp eq i32 %.val15.i.i.i195, 0
  br i1 %i.aon, label %.loopexit.i41.i201, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aoo = add i32 %.val15.i.i.i195, -1           ; 2 uses
  %.02710.i.i.i.i.i196 = and i32 %i.aoo, %i.aoe   ; 2 uses
  %i.aop = zext nneg i32 %.02710.i.i.i.i.i196 to i64
  %i.aoq = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i194, i64 %i.aop
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !136, !noalias !321 ; 2 uses
  %i.aos = icmp eq ptr %i.ant, %i.aor
  br i1 %i.aos, label %.critedge.i39.i191, label %.lr.ph.i.i.i.i40.i197, !prof !86

.lr.ph.i.i.i.i40.i197:                            ; preds = %bb.ex, %bb.ey
  %i.aot = phi ptr [ %i.aoz, %bb.ey ], [ %i.aor, %bb.ex ]
  %.02713.i.i.i.i.i198 = phi i32 [ %.027.i.i.i.i.i200, %bb.ey ], [ %.02710.i.i.i.i.i196, %bb.ex ]
  %.012.i.i.i.i.i199 = phi i32 [ %i.aov, %bb.ey ], [ 1, %bb.ex ] ; 2 uses
  %i.aou = icmp eq ptr %i.aot, inttoptr (i64 -8 to ptr)
  br i1 %i.aou, label %.loopexit.i41.i201, label %bb.ey, !prof !60

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i40.i197
  %i.aov = add i32 %.012.i.i.i.i.i199, 1
  %i.aow = add i32 %.012.i.i.i.i.i199, %.02713.i.i.i.i.i198
  %.027.i.i.i.i.i200 = and i32 %i.aow, %i.aoo     ; 2 uses
  %i.aox = zext i32 %.027.i.i.i.i.i200 to i64
  %i.aoy = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i194, i64 %i.aox
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !136, !noalias !321 ; 2 uses
  %i.apa = icmp eq ptr %i.ant, %i.aoz
  br i1 %i.apa, label %.critedge.i39.i191, label %.lr.ph.i.i.i.i40.i197, !prof !87, !llvm.loop !267

.loopexit.i41.i201:                               ; preds = %bb.ew, %.lr.ph.i.i.i.i40.i197
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aof, i64 48
  store ptr %i.ant, ptr %i.apb, align 8, !tbaa !147, !noalias !321
  store ptr %i.aof, ptr %i.anu, align 8, !tbaa !146, !noalias !321
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ant, i64 64
  store i64 %i.anp, ptr %i.apc, align 8, !tbaa !150, !noalias !321
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ez, %.loopexit.i41.i201
  %.0.i.i202 = phi ptr [ %i.ant, %.loopexit.i41.i201 ], [ %i.ape, %bb.ez ] ; 8 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 48
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !147, !noalias !321 ; 2 uses
  %.not39.i.i203 = icmp eq ptr %i.ape, null
  br i1 %.not39.i.i203, label %.preheader.i.i205, label %bb.ez, !llvm.loop !268

.preheader.i.i205:                                ; preds = %bb.ez, %.preheader.i.i205
  %storemerge.i.i206 = phi ptr [ %i.apg, %.preheader.i.i205 ], [ %i.aof, %bb.ez ] ; 8 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %storemerge.i.i206, i64 56
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !146, !noalias !321 ; 2 uses
  %.not40.i.i207 = icmp eq ptr %i.apg, null
  br i1 %.not40.i.i207, label %bb.fa, label %.preheader.i.i205, !llvm.loop !269

bb.fa:                                            ; preds = %.preheader.i.i205
  %i.aph = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 72 ; 3 uses
  %.val7.i.i.i.i208 = load ptr, ptr %i.aph, align 8, !tbaa !148, !noalias !354 ; 6 uses
  %i.api = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 88 ; 5 uses
  %.val8.i.i.i.i209 = load i32, ptr %i.api, align 8, !tbaa !149, !noalias !354 ; 8 uses
  %i.apj = icmp eq i32 %.val8.i.i.i.i209, 0       ; 2 uses
  br i1 %i.apj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.apk = ptrtoint ptr %storemerge.i.i206 to i64
  %i.apl = trunc i64 %i.apk to i32                ; 2 uses
  %i.apm = lshr i32 %i.apl, 4
  %i.apn = lshr i32 %i.apl, 9
  %i.apo = xor i32 %i.apm, %i.apn
  %i.app = add i32 %.val8.i.i.i.i209, -1          ; 2 uses
  %.02710.i.i.i.i.i.i210 = and i32 %i.app, %i.apo ; 2 uses
  %i.apq = zext nneg i32 %.02710.i.i.i.i.i.i210 to i64
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %.val7.i.i.i.i208, i64 %i.apq ; 2 uses
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !136, !noalias !354 ; 2 uses
  %i.apt = icmp eq ptr %storemerge.i.i206, %i.aps
  br i1 %i.apt, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.i211, !prof !86

.lr.ph.i.i.i.i.i.i211:                            ; preds = %bb.fb, %bb.fd
  %i.apu = phi ptr [ %i.aqe, %bb.fd ], [ %i.aps, %bb.fb ] ; 2 uses
  %i.apv = phi ptr [ %i.aqd, %bb.fd ], [ %i.apr, %bb.fb ] ; 2 uses
  %.02713.i.i.i.i.i.i212 = phi i32 [ %.027.i.i.i.i.i.i217, %bb.fd ], [ %.02710.i.i.i.i.i.i210, %bb.fb ]
  %.012.i.i.i.i.i.i213 = phi i32 [ %i.aqa, %bb.fd ], [ 1, %bb.fb ] ; 2 uses
  %.02911.i.i.i.i.i.i214 = phi ptr [ %spec.select.i.i.i.i.i.i216, %bb.fd ], [ null, %bb.fb ] ; 4 uses
  %i.apw = icmp eq ptr %i.apu, inttoptr (i64 -8 to ptr)
  br i1 %i.apw, label %bb.fc, label %bb.fd, !prof !60

bb.fc:                                            ; preds = %.lr.ph.i.i.i.i.i.i211
  %.not.i.i.i.i.i42.i218 = icmp eq ptr %.02911.i.i.i.i.i.i214, null
  %i.apx = select i1 %.not.i.i.i.i.i42.i218, ptr %i.apv, ptr %.02911.i.i.i.i.i.i214
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i

bb.fd:                                            ; preds = %.lr.ph.i.i.i.i.i.i211
  %i.apy = icmp eq ptr %i.apu, inttoptr (i64 -16 to ptr)
  %i.apz = icmp eq ptr %.02911.i.i.i.i.i.i214, null
  %or.cond.not.i.i.i.i.i.i215 = select i1 %i.apy, i1 %i.apz, i1 false
  %spec.select.i.i.i.i.i.i216 = select i1 %or.cond.not.i.i.i.i.i.i215, ptr %i.apv, ptr %.02911.i.i.i.i.i.i214
  %i.aqa = add i32 %.012.i.i.i.i.i.i213, 1
  %i.aqb = add i32 %.012.i.i.i.i.i.i213, %.02713.i.i.i.i.i.i212
  %.027.i.i.i.i.i.i217 = and i32 %i.aqb, %i.app   ; 2 uses
  %i.aqc = zext i32 %.027.i.i.i.i.i.i217 to i64
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %.val7.i.i.i.i208, i64 %i.aqc ; 2 uses
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !136, !noalias !354 ; 2 uses
  %i.aqf = icmp eq ptr %storemerge.i.i206, %i.aqe
  br i1 %i.aqf, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, label %.lr.ph.i.i.i.i.i.i211, !prof !87, !llvm.loop !267

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i: ; preds = %bb.fc, %bb.fa
  %.sink.i.i.i.i.i.i219 = phi ptr [ %i.apx, %bb.fc ], [ null, %bb.fa ]
  %i.aqg = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 80 ; 6 uses
  %.val12.i.i.i.i.i.i220 = load i32, ptr %i.aqg, align 8, !tbaa !355, !noalias !354 ; 3 uses
  %i.aqh = shl i32 %.val12.i.i.i.i.i.i220, 2
  %i.aqi = add i32 %i.aqh, 4
  %i.aqj = mul i32 %.val8.i.i.i.i209, 3
  %.not.i.i12.i.i.i.i221 = icmp ult i32 %i.aqi, %i.aqj
  br i1 %.not.i.i12.i.i.i.i221, label %bb.ff, label %bb.fe, !prof !60

bb.fe:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i
  %i.aqk = shl i32 %.val8.i.i.i.i209, 1
  br label %.sink.split.i.i.i.i.i43.i222

bb.ff:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i
  %i.aql = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 84
  %.val13.i.i.i.i.i.i272 = load i32, ptr %i.aql, align 4, !tbaa !356, !noalias !354
  %.neg.i.i.i.i.i56.i273 = xor i32 %.val12.i.i.i.i.i.i220, -1
  %.neg1.i.i.i.i.i57.i274 = add i32 %.val8.i.i.i.i209, %.neg.i.i.i.i.i56.i273
  %i.aqm = sub i32 %.neg1.i.i.i.i.i57.i274, %.val13.i.i.i.i.i.i272
  %i.aqn = lshr i32 %.val8.i.i.i.i209, 3
  %.not10.i.i.i.i.i.i275 = icmp ugt i32 %i.aqm, %i.aqn
  br i1 %.not10.i.i.i.i.i.i275, label %bb.fp, label %.sink.split.i.i.i.i.i43.i222, !prof !60

.sink.split.i.i.i.i.i43.i222:                     ; preds = %bb.ff, %bb.fe
  %.val11.sink.i.i.i.i.i.i223 = phi i32 [ %i.aqk, %bb.fe ], [ %.val8.i.i.i.i209, %bb.ff ]
  %i.aqo = add i32 %.val11.sink.i.i.i.i.i.i223, -1
  %i.aqp = zext i32 %i.aqo to i64                 ; 2 uses
  %i.aqq = lshr i64 %i.aqp, 1
  %i.aqr = or i64 %i.aqq, %i.aqp                  ; 2 uses
  %i.aqs = lshr i64 %i.aqr, 2
  %i.aqt = or i64 %i.aqs, %i.aqr                  ; 2 uses
  %i.aqu = lshr i64 %i.aqt, 4
  %i.aqv = or i64 %i.aqu, %i.aqt                  ; 2 uses
  %i.aqw = lshr i64 %i.aqv, 8
  %i.aqx = or i64 %i.aqw, %i.aqv                  ; 2 uses
  %i.aqy = lshr i64 %i.aqx, 16
  %i.aqz = or i64 %i.aqy, %i.aqx
  %i.ara = trunc nuw i64 %i.aqz to i32
  %i.arb = add i32 %i.ara, 1
  %.sroa.speculated.i.i.i44.i224 = call i32 @llvm.umax.i32(i32 %i.arb, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i.i.i44.i224, ptr %i.api, align 8, !tbaa !149, !noalias !354
  %i.arc = zext i32 %.sroa.speculated.i.i.i44.i224 to i64
  %i.ard = shl nuw nsw i64 %i.arc, 3
  %i.are = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ard) #19, !noalias !354 ; 11 uses
  store ptr %i.are, ptr %i.aph, align 8, !tbaa !148, !noalias !354
  %.not.i.i53.i.i225 = icmp eq ptr %.val7.i.i.i.i208, null
  br i1 %.not.i.i53.i.i225, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.sink.split.i.i.i.i.i43.i222
  store i32 0, ptr %i.aqg, align 8, !tbaa !355, !noalias !354
  %i.arf = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 84
  store i32 0, ptr %i.arf, align 4, !tbaa !356, !noalias !354
  %.val7.i.i.i.i.i266 = load i32, ptr %i.api, align 8, !tbaa !149, !noalias !354 ; 4 uses
  %i.arg = zext i32 %.val7.i.i.i.i.i266 to i64
  %.idx.i.i.i.i.i267 = shl nuw nsw i64 %i.arg, 3  ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 %.idx.i.i.i.i.i267
  %.not8.i.i.i.i.i268 = icmp eq i32 %.val7.i.i.i.i.i266, 0
  br i1 %.not8.i.i.i.i.i268, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, label %.lr.ph.i.i.i56.i.i269.preheader

.lr.ph.i.i.i56.i.i269.preheader:                  ; preds = %bb.fg
  %i.ari = add nsw i64 %.idx.i.i.i.i.i267, -8     ; 2 uses
  %i.arj = lshr exact i64 %i.ari, 3
  %i.ark = add nuw nsw i64 %i.arj, 1
  %xtraiter1136 = and i64 %i.ark, 7               ; 2 uses
  %lcmp.mod1137.not = icmp eq i64 %xtraiter1136, 0
  br i1 %lcmp.mod1137.not, label %.lr.ph.i.i.i56.i.i269.prol.loopexit, label %.lr.ph.i.i.i56.i.i269.prol

.lr.ph.i.i.i56.i.i269.prol:                       ; preds = %.lr.ph.i.i.i56.i.i269.preheader, %.lr.ph.i.i.i56.i.i269.prol
  %.09.i.i.i.i.i270.prol = phi ptr [ %i.arl, %.lr.ph.i.i.i56.i.i269.prol ], [ %i.are, %.lr.ph.i.i.i56.i.i269.preheader ] ; 2 uses
  %prol.iter1138 = phi i64 [ %prol.iter1138.next, %.lr.ph.i.i.i56.i.i269.prol ], [ 0, %.lr.ph.i.i.i56.i.i269.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.i.i270.prol, align 8, !tbaa !136, !noalias !354
  %i.arl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270.prol, i64 8 ; 2 uses
  %prol.iter1138.next = add i64 %prol.iter1138, 1 ; 2 uses
  %prol.iter1138.cmp.not = icmp eq i64 %prol.iter1138.next, %xtraiter1136
  br i1 %prol.iter1138.cmp.not, label %.lr.ph.i.i.i56.i.i269.prol.loopexit, label %.lr.ph.i.i.i56.i.i269.prol, !llvm.loop !274

.lr.ph.i.i.i56.i.i269.prol.loopexit:              ; preds = %.lr.ph.i.i.i56.i.i269.prol, %.lr.ph.i.i.i56.i.i269.preheader
  %.09.i.i.i.i.i270.unr = phi ptr [ %i.are, %.lr.ph.i.i.i56.i.i269.preheader ], [ %i.arl, %.lr.ph.i.i.i56.i.i269.prol ]
  %i.arm = icmp ult i64 %i.ari, 56
  br i1 %i.arm, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i, label %.lr.ph.i.i.i56.i.i269

.lr.ph.i.i.i56.i.i269:                            ; preds = %.lr.ph.i.i.i56.i.i269.prol.loopexit, %.lr.ph.i.i.i56.i.i269
  %.09.i.i.i.i.i270 = phi ptr [ %i.aru, %.lr.ph.i.i.i56.i.i269 ], [ %.09.i.i.i.i.i270.unr, %.lr.ph.i.i.i56.i.i269.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.i.i270, align 8, !tbaa !136, !noalias !354
  %i.arn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.arn, align 8, !tbaa !136, !noalias !354
  %i.aro = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aro, align 8, !tbaa !136, !noalias !354
  %i.arp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.arp, align 8, !tbaa !136, !noalias !354
  %i.arq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.arq, align 8, !tbaa !136, !noalias !354
  %i.arr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.arr, align 8, !tbaa !136, !noalias !354
  %i.ars = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ars, align 8, !tbaa !136, !noalias !354
  %i.art = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.art, align 8, !tbaa !136, !noalias !354
  %i.aru = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i270, i64 64 ; 2 uses
  %.not.i.i.i.i55.i271.7 = icmp eq ptr %i.aru, %i.arh
  br i1 %.not.i.i.i.i55.i271.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i, label %.lr.ph.i.i.i56.i.i269, !llvm.loop !275

bb.fh:                                            ; preds = %.sink.split.i.i.i.i.i43.i222
  %i.arv = zext i32 %.val8.i.i.i.i209 to i64
  %.idx.i.i.i45.i226 = shl nuw nsw i64 %i.arv, 3
  %i.arw = getelementptr inbounds nuw i8, ptr %.val7.i.i.i.i208, i64 %.idx.i.i.i45.i226
  store i32 0, ptr %i.aqg, align 8, !tbaa !355, !noalias !354
  %i.arx = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 84
  store i32 0, ptr %i.arx, align 4, !tbaa !356, !noalias !354
  %.val7.i.i.i.i.i.i227 = load i32, ptr %i.api, align 8, !tbaa !149, !noalias !354 ; 3 uses
  %i.ary = zext i32 %.val7.i.i.i.i.i.i227 to i64
  %.idx.i.i.i.i.i.i228 = shl nuw nsw i64 %i.ary, 3 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.are, i64 %.idx.i.i.i.i.i.i228
  %.not8.i.i.i.i.i.i229 = icmp ne i32 %.val7.i.i.i.i.i.i227, 0 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i229, label %.lr.ph.i.i.i.i54.i.i263.preheader, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i

.lr.ph.i.i.i.i54.i.i263.preheader:                ; preds = %bb.fh
  %i.asa = add nsw i64 %.idx.i.i.i.i.i.i228, -8   ; 2 uses
  %i.asb = lshr exact i64 %i.asa, 3
  %i.asc = add nuw nsw i64 %i.asb, 1
  %xtraiter1133 = and i64 %i.asc, 7               ; 2 uses
  %lcmp.mod1134.not = icmp eq i64 %xtraiter1133, 0
  br i1 %lcmp.mod1134.not, label %.lr.ph.i.i.i.i54.i.i263.prol.loopexit, label %.lr.ph.i.i.i.i54.i.i263.prol

.lr.ph.i.i.i.i54.i.i263.prol:                     ; preds = %.lr.ph.i.i.i.i54.i.i263.preheader, %.lr.ph.i.i.i.i54.i.i263.prol
  %.09.i.i.i.i.i.i264.prol = phi ptr [ %i.asd, %.lr.ph.i.i.i.i54.i.i263.prol ], [ %i.are, %.lr.ph.i.i.i.i54.i.i263.preheader ] ; 2 uses
  %prol.iter1135 = phi i64 [ %prol.iter1135.next, %.lr.ph.i.i.i.i54.i.i263.prol ], [ 0, %.lr.ph.i.i.i.i54.i.i263.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.i.i.i264.prol, align 8, !tbaa !136, !noalias !354
  %i.asd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264.prol, i64 8 ; 2 uses
  %prol.iter1135.next = add i64 %prol.iter1135, 1 ; 2 uses
  %prol.iter1135.cmp.not = icmp eq i64 %prol.iter1135.next, %xtraiter1133
  br i1 %prol.iter1135.cmp.not, label %.lr.ph.i.i.i.i54.i.i263.prol.loopexit, label %.lr.ph.i.i.i.i54.i.i263.prol, !llvm.loop !276

.lr.ph.i.i.i.i54.i.i263.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i54.i.i263.prol, %.lr.ph.i.i.i.i54.i.i263.preheader
  %.09.i.i.i.i.i.i264.unr = phi ptr [ %i.are, %.lr.ph.i.i.i.i54.i.i263.preheader ], [ %i.asd, %.lr.ph.i.i.i.i54.i.i263.prol ]
  %i.ase = icmp ult i64 %i.asa, 56
  br i1 %i.ase, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i54.i.i263

.lr.ph.i.i.i.i54.i.i263:                          ; preds = %.lr.ph.i.i.i.i54.i.i263.prol.loopexit, %.lr.ph.i.i.i.i54.i.i263
  %.09.i.i.i.i.i.i264 = phi ptr [ %i.asm, %.lr.ph.i.i.i.i54.i.i263 ], [ %.09.i.i.i.i.i.i264.unr, %.lr.ph.i.i.i.i54.i.i263.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.09.i.i.i.i.i.i264, align 8, !tbaa !136, !noalias !354
  %i.asf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264, i64 8
  store ptr inttoptr (i64 -8 to ptr), ptr %i.asf, align 8, !tbaa !136, !noalias !354
  %i.asg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.asg, align 8, !tbaa !136, !noalias !354
  %i.ash = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ash, align 8, !tbaa !136, !noalias !354
  %i.asi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.asi, align 8, !tbaa !136, !noalias !354
  %i.asj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %i.asj, align 8, !tbaa !136, !noalias !354
  %i.ask = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ask, align 8, !tbaa !136, !noalias !354
  %i.asl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.asl, align 8, !tbaa !136, !noalias !354
  %i.asm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i264, i64 64 ; 2 uses
  %.not.i.i.i.i55.i.i265.7 = icmp eq ptr %i.asm, %i.arz
  br i1 %.not.i.i.i.i55.i.i265.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i54.i.i263, !llvm.loop !275

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i54.i.i263.prol.loopexit, %.lr.ph.i.i.i.i54.i.i263, %bb.fh
  br i1 %i.apj, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i, label %.lr.ph.i6.i.i.i46.i230

.lr.ph.i6.i.i.i46.i230:                           ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i
  %i.asn = add i32 %.val7.i.i.i.i.i.i227, -1      ; 2 uses
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fm, %.lr.ph.i6.i.i.i46.i230
  %.val.i17.i.i.i.i.i231 = phi i32 [ 0, %.lr.ph.i6.i.i.i46.i230 ], [ %.val.i1728.i.i.i.i.i234, %bb.fm ] ; 3 uses
  %.023.i.i.i.i.i232 = phi ptr [ %.val7.i.i.i.i208, %.lr.ph.i6.i.i.i46.i230 ], [ %i.atk, %bb.fm ] ; 2 uses
  %i.aso = load ptr, ptr %.023.i.i.i.i.i232, align 8, !tbaa !136, !noalias !354 ; 4 uses
  %magicptr.i.i.i.i.i233 = ptrtoint ptr %i.aso to i64 ; 2 uses
  switch i64 %magicptr.i.i.i.i.i233, label %bb.fj [
    i64 -8, label %bb.fm
    i64 -16, label %bb.fm
  ]

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.assume(i1 %.not8.i.i.i.i.i.i229), !noalias !357
  %i.asp = trunc i64 %magicptr.i.i.i.i.i233 to i32 ; 2 uses
  %i.asq = lshr i32 %i.asp, 4
  %i.asr = lshr i32 %i.asp, 9
  %i.ass = xor i32 %i.asq, %i.asr
  %.02710.i.i.i.i.i.i.i253 = and i32 %i.ass, %i.asn ; 2 uses
  %i.ast = zext nneg i32 %.02710.i.i.i.i.i.i.i253 to i64
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.are, i64 %i.ast ; 3 uses
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !136, !noalias !354 ; 2 uses
  %i.asw = icmp eq ptr %i.aso, %i.asv
  br i1 %i.asw, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i53.i254, !prof !86

.lr.ph.i.i.i.i.i.i53.i254:                        ; preds = %bb.fj, %bb.fl
  %i.asx = phi ptr [ %i.ath, %bb.fl ], [ %i.asv, %bb.fj ] ; 2 uses
  %i.asy = phi ptr [ %i.atg, %bb.fl ], [ %i.asu, %bb.fj ] ; 2 uses
  %.02713.i.i.i.i.i.i.i255 = phi i32 [ %.027.i.i.i.i.i.i.i260, %bb.fl ], [ %.02710.i.i.i.i.i.i.i253, %bb.fj ]
  %.012.i.i.i.i.i.i.i256 = phi i32 [ %i.atd, %bb.fl ], [ 1, %bb.fj ] ; 2 uses
  %.02911.i.i.i.i.i.i.i257 = phi ptr [ %spec.select.i.i.i.i.i.i.i259, %bb.fl ], [ null, %bb.fj ] ; 4 uses
  %i.asz = icmp eq ptr %i.asx, inttoptr (i64 -8 to ptr)
  br i1 %i.asz, label %bb.fk, label %bb.fl, !prof !60

bb.fk:                                            ; preds = %.lr.ph.i.i.i.i.i.i53.i254
  %.not.i.i.i.i.i.i54.i262 = icmp eq ptr %.02911.i.i.i.i.i.i.i257, null
  %i.ata = select i1 %.not.i.i.i.i.i.i54.i262, ptr %i.asy, ptr %.02911.i.i.i.i.i.i.i257
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i

bb.fl:                                            ; preds = %.lr.ph.i.i.i.i.i.i53.i254
  %i.atb = icmp eq ptr %i.asx, inttoptr (i64 -16 to ptr)
  %i.atc = icmp eq ptr %.02911.i.i.i.i.i.i.i257, null
  %or.cond.not.i.i.i.i.i.i.i258 = select i1 %i.atb, i1 %i.atc, i1 false
  %spec.select.i.i.i.i.i.i.i259 = select i1 %or.cond.not.i.i.i.i.i.i.i258, ptr %i.asy, ptr %.02911.i.i.i.i.i.i.i257
  %i.atd = add i32 %.012.i.i.i.i.i.i.i256, 1
  %i.ate = add i32 %.012.i.i.i.i.i.i.i256, %.02713.i.i.i.i.i.i.i255
  %.027.i.i.i.i.i.i.i260 = and i32 %i.ate, %i.asn ; 2 uses
  %i.atf = zext i32 %.027.i.i.i.i.i.i.i260 to i64
  %i.atg = getelementptr inbounds nuw [8 x i8], ptr %i.are, i64 %i.atf ; 3 uses
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !136, !noalias !354 ; 2 uses
  %i.ati = icmp eq ptr %i.aso, %i.ath
  br i1 %i.ati, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i53.i254, !prof !87, !llvm.loop !267

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i: ; preds = %bb.fl, %bb.fk, %bb.fj
  %.sink.i.i.i.i.i.i.i261 = phi ptr [ %i.ata, %bb.fk ], [ %i.asu, %bb.fj ], [ %i.atg, %bb.fl ]
  store ptr %i.aso, ptr %.sink.i.i.i.i.i.i.i261, align 8, !tbaa !136, !noalias !354
  %i.atj = add i32 %.val.i17.i.i.i.i.i231, 1      ; 2 uses
  store i32 %i.atj, ptr %i.aqg, align 8, !tbaa !355, !noalias !354
  br label %bb.fm

bb.fm:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i, %bb.fi, %bb.fi
  %.val.i1728.i.i.i.i.i234 = phi i32 [ %.val.i17.i.i.i.i.i231, %bb.fi ], [ %.val.i17.i.i.i.i.i231, %bb.fi ], [ %i.atj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i.i.i.i ]
  %i.atk = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i232, i64 8 ; 2 uses
  %.not.i7.i.i.i.i235 = icmp eq ptr %i.atk, %i.arw
  br i1 %.not.i7.i.i.i.i235, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i, label %bb.fi, !llvm.loop !277

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i: ; preds = %bb.fm, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E9initEmptyEv.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.val7.i.i.i.i208) #15, !noalias !354
  %.val15.i.i.i.i.pr.pre.i.i236 = load i32, ptr %i.api, align 8, !tbaa !149, !noalias !354 ; 2 uses
  %.val14.i.i.i.i.pre.i.i237 = load ptr, ptr %i.aph, align 8, !tbaa !148, !noalias !354
  %i.atl = icmp eq i32 %.val15.i.i.i.i.pr.pre.i.i236, 0
  br i1 %i.atl, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i: ; preds = %.lr.ph.i.i.i56.i.i269.prol.loopexit, %.lr.ph.i.i.i56.i.i269, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i
  %.val15.i.i.i.i.pr129.i.i238 = phi i32 [ %.val15.i.i.i.i.pr.pre.i.i236, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i ], [ %.val7.i.i.i.i.i266, %.lr.ph.i.i.i56.i.i269 ], [ %.val7.i.i.i.i.i266, %.lr.ph.i.i.i56.i.i269.prol.loopexit ]
  %.val14.i.i.i.i128.i.i239 = phi ptr [ %.val14.i.i.i.i.pre.i.i237, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i ], [ %i.are, %.lr.ph.i.i.i56.i.i269 ], [ %i.are, %.lr.ph.i.i.i56.i.i269.prol.loopexit ] ; 2 uses
  %i.atm = ptrtoint ptr %storemerge.i.i206 to i64
  %i.atn = trunc i64 %i.atm to i32                ; 2 uses
  %i.ato = lshr i32 %i.atn, 4
  %i.atp = lshr i32 %i.atn, 9
  %i.atq = xor i32 %i.ato, %i.atp
  %i.atr = add i32 %.val15.i.i.i.i.pr129.i.i238, -1 ; 2 uses
  %.02710.i.i.i.i240 = and i32 %i.atr, %i.atq     ; 2 uses
  %i.ats = zext nneg i32 %.02710.i.i.i.i240 to i64
  %i.att = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i128.i.i239, i64 %i.ats ; 3 uses
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !136, !noalias !354 ; 2 uses
  %i.atv = icmp eq ptr %storemerge.i.i206, %i.atu
  br i1 %i.atv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, label %.lr.ph.i.i.i47.i241, !prof !86

.lr.ph.i.i.i47.i241:                              ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i, %bb.fo
  %i.atw = phi ptr [ %i.aug, %bb.fo ], [ %i.atu, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ] ; 2 uses
  %i.atx = phi ptr [ %i.auf, %bb.fo ], [ %i.att, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ] ; 2 uses
  %.02713.i.i.i.i242 = phi i32 [ %.027.i.i.i50.i247, %bb.fo ], [ %.02710.i.i.i.i240, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ]
  %.012.i.i.i.i243 = phi i32 [ %i.auc, %bb.fo ], [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ] ; 2 uses
  %.02911.i.i.i.i244 = phi ptr [ %spec.select.i.i.i49.i246, %bb.fo ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ] ; 4 uses
  %i.aty = icmp eq ptr %i.atw, inttoptr (i64 -8 to ptr)
  br i1 %i.aty, label %bb.fn, label %bb.fo, !prof !60

bb.fn:                                            ; preds = %.lr.ph.i.i.i47.i241
  %.not.i.i.i52.i252 = icmp eq ptr %.02911.i.i.i.i244, null
  %i.atz = select i1 %.not.i.i.i52.i252, ptr %i.atx, ptr %.02911.i.i.i.i244
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i

bb.fo:                                            ; preds = %.lr.ph.i.i.i47.i241
  %i.aua = icmp eq ptr %i.atw, inttoptr (i64 -16 to ptr)
  %i.aub = icmp eq ptr %.02911.i.i.i.i244, null
  %or.cond.not.i.i.i48.i245 = select i1 %i.aua, i1 %i.aub, i1 false
  %spec.select.i.i.i49.i246 = select i1 %or.cond.not.i.i.i48.i245, ptr %i.atx, ptr %.02911.i.i.i.i244
  %i.auc = add i32 %.012.i.i.i.i243, 1
  %i.aud = add i32 %.012.i.i.i.i243, %.02713.i.i.i.i242
  %.027.i.i.i50.i247 = and i32 %i.aud, %i.atr     ; 2 uses
  %i.aue = zext i32 %.027.i.i.i50.i247 to i64
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %.val14.i.i.i.i128.i.i239, i64 %i.aue ; 3 uses
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !136, !noalias !354 ; 2 uses
  %i.auh = icmp eq ptr %storemerge.i.i206, %i.aug
  br i1 %i.auh, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, label %.lr.ph.i.i.i47.i241, !prof !87, !llvm.loop !267

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i: ; preds = %bb.fo, %bb.fn, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i, %bb.fg
  %.sink.i.i52.i.i248 = phi ptr [ %i.atz, %bb.fn ], [ null, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.i.i ], [ %i.att, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E4growEj.exit.thread.i.i ], [ null, %bb.fg ], [ %i.auf, %bb.fo ]
  %.val.i.i.pre.i.i.i.i.i249 = load i32, ptr %i.aqg, align 8, !tbaa !355, !noalias !354
  br label %bb.fp

bb.fp:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i, %bb.ff
  %i.aui = phi ptr [ %.sink.i.i52.i.i248, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i ], [ %.sink.i.i.i.i.i.i219, %bb.ff ] ; 2 uses
  %.val.i.i.i.i.i.i51.i250 = phi i32 [ %.val.i.i.pre.i.i.i.i.i249, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E15LookupBucketForIS7_EEbRKT_RPSD_.exit.i.i ], [ %.val12.i.i.i.i.i.i220, %bb.ff ]
  %i.auj = add i32 %.val.i.i.i.i.i.i51.i250, 1
  store i32 %i.auj, ptr %i.aqg, align 8, !tbaa !355, !noalias !354
  %i.auk = load ptr, ptr %i.aui, align 8, !tbaa !136, !noalias !354
  %i.aul = icmp eq ptr %i.auk, inttoptr (i64 -8 to ptr)
  br i1 %i.aul, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E16InsertIntoBucketIRKS7_JRS9_EEEPSD_SK_OT_DpOT0_.exit.i.i.i.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.aum = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 84 ; 2 uses
  %.val.i20.i.i.i.i.i.i251 = load i32, ptr %i.aum, align 4, !tbaa !356, !noalias !354
  %i.aun = add i32 %.val.i20.i.i.i.i.i.i251, -1
  store i32 %i.aun, ptr %i.aum, align 4, !tbaa !356, !noalias !354
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E16InsertIntoBucketIRKS7_JRS9_EEEPSD_SK_OT_DpOT0_.exit.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E16InsertIntoBucketIRKS7_JRS9_EEEPSD_SK_OT_DpOT0_.exit.i.i.i.i: ; preds = %bb.fq, %bb.fp
  store ptr %storemerge.i.i206, ptr %i.aui, align 8, !tbaa !136, !noalias !354
  br label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i

.critedge.i39.i191:                               ; preds = %bb.ey, %bb.ex, %bb.ev, %bb.eu, %bb.et
  %i.auo = getelementptr inbounds nuw i8, ptr %.03184.i.i189, i64 8 ; 2 uses
  %.not38.i.i192 = icmp eq ptr %i.auo, %i.anz
  br i1 %.not38.i.i192, label %_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i, label %bb.et

_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_.exit.i.i: ; preds = %.critedge.i39.i191, %bb.fd, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E16InsertIntoBucketIRKS7_JRS9_EEEPSD_SK_OT_DpOT0_.exit.i.i.i.i, %bb.fb, %bb.es, %bb.er, %.lr.ph87.i.i157
  %i.aup = getelementptr inbounds nuw i8, ptr %.sroa.058.086.i.i158, i64 24 ; 2 uses
  %.not67.i.i160 = icmp eq ptr %i.aup, %.val44.i.i155
  br i1 %.not67.i.i160, label %.loopexit70.i.i161, label %.lr.ph87.i.i157

_ZN12_GLOBAL__N_112StringPackerIDsE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i: ; preds = %.loopexit70.i.i161, %_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i
  %.sroa.9.5113.i163 = phi ptr [ %.sroa.074.2.i143, %_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE.exit.i ], [ %.sroa.9.2.i144, %.loopexit70.i.i161 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !321
  br label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %.lr.ph.i164, %_ZN12_GLOBAL__N_112StringPackerIDsE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i
  %.0171.i165 = phi ptr [ %i.auq, %.lr.ph.i164 ], [ %.val11, %_ZN12_GLOBAL__N_112StringPackerIDsE10planLayoutERKSt6vectorIS2_INS1_7OverlapESaIS3_EESaIS5_EE.exit.i ] ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_112StringPackerIDsE14layoutIfNeededEPNS1_11StringEntryEPSt6vectorIDsSaIDsEE(ptr noundef %.0171.i165, ptr noundef nonnull align 8 %15)
  %i.auq = getelementptr inbounds nuw i8, ptr %.0171.i165, i64 96 ; 2 uses
  %.not.i166 = icmp eq ptr %i.auq, %.val12
  br i1 %.not.i166, label %._crit_edge.i167, label %.lr.ph.i164

._crit_edge.i167:                                 ; preds = %.lr.ph.i164
  br i1 %.not88.i.i150, label %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i58.i168

.lr.ph.i.i.i58.i168:                              ; preds = %._crit_edge.i167, %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i
  %.06.i.i.i59.i169 = phi ptr [ %i.auv, %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i ], [ %.sroa.074.2.i143, %._crit_edge.i167 ] ; 3 uses
  %.0.val.i.i.i.i170 = load ptr, ptr %.06.i.i.i59.i169, align 8, !tbaa !346 ; 3 uses
  %.not.i.i.i.i.i.i.i60.i171 = icmp eq ptr %.0.val.i.i.i.i170, null
  br i1 %.not.i.i.i.i.i.i.i60.i171, label %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph.i.i.i58.i168
  %i.aur = getelementptr i8, ptr %.06.i.i.i59.i169, i64 16
  %.0.val4.i.i.i.i172 = load ptr, ptr %i.aur, align 8, !tbaa !344
  %i.aus = ptrtoint ptr %.0.val4.i.i.i.i172 to i64
  %i.aut = ptrtoint ptr %.0.val.i.i.i.i170 to i64
  %i.auu = sub i64 %i.aus, %i.aut
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i.i170, i64 noundef %i.auu) #18
  br label %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i: ; preds = %bb.fr, %.lr.ph.i.i.i58.i168
  %i.auv = getelementptr inbounds nuw i8, ptr %.06.i.i.i59.i169, i64 24 ; 2 uses
  %.not.i.i.i61.i173 = icmp eq ptr %i.auv, %.sroa.9.5113.i163
  br i1 %.not.i.i.i61.i173, label %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i58.i168, !llvm.loop !278

_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvPT_.exit.i.i.i.i, %._crit_edge.i167
  %.not.i.i2.i.i174 = icmp eq ptr %.sroa.074.2.i143, null
  br i1 %.not.i.i2.i.i174, label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i, label %bb.fs

bb.fs:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvT_S8_.exit.i.i
  %i.auw = ptrtoint ptr %.sroa.14.2.i145 to i64
  %i.aux = ptrtoint ptr %.sroa.074.2.i143 to i64
  %i.auy = sub i64 %i.auw, %i.aux
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.2.i143, i64 noundef %i.auy) #18
  br label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i

_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i: ; preds = %bb.fs, %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EEEvT_S8_.exit.i.i
  %.not5.i.i.i63.i175 = icmp eq ptr %.sroa.075.3.i114, %.sroa.11.3.i113
  br i1 %.not5.i.i.i63.i175, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i64.i176

.lr.ph.i.i.i64.i176:                              ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvPT_.exit.i.i.i.i
  %.06.i.i.i65.i177 = phi ptr [ %i.ave, %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvPT_.exit.i.i.i.i ], [ %.sroa.075.3.i114, %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.auz = getelementptr i8, ptr %.06.i.i.i65.i177, i64 16
  %.0.val.i.i.i66.i178 = load ptr, ptr %i.auz, align 8, !tbaa !330 ; 3 uses
  %.not.i.i.i.i.i.i.i.i67.i179 = icmp eq ptr %.0.val.i.i.i66.i178, null
  br i1 %.not.i.i.i.i.i.i.i.i67.i179, label %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvPT_.exit.i.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph.i.i.i64.i176
  %i.ava = getelementptr i8, ptr %.06.i.i.i65.i177, i64 32
  %.0.val4.i.i.i68.i180 = load ptr, ptr %i.ava, align 8, !tbaa !135
  %i.avb = ptrtoint ptr %.0.val4.i.i.i68.i180 to i64
  %i.avc = ptrtoint ptr %.0.val.i.i.i66.i178 to i64
  %i.avd = sub i64 %i.avb, %i.avc
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i66.i178, i64 noundef %i.avd) #18
  br label %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvPT_.exit.i.i.i.i: ; preds = %bb.ft, %.lr.ph.i.i.i64.i176
  %i.ave = getelementptr inbounds nuw i8, ptr %.06.i.i.i65.i177, i64 40 ; 2 uses
  %.not.i.i.i69.i181 = icmp eq ptr %i.ave, %.sroa.11.3.i113
  br i1 %.not.i.i.i69.i181, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i64.i176, !llvm.loop !279

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvPT_.exit.i.i.i.i, %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i
  %.not.i.i2.i72.i182 = icmp eq ptr %.sroa.075.3.i114, null
  br i1 %.not.i.i2.i72.i182, label %_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.i
  %i.avf = sub i64 %.sroa.17.3.i112, %i.aip
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.075.3.i114, i64 noundef %i.avf) #18
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.i, %bb.fu
  %i.avg = load ptr, ptr %8, align 8, !tbaa !121, !noalias !321
  call void @_ZdlPv(ptr noundef %i.avg) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !321
  %i.avh = load ptr, ptr %2, align 8, !tbaa !67   ; 3 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !64
  %i.avk = load <2 x ptr>, ptr %15, align 16, !tbaa !124
  store <2 x ptr> %i.avk, ptr %2, align 8, !tbaa !124
  %i.avl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.avm = load ptr, ptr %i.avl, align 16, !tbaa !64
  store ptr %i.avm, ptr %i.avi, align 8, !tbaa !64
  %.not.i.i.i.i.i417 = icmp eq ptr %i.avh, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i417, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit, label %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit

_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit:               ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit
  %i.avn = ptrtoint ptr %i.avj to i64
  %i.avo = ptrtoint ptr %i.avh to i64
  %i.avp = sub i64 %i.avn, %i.avo
  call void @_ZdlPvm(ptr noundef nonnull %i.avh, i64 noundef %i.avp) #18
  %.pr454 = load ptr, ptr %15, align 16, !tbaa !67 ; 3 uses
  %.not.i.i.i418 = icmp eq ptr %.pr454, null
  br i1 %.not.i.i.i418, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit
  %i.avq = load ptr, ptr %i.avl, align 16, !tbaa !64
  %i.avr = ptrtoint ptr %i.avq to i64
  %i.avs = ptrtoint ptr %.pr454 to i64
  %i.avt = sub i64 %i.avr, %i.avs
  call void @_ZdlPvm(ptr noundef nonnull %.pr454, i64 noundef %i.avt) #18
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit

_ZNSt6vectorIDsSaIDsEED2Ev.exit:                  ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, %_ZNSt6vectorIDsSaIDsEEaSEOS1_.exit, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.gb

bb.fw:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %.val = load ptr, ptr %i.g, align 8, !tbaa !76  ; 2 uses
  %.val6 = load ptr, ptr %i.h, align 8, !tbaa !77 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false), !alias.scope !358
  %.not14.i = icmp eq ptr %.val6, %.val
  br i1 %.not14.i, label %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, label %.lr.ph.i419

.lr.ph.i419:                                      ; preds = %bb.fw
  %i.avu = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fx, %.lr.ph.i419
  %.015.i = phi ptr [ %.val, %.lr.ph.i419 ], [ %i.awh, %bb.fx ] ; 4 uses
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !151, !alias.scope !358
  %i.avw = load ptr, ptr %16, align 16, !tbaa !113, !alias.scope !358 ; 2 uses
  %i.avx = ptrtoint ptr %i.avv to i64
  %i.avy = ptrtoint ptr %i.avw to i64
  %i.avz = sub i64 %i.avx, %i.avy                 ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %.015.i, i64 24
  store i64 %i.avz, ptr %i.awa, align 8, !tbaa !152, !noalias !358
  %i.awb = getelementptr inbounds nuw i8, ptr %.015.i, i64 8
  %i.awc = load ptr, ptr %i.awb, align 8, !tbaa !54, !noalias !358 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !55, !noalias !358
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awc, i64 %i.awe
  %i.awg = getelementptr inbounds i8, ptr %i.avw, i64 %i.avz
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr %i.awg, ptr noundef %i.awc, ptr noundef %i.awf)
  %i.awh = getelementptr inbounds nuw i8, ptr %.015.i, i64 96 ; 2 uses
  %.not.i420 = icmp eq ptr %i.awh, %.val6
  br i1 %.not.i420, label %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, label %bb.fx

_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit: ; preds = %bb.fx
  %i.awi = load <2 x ptr>, ptr %16, align 16, !tbaa !58
  %.phi.trans.insert666 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.pre667 = load ptr, ptr %.phi.trans.insert666, align 16, !tbaa !73
  br label %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, %bb.fw
  %i.awj = phi ptr [ %.pre667, %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ null, %bb.fw ]
  %i.awk = phi <2 x ptr> [ %i.awi, %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ splat (ptr null), %bb.fw ]
  %i.awl = load ptr, ptr %1, align 8, !tbaa !113  ; 3 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.awn = load ptr, ptr %i.awm, align 8, !tbaa !73
  store <2 x ptr> %i.awk, ptr %1, align 8, !tbaa !58
  %i.awo = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.awj, ptr %i.awm, align 8, !tbaa !73
  %.not.i.i.i.i.i422 = icmp eq ptr %i.awl, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i422, label %_ZNSt6vectorIhSaIhEED2Ev.exit425, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit423

_ZNSt6vectorIhSaIhEEaSEOS1_.exit423:              ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit
  %i.awp = ptrtoint ptr %i.awn to i64
  %i.awq = ptrtoint ptr %i.awl to i64
  %i.awr = sub i64 %i.awp, %i.awq
  call void @_ZdlPvm(ptr noundef nonnull %i.awl, i64 noundef %i.awr) #18
  %.pr455 = load ptr, ptr %16, align 16, !tbaa !113 ; 3 uses
  %.not.i.i.i424 = icmp eq ptr %.pr455, null
  br i1 %.not.i.i.i424, label %_ZNSt6vectorIhSaIhEED2Ev.exit425, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit423
  %i.aws = load ptr, ptr %i.awo, align 16, !tbaa !73
  %i.awt = ptrtoint ptr %i.aws to i64
  %i.awu = ptrtoint ptr %.pr455 to i64
  %i.awv = sub i64 %i.awt, %i.awu
  call void @_ZdlPvm(ptr noundef nonnull %.pr455, i64 noundef %i.awv) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit425

_ZNSt6vectorIhSaIhEED2Ev.exit425:                 ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, %_ZNSt6vectorIhSaIhEEaSEOS1_.exit423, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  %i.aww = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val9 = load ptr, ptr %i.aww, align 8, !tbaa !116 ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val10 = load ptr, ptr %i.awx, align 8, !tbaa !117 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false), !alias.scope !359
  %.not14.i427 = icmp eq ptr %.val10, %.val9
  br i1 %.not14.i427, label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, label %.lr.ph.i428

.lr.ph.i428:                                      ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit425
  %i.awy = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fz, %.lr.ph.i428
  %.015.i429 = phi ptr [ %.val9, %.lr.ph.i428 ], [ %i.axm, %bb.fz ] ; 4 uses
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !63, !alias.scope !359
  %i.axa = load ptr, ptr %17, align 16, !tbaa !67, !alias.scope !359 ; 2 uses
  %i.axb = ptrtoint ptr %i.awz to i64
  %i.axc = ptrtoint ptr %i.axa to i64
  %i.axd = sub i64 %i.axb, %i.axc                 ; 2 uses
  %i.axe = ashr exact i64 %i.axd, 1
  %i.axf = getelementptr inbounds nuw i8, ptr %.015.i429, i64 24
  store i64 %i.axe, ptr %i.axf, align 8, !tbaa !153, !noalias !359
  %i.axg = getelementptr inbounds nuw i8, ptr %.015.i429, i64 8
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !127, !noalias !359 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %.015.i429, i64 16
  %i.axj = load i64, ptr %i.axi, align 8, !tbaa !126, !noalias !359
  %i.axk = getelementptr inbounds nuw [2 x i8], ptr %i.axh, i64 %i.axj
  %i.axl = getelementptr inbounds i8, ptr %i.axa, i64 %i.axd
  call void @_ZNSt6vectorIDsSaIDsEE15_M_range_insertIPKDsEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.axl, ptr noundef %i.axh, ptr noundef %i.axk)
  %i.axm = getelementptr inbounds nuw i8, ptr %.015.i429, i64 96 ; 2 uses
  %.not.i430 = icmp eq ptr %i.axm, %.val10
  br i1 %.not.i430, label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, label %bb.fz

_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit: ; preds = %bb.fz
  %i.axn = load <2 x ptr>, ptr %17, align 16, !tbaa !124
  %.phi.trans.insert671 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.pre672 = load ptr, ptr %.phi.trans.insert671, align 16, !tbaa !64
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit, %_ZNSt6vectorIhSaIhEED2Ev.exit425
  %i.axo = phi ptr [ %.pre672, %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ null, %_ZNSt6vectorIhSaIhEED2Ev.exit425 ]
  %i.axp = phi <2 x ptr> [ %i.axn, %_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit.loopexit ], [ splat (ptr null), %_ZNSt6vectorIhSaIhEED2Ev.exit425 ]
  %i.axq = load ptr, ptr %2, align 8, !tbaa !67   ; 3 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@bcmp
!9 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !11, i64 0}
!15 = !{!"p1 _ZTSN6hermes16StringTableEntryE", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIN6hermes16StringTableEntryESaIS1_EE", !18, i64 0}
!20 = !{!"p1 omnipotent char", !14, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIhSaIhEE", !23, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"_ZTSN6hermes3hbc24ConsecutiveStringStorageE", !19, i64 0, !24, i64 24, !25, i64 48, !25, i64 49}
!27 = !{!26, !25, i64 48}
!28 = !{!26, !25, i64 49}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!30 = !{!"any p2 pointer", !14, i64 0}
!31 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!32 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E", !29, i64 0, !29, i64 8, !29, i64 16, !31, i64 24}
!33 = !{!32, !29, i64 0}
!34 = !{!32, !29, i64 16}
!35 = !{!32, !31, i64 24}
!36 = !{!"p2 _ZTSSt6vectorIDsSaIDsEE", !30, i64 0}
!37 = !{!"long", !11, i64 0}
!38 = !{!"p1 _ZTSSt6vectorIDsSaIDsEE", !14, i64 0}
!39 = !{!"_ZTSSt15_Deque_iteratorISt6vectorIDsSaIDsEERS2_PS2_E", !38, i64 0, !38, i64 8, !38, i64 16, !36, i64 24}
!40 = !{!"_ZTSNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_Deque_impl_dataE", !36, i64 0, !37, i64 8, !39, i64 16, !39, i64 48}
!41 = !{!40, !37, i64 8}
!42 = !{!40, !36, i64 0}
!43 = !{!38, !38, i64 0}
!44 = !{!39, !36, i64 24}
!45 = !{!39, !38, i64 8}
!46 = !{!39, !38, i64 16}
!47 = !{!40, !38, i64 16}
!48 = !{!40, !38, i64 48}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !37, i64 8, !11, i64 16}
!51 = !{!50, !20, i64 0}
!52 = !{!50, !37, i64 8}
!53 = !{!"_ZTSN4llvh8ArrayRefIhEE", !20, i64 0, !37, i64 8}
!54 = !{!53, !20, i64 0}
!55 = !{!53, !37, i64 8}
!56 = !{!40, !38, i64 64}
!57 = !{!39, !38, i64 0}
!58 = !{!20, !20, i64 0}
!59 = !{!11, !11, i64 0}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = !{!"p1 char16_t", !14, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIDsSaIDsEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!62, !61, i64 8}
!64 = !{!62, !61, i64 16}
!65 = !{!"char16_t", !11, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!62, !61, i64 0}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!29, !29, i64 0}
!70 = !{!16, !15, i64 0}
!71 = !{!16, !15, i64 16}
!72 = !{!15, !15, i64 0}
!73 = !{!21, !20, i64 16}
!74 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !14, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 0}
!77 = !{!75, !74, i64 8}
!78 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIjEE", !14, i64 0}
!79 = !{!"_ZTSN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEEE", !78, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!80 = !{!79, !12, i64 16}
!81 = !{!79, !78, i64 0}
!82 = !{!79, !12, i64 8}
!83 = !{!79, !12, i64 12}
!84 = !{!37, !37, i64 0}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!"branch_weights", i32 1999, i32 1}
!87 = !{!"branch_weights", i32 1, i32 0}
!88 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIhE12HashedSuffixE", !53, i64 0, !12, i64 16}
!89 = !{!88, !12, i64 16}
!90 = !{!"branch_weights", i32 2146410443, i32 1073205}
!91 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!92 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EEEE", !14, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"p2 _ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !30, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!97 = !{!96, !94, i64 16}
!98 = !{!74, !74, i64 0}
!99 = !{i64 0, i64 8, !58, i64 8, i64 8, !84}
!100 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryEEE", !14, i64 0}
!101 = !{!"_ZTSN4llvh8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_EENS7_12DenseSetPairIS6_EEEE", !100, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!102 = !{!"_ZTSN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_EE", !101, i64 0}
!103 = !{!"_ZTSN4llvh8DenseSetIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_12DenseMapInfoIS6_EEEE", !102, i64 0}
!104 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !12, i64 0, !53, i64 8, !37, i64 24, !74, i64 32, !37, i64 40, !74, i64 48, !74, i64 56, !37, i64 64, !103, i64 72}
!105 = !{!104, !74, i64 32}
!106 = !{!104, !12, i64 0}
!107 = !{!104, !37, i64 40}
!108 = !{!104, !74, i64 56}
!109 = !{!104, !74, i64 48}
!110 = !{!101, !100, i64 0}
!111 = !{!101, !12, i64 16}
!112 = !{!104, !37, i64 64}
!113 = !{!21, !20, i64 0}
!114 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !14, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!116 = !{!115, !114, i64 0}
!117 = !{!115, !114, i64 8}
!118 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairImEE", !14, i64 0}
!119 = !{!"_ZTSN4llvh8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEEEE", !118, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!120 = !{!119, !12, i64 16}
!121 = !{!119, !118, i64 0}
!122 = !{!119, !12, i64 8}
!123 = !{!119, !12, i64 12}
!124 = !{!61, !61, i64 0}
!125 = !{!"_ZTSN4llvh8ArrayRefIDsEE", !61, i64 0, !37, i64 8}
!126 = !{!125, !37, i64 8}
!127 = !{!125, !61, i64 0}
!128 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixE", !125, i64 0, !12, i64 16}
!129 = !{!128, !12, i64 16}
!130 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EEEE", !14, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!"p2 _ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !30, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!135 = !{!134, !132, i64 16}
!136 = !{!114, !114, i64 0}
!137 = !{i64 0, i64 8, !124, i64 8, i64 8, !84}
!138 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEE", !14, i64 0}
!139 = !{!"_ZTSN4llvh8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_EENS7_12DenseSetPairIS6_EEEE", !138, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!140 = !{!"_ZTSN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_EE", !139, i64 0}
!141 = !{!"_ZTSN4llvh8DenseSetIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_12DenseMapInfoIS6_EEEE", !140, i64 0}
!142 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !12, i64 0, !125, i64 8, !37, i64 24, !114, i64 32, !37, i64 40, !114, i64 48, !114, i64 56, !37, i64 64, !141, i64 72}
!143 = !{!142, !114, i64 32}
!144 = !{!142, !12, i64 0}
!145 = !{!142, !37, i64 40}
!146 = !{!142, !114, i64 56}
!147 = !{!142, !114, i64 48}
!148 = !{!139, !138, i64 0}
!149 = !{!139, !12, i64 16}
!150 = !{!142, !37, i64 64}
!151 = !{!21, !20, i64 8}
!152 = !{!104, !37, i64 24}
!153 = !{!142, !37, i64 24}
!154 = !{!"llvm.loop.isvectorized", i32 1}
!155 = !{!"llvm.loop.unroll.runtime.disable"}
!156 = !{!16, !15, i64 8}
!157 = !{!115, !114, i64 16}
!158 = !{!75, !74, i64 16}
!159 = !{!40, !36, i64 40}
!160 = !{!40, !36, i64 72}
!161 = !{!"_ZTSN6hermes16StringTableEntryE", !12, i64 0, !12, i64 4}
!162 = !{!161, !12, i64 4}
!163 = !{!161, !12, i64 0}
!164 = !{!78, !78, i64 0}
!165 = !{!118, !118, i64 0}
!166 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!167 = !{!"_ZTSN4llvh5Twine8NodeKindE", !11, i64 0}
!168 = !{!"_ZTSN4llvh5TwineE", !11, i64 0, !11, i64 8, !167, i64 16, !167, i64 17}
!169 = !{!168, !167, i64 17}
!170 = !{!168, !167, i64 16}
!171 = distinct !{!171, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!172 = distinct !{!172, !171, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!173 = distinct !{!173, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!174 = distinct !{!174, !173, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!175 = distinct !{!175, !68}
!176 = !{!172}
!177 = !{!174}
!178 = distinct !{!178, !"_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE"}
!179 = distinct !{!179, !178, !"_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE: argument 0"}
!180 = distinct !{!180, !"_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE"}
!181 = distinct !{!181, !180, !"_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE: argument 0"}
!182 = distinct !{!182, !"_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE"}
!183 = distinct !{!183, !182, !"_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE: argument 0"}
!184 = distinct !{!184, !"_ZN4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E6insertEOj"}
!185 = distinct !{!185, !184, !"_ZN4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E6insertEOj: argument 0"}
!186 = distinct !{!186, !85}
!187 = distinct !{!187, !68}
!188 = distinct !{!188, !68}
!189 = distinct !{!189, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv"}
!190 = distinct !{!190, !189, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv: argument 0"}
!191 = distinct !{!191, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix15getTombstoneKeyEv"}
!192 = distinct !{!192, !191, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix15getTombstoneKeyEv: argument 0"}
!193 = distinct !{!193, !68}
!194 = distinct !{!194, !68}
!195 = distinct !{!195, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_"}
!196 = distinct !{!196, !195, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!197 = distinct !{!197, !195, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!198 = distinct !{!198, !68}
!199 = distinct !{!199, !68}
!200 = distinct !{!200, !68}
!201 = distinct !{!201, !"_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE"}
!202 = distinct !{!202, !201, !"_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE: argument 0"}
!203 = distinct !{!203, !68}
!204 = distinct !{!204, !68}
!205 = distinct !{!205, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_"}
!206 = distinct !{!206, !205, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!207 = distinct !{!207, !205, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!208 = distinct !{!208, !68}
!209 = distinct !{!209, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE7OverlapES3_SaIS3_EEvPT_PT0_RT1_"}
!210 = distinct !{!210, !209, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE7OverlapES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!211 = distinct !{!211, !209, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE7OverlapES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!212 = distinct !{!212, !68}
!213 = distinct !{!213, !68}
!214 = distinct !{!214, !68}
!215 = distinct !{!215, !68}
!216 = distinct !{!216, !68}
!217 = distinct !{!217, !68}
!218 = distinct !{!218, !68}
!219 = distinct !{!219, !"_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_"}
!220 = distinct !{!220, !219, !"_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_: argument 0"}
!221 = distinct !{!221, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E11try_emplaceIJRS9_EEESt4pairINS_16DenseMapIteratorIS7_S9_SB_SD_Lb0EEEbERKS7_DpOT_"}
!222 = distinct !{!222, !221, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E11try_emplaceIJRS9_EEESt4pairINS_16DenseMapIteratorIS7_S9_SB_SD_Lb0EEEbERKS7_DpOT_: argument 0"}
!223 = distinct !{!223, !85}
!224 = distinct !{!224, !68}
!225 = distinct !{!225, !85}
!226 = distinct !{!226, !68}
!227 = distinct !{!227, !68}
!228 = distinct !{!228, !68}
!229 = distinct !{!229, !"_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE"}
!230 = distinct !{!230, !229, !"_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE: argument 0"}
!231 = distinct !{!231, !"_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE"}
!232 = distinct !{!232, !231, !"_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE: argument 0"}
!233 = distinct !{!233, !"_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE"}
!234 = distinct !{!234, !233, !"_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE: argument 0"}
!235 = distinct !{!235, !"_ZN4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E6insertEOm"}
!236 = distinct !{!236, !235, !"_ZN4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E6insertEOm: argument 0"}
!237 = distinct !{!237, !85}
!238 = distinct !{!238, !68}
!239 = distinct !{!239, !68}
!240 = distinct !{!240, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv"}
!241 = distinct !{!241, !240, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv: argument 0"}
!242 = distinct !{!242, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix15getTombstoneKeyEv"}
!243 = distinct !{!243, !242, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix15getTombstoneKeyEv: argument 0"}
!244 = distinct !{!244, !68}
!245 = distinct !{!245, !68}
!246 = distinct !{!246, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_"}
!247 = distinct !{!247, !246, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!248 = distinct !{!248, !246, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!249 = distinct !{!249, !68}
!250 = distinct !{!250, !68}
!251 = distinct !{!251, !68}
!252 = distinct !{!252, !"_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE"}
!253 = distinct !{!253, !252, !"_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE: argument 0"}
!254 = distinct !{!254, !68}
!255 = distinct !{!255, !68}
!256 = distinct !{!256, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_"}
!257 = distinct !{!257, !256, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!258 = distinct !{!258, !256, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!259 = distinct !{!259, !68}
!260 = distinct !{!260, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE7OverlapES3_SaIS3_EEvPT_PT0_RT1_"}
!261 = distinct !{!261, !260, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE7OverlapES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!262 = distinct !{!262, !260, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE7OverlapES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!263 = distinct !{!263, !68}
!264 = distinct !{!264, !68}
!265 = distinct !{!265, !68}
!266 = distinct !{!266, !68}
!267 = distinct !{!267, !68}
!268 = distinct !{!268, !68}
!269 = distinct !{!269, !68}
!270 = distinct !{!270, !"_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_"}
!271 = distinct !{!271, !270, !"_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_: argument 0"}
!272 = distinct !{!272, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E11try_emplaceIJRS9_EEESt4pairINS_16DenseMapIteratorIS7_S9_SB_SD_Lb0EEEbERKS7_DpOT_"}
!273 = distinct !{!273, !272, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E11try_emplaceIJRS9_EEESt4pairINS_16DenseMapIteratorIS7_S9_SB_SD_Lb0EEEbERKS7_DpOT_: argument 0"}
!274 = distinct !{!274, !85}
!275 = distinct !{!275, !68}
!276 = distinct !{!276, !85}
!277 = distinct !{!277, !68}
!278 = distinct !{!278, !68}
!279 = distinct !{!279, !68}
!280 = distinct !{!280, !"_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE"}
!281 = distinct !{!281, !280, !"_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE: argument 0"}
!282 = distinct !{!282, !"_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE"}
!283 = distinct !{!283, !282, !"_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE: argument 0"}
!284 = !{!179}
!285 = !{!181}
!286 = !{!181, !179}
!287 = !{!183, !179}
!288 = !{!185, !181, !179}
!289 = !{!185, !179}
!290 = !{!192, !190}
!291 = !{i64 0, i64 8, !58, i64 8, i64 8, !84, i64 16, i64 4, !13}
!292 = !{!96, !94, i64 8}
!293 = !{!96, !94, i64 0}
!294 = !{!196}
!295 = !{!197}
!296 = !{!196, !197}
!297 = !{!196, !183, !179}
!298 = !{!197, !183, !179}
!299 = !{!202, !179}
!300 = !{!206}
!301 = !{!207}
!302 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIhE7OverlapE", !14, i64 0}
!303 = !{!302, !302, i64 0}
!304 = !{!206, !202, !179}
!305 = !{!207, !202, !179}
!306 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_Vector_impl_dataE", !302, i64 0, !302, i64 8, !302, i64 16}
!307 = !{!306, !302, i64 16}
!308 = !{!306, !302, i64 8}
!309 = !{!306, !302, i64 0}
!310 = !{i64 0, i64 8, !95, i64 8, i64 8, !84, i64 16, i64 8, !98}
!311 = !{!211, !210}
!312 = !{!"_ZTSN4llvh8ArrayRefIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEE", !94, i64 0, !37, i64 8}
!313 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIhE7OverlapE", !312, i64 0, !74, i64 16}
!314 = !{!313, !74, i64 16}
!315 = !{!312, !94, i64 0}
!316 = !{!312, !37, i64 8}
!317 = !{!222, !220, !179}
!318 = !{!101, !12, i64 8}
!319 = !{!101, !12, i64 12}
!320 = !{!222, !220}
!321 = !{!230}
!322 = !{!232}
!323 = !{!232, !230}
!324 = !{!234, !230}
!325 = !{!236, !232, !230}
!326 = !{!236, !230}
!327 = !{!243, !241}
!328 = !{i64 0, i64 8, !124, i64 8, i64 8, !84, i64 16, i64 4, !13}
!329 = !{!134, !132, i64 8}
!330 = !{!134, !132, i64 0}
!331 = !{!247}
!332 = !{!248}
!333 = !{!247, !248}
!334 = !{!247, !234, !230}
!335 = !{!248, !234, !230}
!336 = !{!253, !230}
!337 = !{!257}
!338 = !{!258}
!339 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIDsE7OverlapE", !14, i64 0}
!340 = !{!339, !339, i64 0}
!341 = !{!257, !253, !230}
!342 = !{!258, !253, !230}
!343 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_Vector_impl_dataE", !339, i64 0, !339, i64 8, !339, i64 16}
!344 = !{!343, !339, i64 16}
!345 = !{!343, !339, i64 8}
!346 = !{!343, !339, i64 0}
!347 = !{i64 0, i64 8, !133, i64 8, i64 8, !84, i64 16, i64 8, !136}
!348 = !{!262, !261}
!349 = !{!"_ZTSN4llvh8ArrayRefIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEE", !132, i64 0, !37, i64 8}
!350 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIDsE7OverlapE", !349, i64 0, !114, i64 16}
!351 = !{!350, !114, i64 16}
!352 = !{!349, !132, i64 0}
!353 = !{!349, !37, i64 8}
!354 = !{!273, !271, !230}
!355 = !{!139, !12, i64 8}
!356 = !{!139, !12, i64 12}
!357 = !{!273, !271}
!358 = !{!281}
!359 = !{!283}
!360 = distinct !{!360, !154, !155}
!361 = distinct !{!361, !154, !155}
!362 = distinct !{!362, !154}
!363 = !{!"branch_weights", i32 8, i32 8}
!364 = distinct !{!364, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE5beginEv"}
!365 = distinct !{!365, !364, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE5beginEv: argument 0"}
!366 = distinct !{!366, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!367 = distinct !{!367, !366, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!368 = distinct !{!368, !68}
!369 = !{!365}
!370 = !{!14, !14, i64 0}
!371 = !{!367}
!372 = distinct !{!372, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!373 = distinct !{!373, !372, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!374 = distinct !{!374, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!375 = distinct !{!375, !374, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!376 = distinct !{!376, !68}
!377 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !29, i64 0, !29, i64 8, !29, i64 16, !31, i64 24}
!378 = !{!377, !29, i64 0}
!379 = !{!377, !29, i64 16}
!380 = !{!377, !31, i64 24}
!381 = !{!373}
!382 = !{!375}
!383 = distinct !{!383, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!384 = distinct !{!384, !383, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!385 = distinct !{!385, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!386 = distinct !{!386, !385, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!387 = distinct !{!387, !68}
!388 = !{!"_ZTSN4llvh9StringRefE", !20, i64 0, !37, i64 8}
!389 = !{!388, !20, i64 0}
!390 = !{!388, !37, i64 8}
!391 = !{!384}
!392 = !{!386}
!393 = distinct !{!393, !68}
!394 = distinct !{!394, !85}
!395 = distinct !{!395, !85}
!396 = distinct !{!396, !68}
!397 = distinct !{!397, !68}
!398 = !{!"_ZTSN4llvh16DenseMapIteratorIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEELb0EEE", !78, i64 0, !78, i64 8}
!399 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorIjNS0_6detail13DenseSetEmptyENS0_12DenseMapInfoIjEENS2_12DenseSetPairIjEELb0EEEbE", !398, i64 0, !25, i64 16}
!400 = !{!399, !25, i64 16}
!401 = distinct !{!401, !68}
!402 = distinct !{!402, !68}
!403 = distinct !{!403, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E11getEmptyKeyEv"}
!404 = distinct !{!404, !403, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E11getEmptyKeyEv: argument 0"}
!405 = distinct !{!405, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix11getEmptyKeyEv"}
!406 = distinct !{!406, !405, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix11getEmptyKeyEv: argument 0"}
!407 = distinct !{!407, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv"}
!408 = distinct !{!408, !407, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv: argument 0"}
!409 = distinct !{!409, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix15getTombstoneKeyEv"}
!410 = distinct !{!410, !409, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix15getTombstoneKeyEv: argument 0"}
!411 = !{!406, !404}
!412 = !{!410, !408}
!413 = distinct !{!413, !68}
!414 = distinct !{!414, !68}
!415 = !{!"_ZTSN4llvh16DenseMapIteratorImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEELb0EEE", !118, i64 0, !118, i64 8}
!416 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorImNS0_6detail13DenseSetEmptyENS0_12DenseMapInfoImEENS2_12DenseSetPairImEELb0EEEbE", !415, i64 0, !25, i64 16}
!417 = !{!416, !25, i64 16}
!418 = distinct !{!418, !68}
!419 = distinct !{!419, !68}
!420 = distinct !{!420, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E11getEmptyKeyEv"}
!421 = distinct !{!421, !420, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E11getEmptyKeyEv: argument 0"}
!422 = distinct !{!422, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix11getEmptyKeyEv"}
!423 = distinct !{!423, !422, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix11getEmptyKeyEv: argument 0"}
!424 = distinct !{!424, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv"}
!425 = distinct !{!425, !424, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv: argument 0"}
!426 = distinct !{!426, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix15getTombstoneKeyEv"}
!427 = distinct !{!427, !426, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix15getTombstoneKeyEv: argument 0"}
!428 = !{!423, !421}
!429 = !{!427, !425}
!430 = distinct !{!430, !68, !154, !155}
!431 = distinct !{!431, !68, !155, !154}
!432 = distinct !{!432, !68, !154, !155}
!433 = distinct !{!433, !68, !155, !154}
!434 = distinct !{!434, !68}
!435 = distinct !{!435, !68}
!436 = distinct !{!436, !68}
!437 = distinct !{!437, !68}
!438 = distinct !{!438, !"_ZN4llvh5Twine9utohexstrERKm"}
!439 = distinct !{!439, !438, !"_ZN4llvh5Twine9utohexstrERKm: argument 0"}
!440 = distinct !{!440, !"_ZN4llvh5Twine9utohexstrERKm"}
!441 = distinct !{!441, !440, !"_ZN4llvh5Twine9utohexstrERKm: argument 0"}
!442 = !{!439}
!443 = !{!441}
!444 = distinct !{!444, !"_ZNK4llvh5Twine6concatERKS0_"}
!445 = distinct !{!445, !444, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!446 = !{!445}
!447 = !{!167, !167, i64 0}
!448 = !{i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 1, !447, i64 17, i64 1, !447}
end_hunk_2
