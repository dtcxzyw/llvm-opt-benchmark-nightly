Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RuntimeDyldELF?download=true
inline.NumInlined: 9052
inline.NumDeleted: 2495
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm14RuntimeDyldELF15createIFuncStubEjmmjm:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 2, ptr %i.bi, align 4, !tbaa !224
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.bj, align 8, !tbaa !121
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.bk, align 8, !tbaa !225
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 4
  %i.bn = and i8 %i.bm, -4
  store i8 %i.bn, ptr %i.bl, align 4
  %i.bo = load i32, ptr %i.al, align 8, !tbaa !249
  call void @_ZN4llvm15RuntimeDyldImpl23addRelocationForSectionERKNS_15RelocationEntryEj(ptr noundef nonnull align 8 dereferenceable(1176) %0, ptr noundef nonnull align 8 dereferenceable(37) %6, i32 noundef %i.bo) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void

bb.h:                                             ; preds = %_ZNSt5dequeIN4llvm12SectionEntryESaIS1_EEixEm.exit
  tail call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.21, i1 noundef zeroext true) #27
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm10make_errorINS_16RuntimeDyldErrorEJRA35_KcEEENS_5ErrorEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 1 dereferenceable(35) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !724 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !119, !noalias !724
  %i.d = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #25, !noalias !724 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !724
  store i64 %i.d, ptr %i.a, align 8, !tbaa !226, !noalias !724
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #25, !noalias !724 ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !204, !noalias !724
  %i.g = load i64, ptr %i.a, align 8, !tbaa !226, !noalias !724
  store i64 %i.g, ptr %i.c, align 8, !tbaa !121, !noalias !724
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.h = phi ptr [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !121, !noalias !724
  store i8 %i.i, ptr %i.h, align 1, !tbaa !121, !noalias !724
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 dereferenceable(35) %1, i64 %i.d, i1 false), !noalias !724
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !226, !noalias !724 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !120, !noalias !724
  %i.l = load ptr, ptr %2, align 8, !tbaa !204, !noalias !724
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !121, !noalias !724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !724
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm16RuntimeDyldErrorE, i64 16), ptr %i.b, align 8, !tbaa !70, !noalias !724
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !119, !noalias !724
  %i.p = load ptr, ptr %2, align 8, !tbaa !204, !noalias !724 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  %i.r = load i64, ptr %i.k, align 8, !tbaa !120, !noalias !724 ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.t, i1 false), !noalias !724
  br label %_ZNSt10unique_ptrIN4llvm16RuntimeDyldErrorESt14default_deleteIS1_EED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit.i
  store ptr %i.p, ptr %i.n, align 8, !tbaa !204, !noalias !724
  %i.u = load i64, ptr %i.c, align 8, !tbaa !121, !noalias !724
  store i64 %i.u, ptr %i.o, align 8, !tbaa !121, !noalias !724
  %.pre.i = load i64, ptr %i.k, align 8, !tbaa !120, !noalias !724
  br label %_ZNSt10unique_ptrIN4llvm16RuntimeDyldErrorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm16RuntimeDyldErrorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = phi i64 [ %i.r, %bb.e ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !120, !noalias !724
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.b, ptr %0, align 8, !tbaa !199
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14RuntimeDyldELF16isCompatibleFileERKNS_6object10ObjectFileE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !236
  %i.c = add i32 %i.b, -13
  %spec.select.i = icmp ult i32 %i.c, 4
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14RuntimeDyldELF18relocationNeedsGotERKNS_6object13RelocationRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !121
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 %.sroa.0.0.copyload.i) #25, !inline_history !4 ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = load i32, ptr %i.h, align 8, !tbaa !205
  switch i32 %i.i, label %switch.edge21 [
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 14, label %bb.c
    i32 41, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.j = add i32 %i.g, -311
  %i.k = icmp ult i32 %i.j, 2
  br label %switch.edge21

bb.c:                                             ; preds = %bb.a
  %i.l = add i32 %i.g, -75
  %switch.selectcmp = icmp ult i32 %i.l, 4
  br label %switch.edge21

bb.d:                                             ; preds = %bb.a
  %i.m = icmp ult i32 %i.g, 43
  br i1 %i.m, label %switch.lookup, label %switch.edge21

switch.lookup:                                    ; preds = %bb.d
  %i.n = trunc i64 %i.f to i43
  %switch.cast = and i43 %i.n, 63
  %switch.downshift = lshr i43 -2198889037312, %switch.cast
  %switch.masked = trunc i43 %switch.downshift to i1
  br label %switch.edge21

switch.edge21:                                    ; preds = %bb.d, %switch.lookup, %bb.c, %bb.a, %bb.b
  %.0 = phi i1 [ %i.k, %bb.b ], [ %switch.masked, %switch.lookup ], [ %switch.selectcmp, %bb.c ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14RuntimeDyldELF19relocationNeedsStubERKNS_6object13RelocationRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1176) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  %.not = icmp eq i32 %i.b, 41
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !243  ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !121
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 %.sroa.0.0.copyload.i) #25, !inline_history !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, 43
  br i1 %i.i, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %switch.cast = trunc nuw i64 %i.h to i43
  %switch.downshift = lshr i43 2198301834745, %switch.cast
  %switch.masked = trunc i43 %switch.downshift to i1
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b, %bb.a
  %.0 = phi i1 [ %switch.masked, %switch.lookup ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm14RuntimeDyldELF14getMaxStubSizeEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %switch.tableidx = add i32 %i.b, -1             ; 3 uses
  %i.c = icmp ult i32 %switch.tableidx, 38
  %switch.maskindex = zext nneg i32 %switch.tableidx to i64
  %switch.shifted = lshr i64 137438953485, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond9 = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond9, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 181
  %i.e = load i8, ptr %i.d, align 1, !tbaa !231, !range !216, !noundef !177
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 182
  %i.h = load i8, ptr %i.g, align 2, !range !216
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 183
  %i.k = load i8, ptr %i.j, align 1, !tbaa !237, !range !216, !noundef !177
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.tableidx4 = add i32 %i.b, -14           ; 2 uses
  %i.m = icmp ult i32 %switch.tableidx4, 28
  br i1 %i.m, label %switch.lookup5, label %bb.e

switch.lookup:                                    ; preds = %bb.a
  %1 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm14RuntimeDyldELF14getMaxStubSizeEv, i64 %1
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.e

switch.lookup5:                                   ; preds = %bb.d
  %i.n = zext nneg i32 %switch.tableidx4 to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm14RuntimeDyldELF14getMaxStubSizeEv.98, i64 %i.n
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %switch.lookup5, %switch.lookup, %bb.c, %bb.b
  %.0.shrunk = phi i8 [ 32, %bb.c ], [ %switch.load7, %switch.lookup5 ], [ %switch.load, %switch.lookup ], [ 16, %bb.b ], [ 0, %bb.d ]
  %.0 = zext i8 %.0.shrunk to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4llvm14RuntimeDyldELF16getStubAlignmentEv(ptr noundef nonnull align 8 dereferenceable(1176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205
  %i.c = icmp eq i32 %i.b, 34
  %spec.select = select i1 %i.c, i8 3, i8 0
  ret i8 %spec.select
}

declare void @_ZN4llvm15RuntimeDyldImpl17getJITSymbolFlagsERKNS_6object9SymbolRefE() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm15RuntimeDyldImpl25modifyAddressBasedOnFlagsEmNS_14JITSymbolFlagsE(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef %1, i16 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15RuntimeDyldImpl28relocationNeedsDLLImportStubERKNS_6object13RelocationRefE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm15RuntimeDyldImpl28sizeAfterAddingDLLImportStubEj(ptr noundef nonnull align 8 dereferenceable(312) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 %1
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN4llvm18RelocationValueRefESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  tail call void @_ZNSt8_Rb_treeIN4llvm18RelocationValueRefESt4pairIKS1_mESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !725

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !199    ; 12 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !199
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !199, !noalias !742
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @_ZN4llvm9ErrorList2IDE) #25, !inline_history !17
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !259  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !259  ; 2 uses
  %.not3435 = icmp eq ptr %i.g, %i.i
  br i1 %.not3435, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4llvm5ErrorD2Ev.exit9
  %.sroa.024.036 = phi ptr [ %i.ae, %_ZN4llvm5ErrorD2Ev.exit9 ], [ %i.g, %bb.c ] ; 3 uses
  %i.j = phi ptr [ %i.t, %_ZN4llvm5ErrorD2Ev.exit9 ], [ null, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.j, ptr %4, align 8, !tbaa !199
  %i.k = load i64, ptr %.sroa.024.036, align 8, !tbaa !197 ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 5 uses
  store ptr null, ptr %.sroa.024.036, align 8, !tbaa !197
  call void @llvm.experimental.noalias.scope.decl(metadata !743)
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70, !noalias !743
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !743
  %i.p = call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @_ZN4llvm13ErrorInfoBase2IDE) #25, !noalias !743, !inline_history !730
  br i1 %i.p, label %bb.d, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i

bb.d:                                             ; preds = %.lr.ph
  store ptr null, ptr %5, align 8, !tbaa !199, !alias.scope !744
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN4llvm5ErrorD2Ev.exit7, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !70, !noalias !743
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !743
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #25, !noalias !743, !inline_history !733
  br label %_ZN4llvm5ErrorD2Ev.exit7

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i: ; preds = %.lr.ph
  store ptr %i.l, ptr %5, align 8, !tbaa !199, !alias.scope !745
  br label %_ZN4llvm5ErrorD2Ev.exit7

_ZN4llvm5ErrorD2Ev.exit7:                         ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, %bb.d
  call void @_ZN4llvm9ErrorList4joinENS_5ErrorES1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.t = load ptr, ptr %3, align 8, !tbaa !199    ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !199
  %i.u = load ptr, ptr %5, align 8, !tbaa !199    ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit7
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #25, !inline_history !2
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZN4llvm5ErrorD2Ev.exit7
  %i.z = load ptr, ptr %4, align 8, !tbaa !199    ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4llvm5ErrorD2Ev.exit9, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #25, !inline_history !2
  br label %_ZN4llvm5ErrorD2Ev.exit9

_ZN4llvm5ErrorD2Ev.exit9:                         ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.024.036, i64 8 ; 2 uses
  %.not34 = icmp eq ptr %i.ae, %i.i
  br i1 %.not34, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i18, label %.lr.ph

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !70, !noalias !746
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !746
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @_ZN4llvm13ErrorInfoBase2IDE) #25, !noalias !746, !inline_history !730
  br i1 %i.ai, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i12, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i10

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i12: ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !199, !alias.scope !747
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !70, !noalias !746
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !746
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25, !noalias !746, !inline_history !733
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit3.i10: ; preds = %bb.g
  store ptr %i.a, ptr %0, align 8, !tbaa !199, !alias.scope !748
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit19

end_hunk_0
