Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.09?download=true
inline.NumInlined: 430
inline.NumDeleted: 171
begin_hunk_0_@_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write10write_char:bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 !dbg !8715 {
bb.a:
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !dbg !8739, !noalias !8737
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8740 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !8740, !alias.scope !8738, !noalias !8737, !noundef !294 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !8741
  tail call void @llvm.assume(i1 %i.c), !dbg !8742
  %.not.i.i = icmp eq i64 %2, 0, !dbg !8743
  br i1 %.not.i.i, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, label %bb.b, !dbg !8743

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8744
  %i.e = load ptr, ptr %i.d, align 8, !dbg !8744, !alias.scope !8738, !noalias !8737, !nonnull !294, !noundef !294
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b, !dbg !8745
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !8746
  %.pre.i.i = load i64, ptr %i.a, align 8, !dbg !8747, !alias.scope !8738, !noalias !8737
  br label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit, !dbg !8748

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ], !dbg !8747
  %i.h = add i64 %i.g, %2, !dbg !8747
  store i64 %i.h, ptr %i.a, align 8, !dbg !8747, !alias.scope !8738, !noalias !8737
  ret i1 false, !dbg !8749
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsZ_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10NoMessagesNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8750 {
bb.a:
  ret i8 5, !dbg !8751
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsZ_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10NoMessagesNtB7_4Flag12name_negated(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8752 {
bb.a:
  ret { ptr, i64 } { ptr @632, i64 8 }, !dbg !8753
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXsZ_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10NoMessagesNtB7_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(608) initializes((578, 579)) %2) unnamed_addr #0 !dbg !8754 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !8755
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 578, !dbg !8756
  %i.c = zext i1 %i.a to i8, !dbg !8756
  store i8 %i.c, ptr %i.b, align 2, !dbg !8756
  ret ptr null, !dbg !8757
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsZ_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10NoMessagesNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8758 {
bb.a:
  ret { ptr, i64 } { ptr @633, i64 187 }, !dbg !8759
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsZ_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10NoMessagesNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8760 {
bb.a:
  ret { ptr, i64 } { ptr @634, i64 29 }, !dbg !8761
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10NoMessagesNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8762 {
bb.a:
  ret i1 true, !dbg !8763
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsZ_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10NoMessagesNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8764 {
bb.a:
  ret { ptr, i64 } { ptr @635, i64 11 }, !dbg !8765
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXs_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB4_15AutoHybridRegexNtB6_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8766 {
bb.a:
  ret i8 1, !dbg !8767
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB4_15AutoHybridRegexNtB6_4Flag12name_negated(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8768 {
bb.a:
  ret { ptr, i64 } { ptr @636, i64 20 }, !dbg !8769
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXs_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB4_15AutoHybridRegexNtB6_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(608) initializes((596, 597)) %2) unnamed_addr #0 !dbg !8770 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !8772
  %. = zext i1 %i.a to i8, !dbg !8773
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 596, !dbg !8774
  store i8 %., ptr %i.b, align 4, !dbg !8774
  ret ptr null, !dbg !8775
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB4_15AutoHybridRegexNtB6_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8776 {
bb.a:
  ret { ptr, i64 } { ptr @637, i64 1489 }, !dbg !8777
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB4_15AutoHybridRegexNtB6_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8778 {
bb.a:
  ret { ptr, i64 } { ptr @638, i64 38 }, !dbg !8779
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB4_15AutoHybridRegexNtB6_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8780 {
bb.a:
  ret i1 true, !dbg !8781
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB4_15AutoHybridRegexNtB6_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8782 {
bb.a:
  ret { ptr, i64 } { ptr @639, i64 17 }, !dbg !8783
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterINtNtBa_6borrow3CowShENtNtB6_7set_val9SetValZSTINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBa_3vec9into_iter8IntoIterB1t_ENCINvMse_NtB6_3setINtB3N_8BTreeSetB1t_E16from_sorted_iterB32_E0EENtNtNtB2l_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8784 {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 6 uses
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !294 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.promoted29 = load ptr, ptr %i.d, align 8
  br label %bb.b, !dbg !8910

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtNtNtBH_11collections5btree7set_val9SetValZSTEECs2NzvFoTxuAy_2rg.exit, %bb.a
  %i.g = phi ptr [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtNtNtBH_11collections5btree7set_val9SetValZSTEECs2NzvFoTxuAy_2rg.exit ], [ %.promoted29, %bb.a ] ; 5 uses
  %.sroa.0.0.copyload1.i.i.i28 = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtNtNtBH_11collections5btree7set_val9SetValZSTEECs2NzvFoTxuAy_2rg.exit ], [ %.promoted, %bb.a ], !dbg !8911 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8911
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !8912
  store i64 -3, ptr %1, align 8, !dbg !8913
  %.not = icmp eq i64 %.sroa.0.0.copyload1.i.i.i28, -3, !dbg !8914
  br i1 %.not, label %bb.c, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit, !dbg !8915

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !8878), !dbg !8916
  call void @llvm.experimental.noalias.scope.decl(metadata !8879), !dbg !8917
  %i.h = icmp eq ptr %i.g, %i.c, !dbg !8918
  br i1 %i.h, label %.loopexit, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.i, !dbg !8919

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !8920 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !dbg !8921, !alias.scope !8884, !noalias !8885
  %.sroa.0.0.copyload1.i = load i64, ptr %i.g, align 8, !dbg !8922, !noalias !8886 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -2, !dbg !8923
  br i1 %.not.i, label %.loopexit, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.thread16, !dbg !8924

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.thread16: ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.i
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !8922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !dbg !8925, !noalias !8878
  br label %bb.d, !dbg !8926

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false), !dbg !8927
  %.not7 = icmp eq i64 %.sroa.0.0.copyload1.i.i.i28, -2, !dbg !8912
  br i1 %.not7, label %.loopexit, label %bb.d, !dbg !8926

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.thread16
  %i.j = phi ptr [ %i.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.thread16 ], [ %i.g, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit ] ; 4 uses
  %.sroa.0.019 = phi i64 [ %.sroa.0.0.copyload1.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.thread16 ], [ %.sroa.0.0.copyload1.i.i.i28, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false), !dbg !8928
  store i64 %.sroa.0.019, ptr %i.a, align 8, !dbg !8929
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !8930
  call void @llvm.experimental.noalias.scope.decl(metadata !8887), !dbg !8931
  call void @llvm.experimental.noalias.scope.decl(metadata !8890), !dbg !8931
  call void @llvm.experimental.noalias.scope.decl(metadata !8891), !dbg !8932
  call void @llvm.experimental.noalias.scope.decl(metadata !8892), !dbg !8933
  call void @llvm.experimental.noalias.scope.decl(metadata !8895), !dbg !8934
  %i.k = icmp eq ptr %i.j, %i.c, !dbg !8935
  br i1 %i.k, label %bb.g, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.i.i.i, !dbg !8936

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !8937 ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !dbg !8938, !alias.scope !8896, !noalias !8897
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.j, align 8, !dbg !8939, !noalias !8898 ; 4 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -2, !dbg !8940
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !dbg !8941

.loopexit:                                        ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtNtB13_6borrow3CowShEENCINvMse_NtNtNtB13_11collections5btree3setINtB2h_8BTreeSetB1K_E16from_sorted_iterBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit, %bb.c, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.i
  store i64 -2, ptr %0, align 8, !dbg !8942
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7), !dbg !8930
  br label %bb.e, !dbg !8943

bb.e:                                             ; preds = %_RNvYINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs2NzvFoTxuAy_2rg.exit.thread, %bb.g, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8944
  ret void, !dbg !8945

bb.f:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !8939
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %1, align 8, !dbg !8946, !alias.scope !8887, !noalias !8890
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i, i64 16, i1 false), !dbg !8946
  %i.m = icmp ne i64 %.sroa.0.0.copyload1.i.i.i, -3, !dbg !8947
  call void @llvm.assume(i1 %i.m), !dbg !8948
  %.val9 = load i64, ptr %i.e, align 8, !dbg !8949, !alias.scope !8900, !noalias !8901, !noundef !294 ; 2 uses
  %.val11 = load i64, ptr %i.f, align 8, !dbg !8949, !alias.scope !8901, !noalias !8900, !noundef !294
  %i.n = icmp eq i64 %.val9, %.val11, !dbg !8950
  br i1 %i.n, label %_RNvYINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs2NzvFoTxuAy_2rg.exit, label %_RNvYINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs2NzvFoTxuAy_2rg.exit.thread, !dbg !8950

bb.g:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_6borrow3CowShEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.d
  store i64 -2, ptr %1, align 8, !dbg !8946, !alias.scope !8887, !noalias !8890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !8951
  br label %bb.e, !dbg !8952

_RNvYINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.f
  %.val10 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !8949, !nonnull !294, !noundef !294
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !8949, !nonnull !294, !noundef !294
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val10, i64 range(i64 0, -9223372036854775808) %.val9), !dbg !8953, !alias.scope !8907, !noalias !8908
  %.not23 = icmp eq i32 %bcmp.i.i.i.i, 0, !dbg !8953
  br i1 %.not23, label %bb.h, label %_RNvYINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs2NzvFoTxuAy_2rg.exit.thread, !dbg !8949

bb.h:                                             ; preds = %_RNvYINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs2NzvFoTxuAy_2rg.exit
  %i.o = icmp eq i64 %.sroa.0.019, -1, !dbg !8954
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtNtNtBH_11collections5btree7set_val9SetValZSTEECs2NzvFoTxuAy_2rg.exit, label %bb.i, !dbg !8954

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i.i unwind label %bb.j, !dbg !8955

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.k, !dbg !8956

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !8955
  unreachable, !dbg !8955

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %bb.j
  resume { ptr, i32 } %i.p, !dbg !8955

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !dbg !8957
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtNtNtBH_11collections5btree7set_val9SetValZSTEECs2NzvFoTxuAy_2rg.exit, !dbg !8954

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtNtNtBH_11collections5btree7set_val9SetValZSTEECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8944
  br label %bb.b, !dbg !8910

_RNvYINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs2NzvFoTxuAy_2rg.exit.thread: ; preds = %bb.f, %_RNvYINtNtCsexYYUdYSQU6_5alloc6borrow3CowShENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs2NzvFoTxuAy_2rg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !8958
  br label %bb.e, !dbg !8959
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i1, i8 } @_RNvXsa_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5CountNtB7_4Flag10name_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8960 {
bb.a:
  ret { i1, i8 } { i1 true, i8 99 }, !dbg !8961
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsa_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5CountNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8962 {
bb.a:
  ret i8 4, !dbg !8963
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXsa_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5CountNtB7_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(608) %2) unnamed_addr #0 !dbg !8964 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !8967
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !8968, !prof !480

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @640, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @641) #28, !dbg !8969
  unreachable, !dbg !8969

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 556, !dbg !8970
  store i8 0, ptr %i.b, align 4, !dbg !8971
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 557, !dbg !8970
  store i8 3, ptr %i.c, align 1, !dbg !8971
  ret ptr null, !dbg !8972
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsa_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5CountNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8973 {
bb.a:
  ret { ptr, i64 } { ptr @642, i64 1494 }, !dbg !8974
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsa_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5CountNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8975 {
bb.a:
  ret { ptr, i64 } { ptr @643, i64 43 }, !dbg !8976
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsa_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5CountNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8977 {
bb.a:
  ret i1 true, !dbg !8978
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsa_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5CountNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8979 {
bb.a:
  ret { ptr, i64 } { ptr @644, i64 5 }, !dbg !8980
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsb_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_12CountMatchesNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8981 {
bb.a:
  ret i8 4, !dbg !8982
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXsb_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_12CountMatchesNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8983 {
bb.a:
  ret { ptr, i64 } { ptr null, i64 undef }, !dbg !8984
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXsb_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_12CountMatchesNtB7_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(608) %2) unnamed_addr #0 !dbg !8985 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !8988
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !8989, !prof !480

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @645, ptr noundef nonnull inttoptr (i64 71 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @646) #28, !dbg !8990
  unreachable, !dbg !8990

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 556, !dbg !8991
  store i8 0, ptr %i.b, align 4, !dbg !8992
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 557, !dbg !8991
  store i8 4, ptr %i.c, align 1, !dbg !8992
  ret ptr null, !dbg !8993
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsb_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_12CountMatchesNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8994 {
bb.a:
  ret { ptr, i64 } { ptr @647, i64 657 }, !dbg !8995
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsb_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_12CountMatchesNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8996 {
bb.a:
  ret { ptr, i64 } { ptr @648, i64 40 }, !dbg !8997
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_12CountMatchesNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !8998 {
bb.a:
  ret i1 true, !dbg !8999
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsb_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_12CountMatchesNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !9000 {
bb.a:
  ret { ptr, i64 } { ptr @649, i64 13 }, !dbg !9001
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsc_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4CrlfNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !9002 {
bb.a:
  ret i8 1, !dbg !9003
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsc_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4CrlfNtB7_4Flag12name_negated(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !9004 {
bb.a:
  ret { ptr, i64 } { ptr @650, i64 7 }, !dbg !9005
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXsc_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4CrlfNtB7_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(608) initializes((559, 560)) %2) unnamed_addr #0 !dbg !9006 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !9007 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 559, !dbg !9008
  %i.c = zext i1 %i.a to i8, !dbg !9008
  store i8 %i.c, ptr %i.b, align 1, !dbg !9008
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !9009

bb.b:                                             ; preds = %bb.c, %bb.a
  ret ptr null, !dbg !9010

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 582, !dbg !9011
  store i8 0, ptr %i.d, align 2, !dbg !9011
  br label %bb.b, !dbg !9012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsc_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_4CrlfNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !9013 {
bb.a:
  ret { ptr, i64 } { ptr @651, i64 616 }, !dbg !9014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2NzvFoTxuAy_2rg
declare hidden void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtNtB9_3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxIB1n_jEEEENCNvMs9_BZ_BW_3new0ECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEENCNvMs9_BZ_BW_3new0ECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtCshhHc5tDBDRu_12grep_printer5stats5StatsENCNvMs9_BZ_BW_3new0ECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc4zero5InnerENCNvMs9_BZ_BW_3new0ECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_BZ_BW_3new0ECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std4path7PathBufE8grow_oneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCshhHc5tDBDRu_12grep_printer5color13UserColorSpecE8grow_oneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10TypeChangeE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs13PatternSourceE8grow_oneBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE16with_capacity_inCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare noundef i128 @_RNvNtNtCs8hX8rJVGcL_10std_detect6detect5cache21detect_and_initialize() unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCskKLDkoKarTP_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCskKLDkoKarTP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2NzvFoTxuAy_2rg5flags3doc20render_custom_markupNCNvNtB2_3man13generate_flag0EB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs2NzvFoTxuAy_2rg5flags3doc20render_custom_markupNCNvNtB2_3man13generate_flags_0EB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringE5entryB1b_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), i8 noundef range(i8 0, 7)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs2_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_5EntryNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBd_6string6StringE9or_insertB1g_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtCs2NzvFoTxuAy_2rg5flags8CategoryNtNtBb_6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsexYYUdYSQU6_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsgwyS1EwTFAS_8grep_cli5human25parse_human_readable_size(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue12unwrap_value(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #17

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs7A2UQWilAX1_4bstr12escape_bytesNtB5_13UnescapeState5bytes(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs7A2UQWilAX1_4bstr12escape_bytesNtB5_13UnescapeState9bytes_raw(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCs7A2UQWilAX1_4bstr12escape_bytesNtB5_13UnescapeState6bytes2(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef range(i32 0, 1114112), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i8 @_RNvNtCs7A2UQWilAX1_4bstr12escape_bytes16char_to_hexdigit(i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_NtCshhHc5tDBDRu_12grep_printer5colorNtB5_13UserColorSpecNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs_NtCseNfSUspcXaQ_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorE4fromCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtCs2NzvFoTxuAy_2rg5flags7lowargsNtB5_16ContextSeparator3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB4_8Encoding3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs_NtCseNfSUspcXaQ_6anyhow5errorNtB6_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorE4fromCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtNtCs2NzvFoTxuAy_2rg5flags7lowargsNtB5_21FieldContextSeparator3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs9_NtNtCs2NzvFoTxuAy_2rg5flags7lowargsNtB5_19FieldMatchSeparator3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB5_15HyperlinkFormatNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { cold }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind }
attributes #28 = { noinline noreturn }
attributes #29 = { noinline }
attributes #30 = { inlinehint }

!llvm.module.flags = !{!283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !290, producer: "clang LLVM (rustc version 1.100.0-nightly (bff8e12ff 2026-08-26))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappinghECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 553, type: !295, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!2 = distinct !DISubprogram(name: "_mm_loadu_si128", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128", scope: !337, file: !334, line: 1339, type: !295, scopeLine: 1339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!3 = distinct !DILexicalBlock(scope: !2, file: !334, line: 1340, column: 5)
!4 = distinct !DISubprogram(name: "_mm_cmpeq_epi8", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8", scope: !337, file: !334, line: 919, type: !342, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!5 = distinct !DISubprogram(name: "_mm_movemask_epi8", linkageName: "_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8", scope: !337, file: !334, line: 1566, type: !342, scopeLine: 1566, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!6 = distinct !DILexicalBlock(scope: !5, file: !334, line: 1568, column: 9)
!7 = distinct !DILexicalBlock(scope: !6, file: !334, line: 1569, column: 9)
!8 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg", scope: !356, file: !353, line: 19, type: !295, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!9 = distinct !DILexicalBlock(scope: !8, file: !353, line: 20, column: 9)
!10 = distinct !DISubprogram(name: "eq<u8, u8, alloc::alloc::Global, alloc::alloc::Global>", linkageName: "_RNvXNtNtCsexYYUdYSQU6_5alloc3vec10partial_eqINtB4_3VechENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg", scope: !359, file: !357, line: 15, type: !342, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!11 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq", scope: !362, file: !360, line: 350, type: !342, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!12 = distinct !DISubprogram(name: "eq<alloc::string::String, alloc::string::String>", linkageName: "_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_9PartialEq2eqCs2NzvFoTxuAy_2rg", scope: !366, file: !363, line: 2398, type: !295, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!13 = distinct !DISubprogram(name: "equivalent<alloc::string::String, alloc::string::String>", linkageName: "_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2NzvFoTxuAy_2rg", scope: !368, file: !367, line: 156, type: !342, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!14 = distinct !DISubprogram(name: "{closure#0}<alloc::string::String, alloc::string::String, ()>", linkageName: "_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyNtNtCsexYYUdYSQU6_5alloc6string6StringBO_uE0Cs2NzvFoTxuAy_2rg", scope: !369, file: !321, line: 221, type: !342, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!15 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCs2NzvFoTxuAy_2rg", scope: !371, file: !353, line: 151, type: !295, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!16 = distinct !DILexicalBlock(scope: !15, file: !353, line: 156, column: 13)
!17 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg", scope: !312, file: !310, line: 434, type: !295, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!18 = distinct !DILexicalBlock(scope: !17, file: !310, line: 443, column: 13)
!19 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCs2NzvFoTxuAy_2rg", scope: !312, file: !310, line: 763, type: !295, scopeLine: 763, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!20 = distinct !DILexicalBlock(scope: !17, file: !310, line: 436, column: 13)
!21 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCskKLDkoKarTP_4core4hint16assert_unchecked", scope: !392, file: !391, line: 202, type: !295, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!22 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPh20offset_from_unsignedCs2NzvFoTxuAy_2rg", scope: !408, file: !406, line: 706, type: !295, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!23 = distinct !DILexicalBlock(scope: !22, file: !406, line: 731, column: 9)
!24 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh20offset_from_unsignedCs2NzvFoTxuAy_2rg", scope: !319, file: !316, line: 888, type: !295, scopeLine: 888, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!25 = distinct !DISubprogram(name: "offset_from_unsigned<u8>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullhE20offset_from_unsignedCs2NzvFoTxuAy_2rg", scope: !414, file: !412, line: 893, type: !295, scopeLine: 893, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!26 = distinct !DISubprogram(name: "make_slice<u8>", linkageName: "_RNvMs2H_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhE10make_sliceCs2NzvFoTxuAy_2rg", scope: !384, file: !415, line: 89, type: !295, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!27 = distinct !DILexicalBlock(scope: !26, file: !415, line: 25, column: 86)
!28 = distinct !DILexicalBlock(scope: !27, file: !415, line: 33, column: 13)
!29 = distinct !DISubprogram(name: "append_elements<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg", scope: !315, file: !306, line: 2958, type: !295, scopeLine: 2958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!30 = distinct !DISubprogram(name: "len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE3lenCs2NzvFoTxuAy_2rg", scope: !315, file: !306, line: 3099, type: !295, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!31 = distinct !DISubprogram(name: "append_elements_unreserved<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE26append_elements_unreservedCs2NzvFoTxuAy_2rg", scope: !315, file: !306, line: 2977, type: !295, scopeLine: 2977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!32 = distinct !DILexicalBlock(scope: !31, file: !306, line: 2978, column: 9)
!33 = distinct !DILexicalBlock(scope: !30, file: !306, line: 3100, column: 9)
!34 = distinct !DILexicalBlock(scope: !32, file: !306, line: 2979, column: 9)
!35 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs2NzvFoTxuAy_2rg", scope: !312, file: !310, line: 610, type: !295, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!36 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs2NzvFoTxuAy_2rg", scope: !312, file: !310, line: 605, type: !295, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!37 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE3ptrCs2NzvFoTxuAy_2rg", scope: !314, file: !310, line: 295, type: !295, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!38 = distinct !DISubprogram(name: "as_mut_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE10as_mut_ptrCs2NzvFoTxuAy_2rg", scope: !315, file: !306, line: 2049, type: !295, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!39 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCs2NzvFoTxuAy_2rg", scope: !319, file: !316, line: 937, type: !295, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!40 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappinghECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 553, type: !295, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!41 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!42 = distinct !DISubprogram(name: "drop_glue<alloc::string::String>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!43 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!44 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCs2NzvFoTxuAy_2rg", scope: !314, file: !310, line: 175, type: !295, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!45 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE16with_capacity_inCs2NzvFoTxuAy_2rg", scope: !315, file: !306, line: 968, type: !295, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!46 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs2NzvFoTxuAy_2rg", scope: !436, file: !432, line: 446, type: !295, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!47 = distinct !DILexicalBlock(scope: !46, file: !432, line: 447, column: 17)
!48 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsexYYUdYSQU6_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECs2NzvFoTxuAy_2rg", scope: !434, file: !432, line: 396, type: !295, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!49 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc5sliceSh6to_vecCs2NzvFoTxuAy_2rg", scope: !434, file: !432, line: 372, type: !295, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!50 = distinct !DISubprogram(name: "to_owned<u8>", linkageName: "_RNvXs7_NtCsexYYUdYSQU6_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCs2NzvFoTxuAy_2rg", scope: !437, file: !432, line: 838, type: !295, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!51 = distinct !DISubprogram(name: "to_owned", linkageName: "_RNvXs2_NtCsexYYUdYSQU6_5alloc3streNtNtB7_6borrow7ToOwned8to_owned", scope: !438, file: !377, line: 250, type: !295, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!52 = distinct !DISubprogram(name: "serialize_str", linkageName: "_RNvXs_NtNtCsgixc6xHyZOO_10serde_json5value3serNtB4_10SerializerNtNtCs696aDvbrEFJ_10serde_core3ser10Serializer13serialize_str", scope: !441, file: !439, line: 168, type: !295, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!53 = distinct !DILexicalBlock(scope: !47, file: !432, line: 448, column: 17)
!54 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr19copy_nonoverlappinghECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 553, type: !295, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!55 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCs2NzvFoTxuAy_2rg", scope: !408, file: !406, line: 1231, type: !295, scopeLine: 1231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!56 = distinct !DISubprogram(name: "drop_glue<std::sys::os_str::bytes::Buf>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!57 = distinct !DISubprogram(name: "drop_glue<std::ffi::os_str::OsString>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!58 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!59 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<alloc::string::String, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!60 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<grep_printer::hyperlink::HyperlinkAlias, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!61 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<grep_printer::hyperlink::HyperlinkAlias, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCshhHc5tDBDRu_12grep_printer9hyperlink14HyperlinkAliasEECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!62 = distinct !DISubprogram(name: "drop_glue<alloc::boxed::Box<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !342, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!63 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem15size_of_val_rawDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB14_4SyncEL_ECs2NzvFoTxuAy_2rg", scope: !445, file: !444, line: 466, type: !295, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!64 = distinct !DISubprogram(name: "for_value_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCskKLDkoKarTP_4core5alloc6layoutNtB3_6Layout13for_value_rawDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1q_4SyncEL_ECs2NzvFoTxuAy_2rg", scope: !449, file: !446, line: 259, type: !295, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!65 = distinct !DISubprogram(name: "drop<(dyn core::error::Error + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg", scope: !452, file: !450, line: 1984, type: !342, scopeLine: 1984, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!66 = distinct !DILexicalBlock(scope: !65, file: !450, line: 1987, column: 9)
!67 = distinct !DILexicalBlock(scope: !66, file: !450, line: 1990, column: 13)
!68 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem16align_of_val_rawDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB15_4SyncEL_ECs2NzvFoTxuAy_2rg", scope: !445, file: !444, line: 640, type: !295, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!69 = distinct !DISubprogram(name: "of_val_raw<(dyn core::error::Error + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCskKLDkoKarTP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1r_4SyncEL_ECs2NzvFoTxuAy_2rg", scope: !456, file: !454, line: 157, type: !295, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!70 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsexYYUdYSQU6_5alloc5alloc15dealloc_nonnull", scope: !458, file: !457, line: 174, type: !295, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!71 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global23deallocate_impl_runtime", scope: !459, file: !457, line: 311, type: !295, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!72 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc5allocNtB5_6Global15deallocate_impl", scope: !459, file: !457, line: 435, type: !295, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!73 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate", scope: !460, file: !457, line: 552, type: !342, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!74 = distinct !DISubprogram(name: "drop_glue<std::path::PathBuf>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!75 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCsexYYUdYSQU6_5alloc3fmt6format0Cs2NzvFoTxuAy_2rg", scope: !476, file: !474, line: 659, type: !342, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!76 = distinct !DISubprogram(name: "map_or_else<&str, alloc::string::String, alloc::fmt::format::{closure_env#0}, fn(&str) -> alloc::string::String>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 1271, type: !342, scopeLine: 1271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!77 = distinct !DISubprogram(name: "drop_glue<anyhow::Error>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCseNfSUspcXaQ_6anyhow5ErrorECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 848, type: !295, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!78 = distinct !DISubprogram(name: "{closure#0}<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>, fn() -> alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>>>", linkageName: "_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1J_6string6StringEE5force0E0Cs2NzvFoTxuAy_2rg", scope: !486, file: !481, line: 227, type: !295, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!79 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>, fn() -> alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem7replaceINtNtB4_6option6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB10_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1V_6string6StringEE5force0EECs2NzvFoTxuAy_2rg", scope: !445, file: !444, line: 961, type: !295, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!80 = distinct !DISubprogram(name: "take<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>, fn() -> alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtBM_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1G_6string6StringEE5force0E4takeCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 1902, type: !295, scopeLine: 1902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!81 = distinct !DILexicalBlock(scope: !79, file: !444, line: 975, column: 9)
!82 = distinct !DISubprogram(name: "unwrap<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>, fn() -> alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtBM_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1G_6string6StringEE5force0E6unwrapCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 1013, type: !295, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!83 = distinct !DISubprogram(name: "is_poisoned", linkageName: "_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB2_9OnceState11is_poisoned", scope: !492, file: !487, line: 42, type: !295, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!84 = distinct !DISubprogram(name: "is_poisoned", linkageName: "_RNvMs3_NtNtCsG258MDvU3F_3std4sync4onceNtB5_9OnceState11is_poisoned", scope: !493, file: !481, line: 398, type: !295, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!85 = distinct !DISubprogram(name: "{closure#0}<alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>, fn() -> alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>>", linkageName: "_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBY_6string6StringEE5force0Cs2NzvFoTxuAy_2rg", scope: !497, file: !494, line: 242, type: !342, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!86 = distinct !DISubprogram(name: "read<fn() -> alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readFEINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBD_6string6StringEECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 1717, type: !295, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!87 = distinct !DISubprogram(name: "take<fn() -> alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3mem13manually_dropINtB2_12ManuallyDropFEINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB19_6string6StringEE4takeCs2NzvFoTxuAy_2rg", scope: !500, file: !498, line: 225, type: !295, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!88 = distinct !DILexicalBlock(scope: !85, file: !494, line: 248, column: 13)
!89 = distinct !DILexicalBlock(scope: !88, file: !494, line: 249, column: 13)
!90 = distinct !DILexicalBlock(scope: !89, file: !494, line: 250, column: 13)
!91 = distinct !DISubprogram(name: "call_once<fn() -> alloc::vec::Vec<alloc::string::String, alloc::alloc::Global>, ()>", linkageName: "_RNvYFEINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB9_6string6StringEINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2NzvFoTxuAy_2rg", scope: !504, file: !501, line: 250, type: !295, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!92 = distinct !DISubprogram(name: "{closure#0}<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<&str, alloc::alloc::Global>, fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>>", linkageName: "_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0E0Cs2NzvFoTxuAy_2rg", scope: !486, file: !481, line: 227, type: !295, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!93 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<&str, alloc::alloc::Global>, fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem7replaceINtNtB4_6option6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB10_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0EECs2NzvFoTxuAy_2rg", scope: !445, file: !444, line: 961, type: !295, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!94 = distinct !DISubprogram(name: "take<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<&str, alloc::alloc::Global>, fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtBM_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0E4takeCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 1902, type: !295, scopeLine: 1902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!95 = distinct !DILexicalBlock(scope: !93, file: !444, line: 975, column: 9)
!96 = distinct !DISubprogram(name: "unwrap<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::vec::Vec<&str, alloc::alloc::Global>, fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtBM_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0E6unwrapCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 1013, type: !295, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!97 = distinct !DISubprogram(name: "is_poisoned", linkageName: "_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB2_9OnceState11is_poisoned", scope: !492, file: !487, line: 42, type: !295, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!98 = distinct !DISubprogram(name: "is_poisoned", linkageName: "_RNvMs3_NtNtCsG258MDvU3F_3std4sync4onceNtB5_9OnceState11is_poisoned", scope: !493, file: !481, line: 398, type: !295, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!99 = distinct !DISubprogram(name: "{closure#0}<alloc::vec::Vec<&str, alloc::alloc::Global>, fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>", linkageName: "_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0Cs2NzvFoTxuAy_2rg", scope: !497, file: !494, line: 242, type: !342, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!100 = distinct !DISubprogram(name: "read<fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readFEINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 1717, type: !295, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!101 = distinct !DISubprogram(name: "take<fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3mem13manually_dropINtB2_12ManuallyDropFEINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE4takeCs2NzvFoTxuAy_2rg", scope: !500, file: !498, line: 225, type: !295, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!102 = distinct !DILexicalBlock(scope: !99, file: !494, line: 248, column: 13)
!103 = distinct !DILexicalBlock(scope: !102, file: !494, line: 249, column: 13)
!104 = distinct !DILexicalBlock(scope: !103, file: !494, line: 250, column: 13)
!105 = distinct !DISubprogram(name: "call_once<fn() -> alloc::vec::Vec<&str, alloc::alloc::Global>, ()>", linkageName: "_RNvYFEINtNtCsexYYUdYSQU6_5alloc3vec3VecReEINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2NzvFoTxuAy_2rg", scope: !504, file: !501, line: 250, type: !295, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!106 = distinct !DISubprogram(name: "{closure#0}<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::string::String, fn() -> alloc::string::String>>", linkageName: "_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0E0Cs2NzvFoTxuAy_2rg", scope: !486, file: !481, line: 227, type: !295, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!107 = distinct !DISubprogram(name: "replace<core::option::Option<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::string::String, fn() -> alloc::string::String>>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem7replaceINtNtB4_6option6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB10_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0EECs2NzvFoTxuAy_2rg", scope: !445, file: !444, line: 961, type: !295, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!108 = distinct !DISubprogram(name: "take<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::string::String, fn() -> alloc::string::String>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtBM_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0E4takeCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 1902, type: !295, scopeLine: 1902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!109 = distinct !DILexicalBlock(scope: !107, file: !444, line: 975, column: 9)
!110 = distinct !DISubprogram(name: "unwrap<std::sync::lazy_lock::{impl#0}::force::{closure_env#0}<alloc::string::String, fn() -> alloc::string::String>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtBM_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0E6unwrapCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 1013, type: !295, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!111 = distinct !DISubprogram(name: "is_poisoned", linkageName: "_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync4once5futexNtB2_9OnceState11is_poisoned", scope: !492, file: !487, line: 42, type: !295, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!112 = distinct !DISubprogram(name: "is_poisoned", linkageName: "_RNvMs3_NtNtCsG258MDvU3F_3std4sync4onceNtB5_9OnceState11is_poisoned", scope: !493, file: !481, line: 398, type: !295, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!113 = distinct !DISubprogram(name: "{closure#0}<alloc::string::String, fn() -> alloc::string::String>", linkageName: "_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0Cs2NzvFoTxuAy_2rg", scope: !497, file: !494, line: 242, type: !342, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!114 = distinct !DISubprogram(name: "read<fn() -> alloc::string::String>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr4readFENtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg", scope: !317, file: !333, line: 1717, type: !295, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!115 = distinct !DISubprogram(name: "take<fn() -> alloc::string::String>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3mem13manually_dropINtB2_12ManuallyDropFENtNtCsexYYUdYSQU6_5alloc6string6StringE4takeCs2NzvFoTxuAy_2rg", scope: !500, file: !498, line: 225, type: !295, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!116 = distinct !DILexicalBlock(scope: !113, file: !494, line: 248, column: 13)
!117 = distinct !DILexicalBlock(scope: !116, file: !494, line: 249, column: 13)
!118 = distinct !DILexicalBlock(scope: !117, file: !494, line: 250, column: 13)
!119 = distinct !DISubprogram(name: "call_once<fn() -> alloc::string::String, ()>", linkageName: "_RNvYFENtNtCsexYYUdYSQU6_5alloc6string6StringINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_onceCs2NzvFoTxuAy_2rg", scope: !504, file: !501, line: 250, type: !295, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!120 = distinct !DISubprogram(name: "full", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control3tagNtB2_3Tag4full", scope: !331, file: !328, line: 35, type: !295, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!121 = distinct !DISubprogram(name: "find_or_find_insert_index_inner", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner31find_or_find_insert_index_inner", scope: !332, file: !325, line: 1795, type: !342, scopeLine: 1795, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!122 = distinct !DILexicalBlock(scope: !121, file: !325, line: 1800, column: 9)
!123 = distinct !DILexicalBlock(scope: !120, file: !328, line: 47, column: 9)
!124 = distinct !DILexicalBlock(scope: !122, file: !325, line: 1802, column: 9)
!125 = distinct !DILexicalBlock(scope: !124, file: !325, line: 1803, column: 9)
!126 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCs2NzvFoTxuAy_2rg", scope: !319, file: !316, line: 937, type: !295, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!127 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !332, file: !325, line: 2621, type: !295, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!128 = distinct !DISubprogram(name: "load", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group4load", scope: !341, file: !338, line: 48, type: !295, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!129 = distinct !DISubprogram(name: "match_tag", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group9match_tag", scope: !341, file: !338, line: 73, type: !295, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!130 = distinct !DILexicalBlock(scope: !129, file: !338, line: 82, column: 9)
!131 = distinct !DILexicalBlock(scope: !125, file: !325, line: 1821, column: 13)
!132 = distinct !DILexicalBlock(scope: !130, file: !338, line: 83, column: 13)
!133 = distinct !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !345, file: !343, line: 39, type: !295, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!134 = distinct !DILexicalBlock(scope: !133, file: !343, line: 40, column: 64)
!135 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs0_NtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB5_11BitMaskIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next", scope: !346, file: !343, line: 102, type: !295, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!136 = distinct !DILexicalBlock(scope: !131, file: !325, line: 1823, column: 13)
!137 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMsN_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE14trailing_zeros", scope: !350, file: !347, line: 625, type: !295, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!138 = distinct !DISubprogram(name: "nonzero_trailing_zeros", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask22nonzero_trailing_zeros", scope: !345, file: !343, line: 64, type: !295, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!139 = distinct !DILexicalBlock(scope: !136, file: !325, line: 1823, column: 13)
!140 = distinct !DILexicalBlock(scope: !139, file: !325, line: 1824, column: 17)
!141 = distinct !DISubprogram(name: "likely", linkageName: "_RNvNtCskKLDkoKarTP_4core10intrinsics6likely", scope: !374, file: !373, line: 459, type: !295, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!142 = distinct !DISubprogram(name: "is_some<usize>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionjE7is_someCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 633, type: !295, scopeLine: 633, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!143 = distinct !DILexicalBlock(scope: !142, file: !509, line: 434, column: 9)
!144 = distinct !DISubprogram(name: "is_none<usize>", linkageName: "_RNvMNtCskKLDkoKarTP_4core6optionINtB2_6OptionjE7is_noneCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 682, type: !295, scopeLine: 682, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!145 = distinct !DISubprogram(name: "get<u16>", linkageName: "_RNvMse_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE3getCs2NzvFoTxuAy_2rg", scope: !350, file: !347, line: 467, type: !295, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!146 = distinct !DISubprogram(name: "remove_lowest_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask17remove_lowest_bit", scope: !345, file: !343, line: 27, type: !295, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!147 = distinct !DILexicalBlock(scope: !135, file: !343, line: 103, column: 9)
!148 = distinct !DISubprogram(name: "match_empty_or_deleted", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group22match_empty_or_deleted", scope: !341, file: !338, line: 98, type: !295, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!149 = distinct !DILexicalBlock(scope: !148, file: !338, line: 106, column: 9)
!150 = distinct !DISubprogram(name: "find_insert_index_in_group", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner26find_insert_index_in_group", scope: !332, file: !325, line: 1748, type: !342, scopeLine: 1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!151 = distinct !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !345, file: !343, line: 39, type: !295, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!152 = distinct !DILexicalBlock(scope: !151, file: !343, line: 40, column: 64)
!153 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMsN_NtNtCskKLDkoKarTP_4core3num7nonzeroINtB5_7NonZerotE14trailing_zeros", scope: !350, file: !347, line: 625, type: !295, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!154 = distinct !DISubprogram(name: "nonzero_trailing_zeros", linkageName: "_RNvMNtNtCsjqcU1oJFKXj_9hashbrown7control7bitmaskNtB2_7BitMask22nonzero_trailing_zeros", scope: !345, file: !343, line: 64, type: !295, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!155 = distinct !DILexicalBlock(scope: !150, file: !325, line: 1749, column: 9)
!156 = distinct !DILexicalBlock(scope: !131, file: !325, line: 1837, column: 54)
!157 = distinct !DILexicalBlock(scope: !129, file: !338, line: 82, column: 9)
!158 = distinct !DISubprogram(name: "match_empty", linkageName: "_RNvMNtNtNtCsjqcU1oJFKXj_9hashbrown7control5group4sse2NtB2_5Group11match_empty", scope: !341, file: !338, line: 91, type: !295, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!159 = distinct !DILexicalBlock(scope: !157, file: !338, line: 83, column: 13)
!160 = distinct !DISubprogram(name: "move_next", linkageName: "_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_8ProbeSeq9move_next", scope: !376, file: !325, line: 82, type: !295, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!161 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOh3addCs2NzvFoTxuAy_2rg", scope: !319, file: !316, line: 937, type: !295, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!162 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !332, file: !325, line: 2621, type: !295, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
!163 = distinct !DISubprogram(name: "is_bucket_full", linkageName: "_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner14is_bucket_full", scope: !332, file: !325, line: 2644, type: !295, scopeLine: 2644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !294)
end_hunk_1
