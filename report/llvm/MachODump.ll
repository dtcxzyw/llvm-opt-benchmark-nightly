Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachODump?download=true
inline.NumInlined: 10905
inline.NumDeleted: 3317
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL12ProcessMachON4llvm9StringRefEPNS_6object15MachOObjectFileES0_S0_:bb.a

bb.ud:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit52.i
  %i.dlz = load ptr, ptr %62, align 8, !tbaa !107 ; 3 uses
  %.not.i.i54.i = icmp eq ptr %i.dlz, null
  br i1 %.not.i.i54.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit56.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i55.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i55.i: ; preds = %bb.ud
  %i.dma = load ptr, ptr %i.dlz, align 8, !tbaa !81
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dma, i64 8
  %i.dmc = load ptr, ptr %i.dmb, align 8
  call void %i.dmc(ptr noundef nonnull align 8 dereferenceable(8) %i.dlz) #27, !inline_history !978
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit56.i

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit56.i:   ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i55.i, %bb.ud, %_ZN4llvm11raw_ostreamlsEPKc.exit52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27
  br label %_ZL28DumpInfoPlistSectionContentsN4llvm9StringRefEPNS_6object15MachOObjectFileE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread20.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit31.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i221, %bb.tp
  %i.dmd = load i8, ptr %i.dhe, align 8
  %i.dme = trunc i8 %i.dmd to i1
  br i1 %i.dme, label %bb.ue, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit60.i

bb.ue:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread20.i
  %i.dmf = load ptr, ptr %62, align 8, !tbaa !107 ; 3 uses
  %.not.i.i58.i = icmp eq ptr %i.dmf, null
  br i1 %.not.i.i58.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit60.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i59.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i59.i: ; preds = %bb.ue
  %i.dmg = load ptr, ptr %i.dmf, align 8, !tbaa !81
  %i.dmh = getelementptr inbounds nuw i8, ptr %i.dmg, i64 8
  %i.dmi = load ptr, ptr %i.dmh, align 8
  call void %i.dmi(ptr noundef nonnull align 8 dereferenceable(8) %i.dmf) #27, !inline_history !978
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit60.i

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit60.i:   ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i59.i, %bb.ue, %_ZN4llvmeqENS_9StringRefES0_.exit.thread20.i
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #27
  %i.dmj = load ptr, ptr %i.dhc, align 8, !tbaa !112 ; 2 uses
  %i.dmk = load ptr, ptr %i.dmj, align 8, !tbaa !81
  %i.dml = getelementptr inbounds nuw i8, ptr %i.dmk, i64 136
  %i.dmm = load ptr, ptr %i.dml, align 8
  call void %i.dmm(ptr noundef nonnull align 8 dereferenceable(48) %i.dmj, ptr noundef nonnull align 8 dereferenceable(16) %61) #27, !inline_history !979
  %i.dmn = load ptr, ptr %i.dhc, align 8, !tbaa !112 ; 2 uses
  %i.dmo = icmp ne ptr %i.dmn, %i.dhb
  %lhsv.i.i.i.i.i218 = load i64, ptr %61, align 8 ; 2 uses
  %.not.i.i.i.i.i219 = icmp ne i64 %lhsv.i.i.i.i.i218, %i.dha
  %.not2.i.i220 = select i1 %i.dmo, i1 true, i1 %.not.i.i.i.i.i219
  br i1 %.not2.i.i220, label %bb.tm, label %_ZL28DumpInfoPlistSectionContentsN4llvm9StringRefEPNS_6object15MachOObjectFileE.exit

_ZL28DumpInfoPlistSectionContentsN4llvm9StringRefEPNS_6object15MachOObjectFileE.exit: ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit60.i, %bb.tl, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit56.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %63)
  br label %bb.uf

bb.uf:                                            ; preds = %_ZL28DumpInfoPlistSectionContentsN4llvm9StringRefEPNS_6object15MachOObjectFileE.exit, %bb.tk
  %i.dmp = load i8, ptr @_ZN4llvm7objdump8DyldInfoE, align 1, !tbaa !69, !range !141, !noundef !142
  %i.dmq = trunc nuw i8 %i.dmp to i1
  br i1 %i.dmq, label %bb.ug, label %bb.xo

bb.ug:                                            ; preds = %bb.uf
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  call void @llvm.lifetime.start.p0(ptr nonnull %52)
  call void @llvm.lifetime.start.p0(ptr nonnull %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  store ptr null, ptr %30, align 8, !tbaa !103
  %i.dmr = load ptr, ptr %2, align 8, !tbaa !81
  %i.dms = getelementptr inbounds nuw i8, ptr %i.dmr, i64 376
  %i.dmt = load ptr, ptr %i.dms, align 8
  %i.dmu = call noundef zeroext i8 %i.dmt(ptr noundef nonnull align 8 dereferenceable(360) %2) #27, !inline_history !980
  %i.dmv = zext i8 %i.dmu to i32
  %i.dmw = shl nuw nsw i32 %i.dmv, 1
  %i.dmx = add nuw nsw i32 %i.dmw, 2              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  call void @_ZN4llvm6object15MachOObjectFile10fixupTableERNS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.835") align 8 %31, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %30) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %32, ptr noundef nonnull align 8 dereferenceable(352) %31, i64 96, i1 false), !tbaa.struct !1132
  %i.dmy = getelementptr inbounds nuw i8, ptr %32, i64 96 ; 2 uses
  %i.dmz = getelementptr inbounds nuw i8, ptr %31, i64 96 ; 2 uses
  %i.dna = getelementptr inbounds nuw i8, ptr %31, i64 104 ; 2 uses
  %i.dnb = load ptr, ptr %i.dna, align 8, !tbaa !1133, !noalias !1131 ; 3 uses
  %i.dnc = load ptr, ptr %i.dmz, align 8, !tbaa !292, !noalias !1131 ; 3 uses
  %i.dnd = ptrtoint ptr %i.dnb to i64
  %i.dne = ptrtoint ptr %i.dnc to i64
  %i.dnf = sub i64 %i.dnd, %i.dne                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i235 = icmp eq ptr %i.dnb, %i.dnc
  br i1 %.not.i.i.i.i.i.i.i.i235, label %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.dng = sdiv exact i64 %i.dnf, 40
  %i.dnh = icmp ugt i64 %i.dng, 230584300921369395
  br i1 %i.dnh, label %bb.ui, label %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, !prof !231

bb.ui:                                            ; preds = %bb.uh
  call void @_ZSt28__throw_bad_array_new_lengthv() #29, !noalias !1131
  unreachable

_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.uh
  %i.dni = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dnf) #28, !noalias !1131
  %.pre.i.i236 = load ptr, ptr %i.dmz, align 8, !tbaa !1134, !noalias !1131
  %.pre1.i.i = load ptr, ptr %i.dna, align 8, !tbaa !1134, !noalias !1131
  br label %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i

_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i, %bb.ug
  %i.dnj = phi ptr [ %.pre1.i.i, %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.dnb, %bb.ug ] ; 2 uses
  %i.dnk = phi ptr [ %.pre.i.i236, %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ %i.dnc, %bb.ug ] ; 2 uses
  %i.dnl = phi ptr [ %i.dni, %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i ], [ null, %bb.ug ] ; 4 uses
  store ptr %i.dnl, ptr %i.dmy, align 8, !tbaa !292, !alias.scope !1131
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dnl, i64 %i.dnf
  %i.dnn = getelementptr inbounds nuw i8, ptr %32, i64 112 ; 2 uses
  store ptr %i.dnm, ptr %i.dnn, align 8, !tbaa !293, !alias.scope !1131
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dnk, %i.dnj
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dnp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dnl, %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dno, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.dnk, %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 40, i1 false), !tbaa.struct !1135, !noalias !1131
  %i.dno = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.dnp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dno, %i.dnj
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE5beginEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !983

_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE5beginEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dnl, %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i.i ], [ %i.dnp, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.dnq = getelementptr inbounds nuw i8, ptr %32, i64 104
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i, ptr %i.dnq, align 8, !tbaa !1133, !alias.scope !1131
  %i.dnr = getelementptr inbounds nuw i8, ptr %32, i64 120 ; 3 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %31, i64 120
  call void @_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.dnr, ptr noundef nonnull align 8 dereferenceable(24) %i.dns)
  %i.dnt = getelementptr inbounds nuw i8, ptr %32, i64 144
  %i.dnu = getelementptr inbounds nuw i8, ptr %31, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dnt, ptr noundef nonnull align 8 dereferenceable(32) %i.dnu, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  %i.dnv = getelementptr inbounds nuw i8, ptr %31, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %33, ptr noundef nonnull align 8 dereferenceable(176) %i.dnv, i64 96, i1 false), !tbaa.struct !1132
  %i.dnw = getelementptr inbounds nuw i8, ptr %33, i64 96 ; 2 uses
  %i.dnx = getelementptr inbounds nuw i8, ptr %31, i64 272 ; 2 uses
  %i.dny = getelementptr inbounds nuw i8, ptr %31, i64 280 ; 2 uses
  %i.dnz = load ptr, ptr %i.dny, align 8, !tbaa !1133, !noalias !1136 ; 3 uses
  %i.doa = load ptr, ptr %i.dnx, align 8, !tbaa !292, !noalias !1136 ; 3 uses
  %i.dob = ptrtoint ptr %i.dnz to i64
  %i.doc = ptrtoint ptr %i.doa to i64
  %i.dod = sub i64 %i.dob, %i.doc                 ; 3 uses
  %.not.i.i.i.i.i.i.i34.i = icmp eq ptr %i.dnz, %i.doa
  br i1 %.not.i.i.i.i.i.i.i34.i, label %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i38.i, label %bb.uj

bb.uj:                                            ; preds = %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE5beginEv.exit.i
  %i.doe = sdiv exact i64 %i.dod, 40
  %i.dof = icmp ugt i64 %i.doe, 230584300921369395
  br i1 %i.dof, label %bb.uk, label %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i35.i, !prof !231

bb.uk:                                            ; preds = %bb.uj
  call void @_ZSt28__throw_bad_array_new_lengthv() #29, !noalias !1136
  unreachable

_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i35.i: ; preds = %bb.uj
  %i.dog = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dod) #28, !noalias !1136
  %.pre.i36.i = load ptr, ptr %i.dnx, align 8, !tbaa !1134, !noalias !1136
  %.pre1.i37.i = load ptr, ptr %i.dny, align 8, !tbaa !1134, !noalias !1136
  br label %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i38.i

_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i38.i: ; preds = %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i35.i, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE5beginEv.exit.i
  %i.doh = phi ptr [ %.pre1.i37.i, %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i35.i ], [ %i.dnz, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE5beginEv.exit.i ] ; 2 uses
  %i.doi = phi ptr [ %.pre.i36.i, %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i35.i ], [ %i.doa, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE5beginEv.exit.i ] ; 2 uses
  %i.doj = phi ptr [ %i.dog, %_ZNSt15__new_allocatorIN4llvm6object18ChainedFixupTargetEE8allocateEmPKv.exit.i.i.i.i.i.i.i35.i ], [ null, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE5beginEv.exit.i ] ; 4 uses
  store ptr %i.doj, ptr %i.dnw, align 8, !tbaa !292, !alias.scope !1136
  %i.dok = getelementptr inbounds nuw i8, ptr %i.doj, i64 %i.dod
  %i.dol = getelementptr inbounds nuw i8, ptr %33, i64 112 ; 2 uses
  store ptr %i.dok, ptr %i.dol, align 8, !tbaa !293, !alias.scope !1136
  %.not7.i.i.i.i.i.i.i.i39.i = icmp eq ptr %i.doi, %i.doh
  br i1 %.not7.i.i.i.i.i.i.i.i39.i, label %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i40.i

.lr.ph.i.i.i.i.i.i.i.i40.i:                       ; preds = %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i38.i, %.lr.ph.i.i.i.i.i.i.i.i40.i
  %.09.i.i.i.i.i.i.i.i41.i = phi ptr [ %i.don, %.lr.ph.i.i.i.i.i.i.i.i40.i ], [ %i.doj, %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i38.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i42.i = phi ptr [ %i.dom, %.lr.ph.i.i.i.i.i.i.i.i40.i ], [ %i.doi, %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i38.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i.i.i.i41.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i.i.i.i42.i, i64 40, i1 false), !tbaa.struct !1135, !noalias !1136
  %i.dom = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i42.i, i64 40 ; 2 uses
  %i.don = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i41.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i43.i = icmp eq ptr %i.dom, %i.doh
  br i1 %.not.i.i.i.i.i.i.i.i43.i, label %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i40.i, !llvm.loop !983

_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i40.i, %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i38.i
  %.0.lcssa.i.i.i.i.i.i.i.i44.i = phi ptr [ %i.doj, %_ZNSt12_Vector_baseIN4llvm6object18ChainedFixupTargetESaIS2_EEC2EmRKS3_.exit.i.i.i.i38.i ], [ %i.don, %.lr.ph.i.i.i.i.i.i.i.i40.i ]
  %i.doo = getelementptr inbounds nuw i8, ptr %33, i64 104
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i44.i, ptr %i.doo, align 8, !tbaa !1133, !alias.scope !1136
  %i.dop = getelementptr inbounds nuw i8, ptr %33, i64 120 ; 3 uses
  %i.doq = getelementptr inbounds nuw i8, ptr %31, i64 296
  call void @_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.dop, ptr noundef nonnull align 8 dereferenceable(24) %i.doq)
  %i.dor = getelementptr inbounds nuw i8, ptr %33, i64 144
  %i.dos = getelementptr inbounds nuw i8, ptr %31, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dor, ptr noundef nonnull align 8 dereferenceable(32) %i.dos, i64 32, i1 false)
  %i.dot = call noundef zeroext i1 @_ZNK4llvm6object22MachOChainedFixupEntryeqERKS1_(ptr noundef nonnull align 8 dereferenceable(176) %32, ptr noundef nonnull align 8 dereferenceable(176) %33) #27
  br i1 %i.dot, label %._crit_edge.i239, label %.lr.ph.i237

.lr.ph.i237:                                      ; preds = %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i
  %i.dou = getelementptr inbounds nuw i8, ptr %32, i64 160
  br label %bb.ur

._crit_edge.loopexit.i:                           ; preds = %bb.uv
  %191 = trunc i64 %.sroa.speculated235.i to i32
  %i.dov = trunc i64 %.sroa.speculated229.i to i32
  %i.dow = trunc nuw nsw i64 %.sroa.speculated223.i to i32
  br label %._crit_edge.i239

._crit_edge.i239:                                 ; preds = %._crit_edge.loopexit.i, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i
  %.0266.lcssa.i = phi i64 [ 5, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i ], [ %.1267.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0265.lcssa.i = phi i64 [ 6, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i ], [ %.1.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0264.lcssa.i = phi i32 [ 7, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i ], [ %i.dow, %._crit_edge.loopexit.i ] ; 2 uses
  %.0263.lcssa.i = phi i32 [ 7, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i ], [ %i.dov, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 7, %_ZNK4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEE3endEv.exit.i ], [ %191, %._crit_edge.loopexit.i ] ; 2 uses
  %i.dox = load ptr, ptr %i.dop, align 8, !tbaa !296 ; 3 uses
  %i.doy = getelementptr inbounds nuw i8, ptr %33, i64 128
  %i.doz = load ptr, ptr %i.doy, align 8, !tbaa !297 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.dox, %i.doz
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i240

.lr.ph.i.i.i.i.i.i240:                            ; preds = %._crit_edge.i239, %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.dph, %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i.i ], [ %i.dox, %._crit_edge.i239 ] ; 3 uses
  %i.dpa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.dpb = load ptr, ptr %i.dpa, align 8, !tbaa !300 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dpb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i.i, label %bb.ul

bb.ul:                                            ; preds = %.lr.ph.i.i.i.i.i.i240
  %i.dpc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48
  %i.dpd = load ptr, ptr %i.dpc, align 8, !tbaa !301
  %i.dpe = ptrtoint ptr %i.dpd to i64
  %i.dpf = ptrtoint ptr %i.dpb to i64
  %i.dpg = sub i64 %i.dpe, %i.dpf
  call void @_ZdlPvm(ptr noundef nonnull %i.dpb, i64 noundef %i.dpg) #26
  br label %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ul, %.lr.ph.i.i.i.i.i.i240
  %i.dph = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dph, %i.doz
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i240, !llvm.loop !20

_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.dop, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i.i

_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exitthread-pre-split.i.i.i.i, %._crit_edge.i239
  %i.dpi = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exitthread-pre-split.i.i.i.i ], [ %i.dox, %._crit_edge.i239 ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.dpi, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i.i, label %bb.um

bb.um:                                            ; preds = %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i.i
  %i.dpj = getelementptr inbounds nuw i8, ptr %33, i64 136
  %i.dpk = load ptr, ptr %i.dpj, align 8, !tbaa !302
  %i.dpl = ptrtoint ptr %i.dpk to i64
  %i.dpm = ptrtoint ptr %i.dpi to i64
  %i.dpn = sub i64 %i.dpl, %i.dpm
  call void @_ZdlPvm(ptr noundef nonnull %i.dpi, i64 noundef %i.dpn) #26
  br label %_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i.i

_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.um, %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i.i
  %i.dpo = load ptr, ptr %i.dnw, align 8, !tbaa !292 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.dpo, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit.i, label %bb.un

bb.un:                                            ; preds = %_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i.i
  %i.dpp = load ptr, ptr %i.dol, align 8, !tbaa !293
  %i.dpq = ptrtoint ptr %i.dpp to i64
  %i.dpr = ptrtoint ptr %i.dpo to i64
  %i.dps = sub i64 %i.dpq, %i.dpr
  call void @_ZdlPvm(ptr noundef nonnull %i.dpo, i64 noundef %i.dps) #26
  br label %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit.i

_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit.i: ; preds = %bb.un, %_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  %i.dpt = load ptr, ptr %i.dnr, align 8, !tbaa !296 ; 3 uses
  %i.dpu = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.dpv = load ptr, ptr %i.dpu, align 8, !tbaa !297 ; 2 uses
  %.not4.i.i.i.i.i45.i = icmp eq ptr %i.dpt, %i.dpv
  br i1 %.not4.i.i.i.i.i45.i, label %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i53.i, label %.lr.ph.i.i.i.i.i46.i

.lr.ph.i.i.i.i.i46.i:                             ; preds = %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit.i, %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i49.i
  %.05.i.i.i.i.i47.i = phi ptr [ %i.dqd, %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i49.i ], [ %i.dpt, %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit.i ] ; 3 uses
  %i.dpw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i47.i, i64 32
  %i.dpx = load ptr, ptr %i.dpw, align 8, !tbaa !300 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i48.i = icmp eq ptr %i.dpx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i48.i, label %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i49.i, label %bb.uo

bb.uo:                                            ; preds = %.lr.ph.i.i.i.i.i46.i
  %i.dpy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i47.i, i64 48
  %i.dpz = load ptr, ptr %i.dpy, align 8, !tbaa !301
  %i.dqa = ptrtoint ptr %i.dpz to i64
  %i.dqb = ptrtoint ptr %i.dpx to i64
  %i.dqc = sub i64 %i.dqa, %i.dqb
  call void @_ZdlPvm(ptr noundef nonnull %i.dpx, i64 noundef %i.dqc) #26
  br label %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i49.i

_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i49.i: ; preds = %bb.uo, %.lr.ph.i.i.i.i.i46.i
  %i.dqd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i47.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i50.i = icmp eq ptr %i.dqd, %i.dpv
  br i1 %.not.i.i.i.i.i50.i, label %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exitthread-pre-split.i.i.i51.i, label %.lr.ph.i.i.i.i.i46.i, !llvm.loop !20

_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exitthread-pre-split.i.i.i51.i: ; preds = %_ZSt8_DestroyIN4llvm6object20ChainedFixupsSegmentEEvPT_.exit.i.i.i.i.i49.i
  %.pr.i.i.i52.i = load ptr, ptr %i.dnr, align 8, !tbaa !296
  br label %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i53.i

_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i53.i: ; preds = %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exitthread-pre-split.i.i.i51.i, %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit.i
  %i.dqe = phi ptr [ %.pr.i.i.i52.i, %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exitthread-pre-split.i.i.i51.i ], [ %i.dpt, %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i54.i = icmp eq ptr %i.dqe, null
  br i1 %.not.i.i1.i.i.i54.i, label %_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i55.i, label %bb.up

bb.up:                                            ; preds = %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i53.i
  %i.dqf = getelementptr inbounds nuw i8, ptr %32, i64 136
  %i.dqg = load ptr, ptr %i.dqf, align 8, !tbaa !302
  %i.dqh = ptrtoint ptr %i.dqg to i64
  %i.dqi = ptrtoint ptr %i.dqe to i64
  %i.dqj = sub i64 %i.dqh, %i.dqi
  call void @_ZdlPvm(ptr noundef nonnull %i.dqe, i64 noundef %i.dqj) #26
  br label %_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i55.i

_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i55.i: ; preds = %bb.up, %_ZSt8_DestroyIPN4llvm6object20ChainedFixupsSegmentEEvT_S4_.exit.i.i.i53.i
  %i.dqk = load ptr, ptr %i.dmy, align 8, !tbaa !292 ; 3 uses
  %.not.i.i.i1.i.i56.i = icmp eq ptr %i.dqk, null
  br i1 %.not.i.i.i1.i.i56.i, label %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit57.i, label %bb.uq

bb.uq:                                            ; preds = %_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i55.i
  %i.dql = load ptr, ptr %i.dnn, align 8, !tbaa !293
  %i.dqm = ptrtoint ptr %i.dql to i64
  %i.dqn = ptrtoint ptr %i.dqk to i64
  %i.dqo = sub i64 %i.dqm, %i.dqn
  call void @_ZdlPvm(ptr noundef nonnull %i.dqk, i64 noundef %i.dqo) #26
  br label %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit57.i

_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit57.i: ; preds = %bb.uq, %_ZNSt6vectorIN4llvm6object20ChainedFixupsSegmentESaIS2_EED2Ev.exit.i.i55.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  call void @_ZN4llvm14iterator_rangeINS_6object16content_iteratorINS1_22MachOChainedFixupEntryEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(352) dereferenceable(352) %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.dqp = load ptr, ptr %30, align 8, !tbaa !103 ; 2 uses
  %.not271.i = icmp eq ptr %i.dqp, null
  br i1 %.not271.i, label %bb.uy, label %bb.uw

bb.ur:                                            ; preds = %bb.uv, %.lr.ph.i237
  %.0285.i = phi i64 [ 7, %.lr.ph.i237 ], [ %.sroa.speculated235.i, %bb.uv ]
  %.0263284.i = phi i64 [ 7, %.lr.ph.i237 ], [ %.sroa.speculated229.i, %bb.uv ]
  %.0264283.i = phi i64 [ 7, %.lr.ph.i237 ], [ %.sroa.speculated223.i, %bb.uv ]
  %.0265282.i = phi i64 [ 6, %.lr.ph.i237 ], [ %.1.i, %bb.uv ] ; 2 uses
  %.0266281.i = phi i64 [ 5, %.lr.ph.i237 ], [ %.1267.i, %bb.uv ] ; 2 uses
  %i.dqq = call { ptr, i64 } @_ZNK4llvm6object23MachOAbstractFixupEntry11segmentNameEv(ptr noundef nonnull align 8 dereferenceable(96) %32) #27
  %i.dqr = extractvalue { ptr, i64 } %i.dqq, 1
  %.sroa.speculated235.i = call i64 @llvm.umax.i64(i64 %.0285.i, i64 %i.dqr) ; 2 uses
  %i.dqs = call { ptr, i64 } @_ZNK4llvm6object23MachOAbstractFixupEntry11sectionNameEv(ptr noundef nonnull align 8 dereferenceable(96) %32) #27
  %i.dqt = extractvalue { ptr, i64 } %i.dqs, 1
  %.sroa.speculated229.i = call i64 @llvm.umax.i64(i64 %.0263284.i, i64 %i.dqt) ; 2 uses
  %i.dqu = call noundef i64 @_ZNK4llvm6object23MachOAbstractFixupEntry7addressEv(ptr noundef nonnull align 8 dereferenceable(96) %32) #27 ; 2 uses
  %.not.i.i238 = icmp eq i64 %i.dqu, 0
  br i1 %.not.i.i238, label %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit.i", label %bb.us

bb.us:                                            ; preds = %bb.ur
  %i.dqv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dqu, i1 true) ; 2 uses
  %i.dqw = trunc nuw nsw i64 %i.dqv to i32
  %i.dqx = xor i32 %i.dqw, 63
  %i.dqy = icmp ne i64 %i.dqv, 63                 ; 2 uses
  %.neg.i = sext i1 %i.dqy to i32
  %i.dqz = add nsw i32 %i.dqx, %.neg.i
  %i.dra = lshr i32 %i.dqz, 2
  %i.drb = select i1 %i.dqy, i32 3, i32 2
  %narrow.i = add nuw nsw i32 %i.dra, %i.drb
  %192 = zext nneg i32 %narrow.i to i64
  br label %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit.i"

"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit.i": ; preds = %bb.us, %bb.ur
  %193 = phi i64 [ %192, %bb.us ], [ 3, %bb.ur ]
  %.sroa.speculated223.i = call i64 @llvm.umax.i64(i64 %.0264283.i, i64 %193) ; 2 uses
  %i.drc = load i32, ptr %i.dou, align 8, !tbaa !1146
  %i.drd = icmp eq i32 %i.drc, 0
  br i1 %i.drd, label %bb.ut, label %bb.uv

bb.ut:                                            ; preds = %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit.i"
  %i.dre = call noundef i64 @_ZNK4llvm6object23MachOAbstractFixupEntry6addendEv(ptr noundef nonnull align 8 dereferenceable(96) %32) #27 ; 2 uses
  %.not.i60.i = icmp eq i64 %i.dre, 0
  br i1 %.not.i60.i, label %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit61.i", label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.drf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dre, i1 true) ; 2 uses
  %i.drg = trunc nuw nsw i64 %i.drf to i32
  %i.drh = xor i32 %i.drg, 63
  %i.dri = icmp ne i64 %i.drf, 63                 ; 2 uses
  %.neg292.i = sext i1 %i.dri to i32
  %i.drj = add nsw i32 %i.drh, %.neg292.i
  %i.drk = lshr i32 %i.drj, 2
  %i.drl = select i1 %i.dri, i32 3, i32 2
  %narrow275.i = add nuw nsw i32 %i.drk, %i.drl
  %i.drm = zext nneg i32 %narrow275.i to i64
  br label %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit61.i"

"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit61.i": ; preds = %bb.uu, %bb.ut
  %i.drn = phi i64 [ %i.drm, %bb.uu ], [ 3, %bb.ut ]
  %.sroa.speculated219.i = call i64 @llvm.umax.i64(i64 %.0265282.i, i64 %i.drn)
  %i.dro = call { ptr, i64 } @_ZNK4llvm6object23MachOAbstractFixupEntry10symbolNameEv(ptr noundef nonnull align 8 dereferenceable(96) %32) #27
  %i.drp = extractvalue { ptr, i64 } %i.dro, 1
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %.0266281.i, i64 %i.drp)
  br label %bb.uv

bb.uv:                                            ; preds = %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit61.i", %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit.i"
  %.1267.i = phi i64 [ %.sroa.speculated.i, %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit61.i" ], [ %.0266281.i, %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit.i" ] ; 2 uses
  %.1.i = phi i64 [ %.sroa.speculated219.i, %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit61.i" ], [ %.0265282.i, %"_ZZL13PrintDyldInfoPN4llvm6object15MachOObjectFileEENK3$_0clEm.exit.i" ] ; 2 uses
  call void @_ZN4llvm6object22MachOChainedFixupEntry8moveNextEv(ptr noundef nonnull align 8 dereferenceable(176) %32) #27
  %i.drq = call noundef zeroext i1 @_ZNK4llvm6object22MachOChainedFixupEntryeqERKS1_(ptr noundef nonnull align 8 dereferenceable(176) %32, ptr noundef nonnull align 8 dereferenceable(176) %33) #27
  br i1 %i.drq, label %._crit_edge.loopexit.i, label %bb.ur

bb.uw:                                            ; preds = %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit57.i
  store ptr null, ptr %30, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  store ptr %i.dqp, ptr %28, align 8, !tbaa !103
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %27, ptr nofree noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
  %i.drr = load ptr, ptr %28, align 8, !tbaa !103 ; 3 uses
  %i.drs = icmp eq ptr %i.drr, null
  br i1 %i.drs, label %_ZN4llvm5ErrorD2Ev.exit64.i, label %bb.ux

bb.ux:                                            ; preds = %bb.uw
  %i.drt = load ptr, ptr %i.drr, align 8, !tbaa !81
  %i.dru = getelementptr inbounds nuw i8, ptr %i.drt, i64 8
  %i.drv = load ptr, ptr %i.dru, align 8
  call void %i.drv(ptr noundef nonnull align 8 dereferenceable(8) %i.drr) #27, !inline_history !986
  br label %_ZN4llvm5ErrorD2Ev.exit64.i

_ZN4llvm5ErrorD2Ev.exit64.i:                      ; preds = %bb.ux, %bb.uw
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.uy

bb.uy:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit64.i, %_ZN4llvm6object16content_iteratorINS0_22MachOChainedFixupEntryEED2Ev.exit57.i
  %i.drw = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27 ; 3 uses
  %i.drx = getelementptr inbounds nuw i8, ptr %i.drw, i64 24
  %i.dry = load ptr, ptr %i.drx, align 8, !tbaa !90
  %i.drz = getelementptr inbounds nuw i8, ptr %i.drw, i64 32 ; 3 uses
  %i.dsa = load ptr, ptr %i.drz, align 8, !tbaa !91 ; 2 uses
  %i.dsb = ptrtoint ptr %i.dry to i64
  %i.dsc = ptrtoint ptr %i.dsa to i64
  %i.dsd = sub i64 %i.dsb, %i.dsc
  %i.dse = icmp ult i64 %i.dsd, 18
  br i1 %i.dse, label %bb.uz, label %bb.va

bb.uz:                                            ; preds = %bb.uy
  %i.dsf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.drw, ptr noundef nonnull @.str.307, i64 noundef 18) #27 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i242

bb.va:                                            ; preds = %bb.uy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.dsa, ptr noundef nonnull align 1 dereferenceable(18) @.str.307, i64 18, i1 false)
  %i.dsg = load ptr, ptr %i.drz, align 8, !tbaa !91
  %i.dsh = getelementptr inbounds nuw i8, ptr %i.dsg, i64 18
  store ptr %i.dsh, ptr %i.drz, align 8, !tbaa !91
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i242

_ZN4llvm11raw_ostreamlsEPKc.exit.i242:            ; preds = %bb.va, %bb.uz
  %i.dsi = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #27
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  store ptr @.str.308, ptr %34, align 8, !tbaa !75, !alias.scope !1147
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !72, !alias.scope !1147
  %i.dsj = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i32 %.0.lcssa.i, ptr %i.dsj, align 8, !tbaa !305, !alias.scope !1147
  %i.dsk = getelementptr inbounds nuw i8, ptr %34, i64 20
  store i32 1, ptr %i.dsk, align 4, !tbaa !306, !alias.scope !1147
  %i.dsl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(48) %i.dsi, ptr noundef nonnull align 8 dereferenceable(24) %34) #27 ; 4 uses
  %i.dsm = getelementptr inbounds nuw i8, ptr %i.dsl, i64 32 ; 2 uses
  %i.dsn = load ptr, ptr %i.dsm, align 8, !tbaa !91 ; 3 uses
  %i.dso = getelementptr inbounds nuw i8, ptr %i.dsl, i64 24
  %i.dsp = load ptr, ptr %i.dso, align 8, !tbaa !90
  %.not.i65.i = icmp ult ptr %i.dsn, %i.dsp
  br i1 %.not.i65.i, label %bb.vc, label %bb.vb

bb.vb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i242
  %i.dsq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.dsl, i8 noundef zeroext 32) #27
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.vc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i242
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dsn, i64 1
  store ptr %i.dsr, ptr %i.dsm, align 8, !tbaa !91
  store i8 32, ptr %i.dsn, align 1, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.vc, %bb.vb
  %.0.i.i243 = phi ptr [ %i.dsq, %bb.vb ], [ %i.dsl, %bb.vc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27
  store ptr @.str.309, ptr %35, align 8, !tbaa !75, !alias.scope !1148
  %.sroa.2.0..sroa_idx.i.i66.i = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i66.i, align 8, !tbaa !72, !alias.scope !1148
  %i.dss = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i32 %.0263.lcssa.i, ptr %i.dss, align 8, !tbaa !305, !alias.scope !1148
  %i.dst = getelementptr inbounds nuw i8, ptr %35, i64 20
  store i32 1, ptr %i.dst, align 4, !tbaa !306, !alias.scope !1148
  %i.dsu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i243, ptr noundef nonnull align 8 dereferenceable(24) %35) #27 ; 4 uses
  %i.dsv = getelementptr inbounds nuw i8, ptr %i.dsu, i64 32 ; 2 uses
  %i.dsw = load ptr, ptr %i.dsv, align 8, !tbaa !91 ; 3 uses
  %i.dsx = getelementptr inbounds nuw i8, ptr %i.dsu, i64 24
  %i.dsy = load ptr, ptr %i.dsx, align 8, !tbaa !90
  %.not.i67.i = icmp ult ptr %i.dsw, %i.dsy
  br i1 %.not.i67.i, label %bb.ve, label %bb.vd

bb.vd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.dsz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.dsu, i8 noundef zeroext 32) #27
  br label %_ZN4llvm11raw_ostreamlsEc.exit69.i

bb.ve:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.dta = getelementptr inbounds nuw i8, ptr %i.dsw, i64 1
  store ptr %i.dta, ptr %i.dsv, align 8, !tbaa !91
  store i8 32, ptr %i.dsw, align 1, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEc.exit69.i

_ZN4llvm11raw_ostreamlsEc.exit69.i:               ; preds = %bb.ve, %bb.vd
  %.0.i68.i = phi ptr [ %i.dsz, %bb.vd ], [ %i.dsu, %bb.ve ]
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #27
  store ptr @.str.310, ptr %36, align 8, !tbaa !75, !alias.scope !1149
  %.sroa.2.0..sroa_idx.i.i70.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i70.i, align 8, !tbaa !72, !alias.scope !1149
  %i.dtb = getelementptr inbounds nuw i8, ptr %36, i64 16
  store i32 %.0264.lcssa.i, ptr %i.dtb, align 8, !tbaa !305, !alias.scope !1149
  %i.dtc = getelementptr inbounds nuw i8, ptr %36, i64 20
  store i32 1, ptr %i.dtc, align 4, !tbaa !306, !alias.scope !1149
  %i.dtd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i68.i, ptr noundef nonnull align 8 dereferenceable(24) %36) #27 ; 4 uses
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dtd, i64 32 ; 2 uses
  %i.dtf = load ptr, ptr %i.dte, align 8, !tbaa !91 ; 3 uses
  %i.dtg = getelementptr inbounds nuw i8, ptr %i.dtd, i64 24
  %i.dth = load ptr, ptr %i.dtg, align 8, !tbaa !90
  %.not.i71.i = icmp ult ptr %i.dtf, %i.dth
  br i1 %.not.i71.i, label %bb.vg, label %bb.vf

bb.vf:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit69.i
  %i.dti = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.dtd, i8 noundef zeroext 32) #27
  br label %_ZN4llvm11raw_ostreamlsEc.exit73.i

bb.vg:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit69.i
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dtf, i64 1
  store ptr %i.dtj, ptr %i.dte, align 8, !tbaa !91
  store i8 32, ptr %i.dtf, align 1, !tbaa !65
  br label %_ZN4llvm11raw_ostreamlsEc.exit73.i

_ZN4llvm11raw_ostreamlsEc.exit73.i:               ; preds = %bb.vg, %bb.vf
  %.0.i72.i = phi ptr [ %i.dti, %bb.vf ], [ %i.dtd, %bb.vg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #27
  store ptr @.str.311, ptr %37, align 8, !tbaa !75, !alias.scope !1150
  %.sroa.2.0..sroa_idx.i.i74.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i74.i, align 8, !tbaa !72, !alias.scope !1150
  %i.dtk = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i32 %i.dmx, ptr %i.dtk, align 8, !tbaa !305, !alias.scope !1150
  %i.dtl = getelementptr inbounds nuw i8, ptr %37, i64 20
  store i32 1, ptr %i.dtl, align 4, !tbaa !306, !alias.scope !1150
  %i.dtm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedStringE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i72.i, ptr noundef nonnull align 8 dereferenceable(24) %37) #27 ; 4 uses
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.dtm, i64 24
  %i.dto = load ptr, ptr %i.dtn, align 8, !tbaa !90
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.dtm, i64 32 ; 3 uses
  %i.dtq = load ptr, ptr %i.dtp, align 8, !tbaa !91 ; 2 uses
  %i.dtr = ptrtoint ptr %i.dto to i64
  %i.dts = ptrtoint ptr %i.dtq to i64
  %i.dtt = sub i64 %i.dtr, %i.dts
  %i.dtu = icmp ult i64 %i.dtt, 8
  br i1 %i.dtu, label %bb.vh, label %bb.vi

bb.vh:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit73.i
  %i.dtv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dtm, ptr noundef nonnull @.str.312, i64 noundef 8) #27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77.i

bb.vi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit73.i
  store i64 2314885828519228448, ptr %i.dtq, align 1
  %i.dtw = load ptr, ptr %i.dtp, align 8, !tbaa !91
  %i.dtx = getelementptr inbounds nuw i8, ptr %i.dtw, i64 8
  store ptr %i.dtx, ptr %i.dtp, align 8, !tbaa !91
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit77.i

end_hunk_0
