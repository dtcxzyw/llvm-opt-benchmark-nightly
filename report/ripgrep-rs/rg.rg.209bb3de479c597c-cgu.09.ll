Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.09?download=true
inline.NumInlined: 430
inline.NumDeleted: 171
begin_hunk_0_@_RNvXs1v_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_9TypeClearNtB8_4Flag9name_long:bb.a
  ret { ptr, i64 } { ptr @384, i64 10 }, !dbg !6605
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i1, i8 } @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag10name_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6606 {
bb.a:
  ret { i1, i8 } { i1 true, i8 84 }, !dbg !6607
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6608 {
bb.a:
  ret i8 2, !dbg !6609
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6610 {
bb.a:
  ret { ptr, i64 } { ptr @374, i64 4 }, !dbg !6611
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 5) i8 @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag15completion_type(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6612 {
bb.a:
  ret i8 3, !dbg !6613
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(608) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6614 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6633
  call void @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue12unwrap_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1), !dbg !6634
  call fastcc void @_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags4defs7convert6string(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !6628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6635
  %i.d = load i64, ptr %i.b, align 8, !dbg !6636, !range !443, !noundef !294 ; 2 uses
  %i.e = icmp eq i64 %i.d, -1, !dbg !6636
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !6637

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6638
  %i.g = load ptr, ptr %i.f, align 8, !dbg !6638, !nonnull !294, !noundef !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6639
  br label %bb.h, !dbg !6640

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 424, !dbg !6641 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6642
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6642
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !6642
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !6642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6639
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6632
  store i64 %i.d, ptr %i.i, align 8, !dbg !6632
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6632
  store ptr %.sroa.4.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !6632
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !6632
  store i64 %.sroa.5.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !6632
  store i64 3, ptr %i.c, align 8, !dbg !6632
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 440, !dbg !6643 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !dbg !6643, !alias.scope !6630, !noundef !294 ; 3 uses
  %i.l = load i64, ptr %i.h, align 8, !dbg !6644, !range !320, !alias.scope !6630, !noundef !294
  %i.m = icmp eq i64 %i.k, %i.l, !dbg !6645
  br i1 %i.m, label %bb.d, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10TypeChangeE8push_mutBL_.exit, !dbg !6645

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10TypeChangeE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10TypeChangeE8push_mutBL_.exit unwind label %bb.e, !dbg !6646, !noalias !6631

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10TypeChangeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #24
          to label %bb.g unwind label %bb.f, !dbg !6647

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !6648
  unreachable, !dbg !6648

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n, !dbg !6648

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10TypeChangeE8push_mutBL_.exit: ; preds = %bb.c, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 432, !dbg !6649
  %i.q = load ptr, ptr %i.p, align 8, !dbg !6649, !alias.scope !6630, !nonnull !294, !noundef !294
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.k, !dbg !6650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !6651
  %i.s = add i64 %i.k, 1, !dbg !6652
  store i64 %i.s, ptr %i.j, align 8, !dbg !6652, !alias.scope !6630
  br label %bb.h, !dbg !6640

bb.h:                                             ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10TypeChangeE8push_mutBL_.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ null, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2NzvFoTxuAy_2rg5flags7lowargs10TypeChangeE8push_mutBL_.exit ], !dbg !6653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6654
  ret ptr %.sroa.0.0, !dbg !6655
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6656 {
bb.a:
  ret { ptr, i64 } { ptr @385, i64 578 }, !dbg !6657
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6658 {
bb.a:
  ret { ptr, i64 } { ptr @386, i64 34 }, !dbg !6659
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6660 {
bb.a:
  ret i1 false, !dbg !6661
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1w_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7TypeNotNtB8_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6662 {
bb.a:
  ret { ptr, i64 } { ptr @387, i64 8 }, !dbg !6663
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXs1x_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_8TypeListNtB8_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6664 {
bb.a:
  ret i8 6, !dbg !6665
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXs1x_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_8TypeListNtB8_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(608) %2) unnamed_addr #0 !dbg !6666 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !6669
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !6670, !prof !480

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @388, ptr noundef nonnull inttoptr (i64 55 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @389) #28, !dbg !6671
  unreachable, !dbg !6671

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 556, !dbg !6672
  store i8 2, ptr %i.b, align 4, !dbg !6673
  ret ptr null, !dbg !6674
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1x_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_8TypeListNtB8_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6675 {
bb.a:
  ret { ptr, i64 } { ptr @390, i64 274 }, !dbg !6676
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1x_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_8TypeListNtB8_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6677 {
bb.a:
  ret { ptr, i64 } { ptr @391, i64 30 }, !dbg !6678
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1x_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_8TypeListNtB8_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6679 {
bb.a:
  ret i1 true, !dbg !6680
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1x_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_8TypeListNtB8_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6681 {
bb.a:
  ret { ptr, i64 } { ptr @392, i64 9 }, !dbg !6682
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i1, i8 } @_RNvXs1y_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_12UnrestrictedNtB8_4Flag10name_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6683 {
bb.a:
  ret { i1, i8 } { i1 true, i8 117 }, !dbg !6684
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXs1y_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_12UnrestrictedNtB8_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6685 {
bb.a:
  ret i8 2, !dbg !6686
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1y_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_12UnrestrictedNtB8_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(608) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6687 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = tail call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !6704
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !6705, !prof !480

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @393, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @394) #28, !dbg !6706
  unreachable, !dbg !6706

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 544, !dbg !6707 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !6707, !noundef !294 ; 3 uses
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %i.f, i64 1), !dbg !6708
  store i64 %i.g, ptr %i.e, align 8, !dbg !6709
  %i.h = icmp ugt i64 %i.f, 2, !dbg !6710
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !6711, !prof !375

bb.d:                                             ; preds = %bb.c
  switch i64 %i.f, label %default.unreachable10 [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ], !dbg !6712, !prof !626

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @395, i64 noundef 39), !dbg !6713
  br label %bb.i, !dbg !6714

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6715
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6715
  store i8 1, ptr %i.j, align 8, !dbg !6715
  store i64 -1, ptr %i.c, align 8, !dbg !6715
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6701), !dbg !6716
  %i.k = call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !6717, !noalias !6701
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 571, !dbg !6718
  %i.m = zext i1 %i.k to i8, !dbg !6718           ; 5 uses
  store i8 %i.m, ptr %i.l, align 1, !dbg !6718, !alias.scope !6701
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 572, !dbg !6719
  store i8 %i.m, ptr %i.n, align 4, !dbg !6719, !alias.scope !6701
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 574, !dbg !6720
  store i8 %i.m, ptr %i.o, align 2, !dbg !6720, !alias.scope !6701
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 576, !dbg !6721
  store i8 %i.m, ptr %i.p, align 8, !dbg !6721, !alias.scope !6701
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 577, !dbg !6722
  store i8 %i.m, ptr %i.q, align 1, !dbg !6722, !alias.scope !6701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6723
  br label %bb.i, !dbg !6724

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6725
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !6725
  store i8 1, ptr %i.r, align 8, !dbg !6725
  store i64 -1, ptr %i.b, align 8, !dbg !6725
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6702), !dbg !6726
  %i.s = call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !6727, !noalias !6702
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 563, !dbg !6728
  %i.u = zext i1 %i.s to i8, !dbg !6728
  store i8 %i.u, ptr %i.t, align 1, !dbg !6728, !alias.scope !6702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6729
  br label %bb.i, !dbg !6730

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6731
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6731
  store i8 1, ptr %i.v, align 8, !dbg !6731
  store i64 -1, ptr %i.a, align 8, !dbg !6731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6703), !dbg !6732
  %i.w = call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !6733, !noalias !6703
  %..i = zext i1 %i.w to i8, !dbg !6734
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 591, !dbg !6735
  store i8 %..i, ptr %i.x, align 1, !dbg !6735, !alias.scope !6703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6736
  br label %bb.i, !dbg !6730

default.unreachable10:                            ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.i, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.f ], !dbg !6737
  ret ptr %.sroa.0.0, !dbg !6738
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1y_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_12UnrestrictedNtB8_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6739 {
bb.a:
  ret { ptr, i64 } { ptr @396, i64 707 }, !dbg !6740
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1y_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_12UnrestrictedNtB8_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6741 {
bb.a:
  ret { ptr, i64 } { ptr @397, i64 38 }, !dbg !6742
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1y_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_12UnrestrictedNtB8_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6743 {
bb.a:
  ret i1 true, !dbg !6744
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1y_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_12UnrestrictedNtB8_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6745 {
bb.a:
  ret { ptr, i64 } { ptr @398, i64 12 }, !dbg !6746
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i1, i8 } @_RNvXs1z_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7VersionNtB8_4Flag10name_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6747 {
bb.a:
  ret { i1, i8 } { i1 true, i8 86 }, !dbg !6748
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXs1z_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7VersionNtB8_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6749 {
bb.a:
  ret i8 6, !dbg !6750
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvXs1z_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7VersionNtB8_4Flag6update(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #0 !dbg !6751 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg5flagsNtB4_9FlagValue13unwrap_switch(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %1), !dbg !6752
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !6753, !prof !480

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @399, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #28, !dbg !6754
  unreachable, !dbg !6754

bb.c:                                             ; preds = %bb.a
  ret ptr null, !dbg !6755
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1z_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7VersionNtB8_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6756 {
bb.a:
  ret { ptr, i64 } { ptr @401, i64 212 }, !dbg !6757
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1z_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7VersionNtB8_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6758 {
bb.a:
  ret { ptr, i64 } { ptr @402, i64 24 }, !dbg !6759
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs1z_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7VersionNtB8_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6760 {
bb.a:
  ret i1 true, !dbg !6761
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1z_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7VersionNtB8_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !6762 {
bb.a:
  ret { ptr, i64 } { ptr @403, i64 7 }, !dbg !6763
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs20_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_5FilesNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6764 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 5), !dbg !6766
  ret i1 %i.a, !dbg !6767
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs21_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_16FilesWithMatchesNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6768 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @405, i64 noundef 16), !dbg !6770
  ret i1 %i.a, !dbg !6771
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs22_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_17FilesWithoutMatchNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6772 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @406, i64 noundef 17), !dbg !6774
  ret i1 %i.a, !dbg !6775
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs23_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_12FixedStringsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6776 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 12), !dbg !6778
  ret i1 %i.a, !dbg !6779
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs24_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_6FollowNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6780 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @408, i64 noundef 6), !dbg !6782
  ret i1 %i.a, !dbg !6783
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs25_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_8GenerateNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6784 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @409, i64 noundef 8), !dbg !6786
  ret i1 %i.a, !dbg !6787
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs26_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_4GlobNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6788 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @410, i64 noundef 4), !dbg !6790
  ret i1 %i.a, !dbg !6791
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs27_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_19GlobCaseInsensitiveNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6792 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 19), !dbg !6794
  ret i1 %i.a, !dbg !6795
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs28_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_7HeadingNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6796 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @412, i64 noundef 7), !dbg !6798
  ret i1 %i.a, !dbg !6799
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs29_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB6_4HelpNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !6800 {
end_hunk_0
