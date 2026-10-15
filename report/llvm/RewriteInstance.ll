Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RewriteInstance?download=true
inline.NumInlined: 27087
inline.NumDeleted: 8981
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_:bb.a
  %.sroa.0.017.i = getelementptr inbounds nuw i8, ptr %.sroa.037.041, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.037.041, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.020.i = phi ptr [ %.sroa.0.017.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 7 uses
  %.pn19.i = phi ptr [ %.sroa.037.041, %.lr.ph.i ], [ %.sroa.0.020.i, %bb.h ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 28
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1336
  %.sroa.4.0.copyload.fr.i.i = freeze i8 %i.m     ; 2 uses
  %i.n = icmp ult i8 %.sroa.4.0.copyload.fr.i.i, 16 ; 2 uses
  %i.o = load i8, ptr %i.k, align 1
  %.not.i.i.i = icmp ugt i8 %i.o, 15
  %or.cond.not.i.i.i = select i1 %i.n, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.020.i, i64 16, i1 false)
  %i.p = ptrtoint ptr %.sroa.0.020.i to i64
  %i.q = sub i64 %i.p, %i.i                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %bb.e, !prof !838

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %i.u = sub nsw i64 0, %i.r
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.037.041, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.q, 16
  br i1 %i.w, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.041, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.041, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.020.i, i64 12, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i, i64 3, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.z = load i8, ptr %i.y, align 1
  %.not.i.i10.i.i = icmp ugt i8 %i.z, 15
  %or.cond.not.i.i11.i.i = select i1 %i.n, i1 %.not.i.i10.i.i, i1 false
  br i1 %or.cond.not.i.i11.i.i, label %.lr.ph.split.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i

.lr.ph.split.i.i:                                 ; preds = %bb.g, %.lr.ph.split.i.i
  %.sroa.07.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ], [ %.sroa.0.020.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.07.012.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -20
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i.i.i.i = icmp ugt i8 %i.ab, 15
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i, !llvm.loop !86

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i: ; preds = %.lr.ph.split.i.i, %bb.g
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i, %bb.g ], [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.07.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, i64 12, i1 false)
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 12
  store i8 %.sroa.4.0.copyload.fr.i.i, ptr %.sroa.4.0..sroa_idx4.i.i, align 1
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx6.i.i, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit, label %bb.b, !llvm.loop !87

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit: ; preds = %bb.h
  %i.ac = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ad = sub i64 %i.a, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4
  %.not = icmp slt i64 %i.ae, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !4906

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us, %bb.a
  %.sroa.037.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us ], [ %i.ac, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit ]
  %i.af = icmp eq ptr %.sroa.037.0.lcssa, %1
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %.preheader.i13

.preheader.i13:                                   ; preds = %._crit_edge
  %.sroa.0.017.i14 = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 16 ; 2 uses
  %.not18.i15 = icmp eq ptr %.sroa.0.017.i14, %1
  br i1 %.not18.i15, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.preheader.i13
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i16
  %.sroa.0.020.i17 = phi ptr [ %.sroa.0.017.i14, %.lr.ph.i16 ], [ %.sroa.0.0.i29, %bb.o ] ; 7 uses
  %.pn19.i18 = phi ptr [ %.sroa.037.0.lcssa, %.lr.ph.i16 ], [ %.sroa.0.020.i17, %bb.o ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 28
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !1336
  %.sroa.4.0.copyload.fr.i.i19 = freeze i8 %i.ai  ; 2 uses
  %i.aj = icmp ult i8 %.sroa.4.0.copyload.fr.i.i19, 16 ; 2 uses
  %i.ak = load i8, ptr %i.ag, align 1
  %.not.i.i.i20 = icmp ugt i8 %i.ak, 15
  %or.cond.not.i.i.i21 = select i1 %i.aj, i1 %.not.i.i.i20, i1 false
  br i1 %or.cond.not.i.i.i21, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i12, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.020.i17, i64 16, i1 false)
  %i.al = ptrtoint ptr %.sroa.0.020.i17 to i64
  %i.am = sub i64 %i.al, %.lcssa                  ; 3 uses
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !838

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 32
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.037.0.lcssa, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.as = icmp eq i64 %i.am, 16
  br i1 %i.as, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.at, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.0.lcssa, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i12, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i12)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i10, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.020.i17, i64 12, i1 false)
  %.sroa.5.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i11, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i22, i64 3, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i10.i.i23 = icmp ugt i8 %i.av, 15
  %or.cond.not.i.i11.i.i24 = select i1 %i.aj, i1 %.not.i.i10.i.i23, i1 false
  br i1 %or.cond.not.i.i11.i.i24, label %.lr.ph.split.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25

.lr.ph.split.i.i31:                               ; preds = %bb.n, %.lr.ph.split.i.i31
  %.sroa.07.012.i.i32 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.split.i.i31 ], [ %.sroa.0.020.i17, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.07.012.i.i32, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.07.012.i.i32, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.i33, i64 16, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %.sroa.07.012.i.i32, i64 -20
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i34 = icmp ugt i8 %i.ax, 15
  br i1 %.not.i.i.i.i34, label %.lr.ph.split.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25, !llvm.loop !86

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25: ; preds = %.lr.ph.split.i.i31, %bb.n
  %.sroa.07.0.lcssa.i.i26 = phi ptr [ %.sroa.0.020.i17, %bb.n ], [ %.sroa.0.0.i.i33, %.lr.ph.split.i.i31 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.07.0.lcssa.i.i26, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i10, i64 12, i1 false)
  %.sroa.4.0..sroa_idx4.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i26, i64 12
  store i8 %.sroa.4.0.copyload.fr.i.i19, ptr %.sroa.4.0..sroa_idx4.i.i27, align 1
  %.sroa.5.0..sroa_idx6.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i26, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx6.i.i28, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i11, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i11)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i17, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %bb.i, !llvm.loop !87

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36: ; preds = %bb.o, %._crit_edge, %.preheader.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 11 uses
  %.idx47 = shl i64 %3, 5                         ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  br i1 %.not48, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 16
  %i.g = icmp eq i64 %.idx, 16
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us
  %.055.us = phi ptr [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.054.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.039.054.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !838

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.055.us, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.039.054.us, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.055.us, ptr align 1 %.sroa.039.054.us, i64 %.idx, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %4 = getelementptr inbounds i8, ptr %.055.us, i64 %.idx
  %i.k = getelementptr inbounds i8, ptr %4, i64 %.idx ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.b, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %.not.us = icmp slt i64 %i.n, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !4907

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit
  %.055 = phi ptr [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ], [ %2, %.lr.ph ]
  %.sroa.039.054 = phi ptr [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx47 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.020.i = phi ptr [ %i.x, %bb.g ], [ %.055, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %bb.g ], [ %.sroa.039.054, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.o, %.lr.ph.i.preheader ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 12
  %i.r = load i8, ptr %i.q, align 1, !tbaa !1336
  %i.s = icmp ult i8 %i.r, 16
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 12
  %i.u = load i8, ptr %i.t, align 1
  %.not.i.i.i = icmp ugt i8 %i.u, 15
  %or.cond.not.i.i.i = select i1 %i.s, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.018.i, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.019.i, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.1.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.010.018.i, %bb.f ] ; 5 uses
  %.sroa.014.1.i = phi ptr [ %.sroa.014.019.i, %bb.e ], [ %i.w, %bb.f ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 4 uses
  %i.y = icmp ne ptr %.sroa.014.1.i, %i.o
  %i.z = icmp ne ptr %.sroa.010.1.i, %i.p
  %or.cond.i = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !4908

.critedge.i.loopexit:                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.o to i64
  %i.ab = ptrtoint ptr %.sroa.014.1.i to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp sgt i64 %i.ac, 16
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !838

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %.sroa.014.1.i, i64 %i.ac, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ae = icmp eq i64 %i.ac, 16
  br i1 %i.ae, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.1.i, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 %i.ac ; 3 uses
  %i.ag = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !838

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %.sroa.010.1.i, i64 %i.ai, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %i.ak = icmp eq i64 %i.ai, 16
  br i1 %i.ak, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.1.i, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.am = sub i64 %i.b, %i.ag
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %.not = icmp slt i64 %i.an, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !4907

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us, %bb.a
  %.sroa.039.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 4
  %i.ao = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa, i64 %.idx49 ; 5 uses
  %i.ap = icmp ne i64 %.sroa.speculated, 0
  %i.aq = icmp ne ptr %i.ao, %1
  %or.cond17.i16 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond17.i16, label %.lr.ph.i22, label %.critedge.i17

.lr.ph.i22:                                       ; preds = %._crit_edge, %bb.p
  %.020.i23 = phi ptr [ %i.ay, %bb.p ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.014.019.i24 = phi ptr [ %.sroa.014.1.i29, %bb.p ], [ %.sroa.039.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.010.018.i25 = phi ptr [ %.sroa.010.1.i28, %bb.p ], [ %i.ao, %._crit_edge ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1336
  %i.at = icmp ult i8 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i.i26 = icmp ugt i8 %i.av, 15
  %or.cond.not.i.i.i27 = select i1 %i.at, i1 %.not.i.i.i26, i1 false
  br i1 %or.cond.not.i.i.i27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i23, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.018.i25, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25, i64 16
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i23, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.019.i24, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.1.i28 = phi ptr [ %i.aw, %bb.n ], [ %.sroa.010.018.i25, %bb.o ] ; 3 uses
  %.sroa.014.1.i29 = phi ptr [ %.sroa.014.019.i24, %bb.n ], [ %i.ax, %bb.o ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.020.i23, i64 16 ; 2 uses
  %i.az = icmp ne ptr %.sroa.014.1.i29, %i.ao
  %i.ba = icmp ne ptr %.sroa.010.1.i28, %1
  %or.cond.i30 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i30, label %.lr.ph.i22, label %.critedge.i17, !llvm.loop !4908

.critedge.i17:                                    ; preds = %bb.p, %._crit_edge
  %.sroa.010.0.lcssa.i18 = phi ptr [ %i.ao, %._crit_edge ], [ %.sroa.010.1.i28, %bb.p ] ; 3 uses
  %.sroa.014.0.lcssa.i19 = phi ptr [ %.sroa.039.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i29, %bb.p ] ; 3 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ay, %bb.p ] ; 3 uses
  %i.bb = ptrtoint ptr %i.ao to i64
  %i.bc = ptrtoint ptr %.sroa.014.0.lcssa.i19 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 16
  br i1 %i.be, label %bb.q, label %bb.r, !prof !838

bb.q:                                             ; preds = %.critedge.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i20, ptr align 1 %.sroa.014.0.lcssa.i19, i64 %i.bd, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

bb.r:                                             ; preds = %.critedge.i17
  %i.bf = icmp eq i64 %i.bd, 16
  br i1 %i.bf, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.lcssa.i20, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.0.lcssa.i19, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21: ; preds = %bb.s, %bb.r, %bb.q
  %i.bg = getelementptr inbounds i8, ptr %.0.lcssa.i20, i64 %i.bd ; 2 uses
  %i.bh = ptrtoint ptr %.sroa.010.0.lcssa.i18 to i64
  %i.bi = sub i64 %i.b, %i.bh                     ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, 16
  br i1 %i.bj, label %bb.t, label %bb.u, !prof !838

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %.sroa.010.0.lcssa.i18, i64 %i.bi, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  %i.bk = icmp eq i64 %i.bi, 16
  br i1 %i.bk, label %bb.v, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.0.lcssa.i18, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31: ; preds = %bb.t, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPN4llvm6object12Elf_Sym_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZNS0_4bolt15RewriteInstance20updateELFSymbolTableIS5_ZNSH_15patchELFSymTabsIS5_EEvPNS1_13ELFObjectFileIT_EEEUlmRKS6_E_ZNSJ_IS5_EEvSN_EUlNS0_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not49 = icmp slt i64 %i.e, %i.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 10 uses
  %.idx43 = shl nsw i64 %3, 5                     ; 2 uses
  %.not44 = icmp eq i64 %.idx, %.idx43
  br i1 %.not44, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
end_hunk_0
begin_hunk_1_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_:bb.a
  %.sroa.0.017.i = getelementptr inbounds nuw i8, ptr %.sroa.037.041, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.037.041, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.020.i = phi ptr [ %.sroa.0.017.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 7 uses
  %.pn19.i = phi ptr [ %.sroa.037.041, %.lr.ph.i ], [ %.sroa.0.020.i, %bb.h ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 28
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1336
  %.sroa.4.0.copyload.fr.i.i = freeze i8 %i.m     ; 2 uses
  %i.n = icmp ult i8 %.sroa.4.0.copyload.fr.i.i, 16 ; 2 uses
  %i.o = load i8, ptr %i.k, align 1
  %.not.i.i.i = icmp ugt i8 %i.o, 15
  %or.cond.not.i.i.i = select i1 %i.n, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.020.i, i64 16, i1 false)
  %i.p = ptrtoint ptr %.sroa.0.020.i to i64
  %i.q = sub i64 %i.p, %i.i                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %bb.e, !prof !838

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %i.u = sub nsw i64 0, %i.r
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.037.041, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.q, 16
  br i1 %i.w, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.041, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.041, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.020.i, i64 12, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i, i64 3, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.z = load i8, ptr %i.y, align 1
  %.not.i.i10.i.i = icmp ugt i8 %i.z, 15
  %or.cond.not.i.i11.i.i = select i1 %i.n, i1 %.not.i.i10.i.i, i1 false
  br i1 %or.cond.not.i.i11.i.i, label %.lr.ph.split.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i

.lr.ph.split.i.i:                                 ; preds = %bb.g, %.lr.ph.split.i.i
  %.sroa.07.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ], [ %.sroa.0.020.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.07.012.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -20
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i.i.i.i = icmp ugt i8 %i.ab, 15
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i, !llvm.loop !90

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i: ; preds = %.lr.ph.split.i.i, %bb.g
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i, %bb.g ], [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.07.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, i64 12, i1 false)
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 12
  store i8 %.sroa.4.0.copyload.fr.i.i, ptr %.sroa.4.0..sroa_idx4.i.i, align 1
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx6.i.i, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit, label %bb.b, !llvm.loop !91

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit: ; preds = %bb.h
  %i.ac = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ad = sub i64 %i.a, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4
  %.not = icmp slt i64 %i.ae, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !4971

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us, %bb.a
  %.sroa.037.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us ], [ %i.ac, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit ]
  %i.af = icmp eq ptr %.sroa.037.0.lcssa, %1
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %.preheader.i13

.preheader.i13:                                   ; preds = %._crit_edge
  %.sroa.0.017.i14 = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 16 ; 2 uses
  %.not18.i15 = icmp eq ptr %.sroa.0.017.i14, %1
  br i1 %.not18.i15, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.preheader.i13
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i16
  %.sroa.0.020.i17 = phi ptr [ %.sroa.0.017.i14, %.lr.ph.i16 ], [ %.sroa.0.0.i29, %bb.o ] ; 7 uses
  %.pn19.i18 = phi ptr [ %.sroa.037.0.lcssa, %.lr.ph.i16 ], [ %.sroa.0.020.i17, %bb.o ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 28
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !1336
  %.sroa.4.0.copyload.fr.i.i19 = freeze i8 %i.ai  ; 2 uses
  %i.aj = icmp ult i8 %.sroa.4.0.copyload.fr.i.i19, 16 ; 2 uses
  %i.ak = load i8, ptr %i.ag, align 1
  %.not.i.i.i20 = icmp ugt i8 %i.ak, 15
  %or.cond.not.i.i.i21 = select i1 %i.aj, i1 %.not.i.i.i20, i1 false
  br i1 %or.cond.not.i.i.i21, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i12, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.020.i17, i64 16, i1 false)
  %i.al = ptrtoint ptr %.sroa.0.020.i17 to i64
  %i.am = sub i64 %i.al, %.lcssa                  ; 3 uses
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !838

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 32
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.037.0.lcssa, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.as = icmp eq i64 %i.am, 16
  br i1 %i.as, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.at, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.0.lcssa, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i12, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i12)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i10, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.020.i17, i64 12, i1 false)
  %.sroa.5.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i11, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i22, i64 3, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i10.i.i23 = icmp ugt i8 %i.av, 15
  %or.cond.not.i.i11.i.i24 = select i1 %i.aj, i1 %.not.i.i10.i.i23, i1 false
  br i1 %or.cond.not.i.i11.i.i24, label %.lr.ph.split.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25

.lr.ph.split.i.i31:                               ; preds = %bb.n, %.lr.ph.split.i.i31
  %.sroa.07.012.i.i32 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.split.i.i31 ], [ %.sroa.0.020.i17, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.07.012.i.i32, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.07.012.i.i32, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.i33, i64 16, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %.sroa.07.012.i.i32, i64 -20
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i34 = icmp ugt i8 %i.ax, 15
  br i1 %.not.i.i.i.i34, label %.lr.ph.split.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25, !llvm.loop !90

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25: ; preds = %.lr.ph.split.i.i31, %bb.n
  %.sroa.07.0.lcssa.i.i26 = phi ptr [ %.sroa.0.020.i17, %bb.n ], [ %.sroa.0.0.i.i33, %.lr.ph.split.i.i31 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.07.0.lcssa.i.i26, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i10, i64 12, i1 false)
  %.sroa.4.0..sroa_idx4.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i26, i64 12
  store i8 %.sroa.4.0.copyload.fr.i.i19, ptr %.sroa.4.0..sroa_idx4.i.i27, align 1
  %.sroa.5.0..sroa_idx6.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i26, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx6.i.i28, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i11, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i11)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i17, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %bb.i, !llvm.loop !91

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36: ; preds = %bb.o, %._crit_edge, %.preheader.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 11 uses
  %.idx47 = shl i64 %3, 5                         ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  br i1 %.not48, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 16
  %i.g = icmp eq i64 %.idx, 16
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us
  %.055.us = phi ptr [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.054.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.039.054.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !838

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.055.us, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.039.054.us, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.055.us, ptr align 1 %.sroa.039.054.us, i64 %.idx, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %4 = getelementptr inbounds i8, ptr %.055.us, i64 %.idx
  %i.k = getelementptr inbounds i8, ptr %4, i64 %.idx ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.b, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %.not.us = icmp slt i64 %i.n, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !4972

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit
  %.055 = phi ptr [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ], [ %2, %.lr.ph ]
  %.sroa.039.054 = phi ptr [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx47 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.020.i = phi ptr [ %i.x, %bb.g ], [ %.055, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %bb.g ], [ %.sroa.039.054, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.o, %.lr.ph.i.preheader ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 12
  %i.r = load i8, ptr %i.q, align 1, !tbaa !1336
  %i.s = icmp ult i8 %i.r, 16
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 12
  %i.u = load i8, ptr %i.t, align 1
  %.not.i.i.i = icmp ugt i8 %i.u, 15
  %or.cond.not.i.i.i = select i1 %i.s, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.018.i, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.019.i, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.1.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.010.018.i, %bb.f ] ; 5 uses
  %.sroa.014.1.i = phi ptr [ %.sroa.014.019.i, %bb.e ], [ %i.w, %bb.f ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 4 uses
  %i.y = icmp ne ptr %.sroa.014.1.i, %i.o
  %i.z = icmp ne ptr %.sroa.010.1.i, %i.p
  %or.cond.i = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !4973

.critedge.i.loopexit:                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.o to i64
  %i.ab = ptrtoint ptr %.sroa.014.1.i to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp sgt i64 %i.ac, 16
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !838

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %.sroa.014.1.i, i64 %i.ac, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ae = icmp eq i64 %i.ac, 16
  br i1 %i.ae, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.1.i, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 %i.ac ; 3 uses
  %i.ag = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !838

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %.sroa.010.1.i, i64 %i.ai, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %i.ak = icmp eq i64 %i.ai, 16
  br i1 %i.ak, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.1.i, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.am = sub i64 %i.b, %i.ag
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %.not = icmp slt i64 %i.an, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !4972

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us, %bb.a
  %.sroa.039.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 4
  %i.ao = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa, i64 %.idx49 ; 5 uses
  %i.ap = icmp ne i64 %.sroa.speculated, 0
  %i.aq = icmp ne ptr %i.ao, %1
  %or.cond17.i16 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond17.i16, label %.lr.ph.i22, label %.critedge.i17

.lr.ph.i22:                                       ; preds = %._crit_edge, %bb.p
  %.020.i23 = phi ptr [ %i.ay, %bb.p ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.014.019.i24 = phi ptr [ %.sroa.014.1.i29, %bb.p ], [ %.sroa.039.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.010.018.i25 = phi ptr [ %.sroa.010.1.i28, %bb.p ], [ %i.ao, %._crit_edge ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1336
  %i.at = icmp ult i8 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i.i26 = icmp ugt i8 %i.av, 15
  %or.cond.not.i.i.i27 = select i1 %i.at, i1 %.not.i.i.i26, i1 false
  br i1 %or.cond.not.i.i.i27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i23, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.018.i25, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25, i64 16
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i23, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.019.i24, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.1.i28 = phi ptr [ %i.aw, %bb.n ], [ %.sroa.010.018.i25, %bb.o ] ; 3 uses
  %.sroa.014.1.i29 = phi ptr [ %.sroa.014.019.i24, %bb.n ], [ %i.ax, %bb.o ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.020.i23, i64 16 ; 2 uses
  %i.az = icmp ne ptr %.sroa.014.1.i29, %i.ao
  %i.ba = icmp ne ptr %.sroa.010.1.i28, %1
  %or.cond.i30 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i30, label %.lr.ph.i22, label %.critedge.i17, !llvm.loop !4973

.critedge.i17:                                    ; preds = %bb.p, %._crit_edge
  %.sroa.010.0.lcssa.i18 = phi ptr [ %i.ao, %._crit_edge ], [ %.sroa.010.1.i28, %bb.p ] ; 3 uses
  %.sroa.014.0.lcssa.i19 = phi ptr [ %.sroa.039.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i29, %bb.p ] ; 3 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ay, %bb.p ] ; 3 uses
  %i.bb = ptrtoint ptr %i.ao to i64
  %i.bc = ptrtoint ptr %.sroa.014.0.lcssa.i19 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 16
  br i1 %i.be, label %bb.q, label %bb.r, !prof !838

bb.q:                                             ; preds = %.critedge.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i20, ptr align 1 %.sroa.014.0.lcssa.i19, i64 %i.bd, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

bb.r:                                             ; preds = %.critedge.i17
  %i.bf = icmp eq i64 %i.bd, 16
  br i1 %i.bf, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.lcssa.i20, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.0.lcssa.i19, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21: ; preds = %bb.s, %bb.r, %bb.q
  %i.bg = getelementptr inbounds i8, ptr %.0.lcssa.i20, i64 %i.bd ; 2 uses
  %i.bh = ptrtoint ptr %.sroa.010.0.lcssa.i18 to i64
  %i.bi = sub i64 %i.b, %i.bh                     ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, 16
  br i1 %i.bj, label %bb.t, label %bb.u, !prof !838

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %.sroa.010.0.lcssa.i18, i64 %i.bi, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  %i.bk = icmp eq i64 %i.bi, 16
  br i1 %i.bk, label %bb.v, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.0.lcssa.i18, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE1ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31: ; preds = %bb.t, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPN4llvm6object12Elf_Sym_ImplINS1_7ELFTypeILNS0_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZNS0_4bolt15RewriteInstance20updateELFSymbolTableIS5_ZNSH_15patchELFSymTabsIS5_EEvPNS1_13ELFObjectFileIT_EEEUlmRKS6_E0_ZNSJ_IS5_EEvSN_EUlNS0_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not49 = icmp slt i64 %i.e, %i.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 10 uses
  %.idx43 = shl nsw i64 %3, 5                     ; 2 uses
  %.not44 = icmp eq i64 %.idx, %.idx43
  br i1 %.not44, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
end_hunk_1
begin_hunk_2_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_:bb.a
  %.sroa.0.017.i = getelementptr inbounds nuw i8, ptr %.sroa.037.041, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.037.041, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.020.i = phi ptr [ %.sroa.0.017.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 7 uses
  %.pn19.i = phi ptr [ %.sroa.037.041, %.lr.ph.i ], [ %.sroa.0.020.i, %bb.h ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 28
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1442
  %.sroa.4.0.copyload.fr.i.i = freeze i8 %i.m     ; 2 uses
  %i.n = icmp ult i8 %.sroa.4.0.copyload.fr.i.i, 16 ; 2 uses
  %i.o = load i8, ptr %i.k, align 1
  %.not.i.i.i = icmp ugt i8 %i.o, 15
  %or.cond.not.i.i.i = select i1 %i.n, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.020.i, i64 16, i1 false)
  %i.p = ptrtoint ptr %.sroa.0.020.i to i64
  %i.q = sub i64 %i.p, %i.i                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %bb.e, !prof !838

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %i.u = sub nsw i64 0, %i.r
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.037.041, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.q, 16
  br i1 %i.w, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.041, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.041, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.020.i, i64 12, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i, i64 3, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.z = load i8, ptr %i.y, align 1
  %.not.i.i10.i.i = icmp ugt i8 %i.z, 15
  %or.cond.not.i.i11.i.i = select i1 %i.n, i1 %.not.i.i10.i.i, i1 false
  br i1 %or.cond.not.i.i11.i.i, label %.lr.ph.split.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i

.lr.ph.split.i.i:                                 ; preds = %bb.g, %.lr.ph.split.i.i
  %.sroa.07.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ], [ %.sroa.0.020.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.07.012.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -20
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i.i.i.i = icmp ugt i8 %i.ab, 15
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i, !llvm.loop !120

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i: ; preds = %.lr.ph.split.i.i, %bb.g
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i, %bb.g ], [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.07.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, i64 12, i1 false)
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 12
  store i8 %.sroa.4.0.copyload.fr.i.i, ptr %.sroa.4.0..sroa_idx4.i.i, align 1
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx6.i.i, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit, label %bb.b, !llvm.loop !121

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit: ; preds = %bb.h
  %i.ac = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ad = sub i64 %i.a, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4
  %.not = icmp slt i64 %i.ae, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !5661

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us, %bb.a
  %.sroa.037.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us ], [ %i.ac, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit ]
  %i.af = icmp eq ptr %.sroa.037.0.lcssa, %1
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %.preheader.i13

.preheader.i13:                                   ; preds = %._crit_edge
  %.sroa.0.017.i14 = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 16 ; 2 uses
  %.not18.i15 = icmp eq ptr %.sroa.0.017.i14, %1
  br i1 %.not18.i15, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.preheader.i13
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i16
  %.sroa.0.020.i17 = phi ptr [ %.sroa.0.017.i14, %.lr.ph.i16 ], [ %.sroa.0.0.i29, %bb.o ] ; 7 uses
  %.pn19.i18 = phi ptr [ %.sroa.037.0.lcssa, %.lr.ph.i16 ], [ %.sroa.0.020.i17, %bb.o ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 28
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !1442
  %.sroa.4.0.copyload.fr.i.i19 = freeze i8 %i.ai  ; 2 uses
  %i.aj = icmp ult i8 %.sroa.4.0.copyload.fr.i.i19, 16 ; 2 uses
  %i.ak = load i8, ptr %i.ag, align 1
  %.not.i.i.i20 = icmp ugt i8 %i.ak, 15
  %or.cond.not.i.i.i21 = select i1 %i.aj, i1 %.not.i.i.i20, i1 false
  br i1 %or.cond.not.i.i.i21, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i12, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.020.i17, i64 16, i1 false)
  %i.al = ptrtoint ptr %.sroa.0.020.i17 to i64
  %i.am = sub i64 %i.al, %.lcssa                  ; 3 uses
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !838

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 32
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.037.0.lcssa, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.as = icmp eq i64 %i.am, 16
  br i1 %i.as, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.at, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.0.lcssa, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i12, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i12)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i10, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.020.i17, i64 12, i1 false)
  %.sroa.5.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i11, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i22, i64 3, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i10.i.i23 = icmp ugt i8 %i.av, 15
  %or.cond.not.i.i11.i.i24 = select i1 %i.aj, i1 %.not.i.i10.i.i23, i1 false
  br i1 %or.cond.not.i.i11.i.i24, label %.lr.ph.split.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25

.lr.ph.split.i.i31:                               ; preds = %bb.n, %.lr.ph.split.i.i31
  %.sroa.07.012.i.i32 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.split.i.i31 ], [ %.sroa.0.020.i17, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.07.012.i.i32, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.07.012.i.i32, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.i33, i64 16, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %.sroa.07.012.i.i32, i64 -20
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i34 = icmp ugt i8 %i.ax, 15
  br i1 %.not.i.i.i.i34, label %.lr.ph.split.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25, !llvm.loop !120

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25: ; preds = %.lr.ph.split.i.i31, %bb.n
  %.sroa.07.0.lcssa.i.i26 = phi ptr [ %.sroa.0.020.i17, %bb.n ], [ %.sroa.0.0.i.i33, %.lr.ph.split.i.i31 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.07.0.lcssa.i.i26, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i10, i64 12, i1 false)
  %.sroa.4.0..sroa_idx4.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i26, i64 12
  store i8 %.sroa.4.0.copyload.fr.i.i19, ptr %.sroa.4.0..sroa_idx4.i.i27, align 1
  %.sroa.5.0..sroa_idx6.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i26, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx6.i.i28, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i11, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i11)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i17, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %bb.i, !llvm.loop !121

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36: ; preds = %bb.o, %._crit_edge, %.preheader.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 11 uses
  %.idx47 = shl i64 %3, 5                         ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  br i1 %.not48, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 16
  %i.g = icmp eq i64 %.idx, 16
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us
  %.055.us = phi ptr [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.054.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.039.054.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !838

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.055.us, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.039.054.us, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.055.us, ptr align 1 %.sroa.039.054.us, i64 %.idx, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %4 = getelementptr inbounds i8, ptr %.055.us, i64 %.idx
  %i.k = getelementptr inbounds i8, ptr %4, i64 %.idx ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.b, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %.not.us = icmp slt i64 %i.n, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !5662

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit
  %.055 = phi ptr [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ], [ %2, %.lr.ph ]
  %.sroa.039.054 = phi ptr [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx47 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.020.i = phi ptr [ %i.x, %bb.g ], [ %.055, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %bb.g ], [ %.sroa.039.054, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.o, %.lr.ph.i.preheader ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 12
  %i.r = load i8, ptr %i.q, align 1, !tbaa !1442
  %i.s = icmp ult i8 %i.r, 16
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 12
  %i.u = load i8, ptr %i.t, align 1
  %.not.i.i.i = icmp ugt i8 %i.u, 15
  %or.cond.not.i.i.i = select i1 %i.s, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.018.i, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.019.i, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.1.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.010.018.i, %bb.f ] ; 5 uses
  %.sroa.014.1.i = phi ptr [ %.sroa.014.019.i, %bb.e ], [ %i.w, %bb.f ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 4 uses
  %i.y = icmp ne ptr %.sroa.014.1.i, %i.o
  %i.z = icmp ne ptr %.sroa.010.1.i, %i.p
  %or.cond.i = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !5663

.critedge.i.loopexit:                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.o to i64
  %i.ab = ptrtoint ptr %.sroa.014.1.i to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp sgt i64 %i.ac, 16
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !838

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %.sroa.014.1.i, i64 %i.ac, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ae = icmp eq i64 %i.ac, 16
  br i1 %i.ae, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.1.i, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 %i.ac ; 3 uses
  %i.ag = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !838

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %.sroa.010.1.i, i64 %i.ai, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %i.ak = icmp eq i64 %i.ai, 16
  br i1 %i.ak, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.1.i, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.am = sub i64 %i.b, %i.ag
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %.not = icmp slt i64 %i.an, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !5662

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us, %bb.a
  %.sroa.039.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 4
  %i.ao = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa, i64 %.idx49 ; 5 uses
  %i.ap = icmp ne i64 %.sroa.speculated, 0
  %i.aq = icmp ne ptr %i.ao, %1
  %or.cond17.i16 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond17.i16, label %.lr.ph.i22, label %.critedge.i17

.lr.ph.i22:                                       ; preds = %._crit_edge, %bb.p
  %.020.i23 = phi ptr [ %i.ay, %bb.p ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.014.019.i24 = phi ptr [ %.sroa.014.1.i29, %bb.p ], [ %.sroa.039.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.010.018.i25 = phi ptr [ %.sroa.010.1.i28, %bb.p ], [ %i.ao, %._crit_edge ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1442
  %i.at = icmp ult i8 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i.i26 = icmp ugt i8 %i.av, 15
  %or.cond.not.i.i.i27 = select i1 %i.at, i1 %.not.i.i.i26, i1 false
  br i1 %or.cond.not.i.i.i27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i23, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.018.i25, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25, i64 16
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i23, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.019.i24, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.1.i28 = phi ptr [ %i.aw, %bb.n ], [ %.sroa.010.018.i25, %bb.o ] ; 3 uses
  %.sroa.014.1.i29 = phi ptr [ %.sroa.014.019.i24, %bb.n ], [ %i.ax, %bb.o ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.020.i23, i64 16 ; 2 uses
  %i.az = icmp ne ptr %.sroa.014.1.i29, %i.ao
  %i.ba = icmp ne ptr %.sroa.010.1.i28, %1
  %or.cond.i30 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i30, label %.lr.ph.i22, label %.critedge.i17, !llvm.loop !5663

.critedge.i17:                                    ; preds = %bb.p, %._crit_edge
  %.sroa.010.0.lcssa.i18 = phi ptr [ %i.ao, %._crit_edge ], [ %.sroa.010.1.i28, %bb.p ] ; 3 uses
  %.sroa.014.0.lcssa.i19 = phi ptr [ %.sroa.039.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i29, %bb.p ] ; 3 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ay, %bb.p ] ; 3 uses
  %i.bb = ptrtoint ptr %i.ao to i64
  %i.bc = ptrtoint ptr %.sroa.014.0.lcssa.i19 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 16
  br i1 %i.be, label %bb.q, label %bb.r, !prof !838

bb.q:                                             ; preds = %.critedge.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i20, ptr align 1 %.sroa.014.0.lcssa.i19, i64 %i.bd, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

bb.r:                                             ; preds = %.critedge.i17
  %i.bf = icmp eq i64 %i.bd, 16
  br i1 %i.bf, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.lcssa.i20, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.0.lcssa.i19, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21: ; preds = %bb.s, %bb.r, %bb.q
  %i.bg = getelementptr inbounds i8, ptr %.0.lcssa.i20, i64 %i.bd ; 2 uses
  %i.bh = ptrtoint ptr %.sroa.010.0.lcssa.i18 to i64
  %i.bi = sub i64 %i.b, %i.bh                     ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, 16
  br i1 %i.bj, label %bb.t, label %bb.u, !prof !838

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %.sroa.010.0.lcssa.i18, i64 %i.bi, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  %i.bk = icmp eq i64 %i.bi, 16
  br i1 %i.bk, label %bb.v, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.0.lcssa.i18, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31: ; preds = %bb.t, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPN4llvm6object12Elf_Sym_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZNS0_4bolt15RewriteInstance20updateELFSymbolTableIS5_ZNSH_15patchELFSymTabsIS5_EEvPNS1_13ELFObjectFileIT_EEEUlmRKS6_E_ZNSJ_IS5_EEvSN_EUlNS0_9StringRefEE_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not49 = icmp slt i64 %i.e, %i.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 10 uses
  %.idx43 = shl nsw i64 %3, 5                     ; 2 uses
  %.not44 = icmp eq i64 %.idx, %.idx43
  br i1 %.not44, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
end_hunk_2
begin_hunk_3_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_:bb.a
  %.sroa.0.017.i = getelementptr inbounds nuw i8, ptr %.sroa.037.041, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.037.041, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %.sroa.0.020.i = phi ptr [ %.sroa.0.017.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.h ] ; 7 uses
  %.pn19.i = phi ptr [ %.sroa.037.041, %.lr.ph.i ], [ %.sroa.0.020.i, %bb.h ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 28
  %i.m = load i8, ptr %i.l, align 1, !tbaa !1442
  %.sroa.4.0.copyload.fr.i.i = freeze i8 %i.m     ; 2 uses
  %i.n = icmp ult i8 %.sroa.4.0.copyload.fr.i.i, 16 ; 2 uses
  %i.o = load i8, ptr %i.k, align 1
  %.not.i.i.i = icmp ugt i8 %i.o, 15
  %or.cond.not.i.i.i = select i1 %i.n, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.020.i, i64 16, i1 false)
  %i.p = ptrtoint ptr %.sroa.0.020.i to i64
  %i.q = sub i64 %i.p, %i.i                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %bb.e, !prof !838

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 32
  %i.u = sub nsw i64 0, %i.r
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.037.041, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.q, 16
  br i1 %i.w, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.041, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.041, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.020.i, i64 12, i1 false)
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i, i64 3, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 12
  %i.z = load i8, ptr %i.y, align 1
  %.not.i.i10.i.i = icmp ugt i8 %i.z, 15
  %or.cond.not.i.i11.i.i = select i1 %i.n, i1 %.not.i.i10.i.i, i1 false
  br i1 %or.cond.not.i.i11.i.i, label %.lr.ph.split.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i

.lr.ph.split.i.i:                                 ; preds = %bb.g, %.lr.ph.split.i.i
  %.sroa.07.012.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ], [ %.sroa.0.020.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.07.012.i.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %.sroa.07.012.i.i, i64 -20
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i.i.i.i = icmp ugt i8 %i.ab, 15
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i, !llvm.loop !124

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i: ; preds = %.lr.ph.split.i.i, %bb.g
  %.sroa.07.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i, %bb.g ], [ %.sroa.0.0.i.i, %.lr.ph.split.i.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.07.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i, i64 12, i1 false)
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 12
  store i8 %.sroa.4.0.copyload.fr.i.i, ptr %.sroa.4.0..sroa_idx4.i.i, align 1
  %.sroa.5.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx6.i.i, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit, label %bb.b, !llvm.loop !125

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit: ; preds = %bb.h
  %i.ac = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ad = sub i64 %i.a, %i.ac
  %i.ae = ashr exact i64 %i.ad, 4
  %.not = icmp slt i64 %i.ae, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !5725

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us, %bb.a
  %.sroa.037.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.us ], [ %i.ac, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit.loopexit ]
  %i.af = icmp eq ptr %.sroa.037.0.lcssa, %1
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %.preheader.i13

.preheader.i13:                                   ; preds = %._crit_edge
  %.sroa.0.017.i14 = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 16 ; 2 uses
  %.not18.i15 = icmp eq ptr %.sroa.0.017.i14, %1
  br i1 %.not18.i15, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.preheader.i13
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i16
  %.sroa.0.020.i17 = phi ptr [ %.sroa.0.017.i14, %.lr.ph.i16 ], [ %.sroa.0.0.i29, %bb.o ] ; 7 uses
  %.pn19.i18 = phi ptr [ %.sroa.037.0.lcssa, %.lr.ph.i16 ], [ %.sroa.0.020.i17, %bb.o ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 28
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !1442
  %.sroa.4.0.copyload.fr.i.i19 = freeze i8 %i.ai  ; 2 uses
  %i.aj = icmp ult i8 %.sroa.4.0.copyload.fr.i.i19, 16 ; 2 uses
  %i.ak = load i8, ptr %i.ag, align 1
  %.not.i.i.i20 = icmp ugt i8 %i.ak, 15
  %or.cond.not.i.i.i21 = select i1 %i.aj, i1 %.not.i.i.i20, i1 false
  br i1 %or.cond.not.i.i.i21, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i12, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.020.i17, i64 16, i1 false)
  %i.al = ptrtoint ptr %.sroa.0.020.i17 to i64
  %i.am = sub i64 %i.al, %.lcssa                  ; 3 uses
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !838

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 32
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.037.0.lcssa, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.as = icmp eq i64 %i.am, 16
  br i1 %i.as, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.at, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.0.lcssa, i64 16, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.037.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i12, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i12)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i10, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.0.020.i17, i64 12, i1 false)
  %.sroa.5.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i11, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i22, i64 3, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i10.i.i23 = icmp ugt i8 %i.av, 15
  %or.cond.not.i.i11.i.i24 = select i1 %i.aj, i1 %.not.i.i10.i.i23, i1 false
  br i1 %or.cond.not.i.i11.i.i24, label %.lr.ph.split.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25

.lr.ph.split.i.i31:                               ; preds = %bb.n, %.lr.ph.split.i.i31
  %.sroa.07.012.i.i32 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.split.i.i31 ], [ %.sroa.0.020.i17, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.07.012.i.i32, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.07.012.i.i32, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.0.0.i.i33, i64 16, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %.sroa.07.012.i.i32, i64 -20
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i34 = icmp ugt i8 %i.ax, 15
  br i1 %.not.i.i.i.i34, label %.lr.ph.split.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25, !llvm.loop !124

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25: ; preds = %.lr.ph.split.i.i31, %bb.n
  %.sroa.07.0.lcssa.i.i26 = phi ptr [ %.sroa.0.020.i17, %bb.n ], [ %.sroa.0.0.i.i33, %.lr.ph.split.i.i31 ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.07.0.lcssa.i.i26, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.03.i.i10, i64 12, i1 false)
  %.sroa.4.0..sroa_idx4.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i26, i64 12
  store i8 %.sroa.4.0.copyload.fr.i.i19, ptr %.sroa.4.0..sroa_idx4.i.i27, align 1
  %.sroa.5.0..sroa_idx6.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa.i.i26, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx6.i.i28, ptr noundef nonnull align 8 dereferenceable(3) %.sroa.5.i.i11, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i11)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops14_Val_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_S10_.exit.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i35
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i17, i64 16 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36, label %bb.i, !llvm.loop !125

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_.exit36: ; preds = %bb.o, %._crit_edge, %.preheader.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not53 = icmp slt i64 %i.e, %i.a
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 11 uses
  %.idx47 = shl i64 %3, 5                         ; 2 uses
  %.not48 = icmp eq i64 %.idx, %.idx47
  br i1 %.not48, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 16
  %i.g = icmp eq i64 %.idx, 16
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us
  %.055.us = phi ptr [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.039.054.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.039.054.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !838

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.055.us, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.039.054.us, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.i, ptr noundef nonnull align 1 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.055.us, ptr align 1 %.sroa.039.054.us, i64 %.idx, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.055.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 1 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %4 = getelementptr inbounds i8, ptr %.055.us, i64 %.idx
  %i.k = getelementptr inbounds i8, ptr %4, i64 %.idx ; 2 uses
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.b, %i.l
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %.not.us = icmp slt i64 %i.n, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !5726

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit
  %.055 = phi ptr [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ], [ %2, %.lr.ph ]
  %.sroa.039.054 = phi ptr [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.039.054, i64 %.idx47 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.020.i = phi ptr [ %i.x, %bb.g ], [ %.055, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %bb.g ], [ %.sroa.039.054, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.o, %.lr.ph.i.preheader ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 12
  %i.r = load i8, ptr %i.q, align 1, !tbaa !1442
  %i.s = icmp ult i8 %i.r, 16
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 12
  %i.u = load i8, ptr %i.t, align 1
  %.not.i.i.i = icmp ugt i8 %i.u, 15
  %or.cond.not.i.i.i = select i1 %i.s, i1 %.not.i.i.i, i1 false
  br i1 %or.cond.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.018.i, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.019.i, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.1.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.010.018.i, %bb.f ] ; 5 uses
  %.sroa.014.1.i = phi ptr [ %.sroa.014.019.i, %bb.e ], [ %i.w, %bb.f ] ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 4 uses
  %i.y = icmp ne ptr %.sroa.014.1.i, %i.o
  %i.z = icmp ne ptr %.sroa.010.1.i, %i.p
  %or.cond.i = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !5727

.critedge.i.loopexit:                             ; preds = %bb.g
  %i.aa = ptrtoint ptr %i.o to i64
  %i.ab = ptrtoint ptr %.sroa.014.1.i to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp sgt i64 %i.ac, 16
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !838

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %.sroa.014.1.i, i64 %i.ac, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ae = icmp eq i64 %i.ac, 16
  br i1 %i.ae, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.1.i, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 %i.ac ; 3 uses
  %i.ag = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 4 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !838

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %.sroa.010.1.i, i64 %i.ai, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %i.ak = icmp eq i64 %i.ai, 16
  br i1 %i.ak, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.af, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.1.i, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.al = getelementptr inbounds i8, ptr %i.af, i64 %i.ai ; 2 uses
  %i.am = sub i64 %i.b, %i.ag
  %i.an = ashr exact i64 %i.am, 4                 ; 2 uses
  %.not = icmp slt i64 %i.an, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !5726

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us, %bb.a
  %.sroa.039.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.k, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.e, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit.us ], [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa51) ; 2 uses
  %.idx49 = shl nsw i64 %.sroa.speculated, 4
  %i.ao = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa, i64 %.idx49 ; 5 uses
  %i.ap = icmp ne i64 %.sroa.speculated, 0
  %i.aq = icmp ne ptr %i.ao, %1
  %or.cond17.i16 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond17.i16, label %.lr.ph.i22, label %.critedge.i17

.lr.ph.i22:                                       ; preds = %._crit_edge, %bb.p
  %.020.i23 = phi ptr [ %i.ay, %bb.p ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.014.019.i24 = phi ptr [ %.sroa.014.1.i29, %bb.p ], [ %.sroa.039.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.010.018.i25 = phi ptr [ %.sroa.010.1.i28, %bb.p ], [ %i.ao, %._crit_edge ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25, i64 12
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1442
  %i.at = icmp ult i8 %i.as, 16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24, i64 12
  %i.av = load i8, ptr %i.au, align 1
  %.not.i.i.i26 = icmp ugt i8 %i.av, 15
  %or.cond.not.i.i.i27 = select i1 %i.at, i1 %.not.i.i.i26, i1 false
  br i1 %or.cond.not.i.i.i27, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i23, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.018.i25, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25, i64 16
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.020.i23, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.019.i24, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.1.i28 = phi ptr [ %i.aw, %bb.n ], [ %.sroa.010.018.i25, %bb.o ] ; 3 uses
  %.sroa.014.1.i29 = phi ptr [ %.sroa.014.019.i24, %bb.n ], [ %i.ax, %bb.o ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.020.i23, i64 16 ; 2 uses
  %i.az = icmp ne ptr %.sroa.014.1.i29, %i.ao
  %i.ba = icmp ne ptr %.sroa.010.1.i28, %1
  %or.cond.i30 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond.i30, label %.lr.ph.i22, label %.critedge.i17, !llvm.loop !5727

.critedge.i17:                                    ; preds = %bb.p, %._crit_edge
  %.sroa.010.0.lcssa.i18 = phi ptr [ %i.ao, %._crit_edge ], [ %.sroa.010.1.i28, %bb.p ] ; 3 uses
  %.sroa.014.0.lcssa.i19 = phi ptr [ %.sroa.039.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i29, %bb.p ] ; 3 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.ay, %bb.p ] ; 3 uses
  %i.bb = ptrtoint ptr %i.ao to i64
  %i.bc = ptrtoint ptr %.sroa.014.0.lcssa.i19 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp sgt i64 %i.bd, 16
  br i1 %i.be, label %bb.q, label %bb.r, !prof !838

bb.q:                                             ; preds = %.critedge.i17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.lcssa.i20, ptr align 1 %.sroa.014.0.lcssa.i19, i64 %i.bd, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

bb.r:                                             ; preds = %.critedge.i17
  %i.bf = icmp eq i64 %i.bd, 16
  br i1 %i.bf, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0.lcssa.i20, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.014.0.lcssa.i19, i64 16, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21: ; preds = %bb.s, %bb.r, %bb.q
  %i.bg = getelementptr inbounds i8, ptr %.0.lcssa.i20, i64 %i.bd ; 2 uses
  %i.bh = ptrtoint ptr %.sroa.010.0.lcssa.i18 to i64
  %i.bi = sub i64 %i.b, %i.bh                     ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, 16
  br i1 %i.bj, label %bb.t, label %bb.u, !prof !838

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %.sroa.010.0.lcssa.i18, i64 %i.bi, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i21
  %i.bk = icmp eq i64 %i.bi, 16
  br i1 %i.bk, label %bb.v, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.010.0.lcssa.i18, i64 16, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm6object12Elf_Sym_ImplINS3_7ELFTypeILNS2_10endiannessE0ELb0EEEEESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZNS2_4bolt15RewriteInstance20updateELFSymbolTableIS7_ZNSH_15patchELFSymTabsIS7_EEvPNS3_13ELFObjectFileIT_EEEUlmRKS8_E0_ZNSJ_IS7_EEvSN_EUlNS2_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEES10_SL_SL_SL_SL_S10_S11_.exit31: ; preds = %bb.t, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPN4llvm6object12Elf_Sym_ImplINS1_7ELFTypeILNS0_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZNS0_4bolt15RewriteInstance20updateELFSymbolTableIS5_ZNSH_15patchELFSymTabsIS5_EEvPNS1_13ELFObjectFileIT_EEEUlmRKS6_E0_ZNSJ_IS5_EEvSN_EUlNS0_9StringRefEE0_EEvSN_bRKNSM_8Elf_ShdrERKSA_IjSaIjEET0_T1_EUlSP_SP_E_EEEvSL_SL_S10_S11_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not49 = icmp slt i64 %i.e, %i.a
  br i1 %.not49, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 10 uses
  %.idx43 = shl nsw i64 %3, 5                     ; 2 uses
  %.not44 = icmp eq i64 %.idx, %.idx43
  br i1 %.not44, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
end_hunk_3
begin_hunk_4_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_":bb.a

bb.w:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i.3.i"
  %i.bn = phi ptr [ %i.ay, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i ], [ %.pre.i.3.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i.3.i" ] ; 2 uses
  %.sroa.0.021.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.027.030.i, i64 40 ; 7 uses
  %i.bo = load ptr, ptr %.sroa.0.021.i.ptr.4.i, align 8, !tbaa !916 ; 6 uses
  %i.bp = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef %i.bo, ptr noundef %i.bn)
  br i1 %i.bp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = load ptr, ptr %.sroa.0.021.i.ptr.3.i, align 8, !tbaa !916 ; 2 uses
  %i.br = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef readonly %i.bo, ptr noundef %i.bq)
  br i1 %i.br, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i.4.i"

.lr.ph.i.i.4.i:                                   ; preds = %bb.x, %.lr.ph.i.i.4.i
  %i.bs = phi ptr [ %i.bt, %.lr.ph.i.i.4.i ], [ %i.bq, %bb.x ]
  %.sroa.0.010.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.021.i.ptr.3.i, %bb.x ] ; 3 uses
  %.sroa.05.09.i.i.4.i = phi ptr [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.021.i.ptr.4.i, %bb.x ]
  store ptr %i.bs, ptr %.sroa.05.09.i.i.4.i, align 8, !tbaa !916
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.4.i, i64 -8 ; 2 uses
  %i.bt = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !916 ; 2 uses
  %i.bu = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef readonly %i.bo, ptr noundef %i.bt)
  br i1 %i.bu, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i.4.i", !llvm.loop !155

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i.4.i": ; preds = %.lr.ph.i.i.4.i, %bb.x
  %.sroa.05.0.lcssa.i.i.4.i = phi ptr [ %.sroa.0.021.i.ptr.4.i, %bb.x ], [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %i.bo, ptr %.sroa.05.0.lcssa.i.i.4.i, align 8, !tbaa !916
  %.pre.i.4.i = load ptr, ptr %.sroa.027.030.i, align 8, !tbaa !916
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.bv = ptrtoint ptr %.sroa.0.021.i.ptr.4.i to i64
  %i.bw = sub i64 %i.bv, %i.g                     ; 3 uses
  %i.bx = ashr exact i64 %i.bw, 3                 ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 1
  br i1 %i.by, label %bb.ab, label %bb.z, !prof !838

bb.z:                                             ; preds = %bb.y
  %i.bz = icmp eq i64 %i.bw, 8
  br i1 %i.bz, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i

bb.aa:                                            ; preds = %bb.z
  store ptr %i.bn, ptr %.sroa.0.021.i.ptr.4.i, align 8, !tbaa !916
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i

bb.ab:                                            ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.027.030.i, i64 48
  %i.cb = sub nsw i64 0, %i.bx
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.030.i, i64 %i.bw, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr %i.bo, ptr %.sroa.027.030.i, align 8, !tbaa !916
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i.4.i"
  %i.cd = phi ptr [ %i.bo, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i ], [ %.pre.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i.4.i" ] ; 2 uses
  %.sroa.0.021.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.027.030.i, i64 48 ; 5 uses
  %i.ce = load ptr, ptr %.sroa.0.021.i.ptr.5.i, align 8, !tbaa !916 ; 4 uses
  %i.cf = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef %i.ce, ptr noundef %i.cd)
  br i1 %i.cf, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = load ptr, ptr %.sroa.0.021.i.ptr.4.i, align 8, !tbaa !916 ; 2 uses
  %i.ch = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef readonly %i.ce, ptr noundef %i.cg)
  br i1 %i.ch, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i"

.lr.ph.i.i.5.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.5.i
  %i.ci = phi ptr [ %i.cj, %.lr.ph.i.i.5.i ], [ %i.cg, %bb.ad ]
  %.sroa.0.010.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.021.i.ptr.4.i, %bb.ad ] ; 3 uses
  %.sroa.05.09.i.i.5.i = phi ptr [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.021.i.ptr.5.i, %bb.ad ]
  store ptr %i.ci, ptr %.sroa.05.09.i.i.5.i, align 8, !tbaa !916
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.5.i, i64 -8 ; 2 uses
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !916 ; 2 uses
  %i.ck = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef readonly %i.ce, ptr noundef %i.cj)
  br i1 %i.ck, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i", !llvm.loop !155

bb.ae:                                            ; preds = %bb.ac
  %i.cl = ptrtoint ptr %.sroa.0.021.i.ptr.5.i to i64
  %i.cm = sub i64 %i.cl, %i.g                     ; 3 uses
  %i.cn = ashr exact i64 %i.cm, 3                 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, 1
  br i1 %i.co, label %bb.ah, label %bb.af, !prof !838

bb.af:                                            ; preds = %bb.ae
  %i.cp = icmp eq i64 %i.cm, 8
  br i1 %i.cp, label %bb.ag, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i"

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cd, ptr %.sroa.0.021.i.ptr.5.i, align 8, !tbaa !916
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i"

bb.ah:                                            ; preds = %bb.ae
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.027.030.i, i64 56
  %i.cr = sub nsw i64 0, %i.cn
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.cr
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.030.i, i64 %i.cm, i1 false)
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i"

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i": ; preds = %.lr.ph.i.i.5.i, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.sroa.027.030.sink.i = phi ptr [ %.sroa.027.030.i, %bb.af ], [ %.sroa.0.021.i.ptr.5.i, %bb.ad ], [ %.sroa.027.030.i, %bb.ah ], [ %.sroa.027.030.i, %bb.ag ], [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %i.ce, ptr %.sroa.027.030.sink.i, align 8, !tbaa !916
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.027.030.i, i64 56 ; 3 uses
  %i.cu = ptrtoint ptr %i.ct to i64               ; 3 uses
  %i.cv = sub i64 %i.a, %i.cu
  %i.cw = icmp sgt i64 %i.cv, 48
  br i1 %i.cw, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !6744

._crit_edge.i:                                    ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i", %bb.a
  %.sroa.027.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.ct, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i" ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cu, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_.exit.i" ]
  %i.cx = icmp eq ptr %.sroa.027.0.lcssa.i, %1
  br i1 %i.cx, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_.exit", label %.preheader.i9.i

.preheader.i9.i:                                  ; preds = %._crit_edge.i
  %.sroa.0.018.i10.i = getelementptr inbounds nuw i8, ptr %.sroa.027.0.lcssa.i, i64 8 ; 2 uses
  %.not19.i11.i = icmp eq ptr %.sroa.0.018.i10.i, %1
  br i1 %.not19.i11.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_.exit", label %.lr.ph.i12.i

.lr.ph.i12.i:                                     ; preds = %.preheader.i9.i
  %.pre23.i13.i = load ptr, ptr %.sroa.027.0.lcssa.i, align 8, !tbaa !916
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph.i12.i
  %i.cy = phi ptr [ %.pre23.i13.i, %.lr.ph.i12.i ], [ %i.dp, %bb.ao ] ; 2 uses
  %.sroa.0.021.i14.i = phi ptr [ %.sroa.0.018.i10.i, %.lr.ph.i12.i ], [ %.sroa.0.0.i19.i, %bb.ao ] ; 6 uses
  %.pn20.i15.i = phi ptr [ %.sroa.027.0.lcssa.i, %.lr.ph.i12.i ], [ %.sroa.0.021.i14.i, %bb.ao ] ; 4 uses
  %i.cz = load ptr, ptr %.sroa.0.021.i14.i, align 8, !tbaa !916 ; 6 uses
  %i.da = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef %i.cz, ptr noundef %i.cy)
  br i1 %i.da, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.db = ptrtoint ptr %.sroa.0.021.i14.i to i64
  %i.dc = sub i64 %i.db, %.lcssa.i                ; 3 uses
  %i.dd = ashr exact i64 %i.dc, 3                 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 1
  br i1 %i.de, label %bb.ak, label %bb.al, !prof !838

bb.ak:                                            ; preds = %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %.pn20.i15.i, i64 16
  %i.dg = sub nsw i64 0, %i.dd
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.0.lcssa.i, i64 %i.dc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i25.i

bb.al:                                            ; preds = %bb.aj
  %i.di = icmp eq i64 %i.dc, 8
  br i1 %i.di, label %bb.am, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i25.i

bb.am:                                            ; preds = %bb.al
  %i.dj = getelementptr inbounds nuw i8, ptr %.pn20.i15.i, i64 8
  store ptr %i.cy, ptr %i.dj, align 8, !tbaa !916
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i25.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i25.i: ; preds = %bb.am, %bb.al, %bb.ak
  store ptr %i.cz, ptr %.sroa.027.0.lcssa.i, align 8, !tbaa !916
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.dk = load ptr, ptr %.pn20.i15.i, align 8, !tbaa !916 ; 2 uses
  %i.dl = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef readonly %i.cz, ptr noundef %i.dk)
  br i1 %i.dl, label %.lr.ph.i.i21.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i16.i"

.lr.ph.i.i21.i:                                   ; preds = %bb.an, %.lr.ph.i.i21.i
  %i.dm = phi ptr [ %i.dn, %.lr.ph.i.i21.i ], [ %i.dk, %bb.an ]
  %.sroa.0.010.i.i22.i = phi ptr [ %.sroa.0.0.i.i24.i, %.lr.ph.i.i21.i ], [ %.pn20.i15.i, %bb.an ] ; 3 uses
  %.sroa.05.09.i.i23.i = phi ptr [ %.sroa.0.010.i.i22.i, %.lr.ph.i.i21.i ], [ %.sroa.0.021.i14.i, %bb.an ]
  store ptr %i.dm, ptr %.sroa.05.09.i.i23.i, align 8, !tbaa !916
  %.sroa.0.0.i.i24.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i22.i, i64 -8 ; 2 uses
  %i.dn = load ptr, ptr %.sroa.0.0.i.i24.i, align 8, !tbaa !916 ; 2 uses
  %i.do = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef readonly %i.cz, ptr noundef %i.dn)
  br i1 %i.do, label %.lr.ph.i.i21.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i16.i", !llvm.loop !155

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i16.i": ; preds = %.lr.ph.i.i21.i, %bb.an
  %.sroa.05.0.lcssa.i.i17.i = phi ptr [ %.sroa.0.021.i14.i, %bb.an ], [ %.sroa.0.010.i.i22.i, %.lr.ph.i.i21.i ]
  store ptr %i.cz, ptr %.sroa.05.0.lcssa.i.i17.i, align 8, !tbaa !916
  %.pre.i18.i = load ptr, ptr %.sroa.027.0.lcssa.i, align 8, !tbaa !916
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i16.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i25.i
  %i.dp = phi ptr [ %i.cz, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i25.i ], [ %.pre.i18.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_T0_.exit.i16.i" ]
  %.sroa.0.0.i19.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i14.i, i64 8 ; 2 uses
  %.not.i20.i = icmp eq ptr %.sroa.0.0.i19.i, %1
  br i1 %.not.i20.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_.exit", label %bb.ai, !llvm.loop !156

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_.exit": ; preds = %bb.ao, %._crit_edge.i, %.preheader.i9.i
  %i.dq = icmp sgt i64 %i.d, 7
  br i1 %i.dq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_.exit"
  %i.dr = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit"
  %.064 = phi i64 [ 7, %.lr.ph ], [ %i.gf, %"_ZSt17__merge_sort_loopIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit" ] ; 8 uses
  %i.ds = shl nsw i64 %.064, 1                    ; 6 uses
  %.not53.i = icmp slt i64 %i.d, %i.ds
  br i1 %.not53.i, label %._crit_edge.i20, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.idx.i = shl i64 %.064, 3                      ; 12 uses
  %.idx47.i = shl i64 %.064, 4                    ; 2 uses
  %.not48.i = icmp eq i64 %.idx.i, %.idx47.i
  br i1 %.not48.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dt = icmp sgt i64 %.idx.i, 8
  br i1 %i.dt, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !838

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.055.us.i.us = phi ptr [ %3, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.039.054.us.i.us = phi ptr [ %i.du, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.039.054.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.055.us.i.us, ptr align 8 %.sroa.039.054.us.i.us, i64 %.idx.i, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.055.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull align 8 %i.du, i64 %.idx.i, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx.i ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.a, %i.dw
  %i.dy = ashr exact i64 %i.dx, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.dy, %i.ds
  br i1 %.not.us.i.us, label %._crit_edge.i20, label %.critedge.i.us.i.us, !llvm.loop !6745

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.dz = icmp eq i64 %.idx.i, 8
  br i1 %i.dz, label %.critedge.i.us.i.us53.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us53.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !916
  br label %.critedge.i.us.i.us53

.critedge.i.us.i.us53:                            ; preds = %.critedge.i.us.i.us53.preheader, %.critedge.i.us.i.us53
  %i.ea = phi ptr [ %i.ed, %.critedge.i.us.i.us53 ], [ %.pre, %.critedge.i.us.i.us53.preheader ]
  %.055.us.i.us54 = phi ptr [ %4, %.critedge.i.us.i.us53 ], [ %2, %.critedge.i.us.i.us53.preheader ] ; 3 uses
  %.sroa.039.054.us.i.us55 = phi ptr [ %i.eb, %.critedge.i.us.i.us53 ], [ %0, %.critedge.i.us.i.us53.preheader ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.039.054.us.i.us55, i64 8 ; 4 uses
  store ptr %i.ea, ptr %.055.us.i.us54, align 8, !tbaa !916
  %i.ec = getelementptr inbounds nuw i8, ptr %.055.us.i.us54, i64 8
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !916 ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !916
  %4 = getelementptr inbounds nuw i8, ptr %.055.us.i.us54, i64 16 ; 2 uses
  %i.ee = ptrtoint ptr %i.eb to i64
  %i.ef = sub i64 %i.a, %i.ee
  %i.eg = ashr exact i64 %i.ef, 3                 ; 2 uses
  %.not.us.i.us57 = icmp slt i64 %i.eg, %i.ds
  br i1 %.not.us.i.us57, label %._crit_edge.i20, label %.critedge.i.us.i.us53, !llvm.loop !6745

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.055.us.i = phi ptr [ %i.ei, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.039.054.us.i = phi ptr [ %5, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %5 = getelementptr inbounds i8, ptr %.sroa.039.054.us.i, i64 %.idx.i ; 3 uses
  %i.eh = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 %.idx.i ; 2 uses
  %i.ej = ptrtoint ptr %5 to i64
  %i.ek = sub i64 %i.a, %i.ej
  %i.el = ashr exact i64 %i.ek, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.el, %i.ds
  br i1 %.not.us.i, label %._crit_edge.i20, label %.critedge.i.us.i, !llvm.loop !6745

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i"
  %.055.i = phi ptr [ %i.fh, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.039.054.i = phi ptr [ %i.en, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %.sroa.039.054.i, i64 %.idx.i ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.039.054.i, i64 %.idx47.i ; 4 uses
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19, %.lr.ph.i.preheader.i
  %.021.i.i = phi ptr [ %i.er, %.lr.ph.i.i19 ], [ %.055.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.015.020.i.i = phi ptr [ %.sroa.015.1.i.i, %.lr.ph.i.i19 ], [ %.sroa.039.054.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.011.019.i.i = phi ptr [ %.sroa.011.1.i.i, %.lr.ph.i.i19 ], [ %i.em, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.eo = load ptr, ptr %.sroa.011.019.i.i, align 8, !tbaa !916 ; 2 uses
  %i.ep = load ptr, ptr %.sroa.015.020.i.i, align 8, !tbaa !916 ; 2 uses
  %i.eq = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef %i.eo, ptr noundef %i.ep) ; 3 uses
  %.sink.i.i = select i1 %i.eq, ptr %i.eo, ptr %i.ep
  %.sroa.011.1.idx.i.i = select i1 %i.eq, i64 8, i64 0
  %.sroa.011.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i.i, i64 %.sroa.011.1.idx.i.i ; 5 uses
  %.sroa.015.1.idx.i.i = select i1 %i.eq, i64 0, i64 8
  %.sroa.015.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i.i, i64 %.sroa.015.1.idx.i.i ; 5 uses
  store ptr %.sink.i.i, ptr %.021.i.i, align 8, !tbaa !916
  %i.er = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8 ; 4 uses
  %i.es = icmp ne ptr %.sroa.015.1.i.i, %i.em
  %i.et = icmp ne ptr %.sroa.011.1.i.i, %i.en
  %or.cond.i.i = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i19, label %.critedge.i.loopexit.i, !llvm.loop !6746

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i19
  %i.eu = ptrtoint ptr %i.em to i64
  %i.ev = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 4 uses
  %i.ex = icmp sgt i64 %i.ew, 8
  br i1 %i.ex, label %bb.aq, label %bb.ar, !prof !838

bb.aq:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.er, ptr nonnull align 8 %.sroa.015.1.i.i, i64 %i.ew, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

bb.ar:                                            ; preds = %.critedge.i.loopexit.i
  %i.ey = icmp eq i64 %i.ew, 8
  br i1 %i.ey, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ez = load ptr, ptr %.sroa.015.1.i.i, align 8, !tbaa !916
  store ptr %i.ez, ptr %i.er, align 8, !tbaa !916
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.fa = getelementptr inbounds i8, ptr %i.er, i64 %i.ew ; 3 uses
  %i.fb = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.fc = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 4 uses
  %i.fe = icmp sgt i64 %i.fd, 8
  br i1 %i.fe, label %bb.at, label %bb.au, !prof !838

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr nonnull align 8 %.sroa.011.1.i.i, i64 %i.fd, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i.i
  %i.ff = icmp eq i64 %i.fd, 8
  br i1 %i.ff, label %bb.av, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i"

bb.av:                                            ; preds = %bb.au
  %i.fg = load ptr, ptr %.sroa.011.1.i.i, align 8, !tbaa !916
  store ptr %i.fg, ptr %i.fa, align 8, !tbaa !916
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i": ; preds = %bb.av, %bb.au, %bb.at
  %i.fh = getelementptr inbounds i8, ptr %i.fa, i64 %i.fd ; 2 uses
  %i.fi = sub i64 %i.a, %i.fb
  %i.fj = ashr exact i64 %i.fi, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.fj, %i.ds
  br i1 %.not.i, label %._crit_edge.i20, label %.lr.ph.i.preheader.i, !llvm.loop !6745

._crit_edge.i20:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us53, %.critedge.i.us.i.us, %bb.ap
  %.sroa.039.0.lcssa.i = phi ptr [ %0, %bb.ap ], [ %i.du, %.critedge.i.us.i.us ], [ %i.eb, %.critedge.i.us.i.us53 ], [ %5, %.critedge.i.us.i ], [ %i.en, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ap ], [ %3, %.critedge.i.us.i.us ], [ %4, %.critedge.i.us.i.us53 ], [ %i.ei, %.critedge.i.us.i ], [ %i.fh, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ] ; 2 uses
  %.lcssa51.i = phi i64 [ %i.d, %bb.ap ], [ %i.dy, %.critedge.i.us.i.us ], [ %i.eg, %.critedge.i.us.i.us53 ], [ %i.el, %.critedge.i.us.i ], [ %i.fj, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.064, i64 %.lcssa51.i) ; 2 uses
  %.idx49.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.fk = getelementptr inbounds i8, ptr %.sroa.039.0.lcssa.i, i64 %.idx49.i ; 5 uses
  %i.fl = icmp ne i64 %.sroa.speculated.i, 0
  %i.fm = icmp ne ptr %i.fk, %1
  %or.cond18.i15.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond18.i15.i, label %.lr.ph.i21.i, label %.critedge.i16.i

.lr.ph.i21.i:                                     ; preds = %._crit_edge.i20, %.lr.ph.i21.i
  %.021.i22.i = phi ptr [ %i.fq, %.lr.ph.i21.i ], [ %.0.lcssa.i, %._crit_edge.i20 ] ; 2 uses
  %.sroa.015.020.i23.i = phi ptr [ %.sroa.015.1.i29.i, %.lr.ph.i21.i ], [ %.sroa.039.0.lcssa.i, %._crit_edge.i20 ] ; 2 uses
  %.sroa.011.019.i24.i = phi ptr [ %.sroa.011.1.i27.i, %.lr.ph.i21.i ], [ %i.fk, %._crit_edge.i20 ] ; 2 uses
  %i.fn = load ptr, ptr %.sroa.011.019.i24.i, align 8, !tbaa !916 ; 2 uses
  %i.fo = load ptr, ptr %.sroa.015.020.i23.i, align 8, !tbaa !916 ; 2 uses
  %i.fp = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef %i.fn, ptr noundef %i.fo) ; 3 uses
  %.sink.i25.i = select i1 %i.fp, ptr %i.fn, ptr %i.fo
  %.sroa.011.1.idx.i26.i = select i1 %i.fp, i64 8, i64 0
  %.sroa.011.1.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i24.i, i64 %.sroa.011.1.idx.i26.i ; 3 uses
  %.sroa.015.1.idx.i28.i = select i1 %i.fp, i64 0, i64 8
  %.sroa.015.1.i29.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i23.i, i64 %.sroa.015.1.idx.i28.i ; 3 uses
  store ptr %.sink.i25.i, ptr %.021.i22.i, align 8, !tbaa !916
  %i.fq = getelementptr inbounds nuw i8, ptr %.021.i22.i, i64 8 ; 2 uses
  %i.fr = icmp ne ptr %.sroa.015.1.i29.i, %i.fk
  %i.fs = icmp ne ptr %.sroa.011.1.i27.i, %1
  %or.cond.i30.i = select i1 %i.fr, i1 %i.fs, i1 false
  br i1 %or.cond.i30.i, label %.lr.ph.i21.i, label %.critedge.i16.i, !llvm.loop !6746

.critedge.i16.i:                                  ; preds = %.lr.ph.i21.i, %._crit_edge.i20
  %.sroa.011.0.lcssa.i17.i = phi ptr [ %i.fk, %._crit_edge.i20 ], [ %.sroa.011.1.i27.i, %.lr.ph.i21.i ] ; 3 uses
  %.sroa.015.0.lcssa.i18.i = phi ptr [ %.sroa.039.0.lcssa.i, %._crit_edge.i20 ], [ %.sroa.015.1.i29.i, %.lr.ph.i21.i ] ; 3 uses
  %.0.lcssa.i19.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i20 ], [ %i.fq, %.lr.ph.i21.i ] ; 3 uses
  %i.ft = ptrtoint ptr %i.fk to i64
  %i.fu = ptrtoint ptr %.sroa.015.0.lcssa.i18.i to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 4 uses
  %i.fw = icmp sgt i64 %i.fv, 8
  br i1 %i.fw, label %bb.aw, label %bb.ax, !prof !838

bb.aw:                                            ; preds = %.critedge.i16.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i19.i, ptr align 8 %.sroa.015.0.lcssa.i18.i, i64 %i.fv, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i

bb.ax:                                            ; preds = %.critedge.i16.i
  %i.fx = icmp eq i64 %i.fv, 8
  br i1 %i.fx, label %bb.ay, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i

bb.ay:                                            ; preds = %bb.ax
  %i.fy = load ptr, ptr %.sroa.015.0.lcssa.i18.i, align 8, !tbaa !916
  store ptr %i.fy, ptr %.0.lcssa.i19.i, align 8, !tbaa !916
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.fz = getelementptr inbounds i8, ptr %.0.lcssa.i19.i, i64 %i.fv ; 2 uses
  %i.ga = ptrtoint ptr %.sroa.011.0.lcssa.i17.i to i64
  %i.gb = sub i64 %i.a, %i.ga                     ; 3 uses
  %i.gc = icmp sgt i64 %i.gb, 8
  br i1 %i.gc, label %bb.az, label %bb.ba, !prof !838

bb.az:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fz, ptr align 8 %.sroa.011.0.lcssa.i17.i, i64 %i.gb, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit"

bb.ba:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i20.i
  %i.gd = icmp eq i64 %i.gb, 8
  br i1 %i.gd, label %bb.bb, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit"

bb.bb:                                            ; preds = %bb.ba
  %i.ge = load ptr, ptr %.sroa.011.0.lcssa.i17.i, align 8, !tbaa !916
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !916
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit": ; preds = %bb.az, %bb.ba, %bb.bb
  %i.gf = shl nsw i64 %.064, 2                    ; 5 uses
  %.not51.i = icmp slt i64 %i.d, %i.gf
  br i1 %.not51.i, label %._crit_edge.i26, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit"
  %.idx.i22 = shl i64 %.064, 4                    ; 8 uses
  %.idx45.i = shl nsw i64 %.064, 5                ; 2 uses
  %.not46.i = icmp eq i64 %.idx.i22, %.idx45.i
  br i1 %.not46.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i23

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i21
  %i.gg = icmp sgt i64 %.064, 0
  %i.gh = icmp sgt i64 %.idx.i22, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.021.053.us.i = phi ptr [ %i.gk, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.052.us.i = phi ptr [ %i.gi, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %.052.us.i, i64 %.idx.i22 ; 4 uses
  br i1 %i.gg, label %bb.bc, label %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i, !prof !838

bb.bc:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.021.053.us.i, ptr align 8 %.052.us.i, i64 %.idx.i22, i1 false)
  br label %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i

_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.bc
  %i.gj = getelementptr inbounds i8, ptr %.sroa.021.053.us.i, i64 %.idx.i22 ; 2 uses
  br i1 %i.gh, label %bb.bd, label %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i", !prof !1371

bb.bd:                                            ; preds = %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.gi, i64 %.idx.i22, i1 false)
  br label %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.us.i, %bb.bd
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %.idx.i22 ; 2 uses
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = sub i64 %i.dr, %i.gl
  %i.gn = ashr exact i64 %i.gm, 3                 ; 2 uses
  %.not.us.i30 = icmp slt i64 %i.gn, %i.gf
  br i1 %.not.us.i30, label %._crit_edge.i26, label %._crit_edge.i.us.i, !llvm.loop !6747

.lr.ph.i.preheader.i23:                           ; preds = %.lr.ph.i21, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i"
  %.sroa.021.053.i = phi ptr [ %i.hi, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ], [ %0, %.lr.ph.i21 ]
  %.052.i = phi ptr [ %i.gp, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ], [ %2, %.lr.ph.i21 ] ; 3 uses
  %i.go = getelementptr inbounds i8, ptr %.052.i, i64 %.idx.i22 ; 3 uses
  %i.gp = getelementptr inbounds i8, ptr %.052.i, i64 %.idx45.i ; 4 uses
  br label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %.lr.ph.i.i24, %.lr.ph.i.preheader.i23
  %.024.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i24 ], [ %.052.i, %.lr.ph.i.preheader.i23 ] ; 2 uses
  %.01623.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i24 ], [ %i.go, %.lr.ph.i.preheader.i23 ] ; 2 uses
  %.sroa.019.022.i.i = phi ptr [ %i.gr, %.lr.ph.i.i24 ], [ %.sroa.021.053.i, %.lr.ph.i.preheader.i23 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01623.i.i, align 8, !tbaa !916 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.024.i.i, align 8, !tbaa !916 ; 2 uses
  %i.gq = tail call fastcc noundef zeroext i1 @"_ZZN4llvm4bolt15RewriteInstance15getCodeSectionsEvENK3$_0clEPKNS0_13BinarySectionES5_"(ptr noundef readonly %.016.val.i.i, ptr noundef readonly %.0.val.i.i) ; 3 uses
  %.0.val.sink.i.i = select i1 %i.gq, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.gq, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01623.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.gq, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.019.022.i.i, align 8, !tbaa !916
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.019.022.i.i, i64 8 ; 4 uses
  %i.gs = icmp ne ptr %.1.i.i, %i.go
  %i.gt = icmp ne ptr %.117.i.i, %i.gp
  %i.gu = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %i.gu, label %.lr.ph.i.i24, label %._crit_edge.i.loopexit.i, !llvm.loop !6748

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i24
  %i.gv = ptrtoint ptr %i.go to i64
  %i.gw = ptrtoint ptr %.1.i.i to i64
  %i.gx = sub i64 %i.gv, %i.gw                    ; 4 uses
  %i.gy = icmp sgt i64 %i.gx, 8
  br i1 %i.gy, label %bb.be, label %bb.bf, !prof !838

bb.be:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull align 8 %.1.i.i, i64 %i.gx, i1 false)
  br label %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

bb.bf:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gz = icmp eq i64 %i.gx, 8
  br i1 %i.gz, label %bb.bg, label %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ha = load ptr, ptr %.1.i.i, align 8, !tbaa !916
  store ptr %i.ha, ptr %i.gr, align 8, !tbaa !916
  br label %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i

_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.hb = getelementptr inbounds i8, ptr %i.gr, i64 %i.gx ; 3 uses
  %i.hc = ptrtoint ptr %i.gp to i64               ; 2 uses
  %i.hd = ptrtoint ptr %.117.i.i to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 4 uses
  %i.hf = icmp sgt i64 %i.he, 8
  br i1 %i.hf, label %bb.bh, label %bb.bi, !prof !838

bb.bh:                                            ; preds = %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr nonnull align 8 %.117.i.i, i64 %i.he, i1 false)
  br label %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i"

bb.bi:                                            ; preds = %_ZSt4moveIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i.i
  %i.hg = icmp eq i64 %i.he, 8
  br i1 %i.hg, label %bb.bj, label %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i"

bb.bj:                                            ; preds = %bb.bi
  %i.hh = load ptr, ptr %.117.i.i, align 8, !tbaa !916
  store ptr %i.hh, ptr %i.hb, align 8, !tbaa !916
  br label %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i"

"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i": ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.hi = getelementptr inbounds i8, ptr %i.hb, i64 %i.he ; 2 uses
  %i.hj = sub i64 %i.dr, %i.hc
  %i.hk = ashr exact i64 %i.hj, 3                 ; 2 uses
  %.not.i25 = icmp slt i64 %i.hk, %i.gf
  br i1 %.not.i25, label %._crit_edge.i26, label %.lr.ph.i.preheader.i23, !llvm.loop !6747

._crit_edge.i26:                                  ; preds = %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i", %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit"
  %.0.lcssa.i27 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit" ], [ %i.gi, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i" ], [ %i.gp, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ] ; 3 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit" ], [ %i.gk, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i" ], [ %i.hi, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ] ; 2 uses
  %.lcssa49.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt13BinarySectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_15RewriteInstance15getCodeSectionsEvE3$_0EEEvT_SG_T0_T1_T2_.exit" ], [ %i.gn, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.us.i" ], [ %i.hk, %"_ZSt12__move_mergeIPPN4llvm4bolt13BinarySectionEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIZNS1_15RewriteInstance15getCodeSectionsEvE3$_0EEET0_T_SH_SH_SH_SG_T1_.exit.i" ]
  %.sroa.speculated.i28 = tail call i64 @llvm.smin.i64(i64 %i.ds, i64 %.lcssa49.i) ; 2 uses
  %.idx47.i29 = shl nsw i64 %.sroa.speculated.i28, 3
  %i.hl = getelementptr inbounds i8, ptr %.0.lcssa.i27, i64 %.idx47.i29 ; 5 uses
  %i.hm = icmp ne i64 %.sroa.speculated.i28, 0
  %i.hn = icmp ne ptr %i.hl, %i.e
  %i.ho = and i1 %i.hm, %i.hn
  br i1 %i.ho, label %.lr.ph.i29.i, label %._crit_edge.i24.i

.lr.ph.i29.i:                                     ; preds = %._crit_edge.i26, %.lr.ph.i29.i
end_hunk_4
