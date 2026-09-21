Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOLinkGraphBuilder?download=true
inline.NumInlined: 2987
inline.NumDeleted: 1491
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEv:bb.a
  %i.ic = icmp ult i64 %i.ia, %i.hz
  br i1 %i.ic, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i.preheader", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i.i.i.i.i", %bb.x
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i.i.i.i.i": ; preds = %bb.x
  %i.id = load i64, ptr %i.hw, align 8, !tbaa !91
  %i.ie = load i64, ptr %i.hy, align 8, !tbaa !91
  %i.if = icmp ult i64 %i.id, %i.ie
  br i1 %i.if, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i
  %i.ig = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i.i.i, 8
  br i1 %i.ig, label %bb.y, label %bb.z, !prof !135

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i.i.i.i.i"
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0246.2, i64 %.sroa.0.020.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i

bb.z:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i.i.i.i.i.i"
  %i.ih = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i.i.i, i64 8
  store ptr %i.hu, ptr %i.ih, align 8, !tbaa !133
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i.preheader", %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i"
  %.sroa.03.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i" ], [ %.sroa.0.020.i.ptr.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i.preheader" ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ii = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !133 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !134 ; 2 uses
  %i.im = icmp ult i64 %i.hz, %i.il
  br i1 %i.im, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %bb.aa

bb.aa:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i"
  %i.in = icmp ult i64 %i.il, %i.hz
  br i1 %i.in, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i": ; preds = %bb.aa
  %i.io = load i64, ptr %i.hw, align 8, !tbaa !91
  %i.ip = load i64, ptr %i.ik, align 8, !tbaa !91
  %i.iq = icmp ult i64 %i.io, %i.ip
  br i1 %i.iq, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i", label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i"
  store ptr %i.ii, ptr %.sroa.03.0.i.i.i.i.i.i.i, align 8, !tbaa !133
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i.i.i.i.i.i", !llvm.loop !293

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i", %bb.aa, %bb.z, %bb.y
  %.sink.i.i.i.i.i.i79 = phi ptr [ %.sroa.0246.2, %bb.z ], [ %.sroa.0246.2, %bb.y ], [ %.sroa.03.0.i.i.i.i.i.i.i, %bb.aa ], [ %.sroa.03.0.i.i.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i.i.i.i.i.i" ]
  store ptr %i.ht, ptr %.sink.i.i.i.i.i.i79, align 8, !tbaa !133
  %.sroa.0.020.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i.i80 = icmp eq i64 %.sroa.0.020.i.add.i.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i.i80, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !294

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0246.2, i64 128 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ir, %.sroa.14254.2
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink21MachOLinkGraphBuilder17NormalizedSectionESaIS5_EEZNS3_24createNormalizedSectionsEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i12.i.i.i.i.i

.lr.ph.i12.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.jf, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %i.ir, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i" ] ; 4 uses
  %i.is = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !133 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 40
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !134 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i17.i.i.i.i.i", %.lr.ph.i12.i.i.i.i.i
  %.sroa.03.0.i.i13.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ], [ %.sroa.0.0.i.i14.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i17.i.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i14.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i13.i.i.i.i.i, i64 -8 ; 2 uses
  %i.iw = load ptr, ptr %.sroa.0.0.i.i14.i.i.i.i.i, align 8, !tbaa !133 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !134 ; 2 uses
  %i.ja = icmp ult i64 %i.iv, %i.iz
  br i1 %i.ja, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i17.i.i.i.i.i", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jb = icmp ult i64 %i.iz, %i.iv
  br i1 %i.jb, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i15.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i15.i.i.i.i.i": ; preds = %bb.ac
  %i.jc = load i64, ptr %i.iu, align 8, !tbaa !91
  %i.jd = load i64, ptr %i.iy, align 8, !tbaa !91
  %i.je = icmp ult i64 %i.jc, %i.jd
  br i1 %i.je, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i17.i.i.i.i.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i17.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i15.i.i.i.i.i", %bb.ab
  store ptr %i.iw, ptr %.sroa.03.0.i.i13.i.i.i.i.i, align 8, !tbaa !133
  br label %bb.ab, !llvm.loop !293

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i15.i.i.i.i.i", %bb.ac
  store ptr %i.is, ptr %.sroa.03.0.i.i13.i.i.i.i.i, align 8, !tbaa !133
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8
  %.not.i16.i.i.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i.i.i, %.pn
  br i1 %.not.i16.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink21MachOLinkGraphBuilder17NormalizedSectionESaIS5_EEZNS3_24createNormalizedSectionsEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i12.i.i.i.i.i, !llvm.loop !295

bb.ad:                                            ; preds = %bb.w
  %.not18.i20.i.i.i.i.i = icmp eq ptr %.sroa.0246.2, %.pn
  br i1 %.not18.i20.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink21MachOLinkGraphBuilder17NormalizedSectionESaIS5_EEZNS3_24createNormalizedSectionsEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i21.i.i.i.i.i

.lr.ph.i21.i.i.i.i.i:                             ; preds = %bb.ad, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i
  %.sroa.0.020.i22.i.i.i.i.i = phi ptr [ %.sroa.0.0.i31.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i ], [ %scevgep.i.i.i.i.i, %bb.ad ] ; 6 uses
  %.pn19.i23.i.i.i.i.i = phi ptr [ %.sroa.0.020.i22.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i ], [ %.sroa.0246.2, %bb.ad ] ; 2 uses
  %i.jg = load ptr, ptr %.sroa.0.020.i22.i.i.i.i.i, align 8, !tbaa !133 ; 3 uses
  %i.jh = load ptr, ptr %.sroa.0246.2, align 8, !tbaa !133 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 48 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.jm = load i64, ptr %i.ji, align 8, !tbaa !134 ; 4 uses
  %i.jn = load i64, ptr %i.jk, align 8, !tbaa !134 ; 2 uses
  %i.jo = icmp ult i64 %i.jm, %i.jn
  br i1 %i.jo, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i34.i.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i21.i.i.i.i.i
  %i.jp = icmp ult i64 %i.jn, %i.jm
  br i1 %i.jp, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i.preheader", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i24.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i.preheader": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i24.i.i.i.i.i", %bb.ae
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i24.i.i.i.i.i": ; preds = %bb.ae
  %i.jq = load i64, ptr %i.jj, align 8, !tbaa !91
  %i.jr = load i64, ptr %i.jl, align 8, !tbaa !91
  %i.js = icmp ult i64 %i.jq, %i.jr
  br i1 %i.js, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i34.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i.preheader"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i34.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.i24.i.i.i.i.i", %.lr.ph.i21.i.i.i.i.i
  %i.jt = ptrtoint ptr %.sroa.0.020.i22.i.i.i.i.i to i64
  %i.ju = sub i64 %i.jt, %i.hm                    ; 3 uses
  %i.jv = ashr exact i64 %i.ju, 3                 ; 2 uses
  %i.jw = icmp sgt i64 %i.jv, 1
  br i1 %i.jw, label %bb.af, label %bb.ag, !prof !135

bb.af:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i34.i.i.i.i.i"
  %i.jx = getelementptr inbounds nuw i8, ptr %.pn19.i23.i.i.i.i.i, i64 16
  %i.jy = sub nsw i64 0, %i.jv
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.jy
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jz, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0246.2, i64 %i.ju, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i

bb.ag:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread.i34.i.i.i.i.i"
  %i.ka = icmp eq i64 %i.ju, 8
  br i1 %i.ka, label %bb.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.kb = getelementptr inbounds nuw i8, ptr %.pn19.i23.i.i.i.i.i, i64 8
  store ptr %i.jh, ptr %i.kb, align 8, !tbaa !133
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i.preheader", %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i33.i.i.i.i.i"
  %.sroa.03.0.i.i26.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i27.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i33.i.i.i.i.i" ], [ %.sroa.0.020.i22.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i.preheader" ] ; 4 uses
  %.sroa.0.0.i.i27.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.03.0.i.i26.i.i.i.i.i, i64 -8 ; 2 uses
  %i.kc = load ptr, ptr %.sroa.0.0.i.i27.i.i.i.i.i, align 8, !tbaa !133 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 40
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !134 ; 2 uses
  %i.kg = icmp ult i64 %i.jm, %i.kf
  br i1 %i.kg, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i33.i.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i"
  %i.kh = icmp ult i64 %i.kf, %i.jm
  br i1 %i.kh, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i28.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i28.i.i.i.i.i": ; preds = %bb.ai
  %i.ki = load i64, ptr %i.jj, align 8, !tbaa !91
  %i.kj = load i64, ptr %i.ke, align 8, !tbaa !91
  %i.kk = icmp ult i64 %i.ki, %i.kj
  br i1 %i.kk, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i33.i.i.i.i.i", label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread.i.i33.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i28.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i"
  store ptr %i.kc, ptr %.sroa.03.0.i.i26.i.i.i.i.i, align 8, !tbaa !133
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclINS_17__normal_iteratorIPPNS4_17NormalizedSectionESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread16.i25.i.i.i.i.i", !llvm.loop !293

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i28.i.i.i.i.i", %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i30.i.i.i.i.i = phi ptr [ %.sroa.0246.2, %bb.ah ], [ %.sroa.0246.2, %bb.af ], [ %.sroa.0246.2, %bb.ag ], [ %.sroa.03.0.i.i26.i.i.i.i.i, %bb.ai ], [ %.sroa.03.0.i.i26.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvm7jitlink21MachOLinkGraphBuilder24createNormalizedSectionsEvE3$_0EclIPNS4_17NormalizedSectionENS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i.i28.i.i.i.i.i" ]
  store ptr %i.jg, ptr %.sink.i30.i.i.i.i.i, align 8, !tbaa !133
  %.sroa.0.0.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i22.i.i.i.i.i, i64 8
  %.not.i32.i.i.i.i.i = icmp eq ptr %.sroa.0.020.i22.i.i.i.i.i, %.pn
  br i1 %.not.i32.i.i.i.i.i, label %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink21MachOLinkGraphBuilder17NormalizedSectionESaIS5_EEZNS3_24createNormalizedSectionsEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i21.i.i.i.i.i, !llvm.loop !294

"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink21MachOLinkGraphBuilder17NormalizedSectionESaIS5_EEZNS3_24createNormalizedSectionsEvE3$_0EEvOT_T0_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7jitlink21MachOLinkGraphBuilder17NormalizedSectionESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_24createNormalizedSectionsEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i", %bb.ad
  %i.kl = lshr exact i64 %i.hn, 3
  %i.km = add nuw nsw i64 %i.kl, 4294967295
  %i.kn = and i64 %i.km, 4294967295               ; 2 uses
  %.not59503 = icmp eq i64 %i.kn, 0
  br i1 %.not59503, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph505

.critedge61:                                      ; preds = %.lr.ph505
  %.not59 = icmp eq i64 %indvars.iv.next, %i.kn
  br i1 %.not59, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph505, !llvm.loop !296

.lr.ph505:                                        ; preds = %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink21MachOLinkGraphBuilder17NormalizedSectionESaIS5_EEZNS3_24createNormalizedSectionsEvE3$_0EEvOT_T0_.exit", %.critedge61
  %indvars.iv504 = phi i64 [ %indvars.iv.next, %.critedge61 ], [ 0, %"_ZN4llvm4sortIRSt6vectorIPNS_7jitlink21MachOLinkGraphBuilder17NormalizedSectionESaIS5_EEZNS3_24createNormalizedSectionsEvE3$_0EEvOT_T0_.exit" ] ; 2 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.2, i64 %indvars.iv504
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !133 ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv504, 1 ; 3 uses
  %21 = and i64 %indvars.iv.next, 4294967295
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.2, i64 %21
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !133 ; 8 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 40
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 40
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !134
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !91
  %i.kx = add i64 %i.kw, %i.kv
  %i.ky = load i64, ptr %i.ks, align 8, !tbaa !134
  %i.kz = icmp ult i64 %i.ky, %i.kx
  br i1 %i.kz, label %_ZN4llvmplERKNS_5TwineES2_.exit112, label %.critedge61, !llvm.loop !296

_ZN4llvmplERKNS_5TwineES2_.exit112:               ; preds = %.lr.ph505
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 40 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kp, i64 40 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kp, i64 17
  %i.le = load i64, ptr %i.lb, align 8, !tbaa !134
  %i.lf = load i64, ptr %i.lc, align 8, !tbaa !91
  %i.lg = add i64 %i.lf, %i.le
  %i.lh = ptrtoint ptr %i.ld to i64
  %i.li = ptrtoint ptr %i.kp to i64
  %i.lj = ptrtoint ptr %i.lb to i64
  %i.lk = getelementptr inbounds nuw i8, ptr %19, i64 72 ; 2 uses
  store ptr @.str.6, ptr %19, align 8, !tbaa !110, !alias.scope !366
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 33, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !91, !alias.scope !366
  %i.ll = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.lk, ptr %i.ll, align 8, !tbaa !137, !alias.scope !366
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 24
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !91, !alias.scope !366
  %i.lm = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 1, ptr %i.lm, align 8, !tbaa !140, !alias.scope !366
  %i.ln = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  store i64 %i.lg, ptr %i.ln, align 8, !tbaa !91, !alias.scope !366
  %i.lo = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  store i64 %i.lj, ptr %i.lo, align 8, !tbaa !367, !alias.scope !366
  %i.lp = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 2 uses
  store i64 %i.li, ptr %i.lp, align 8, !tbaa !110, !alias.scope !366
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  store i64 %i.lh, ptr %i.lq, align 8, !tbaa !110, !alias.scope !366
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 88
  %.ptr.2.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 104
  %.ptr.3.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = ptrtoint ptr %i.lp to i64
  %i.lt = ptrtoint ptr %i.lo to i64
  %i.lu = ptrtoint ptr %i.ln to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRA17_cEEEEvlS2_S3_, ptr %i.lk, align 8, !alias.scope !366
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 80
  store i64 %i.lr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !366
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRA17_cEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i, align 8, !alias.scope !366
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 96
  store i64 %i.ls, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !366
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_3orc12ExecutorAddrEEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i, align 8, !alias.scope !366
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 112
  store i64 %i.lt, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !366
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorINS_3orc12ExecutorAddrEEEEEvlS2_S3_, ptr %.ptr.3.i.i.i.i, align 8, !alias.scope !366
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 128
  store i64 %i.lu, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !tbaa !90, !alias.scope !366
  store ptr @.str.5, ptr %18, align 8, !alias.scope !368
  %i.lv = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %19, ptr %i.lv, align 8, !alias.scope !368
  %i.lw = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 3, ptr %i.lw, align 8, !tbaa !105, !alias.scope !368
  %i.lx = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 7, ptr %i.lx, align 1, !tbaa !106, !alias.scope !368
  store ptr %18, ptr %17, align 8, !alias.scope !369
  %i.ly = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr @.str.7, ptr %i.ly, align 8, !alias.scope !369
  %i.lz = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 2, ptr %i.lz, align 8, !tbaa !105, !alias.scope !369
  %i.ma = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 3, ptr %i.ma, align 1, !tbaa !106, !alias.scope !369
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kr, i64 17 ; 3 uses
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !90
  %.not.i113 = icmp eq i8 %i.mc, 0
  br i1 %.not.i113, label %_ZN4llvmplERKNS_5TwineES2_.exit130, label %_ZN4llvmplERKNS_5TwineES2_.exit130.thread

_ZN4llvmplERKNS_5TwineES2_.exit130.thread:        ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit112
  store ptr %17, ptr %16, align 8, !alias.scope !370
  %i.md = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.mb, ptr %i.md, align 8, !alias.scope !370
  %i.me = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 2, ptr %i.me, align 8, !tbaa !105, !alias.scope !370
  %i.mf = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 3, ptr %i.mf, align 1, !tbaa !106, !alias.scope !370
  br label %bb.ak

_ZN4llvmplERKNS_5TwineES2_.exit130:               ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !351
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %16, i64 32
  %.pre382 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !105, !noalias !371 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  switch i8 %.pre382, label %bb.ak [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit146
    i8 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit130
  store ptr @.str.8, ptr %15, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit146

bb.ak:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit130.thread, %_ZN4llvmplERKNS_5TwineES2_.exit130
  %i.mg = phi i8 [ 2, %_ZN4llvmplERKNS_5TwineES2_.exit130.thread ], [ %.pre382, %_ZN4llvmplERKNS_5TwineES2_.exit130 ]
  %i.mh = getelementptr inbounds nuw i8, ptr %16, i64 33
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !106, !noalias !371
  %i.mj = icmp eq i8 %i.mi, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i132 = load ptr, ptr %16, align 8, !noalias !371
  %.sroa.56.0..sroa_idx.i.i133 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %.sroa.56.0.copyload.i.i134 = load i64, ptr %.sroa.56.0..sroa_idx.i.i133, align 8, !noalias !371
  %.014.i.i135 = select i1 %i.mj, i8 %i.mg, i8 2
  %.sroa.05.0.i.i136 = select i1 %i.mj, ptr %.sroa.05.0.copyload.i.i132, ptr %16 ; 2 uses
  %.sroa.56.0.i.i137 = select i1 %i.mj, i64 %.sroa.56.0.copyload.i.i134, i64 undef
  store ptr %.sroa.05.0.i.i136, ptr %15, align 8, !alias.scope !371
  %.sroa.23.0..sroa_idx.i.i.i144 = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %.sroa.56.0.i.i137, ptr %.sroa.23.0..sroa_idx.i.i.i144, align 8, !tbaa !90, !alias.scope !371
  %i.mk = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr @.str.8, ptr %i.mk, align 8, !alias.scope !371
  br label %_ZN4llvmplERKNS_5TwineES2_.exit146

_ZN4llvmplERKNS_5TwineES2_.exit146:               ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit130, %bb.aj, %bb.ak
  %.sink466 = phi i8 [ %.014.i.i135, %bb.ak ], [ 3, %bb.aj ], [ %.pre382, %_ZN4llvmplERKNS_5TwineES2_.exit130 ] ; 3 uses
  %.sink = phi i8 [ 3, %bb.ak ], [ 1, %bb.aj ], [ 1, %_ZN4llvmplERKNS_5TwineES2_.exit130 ]
  %.sroa.05.0.copyload.i.i150 = phi ptr [ %.sroa.05.0.i.i136, %bb.ak ], [ @.str.8, %bb.aj ], [ undef, %_ZN4llvmplERKNS_5TwineES2_.exit130 ]
  %i.ml = phi i1 [ false, %bb.ak ], [ true, %bb.aj ], [ true, %_ZN4llvmplERKNS_5TwineES2_.exit130 ] ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 %.sink466, ptr %i.mm, align 8, !tbaa !350
  %i.mn = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 %.sink, ptr %i.mn, align 1, !tbaa !350
  %i.mo = load i8, ptr %i.kr, align 1, !tbaa !90
  %.not.i147 = icmp eq i8 %i.mo, 0                ; 2 uses
  %storemerge.i148 = select i1 %.not.i147, i8 1, i8 3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  switch i8 %.sink466, label %bb.am [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit164.thread
    i8 1, label %bb.al
  ]

_ZN4llvmplERKNS_5TwineES2_.exit164.thread:        ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit146
  %i.mp = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 0, ptr %i.mp, align 8, !tbaa !105, !alias.scope !376
  %i.mq = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %i.mq, align 1, !tbaa !106, !alias.scope !376
  br label %_ZN4llvmplERKNS_5TwineES2_.exit180

bb.al:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit146
  store ptr %i.kr, ptr %14, align 8
  %.sroa.6341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 %storemerge.i148, ptr %.sroa.6341.0..sroa_idx, align 8, !tbaa !350
  %.sroa.8342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 1, ptr %.sroa.8342.0..sroa_idx, align 1, !tbaa !350
  br label %_ZN4llvmplERKNS_5TwineES2_.exit164

bb.am:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit146
  br i1 %.not.i147, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %15, i64 40, i1 false), !tbaa.struct !351
  %.phi.trans.insert384 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.pre385 = load i8, ptr %.phi.trans.insert384, align 8, !tbaa !105, !noalias !377
  br label %_ZN4llvmplERKNS_5TwineES2_.exit164

bb.ao:                                            ; preds = %bb.am
  %.sroa.56.0..sroa_idx.i.i151 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.56.0.copyload.i.i152 = load i64, ptr %.sroa.56.0..sroa_idx.i.i151, align 8, !noalias !376
  %.014.i.i153 = select i1 %i.ml, i8 %.sink466, i8 2 ; 2 uses
  %.sroa.05.0.i.i154 = select i1 %i.ml, ptr %.sroa.05.0.copyload.i.i150, ptr %15
  %.sroa.56.0.i.i155 = select i1 %i.ml, i64 %.sroa.56.0.copyload.i.i152, i64 undef
  store ptr %.sroa.05.0.i.i154, ptr %14, align 8, !alias.scope !376
  %.sroa.23.0..sroa_idx.i.i.i162 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.sroa.56.0.i.i155, ptr %.sroa.23.0..sroa_idx.i.i.i162, align 8, !tbaa !90, !alias.scope !376
  %i.mr = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.kr, ptr %i.mr, align 8, !alias.scope !376
  %i.ms = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i8 %.014.i.i153, ptr %i.ms, align 8, !tbaa !105, !alias.scope !376
  %i.mt = getelementptr inbounds nuw i8, ptr %14, i64 33
  store i8 %storemerge.i148, ptr %i.mt, align 1, !tbaa !106, !alias.scope !376
  br label %_ZN4llvmplERKNS_5TwineES2_.exit164

_ZN4llvmplERKNS_5TwineES2_.exit164:               ; preds = %bb.al, %bb.an, %bb.ao
  %i.mu = phi i8 [ %.014.i.i153, %bb.ao ], [ %storemerge.i148, %bb.al ], [ %.pre385, %bb.an ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  switch i8 %i.mu, label %bb.aq [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit180
    i8 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit164
  store ptr @.str.9, ptr %13, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit180
end_hunk_0
