inline.NumInlined: 716
inline.NumDeleted: 392
begin_hunk_0_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
  %.sroa.07.1 = phi ptr [ %i.ex, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.07.049, %bb.u ] ; 6 uses
  %.sroa.23.1 = phi ptr [ %i.fb, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.23.050, %bb.u ]
  %.sroa.13.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 24 ; 3 uses
  %.sroa.013.0.copyload.i.i = load i64, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, align 8, !tbaa !10 ; 2 uses
  %.sroa.414.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8
  %.sroa.414.0.copyload.i.i = load i64, ptr %.sroa.414.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !31
  %.sroa.515.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 16
  %.sroa.515.0.copyload.i.i = load i32, ptr %.sroa.515.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !3 ; 3 uses
  %i.fc = ptrtoint ptr %.sroa.13.1 to i64
end_hunk_0
begin_hunk_1_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
  %.val2.i.i.i.i = load i32, ptr %i.fj, align 8, !tbaa !75 ; 2 uses
  %i.fk = icmp ult i32 %.val2.i.i.i.i, %.sroa.515.0.copyload.i.i
  %i.fl = icmp eq i32 %.val2.i.i.i.i, %.sroa.515.0.copyload.i.i
  %i.fm = icmp ugt i64 %.val.i.i.i.i, %.sroa.013.0.copyload.i.i
  %spec.select.i.i.i.i.i = select i1 %i.fl, i1 %i.fm, i1 false
  %i.fn = select i1 %i.fk, i1 true, i1 %spec.select.i.i.i.i.i
  br i1 %i.fn, label %bb.y, label %.loopexit
end_hunk_1
begin_hunk_2_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a

.loopexit:                                        ; preds = %bb.y, %.lr.ph.i.i.i, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.fg, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i ], [ %.010.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.y ]
  %i.fp = getelementptr inbounds [24 x i8], ptr %.sroa.07.1, i64 %.0.lcssa.i.i.i ; 3 uses
  store i64 %.sroa.013.0.copyload.i.i, ptr %i.fp, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %.sroa.414.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !tbaa !31
  %.sroa.59.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i32 %.sroa.515.0.copyload.i.i, ptr %.sroa.59.0..sroa_idx10.i.i, align 8, !tbaa !3
  %i.fq = load ptr, ptr %.sroa.01.051, align 8, !tbaa !78 ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a

bb.aa:                                            ; preds = %.lr.ph54, %_ZN7libfsst11SymbolTable3addENS_6SymbolE.exit
  %.pr60 = phi i16 [ 0, %.lr.ph54 ], [ %.pr, %_ZN7libfsst11SymbolTable3addENS_6SymbolE.exit ]
  %.sroa.13.253 = phi ptr [ %.sroa.13.0.lcssa, %.lr.ph54 ], [ %i.hg, %_ZN7libfsst11SymbolTable3addENS_6SymbolE.exit ] ; 5 uses
  %.sroa.01.0.copyload = load i64, ptr %.sroa.07.0.lcssa, align 8, !tbaa !10 ; 5 uses
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31 ; 2 uses
  %i.fr = ptrtoint ptr %.sroa.13.253 to i64
end_hunk_3
begin_hunk_4_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
  br i1 %i.ft, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.fu = getelementptr inbounds i8, ptr %.sroa.13.253, i64 -24 ; 3 uses
  %.sroa.08.0.copyload.i.i.i = load i64, ptr %i.fu, align 8, !tbaa !10 ; 2 uses
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.13.253, i64 -16
  %.sroa.49.0.copyload.i.i.i = load i64, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !31
  %.sroa.510.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.13.253, i64 -8
  %.sroa.510.0.copyload.i.i.i = load i32, ptr %.sroa.510.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !3 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fu, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.07.0.lcssa, i64 20, i1 false), !tbaa.struct !69
end_hunk_4
begin_hunk_5_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
  %.val2.i.i.i.i.i.i75 = load i32, ptr %i.gz, align 8, !tbaa !75 ; 2 uses
  %i.ha = icmp ult i32 %.val2.i.i.i.i.i.i75, %.sroa.510.0.copyload.i.i.i
  %i.hb = icmp eq i32 %.val2.i.i.i.i.i.i75, %.sroa.510.0.copyload.i.i.i
  %i.hc = icmp ugt i64 %.val.i.i.i.i.i.i74, %.sroa.08.0.copyload.i.i.i
  %spec.select.i.i.i.i.i.i.i76 = select i1 %i.hb, i1 %i.hc, i1 false
  %i.hd = select i1 %i.ha, i1 true, i1 %spec.select.i.i.i.i.i.i.i76
  br i1 %i.hd, label %bb.ae, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7libfsst7QSymbolESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_16buildSymbolTableERNS2_8CountersES5_IPKhSaISE_EEPKmbENK3$_2clEPNS2_11SymbolTableESC_EUlRKS3_SN_E_EEEvT_SQ_SQ_RT0_.exit.i.i"
end_hunk_5
begin_hunk_6_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7libfsst7QSymbolESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZZNS2_16buildSymbolTableERNS2_8CountersES5_IPKhSaISE_EEPKmbENK3$_2clEPNS2_11SymbolTableESC_EUlRKS3_SN_E_EEEvT_SQ_SQ_RT0_.exit.i.i": ; preds = %bb.ae, %.lr.ph.i.i.i.i.i71, %bb.ad
  %.0.lcssa.i.i.i.i.i77 = phi i64 [ 0, %bb.ad ], [ %.010.i.i.i.i.i72, %.lr.ph.i.i.i.i.i71 ], [ 0, %bb.ae ]
  %i.hf = getelementptr inbounds [24 x i8], ptr %.sroa.07.0.lcssa, i64 %.0.lcssa.i.i.i.i.i77 ; 3 uses
  store i64 %.sroa.08.0.copyload.i.i.i, ptr %i.hf, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx37.i.i.i.i78 = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store i64 %.sroa.49.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx37.i.i.i.i78, align 8, !tbaa !31
  %.sroa.539.0..sroa_idx40.i.i.i.i79 = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store i32 %.sroa.510.0.copyload.i.i.i, ptr %.sroa.539.0..sroa_idx40.i.i.i.i79, align 8, !tbaa !3
  %.pre58 = load i16, ptr %i.f, align 8, !tbaa !64
end_hunk_6
