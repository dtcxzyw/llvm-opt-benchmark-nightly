inline.NumInlined: 6631
inline.NumDeleted: 2675
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE:bb.a
  br label %common.resume

bb.ma:                                            ; preds = %bb.lx
  %i.avr = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.avt = load <2 x ptr>, ptr %i.avr, align 8, !tbaa !93, !noalias !427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.avr, i8 0, i64 16, i1 false), !noalias !424
  %i.avu = load ptr, ptr %i.avs, align 8, !tbaa !33, !noalias !424
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 40
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !122, !noalias !424 ; 2 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 16
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avw, i64 24
  %i.avz = load ptr, ptr %i.avy, align 8, !tbaa !91, !noalias !424 ; 8 uses
  store <2 x ptr> %i.avt, ptr %i.avx, align 8, !tbaa !93, !noalias !424
  %.not.i.i.i.i.i167 = icmp eq ptr %i.avz, null
  br i1 %.not.i.i.i.i.i167, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i171, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 8 ; 4 uses
  %i.awb = load atomic i64, ptr %i.awa acquire, align 8, !noalias !424 ; 2 uses
  %i.awc = icmp eq i64 %i.awb, 4294967297
  %i.awd = trunc i64 %i.awb to i32                ; 2 uses
  br i1 %i.awc, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  store i32 0, ptr %i.awa, align 8, !tbaa !80, !noalias !424
  %i.awe = getelementptr inbounds nuw i8, ptr %i.avz, i64 12
  store i32 0, ptr %i.awe, align 4, !tbaa !87, !noalias !424
  %i.awf = load ptr, ptr %i.avz, align 8, !tbaa !88, !noalias !424
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 16
  %i.awh = load ptr, ptr %i.awg, align 8, !noalias !424
  call void %i.awh(ptr noundef nonnull align 8 dereferenceable(16) %i.avz) #19, !noalias !424, !inline_history !432
  %i.awi = load ptr, ptr %i.avz, align 8, !tbaa !88, !noalias !424
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 24
  %i.awk = load ptr, ptr %i.awj, align 8, !noalias !424
  call void %i.awk(ptr noundef nonnull align 8 dereferenceable(16) %i.avz) #19, !noalias !424, !inline_history !432
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i171

bb.md:                                            ; preds = %bb.mb
  %i.awl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !424
  %.not.i.i.i.i.i.i168 = icmp eq i8 %i.awl, 0
  br i1 %.not.i.i.i.i.i.i168, label %bb.mf, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.awm = add nsw i32 %i.awd, -1
  store i32 %i.awm, ptr %i.awa, align 8, !tbaa !3, !noalias !424
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169

bb.mf:                                            ; preds = %bb.md
  %i.awn = atomicrmw volatile add ptr %i.awa, i32 -1 acq_rel, align 4, !noalias !424
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169: ; preds = %bb.mf, %bb.me
  %.0.i.i.i.i.i.i.i170 = phi i32 [ %i.awd, %bb.me ], [ %i.awn, %bb.mf ]
  %i.awo = icmp eq i32 %.0.i.i.i.i.i.i.i170, 1
  br i1 %i.awo, label %bb.mg, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i171, !prof !96

bb.mg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avz) #19, !noalias !424
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i171

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i171: ; preds = %bb.mg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i169, %bb.mc, %bb.ma
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !433
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i158

_ZN5arrow6StatusC2ERKS0_.exit.i158:               ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i171, %bb.ly
  %i.awp = load ptr, ptr %35, align 8, !tbaa !60, !noalias !424 ; 2 uses
  %i.awq = icmp eq ptr %i.awp, null
  br i1 %i.awq, label %bb.mh, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i159, !prof !63

bb.mh:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i158
  %i.awr = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !91, !noalias !424 ; 8 uses
  %.not.i.i.i.i.i7.i160 = icmp eq ptr %i.aws, null
  br i1 %.not.i.i.i.i.i7.i160, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i164, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.awt = getelementptr inbounds nuw i8, ptr %i.aws, i64 8 ; 4 uses
  %i.awu = load atomic i64, ptr %i.awt acquire, align 8 ; 2 uses
  %i.awv = icmp eq i64 %i.awu, 4294967297
  %i.aww = trunc i64 %i.awu to i32                ; 2 uses
  br i1 %i.awv, label %bb.mj, label %bb.mk

bb.mj:                                            ; preds = %bb.mi
  store i32 0, ptr %i.awt, align 8, !tbaa !80
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aws, i64 12
  store i32 0, ptr %i.awx, align 4, !tbaa !87
  %i.awy = load ptr, ptr %i.aws, align 8, !tbaa !88
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 16
  %i.axa = load ptr, ptr %i.awz, align 8
  call void %i.axa(ptr noundef nonnull align 8 dereferenceable(16) %i.aws) #19, !inline_history !436
  %i.axb = load ptr, ptr %i.aws, align 8, !tbaa !88
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 24
  %i.axd = load ptr, ptr %i.axc, align 8
  call void %i.axd(ptr noundef nonnull align 8 dereferenceable(16) %i.aws) #19, !inline_history !436
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i164

bb.mk:                                            ; preds = %bb.mi
  %i.axe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !424
  %.not.i.i.i.i.i.i.i161 = icmp eq i8 %i.axe, 0
  br i1 %.not.i.i.i.i.i.i.i161, label %bb.mm, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.axf = add nsw i32 %i.aww, -1
  store i32 %i.axf, ptr %i.awt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i162

bb.mm:                                            ; preds = %bb.mk
  %i.axg = atomicrmw volatile add ptr %i.awt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i162

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i162: ; preds = %bb.mm, %bb.ml
  %.0.i.i.i.i.i.i.i.i163 = phi i32 [ %i.aww, %bb.ml ], [ %i.axg, %bb.mm ]
  %i.axh = icmp eq i32 %.0.i.i.i.i.i.i.i.i163, 1
  br i1 %i.axh, label %bb.mn, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i164, !prof !96

bb.mn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i162
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aws) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i164

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i164: ; preds = %bb.mn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i162, %bb.mj, %bb.mh
  %.pr.i.i165 = load ptr, ptr %35, align 8, !tbaa !60, !noalias !424 ; 2 uses
  %.not.i.i8.i166 = icmp eq ptr %.pr.i.i165, null
  br i1 %.not.i.i8.i166, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_10Time64TypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i159, !prof !158

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i159: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i164, %_ZN5arrow6StatusC2ERKS0_.exit.i158
  %i.axi = phi ptr [ %.pr.i.i165, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i164 ], [ %i.awp, %_ZN5arrow6StatusC2ERKS0_.exit.i158 ]
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 1
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !64, !range !74, !noundef !75
  %i.axl = trunc nuw i8 %i.axk to i1
  br i1 %i.axl, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_10Time64TypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit, label %bb.mo

bb.mo:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i159
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %35) #19
  br label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_10Time64TypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_10Time64TypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i164, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i159, %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19, !noalias !424
  br label %_ZN5arrow6StatusD2Ev.exit

bb.mp:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.axm = load ptr, ptr %1, align 8, !tbaa !120, !noalias !437, !nonnull !75, !align !121
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !33, !noalias !437
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 40
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !122, !noalias !437
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axp, i64 16
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !126, !noalias !437 ; 3 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 9
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !440, !range !74, !noalias !437, !noundef !75
  %i.axu = trunc nuw i8 %i.axt to i1
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axr, i64 16
  %i.axw = load ptr, ptr %i.axv, align 8, !noalias !437
  %i.axx = select i1 %i.axu, ptr %i.axw, ptr null, !prof !63 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19, !noalias !437
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axr, i64 24
  %i.axz = load i64, ptr %i.axy, align 8, !tbaa !130, !noalias !437
  %i.aya = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !77, !noalias !437
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %37, i64 noundef %i.axz, ptr noundef %i.ayb), !noalias !437
  %i.ayc = load ptr, ptr %37, align 8, !tbaa !60, !noalias !437
  %i.ayd = icmp eq ptr %i.ayc, null
  br i1 %i.ayd, label %bb.ms, label %bb.mq, !prof !63

bb.mq:                                            ; preds = %bb.mp
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !437
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i140 unwind label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.aye = landingpad { ptr, i32 }
          cleanup
  br label %bb.nd

bb.ms:                                            ; preds = %bb.mp
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19, !noalias !437
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.ayf = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.ayg = load i64, ptr %i.ayf, align 8, !tbaa !143, !noalias !447 ; 2 uses
  store i64 %i.ayg, ptr %38, align 8, !tbaa !143, !alias.scope !448, !noalias !437
  store ptr null, ptr %i.ayf, align 8, !tbaa !143, !noalias !447
  %.cast.i145 = inttoptr i64 %i.ayg to ptr        ; 3 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %.cast.i145, i64 9
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !440, !range !74, !noalias !437, !noundef !75
  %i.ayj = trunc nuw i8 %i.ayi to i1
  %i.ayk = getelementptr inbounds nuw i8, ptr %.cast.i145, i64 8
  %i.ayl = load i8, ptr %i.ayk, align 8, !range !74, !noalias !437
  %i.aym = trunc nuw i8 %i.ayl to i1
  %i.ayn = select i1 %i.ayj, i1 %i.aym, i1 false, !prof !63
  %i.ayo = getelementptr inbounds nuw i8, ptr %.cast.i145, i64 16
  %i.ayp = load ptr, ptr %i.ayo, align 8, !noalias !437
  %i.ayq = select i1 %i.ayn, ptr %i.ayp, ptr null, !prof !63 ; 3 uses
  %i.ayr = load ptr, ptr %1, align 8, !tbaa !120, !noalias !437, !nonnull !75, !align !121
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !33, !noalias !437
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ays, i64 40
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !122, !noalias !437
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 16
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !126, !noalias !437
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 24
  %i.ayy = load i64, ptr %i.ayx, align 8, !tbaa !130, !noalias !437
  %i.ayz = lshr i64 %i.ayy, 4                     ; 2 uses
  switch i64 %i.ayz, label %.lr.ph.i147.preheader.new [
    i64 0, label %._crit_edge.i148
    i64 1, label %.lr.ph.i147.epil.preheader
  ]

.lr.ph.i147.preheader.new:                        ; preds = %bb.ms
  %unroll_iter = and i64 %i.ayz, 1152921504606846974
  br label %.lr.ph.i147

.lr.ph.i147.epil.preheader:                       ; preds = %bb.ms, %.lr.ph.i147
  %.0191.i.epil.init = phi i64 [ 0, %bb.ms ], [ %i.bao, %.lr.ph.i147 ] ; 2 uses
  %i.aza = getelementptr inbounds nuw [16 x i8], ptr %i.axx, i64 %.0191.i.epil.init ; 2 uses
  %.sroa.8.0..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.aza, i64 8
  %.sroa.8.0.copyload.i.epil = load i64, ptr %.sroa.8.0..sroa_idx.i.epil, align 8, !tbaa !236, !noalias !437
  %i.azb = call noundef i64 @llvm.bswap.i64(i64 %.sroa.8.0.copyload.i.epil)
  %i.azc = getelementptr inbounds nuw [16 x i8], ptr %i.ayq, i64 %.0191.i.epil.init ; 2 uses
  %i.azd = load <2 x i32>, ptr %i.aza, align 8, !tbaa !3, !noalias !437
  %i.aze = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.azd)
  store <2 x i32> %i.aze, ptr %i.azc, align 8, !tbaa !3, !noalias !437
  %.sroa.8.0..sroa_idx4.i.epil = getelementptr inbounds nuw i8, ptr %i.azc, i64 8
  store i64 %i.azb, ptr %.sroa.8.0..sroa_idx4.i.epil, align 8, !tbaa !236, !noalias !437
  br label %._crit_edge.i148

._crit_edge.i148:                                 ; preds = %bb.ms, %.lr.ph.i147.epil.preheader
  %i.azf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !33, !noalias !437
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 40
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !122, !noalias !437 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19, !noalias !437
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %.noexc.i149 unwind label %bb.na, !noalias !437

.noexc.i149:                                      ; preds = %._crit_edge.i148
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16 ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azi, i64 24
  %i.azl = load ptr, ptr %i.azk, align 8, !tbaa !91, !noalias !437 ; 8 uses
  %i.azm = load <2 x ptr>, ptr %i.azj, align 8, !tbaa !93, !noalias !437
  %i.azn = load <2 x ptr>, ptr %36, align 16, !tbaa !93, !noalias !437
  store <2 x ptr> %i.azn, ptr %i.azj, align 8, !tbaa !93, !noalias !437
  store <2 x ptr> %i.azm, ptr %36, align 16, !tbaa !93, !noalias !437
  %.not.i.i.i.i.i150 = icmp eq ptr %i.azl, null
  br i1 %.not.i.i.i.i.i150, label %bb.mz, label %bb.mt

bb.mt:                                            ; preds = %.noexc.i149
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azl, i64 8 ; 4 uses
  %i.azp = load atomic i64, ptr %i.azo acquire, align 8, !noalias !437 ; 2 uses
  %i.azq = icmp eq i64 %i.azp, 4294967297
  %i.azr = trunc i64 %i.azp to i32                ; 2 uses
  br i1 %i.azq, label %bb.mu, label %bb.mv

bb.mu:                                            ; preds = %bb.mt
  store i32 0, ptr %i.azo, align 8, !tbaa !80, !noalias !437
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azl, i64 12
  store i32 0, ptr %i.azs, align 4, !tbaa !87, !noalias !437
  %i.azt = load ptr, ptr %i.azl, align 8, !tbaa !88, !noalias !437
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azt, i64 16
  %i.azv = load ptr, ptr %i.azu, align 8, !noalias !437
  call void %i.azv(ptr noundef nonnull align 8 dereferenceable(16) %i.azl) #19, !noalias !437, !inline_history !449
  %i.azw = load ptr, ptr %i.azl, align 8, !tbaa !88, !noalias !437
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 24
  %i.azy = load ptr, ptr %i.azx, align 8, !noalias !437
  call void %i.azy(ptr noundef nonnull align 8 dereferenceable(16) %i.azl) #19, !noalias !437, !inline_history !449
  br label %bb.mz

bb.mv:                                            ; preds = %bb.mt
  %i.azz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !437
  %.not.i.i.i.i.i.i151 = icmp eq i8 %i.azz, 0
  br i1 %.not.i.i.i.i.i.i151, label %bb.mx, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.baa = add nsw i32 %i.azr, -1
  store i32 %i.baa, ptr %i.azo, align 8, !tbaa !3, !noalias !437
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152

bb.mx:                                            ; preds = %bb.mv
  %i.bab = atomicrmw volatile add ptr %i.azo, i32 -1 acq_rel, align 4, !noalias !437
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152: ; preds = %bb.mx, %bb.mw
  %.0.i.i.i.i.i.i.i153 = phi i32 [ %i.azr, %bb.mw ], [ %i.bab, %bb.mx ]
  %i.bac = icmp eq i32 %.0.i.i.i.i.i.i.i153, 1
  br i1 %i.bac, label %bb.my, label %bb.mz, !prof !96

bb.my:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.azl) #19, !noalias !437
  br label %bb.mz

.lr.ph.i147:                                      ; preds = %.lr.ph.i147, %.lr.ph.i147.preheader.new
  %.0191.i = phi i64 [ 0, %.lr.ph.i147.preheader.new ], [ %i.bao, %.lr.ph.i147 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i147.preheader.new ], [ %niter.next.1, %.lr.ph.i147 ]
  %i.bad = getelementptr inbounds nuw [16 x i8], ptr %i.axx, i64 %.0191.i ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bad, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !236, !noalias !437
  %i.bae = call noundef i64 @llvm.bswap.i64(i64 %.sroa.8.0.copyload.i)
  %i.baf = getelementptr inbounds nuw [16 x i8], ptr %i.ayq, i64 %.0191.i ; 2 uses
  %i.bag = load <2 x i32>, ptr %i.bad, align 8, !tbaa !3, !noalias !437
  %i.bah = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.bag)
  store <2 x i32> %i.bah, ptr %i.baf, align 8, !tbaa !3, !noalias !437
  %.sroa.8.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.baf, i64 8
  store i64 %i.bae, ptr %.sroa.8.0..sroa_idx4.i, align 8, !tbaa !236, !noalias !437
  %i.bai = or disjoint i64 %.0191.i, 1            ; 2 uses
  %i.baj = getelementptr inbounds nuw [16 x i8], ptr %i.axx, i64 %i.bai ; 2 uses
  %.sroa.8.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.baj, i64 8
  %.sroa.8.0.copyload.i.1 = load i64, ptr %.sroa.8.0..sroa_idx.i.1, align 8, !tbaa !236, !noalias !437
  %i.bak = call noundef i64 @llvm.bswap.i64(i64 %.sroa.8.0.copyload.i.1)
  %i.bal = getelementptr inbounds nuw [16 x i8], ptr %i.ayq, i64 %i.bai ; 2 uses
  %i.bam = load <2 x i32>, ptr %i.baj, align 8, !tbaa !3, !noalias !437
  %i.ban = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.bam)
  store <2 x i32> %i.ban, ptr %i.bal, align 8, !tbaa !3, !noalias !437
  %.sroa.8.0..sroa_idx4.i.1 = getelementptr inbounds nuw i8, ptr %i.bal, i64 8
  store i64 %i.bak, ptr %.sroa.8.0..sroa_idx4.i.1, align 8, !tbaa !236, !noalias !437
  %i.bao = add nuw nsw i64 %.0191.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i147.epil.preheader, label %.lr.ph.i147, !llvm.loop !450

bb.mz:                                            ; preds = %bb.my, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i152, %bb.mu, %.noexc.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #19, !noalias !437
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !451
  %i.bap = load ptr, ptr %38, align 8, !tbaa !143, !noalias !437 ; 3 uses
  %.not.i.i154 = icmp eq ptr %i.bap, null
  br i1 %.not.i.i154, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i156, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i155

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i155: ; preds = %bb.mz
  %i.baq = load ptr, ptr %i.bap, align 8, !tbaa !88, !noalias !437
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 8
  %i.bas = load ptr, ptr %i.bar, align 8, !noalias !437
  call void %i.bas(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bap) #19, !noalias !437, !inline_history !454
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i156

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i156: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i155, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19, !noalias !437
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i140

bb.na:                                            ; preds = %._crit_edge.i148
  %i.bat = landingpad { ptr, i32 }
          cleanup
  %i.bau = load ptr, ptr %38, align 8, !tbaa !143, !noalias !437 ; 3 uses
  %.not.i23.i = icmp eq ptr %i.bau, null
  br i1 %.not.i23.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit25.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i24.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i24.i: ; preds = %bb.na
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !88, !noalias !437
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bav, i64 8
  %i.bax = load ptr, ptr %i.baw, align 8, !noalias !437
  call void %i.bax(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bau) #19, !noalias !437, !inline_history !454
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit25.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit25.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i24.i, %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19, !noalias !437
  br label %bb.nd

_ZN5arrow6StatusC2ERKS0_.exit.i140:               ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i156, %bb.mq
  %i.bay = load ptr, ptr %37, align 8, !tbaa !60, !noalias !437 ; 2 uses
  %i.baz = icmp eq ptr %i.bay, null
  br i1 %i.baz, label %bb.nb, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i141, !prof !63

bb.nb:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i140
  %i.bba = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !143, !noalias !437 ; 3 uses
  %.not.i.i.i.i26.i = icmp eq ptr %i.bbb, null
  br i1 %.not.i.i.i.i26.i, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_24MonthDayNanoIntervalTypeE.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i142

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i142: ; preds = %bb.nb
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !88
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 8
  %i.bbe = load ptr, ptr %i.bbd, align 8
  call void %i.bbe(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bbb) #19, !inline_history !455
  %.pr.pre.i.i143 = load ptr, ptr %37, align 8, !tbaa !60, !noalias !437 ; 2 uses
  %.not.i.i.i144 = icmp eq ptr %.pr.pre.i.i143, null
  br i1 %.not.i.i.i144, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_24MonthDayNanoIntervalTypeE.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i141, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i141: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i142, %_ZN5arrow6StatusC2ERKS0_.exit.i140
  %i.bbf = phi ptr [ %.pr.pre.i.i143, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i142 ], [ %i.bay, %_ZN5arrow6StatusC2ERKS0_.exit.i140 ]
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 1
  %i.bbh = load i8, ptr %i.bbg, align 1, !tbaa !64, !range !74, !noundef !75
  %i.bbi = trunc nuw i8 %i.bbh to i1
  br i1 %i.bbi, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_24MonthDayNanoIntervalTypeE.exit, label %bb.nc

bb.nc:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i141
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %37) #19
  br label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_24MonthDayNanoIntervalTypeE.exit

bb.nd:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit25.i, %bb.mr
  %.pn21.i = phi { ptr, i32 } [ %i.aye, %bb.mr ], [ %i.bat, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit25.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !437
  br label %common.resume

_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_24MonthDayNanoIntervalTypeE.exit: ; preds = %bb.nb, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i142, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i141, %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !437
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ne:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19, !noalias !456
  %i.bbj = load ptr, ptr %1, align 8, !tbaa !120, !noalias !456, !nonnull !75, !align !121
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !33, !noalias !456
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 40
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !122, !noalias !456
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 16
  %i.bbo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i125 = load ptr, ptr %i.bbo, align 8, !tbaa !77, !noalias !456
  call fastcc void @_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper14ByteSwapBufferIiEENS_6ResultISt10shared_ptrINS_6BufferEEEERKS6_(ptr dead_on_unwind noalias writable align 8 %39, ptr %.val.i125, ptr noundef nonnull align 8 dereferenceable(16) %i.bbn), !noalias !456
  %i.bbp = load ptr, ptr %39, align 8, !tbaa !60, !noalias !456
  %i.bbq = icmp eq ptr %i.bbp, null
  br i1 %i.bbq, label %bb.nh, label %bb.nf, !prof !63

bb.nf:                                            ; preds = %bb.ne
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !456
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i126 unwind label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.bbr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19, !noalias !456
  br label %common.resume

bb.nh:                                            ; preds = %bb.ne
  %i.bbs = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bbu = load <2 x ptr>, ptr %i.bbs, align 8, !tbaa !93, !noalias !459
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bbs, i8 0, i64 16, i1 false), !noalias !456
  %i.bbv = load ptr, ptr %i.bbt, align 8, !tbaa !33, !noalias !456
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbv, i64 40
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !122, !noalias !456 ; 2 uses
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 16
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbx, i64 24
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !91, !noalias !456 ; 8 uses
  store <2 x ptr> %i.bbu, ptr %i.bby, align 8, !tbaa !93, !noalias !456
  %.not.i.i.i.i.i135 = icmp eq ptr %i.bca, null
  br i1 %.not.i.i.i.i.i135, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i139, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 8 ; 4 uses
  %i.bcc = load atomic i64, ptr %i.bcb acquire, align 8, !noalias !456 ; 2 uses
  %i.bcd = icmp eq i64 %i.bcc, 4294967297
  %i.bce = trunc i64 %i.bcc to i32                ; 2 uses
  br i1 %i.bcd, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  store i32 0, ptr %i.bcb, align 8, !tbaa !80, !noalias !456
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bca, i64 12
  store i32 0, ptr %i.bcf, align 4, !tbaa !87, !noalias !456
  %i.bcg = load ptr, ptr %i.bca, align 8, !tbaa !88, !noalias !456
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16
  %i.bci = load ptr, ptr %i.bch, align 8, !noalias !456
  call void %i.bci(ptr noundef nonnull align 8 dereferenceable(16) %i.bca) #19, !noalias !456, !inline_history !464
  %i.bcj = load ptr, ptr %i.bca, align 8, !tbaa !88, !noalias !456
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 24
  %i.bcl = load ptr, ptr %i.bck, align 8, !noalias !456
  call void %i.bcl(ptr noundef nonnull align 8 dereferenceable(16) %i.bca) #19, !noalias !456, !inline_history !464
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i139

bb.nk:                                            ; preds = %bb.ni
  %i.bcm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !456
  %.not.i.i.i.i.i.i136 = icmp eq i8 %i.bcm, 0
  br i1 %.not.i.i.i.i.i.i136, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.bcn = add nsw i32 %i.bce, -1
  store i32 %i.bcn, ptr %i.bcb, align 8, !tbaa !3, !noalias !456
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i137

bb.nm:                                            ; preds = %bb.nk
  %i.bco = atomicrmw volatile add ptr %i.bcb, i32 -1 acq_rel, align 4, !noalias !456
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i137

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i137: ; preds = %bb.nm, %bb.nl
  %.0.i.i.i.i.i.i.i138 = phi i32 [ %i.bce, %bb.nl ], [ %i.bco, %bb.nm ]
  %i.bcp = icmp eq i32 %.0.i.i.i.i.i.i.i138, 1
  br i1 %i.bcp, label %bb.nn, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i139, !prof !96

bb.nn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i137
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bca) #19, !noalias !456
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i139

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i139: ; preds = %bb.nn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i137, %bb.nj, %bb.nh
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !465
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i126

_ZN5arrow6StatusC2ERKS0_.exit.i126:               ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i139, %bb.nf
  %i.bcq = load ptr, ptr %39, align 8, !tbaa !60, !noalias !456 ; 2 uses
  %i.bcr = icmp eq ptr %i.bcq, null
  br i1 %i.bcr, label %bb.no, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i127, !prof !63

bb.no:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i126
  %i.bcs = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !91, !noalias !456 ; 8 uses
  %.not.i.i.i.i.i7.i128 = icmp eq ptr %i.bct, null
  br i1 %.not.i.i.i.i.i7.i128, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i132, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 8 ; 4 uses
  %i.bcv = load atomic i64, ptr %i.bcu acquire, align 8 ; 2 uses
  %i.bcw = icmp eq i64 %i.bcv, 4294967297
  %i.bcx = trunc i64 %i.bcv to i32                ; 2 uses
  br i1 %i.bcw, label %bb.nq, label %bb.nr

bb.nq:                                            ; preds = %bb.np
  store i32 0, ptr %i.bcu, align 8, !tbaa !80
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bct, i64 12
  store i32 0, ptr %i.bcy, align 4, !tbaa !87
  %i.bcz = load ptr, ptr %i.bct, align 8, !tbaa !88
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcz, i64 16
  %i.bdb = load ptr, ptr %i.bda, align 8
  call void %i.bdb(ptr noundef nonnull align 8 dereferenceable(16) %i.bct) #19, !inline_history !468
  %i.bdc = load ptr, ptr %i.bct, align 8, !tbaa !88
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 24
  %i.bde = load ptr, ptr %i.bdd, align 8
  call void %i.bde(ptr noundef nonnull align 8 dereferenceable(16) %i.bct) #19, !inline_history !468
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i132

end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_116NullArrayFactory5VisitERKNS_9UnionTypeE:bb.a
  %i.ii = load ptr, ptr %6, align 8, !tbaa !60
  %i.ij = icmp eq ptr %i.ii, null                 ; 2 uses
  br i1 %i.ij, label %bb.bo, label %bb.bm, !prof !63

bb.bm:                                            ; preds = %bb.bl
  store ptr null, ptr %0, align 8, !tbaa !60
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit73 unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.cd

bb.bo:                                            ; preds = %bb.bl
  %i.il = load <2 x ptr>, ptr %i.hv, align 8, !tbaa !93, !noalias !2221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i8 0, i64 16, i1 false)
  %i.im = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !589
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !91 ; 8 uses
  store <2 x ptr> %i.il, ptr %i.ip, align 8, !tbaa !93
  %.not.i.i.i.i74 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i74, label %_ZN5arrow6StatusC2ERKS0_.exit73, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.is, align 8, !tbaa !80
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 0, ptr %i.iw, align 4, !tbaa !87
  %i.ix = load ptr, ptr %i.ir, align 8, !tbaa !88
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #19, !inline_history !1294
  %i.ja = load ptr, ptr %i.ir, align 8, !tbaa !88
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #19, !inline_history !1294
  br label %_ZN5arrow6StatusC2ERKS0_.exit73

bb.br:                                            ; preds = %bb.bp
  %i.jd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i75 = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i.i.i75, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76

bb.bt:                                            ; preds = %bb.br
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i.i.i77 = phi i32 [ %i.iv, %bb.bs ], [ %i.jf, %bb.bt ]
  %i.jg = icmp eq i32 %.0.i.i.i.i.i.i77, 1
  br i1 %i.jg, label %bb.bu, label %_ZN5arrow6StatusC2ERKS0_.exit73, !prof !96

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #19
  br label %_ZN5arrow6StatusC2ERKS0_.exit73

_ZN5arrow6StatusC2ERKS0_.exit73:                  ; preds = %bb.bo, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i76, %bb.bu, %bb.bm
  %i.jh = load ptr, ptr %6, align 8, !tbaa !60    ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.bv, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !63

bb.bv:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit73
  %i.jj = load ptr, ptr %i.hw, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i82 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i.i82, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 4 uses
  %i.jl = load atomic i64, ptr %i.jk acquire, align 8 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 4294967297
  %i.jn = trunc i64 %i.jl to i32                  ; 2 uses
  br i1 %i.jm, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store i32 0, ptr %i.jk, align 8, !tbaa !80
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %i.jo, align 4, !tbaa !87
  %i.jp = load ptr, ptr %i.jj, align 8, !tbaa !88
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #19, !inline_history !1254
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !88
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #19, !inline_history !1254
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.by:                                            ; preds = %bb.bw
  %i.jv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i = icmp eq i8 %i.jv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jw = add nsw i32 %i.jn, -1
  store i32 %i.jw, ptr %i.jk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  %i.jx = atomicrmw volatile add ptr %i.jk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.jn, %bb.bz ], [ %i.jx, %bb.ca ]
  %i.jy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.jy, label %bb.cb, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !96

bb.cb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.cb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bx
  %.pr.i.pr = load ptr, ptr %6, align 8, !tbaa !60 ; 2 uses
  %.not.i.i83 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i83, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !158

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit73
  %i.jz = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.jh, %_ZN5arrow6StatusC2ERKS0_.exit73 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !64, !range !74, !noundef !75
  %i.kc = trunc nuw i8 %i.kb to i1
  br i1 %i.kc, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %bb.bv, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %i.ij, label %bb.bk, label %.loopexit

.critedge:                                        ; preds = %bb.bk, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit71
  store ptr null, ptr %0, align 8, !tbaa !60, !alias.scope !2226
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, %.critedge, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  ret void

bb.cd:                                            ; preds = %bb.bn, %bb.ao
  %.pn33.pn = phi { ptr, i32 } [ %i.ik, %bb.bn ], [ %.pn31, %bb.ao ]
  resume { ptr, i32 } %.pn33.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1291
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1292 ; 5 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <2 x ptr>, ptr %3, align 8, !tbaa !93 ; 15 uses
  %i.j = extractelement <2 x ptr> %i.i, i64 1     ; 16 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, null        ; 5 uses
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1375 ; 15 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %.fr193 = freeze i64 %i.s                       ; 3 uses
  %i.t = ashr i64 %.fr193, 4                      ; 3 uses
  %i.u = icmp ugt i64 %i.t, %2
  br i1 %i.u, label %bb.g, label %bb.y

bb.g:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %.neg = mul i64 %2, -16                         ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.p, i64 %.neg ; 4 uses
  %i.w = icmp eq i64 %.neg, 0
  br i1 %i.w, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.x = add i64 %2, 1152921504606846975
  %i.y = and i64 %i.x, 1152921504606846975
  %xtraiter187 = and i64 %2, 3                    ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.prol ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter189 = phi i64 [ %prol.iter189.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !91
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.prol, i64 8
  %i.ab = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i.prol, align 8, !tbaa !93
  store ptr null, ptr %i.aa, align 8, !tbaa !91
  store <2 x ptr> %i.ab, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !93
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.prol, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter189.next = add i64 %prol.iter189, 1   ; 2 uses
  %prol.iter189.cmp.not = icmp eq i64 %prol.iter189.next, %xtraiter187
  br i1 %prol.iter189.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2229

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.04.07.i.i.i.i.i.unr = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %i.ae = icmp samesign ult i64 %i.y, 3
  br i1 %i.ae, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !91
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.ah = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !93
  store ptr null, ptr %i.ag, align 8, !tbaa !91
  store <2 x ptr> %i.ah, ptr %.08.i.i.i.i.i, align 8, !tbaa !93
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !126
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  store ptr null, ptr %i.ak, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24
  %i.am = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !93
  store ptr null, ptr %i.al, align 8, !tbaa !91
  store <2 x ptr> %i.am, ptr %i.aj, align 8, !tbaa !93
  store ptr null, ptr %i.ai, align 8, !tbaa !126
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store ptr null, ptr %i.ap, align 8, !tbaa !91
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 40
  %i.ar = load <2 x ptr>, ptr %i.an, align 8, !tbaa !93
  store ptr null, ptr %i.aq, align 8, !tbaa !91
  store <2 x ptr> %i.ar, ptr %i.ao, align 8, !tbaa !93
  store ptr null, ptr %i.an, align 8, !tbaa !126
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store ptr null, ptr %i.au, align 8, !tbaa !91
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 56
  %i.aw = load <2 x ptr>, ptr %i.as, align 8, !tbaa !93
  store ptr null, ptr %i.av, align 8, !tbaa !91
  store <2 x ptr> %i.aw, ptr %i.at, align 8, !tbaa !93
  store ptr null, ptr %i.as, align 8, !tbaa !126
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 64 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.az = icmp eq ptr %i.ax, %i.p
  br i1 %i.az, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2230

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.g
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %2
  store ptr %i.ba, ptr %i.c, align 8, !tbaa !1292
  %i.bb = ptrtoint ptr %i.v to i64
  %i.bc = sub i64 %i.bb, %i.r
  %i.bd = ashr exact i64 %i.bc, 4                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i69:                               ; preds = %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.bd, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bf, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i ], [ %i.v, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ]
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bi = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !91 ; 8 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !93
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i69
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bk, align 8, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !87
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19, !inline_history !2231
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !88
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19, !inline_history !2231
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.k ], [ %i.bx, %bb.l ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.m, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, !prof !96

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #19
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i.i.i69
  %i.bz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ca = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i69, label %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit, !llvm.loop !2232

_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %.idx = shl nuw nsw i64 %2, 4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.cd = extractelement <2 x ptr> %i.i, i64 0
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i, %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit
  %.06.i.i.i = phi ptr [ %1, %_ZSt13move_backwardIPSt10shared_ptrIN5arrow6BufferEES4_ET0_T_S6_S5_.exit ], [ %i.da, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i ] ; 3 uses
  store ptr %i.cd, ptr %.06.i.i.i, align 8, !tbaa !126
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i70 = icmp eq ptr %i.j, %i.cf
  br i1 %.not.i.i.i.i.i.i70, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cg, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cc, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.cj = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !91
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.ck = phi ptr [ %i.cf, %bb.o ], [ %i.cf, %bb.q ], [ %.pr.pre.i.i.i.i.i.i, %bb.r ] ; 8 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.cl, align 8, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !87
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !88
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  tail call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #19, !inline_history !2233
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !88
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  tail call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #19, !inline_history !2233
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i9.i.i.i.i.i.i = icmp eq i8 %i.cw, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.co, %bb.v ], [ %i.cy, %bb.w ]
  %i.cz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.cz, label %bb.x, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i, !prof !96

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.t, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i
  store ptr %i.j, ptr %i.ce, align 8, !tbaa !91
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i, %bb.n
  %i.da = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, %i.cb
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit, label %bb.n, !llvm.loop !2234

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %i.db = sub nuw i64 %2, %i.t                    ; 6 uses
  %.not7.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 9 uses
  br i1 %.not.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader, label %.lr.ph.i.i.i.i.split.prol

.lr.ph.i.i.i.i.split.prol:                        ; preds = %.lr.ph.i.i.i.i
  store <2 x ptr> %i.i, ptr %i.p, align 8, !tbaa !93
  %i.dd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i71.prol = icmp eq i8 %i.dd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71.prol, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.split.prol
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !3
  br label %.lr.ph.i.i.i.i.split.prol.loopexit

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.split.prol
  %i.dg = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4 ; 0 uses
  br label %.lr.ph.i.i.i.i.split.prol.loopexit

.lr.ph.i.i.i.i.split.prol.loopexit:               ; preds = %bb.aa, %bb.z
  %4 = add i64 %i.db, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.dh = icmp eq i64 %i.db, 1
  br i1 %i.dh, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader: ; preds = %.lr.ph.i.i.i.i
  %xtraiter185 = and i64 %i.db, 7                 ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader
  %i.di = insertelement <2 x ptr> %i.i, ptr null, i64 1
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader
  %.09.i.i.i.i.us.prol = phi ptr [ %i.dk, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ %i.p, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ] ; 2 uses
  %.068.i.i.i.i.us.prol = phi i64 [ %i.dj, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ %i.db, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ], [ 0, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.preheader ]
  store <2 x ptr> %i.di, ptr %.09.i.i.i.i.us.prol, align 8, !tbaa !93
  %i.dj = add i64 %.068.i.i.i.i.us.prol, -1       ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter185
  br i1 %prol.iter.cmp.not, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol, !llvm.loop !2235

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader
  %.lcssa182.unr = phi ptr [ poison, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader ], [ %i.dk, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ]
  %.09.i.i.i.i.us.unr = phi ptr [ %i.p, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader ], [ %i.dk, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ]
  %.068.i.i.i.i.us.unr = phi i64 [ %i.db, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader ], [ %i.dj, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol ]
  %i.dl = sub i64 %i.t, %2
  %i.dm = icmp ugt i64 %i.dl, -8
  br i1 %i.dm, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit
  %i.dn = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.do = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.dp = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.dq = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.dr = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.ds = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.dt = insertelement <2 x ptr> %i.i, ptr null, i64 1
  %i.du = insertelement <2 x ptr> %i.i, ptr null, i64 1
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new
  %.09.i.i.i.i.us = phi ptr [ %.09.i.i.i.i.us.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new ], [ %i.ed, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us ] ; 9 uses
  %.068.i.i.i.i.us = phi i64 [ %.068.i.i.i.i.us.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.preheader.new ], [ %i.ec, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us ]
  store <2 x ptr> %i.dn, ptr %.09.i.i.i.i.us, align 8, !tbaa !93
  %i.dv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 16
  store <2 x ptr> %i.do, ptr %i.dv, align 8, !tbaa !93
  %i.dw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 32
  store <2 x ptr> %i.dp, ptr %i.dw, align 8, !tbaa !93
  %i.dx = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 48
  store <2 x ptr> %i.dq, ptr %i.dx, align 8, !tbaa !93
  %i.dy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 64
  store <2 x ptr> %i.dr, ptr %i.dy, align 8, !tbaa !93
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 80
  store <2 x ptr> %i.ds, ptr %i.dz, align 8, !tbaa !93
  %i.ea = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 96
  store <2 x ptr> %i.dt, ptr %i.ea, align 8, !tbaa !93
  %i.eb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 112
  store <2 x ptr> %i.du, ptr %i.eb, align 8, !tbaa !93
  %i.ec = add i64 %.068.i.i.i.i.us, -8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.us, i64 128 ; 2 uses
  %.not.i.i.i.i.us.7 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i.i.us.7, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us, !llvm.loop !2236

.lr.ph.i.i.i.i.split:                             ; preds = %.lr.ph.i.i.i.i.split.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1
  %.09.i.i.i.i = phi ptr [ %i.eo, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1 ], [ %5, %.lr.ph.i.i.i.i.split.prol.loopexit ] ; 3 uses
  %.068.i.i.i.i = phi i64 [ %i.en, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1 ], [ %4, %.lr.ph.i.i.i.i.split.prol.loopexit ]
  store <2 x ptr> %i.i, ptr %.09.i.i.i.i, align 8, !tbaa !93
  %i.ee = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i71 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.split
  %i.ef = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.dc, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.split
  %i.eh = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %i.ei = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16
  store <2 x ptr> %i.i, ptr %i.ei, align 8, !tbaa !93
  %i.ej = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i.i.i71.1 = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i71.1, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %i.ek = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.el = add nsw i32 %i.ek, 1
  store i32 %i.el, ptr %i.dc, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1

bb.ae:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %i.em = atomicrmw volatile add ptr %i.dc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1: ; preds = %bb.ae, %bb.ad
  %i.en = add i64 %.068.i.i.i.i, -2               ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i.i.1, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split, !llvm.loop !2236

_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.split.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.y ], [ %i.ed, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us ], [ %.lcssa182.unr, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit ], [ %5, %.lr.ph.i.i.i.i.split.prol.loopexit ], [ %i.eo, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.1 ] ; 4 uses
  store ptr %.0.lcssa.i.i.i.i, ptr %i.c, align 8, !tbaa !1292
  %i.ep = icmp eq ptr %1, %i.p
  br i1 %i.ep, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i72

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.fr193
  store ptr %i.eq, ptr %i.c, align 8, !tbaa !1292
  br label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit

.lr.ph.i.i.i.i.i72:                               ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, %.lr.ph.i.i.i.i.i72
  %.08.i.i.i.i.i73 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i72 ], [ %.0.lcssa.i.i.i.i, %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit ] ; 3 uses
  %.sroa.04.07.i.i.i.i.i74 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i.i72 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i73, i64 8
  store ptr null, ptr %i.er, align 8, !tbaa !91
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i74, i64 8
  %i.et = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i74, align 8, !tbaa !93
  store ptr null, ptr %i.es, align 8, !tbaa !91
  store <2 x ptr> %i.et, ptr %.08.i.i.i.i.i73, align 8, !tbaa !93
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i74, align 8, !tbaa !126
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i74, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i73, i64 16
  %i.ew = icmp eq ptr %i.eu, %i.p
  br i1 %i.ew, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i72, !llvm.loop !2230

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i.i.i72
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.fr193
  store ptr %i.ex, ptr %i.c, align 8, !tbaa !1292
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.ez = extractelement <2 x ptr> %i.i, i64 0
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89, %.lr.ph.i.i.i78
  %.06.i.i.i79 = phi ptr [ %1, %.lr.ph.i.i.i78 ], [ %i.fw, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89 ] ; 3 uses
  store ptr %i.ez, ptr %.06.i.i.i79, align 8, !tbaa !126
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 8 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !91 ; 3 uses
  %.not.i.i.i.i.i.i80 = icmp eq ptr %i.j, %i.fb
  br i1 %.not.i.i.i.i.i.i80, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i.i.i82 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i.i.i.i.i82, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fd = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.ey, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83

bb.aj:                                            ; preds = %bb.ah
  %i.ff = atomicrmw volatile add ptr %i.ey, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i91 = load ptr, ptr %i.fa, align 8, !tbaa !91
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.fg = phi ptr [ %i.fb, %bb.ag ], [ %i.fb, %bb.ai ], [ %.pr.pre.i.i.i.i.i.i91, %bb.aj ] ; 8 uses
  %.not8.i.i.i.i.i.i84 = icmp eq ptr %i.fg, null
  br i1 %.not8.i.i.i.i.i.i84, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 4 uses
  %i.fi = load atomic i64, ptr %i.fh acquire, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 4294967297
  %i.fk = trunc i64 %i.fi to i32                  ; 2 uses
  br i1 %i.fj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.fh, align 8, !tbaa !80
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !87
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19, !inline_history !2233
  %i.fp = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  tail call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19, !inline_history !2233
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88

bb.am:                                            ; preds = %bb.ak
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i9.i.i.i.i.i.i85 = icmp eq i8 %i.fs, 0
  br i1 %.not.i9.i.i.i.i.i.i85, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ft = add nsw i32 %i.fk, -1
  store i32 %i.ft, ptr %i.fh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86

bb.ao:                                            ; preds = %bb.am
  %i.fu = atomicrmw volatile add ptr %i.fh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i.i87 = phi i32 [ %i.fk, %bb.an ], [ %i.fu, %bb.ao ]
  %i.fv = icmp eq i32 %.0.i.i.i.i.i.i.i.i87, 1
  br i1 %i.fv, label %bb.ap, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88, !prof !96

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fg) #19
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i86, %bb.al, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i83
  store ptr %i.j, ptr %i.fa, align 8, !tbaa !91
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i88, %bb.af
  %i.fw = getelementptr inbounds nuw i8, ptr %.06.i.i.i79, i64 16 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.fw, %i.p
  br i1 %.not.i.i.i90, label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit, label %bb.af, !llvm.loop !2234

_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i89, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i.i.i, %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.fy = load atomic i64, ptr %i.fx acquire, align 8 ; 2 uses
  %i.fz = icmp eq i64 %i.fy, 4294967297
  %i.ga = trunc i64 %i.fy to i32                  ; 2 uses
  br i1 %i.fz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.fx, align 8, !tbaa !80
  %i.gb = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.gb, align 4, !tbaa !87
  %i.gc = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #19, !inline_history !2237
  %i.gf = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8
  tail call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #19, !inline_history !2237
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.gi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i.i.i.i94 = icmp eq i8 %i.gi, 0
  br i1 %.not.i.i.i.i.i94, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gj = add nsw i32 %i.ga, -1
  store i32 %i.gj, ptr %i.fx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.gk = atomicrmw volatile add ptr %i.fx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i = phi i32 [ %i.ga, %bb.at ], [ %i.gk, %bb.au ]
  %i.gl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gl, label %bb.av, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit, !prof !96

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j) #19
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueD2Ev.exit

bb.aw:                                            ; preds = %bb.b
  %i.gm = load ptr, ptr %0, align 8, !tbaa !122   ; 7 uses
  %i.gn = ptrtoint ptr %i.gm to i64               ; 3 uses
  %i.go = sub i64 %i.f, %i.gn
  %i.gp = ashr exact i64 %i.go, 4                 ; 4 uses
  %i.gq = sub nsw i64 576460752303423487, %i.gp
  %i.gr = icmp ult i64 %i.gq, %2
  br i1 %i.gr, label %bb.ax, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.aw
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 %2)
  %i.gs = add nsw i64 %.sroa.speculated.i, %i.gp  ; 2 uses
  %i.gt = icmp ult i64 %i.gs, %i.gp
  %i.gu = tail call i64 @llvm.umin.i64(i64 %i.gs, i64 576460752303423487)
  %i.gv = select i1 %i.gt, i64 576460752303423487, i64 %i.gu ; 3 uses
  %i.gw = ptrtoint ptr %1 to i64
  %i.gx = sub i64 %i.gw, %i.gn
  %.not.i = icmp eq i64 %i.gv, 0
  br i1 %.not.i, label %.lr.ph.i.i.i.i96, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.gy = shl nuw nsw i64 %i.gv, 4
  %i.gz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #20
  br label %.lr.ph.i.i.i.i96

.lr.ph.i.i.i.i96:                                 ; preds = %bb.ay, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ha = phi ptr [ %i.gz, %bb.ay ], [ null, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gx ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !91 ; 2 uses
  %i.he = icmp eq ptr %i.hd, null
  br i1 %i.he, label %.lr.ph.i.i.i.i96.split.us, label %.lr.ph.i.i.i.i96.split

end_hunk_1
