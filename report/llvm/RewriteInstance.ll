Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RewriteInstance?download=true
inline.NumInlined: 27087
inline.NumDeleted: 8981
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZZN4llvm4bolt15RewriteInstance17getOutputSectionsINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEEESt6vectorINS3_13ELFObjectFileIT_E8Elf_ShdrESaISB_EEPSA_RS7_IjSaIjEEENKUlRKNS3_13Elf_Shdr_ImplIS6_EERNS0_13BinarySectionEE_clESL_SN_:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.445) #41
  unreachable

_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.x = sdiv exact i64 %i.v, 48                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 192153584101141162)
  %i.ab = select i1 %i.z, i64 192153584101141162, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = mul nuw nsw i64 %i.ab, 48
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #37 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v ; 3 uses
  store ptr %2, ptr %i.ae, align 8, !tbaa !1319
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.i, ptr %i.af, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.6, i64 36, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.s, %i.m
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.ad, %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.s, %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !alias.scope !4674
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.m
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ad, %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48
  %.not.i24.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE17_M_realloc_insertIJS4_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !1313
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.al) #36
  br label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE17_M_realloc_insertIJS4_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE17_M_realloc_insertIJS4_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i
  store ptr %i.ad, ptr %i.k, align 8, !tbaa !1320
  store ptr %i.ai, ptr %i.l, align 8, !tbaa !1312
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.am, ptr %i.n, align 8, !tbaa !1313
  br label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE12emplace_backIJS4_SA_EEERSB_DpOT_.exit

_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE12emplace_backIJS4_SA_EEERSB_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEESaISB_EE17_M_realloc_insertIJS4_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

declare noundef i64 @_ZNK4llvm18StringTableBuilder9getOffsetENS_19CachedHashStringRefE(ptr noundef nonnull align 8 dereferenceable(62), ptr, i64) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 48
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 48            ; 2 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #42 ; 7 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit, label %.lr.ph.i.i, !llvm.loop !4675

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i, %.lr.ph.i.i.i ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.019.i.i.i, i64 48, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 48 ; 2 uses
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.013.i.i.i, %i.n
  br i1 %.not.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4676

_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %i.p = load ptr, ptr %.0.lcssa.i.i.i, align 8, !tbaa !916
  store ptr %i.p, ptr %0, align 8, !tbaa !1319
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i
  %.sroa.4.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 3 uses
  %.sroa.10.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 4 uses
  %i.s = icmp eq i64 %i.g, %.sroa.4.0
  br i1 %i.s, label %bb.d, label %bb.e, !prof !838

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit
  %i.t = getelementptr inbounds [48 x i8], ptr %0, i64 %i.g
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_T1_(ptr %0, ptr %i.t, ptr %1, ptr noundef %.sroa.10.0)
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit
  %i.u = icmp eq ptr %.sroa.10.0, null
  br i1 %i.u, label %bb.f, label %bb.g, !prof !482

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %0, ptr %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.10.0, i64 noundef %.sroa.4.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.v = mul i64 %.sroa.4.0, 48
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0, i64 noundef %i.v) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = udiv exact i64 %i.c, 48
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.c, 336
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.022.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.022.i)
  %i.g = shl nuw nsw i64 %.022.i, 1
  tail call void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEElNSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.e, ptr %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.022.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit, !llvm.loop !4677

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 4 uses
  %i.l = udiv exact i64 %i.k, 48
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.k, 336
  br i1 %i.n, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit17

.lr.ph.i15:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit, %.lr.ph.i15
  %.022.i16 = phi i64 [ %i.p, %.lr.ph.i15 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.022.i16)
  %i.o = shl nuw nsw i64 %.022.i16, 1
  tail call void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEElNSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.m, ptr %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.022.i16, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit17, !llvm.loop !4677

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit17: ; preds = %.lr.ph.i15, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit
  %i.r = sdiv exact i64 %i.c, 48
  %i.s = sdiv exact i64 %i.k, 48
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElSE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.r, i64 noundef %i.s, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.4.i.i = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048" }, align 8 ; 4 uses
  %.sroa.6.i.i = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048" }, align 8 ; 4 uses
  %.sroa.4.i = alloca %"struct.llvm::object::Elf_Shdr_Base", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 720
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %common.ret28, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.08.017.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.08.017.i, %1
  br i1 %.not18.i, label %common.ret28, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.08.020.i = phi ptr [ %.sroa.08.017.i, %.lr.ph.i ], [ %.sroa.08.0.i, %bb.f ] ; 8 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.08.020.i, %bb.f ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 72
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.h, align 1 ; 4 uses
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.f, align 1
  %i.i = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.08.020.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  %i.j = ptrtoint ptr %.sroa.08.020.i to i64
  %i.k = sub i64 %i.j, %i.b                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 96
  %i.n = udiv exact i64 %i.k, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !916
  store ptr %i.q, ptr %i.p, align 8, !tbaa !1319
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  %i.t = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.u = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i, !llvm.loop !78

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.08.020.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx.i.i, i64 20, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  %.0.copyload.i.i.i2.i.i7.i.i = load i32, ptr %i.v, align 8
  %i.w = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i7.i.i
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i, %bb.e ] ; 5 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -48 ; 3 uses
  %i.x = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !916
  store ptr %i.x, ptr %.sroa.04.08.i.i, align 8, !tbaa !1319
  %i.y = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -40
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -72
  %.0.copyload.i.i.i2.i.i.i.i = load i32, ptr %i.aa, align 8
  %i.ab = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i.i
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i, !llvm.loop !79

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i, %bb.e ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 4 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !1319
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  %.sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 24
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.8..sroa_idx.i.i, align 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %1
  br i1 %.not.i, label %common.ret28, label %bb.c, !llvm.loop !80

common.ret28:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ad = udiv exact i64 %i.c, 48
  %i.ae = lshr i64 %i.ad, 1                       ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ae ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %0, ptr %i.af)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %i.af, ptr %1)
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 48
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_(ptr %0, ptr %i.af, ptr %1, i64 noundef %i.ae, i64 noundef %i.ai)
  br label %common.ret28
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 48
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [48 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 48
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElSE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_SZ_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElSE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.f = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !916
  store ptr %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1319
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 3 uses
  %i.k = add nsw i64 %.012.i.i.i.i.i, -1
  %i.l = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !81

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.0.025.i = phi ptr [ %i.w, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 24
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.026.i, i64 24
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.n, align 1
  %i.o = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 8 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %.sroa.016.024.i, align 8, !tbaa !916
  store ptr %i.q, ptr %.sroa.0.025.i, align 8, !tbaa !1319
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 48
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %.026.i, align 8, !tbaa !916
  store ptr %i.t, ptr %.sroa.0.025.i, align 8, !tbaa !1319
  %i.u = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.026.i, i64 48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.s, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.v, %bb.e ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 48
  %.not.i = icmp eq ptr %.1.i, %i.j
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !4678

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.x = ptrtoint ptr %i.j to i64
  %i.y = ptrtoint ptr %.026.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.ab = udiv exact i64 %i.z, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !916
  store ptr %i.ac, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1319
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.ah = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ai = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, !llvm.loop !81

bb.g:                                             ; preds = %bb.a
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.an = udiv exact i64 %i.al, 48
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i25 ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %i.ao = load ptr, ptr %.0910.i.i.i.i.i28, align 8, !tbaa !916
  store ptr %i.ao, ptr %.0811.i.i.i.i.i27, align 8, !tbaa !1319
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i64 40, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 48 ; 2 uses
  %i.at = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29, !llvm.loop !81

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29: ; preds = %.lr.ph.i.i.i.i.i25, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i.i25 ] ; 4 uses
  %i.av = icmp eq ptr %0, %1
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29
  %i.aw = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.ax = ptrtoint ptr %5 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader.i.i.i.i.i.i33, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i.i33:                   ; preds = %bb.h
  %i.ba = udiv exact i64 %i.ay, 48
  br label %.lr.ph.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i34:                             ; preds = %.lr.ph.i.i.i.i.i.i34, %.lr.ph.preheader.i.i.i.i.i.i33
  %.010.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i34 ], [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i34 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i34 ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !916
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !1319
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.be, i64 40, i1 false)
  %i.bg = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bh = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i34, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, !llvm.loop !78

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29
  %i.bi = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
  br i1 %i.bi, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i23, i64 -48
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.028.0.i.ph.pn = phi ptr [ %1, %bb.j ], [ %.sroa.028.0.i.ph, %bb.l ] ; 3 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.j ], [ %i.bn, %bb.l ]
  %.0.i.ph = phi ptr [ %i.bj, %bb.j ], [ %.0.i, %bb.l ]
  %.sroa.028.0.i.ph = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -48 ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -24
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.o
  %.sroa.0.0.i = phi ptr [ %i.bn, %bb.o ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.ci, %bb.o ], [ %.0.i.ph, %.outer ] ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.0.copyload.i.i.i.i.i.i30 = load i32, ptr %i.bl, align 1
  %.0.copyload.i.i.i2.i.i.i31 = load i32, ptr %i.bk, align 1
  %i.bm = icmp ult i32 %.0.copyload.i.i.i.i.i.i30, %.0.copyload.i.i.i2.i.i.i31
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -48 ; 5 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -40 ; 2 uses
  br i1 %i.bm, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %.sroa.028.0.i.ph, align 8, !tbaa !916
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !1319
  %i.bq = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i64 40, i1 false)
  %i.br = icmp eq ptr %0, %.sroa.028.0.i.ph
  br i1 %i.br, label %bb.m, label %.outer, !llvm.loop !4679

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %5 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %bb.m
  %i.bx = udiv exact i64 %i.bv, 48
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.010.i.i.i.i.i21.i = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i20.i ], [ %i.bx, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.069.i.i.i.i.i22.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i20.i ], [ %i.bn, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.078.i.i.i.i.i23.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i20.i ], [ %i.bs, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23.i, i64 -48 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22.i, i64 -48 ; 2 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !916
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !1319
  %i.cb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23.i, i64 -40
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(40) %i.cb, i64 40, i1 false)
  %i.cd = add nsw i64 %.010.i.i.i.i.i21.i, -1
  %i.ce = icmp samesign ugt i64 %.010.i.i.i.i.i21.i, 1
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, !llvm.loop !78

bb.n:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr %.0.i, align 8, !tbaa !916
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !1319
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bo, ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i64 40, i1 false)
  %i.ch = icmp eq ptr %5, %.0.i
  br i1 %i.ch, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds i8, ptr %.0.i, i64 -48
  br label %bb.k, !llvm.loop !4679

_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %bb.n, %.lr.ph.i.i.i.i.i20.i, %.lr.ph.i.i.i.i.i.i34, %bb.b, %bb.m, %bb.i, %bb.h, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.4.i.i10 = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048" }, align 8 ; 4 uses
  %.sroa.6.i.i11 = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048" }, align 8 ; 4 uses
  %.sroa.4.i12 = alloca %"struct.llvm::object::Elf_Shdr_Base", align 8 ; 4 uses
  %.sroa.4.i.i = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048" }, align 8 ; 4 uses
  %.sroa.6.i.i = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048", %"struct.llvm::support::detail::packed_endian_specific_integral.2048" }, align 8 ; 4 uses
  %.sroa.4.i = alloca %"struct.llvm::object::Elf_Shdr_Base", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 48
  %.not47 = icmp slt i64 %i.d, %2
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %2, 48                      ; 2 uses
  %switch = icmp ult i64 %2, 2
  br i1 %switch, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us, label %.lr.ph.i

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us
  %.sroa.044.048.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.044.048.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us, !llvm.loop !4680

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit
  %i.i = phi i64 [ %i.ai, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.044.048 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit ], [ %0, %.lr.ph ] ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.044.048, i64 %.idx ; 4 uses
  %.sroa.08.017.i = getelementptr inbounds nuw i8, ptr %.sroa.044.048, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.044.048, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.044.048, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.08.020.i = phi ptr [ %.sroa.08.017.i, %.lr.ph.i ], [ %.sroa.08.0.i, %bb.e ] ; 8 uses
  %.pn19.i = phi ptr [ %.sroa.044.048, %.lr.ph.i ], [ %.sroa.08.020.i, %bb.e ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 72
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.m, align 1 ; 4 uses
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.k, align 1
  %i.n = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.08.020.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  %i.o = ptrtoint ptr %.sroa.08.020.i to i64
  %i.p = sub i64 %i.o, %i.i                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 96
  %i.s = udiv exact i64 %i.p, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !916
  store ptr %i.v, ptr %i.u, align 8, !tbaa !1319
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  %i.y = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.z = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i, !llvm.loop !78

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.044.048, align 8, !tbaa !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.08.020.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx.i.i, i64 20, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  %.0.copyload.i.i.i2.i.i7.i.i = load i32, ptr %i.aa, align 8
  %i.ab = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i7.i.i
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i, %bb.d ] ; 5 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -48 ; 3 uses
  %i.ac = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !916
  store ptr %i.ac, ptr %.sroa.04.08.i.i, align 8, !tbaa !1319
  %i.ad = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -40
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  %i.af = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -72
  %.0.copyload.i.i.i2.i.i.i.i = load i32, ptr %i.af, align 8
  %i.ag = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i.i
  br i1 %i.ag, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i, !llvm.loop !79

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i, %bb.d ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 4 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !1319
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  %.sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 24
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.8..sroa_idx.i.i, align 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit, label %bb.b, !llvm.loop !80

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit: ; preds = %bb.e
  %i.ai = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.aj = sub i64 %i.a, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 48
  %.not = icmp slt i64 %i.ak, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !4680

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us, %bb.a
  %.sroa.044.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit ] ; 6 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us ], [ %i.ai, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit ]
  %i.al = icmp eq ptr %.sroa.044.0.lcssa, %1
  br i1 %i.al, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit43, label %.preheader.i13

.preheader.i13:                                   ; preds = %._crit_edge
  %.sroa.08.017.i14 = getelementptr inbounds nuw i8, ptr %.sroa.044.0.lcssa, i64 48 ; 2 uses
  %.not18.i15 = icmp eq ptr %.sroa.08.017.i14, %1
  br i1 %.not18.i15, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit43, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.preheader.i13
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.044.0.lcssa, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.044.0.lcssa, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i16
  %.sroa.08.020.i17 = phi ptr [ %.sroa.08.017.i14, %.lr.ph.i16 ], [ %.sroa.08.0.i29, %bb.i ] ; 8 uses
  %.pn19.i18 = phi ptr [ %.sroa.044.0.lcssa, %.lr.ph.i16 ], [ %.sroa.08.020.i17, %bb.i ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 72
  %.0.copyload.i.i.i.i.i.i19 = load i32, ptr %i.ao, align 1 ; 4 uses
  %.0.copyload.i.i.i2.i.i.i20 = load i32, ptr %i.am, align 1
  %i.ap = icmp ult i32 %.0.copyload.i.i.i.i.i.i19, %.0.copyload.i.i.i2.i.i.i20
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i12)
  %.sroa.0.0.copyload.i35 = load ptr, ptr %.sroa.08.020.i17, align 8
  %.sroa.4.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i36, i64 40, i1 false)
  %i.aq = ptrtoint ptr %.sroa.08.020.i17 to i64
  %i.ar = sub i64 %i.aq, %.lcssa                  ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i37

.lr.ph.preheader.i.i.i.i.i.i38:                   ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 96
  %i.au = udiv exact i64 %i.ar, 48
  br label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.lr.ph.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i40 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i39 ], [ %i.au, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.069.i.i.i.i.i.i41 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i39 ], [ %i.at, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.078.i.i.i.i.i.i42 = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i39 ], [ %.sroa.08.020.i17, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42, i64 -48 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41, i64 -48 ; 2 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !916
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !1319
  %i.ay = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42, i64 -40
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  %i.ba = add nsw i64 %.010.i.i.i.i.i.i40, -1
  %i.bb = icmp samesign ugt i64 %.010.i.i.i.i.i.i40, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i39, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i37, !llvm.loop !78

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i37: ; preds = %.lr.ph.i.i.i.i.i.i39, %bb.g
  store ptr %.sroa.0.0.copyload.i35, ptr %.sroa.044.0.lcssa, align 8, !tbaa !1319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i12, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i12)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i11)
  %.sroa.03.0.copyload.i.i21 = load ptr, ptr %.sroa.08.020.i17, align 8
  %.sroa.4.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i22, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i11, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx.i.i23, i64 20, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 24
  %.0.copyload.i.i.i2.i.i7.i.i24 = load i32, ptr %i.bc, align 8
  %i.bd = icmp ult i32 %.0.copyload.i.i.i.i.i.i19, %.0.copyload.i.i.i2.i.i7.i.i24
  br i1 %i.bd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i25

.lr.ph.i.i31:                                     ; preds = %bb.h, %.lr.ph.i.i31
  %.sroa.04.08.i.i32 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.i.i31 ], [ %.sroa.08.020.i17, %bb.h ] ; 5 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.04.08.i.i32, i64 -48 ; 3 uses
  %i.be = load ptr, ptr %.sroa.0.0.i.i33, align 8, !tbaa !916
  store ptr %i.be, ptr %.sroa.04.08.i.i32, align 8, !tbaa !1319
  %i.bf = getelementptr inbounds i8, ptr %.sroa.04.08.i.i32, i64 -40
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i32, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bg, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.sroa.04.08.i.i32, i64 -72
  %.0.copyload.i.i.i2.i.i.i.i34 = load i32, ptr %i.bh, align 8
  %i.bi = icmp ult i32 %.0.copyload.i.i.i.i.i.i19, %.0.copyload.i.i.i2.i.i.i.i34
  br i1 %i.bi, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i25, !llvm.loop !79

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i25: ; preds = %.lr.ph.i.i31, %bb.h
  %.sroa.04.0.lcssa.i.i26 = phi ptr [ %.sroa.08.020.i17, %bb.h ], [ %.sroa.0.0.i.i33, %.lr.ph.i.i31 ] ; 4 uses
  store ptr %.sroa.03.0.copyload.i.i21, ptr %.sroa.04.0.lcssa.i.i26, align 8, !tbaa !1319
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i26, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i10, i64 16, i1 false)
  %.sroa.5.8..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i26, i64 24
  store i32 %.0.copyload.i.i.i.i.i.i19, ptr %.sroa.5.8..sroa_idx.i.i27, align 8
  %.sroa.6.8..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i26, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.8..sroa_idx.i.i28, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i11)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i37
  %.sroa.08.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i17, i64 48 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.08.0.i29, %1
  br i1 %.not.i30, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit43, label %bb.f, !llvm.loop !80

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit43: ; preds = %bb.i, %._crit_edge, %.preheader.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 48                  ; 2 uses
  %.not68 = icmp slt i64 %i.e, %i.a
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %3, 48
  %.idx59 = mul nsw i64 %3, 96
  %.not60 = icmp eq i64 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit
  %.070 = phi ptr [ %2, %.lr.ph ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.sroa.051.069 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.051.069, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.051.069, i64 %.idx59 ; 4 uses
  br i1 %.not60, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.027.i = phi ptr [ %i.r, %bb.e ], [ %.070, %bb.b ] ; 4 uses
  %.sroa.020.026.i = phi ptr [ %.sroa.020.1.i, %bb.e ], [ %.sroa.051.069, %bb.b ] ; 5 uses
  %.sroa.016.025.i = phi ptr [ %.sroa.016.1.i, %bb.e ], [ %i.f, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 24
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i, i64 24
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.i, align 1
  %i.j = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = load ptr, ptr %.sroa.016.025.i, align 8, !tbaa !916
  store ptr %i.l, ptr %.027.i, align 8, !tbaa !1319
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 48
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %.sroa.020.026.i, align 8, !tbaa !916
  store ptr %i.o, ptr %.027.i, align 8, !tbaa !1319
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.016.1.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.016.025.i, %bb.d ] ; 3 uses
  %.sroa.020.1.i = phi ptr [ %.sroa.020.026.i, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.027.i, i64 48 ; 2 uses
  %i.s = icmp ne ptr %.sroa.020.1.i, %i.f
  %i.t = icmp ne ptr %.sroa.016.1.i, %i.g
  %or.cond.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !4681

.critedge.i:                                      ; preds = %bb.e, %bb.b
  %.sroa.016.0.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.016.1.i, %bb.e ] ; 2 uses
  %.sroa.020.0.lcssa.i = phi ptr [ %.sroa.051.069, %bb.b ], [ %.sroa.020.1.i, %bb.e ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.070, %bb.b ], [ %i.r, %bb.e ] ; 2 uses
  %i.u = ptrtoint ptr %i.f to i64
  %i.v = ptrtoint ptr %.sroa.020.0.lcssa.i to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.y = udiv exact i64 %i.w, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.020.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.z = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !916
  store ptr %i.z, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1319
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ae = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.af = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i, !llvm.loop !81

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ag = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.016.0.lcssa.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.preheader.i.i.i.i.i10.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

.lr.ph.preheader.i.i.i.i.i10.i:                   ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i
  %i.ak = udiv exact i64 %i.ai, 48
  br label %.lr.ph.i.i.i.i.i11.i

.lr.ph.i.i.i.i.i11.i:                             ; preds = %.lr.ph.i.i.i.i.i11.i, %.lr.ph.preheader.i.i.i.i.i10.i
  %.012.i.i.i.i.i12.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i11.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i11.i ], [ %.08.lcssa.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i11.i ], [ %.sroa.016.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 3 uses
  %i.al = load ptr, ptr %.0910.i.i.i.i.i14.i, align 8, !tbaa !916
  store ptr %i.al, ptr %.0811.i.i.i.i.i13.i, align 8, !tbaa !1319
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 40, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i, i64 48 ; 2 uses
  %i.aq = add nsw i64 %.012.i.i.i.i.i12.i, -1
  %i.ar = icmp samesign ugt i64 %.012.i.i.i.i.i12.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i11.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, !llvm.loop !81

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i11.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i
  %.08.lcssa.i.i.i.i.i9.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i ], [ %i.ap, %.lr.ph.i.i.i.i.i11.i ] ; 2 uses
  %i.as = sub i64 %i.b, %i.ag
  %i.at = sdiv exact i64 %i.as, 48                ; 2 uses
  %.not = icmp slt i64 %i.at, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4682

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, %bb.a
  %.sroa.051.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.lcssa66 = phi i64 [ %i.e, %bb.a ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa66) ; 2 uses
  %.idx61 = mul nsw i64 %.sroa.speculated, 48
  %i.au = getelementptr inbounds i8, ptr %.sroa.051.0.lcssa, i64 %.idx61 ; 5 uses
  %i.av = icmp ne i64 %.sroa.speculated, 0
  %i.aw = icmp ne ptr %i.au, %1
  %or.cond24.i16 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond24.i16, label %.lr.ph.i34, label %.critedge.i17

.lr.ph.i34:                                       ; preds = %._crit_edge, %bb.h
  %.027.i35 = phi ptr [ %i.bh, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.020.026.i36 = phi ptr [ %.sroa.020.1.i41, %bb.h ], [ %.sroa.051.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.016.025.i37 = phi ptr [ %.sroa.016.1.i40, %bb.h ], [ %i.au, %._crit_edge ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 24
  %.0.copyload.i.i.i.i.i.i38 = load i32, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 24
  %.0.copyload.i.i.i2.i.i.i39 = load i32, ptr %i.ay, align 1
  %i.az = icmp ult i32 %.0.copyload.i.i.i.i.i.i38, %.0.copyload.i.i.i2.i.i.i39
  %i.ba = getelementptr inbounds nuw i8, ptr %.027.i35, i64 8 ; 2 uses
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i34
  %i.bb = load ptr, ptr %.sroa.016.025.i37, align 8, !tbaa !916
  store ptr %i.bb, ptr %.027.i35, align 8, !tbaa !1319
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i64 40, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 48
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i34
  %i.be = load ptr, ptr %.sroa.020.026.i36, align 8, !tbaa !916
  store ptr %i.be, ptr %.027.i35, align 8, !tbaa !1319
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.016.1.i40 = phi ptr [ %i.bd, %bb.f ], [ %.sroa.016.025.i37, %bb.g ] ; 3 uses
  %.sroa.020.1.i41 = phi ptr [ %.sroa.020.026.i36, %bb.f ], [ %i.bg, %bb.g ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.027.i35, i64 48 ; 2 uses
  %i.bi = icmp ne ptr %.sroa.020.1.i41, %i.au
  %i.bj = icmp ne ptr %.sroa.016.1.i40, %1
  %or.cond.i42 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond.i42, label %.lr.ph.i34, label %.critedge.i17, !llvm.loop !4681

.critedge.i17:                                    ; preds = %bb.h, %._crit_edge
  %.sroa.016.0.lcssa.i18 = phi ptr [ %i.au, %._crit_edge ], [ %.sroa.016.1.i40, %bb.h ] ; 2 uses
  %.sroa.020.0.lcssa.i19 = phi ptr [ %.sroa.051.0.lcssa, %._crit_edge ], [ %.sroa.020.1.i41, %bb.h ] ; 2 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bk = ptrtoint ptr %i.au to i64
  %i.bl = ptrtoint ptr %.sroa.020.0.lcssa.i19 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i.i29, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21

.lr.ph.preheader.i.i.i.i.i.i29:                   ; preds = %.critedge.i17
  %i.bo = udiv exact i64 %i.bm, 48
  br label %.lr.ph.i.i.i.i.i.i30

end_hunk_0
begin_hunk_1_@_ZZN4llvm4bolt15RewriteInstance17getOutputSectionsINS_6object7ELFTypeILNS_10endiannessE0ELb0EEEEESt6vectorINS3_13ELFObjectFileIT_E8Elf_ShdrESaISB_EEPSA_RS7_IjSaIjEEENKUlRKNS3_13Elf_Shdr_ImplIS6_EERNS0_13BinarySectionEE_clESL_SN_:bb.a
  %i.x = icmp eq i64 %i.w, 9223372036854775776
  br i1 %i.x, label %bb.d, label %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.445) #41
  unreachable

_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.y = sdiv exact i64 %i.w, 48                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 192153584101141162)
  %i.ac = select i1 %i.aa, i64 192153584101141162, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = mul nuw nsw i64 %i.ac, 48
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #37 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w ; 3 uses
  store ptr %2, ptr %i.af, align 8, !tbaa !1430
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.j, ptr %i.ag, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.6, i64 36, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.t, %i.n
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !alias.scope !5437
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, %i.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !111

_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48
  %.not.i24.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE17_M_realloc_insertIJS4_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !1424
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.am) #36
  br label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE17_M_realloc_insertIJS4_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE17_M_realloc_insertIJS4_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit23.i.i
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !1431
  store ptr %i.aj, ptr %i.m, align 8, !tbaa !1423
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.an, ptr %i.o, align 8, !tbaa !1424
  br label %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12emplace_backIJS4_SA_EEERSB_DpOT_.exit

_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE12emplace_backIJS4_SA_EEERSB_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEESaISB_EE17_M_realloc_insertIJS4_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 48
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 48            ; 2 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #42 ; 7 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit, label %.lr.ph.i.i, !llvm.loop !5438

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i, %.lr.ph.i.i.i ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.019.i.i.i, i64 48, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 48 ; 2 uses
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.013.i.i.i, %i.n
  br i1 %.not.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !5439

_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %i.p = load ptr, ptr %.0.lcssa.i.i.i, align 8, !tbaa !916
  store ptr %i.p, ptr %0, align 8, !tbaa !1430
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false)
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit: ; preds = %select.unfold.i.i, %bb.b, %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i
  %.sroa.4.0 = phi i64 [ 0, %bb.b ], [ %.010.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i ], [ 0, %select.unfold.i.i ] ; 3 uses
  %.sroa.10.0 = phi ptr [ null, %bb.b ], [ %i.j, %_ZSt29__uninitialized_construct_bufIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEEvT_SJ_T0_.exit.i ], [ null, %select.unfold.i.i ] ; 4 uses
  %i.s = icmp eq i64 %i.g, %.sroa.4.0
  br i1 %i.s, label %bb.d, label %bb.e, !prof !838

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit
  %i.t = getelementptr inbounds [48 x i8], ptr %0, i64 %i.g
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_T1_(ptr %0, ptr %i.t, ptr %1, ptr noundef %.sroa.10.0)
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESD_EC2ESI_l.exit
  %i.u = icmp eq ptr %.sroa.10.0, null
  br i1 %i.u, label %bb.f, label %bb.g, !prof !482

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %0, ptr %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %1, ptr noundef nonnull %.sroa.10.0, i64 noundef %.sroa.4.0)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %i.v = mul i64 %.sroa.4.0, 48
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0, i64 noundef %i.v) #35
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = udiv exact i64 %i.c, 48
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.c, 336
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.022.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.022.i)
  %i.g = shl nuw nsw i64 %.022.i, 1
  tail call void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEElNSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.e, ptr %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.022.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit, !llvm.loop !5440

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 4 uses
  %i.l = udiv exact i64 %i.k, 48
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.k, 336
  br i1 %i.n, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit17

.lr.ph.i15:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit, %.lr.ph.i15
  %.022.i16 = phi i64 [ %i.p, %.lr.ph.i15 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.022.i16)
  %i.o = shl nuw nsw i64 %.022.i16, 1
  tail call void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEElNSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.m, ptr %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.022.i16, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit17, !llvm.loop !5440

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit17: ; preds = %.lr.ph.i15, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_.exit
  %i.r = sdiv exact i64 %i.c, 48
  %i.s = sdiv exact i64 %i.k, 48
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElSE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %i.r, i64 noundef %i.s, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.4.i.i = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129" }, align 8 ; 4 uses
  %.sroa.6.i.i = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129" }, align 8 ; 4 uses
  %.sroa.4.i = alloca %"struct.llvm::object::Elf_Shdr_Base.2294", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp slt i64 %i.c, 720
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %common.ret29, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %.sroa.08.017.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not18.i = icmp eq ptr %.sroa.08.017.i, %1
  br i1 %.not18.i, label %common.ret29, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %.sroa.08.020.i = phi ptr [ %.sroa.08.017.i, %.lr.ph.i ], [ %.sroa.08.0.i, %bb.f ] ; 8 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.08.020.i, %bb.f ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 72
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.h, align 1 ; 2 uses
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i) ; 3 uses
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.f, align 1
  %i.j = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i)
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.08.020.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  %i.l = ptrtoint ptr %.sroa.08.020.i to i64
  %i.m = sub i64 %i.l, %i.b                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 96
  %i.p = udiv exact i64 %i.m, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !916
  store ptr %i.s, ptr %i.r, align 8, !tbaa !1430
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  %i.v = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.w = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i, !llvm.loop !113

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8, !tbaa !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.08.020.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx.i.i, i64 20, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  %.0.copyload.i.i.i2.i.i7.i.i = load i32, ptr %i.x, align 8
  %i.y = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i7.i.i)
  %i.z = icmp ult i32 %i.i, %i.y
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i, %bb.e ] ; 5 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -48 ; 3 uses
  %i.aa = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !916
  store ptr %i.aa, ptr %.sroa.04.08.i.i, align 8, !tbaa !1430
  %i.ab = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -40
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  %i.ad = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -72
  %.0.copyload.i.i.i2.i.i.i.i = load i32, ptr %i.ad, align 8
  %i.ae = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i.i)
  %i.af = icmp ult i32 %i.i, %i.ae
  br i1 %i.af, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i, !llvm.loop !114

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i, %bb.e ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 4 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !1430
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  %.sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 24
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.8..sroa_idx.i.i, align 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %1
  br i1 %.not.i, label %common.ret29, label %bb.c, !llvm.loop !115

common.ret29:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.ah = udiv exact i64 %i.c, 48
  %i.ai = lshr i64 %i.ah, 1                       ; 2 uses
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.ai ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %0, ptr %i.aj)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_(ptr %i.aj, ptr %1)
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.a, %i.ak
  %i.am = sdiv exact i64 %i.al, 48
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_(ptr %0, ptr %i.aj, ptr %1, i64 noundef %i.ai, i64 noundef %i.am)
  br label %common.ret29
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 48
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [48 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = sdiv exact i64 %i.j, 48
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElSE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_SZ_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElSE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #3 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.f = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !916
  store ptr %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1430
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 3 uses
  %i.k = add nsw i64 %.012.i.i.i.i.i, -1
  %i.l = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !116

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.026.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.0.025.i = phi ptr [ %i.y, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 24
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.m, align 1
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %.026.i, i64 24
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.o, align 1
  %i.p = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i)
  %i.q = icmp ult i32 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 8 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %.sroa.016.024.i, align 8, !tbaa !916
  store ptr %i.s, ptr %.sroa.0.025.i, align 8, !tbaa !1430
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.016.024.i, i64 48
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %.026.i, align 8, !tbaa !916
  store ptr %i.v, ptr %.sroa.0.025.i, align 8, !tbaa !1430
  %i.w = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.026.i, i64 48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.016.1.i = phi ptr [ %i.u, %bb.d ], [ %.sroa.016.024.i, %bb.e ]
  %.1.i = phi ptr [ %.026.i, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 48
  %.not.i = icmp eq ptr %.1.i, %i.j
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !5441

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.z = ptrtoint ptr %i.j to i64
  %i.aa = ptrtoint ptr %.026.i to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.ad = udiv exact i64 %i.ab, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.026.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ae = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !916
  store ptr %i.ae, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1430
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48
  %i.aj = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ak = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, !llvm.loop !116

bb.g:                                             ; preds = %bb.a
  %i.al = ptrtoint ptr %2 to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.g
  %i.ap = udiv exact i64 %i.an, 48
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %.lr.ph.i.i.i.i.i25, %.lr.ph.preheader.i.i.i.i.i24
  %.012.i.i.i.i.i26 = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i25 ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i24 ] ; 2 uses
  %.0811.i.i.i.i.i27 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i25 ], [ %5, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %.0910.i.i.i.i.i28 = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i25 ], [ %1, %.lr.ph.preheader.i.i.i.i.i24 ] ; 3 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i28, align 8, !tbaa !916
  store ptr %i.aq, ptr %.0811.i.i.i.i.i27, align 8, !tbaa !1430
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 48 ; 2 uses
  %i.av = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.aw = icmp samesign ugt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29, !llvm.loop !116

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29: ; preds = %.lr.ph.i.i.i.i.i25, %bb.g
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.g ], [ %i.au, %.lr.ph.i.i.i.i.i25 ] ; 4 uses
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29
  %i.ay = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.az = ptrtoint ptr %5 to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i.i.i33, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i.i33:                   ; preds = %bb.h
  %i.bc = udiv exact i64 %i.ba, 48
  br label %.lr.ph.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i34:                             ; preds = %.lr.ph.i.i.i.i.i.i34, %.lr.ph.preheader.i.i.i.i.i.i33
  %.010.i.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i34 ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i34 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i34 ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.preheader.i.i.i.i.i.i33 ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !916
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !1430
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false)
  %i.bi = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.bj = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i34, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, !llvm.loop !113

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit29
  %i.bk = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
  br i1 %i.bk, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i23, i64 -48
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.028.0.i.ph.pn = phi ptr [ %1, %bb.j ], [ %.sroa.028.0.i.ph, %bb.l ] ; 3 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.j ], [ %i.br, %bb.l ]
  %.0.i.ph = phi ptr [ %i.bl, %bb.j ], [ %.0.i, %bb.l ]
  %.sroa.028.0.i.ph = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -48 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -24
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.o
  %.sroa.0.0.i = phi ptr [ %i.br, %bb.o ], [ %.sroa.0.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.cm, %bb.o ], [ %.0.i.ph, %.outer ] ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.0.copyload.i.i.i.i.i.i30 = load i32, ptr %i.bn, align 1
  %i.bo = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i30)
  %.0.copyload.i.i.i2.i.i.i31 = load i32, ptr %i.bm, align 1
  %i.bp = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i31)
  %i.bq = icmp ult i32 %i.bo, %i.bp
  %i.br = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -48 ; 5 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -40 ; 2 uses
  br i1 %i.bq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %.sroa.028.0.i.ph, align 8, !tbaa !916
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !1430
  %i.bu = getelementptr inbounds i8, ptr %.sroa.028.0.i.ph.pn, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 40, i1 false)
  %i.bv = icmp eq ptr %0, %.sroa.028.0.i.ph
  br i1 %i.bv, label %bb.m, label %.outer, !llvm.loop !5442

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %5 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %bb.m
  %i.cb = udiv exact i64 %i.bz, 48
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.010.i.i.i.i.i21.i = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i20.i ], [ %i.cb, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.069.i.i.i.i.i22.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i20.i ], [ %i.br, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.078.i.i.i.i.i23.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i20.i ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23.i, i64 -48 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22.i, i64 -48 ; 2 uses
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !916
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !1430
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23.i, i64 -40
  %i.cg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false)
  %i.ch = add nsw i64 %.010.i.i.i.i.i21.i, -1
  %i.ci = icmp samesign ugt i64 %.010.i.i.i.i.i21.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, !llvm.loop !113

bb.n:                                             ; preds = %bb.k
  %i.cj = load ptr, ptr %.0.i, align 8, !tbaa !916
  store ptr %i.cj, ptr %i.br, align 8, !tbaa !1430
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %i.ck, i64 40, i1 false)
  %i.cl = icmp eq ptr %5, %.0.i
  br i1 %i.cl, label %_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds i8, ptr %.0.i, i64 -48
  br label %bb.k, !llvm.loop !5442

_ZSt21__move_merge_adaptiveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEESI_NSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_SZ_T1_T2_.exit: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %bb.n, %.lr.ph.i.i.i.i.i20.i, %.lr.ph.i.i.i.i.i.i34, %bb.b, %bb.m, %bb.i, %bb.h, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.4.i.i10 = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129" }, align 8 ; 4 uses
  %.sroa.6.i.i11 = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129" }, align 8 ; 4 uses
  %.sroa.4.i12 = alloca %"struct.llvm::object::Elf_Shdr_Base.2294", align 8 ; 4 uses
  %.sroa.4.i.i = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129" }, align 8 ; 4 uses
  %.sroa.6.i.i = alloca { %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129", %"struct.llvm::support::detail::packed_endian_specific_integral.2129" }, align 8 ; 4 uses
  %.sroa.4.i = alloca %"struct.llvm::object::Elf_Shdr_Base.2294", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = sdiv exact i64 %i.c, 48
  %.not47 = icmp slt i64 %i.d, %2
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %2, 48                      ; 2 uses
  %switch = icmp ult i64 %2, 2
  br i1 %switch, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us, label %.lr.ph.i

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us
  %.sroa.044.048.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.044.048.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us, !llvm.loop !5443

.lr.ph.i:                                         ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit
  %i.i = phi i64 [ %i.am, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.044.048 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit ], [ %0, %.lr.ph ] ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.044.048, i64 %.idx ; 4 uses
  %.sroa.08.017.i = getelementptr inbounds nuw i8, ptr %.sroa.044.048, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.044.048, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.044.048, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.08.020.i = phi ptr [ %.sroa.08.017.i, %.lr.ph.i ], [ %.sroa.08.0.i, %bb.e ] ; 8 uses
  %.pn19.i = phi ptr [ %.sroa.044.048, %.lr.ph.i ], [ %.sroa.08.020.i, %bb.e ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 72
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.m, align 1 ; 2 uses
  %i.n = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i) ; 3 uses
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.k, align 1
  %i.o = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i)
  %i.p = icmp ult i32 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %.sroa.0.0.copyload.i = load ptr, ptr %.sroa.08.020.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  %i.q = ptrtoint ptr %.sroa.08.020.i to i64
  %i.r = sub i64 %i.q, %i.i                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 96
  %i.u = udiv exact i64 %i.r, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.020.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !916
  store ptr %i.x, ptr %i.w, align 8, !tbaa !1430
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.aa = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ab = icmp samesign ugt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i, !llvm.loop !113

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.044.048, align 8, !tbaa !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.03.0.copyload.i.i = load ptr, ptr %.sroa.08.020.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx.i.i, i64 20, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 24
  %.0.copyload.i.i.i2.i.i7.i.i = load i32, ptr %i.ac, align 8
  %i.ad = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i7.i.i)
  %i.ae = icmp ult i32 %i.n, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.08.020.i, %bb.d ] ; 5 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -48 ; 3 uses
  %i.af = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !916
  store ptr %i.af, ptr %.sroa.04.08.i.i, align 8, !tbaa !1430
  %i.ag = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -40
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 40, i1 false)
  %i.ai = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -72
  %.0.copyload.i.i.i2.i.i.i.i = load i32, ptr %i.ai, align 8
  %i.aj = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i.i)
  %i.ak = icmp ult i32 %i.n, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i, !llvm.loop !114

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.08.020.i, %bb.d ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 4 uses
  store ptr %.sroa.03.0.copyload.i.i, ptr %.sroa.04.0.lcssa.i.i, align 8, !tbaa !1430
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i, i64 16, i1 false)
  %.sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 24
  store i32 %.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.8..sroa_idx.i.i, align 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i, i64 48 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.08.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit, label %bb.b, !llvm.loop !115

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit: ; preds = %bb.e
  %i.am = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.an = sub i64 %i.a, %i.am
  %i.ao = sdiv exact i64 %i.an, 48
  %.not = icmp slt i64 %i.ao, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !5443

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us, %bb.a
  %.sroa.044.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit ] ; 6 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.us ], [ %i.am, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit.loopexit ]
  %i.ap = icmp eq ptr %.sroa.044.0.lcssa, %1
  br i1 %i.ap, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit43, label %.preheader.i13

.preheader.i13:                                   ; preds = %._crit_edge
  %.sroa.08.017.i14 = getelementptr inbounds nuw i8, ptr %.sroa.044.0.lcssa, i64 48 ; 2 uses
  %.not18.i15 = icmp eq ptr %.sroa.08.017.i14, %1
  br i1 %.not18.i15, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit43, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.preheader.i13
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.044.0.lcssa, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.044.0.lcssa, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i16
  %.sroa.08.020.i17 = phi ptr [ %.sroa.08.017.i14, %.lr.ph.i16 ], [ %.sroa.08.0.i29, %bb.i ] ; 8 uses
  %.pn19.i18 = phi ptr [ %.sroa.044.0.lcssa, %.lr.ph.i16 ], [ %.sroa.08.020.i17, %bb.i ] ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 72
  %.0.copyload.i.i.i.i.i.i19 = load i32, ptr %i.as, align 1 ; 2 uses
  %i.at = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i19) ; 3 uses
  %.0.copyload.i.i.i2.i.i.i20 = load i32, ptr %i.aq, align 1
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i20)
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i12)
  %.sroa.0.0.copyload.i35 = load ptr, ptr %.sroa.08.020.i17, align 8
  %.sroa.4.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i36, i64 40, i1 false)
  %i.aw = ptrtoint ptr %.sroa.08.020.i17 to i64
  %i.ax = sub i64 %i.aw, %.lcssa                  ; 2 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.preheader.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i37

.lr.ph.preheader.i.i.i.i.i.i38:                   ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 96
  %i.ba = udiv exact i64 %i.ax, 48
  br label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.lr.ph.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i40 = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i39 ], [ %i.ba, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.069.i.i.i.i.i.i41 = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i39 ], [ %i.az, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.078.i.i.i.i.i.i42 = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i39 ], [ %.sroa.08.020.i17, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42, i64 -48 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41, i64 -48 ; 2 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !916
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !1430
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i42, i64 -40
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i41, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bf, ptr noundef nonnull align 8 dereferenceable(40) %i.be, i64 40, i1 false)
  %i.bg = add nsw i64 %.010.i.i.i.i.i.i40, -1
  %i.bh = icmp samesign ugt i64 %.010.i.i.i.i.i.i40, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i39, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i37, !llvm.loop !113

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i37: ; preds = %.lr.ph.i.i.i.i.i.i39, %bb.g
  store ptr %.sroa.0.0.copyload.i35, ptr %.sroa.044.0.lcssa, align 8, !tbaa !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i12, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i12)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i11)
  %.sroa.03.0.copyload.i.i21 = load ptr, ptr %.sroa.08.020.i17, align 8
  %.sroa.4.0..sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i10, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i22, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i11, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx.i.i23, i64 20, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn19.i18, i64 24
  %.0.copyload.i.i.i2.i.i7.i.i24 = load i32, ptr %i.bi, align 8
  %i.bj = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i7.i.i24)
  %i.bk = icmp ult i32 %i.at, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i25

.lr.ph.i.i31:                                     ; preds = %bb.h, %.lr.ph.i.i31
  %.sroa.04.08.i.i32 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.i.i31 ], [ %.sroa.08.020.i17, %bb.h ] ; 5 uses
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.04.08.i.i32, i64 -48 ; 3 uses
  %i.bl = load ptr, ptr %.sroa.0.0.i.i33, align 8, !tbaa !916
  store ptr %i.bl, ptr %.sroa.04.08.i.i32, align 8, !tbaa !1430
  %i.bm = getelementptr inbounds i8, ptr %.sroa.04.08.i.i32, i64 -40
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i32, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef nonnull align 8 dereferenceable(40) %i.bm, i64 40, i1 false)
  %i.bo = getelementptr inbounds i8, ptr %.sroa.04.08.i.i32, i64 -72
  %.0.copyload.i.i.i2.i.i.i.i34 = load i32, ptr %i.bo, align 8
  %i.bp = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i.i34)
  %i.bq = icmp ult i32 %i.at, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i25, !llvm.loop !114

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i25: ; preds = %.lr.ph.i.i31, %bb.h
  %.sroa.04.0.lcssa.i.i26 = phi ptr [ %.sroa.08.020.i17, %bb.h ], [ %.sroa.0.0.i.i33, %.lr.ph.i.i31 ] ; 4 uses
  store ptr %.sroa.03.0.copyload.i.i21, ptr %.sroa.04.0.lcssa.i.i26, align 8, !tbaa !1430
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i26, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.i10, i64 16, i1 false)
  %.sroa.5.8..sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i26, i64 24
  store i32 %.0.copyload.i.i.i.i.i.i19, ptr %.sroa.5.8..sroa_idx.i.i27, align 8
  %.sroa.6.8..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i26, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.8..sroa_idx.i.i28, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.6.i.i11, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i11)
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops14_Val_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SZ_.exit.i25, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESI_ET0_T_SK_SJ_.exit.i37
  %.sroa.08.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.08.020.i17, i64 48 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.08.0.i29, %1
  br i1 %.not.i30, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit43, label %bb.f, !llvm.loop !115

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEENS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_.exit43: ; preds = %bb.i, %._crit_edge, %.preheader.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 48                  ; 2 uses
  %.not68 = icmp slt i64 %i.e, %i.a
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %3, 48
  %.idx59 = mul nsw i64 %3, 96
  %.not60 = icmp eq i64 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit
  %.070 = phi ptr [ %2, %.lr.ph ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.sroa.051.069 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.051.069, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.051.069, i64 %.idx59 ; 4 uses
  br i1 %.not60, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.027.i = phi ptr [ %i.t, %bb.e ], [ %.070, %bb.b ] ; 4 uses
  %.sroa.020.026.i = phi ptr [ %.sroa.020.1.i, %bb.e ], [ %.sroa.051.069, %bb.b ] ; 5 uses
  %.sroa.016.025.i = phi ptr [ %.sroa.016.1.i, %bb.e ], [ %i.f, %bb.b ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 24
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.h, align 1
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i, i64 24
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.j, align 1
  %i.k = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i)
  %i.l = icmp ult i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.027.i, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %.sroa.016.025.i, align 8, !tbaa !916
  store ptr %i.n, ptr %.027.i, align 8, !tbaa !1430
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i, i64 48
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.sroa.020.026.i, align 8, !tbaa !916
  store ptr %i.q, ptr %.027.i, align 8, !tbaa !1430
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.016.1.i = phi ptr [ %i.p, %bb.c ], [ %.sroa.016.025.i, %bb.d ] ; 3 uses
  %.sroa.020.1.i = phi ptr [ %.sroa.020.026.i, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.027.i, i64 48 ; 2 uses
  %i.u = icmp ne ptr %.sroa.020.1.i, %i.f
  %i.v = icmp ne ptr %.sroa.016.1.i, %i.g
  %or.cond.i = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !5444

.critedge.i:                                      ; preds = %bb.e, %bb.b
  %.sroa.016.0.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.sroa.016.1.i, %bb.e ] ; 2 uses
  %.sroa.020.0.lcssa.i = phi ptr [ %.sroa.051.069, %bb.b ], [ %.sroa.020.1.i, %bb.e ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.070, %bb.b ], [ %i.t, %bb.e ] ; 2 uses
  %i.w = ptrtoint ptr %i.f to i64
  %i.x = ptrtoint ptr %.sroa.020.0.lcssa.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.aa = udiv exact i64 %i.y, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.020.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !916
  store ptr %i.ab, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1430
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ag = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ah = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i, !llvm.loop !116

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i, %.critedge.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ai = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.016.0.lcssa.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i10.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

.lr.ph.preheader.i.i.i.i.i10.i:                   ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i
  %i.am = udiv exact i64 %i.ak, 48
  br label %.lr.ph.i.i.i.i.i11.i

.lr.ph.i.i.i.i.i11.i:                             ; preds = %.lr.ph.i.i.i.i.i11.i, %.lr.ph.preheader.i.i.i.i.i10.i
  %.012.i.i.i.i.i12.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i11.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i11.i ], [ %.08.lcssa.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i11.i ], [ %.sroa.016.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 3 uses
  %i.an = load ptr, ptr %.0910.i.i.i.i.i14.i, align 8, !tbaa !916
  store ptr %i.an, ptr %.0811.i.i.i.i.i13.i, align 8, !tbaa !1430
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i, i64 48 ; 2 uses
  %i.as = add nsw i64 %.012.i.i.i.i.i12.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i12.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i11.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, !llvm.loop !116

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i11.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i
  %.08.lcssa.i.i.i.i.i9.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i ], [ %i.ar, %.lr.ph.i.i.i.i.i11.i ] ; 2 uses
  %i.au = sub i64 %i.b, %i.ai
  %i.av = sdiv exact i64 %i.au, 48                ; 2 uses
  %.not = icmp slt i64 %i.av, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5445

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, %bb.a
  %.sroa.051.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.lcssa66 = phi i64 [ %i.e, %bb.a ], [ %i.av, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa66) ; 2 uses
  %.idx61 = mul nsw i64 %.sroa.speculated, 48
  %i.aw = getelementptr inbounds i8, ptr %.sroa.051.0.lcssa, i64 %.idx61 ; 5 uses
  %i.ax = icmp ne i64 %.sroa.speculated, 0
  %i.ay = icmp ne ptr %i.aw, %1
  %or.cond24.i16 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond24.i16, label %.lr.ph.i34, label %.critedge.i17

.lr.ph.i34:                                       ; preds = %._crit_edge, %bb.h
  %.027.i35 = phi ptr [ %i.bl, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.020.026.i36 = phi ptr [ %.sroa.020.1.i41, %bb.h ], [ %.sroa.051.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.016.025.i37 = phi ptr [ %.sroa.016.1.i40, %bb.h ], [ %i.aw, %._crit_edge ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 24
  %.0.copyload.i.i.i.i.i.i38 = load i32, ptr %i.az, align 1
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i38)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 24
  %.0.copyload.i.i.i2.i.i.i39 = load i32, ptr %i.bb, align 1
  %i.bc = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i39)
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.027.i35, i64 8 ; 2 uses
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i34
  %i.bf = load ptr, ptr %.sroa.016.025.i37, align 8, !tbaa !916
  store ptr %i.bf, ptr %.027.i35, align 8, !tbaa !1430
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 48
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i34
  %i.bi = load ptr, ptr %.sroa.020.026.i36, align 8, !tbaa !916
  store ptr %i.bi, ptr %.027.i35, align 8, !tbaa !1430
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.016.1.i40 = phi ptr [ %i.bh, %bb.f ], [ %.sroa.016.025.i37, %bb.g ] ; 3 uses
  %.sroa.020.1.i41 = phi ptr [ %.sroa.020.026.i36, %bb.f ], [ %i.bk, %bb.g ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.027.i35, i64 48 ; 2 uses
  %i.bm = icmp ne ptr %.sroa.020.1.i41, %i.aw
  %i.bn = icmp ne ptr %.sroa.016.1.i40, %1
  %or.cond.i42 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond.i42, label %.lr.ph.i34, label %.critedge.i17, !llvm.loop !5444

.critedge.i17:                                    ; preds = %bb.h, %._crit_edge
  %.sroa.016.0.lcssa.i18 = phi ptr [ %i.aw, %._crit_edge ], [ %.sroa.016.1.i40, %bb.h ] ; 2 uses
  %.sroa.020.0.lcssa.i19 = phi ptr [ %.sroa.051.0.lcssa, %._crit_edge ], [ %.sroa.020.1.i41, %bb.h ] ; 2 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bo = ptrtoint ptr %i.aw to i64
  %i.bp = ptrtoint ptr %.sroa.020.0.lcssa.i19 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i.i29, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21

end_hunk_1
