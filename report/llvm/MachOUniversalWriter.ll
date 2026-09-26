Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOUniversalWriter?download=true
inline.NumInlined: 1554
inline.NumDeleted: 713
begin_hunk_0_@_ZN4llvm6object5Slice6createERKNS0_7ArchiveEPNS_11LLVMContextE:_ZN4llvm5ErrorD2Ev.exit
  %i.ow = load ptr, ptr %i.ou, align 8, !tbaa !21 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %68, i64 32 ; 5 uses
  %i.oy = icmp eq ptr %i.ow, %i.ox
  br i1 %i.oy, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i490

bb.af:                                            ; preds = %bb.ae
  %i.oz = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.pa = load i64, ptr %i.oz, align 8, !tbaa !22 ; 3 uses
  %i.pb = icmp ult i64 %i.pa, 16
  call void @llvm.assume(i1 %i.pb)
  %i.pc = add nuw nsw i64 %i.pa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ov, ptr noundef nonnull align 8 dereferenceable(1) %i.ox, i64 %i.pc, i1 false)
  br label %_ZN4llvm8ExpectedINS_6object5SliceEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit491

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i490: ; preds = %bb.ae
  store ptr %i.ow, ptr %i.ot, align 8, !tbaa !21
  %i.pd = load i64, ptr %i.ox, align 8, !tbaa !23
  store i64 %i.pd, ptr %i.ov, align 8, !tbaa !23
  %.phi.trans.insert810 = getelementptr inbounds nuw i8, ptr %68, i64 24
  %.pre811 = load i64, ptr %.phi.trans.insert810, align 8, !tbaa !22
  br label %_ZN4llvm8ExpectedINS_6object5SliceEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit491

_ZN4llvm8ExpectedINS_6object5SliceEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit491: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i490
  %i.pe = phi i64 [ %i.pa, %bb.af ], [ %.pre811, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i490 ]
  %i.pf = getelementptr inbounds nuw i8, ptr %68, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.pe, ptr %i.pg, align 8, !tbaa !22
  store ptr %i.ox, ptr %i.ou, align 8, !tbaa !21
  store i64 0, ptr %i.pf, align 8, !tbaa !22
  store i8 0, ptr %i.ox, align 8, !tbaa !23
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pi = getelementptr inbounds nuw i8, ptr %68, i64 48
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !24
  store i32 %i.pj, ptr %i.ph, align 8, !tbaa !24
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm8ExpectedINS_6object5SliceEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit491, %_ZN4llvm5ErrorD2Ev.exit489
  %i.pk = phi i8 [ %i.nm, %_ZN4llvm8ExpectedINS_6object5SliceEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit491 ], [ %.pre812, %_ZN4llvm5ErrorD2Ev.exit489 ]
  %i.pl = trunc i8 %i.pk to i1
  br i1 %i.pl, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pm = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !21 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %68, i64 32 ; 2 uses
  %i.pp = icmp eq ptr %i.pn, %i.po
  br i1 %i.pp, label %.thread584, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ah
  %i.pq = load i64, ptr %i.po, align 8, !tbaa !23
  %i.pr = add i64 %i.pq, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pr) #22
  br label %.thread584

bb.ai:                                            ; preds = %bb.ag
  %i.ps = load ptr, ptr %68, align 8, !tbaa !40   ; 3 uses
  %.not.i.i492 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i492, label %.thread584, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i493

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i493: ; preds = %bb.ai
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !29
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8
  call void %i.pv(ptr noundef nonnull align 8 dereferenceable(8) %i.ps) #20, !inline_history !237
  br label %.thread584

.thread584:                                       ; preds = %bb.ah, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i493, %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #20
  br label %_ZNKSt14default_deleteIN4llvm6object12IRObjectFileEEclEPS2_.exit.i

_ZN4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm6object27AbstractArchiveMemberHeaderEEclEPS2_.exit.i.i.i.i2.i, %_ZN4llvm17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEED2Ev.exit.i, %_ZN4llvm6object5SliceD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit454
  %.sroa.0548.0614 = phi ptr [ %.sroa.0548.0.lcssa, %_ZN4llvm5ErrorD2Ev.exit454 ], [ %.sroa.0548.0.lcssa, %_ZN4llvm6object5SliceD2Ev.exit ], [ %.sroa.0548.0641, %_ZN4llvm17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEED2Ev.exit.i ], [ %.sroa.0548.0641, %_ZNKSt14default_deleteIN4llvm6object27AbstractArchiveMemberHeaderEEclEPS2_.exit.i.i.i.i2.i ] ; 2 uses
  %.sroa.0556.0604 = phi ptr [ %.sroa.0556.0.lcssa, %_ZN4llvm5ErrorD2Ev.exit454 ], [ %.sroa.0556.0.lcssa, %_ZN4llvm6object5SliceD2Ev.exit ], [ %.sroa.0556.0642, %_ZN4llvm17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEED2Ev.exit.i ], [ %.sroa.0556.0642, %_ZNKSt14default_deleteIN4llvm6object27AbstractArchiveMemberHeaderEEclEPS2_.exit.i.i.i.i2.i ] ; 2 uses
  %.not.i494 = icmp eq ptr %.sroa.0548.0614, null
  br i1 %.not.i494, label %_ZNSt10unique_ptrIN4llvm6object12IRObjectFileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6object12IRObjectFileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm6object12IRObjectFileEEclEPS2_.exit.i: ; preds = %.thread584, %_ZN4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEED2Ev.exit
  %.sroa.0548.0613 = phi ptr [ %.sroa.0548.0.lcssa, %.thread584 ], [ %.sroa.0548.0614, %_ZN4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEED2Ev.exit ] ; 2 uses
  %.sroa.0556.0603 = phi ptr [ null, %.thread584 ], [ %.sroa.0556.0604, %_ZN4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEED2Ev.exit ]
  %i.pw = load ptr, ptr %.sroa.0548.0613, align 8, !tbaa !29
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.0548.0613) #20, !inline_history !238
  br label %_ZNSt10unique_ptrIN4llvm6object12IRObjectFileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6object12IRObjectFileESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEED2Ev.exit, %_ZNKSt14default_deleteIN4llvm6object12IRObjectFileEEclEPS2_.exit.i
  %.sroa.0556.0602 = phi ptr [ %.sroa.0556.0604, %_ZN4llvm14iterator_rangeINS_17fallible_iteratorINS_6object7Archive21ChildFallibleIteratorEEEED2Ev.exit ], [ %.sroa.0556.0603, %_ZNKSt14default_deleteIN4llvm6object12IRObjectFileEEclEPS2_.exit.i ] ; 3 uses
  %.not.i495 = icmp eq ptr %.sroa.0556.0602, null
  br i1 %.not.i495, label %_ZNSt10unique_ptrIN4llvm6object15MachOObjectFileESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm6object15MachOObjectFileEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm6object15MachOObjectFileEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm6object12IRObjectFileESt14default_deleteIS2_EED2Ev.exit
  %i.pz = load ptr, ptr %.sroa.0556.0602, align 8, !tbaa !29
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.0556.0602) #20, !inline_history !239
  br label %_ZNSt10unique_ptrIN4llvm6object15MachOObjectFileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm6object15MachOObjectFileESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN4llvm6object12IRObjectFileESt14default_deleteIS2_EED2Ev.exit.thread, %_ZNSt10unique_ptrIN4llvm6object12IRObjectFileESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt14default_deleteIN4llvm6object15MachOObjectFileEEclEPS2_.exit.i
  %i.qc = load ptr, ptr %23, align 8, !tbaa !34   ; 3 uses
  %i.qd = icmp eq ptr %i.qc, null
  br i1 %i.qd, label %_ZN4llvm5ErrorD2Ev.exit496, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10unique_ptrIN4llvm6object15MachOObjectFileESt14default_deleteIS2_EED2Ev.exit
  %i.qe = load ptr, ptr %i.qc, align 8, !tbaa !29
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8
  call void %i.qg(ptr noundef nonnull align 8 dereferenceable(8) %i.qc) #20, !inline_history !0
  br label %_ZN4llvm5ErrorD2Ev.exit496

_ZN4llvm5ErrorD2Ev.exit496:                       ; preds = %_ZNSt10unique_ptrIN4llvm6object15MachOObjectFileESt14default_deleteIS2_EED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  ret void
}

declare void @_ZNK4llvm6object7Archive5Child11getAsBinaryEPNS_11LLVMContextE(ptr dead_on_unwind writable sret(%"class.llvm::Expected.70") align 8, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm17createStringErrorIJEEENS_5ErrorESt4errcPKcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !315
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !20, !noalias !315
  %i.d = icmp eq ptr %2, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #21, !noalias !315
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20, !noalias !315 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !315
  store i64 %i.e, ptr %i.a, align 8, !tbaa !27, !noalias !315
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20, !noalias !315 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !21, !noalias !315
  %i.h = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !315
  store i64 %i.h, ptr %i.c, align 8, !tbaa !23, !noalias !315
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %i.g, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !23, !noalias !315
  store i8 %i.j, ptr %i.i, align 1, !tbaa !23, !noalias !315
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %2, i64 %i.e, i1 false), !noalias !315
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !315 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !22, !noalias !315
  %i.m = load ptr, ptr %3, align 8, !tbaa !21, !noalias !315
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !23, !noalias !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !315
  call void @_ZN4llvm17createStringErrorEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 %1, ptr nonnull %i.b) #20
  %i.o = load ptr, ptr %3, align 8, !tbaa !21, !noalias !315 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %_ZN4llvm17createStringErrorESt10error_codePKc.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  %i.q = load i64, ptr %i.c, align 8, !tbaa !23, !noalias !315
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #22
  br label %_ZN4llvm17createStringErrorESt10error_codePKc.exit

_ZN4llvm17createStringErrorESt10error_codePKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !315
  ret void
}

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL21getMachoCPUFromTripleN4llvm9StringRefE(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly captures(address_is_null) %1, i64 %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"class.llvm::Expected.143", align 8 ; 8 uses
  %4 = alloca %"class.llvm::Expected.143", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.llvm::Triple", align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %.not.i.i = icmp eq ptr %1, null
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !20, !alias.scope !327
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !22, !alias.scope !327
  store i8 0, ptr %i.b, align 8, !tbaa !23, !alias.scope !327
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !327
  store i64 %2, ptr %i.a, align 8, !tbaa !27, !noalias !327
  %i.d = icmp ugt i64 %2, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !21, !alias.scope !327
  %i.f = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !327
  store i64 %i.f, ptr %i.b, align 8, !tbaa !23, !alias.scope !327
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %2, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.h, ptr %i.g, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !27, !noalias !327 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !22, !alias.scope !327
  %i.k = load ptr, ptr %5, align 8, !tbaa !21, !alias.scope !327
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !327
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i, %bb.b
  call void @_ZN4llvm6TripleC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(32) %5) #20
  %i.m = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZN4llvm6TripleC2ENS_9StringRefE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i
  %i.o = load i64, ptr %i.b, align 8, !tbaa !23
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZN4llvm6TripleC2ENS_9StringRefE.exit

_ZN4llvm6TripleC2ENS_9StringRefE.exit:            ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !328
  call void @_ZN4llvm5MachO10getCPUTypeERKNS_6TripleE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.143") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %6) #20, !noalias !328
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !328
  call void @_ZN4llvm5MachO13getCPUSubTypeERKNS_6TripleE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.143") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %6) #20, !noalias !328
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i8, ptr %i.q, align 8, !noalias !329
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %_ZN4llvm8ExpectedIjEC2EOS1_.exit.i.i.thread.i

_ZN4llvm8ExpectedIjEC2EOS1_.exit.i.i.thread.i:    ; preds = %_ZN4llvm6TripleC2ENS_9StringRefE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load i8, ptr %i.t, align 8, !noalias !329
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %.thread43.i, label %.thread40.i

.thread43.i:                                      ; preds = %_ZN4llvm8ExpectedIjEC2EOS1_.exit.i.i.thread.i
  %i.w = load i64, ptr %4, align 8, !tbaa !40, !noalias !329
  %.sroa.1317.12359.i = inttoptr i64 %i.w to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !328
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !alias.scope !328
  %i.z = or i8 %i.y, 1
  store i8 %i.z, ptr %i.x, align 8, !alias.scope !328
  store ptr %.sroa.1317.12359.i, ptr %0, align 8, !tbaa !40, !alias.scope !330
  br label %_ZL21getMachoCPUFromTripleN4llvm6TripleE.exit

.thread40.i:                                      ; preds = %_ZN4llvm8ExpectedIjEC2EOS1_.exit.i.i.thread.i
  %i.aa = load i32, ptr %3, align 8, !tbaa !30, !noalias !329
  %.sroa.012.0.insert.ext.i = zext i32 %i.aa to i64
  %i.ab = load i32, ptr %4, align 8, !tbaa !30, !noalias !329
  %.sroa.1317.16.insert.ext64.i = zext i32 %i.ab to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !328
  %.sroa.2.0.insert.ext.i.i = shl nuw i64 %.sroa.1317.16.insert.ext64.i, 32
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.ext.i.i, %.sroa.012.0.insert.ext.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !alias.scope !328
  %i.ae = and i8 %i.ad, -2
  store i8 %i.ae, ptr %i.ac, align 8, !alias.scope !328
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %0, align 8, !alias.scope !328
  br label %_ZL21getMachoCPUFromTripleN4llvm6TripleE.exit

bb.g:                                             ; preds = %_ZN4llvm6TripleC2ENS_9StringRefE.exit
  %i.af = load i64, ptr %3, align 8, !tbaa !40, !noalias !329
  %.sroa.012.1.i = inttoptr i64 %i.af to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i8, ptr %i.ag, align 8, !noalias !329
  %i.ai = trunc i8 %i.ah to i1
  %i.aj = load i64, ptr %4, align 8, !noalias !328 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !328
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !328
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !alias.scope !328
  %i.am = or i8 %i.al, 1
  store i8 %i.am, ptr %i.ak, align 8, !alias.scope !328
  store ptr %.sroa.012.1.i, ptr %0, align 8, !tbaa !40, !alias.scope !331
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  %or.cond.not.i = select i1 %i.ai, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.not.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i, label %_ZL21getMachoCPUFromTripleN4llvm6TripleE.exit

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i: ; preds = %bb.g
  %.sroa.1317.12331.i = inttoptr i64 %i.aj to ptr ; 2 uses
  %i.an = load ptr, ptr %.sroa.1317.12331.i, align 8, !tbaa !29, !noalias !328
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !328
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.1317.12331.i) #20, !noalias !328, !inline_history !326
  br label %_ZL21getMachoCPUFromTripleN4llvm6TripleE.exit

_ZL21getMachoCPUFromTripleN4llvm6TripleE.exit:    ; preds = %.thread43.i, %.thread40.i, %bb.g, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i
  %i.aq = load ptr, ptr %6, align 8, !tbaa !21    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN4llvm6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %_ZL21getMachoCPUFromTripleN4llvm6TripleE.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #22
  br label %_ZN4llvm6TripleD2Ev.exit

_ZN4llvm6TripleD2Ev.exit:                         ; preds = %_ZL21getMachoCPUFromTripleN4llvm6TripleE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  ret void
}

declare { ptr, i64 } @_ZNK4llvm6object12IRObjectFile15getTargetTripleEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm6object5Slice6createERKNS0_12IRObjectFileEj(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.llvm::Expected.81", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.llvm::Triple", align 8      ; 6 uses
  %6 = alloca %"class.llvm::object::Slice", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.b = tail call { ptr, i64 } @_ZNK4llvm6object12IRObjectFile15getTargetTripleEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #20 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call fastcc void @_ZL21getMachoCPUFromTripleN4llvm9StringRefE(ptr dead_on_unwind noalias writable align 8 %3, ptr %i.c, i64 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i8, ptr %i.e, align 8
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN4llvm6object15MachOObjectFile13getArchTripleEjjPPKcS4_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Triple") align 8 %5, i32 noundef %i.h, i32 noundef %i.j, ptr noundef null, ptr noundef null) #20
  %i.k = call { ptr, i64 } @_ZNK4llvm6Triple11getArchNameEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #20 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0        ; 3 uses
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !20
  %i.o = icmp eq ptr %i.l, null
  %i.p = icmp ne i64 %i.m, 0
  %or.cond.i.i.i = and i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.m, ptr %i.a, align 8, !tbaa !27
  %i.q = icmp ugt i64 %i.m, 15
  br i1 %i.q, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !21
  %i.s = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.s, ptr %i.n, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %i.t = phi ptr [ %i.r, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  switch i64 %i.m, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.u = load i8, ptr %i.l, align 1, !tbaa !23
  store i8 %i.u, ptr %i.t, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.v = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !22
  %i.x = load ptr, ptr %4, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.z = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm6TripleD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !23
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #22
  br label %_ZN4llvm6TripleD2Ev.exit

_ZN4llvm6TripleD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.ae, ptr %7, align 8, !tbaa !20
  %i.af = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.n
  br i1 %i.ag, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.h:                                             ; preds = %_ZN4llvm6TripleD2Ev.exit
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !22  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4llvm6TripleD2Ev.exit
  store ptr %i.af, ptr %7, align 8, !tbaa !21
  %i.ak = load i64, ptr %i.n, align 8, !tbaa !23
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !23
  %.pre = load i64, ptr %i.w, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.al = phi i64 [ %i.ah, %bb.h ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !22
  store ptr %i.n, ptr %4, align 8, !tbaa !21
  store i64 0, ptr %i.w, align 8, !tbaa !22
  store i8 0, ptr %i.n, align 8, !tbaa !23
  call void @_ZN4llvm6object5SliceC1ERKNS0_12IRObjectFileEjjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(52) %6, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.h, i32 noundef %i.j, ptr nofree noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %2) #20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 8
  %i.ap = and i8 %i.ao, -2
  store i8 %i.ap, ptr %i.an, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(52) %6, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !20
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !22 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %_ZN4llvm6object5SliceD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !21
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !23
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !23
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre17 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %_ZN4llvm6object5SliceD2Ev.exit

_ZN4llvm6object5SliceD2Ev.exit:                   ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2
  %i.bb = phi i64 [ %i.ax, %bb.i ], [ %.pre17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !22
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !21
  store i64 0, ptr %i.bc, align 8, !tbaa !22
  store i8 0, ptr %i.au, align 8, !tbaa !23
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !24
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !24
  %i.bh = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.ae
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm6object5SliceD2Ev.exit
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !23
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm6object5SliceD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.bl = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
end_hunk_0
