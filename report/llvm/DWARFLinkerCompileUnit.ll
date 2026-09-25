Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFLinkerCompileUnit?download=true
inline.NumInlined: 6296
inline.NumDeleted: 3035
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4llvm12dwarf_linker8parallel14OutputSections28getOrCreateSectionDescriptorENS0_16DebugSectionKindE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 248
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 16, i1 false), !noalias !633
  store ptr %i.n, ptr %i.at, align 8, !tbaa !258, !noalias !633
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 16, i1 false), !noalias !633
  store ptr %i.n, ptr %i.av, align 8, !tbaa !259, !noalias !633
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 296
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 16, i1 false), !noalias !633
  store ptr %i.n, ptr %i.ax, align 8, !tbaa !647, !noalias !633
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 320
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 16, i1 false), !noalias !633
  store ptr %i.n, ptr %i.az, align 8, !tbaa !648, !noalias !633
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 344
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 16, i1 false), !noalias !633
  store ptr %i.n, ptr %i.bb, align 8, !tbaa !649, !noalias !633
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 16, i1 false), !noalias !633
  store ptr %i.n, ptr %i.bd, align 8, !tbaa !650, !noalias !633
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 392
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 16, i1 false), !noalias !633
  store ptr %i.n, ptr %i.bf, align 8, !tbaa !651, !noalias !633
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 416
  store ptr %i.n, ptr %i.bg, align 8, !tbaa !176, !noalias !633
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false), !noalias !633
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %i.t, ptr %i.bi, align 8, !tbaa !261
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !264 ; 8 uses
  store ptr %i.q, ptr %i.bj, align 8, !tbaa !264
  %.not.i.i.i.i4 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i4, label %_ZNSt12__shared_ptrIN4llvm12dwarf_linker8parallel17SectionDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.bl, align 8, !tbaa !195
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !196
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !630
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27, !inline_history !630
  br label %_ZNSt12__shared_ptrIN4llvm12dwarf_linker8parallel17SectionDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !183
  %.not.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.g ], [ %i.by, %bb.h ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.i, label %_ZNSt12__shared_ptrIN4llvm12dwarf_linker8parallel17SectionDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !266

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #27
  br label %_ZNSt12__shared_ptrIN4llvm12dwarf_linker8parallel17SectionDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4llvm12dwarf_linker8parallel17SectionDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %.sroa.011.0.i13 = phi ptr [ %i.m, %bb.c ], [ %i.m, %bb.i ], [ %i.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %i.m, %bb.e ], [ %.19.i.i.i.i, %bb.b ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i13, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !268
  ret ptr %i.cb
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12dwarf_linker8parallel11CompileUnitC2ERNS1_17LinkingGlobalDataERNS_9DWARFUnitEjNS_9StringRefERNS0_9DWARFFileENS_12function_refIFPS2_mEEENS_5dwarf10FormParamsENS_10endiannessE(ptr noundef nonnull align 8 dereferenceable(1192) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, ptr noundef nonnull align 8 dereferenceable(448) %2, i32 noundef %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr nofree noundef readonly byval(%"class.llvm::function_ref") align 8 captures(none) %7, i48 %8, i32 noundef %9) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %12 = alloca %class.anon.581, align 1           ; 3 uses
  %13 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %14 = alloca %"class.llvm::DWARFDie", align 8   ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %16 = alloca %"class.std::optional.189", align 8 ; 5 uses
  tail call void @_ZN4llvm12dwarf_linker8parallel9DwarfUnitC2ERNS1_17LinkingGlobalDataEjNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 8 dereferenceable(352) %1, i32 noundef %3, ptr %4, i64 %5)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm12dwarf_linker8parallel11CompileUnitE, i64 16), ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %6, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %2, ptr %i.c, align 8, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 418 ; 3 uses
  store i8 0, ptr %i.e, align 2, !tbaa !154
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.g, ptr %i.f, align 8, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i32 0, ptr %i.h, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i32 1, ptr %i.i, align 4, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  store i32 16, ptr %i.k, align 8, !tbaa !158
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.n, ptr %i.m, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 0, ptr %i.o, align 8, !tbaa !156
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 596
  store i32 6, ptr %i.p, align 4, !tbaa !157
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr null, ptr %i.q, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !162
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 680
  store i8 0, ptr %i.s, align 8, !tbaa !163
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i64 0, ptr %i.t, align 8, !tbaa !164
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  store i8 1, ptr %i.u, align 8, !tbaa !165
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 -1, ptr %i.v, align 8, !tbaa !166
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.x, ptr %i.w, align 8, !tbaa !155
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i32 0, ptr %i.y, align 8, !tbaa !156
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 724
  store i32 2, ptr %i.z, align 4, !tbaa !157
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i32 1, ptr %i.ab, align 8
  store i32 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i32 0, ptr %i.af, align 8, !tbaa !156
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 860
  store i32 4, ptr %i.ag, align 4, !tbaa !157
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1000
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.ah, i8 0, i64 41, i1 false)
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !167
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 984
  store i64 0, ptr %i.ak, align 8, !tbaa !168
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 992
  store i64 20, ptr %i.al, align 8, !tbaa !169
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store ptr %i.an, ptr %i.am, align 8, !tbaa !155
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store i32 0, ptr %i.ao, align 8, !tbaa !156
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1052
  store i32 6, ptr %i.ap, align 4, !tbaa !157
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !155
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 0, ptr %i.as, align 8, !tbaa !156
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i32 6, ptr %i.at, align 4, !tbaa !157
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.av, align 8, !tbaa !170
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.extract.trunc.i = trunc i48 %8 to i40
  store i40 %.sroa.0.0.extract.trunc.i, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %9, ptr %i.ay, align 8, !tbaa !175
  %i.az = tail call noundef nonnull align 8 dereferenceable(424) ptr @_ZN4llvm12dwarf_linker8parallel14OutputSections28getOrCreateSectionDescriptorENS0_16DebugSectionKindE(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, i8 noundef zeroext 0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  tail call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %2, i1 noundef zeroext true) #27
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !270 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !270
  %.not29 = icmp eq ptr %i.bb, %i.bd              ; 2 uses
  %spec.select.i = select i1 %.not29, ptr null, ptr %2
  %spec.select1.i = select i1 %.not29, ptr null, ptr %i.bb ; 2 uses
  store ptr %spec.select.i, ptr %14, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %spec.select1.i, ptr %i.be, align 8
  %.not30 = icmp eq ptr %spec.select1.i, null
  br i1 %.not30, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bf = call { i64, i8 } @_ZNK4llvm8DWARFDie11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #27 ; 2 uses
  %i.bg = extractvalue { i64, i8 } %i.bf, 1
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.c, label %_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit

bb.c:                                             ; preds = %bb.b
  %i.bi = extractvalue { i64, i8 } %i.bf, 0
  %i.bj = load i8, ptr %i.e, align 2, !tbaa !154, !range !271, !noundef !192
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = trunc i64 %i.bi to i16                  ; 2 uses
  store i16 %i.bl, ptr %i.d, align 8, !tbaa !272
  br i1 %i.bk, label %_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit.thread, label %_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit

_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit: ; preds = %bb.b, %bb.c
  %.sink.i = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  store i8 %.sink.i, ptr %i.e, align 2, !tbaa !154
  %i.bm = trunc nuw i8 %.sink.i to i1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 101
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !656, !range !271, !noundef !192
  %i.bp = trunc nuw i8 %i.bo to i1
  %.not44 = xor i1 %i.bm, true
  %brmerge = select i1 %i.bp, i1 true, i1 %.not44
  br i1 %brmerge, label %_ZN4llvm12dwarf_linker8parallel13isODRLanguageEt.exit, label %.threadthread-pre-split

_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit.thread: ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 101
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !656, !range !271, !noundef !192
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN4llvm12dwarf_linker8parallel13isODRLanguageEt.exit, label %.thread

.threadthread-pre-split:                          ; preds = %_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit
  %.pr = load i16, ptr %i.d, align 8, !tbaa !272
  br label %.thread

.thread:                                          ; preds = %.threadthread-pre-split, %_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit.thread
  %i.bt = phi i16 [ %.pr, %.threadthread-pre-split ], [ %i.bl, %_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit.thread ]
  switch i16 %i.bt, label %_ZN4llvm12dwarf_linker8parallel13isODRLanguageEt.exit [
    i16 4, label %bb.d
    i16 25, label %bb.d
    i16 26, label %bb.d
    i16 33, label %bb.d
    i16 17, label %bb.d
  ]

bb.d:                                             ; preds = %.thread, %.thread, %.thread, %.thread, %.thread
  store i8 0, ptr %i.u, align 8, !tbaa !165
  br label %_ZN4llvm12dwarf_linker8parallel13isODRLanguageEt.exit

_ZN4llvm12dwarf_linker8parallel13isODRLanguageEt.exit: ; preds = %_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit, %_ZNSt8optionalItEaSImEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameItT_EESt16is_constructibleItJS5_EESt13is_assignableIRtS5_ES3_ISt5__or_IJS8_ItJRKS_IS5_EEES8_ItJRSE_EES8_ItJOSF_EES8_ItJOSE_EESt14is_convertibleISG_tESO_ISI_tESO_ISK_tESO_ISM_tEEEES3_ISD_IJSA_ISB_SG_ESA_ISB_SI_ESA_ISB_SK_ESA_ISB_SM_EEEEEERS0_E4typeESM_.exit.thread, %.thread, %bb.d
  %i.bu = call noundef ptr @_ZNK4llvm8DWARFDie7getNameENS_10DINameKindE(ptr noundef nonnull align 8 dereferenceable(16) %14, i32 noundef 1) #27 ; 3 uses
  %.not = icmp eq ptr %i.bu, null
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12dwarf_linker8parallel13isODRLanguageEt.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !174
  %i.by = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #27
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef 0, i64 noundef %i.bx, ptr noundef nonnull %i.bu, i64 noundef %i.by) #27 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %_ZN4llvm12dwarf_linker8parallel13isODRLanguageEt.exit
  %i.ca = load ptr, ptr %6, align 8, !tbaa !172
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !173
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !174
  %i.cf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 noundef 0, i64 noundef %i.ce, ptr noundef %i.ca, i64 noundef %i.cc) #27 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @_ZNK4llvm8DWARFDie4findENS_5dwarf9AttributeE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.189") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %14, i16 noundef zeroext 15874) #27
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !283, !range !271, !noundef !192
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.h, label %_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @_ZNK4llvm14DWARFFormValue12getAsCStringEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %16) #27
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 8             ; 3 uses
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.j

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.h
  %i.cm = load i64, ptr %13, align 8, !tbaa !285, !noalias !657
  %i.cn = inttoptr i64 %i.cm to ptr
  store ptr null, ptr %13, align 8, !tbaa !285, !noalias !657
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.cn, ptr %11, align 8, !tbaa !287
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  %i.co = load ptr, ptr %11, align 8, !tbaa !287  ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #27, !inline_history !1
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %.pre.i = load i8, ptr %i.cj, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ct = load ptr, ptr %13, align 8, !tbaa !288  ; 3 uses
  %.not.i = icmp eq ptr %i.ct, null
  br i1 %.not.i, label %bb.k, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.j
  %i.cu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #27
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i, %bb.j, %_ZN4llvm5ErrorD2Ev.exit.i
  %i.cv = phi i8 [ %.pre.i, %_ZN4llvm5ErrorD2Ev.exit.i ], [ %i.ck, %_ZN4llvm9StringRefC2EPKc.exit.i ], [ %i.ck, %bb.j ]
  %.sroa.5.0.i = phi i64 [ 0, %_ZN4llvm5ErrorD2Ev.exit.i ], [ %i.cu, %_ZN4llvm9StringRefC2EPKc.exit.i ], [ 0, %bb.j ] ; 4 uses
  %.sroa.010.0.i = phi ptr [ null, %_ZN4llvm5ErrorD2Ev.exit.i ], [ %i.ct, %_ZN4llvm9StringRefC2EPKc.exit.i ], [ null, %bb.j ] ; 3 uses
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %bb.l, label %_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit

bb.l:                                             ; preds = %bb.k
  %i.cx = load ptr, ptr %13, align 8, !tbaa !285  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i: ; preds = %bb.l
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx) #27, !inline_history !2
  br label %_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit

_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit: ; preds = %bb.k, %bb.l, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %.not.i18 = icmp eq ptr %.sroa.010.0.i, null
  br i1 %.not.i18, label %_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit.thread, label %bb.m

_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit.thread: ; preds = %bb.g, %_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit
  %i.db = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.db, ptr %15, align 8, !tbaa !182, !alias.scope !658
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.dc, align 8, !tbaa !174, !alias.scope !658
  store i8 0, ptr %i.db, align 8, !tbaa !183, !alias.scope !658
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.m:                                             ; preds = %_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.dd, ptr %15, align 8, !tbaa !182, !alias.scope !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !658
  store i64 %.sroa.5.0.i, ptr %i.a, align 8, !tbaa !161, !noalias !658
  %i.de = icmp ugt i64 %.sroa.5.0.i, 15
  br i1 %i.de, label %bb.n, label %._crit_edge.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.df = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #27 ; 2 uses
  store ptr %i.df, ptr %15, align 8, !tbaa !184, !alias.scope !658
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !161, !noalias !658
  store i64 %i.dg, ptr %i.dd, align 8, !tbaa !183, !alias.scope !658
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %bb.m
  %i.dh = phi ptr [ %i.df, %bb.n ], [ %i.dd, %bb.m ] ; 2 uses
  switch i64 %.sroa.5.0.i, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.di = load i8, ptr %.sroa.010.0.i, align 1, !tbaa !183
  store i8 %i.di, ptr %i.dh, align 1, !tbaa !183
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr nonnull align 1 %.sroa.010.0.i, i64 %.sroa.5.0.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !161, !noalias !658 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !174, !alias.scope !658
  %i.dl = load ptr, ptr %15, align 8, !tbaa !184, !alias.scope !658
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dj
  store i8 0, ptr %i.dm, align 1, !tbaa !183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !658
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %_ZN4llvm5dwarf11toStringRefERKSt8optionalINS_14DWARFFormValueEENS_9StringRefE.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
end_hunk_0
begin_hunk_1_@_ZN4llvm12dwarf_linker8parallel11CompileUnit22cloneDieAttrExpressionERKNS_15DWARFExpressionERNS_15SmallVectorImplIhEERNS1_17SectionDescriptorESt8optionalIlERNS_11SmallVectorIPmLj6EEE:bb.a
  %i.lc = icmp ugt i64 %i.lb, %.sroa.2.0.copyload.i.i135
  %.sroa.speculate.load.false.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.lb, i64 %.sroa.speculated3.i)
  %.sroa.speculated.i = select i1 %i.lc, i64 %.sroa.2.0.copyload.i.i135, i64 %.sroa.speculate.load.false.sroa.speculated.i
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i133, i64 %.sroa.speculated3.i ; 6 uses
  %gepdiff = sub nsw i64 %.sroa.speculated.i, %.sroa.speculated3.i ; 14 uses
  %i.le = load i64, ptr %i.bp, align 8, !tbaa !168 ; 2 uses
  %i.lf = add i64 %gepdiff, %i.le                 ; 2 uses
  %i.lg = load i64, ptr %i.bq, align 8, !tbaa !169
  %i.lh = icmp ult i64 %i.lg, %i.lf
  br i1 %i.lh, label %bb.bc, label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i136

bb.bc:                                            ; preds = %.thread172
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.cd, i64 noundef %i.lf, i64 noundef 1) #27
  %.pre.i138 = load i64, ptr %i.bp, align 8, !tbaa !168
  br label %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i136

_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i136: ; preds = %bb.bc, %.thread172
  %i.li = phi i64 [ %i.le, %.thread172 ], [ %.pre.i138, %bb.bc ] ; 3 uses
  %i.lj = icmp sgt i64 %gepdiff, 0
  br i1 %i.lj, label %iter.check, label %_ZN4llvm15SmallVectorImplIhE6appendIPKcvEEvT_S5_.exit

iter.check:                                       ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i136
  %i.lk = load ptr, ptr %2, align 8, !tbaa !167   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.li ; 6 uses
  %min.iters.check = icmp ult i64 %gepdiff, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.lm = ptrtoaddr ptr %i.lk to i64
  %i.ln = add i64 %i.li, %i.lm
  %i.lo = add i64 %.sroa.speculated3.i, %.sroa.0.0.copyload.i.i133218
  %i.lp = sub i64 %i.lo, %i.ln
  %diff.check = icmp ugt i64 %i.lp, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check219 = icmp ult i64 %gepdiff, 32
  br i1 %min.iters.check219, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lq = and i64 %gepdiff, 28
  %n.vec = and i64 %gepdiff, 9223372036854775776  ; 5 uses
  %i.lr = and i64 %gepdiff, 31
  %i.ls = getelementptr i8, ptr %i.ll, i64 %n.vec
  %i.lt = getelementptr i8, ptr %i.ld, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ll, i64 %index ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.ld, i64 %index ; 2 uses
  %i.lu = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep220, align 1, !tbaa !183
  %wide.load221 = load <16 x i8>, ptr %i.lu, align 1, !tbaa !183
  %i.lv = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !183
  store <16 x i8> %wide.load221, ptr %i.lv, align 1, !tbaa !183
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lw = icmp eq i64 %index.next, %n.vec
  br i1 %i.lw, label %middle.block, label %vector.body, !llvm.loop !870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %gepdiff, %n.vec
  br i1 %cmp.n, label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_copyIPKcPhEEvT_S6_T0_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !886

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec224 = and i64 %gepdiff, 9223372036854775804 ; 4 uses
  %i.lx = and i64 %gepdiff, 3
  %i.ly = getelementptr i8, ptr %i.ll, i64 %n.vec224
  %i.lz = getelementptr i8, ptr %i.ld, i64 %n.vec224
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index225 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next229, %vec.epilog.vector.body ] ; 3 uses
  %next.gep226 = getelementptr i8, ptr %i.ll, i64 %index225
  %next.gep227 = getelementptr i8, ptr %i.ld, i64 %index225
  %wide.load228 = load <4 x i8>, ptr %next.gep227, align 1, !tbaa !183
  store <4 x i8> %wide.load228, ptr %next.gep226, align 1, !tbaa !183
  %index.next229 = add nuw i64 %index225, 4       ; 2 uses
  %i.ma = icmp eq i64 %index.next229, %n.vec224
  br i1 %i.ma, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !871

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n230 = icmp eq i64 %gepdiff, %n.vec224
  br i1 %cmp.n230, label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_copyIPKcPhEEvT_S6_T0_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %gepdiff, %iter.check ], [ %gepdiff, %vector.memcheck ], [ %i.lr, %vec.epilog.iter.check ], [ %i.lx, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ll, %iter.check ], [ %i.ll, %vector.memcheck ], [ %i.ls, %vec.epilog.iter.check ], [ %i.ly, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ld, %iter.check ], [ %i.ld, %vector.memcheck ], [ %i.lt, %vec.epilog.iter.check ], [ %i.lz, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i = phi i64 [ %i.me, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.i = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.i = phi ptr [ %i.mc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.mb = load i8, ptr %.0910.i.i.i.i.i.i.i.i.i, align 1, !tbaa !183
  store i8 %i.mb, ptr %.0811.i.i.i.i.i.i.i.i.i, align 1, !tbaa !183
  %i.mc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.i, i64 1
  %i.md = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.i, i64 1
  %i.me = add nsw i64 %.012.i.i.i.i.i.i.i.i.i, -1
  %i.mf = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.mf, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_copyIPKcPhEEvT_S6_T0_.exit.loopexit.i, !llvm.loop !872

_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_copyIPKcPhEEvT_S6_T0_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre8.i137 = load i64, ptr %i.bp, align 8, !tbaa !168
  br label %_ZN4llvm15SmallVectorImplIhE6appendIPKcvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplIhE6appendIPKcvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i136, %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_copyIPKcPhEEvT_S6_T0_.exit.loopexit.i
  %i.mg = phi i64 [ %.pre8.i137, %_ZN4llvm23SmallVectorTemplateBaseIhLb1EE18uninitialized_copyIPKcPhEEvT_S6_T0_.exit.loopexit.i ], [ %i.li, %_ZN4llvm15SmallVectorImplIhE7reserveEm.exit.i136 ]
  %i.mh = add i64 %i.mg, %gepdiff
  store i64 %i.mh, ptr %i.bp, align 8, !tbaa !168
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ap, %_ZN4llvm15SmallVectorImplIhE6appendIPKcvEEvT_S5_.exit, %bb.bb, %_ZN4llvm15SmallVectorImplIhE6appendIPKhvEEvT_S5_.exit
  %i.mi = load i64, ptr %i.bo, align 8, !tbaa !462
  %i.mj = load ptr, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.bf
  br i1 %i.mk, label %_ZN4llvm15DWARFExpression9Operation11DescriptionD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef %i.mj) #27
  br label %_ZN4llvm15DWARFExpression9Operation11DescriptionD2Ev.exit

_ZN4llvm15DWARFExpression9Operation11DescriptionD2Ev.exit: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.ml = load i8, ptr %i.u, align 8, !tbaa !453, !range !271, !noundef !192
  %i.mm = trunc nuw i8 %i.ml to i1
  %i.mn = load ptr, ptr %12, align 8              ; 5 uses
  %.sroa.2.0..sroa_idx.i.i139 = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %.in.i = select i1 %i.mm, ptr %.sroa.2.0..sroa_idx.i.i139, ptr %i.bo
  %i.mo = load i64, ptr %.in.i, align 8, !tbaa !161 ; 4 uses
  store i64 %i.mo, ptr %i.o, align 8, !tbaa !451
  %.sroa.2.0.copyload.i3.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i139, align 8, !tbaa !161
  %.not.i140 = icmp ult i64 %i.mo, %.sroa.2.0.copyload.i3.i
  br i1 %.not.i140, label %bb.bf, label %_ZN4llvm15DWARFExpression8iteratorppEv.exit

bb.bf:                                            ; preds = %_ZN4llvm15DWARFExpression9Operation11DescriptionD2Ev.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.mq = load i8, ptr %i.mp, align 8, !tbaa !460
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 25
  %.sroa.0.0.copyload.i = load i16, ptr %i.mr, align 1
  %i.ms = call noundef zeroext i1 @_ZN4llvm15DWARFExpression9Operation7extractENS_13DataExtractorEhmSt8optionalINS_5dwarf11DwarfFormatEE(ptr noundef nonnull align 8 dereferenceable(224) %i.bd, ptr noundef nonnull byval(%"class.llvm::DataExtractor") align 8 %i.mn, i8 noundef zeroext %i.mq, i64 noundef %i.mo, i16 %.sroa.0.0.copyload.i) #27
  %i.mt = xor i1 %i.ms, true
  %i.mu = zext i1 %i.mt to i8
  %.pre185 = load ptr, ptr %12, align 8, !tbaa !450
  %.pre186 = load i64, ptr %i.o, align 8
  br label %_ZN4llvm15DWARFExpression8iteratorppEv.exit

_ZN4llvm15DWARFExpression8iteratorppEv.exit:      ; preds = %_ZN4llvm15DWARFExpression9Operation11DescriptionD2Ev.exit, %bb.bf
  %i.mv = phi i64 [ %i.mo, %_ZN4llvm15DWARFExpression9Operation11DescriptionD2Ev.exit ], [ %.pre186, %bb.bf ]
  %i.mw = phi ptr [ %i.mn, %_ZN4llvm15DWARFExpression9Operation11DescriptionD2Ev.exit ], [ %.pre185, %bb.bf ]
  %i.mx = phi i8 [ 1, %_ZN4llvm15DWARFExpression9Operation11DescriptionD2Ev.exit ], [ %i.mu, %bb.bf ]
  store i8 %i.mx, ptr %i.u, align 8, !tbaa !461
  %i.my = load ptr, ptr %13, align 8, !tbaa !450
  %i.mz = icmp ne ptr %i.mw, %i.my
  %i.na = load i64, ptr %i.ao, align 8
  %i.nb = icmp ne i64 %i.mv, %i.na
  %.not3.i = select i1 %i.mz, i1 true, i1 %i.nb
  br i1 %.not3.i, label %bb.i, label %._crit_edge
}

declare void @_ZN4llvm12dwarf_linker8parallel23DebugULEB128DieRefPatchC1EmPNS1_11CompileUnitES4_j(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare void @_ZNK4llvm9DWARFUnit24getAddrOffsetSectionItemEj(ptr dead_on_unwind writable sret(%"class.std::optional.168") align 8, ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12dwarf_linker8parallel11CompileUnit12cloneAndEmitESt8optionalISt17reference_wrapperIKNS_6TripleEEEPNS1_8TypeUnitE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1192) %1, ptr %2, i8 %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::BumpPtrAllocatorImpl", align 8 ; 12 uses
  %6 = alloca %"class.std::optional.400", align 8 ; 2 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, i8 0, i64 16, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 4, ptr %i.e, align 4, !tbaa !157
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !155
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !156
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 76
  store i32 0, ptr %i.i, align 4, !tbaa !157
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !153  ; 3 uses
  call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %i.k, i1 noundef zeroext true) #27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !270  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !270
  %.not = icmp eq ptr %i.m, %i.o
  %.not6970 = icmp eq ptr %i.m, null
  %.not69 = or i1 %.not6970, %.not
  br i1 %.not69, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !287
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq ptr %4, null
  br i1 %.not36, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 768
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !907
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.033 = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !467
  %i.u = icmp ugt i16 %i.t, 4
  %i.v = select i1 %i.u, i64 12, i64 11
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.w, align 8, !tbaa !469
  %i.x = call { ptr, ptr } @_ZN4llvm12dwarf_linker8parallel11CompileUnit8cloneDIEEPKNS_19DWARFDebugInfoEntryEPNS_14StringMapEntryISt6atomicIPNS1_13TypeEntryBodyEEEEmSt8optionalIlESE_RNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS1_8TypeUnitEj(ptr noundef nonnull align 8 dereferenceable(1192) %1, ptr noundef nonnull %i.m, ptr noundef %.033, i64 noundef %i.v, i64 undef, i8 0, ptr noundef nonnull byval(%"class.std::optional.400") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %4, i32 noundef -1)
  %i.y = extractvalue { ptr, ptr } %i.x, 0        ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 240
  store ptr %i.y, ptr %i.z, align 8, !tbaa !298
  %.not.i50 = icmp eq ptr %i.y, null
  br i1 %.not.i50, label %_ZN4llvm5ErrorD2Ev.exit51, label %_ZN4llvm12dwarf_linker8parallel9DwarfUnit13setOutUnitDIEEPNS_3DIEE.exit

_ZN4llvm12dwarf_linker8parallel9DwarfUnit13setOutUnitDIEEPNS_3DIEE.exit: ; preds = %bb.d
  %i.aa = load i16, ptr %i.s, align 8, !tbaa !467
  %i.ab = icmp ugt i16 %i.aa, 4
  %i.ac = select i1 %i.ab, i32 12, i32 11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !482
  %i.af = add i32 %i.ac, %i.ae
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !185
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.aj = load i16, ptr %i.ai, align 4, !tbaa !483
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i16 %i.aj, ptr %i.ak, align 8, !tbaa !186
  %i.al = trunc nuw i8 %3 to i1
  br i1 %i.al, label %bb.e, label %_ZN4llvm5ErrorD2Ev.exit51

_ZN4llvm5ErrorD2Ev.exit51:                        ; preds = %bb.d, %_ZN4llvm12dwarf_linker8parallel9DwarfUnit13setOutUnitDIEEPNS_3DIEE.exit
  store ptr null, ptr %0, align 8, !tbaa !287
  br label %.critedge

bb.e:                                             ; preds = %_ZN4llvm12dwarf_linker8parallel9DwarfUnit13setOutUnitDIEEPNS_3DIEE.exit
  call void @_ZN4llvm12dwarf_linker8parallel11CompileUnit21cloneAndEmitLineTableERKNS_6TripleE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1192) %1, ptr noundef nonnull align 8 dereferenceable(56) %2)
  %i.am = load ptr, ptr %0, align 8, !tbaa !287
  %.not71.a = icmp eq ptr %i.am, null
  br i1 %.not71.a, label %_ZN4llvm5ErrorD2Ev.exit52, label %.critedge

_ZN4llvm5ErrorD2Ev.exit52:                        ; preds = %bb.e
  call void @_ZN4llvm12dwarf_linker8parallel11CompileUnit22cloneAndEmitDebugMacroEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1192) %1)
  %i.an = load ptr, ptr %0, align 8, !tbaa !287
  %.not72.a = icmp eq ptr %i.an, null
  br i1 %.not72.a, label %_ZN4llvm5ErrorD2Ev.exit53, label %.critedge

_ZN4llvm5ErrorD2Ev.exit53:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit52
  %i.ao = call noundef nonnull align 8 dereferenceable(424) ptr @_ZN4llvm12dwarf_linker8parallel14OutputSections28getOrCreateSectionDescriptorENS0_16DebugSectionKindE(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i8 noundef zeroext 0) ; 0 uses
  call void @_ZN4llvm12dwarf_linker8parallel9DwarfUnit13emitDebugInfoERKNS_6TripleE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef nonnull align 8 dereferenceable(56) %2) #27
  %i.ap = load ptr, ptr %0, align 8, !tbaa !287
  %.not73.a = icmp eq ptr %i.ap, null
  br i1 %.not73.a, label %_ZN4llvm5ErrorD2Ev.exit54, label %.critedge

_ZN4llvm5ErrorD2Ev.exit54:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit53
  call void @_ZN4llvm12dwarf_linker8parallel11CompileUnit18cloneAndEmitRangesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1192) %1)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !287
  %.not74 = icmp eq ptr %i.aq, null
  br i1 %.not74, label %_ZN4llvm5ErrorD2Ev.exit55, label %.critedge

_ZN4llvm5ErrorD2Ev.exit55:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit54
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !191, !noalias !908, !nonnull !192, !align !193
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 102
  %i.at = load i8, ptr %i.as, align 2, !tbaa !324, !range !271, !noalias !908, !noundef !192
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZN4llvm5ErrorD2Ev.exit56, label %_ZN4llvm5ErrorD2Ev.exit.sink.split.i

_ZN4llvm5ErrorD2Ev.exit.sink.split.i:             ; preds = %_ZN4llvm5ErrorD2Ev.exit55
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !153, !noalias !908
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !408, !noalias !908
  %i.ay = icmp ult i16 %i.ax, 5
  %..i = select i1 %i.ay, i8 5, i8 6
  call void @_ZN4llvm12dwarf_linker8parallel11CompileUnit13emitLocationsENS0_16DebugSectionKindE(ptr noundef nonnull align 8 dereferenceable(1192) %1, i8 noundef zeroext %..i), !noalias !908
  br label %_ZN4llvm5ErrorD2Ev.exit56

_ZN4llvm5ErrorD2Ev.exit56:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit55, %_ZN4llvm5ErrorD2Ev.exit.sink.split.i
  call void @_ZN4llvm12dwarf_linker8parallel11CompileUnit20emitDebugAddrSectionEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1192) %1)
  %i.az = load ptr, ptr %0, align 8, !tbaa !287
  %.not75 = icmp eq ptr %i.az, null
  br i1 %.not75, label %_ZN4llvm5ErrorD2Ev.exit57, label %.critedge

_ZN4llvm5ErrorD2Ev.exit57:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit56
  %i.ba = load ptr, ptr %i.r, align 8, !tbaa !191, !nonnull !192, !align !193
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 1, ptr %i.a, align 1, !tbaa !485
  %i.bc = call noundef zeroext i1 @_ZN4llvm12is_containedIRKNS_11SmallVectorINS_12dwarf_linker15DWARFLinkerBase14AccelTableKindELj1EEES4_EEbOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(25) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit57
  call void @_ZN4llvm12dwarf_linker8parallel9DwarfUnit19emitPubAcceleratorsEv(ptr noundef nonnull align 8 dereferenceable(400) %1) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvm5ErrorD2Ev.exit57
  call void @_ZN4llvm12dwarf_linker8parallel9DwarfUnit28emitDebugStringOffsetSectionEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1) #27
  %i.bd = load ptr, ptr %0, align 8, !tbaa !287
  %.not76 = icmp eq ptr %i.bd, null
  br i1 %.not76, label %_ZN4llvm5ErrorD2Ev.exit58, label %.critedge

_ZN4llvm5ErrorD2Ev.exit58:                        ; preds = %bb.g
  call void @_ZN4llvm12dwarf_linker8parallel9DwarfUnit17emitAbbreviationsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(400) %1) #27
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit51, %_ZN4llvm5ErrorD2Ev.exit58, %bb.e, %_ZN4llvm5ErrorD2Ev.exit52, %_ZN4llvm5ErrorD2Ev.exit53, %_ZN4llvm5ErrorD2Ev.exit54, %_ZN4llvm5ErrorD2Ev.exit56, %bb.g, %_ZN4llvm5ErrorD2Ev.exit
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.bf = load i32, ptr %i.d, align 8, !tbaa !156 ; 2 uses
  %i.bg = zext i32 %i.bf to i64
  %.idx.i = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i
  %.not6.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not6.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %i.be, %.critedge ] ; 3 uses
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.bj = ptrtoint ptr %.07.i.i to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %sum.shift.i.i = lshr i64 %i.bl, 10
  %i.bm = trunc i64 %sum.shift.i.i to i32
  %i.bn = and i32 %i.bm, 33554431
  %i.bo = call i32 @llvm.umin.i32(i32 %i.bn, i32 30)
  %.sroa.speculated.i.i.i = zext nneg i32 %i.bo to i64
  %i.bp = shl nuw nsw i64 4096, %.sroa.speculated.i.i.i
  %i.bq = load ptr, ptr %.07.i.i, align 8, !tbaa !160
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bp, i64 noundef 16) #27
  %i.br = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.br, %i.bh
  br i1 %.not.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, label %.lr.ph.i.i, !llvm.loop !889

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i: ; preds = %.lr.ph.i.i, %.critedge
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !155 ; 3 uses
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !156 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %.idx.i.i = shl nuw nsw i64 %i.bu, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not10.i.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i, label %.lr.ph.i1.i

.lr.ph.i1.i:                                      ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i, %.lr.ph.i1.i
  %.011.i.i = phi ptr [ %i.bz, %.lr.ph.i1.i ], [ %i.bs, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 3 uses
  %i.bw = load ptr, ptr %.011.i.i, align 8, !tbaa !910
  %i.bx = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !911
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.by, i64 noundef 16) #27
  %i.bz = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.bz, %i.bv
  br i1 %.not.i2.i, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, label %.lr.ph.i1.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i: ; preds = %.lr.ph.i1.i
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !155
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i: ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i
  %i.ca = phi ptr [ %.pre.i, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i ], [ %i.bs, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE15DeallocateSlabsEPPvS4_.exit.i ] ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.g
  br i1 %i.cb, label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  call void @free(ptr noundef %i.ca) #27
  br label %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i: ; preds = %bb.h, %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE26DeallocateCustomSizedSlabsEv.exit.i
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.c
  br i1 %i.cd, label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i
  call void @free(ptr noundef %i.cc) #27
  br label %_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit

_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local { ptr, ptr } @_ZN4llvm12dwarf_linker8parallel11CompileUnit8cloneDIEEPKNS_19DWARFDebugInfoEntryEPNS_14StringMapEntryISt6atomicIPNS1_13TypeEntryBodyEEEEmSt8optionalIlESE_RNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEPNS1_8TypeUnitEj(ptr noundef nonnull align 8 dereferenceable(1192) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i64 %4, i8 %5, ptr nofree noundef byval(%"class.std::optional.400") align 8 captures(none) %6, ptr noundef nonnull align 8 dereferenceable(80) %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #5 align 2 {
bb.a:
  %10 = alloca %"class.std::optional.400", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.llvm::dwarf_linker::parallel::DIEGenerator", align 8 ; 6 uses
end_hunk_1
