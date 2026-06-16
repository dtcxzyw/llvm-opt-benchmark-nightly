inline.NumInlined: 939
inline.NumDeleted: 457
begin_hunk_0_@_ZNK4llvh2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE:bb.a
  %i.i = load i8, ptr %i.h, align 8, !range !68
  %i.j = load i8, ptr %i.d, align 8, !range !68
  %i.k = icmp ne i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(145), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE16handleOccurrenceEjNS_9StringRefESB_(ptr noundef nonnull align 8 dereferenceable(216) %0, i32 noundef %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !20
  store i8 0, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = call noundef zeroext i1 @_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.g, align 8, !tbaa !205
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %6, align 8, !tbaa !14     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !19
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE27getValueExpectedFlagDefaultEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret i32 2
}

declare void @_ZN4llvh2cl6Option6anchorEv(ptr noundef nonnull align 8 dereferenceable(145)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !19
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #23
  br label %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EED2Ev.exit.i

_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9    ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EED2Ev.exit.i
  tail call void @free(ptr noundef %i.j) #22
  br label %_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEED2Ev.exit

_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEED2Ev.exit: ; preds = %_ZN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EED2Ev.exit.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE14getOptionWidthEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = tail call noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0) #22
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE15printOptionInfoEm(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(145) %0, i64 noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE16printOptionValueEmb(ptr noundef nonnull align 8 dereferenceable(216) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !201 ; 4 uses
  br i1 %2, label %._ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2_crit_edge, label %bb.b

._ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2_crit_edge: ; preds = %bb.a
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre4 = load i64, ptr %.phi.trans.insert3, align 8, !tbaa !20
  br label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %i.a, align 8, !tbaa !194, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit

_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit: ; preds = %bb.d
  %i.k = load ptr, ptr %.pre, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !14
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.l, ptr %i.k, i64 %i.f)
  %.not = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread, label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2

_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2: ; preds = %._ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2_crit_edge, %bb.c, %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit
  %i.m = phi i64 [ %.pre4, %._ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2_crit_edge ], [ %i.h, %bb.c ], [ %i.f, %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %.pre, align 8, !tbaa !14
  tail call void @_ZNK4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15printOptionDiffERKNS0_6OptionENS_9StringRefERKNS0_11OptionValueIS7_EEm(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(145) %0, ptr %i.p, i64 %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 noundef %1) #22
  br label %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread

_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread: ; preds = %bb.d, %bb.b, %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit.thread2, %_ZNK4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7compareERKS7_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE10setDefaultEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load i8, ptr %i.a, align 8, !tbaa !194, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE14setDefaultImplIS7_vEEvv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !201
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #22
  br label %_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE14setDefaultImplIS7_vEEvv.exit

_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE14setDefaultImplIS7_vEEvv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEE19getExtraOptionNamesERNS_15SmallVectorImplINS_9StringRefEEE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZN4llvh2cl6Option13addOccurrenceEjNS_9StringRefES2_b(ptr noundef nonnull align 8 dereferenceable(145), i32 noundef, ptr, i64, ptr, i64, i1 noundef zeroext) unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef nonnull align 8 dereferenceable(18), ptr, i64, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5parseERNS0_6OptionENS_9StringRefESB_RS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(145) %1, ptr %2, i64 %3, ptr %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %.not.i = icmp eq ptr %4, null
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !132, !alias.scope !210
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !20, !alias.scope !210
  store i8 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !210
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !210
  store i64 %5, ptr %i.a, align 8, !tbaa !82, !noalias !210
  %i.d = icmp ugt i64 %5, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.e, ptr %7, align 8, !tbaa !14, !alias.scope !210
  %i.f = load i64, ptr %i.a, align 8, !tbaa !82, !noalias !210
  store i64 %i.f, ptr %i.b, align 8, !tbaa !19, !alias.scope !210
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ %i.e, %bb.d ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %5, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.h = load i8, ptr %4, align 1, !tbaa !19
  store i8 %i.h, ptr %i.g, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %4, i64 %5, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !82, !noalias !210 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !20, !alias.scope !210
  %i.k = load ptr, ptr %7, align 8, !tbaa !14, !alias.scope !210
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !210
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  %i.m = load ptr, ptr %6, align 8, !tbaa !14     ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %7, align 8, !tbaa !14     ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  br i1 %i.r, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  br i1 %i.r, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %7, %6
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %8, !prof !213

8:                                                ; preds = %bb.g
  switch i64 %i.t, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %8
  %i.v = load i8, ptr %i.p, align 1, !tbaa !19
  store i8 %i.v, ptr %i.m, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %8
  %i.w = load i64, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !20
  %i.y = load ptr, ptr %6, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.p, ptr %6, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load <2 x i64>, ptr %i.ab, align 8, !tbaa !19
  store <2 x i64> %i.ac, ptr %i.aa, align 8, !tbaa !19
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ad = load i64, ptr %i.n, align 8, !tbaa !19
  store ptr %i.p, ptr %6, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load <2 x i64>, ptr %i.ae, align 8, !tbaa !19
  store <2 x i64> %i.ag, ptr %i.af, align 8, !tbaa !19
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.m, ptr %7, align 8, !tbaa !14
  store i64 %i.ad, ptr %i.q, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %7, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %9 = phi ptr [ %i.m, %bb.j ], [ %i.q, %bb.k ], [ %i.p, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !20
  store i8 0, ptr %9, align 1, !tbaa !19
  %i.ai = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !19
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret i1 false
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvh2cl17basic_parser_impl14getOptionWidthERKNS0_6OptionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #4

declare void @_ZNK4llvh2cl17basic_parser_impl15printOptionInfoERKNS0_6OptionEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145), i64 noundef) local_unnamed_addr #4

declare void @_ZNK4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15printOptionDiffERKNS0_6OptionENS_9StringRefERKNS0_11OptionValueIS7_EEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(145), ptr, i64, ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvh14raw_fd_ostreamC1Eibb(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN4llvh14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) unnamed_addr #4

declare void @_ZN4llvh18format_object_base4homeEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJddEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !85
  %i.g = load double, ptr %i.d, align 8, !tbaa !85
  %i.h = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, double noundef %i.f, double noundef %i.g) #22
  ret i32 %i.h
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJlEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82
  %i.f = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, i64 noundef %i.e) #22
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh14object_creatorINS_3sys10SmartMutexILb1EEEE4callEv() #1 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24 ; 4 uses
  tail call void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(13) %i.a, i1 noundef zeroext true) #22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 1, ptr %i.c, align 4, !tbaa !214
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14object_deleterINS_3sys10SmartMutexILb1EEEE4callEPv(ptr noundef %0) #1 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(13) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_ZN4llvh3sys9MutexImplC1Eb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvh3sys9MutexImplD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

declare noundef zeroext i1 @_ZN4llvh21llvm_is_multithreadedEv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7acquireEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvh3sys9MutexImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !163
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !132
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.h, ptr %i.b, align 8, !tbaa !82
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !14
  %i.k = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.k, ptr %i.e, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !19
  store i8 %i.m, ptr %i.l, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !132
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.w, ptr %i.a, align 8, !tbaa !82
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %bb.e, label %._crit_edge.i.i4

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !14
  %i.z = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.z, ptr %i.t, align 8, !tbaa !19
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = phi ptr [ %i.y, %bb.e ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.w, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5
  ]

bb.f:                                             ; preds = %._crit_edge.i.i4
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !19
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

bb.g:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5: ; preds = %._crit_edge.i.i4, %bb.f, %bb.g
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !20
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE17_M_realloc_insertIJRKNS0_10TimeRecordENS0_9StringRefES9_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !143    ; 7 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775776
  br i1 %i.k, label %bb.b, label %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
  unreachable

_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.l = sdiv exact i64 %i.j, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i, %i.l    ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 96076792050570581)
  %i.p = select i1 %i.n, i64 96076792050570581, i64 %i.o ; 3 uses
  %i.q = ptrtoint ptr %1 to i64
  %i.r = sub i64 %i.q, %i.i
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit
  %i.s = mul nuw nsw i64 %i.p, 96
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #24
  br label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.u = phi ptr [ %i.t, %bb.c ], [ null, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.w = load ptr, ptr %3, align 8, !tbaa !152, !noalias !221 ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.x, ptr %5, align 8, !tbaa !132, !alias.scope !221
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !20, !alias.scope !221
  store i8 0, ptr %i.x, align 8, !tbaa !19, !alias.scope !221
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE11_M_allocateEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !155, !noalias !221 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ab, ptr %5, align 8, !tbaa !132, !alias.scope !221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22, !noalias !221
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !82, !noalias !221
  %i.ac = icmp ugt i64 %i.aa, 15
  br i1 %i.ac, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) #22 ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !14, !alias.scope !221
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !82, !noalias !221
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !19, !alias.scope !221
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.af = phi ptr [ %i.ad, %bb.f ], [ %i.ab, %bb.e ] ; 2 uses
  switch i64 %i.aa, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load i8, ptr %i.w, align 1, !tbaa !19
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.w, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !82, !noalias !221 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !20, !alias.scope !221
  %i.aj = load ptr, ptr %5, align 8, !tbaa !14, !alias.scope !221
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22, !noalias !221
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.al = load ptr, ptr %4, align 8, !tbaa !152, !noalias !228 ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.al, null
  br i1 %.not.i.i20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !132, !alias.scope !228
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !20, !alias.scope !228
  store i8 0, ptr %i.am, align 8, !tbaa !19, !alias.scope !228
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23

bb.j:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !155, !noalias !228 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.aq, ptr %6, align 8, !tbaa !132, !alias.scope !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22, !noalias !228
  store i64 %i.ap, ptr %i.c, align 8, !tbaa !82, !noalias !228
  %i.ar = icmp ugt i64 %i.ap, 15
  br i1 %i.ar, label %bb.k, label %._crit_edge.i.i.i.i21

bb.k:                                             ; preds = %bb.j
  %i.as = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #22 ; 2 uses
  store ptr %i.as, ptr %6, align 8, !tbaa !14, !alias.scope !228
  %i.at = load i64, ptr %i.c, align 8, !tbaa !82, !noalias !228
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !19, !alias.scope !228
  br label %._crit_edge.i.i.i.i21

._crit_edge.i.i.i.i21:                            ; preds = %bb.k, %bb.j
  %i.au = phi ptr [ %i.as, %bb.k ], [ %i.aq, %bb.j ] ; 2 uses
  switch i64 %i.ap, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i21
  %i.av = load i8, ptr %i.al, align 1, !tbaa !19
  store i8 %i.av, ptr %i.au, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22

bb.m:                                             ; preds = %._crit_edge.i.i.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 1 %i.al, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22: ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i.i21
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !82, !noalias !228 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !20, !alias.scope !228
  %i.ay = load ptr, ptr %6, align 8, !tbaa !14, !alias.scope !228
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22, !noalias !228
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !163
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 3 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !132
  %i.bc = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 %i.be, ptr %i.b, align 8, !tbaa !82
  %i.bf = icmp ugt i64 %i.be, 15
  br i1 %i.bf, label %bb.n, label %._crit_edge.i.i.i

bb.n:                                             ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23
  %i.bg = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bg, ptr %i.ba, align 8, !tbaa !14
  %i.bh = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.n, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23
  %i.bi = phi ptr [ %i.bg, %bb.n ], [ %i.bb, %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit23 ] ; 2 uses
  switch i64 %i.be, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = load i8, ptr %i.bc, align 1, !tbaa !19
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !82  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !20
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 64 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !132
  %i.bq = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !82
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %bb.q, label %._crit_edge.i.i4.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !14
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !19
  br label %._crit_edge.i.i4.i

._crit_edge.i.i4.i:                               ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bw = phi ptr [ %i.bu, %bb.q ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  switch i64 %i.bs, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit
  ]

bb.r:                                             ; preds = %._crit_edge.i.i4.i
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !19
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !19
  br label %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit

bb.s:                                             ; preds = %._crit_edge.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  br label %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit

_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit: ; preds = %._crit_edge.i.i4.i, %bb.r, %bb.s
  %i.by = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !20
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !14
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.cc = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !19
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ch = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.not9.i.i.i.i.i = icmp eq ptr %i.g, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 2 uses
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0810.i.i.i.i.i)
  %i.cm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 96 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cm, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !144

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.cn, %.lr.ph.i.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96 ; 2 uses
  %.not9.i.i.i.i.i27 = icmp eq ptr %1, %i.f
  br i1 %.not9.i.i.i.i.i27, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33, label %.lr.ph.i.i.i.i.i28

.lr.ph.i.i.i.i.i28:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i28
  %.011.i.i.i.i.i29 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i28 ], [ %i.co, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i30 = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i28 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i29, ptr noundef nonnull align 8 dereferenceable(96) %.0810.i.i.i.i.i30)
  %i.cp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i30, i64 96 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i29, i64 96 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.cp, %i.f
  br i1 %.not.i.i.i.i.i31, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33, label %.lr.ph.i.i.i.i.i28, !llvm.loop !144

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33: ; preds = %.lr.ph.i.i.i.i.i28, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i32 = phi ptr [ %i.co, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.cq, %.lr.ph.i.i.i.i.i28 ]
  %.not4.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.dd, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i ], [ %i.g, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33 ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !14 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !19
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !14 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !19
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #23
  br label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.dd, %i.f
  br i1 %.not.i.i34, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !145

_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit33
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.g, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !71
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.dh) #23
  br label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, %bb.t
  store ptr %i.u, ptr %0, align 8, !tbaa !143
  store ptr %.0.lcssa.i.i.i.i.i32, ptr %i.e, align 8, !tbaa !70
  %i.di = getelementptr inbounds nuw [96 x i8], ptr %i.u, i64 %i.p
  store ptr %i.di, ptr %i.de, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #1 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_:bb.a
  switch i64 %i.g, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.m = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !20
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !132
  %i.s = load ptr, ptr %3, align 8, !tbaa !14     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !20   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.u, ptr %i.a, align 8, !tbaa !82
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.e, label %._crit_edge.i.i4

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22 ; 2 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !14
  %i.x = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.x, ptr %i.r, align 8, !tbaa !19
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %bb.e ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5
  ]

bb.f:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !19
  store i8 %i.z, ptr %i.y, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

bb.g:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit5: ; preds = %._crit_edge.i.i4, %bb.f, %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !20
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE17_M_realloc_insertIJRNS0_10TimeRecordERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !143    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
  unreachable

_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKNS_10TimeRecordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.0810.i.i.i.i.i)
  %i.r = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !144

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 96 ; 2 uses
  %.not9.i.i.i.i.i20 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i20, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i21
  %.011.i.i.i.i.i22 = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i21 ], [ %i.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.0810.i.i.i.i.i23 = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i21 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  tail call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %.011.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(96) %.0810.i.i.i.i.i23)
  %i.u = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i23, i64 96 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i22, i64 96 ; 2 uses
  %.not.i.i.i.i.i24 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i.i24, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, label %.lr.ph.i.i.i.i.i21, !llvm.loop !144

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26: ; preds = %.lr.ph.i.i.i.i.i21, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i25 = phi ptr [ %i.t, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.v, %.lr.ph.i.i.i.i.i21 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26 ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !19
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #23
  br label %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !145

_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN4llvh10TimerGroup11PrintRecordEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh10TimerGroup11PrintRecordES3_SaIS2_EET0_T_S6_S5_RT1_.exit26
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !71
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #23
  br label %_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh10TimerGroup11PrintRecordEEvT_S4_.exit, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !143
  store ptr %.0.lcssa.i.i.i.i.i25, ptr %i.a, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw [96 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1536
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph21

bb.b:                                             ; preds = %.lr.ph21
  %i.g = icmp eq i64 %i.m, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph21, !llvm.loop !229

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge13.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %storemerge13.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %.lr.ph.i8.i ], [ %storemerge13.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -96 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr nonnull %i.h, ptr nonnull %i.h, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 96
  br i1 %i.k, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !230

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph21:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1320 = phi ptr [ %i.q, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01419 = phi i64 [ %i.m, %bb.b ], [ %2, %.lr.ph ]
  %i.l = phi i64 [ %i.s, %bb.b ], [ %i.c, %.lr.ph ]
  %i.m = add nsw i64 %.01419, -1                  ; 3 uses
  %i.n = udiv i64 %i.l, 192
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %storemerge1320, i64 -96
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr nonnull %i.e, ptr %i.o, ptr nonnull %i.p)
  %i.q = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_SC_T0_(ptr nonnull %i.e, ptr %storemerge1320, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.q, ptr %storemerge1320, i64 noundef %i.m)
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1536
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !229

.loopexit:                                        ; preds = %.lr.ph21, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %4 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 6 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 96                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 192
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit13, %bb.b
  %.07 = phi i64 [ %i.g, %bb.b ], [ %i.y, %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.p = getelementptr inbounds [96 x i8], ptr %0, i64 %.07
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.p)
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %3)
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %.07, i64 noundef %i.d, ptr noundef nonnull %4)
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.i
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.i, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.k
  br i1 %i.v, label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.w = load i64, ptr %i.k, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
  br label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit

_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %.not = icmp eq i64 %.07, 0
  %i.y = add nsw i64 %.07, -1
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.m
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !19
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9: ; preds = %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !14  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9
  %i.af = load i64, ptr %i.o, align 8, !tbaa !19
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #23
  br label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit13

_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit13:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !231

.loopexit:                                        ; preds = %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit13, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %5 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 32, i1 false), !tbaa.struct !163
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #22
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 96
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %4)
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.h, ptr noundef nonnull %5)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.k, align 8, !tbaa !19
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !19
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #23
  br label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit

_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1: ; preds = %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !19
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2: ; preds = %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #23
  br label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit6

_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit6:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 7 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.034 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.034, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [96 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [96 x i8], ptr %0, i64 %i.g
  %i.i = load double, ptr %i.f, align 8, !tbaa !109
  %i.j = load double, ptr %i.h, align 8, !tbaa !109
  %i.k = fcmp olt double %i.i, %i.j
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [96 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.m = getelementptr inbounds [96 x i8], ptr %0, i64 %.034 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.l, i64 32, i1 false), !tbaa.struct !163
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.q) #22
  %i.r = icmp slt i64 %spec.select, %i.b
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !232

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.s = and i64 %2, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.u = add nsw i64 %2, -2
  %i.v = ashr exact i64 %i.u, 1
  %i.w = icmp eq i64 %.0.lcssa, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = shl nsw i64 %.0.lcssa, 1
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = getelementptr inbounds [96 x i8], ptr %0, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds [96 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %i.z, i64 32, i1 false), !tbaa.struct !163
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ac) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.y, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %3)
  %i.af = icmp sgt i64 %.1, %1
  br i1 %i.af, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.018.i = phi i64 [ %.0919.i, %bb.e ], [ %.1, %bb.d ] ; 3 uses
  %.0919.in.i = add nsw i64 %.018.i, -1
  %.0919.i = sdiv i64 %.0919.in.i, 2              ; 4 uses
  %i.ag = getelementptr inbounds [96 x i8], ptr %0, i64 %.0919.i ; 4 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !109
  %i.ai = load double, ptr %4, align 8, !tbaa !109
  %i.aj = fcmp olt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds [96 x i8], ptr %0, i64 %.018.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ak, ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 32, i1 false), !tbaa.struct !163
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.am) #22
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #22
  %i.ap = icmp sgt i64 %.0919.i, %1
  br i1 %i.ap, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !233

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.018.i, %.lr.ph.i ], [ %.0919.i, %bb.e ]
  %i.aq = getelementptr inbounds [96 x i8], ptr %0, i64 %.0.lcssa.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aq, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 32, i1 false), !tbaa.struct !163
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.as) #22
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.au) #22
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !19
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops14_Iter_less_valEEvT_T0_SD_T1_RT2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !14 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !19
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit

_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %5 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %6 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %7 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %8 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %9 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %i.a = load double, ptr %1, align 8, !tbaa !109 ; 3 uses
  %i.b = load double, ptr %2, align 8, !tbaa !109 ; 3 uses
  %i.c = fcmp olt double %i.a, %i.b
  %i.d = load double, ptr %3, align 8, !tbaa !109 ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp olt double %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr noundef nonnull align 8 dereferenceable(96) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 32, i1 false), !tbaa.struct !163
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %9, i64 32, i1 false), !tbaa.struct !163
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #22
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #22
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !19
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.v = fcmp olt double %i.a, %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef nonnull align 8 dereferenceable(96) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 32, i1 false), !tbaa.struct !163
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #22
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 32, i1 false), !tbaa.struct !163
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #22
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !14 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26: ; preds = %bb.e
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !19
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i26
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !19
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #23
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit31

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 32, i1 false), !tbaa.struct !163
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.am) #22
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.an) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 32, i1 false), !tbaa.struct !163
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ap) #22
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32: ; preds = %bb.f
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !19
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i33: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i33
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !19
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #23
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit37

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ba = fcmp olt double %i.a, %i.d
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(96) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 32, i1 false), !tbaa.struct !163
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.bc) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %i.be) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 32, i1 false), !tbaa.struct !163
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bf) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bg) #22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38: ; preds = %bb.h
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !19
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #23
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit43

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.br = fcmp olt double %i.b, %i.d
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 32, i1 false), !tbaa.struct !163
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bu) #22
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bv) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 32, i1 false), !tbaa.struct !163
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bw) #22
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.bx) #22
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !14 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44: ; preds = %bb.j
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !19
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i45: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i44
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !14 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i45
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !19
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit49

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 32, i1 false), !tbaa.struct !163
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.ci) #22
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 32, i1 false), !tbaa.struct !163
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.ck) #22
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %i.cl) #22
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !14 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50: ; preds = %bb.k
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !19
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i51: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i50
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !14 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i51
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !19
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #23
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit55

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.l

bb.l:                                             ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit43, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit55, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit49, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit37, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit, %bb.a
  %.sroa.010.0 = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit ]
  %i.e = load double, ptr %2, align 8, !tbaa !109 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.010.1 = phi ptr [ %.sroa.010.0, %bb.b ], [ %i.h, %bb.c ] ; 8 uses
  %i.f = load double, ptr %.sroa.010.1, align 8, !tbaa !109
  %i.g = fcmp olt double %i.f, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 96 ; 2 uses
  br i1 %i.g, label %bb.c, label %.preheader, !llvm.loop !234

.preheader:                                       ; preds = %bb.c, %.preheader
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.1, %.preheader ], [ %.sroa.0.0, %bb.c ] ; 3 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -96 ; 6 uses
  %i.i = load double, ptr %.sroa.0.1, align 8, !tbaa !109
  %i.j = fcmp olt double %i.e, %i.i
  br i1 %i.j, label %.preheader, label %bb.d, !llvm.loop !235

bb.d:                                             ; preds = %.preheader
  %i.k = icmp ult ptr %.sroa.010.1, %.sroa.0.1
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  ret ptr %.sroa.010.1

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.010.1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.010.1, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.1, i64 32, i1 false), !tbaa.struct !163
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 32
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #22
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.1, i64 64
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.1, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 32, i1 false), !tbaa.struct !163
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #22
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !19
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.v = load i64, ptr %i.d, align 8, !tbaa !19
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #23
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_EvT_T0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.b, !llvm.loop !236
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 8 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.015 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not16 = icmp eq ptr %.sroa.0.015, %1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.0.018 = phi ptr [ %.sroa.0.015, %.lr.ph ], [ %.sroa.0.0, %bb.e ] ; 7 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.018, %bb.e ]
  %i.i = load double, ptr %.sroa.0.018, align 8, !tbaa !109
  %i.j = load double, ptr %0, align 8, !tbaa !109
  %i.k = fcmp olt double %i.i, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.018)
  %i.l = ptrtoint ptr %.sroa.0.018 to i64
  %i.m = sub i64 %i.l, %i.b                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn17, i64 192
  %i.p = udiv exact i64 %i.m, 96
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.018, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -96 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.q, i64 32, i1 false), !tbaa.struct !163
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #22
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v) #22
  %i.w = add nsw i64 %.010.i.i.i.i.i, -1
  %i.x = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !237

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 32, i1 false), !tbaa.struct !163
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #22
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.g
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !19
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !14  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.h
  br i1 %i.ad, label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !19
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #23
  br label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit

_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.018)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, %bb.d
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 96 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !238

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN4llvh10TimerGroup11PrintRecordESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #1 comdat {
bb.a:
  %1 = alloca %"struct.llvh::TimerGroup::PrintRecord", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN4llvh10TimerGroup11PrintRecordC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %0)
  %.sroa.0.06 = getelementptr inbounds i8, ptr %0, i64 -96 ; 2 uses
  %i.a = load double, ptr %1, align 8, !tbaa !109
  %i.b = load double, ptr %.sroa.0.06, align 8, !tbaa !109
  %i.c = fcmp olt double %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.08 = phi ptr [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.06, %bb.a ] ; 4 uses
  %.sroa.03.07 = phi ptr [ %.sroa.0.08, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.03.07, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.08, i64 32, i1 false), !tbaa.struct !163
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 32
  %i.e = getelementptr inbounds i8, ptr %.sroa.03.07, i64 -64
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #22
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 64
  %i.g = getelementptr inbounds i8, ptr %.sroa.03.07, i64 -32
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #22
  %.sroa.0.0 = getelementptr inbounds i8, ptr %.sroa.0.08, i64 -96 ; 2 uses
  %i.h = load double, ptr %1, align 8, !tbaa !109
  %i.i = load double, ptr %.sroa.0.0, align 8, !tbaa !109
  %i.j = fcmp olt double %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !239

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.03.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.08, %.lr.ph ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.03.0.lcssa, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 32, i1 false), !tbaa.struct !163
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #22
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #22
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  %i.r = load i64, ptr %i.p, align 8, !tbaa !19
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit

_ZN4llvh10TimerGroup11PrintRecordD2Ev.exit:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvh13format_objectIJidEE7snprintEPcj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3
  %i.g = load double, ptr %i.d, align 8, !tbaa !85
  %i.h = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.a, ptr noundef %i.c, i32 noundef %i.f, double noundef %i.g) #22
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN4llvh14object_creatorIN12_GLOBAL__N_112Name2PairMapEE4callEv() #1 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  store i32 48, ptr %i.b, align 4, !tbaa !198
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvh14object_deleterIN12_GLOBAL__N_112Name2PairMapEE4callEPv(ptr noundef %0) #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !137    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh9StringMapISt4pairIPNS_10TimerGroupENS0_INS_5TimerENS_15MallocAllocatorEEEES5_E5beginEv.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.b, %.critedge.i.i.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.g, %.critedge.i.i.i.i.i ], [ %i.b, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !119
  %magicptr.i.i.i.i.i = ptrtoint ptr %i.f to i64
  switch i64 %magicptr.i.i.i.i.i, label %_ZN4llvh9StringMapISt4pairIPNS_10TimerGroupENS0_INS_5TimerENS_15MallocAllocatorEEEES5_E5beginEv.exit.i [
    i64 0, label %.critedge.i.i.i.i.i
    i64 -8, label %.critedge.i.i.i.i.i
  ]

.critedge.i.i.i.i.i:                              ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  br label %.preheader.i.i.i.i, !llvm.loop !196

_ZN4llvh9StringMapISt4pairIPNS_10TimerGroupENS0_INS_5TimerENS_15MallocAllocatorEEEES5_E5beginEv.exit.i: ; preds = %.preheader.i.i.i.i, %bb.b
  %.sroa.0.1.i.i = phi ptr [ %i.b, %bb.b ], [ %.sroa.0.0.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.h ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.0.1.i.i, %i.i
  br i1 %.not4.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN4llvh9StringMapISt4pairIPNS_10TimerGroupENS0_INS_5TimerENS_15MallocAllocatorEEEES5_E5beginEv.exit.i
  %.pre.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !119
  br label %.lr.ph.i

_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit.loopexit.i: ; preds = %.critedge.i.i.i
  %.not.i = icmp eq ptr %storemerge.i.i, %i.i
  br i1 %.not.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit._crit_edge.i, label %.lr.ph.i, !llvm.loop !240

_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit._crit_edge.i: ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit.loopexit.i, %_ZN4llvh9StringMapISt4pairIPNS_10TimerGroupENS0_INS_5TimerENS_15MallocAllocatorEEEES5_E5beginEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !136
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN12_GLOBAL__N_112Name2PairMapD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit._crit_edge.i
  %i.m = load i32, ptr %i.c, align 8, !tbaa !138  ; 2 uses
  %.not10.i.i = icmp eq i32 %i.m, 0
  br i1 %.not10.i.i, label %_ZN12_GLOBAL__N_112Name2PairMapD2Ev.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.n = zext i32 %i.m to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !137
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !119  ; 3 uses
  %magicptr.i.i = ptrtoint ptr %i.q to i64
  switch i64 %magicptr.i.i, label %bb.d [
    i64 0, label %bb.e
    i64 -8, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @_ZN4llvh9StringMapINS_5TimerENS_15MallocAllocatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(25) %i.r) #22
  tail call void @free(ptr noundef nonnull align 8 dereferenceable(48) %i.q) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.n
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_112Name2PairMapD2Ev.exit, label %.lr.ph.i.i, !llvm.loop !241

.lr.ph.i:                                         ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit.loopexit.i, %.lr.ph.preheader.i
  %i.s = phi ptr [ %i.w, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit.loopexit.i ], [ %.pre.i, %.lr.ph.preheader.i ]
  %.sroa.01.05.i = phi ptr [ %storemerge.i.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit.loopexit.i ], [ %.sroa.0.1.i.i, %.lr.ph.preheader.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !242  ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.critedge.i.i.i.preheader, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4llvh10TimerGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.u) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 112) #23
  br label %.critedge.i.i.i.preheader

.critedge.i.i.i.preheader:                        ; preds = %bb.f, %.lr.ph.i
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.backedge, %.critedge.i.i.i.preheader
  %.pn.i.i = phi ptr [ %.sroa.01.05.i, %.critedge.i.i.i.preheader ], [ %storemerge.i.i, %.critedge.i.i.i.backedge ]
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 4 uses
  %i.w = load ptr, ptr %storemerge.i.i, align 8, !tbaa !119 ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.w to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit.loopexit.i [
    i64 0, label %.critedge.i.i.i.backedge
    i64 -8, label %.critedge.i.i.i.backedge
  ]

.critedge.i.i.i.backedge:                         ; preds = %.critedge.i.i.i, %.critedge.i.i.i
  br label %.critedge.i.i.i, !llvm.loop !196

_ZN12_GLOBAL__N_112Name2PairMapD2Ev.exit:         ; preds = %bb.e, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEENS_14StringMapEntryIS9_EEEppEv.exit._crit_edge.i, %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.x) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  br label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_112Name2PairMapD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh9StringMapINS_5TimerENS_15MallocAllocatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(25) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !136
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !138  ; 2 uses
  %.not10 = icmp eq i32 %i.e, 0
  br i1 %.not10, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.f = zext i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !119  ; 8 uses
  %magicptr = ptrtoint ptr %i.i to i64
  switch i64 %magicptr, label %bb.c [
    i64 0, label %bb.f
    i64 -8, label %bb.f
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @_ZN4llvh10TimerGroup11removeTimerERNS_5TimerE(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !19
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvh14StringMapEntryINS_5TimerEE7DestroyINS_15MallocAllocatorEEEvRT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZN4llvh14StringMapEntryINS_5TimerEE7DestroyINS_15MallocAllocatorEEEvRT_.exit

_ZN4llvh14StringMapEntryINS_5TimerEE7DestroyINS_15MallocAllocatorEEEvRT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @free(ptr noundef nonnull align 8 dereferenceable(168) %i.i) #22
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.lr.ph, %_ZN4llvh14StringMapEntryINS_5TimerEE7DestroyINS_15MallocAllocatorEEEvRT_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !244

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  %i.y = load ptr, ptr %0, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.y) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_Timer.cpp() #17 section ".text.startup" {
bb.a:
  %0 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 8), align 8, !tbaa !245
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 12), align 4
  %i.b = and i16 %i.a, -4096
  store i16 %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 12), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 72), align 8, !tbaa !246
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 80), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 88), align 8, !tbaa !9
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 96), align 8, !tbaa !247
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 100), align 4, !tbaa !248
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 104), align 8, !tbaa !249
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 144), align 8, !tbaa !250
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 152), align 8, !tbaa !75
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 160), align 8, !tbaa !7
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 169), align 1, !tbaa !200
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 168), align 8, !tbaa !251
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN12_GLOBAL__N_110TrackSpaceE, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 176), align 8, !tbaa !7
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN12_GLOBAL__N_110TrackSpaceE, ptr nonnull align 1 dereferenceable(13) @.str, i64 12) #22
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 40), align 8, !tbaa !118
  store i64 54, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 48), align 8, !tbaa !82
  %i.c = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 12), align 4
  %i.d = and i16 %i.c, -97
  %i.e = or disjoint i16 %i.d, 32
  store i16 %i.e, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_110TrackSpaceE, i64 12), align 4
  tail call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN12_GLOBAL__N_110TrackSpaceE) #22
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl6OptionD2Ev, ptr nonnull @_ZN12_GLOBAL__N_110TrackSpaceE, ptr nonnull @__dso_handle) #22 ; 0 uses
  %i.g = load atomic ptr, ptr @_ZL28LibSupportInfoOutputFilenameB5cxx11 acquire, align 8
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL28LibSupportInfoOutputFilenameB5cxx11, ptr noundef nonnull @_ZN4llvh14object_creatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4callEPv) #22
  br label %_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i

_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i: ; preds = %bb.b, %bb.a
  %i.h = load atomic ptr, ptr @_ZL28LibSupportInfoOutputFilenameB5cxx11 monotonic, align 8 ; 2 uses
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 8), align 8, !tbaa !245
  %i.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 12), align 4
  %i.j = and i16 %i.i, -4096
  store i16 %i.j, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 12), align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 16), i8 0, i64 56, i1 false)
  store ptr @_ZN4llvh2cl15GeneralCategoryE, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 72), align 8, !tbaa !246
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 80), align 8, !tbaa !13
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 112), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 88), align 8, !tbaa !9
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 96), align 8, !tbaa !247
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 100), align 4, !tbaa !248
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 104), align 8, !tbaa !249
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 144), align 8, !tbaa !250
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 152), align 8, !tbaa !201
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 184), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 168), align 8, !tbaa !132
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 176), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 184), align 8, !tbaa !19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 200), align 8, !tbaa !194
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 160), align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEEE, i64 16), ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvh2cl6parserINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 208), align 8, !tbaa !7
  tail call void @_ZN4llvh2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(216) @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, ptr nonnull @.str.3, i64 16) #22
  store ptr @.str.4, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 56), align 8, !tbaa !118
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 64), align 8, !tbaa !82
  store ptr @.str.5, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 40), align 8, !tbaa !118
  store i64 42, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 48), align 8, !tbaa !82
  %i.k = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 12), align 4
  %i.l = and i16 %i.k, -97
  %i.m = or disjoint i16 %i.l, 32
  store i16 %i.m, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 12), align 4
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 152), align 8, !tbaa !201
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 1, ptr %i.p, align 1, !tbaa !252
  store ptr @.str.40, ptr %0, align 8, !tbaa !19
  store i8 3, ptr %i.o, align 8, !tbaa !255
  %i.q = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #22
  %i.r = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(216) @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, ptr noundef nonnull align 8 dereferenceable(18) %0, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.q) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  br label %__cxx_global_var_init.2.exit

bb.d:                                             ; preds = %_ZL31getLibSupportInfoOutputFilenameB5cxx11v.exit.i
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 152), align 8, !tbaa !201
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 200), align 8, !tbaa !194
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, i64 168), ptr noundef nonnull align 8 dereferenceable(32) %i.h) #22
  br label %__cxx_global_var_init.2.exit

__cxx_global_var_init.2.exit:                     ; preds = %bb.c, %bb.d
  call void @_ZN4llvh2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(216) @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E) #22
  %i.s = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvh2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ENS0_6parserIS7_EEED2Ev, ptr nonnull @_ZN12_GLOBAL__N_118InfoOutputFilenameB5cxx11E, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !11, i64 0, !11, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!10, !11, i64 0}
!14 = !{!15, !17, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !5, i64 16}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!15, !18, i64 8}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_: argument 0"}
!23 = distinct !{!23, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_"}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTSN4llvh14raw_fd_ostreamE", !12, i64 0}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_: argument 0"}
!28 = distinct !{!28, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_"}
!29 = !{!30, !4, i64 0}
!30 = !{!"_ZTSSt10error_code", !4, i64 0, !31, i64 8}
!31 = !{!"p1 _ZTSNSt3_V214error_categoryE", !12, i64 0}
!32 = !{!30, !31, i64 8}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codeNS_3sys2fs9OpenFlagsEEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrISG_St14default_deleteISG_EEE4typeEDpOT0_: argument 0"}
!35 = distinct !{!35, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codeNS_3sys2fs9OpenFlagsEEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrISG_St14default_deleteISG_EEE4typeEDpOT0_"}
!36 = !{!37, !17, i64 16}
!37 = !{!"_ZTSN4llvh11raw_ostreamE", !17, i64 8, !17, i64 16, !17, i64 24, !38, i64 32}
!38 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!39 = !{!37, !17, i64 24}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_: argument 0"}
!42 = distinct !{!42, !"_ZN4llvh11make_uniqueINS_14raw_fd_ostreamEJibEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEDpOT0_"}
!43 = distinct !{null, null}
!44 = distinct !{null, null}
!45 = !{!46, !49, i64 129}
!46 = !{!"_ZTSN4llvh5TimerE", !47, i64 0, !47, i64 32, !15, i64 64, !15, i64 96, !49, i64 128, !49, i64 129, !50, i64 136, !51, i64 144, !52, i64 152}
!47 = !{!"_ZTSN4llvh10TimeRecordE", !48, i64 0, !48, i64 8, !48, i64 16, !18, i64 24}
!48 = !{!"double", !5, i64 0}
!49 = !{!"bool", !5, i64 0}
!50 = !{!"p1 _ZTSN4llvh10TimerGroupE", !12, i64 0}
!51 = !{!"p2 _ZTSN4llvh5TimerE", !11, i64 0}
!52 = !{!"p1 _ZTSN4llvh5TimerE", !12, i64 0}
!53 = !{!46, !49, i64 128}
!54 = !{!46, !50, i64 136}
!55 = !{!56, !4, i64 8}
!56 = !{!"_ZTSN4llvh3sys10SmartMutexILb1EEE", !57, i64 0, !4, i64 8, !49, i64 12}
!57 = !{!"_ZTSN4llvh3sys9MutexImplE", !12, i64 0}
!58 = !{!59, !52, i64 64}
!59 = !{!"_ZTSN4llvh10TimerGroupE", !15, i64 0, !15, i64 32, !52, i64 64, !60, i64 72, !65, i64 96, !50, i64 104}
!60 = !{!"_ZTSSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE", !61, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE", !62, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE12_Vector_implE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN4llvh10TimerGroup11PrintRecordESaIS2_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!64 = !{!"p1 _ZTSN4llvh10TimerGroup11PrintRecordE", !12, i64 0}
!65 = !{!"p2 _ZTSN4llvh10TimerGroupE", !11, i64 0}
!66 = !{!46, !51, i64 144}
!67 = !{!46, !52, i64 152}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!63, !64, i64 8}
!71 = !{!63, !64, i64 16}
!72 = !{!52, !52, i64 0}
!73 = !{!64, !64, i64 0}
!74 = distinct !{null, null}
!75 = !{!76, !49, i64 0}
!76 = !{!"_ZTSN4llvh2cl11opt_storageIbLb0ELb0EEE", !49, i64 0, !77, i64 8}
!77 = !{!"_ZTSN4llvh2cl11OptionValueIbEE", !78, i64 0}
!78 = !{!"_ZTSN4llvh2cl15OptionValueBaseIbLb0EEE", !79, i64 0}
!79 = !{!"_ZTSN4llvh2cl15OptionValueCopyIbEE", !80, i64 0, !49, i64 8, !49, i64 9}
!80 = !{!"_ZTSN4llvh2cl18GenericOptionValueE"}
!81 = !{!47, !18, i64 24}
!82 = !{!18, !18, i64 0}
!83 = !{!84, !18, i64 0}
!84 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE", !18, i64 0}
!85 = !{!48, !48, i64 0}
!86 = !{!47, !48, i64 16}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN4llvh10TimeRecord14getCurrentTimeEb: argument 0"}
!89 = distinct !{!89, !"_ZN4llvh10TimeRecord14getCurrentTimeEb"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN4llvh10TimeRecord14getCurrentTimeEb: argument 0"}
!92 = distinct !{!92, !"_ZN4llvh10TimeRecord14getCurrentTimeEb"}
!93 = !{!47, !48, i64 8}
!94 = !{!95, !17, i64 8}
!95 = !{!"_ZTSN4llvh18format_object_baseE", !17, i64 8}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!98 = distinct !{!98, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!99 = !{!100, !48, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm1EdLb0EE", !48, i64 0}
!101 = !{!102, !48, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm0EdLb0EE", !48, i64 0}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!105 = distinct !{!105, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!108 = distinct !{!108, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!109 = !{!47, !48, i64 0}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!112 = distinct !{!112, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN4llvh6formatIJlEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!115 = distinct !{!115, !"_ZN4llvh6formatIJlEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!116 = !{!117, !18, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0ElLb0EE", !18, i64 0}
!118 = !{!17, !17, i64 0}
!119 = !{!120, !120, i64 0}
!120 = !{!"p1 _ZTSN4llvh18StringMapEntryBaseE", !12, i64 0}
!121 = !{!122, !50, i64 0}
!122 = !{!"_ZTSSt4pairIPN4llvh10TimerGroupENS0_9StringMapINS0_5TimerENS0_15MallocAllocatorEEEE", !50, i64 0, !123, i64 8}
!123 = !{!"_ZTSN4llvh9StringMapINS_5TimerENS_15MallocAllocatorEEE", !124, i64 0, !126, i64 24}
!124 = !{!"_ZTSN4llvh13StringMapImplE", !125, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20}
!125 = !{!"p2 _ZTSN4llvh18StringMapEntryBaseE", !11, i64 0}
!126 = !{!"_ZTSN4llvh15MallocAllocatorE"}
!127 = !{!128, !52, i64 0}
!128 = !{!"_ZTSN4llvh10TimeRegionE", !52, i64 0}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN4llvh10TimeRecord14getCurrentTimeEb: argument 0"}
!131 = distinct !{!131, !"_ZN4llvh10TimeRecord14getCurrentTimeEb"}
!132 = !{!16, !17, i64 0}
!133 = !{!50, !50, i64 0}
!134 = !{!59, !65, i64 96}
!135 = !{!59, !50, i64 104}
!136 = !{!124, !4, i64 12}
!137 = !{!124, !125, i64 0}
!138 = !{!124, !4, i64 8}
!139 = distinct !{!139, !140}
!140 = !{!"llvm.loop.mustprogress"}
!141 = !{!142, !18, i64 0}
!142 = !{!"_ZTSN4llvh18StringMapEntryBaseE", !18, i64 0}
!143 = !{!63, !64, i64 0}
!144 = distinct !{!144, !140}
!145 = distinct !{!145, !140}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!148 = distinct !{!148, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!151 = distinct !{!151, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!152 = !{!153, !17, i64 0}
!153 = !{!"_ZTSN4llvh9StringRefE", !17, i64 0, !18, i64 8}
!154 = !{!150, !147}
!155 = !{!153, !18, i64 8}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!158 = distinct !{!158, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!161 = distinct !{!161, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!162 = !{!160, !157}
!163 = !{i64 0, i64 8, !85, i64 8, i64 8, !85, i64 16, i64 8, !85, i64 24, i64 8, !82}
!164 = distinct !{!164, !140}
!165 = distinct !{!165, !140}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!168 = distinct !{!168, !"_ZN4llvh6formatIJddEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE6rbeginEv: argument 0"}
!171 = distinct !{!171, !"_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE6rbeginEv"}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE4rendEv: argument 0"}
!174 = distinct !{!174, !"_ZNSt6vectorIN4llvh10TimerGroup11PrintRecordESaIS2_EE4rendEv"}
!175 = !{!37, !17, i64 8}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN4llvh10TimeRecord14getCurrentTimeEb: argument 0"}
!178 = distinct !{!178, !"_ZN4llvh10TimeRecord14getCurrentTimeEb"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN4llvh10TimeRecord14getCurrentTimeEb: argument 0"}
!181 = distinct !{!181, !"_ZN4llvh10TimeRecord14getCurrentTimeEb"}
!182 = distinct !{!182, !140}
!183 = distinct !{!183, !140}
!184 = distinct !{!184, !140}
!185 = distinct !{!185, !140}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZN4llvh6formatIJidEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!188 = distinct !{!188, !"_ZN4llvh6formatIJidEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!189 = !{!190, !4, i64 0}
!190 = !{!"_ZTSSt10_Head_baseILm0EiLb0EE", !4, i64 0}
!191 = distinct !{!191, !192}
!192 = !{!"llvm.loop.peeled.count", i32 1}
!193 = distinct !{!193, !140}
!194 = !{!195, !49, i64 40}
!195 = !{!"_ZTSN4llvh2cl15OptionValueCopyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !80, i64 0, !15, i64 8, !49, i64 40}
!196 = distinct !{!196, !140}
!197 = !{!124, !4, i64 16}
!198 = !{!124, !4, i64 20}
!199 = distinct !{!199, !140}
!200 = !{!79, !49, i64 9}
!201 = !{!202, !203, i64 0}
!202 = !{!"_ZTSN4llvh2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb1EEE", !203, i64 0, !204, i64 8}
!203 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!204 = !{!"_ZTSN4llvh2cl11OptionValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !195, i64 0}
!205 = !{!206, !4, i64 16}
!206 = !{!"_ZTSN4llvh2cl6OptionE", !4, i64 8, !4, i64 12, !4, i64 12, !4, i64 12, !4, i64 12, !4, i64 13, !4, i64 16, !4, i64 20, !153, i64 24, !153, i64 40, !153, i64 56, !207, i64 72, !208, i64 80, !49, i64 144}
!207 = !{!"p1 _ZTSN4llvh2cl14OptionCategoryE", !12, i64 0}
!208 = !{!"_ZTSN4llvh11SmallPtrSetIPNS_2cl10SubCommandELj4EEE", !209, i64 0, !5, i64 32}
!209 = !{!"_ZTSN4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEEE", !10, i64 0}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!212 = distinct !{!212, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!213 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!214 = !{!56, !49, i64 12}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!217 = distinct !{!217, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!220 = distinct !{!220, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!221 = !{!219, !216}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv: argument 0"}
!224 = distinct !{!224, !"_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZNK4llvh9StringRef3strB5cxx11Ev: argument 0"}
!227 = distinct !{!227, !"_ZNK4llvh9StringRef3strB5cxx11Ev"}
!228 = !{!226, !223}
!229 = distinct !{!229, !140}
!230 = distinct !{!230, !140}
!231 = distinct !{!231, !140}
!232 = distinct !{!232, !140}
!233 = distinct !{!233, !140}
!234 = distinct !{!234, !140}
!235 = distinct !{!235, !140}
!236 = distinct !{!236, !140}
!237 = distinct !{!237, !140}
!238 = distinct !{!238, !140}
!239 = distinct !{!239, !140}
!240 = distinct !{!240, !140}
!241 = distinct !{!241, !140}
!242 = !{!243, !50, i64 8}
!243 = !{!"_ZTSN4llvh14StringMapEntryISt4pairIPNS_10TimerGroupENS_9StringMapINS_5TimerENS_15MallocAllocatorEEEEEE", !142, i64 0, !122, i64 8}
!244 = distinct !{!244, !140}
!245 = !{!206, !4, i64 8}
!246 = !{!206, !207, i64 72}
!247 = !{!10, !4, i64 16}
!248 = !{!10, !4, i64 20}
!249 = !{!10, !4, i64 24}
!250 = !{!206, !49, i64 144}
!251 = !{!79, !49, i64 8}
!252 = !{!253, !254, i64 17}
!253 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !254, i64 16, !254, i64 17}
!254 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!255 = !{!253, !254, i64 16}
end_hunk_1
