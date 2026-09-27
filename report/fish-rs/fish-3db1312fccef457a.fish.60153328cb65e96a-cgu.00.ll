Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.00?download=true
inline.NumInlined: 5113
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 124
loop-unroll.NumUnrolled: 124
begin_hunk_0_@_RNvXs3r_NtCs8frGy5WneL6_4fish3astNtB6_12AndorJobListNtB6_4Node4kind:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs3r_NtCs8frGy5WneL6_4fish3astNtB6_12AndorJobListNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 30, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs3s_NtCs8frGy5WneL6_4fish3astNtB6_12AndorJobListNtB6_8Castable4cast(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  call void %i.c(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0) #28
  %i.d = load i64, ptr %i.a, align 8, !range !32, !noundef !15
  %i.e = icmp eq i64 %i.d, 30
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15, !align !30
  %.sroa.0.0 = select i1 %i.e, ptr %i.g, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3u_NtCs8frGy5WneL6_4fish3astNtB6_12AndorJobListNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @519, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @518)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs3w_NtCs8frGy5WneL6_4fish3astNtB6_24FreestandingArgumentListNtB6_8Castable4cast(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  call void %i.c(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0) #28
  %i.d = load i64, ptr %i.a, align 8, !range !32, !noundef !15
  %i.e = icmp eq i64 %i.d, 31
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15, !align !30
  %.sroa.0.0 = select i1 %i.e, ptr %i.g, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3x_NtCs8frGy5WneL6_4fish3astNtB6_24FreestandingArgumentListNtB6_8Acceptor6accept(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !15, !nonnull !15
  tail call void %i.b(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @315) #28
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs41_NtCs8frGy5WneL6_4fish3astNtB6_7JobListNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @521, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @520)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs45_NtCs8frGy5WneL6_4fish3astNtB6_12CaseItemListNtB6_8Acceptor6accept(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 6
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5764)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish3ast8CaseItemENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs45_BS_NtBS_12CaseItemListNtBS_8Acceptor6accept0EBU_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !15, !alias.scope !5764, !noalias !5765, !nonnull !15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.sroa.0.03.i = phi ptr [ %i.a, %.lr.ph.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i, i64 64 ; 2 uses
  tail call void %i.g(ptr noundef nonnull %1, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.0.03.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @85) #28, !noalias !5764, !inline_history !5763
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish3ast8CaseItemENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs45_BS_NtBS_12CaseItemListNtBS_8Acceptor6accept0EBU_.exit, label %bb.b

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish3ast8CaseItemENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs45_BS_NtBS_12CaseItemListNtBS_8Acceptor6accept0EBU_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs47_NtCs8frGy5WneL6_4fish3astNtB6_12CaseItemListNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 34, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs47_NtCs8frGy5WneL6_4fish3astNtB6_12CaseItemListNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 34, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs48_NtCs8frGy5WneL6_4fish3astNtB6_12CaseItemListNtB6_8Castable4cast(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  call void %i.c(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0) #28
  %i.d = load i64, ptr %i.a, align 8, !range !32, !noundef !15
  %i.e = icmp eq i64 %i.d, 34
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15, !align !30
  %.sroa.0.0 = select i1 %i.e, ptr %i.g, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs4A_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs4A_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs4B_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4E_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @524, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4F_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @527, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4F_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @527, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 1, 15) i8 @_RNvXs4G_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_5Token10token_type(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs4G_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @164, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs4G_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs4G_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @528, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4H_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5768)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5768, !noundef !15
  %.not4.i.not = icmp eq i64 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5768
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5768
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e)
  %i.f = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5768, !noundef !15 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !5768, !noundef !15 ; 3 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = and i64 %i.h, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5768
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !5768
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.f, %bb.d ]
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs4J_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs4J_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs4K_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4N_NtCs8frGy5WneL6_4fish3astNtB6_7String_NtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @529, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4O_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @530, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4O_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @530, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 1, 15) i8 @_RNvXs4P_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_5Token10token_type(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs4P_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @144, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs4P_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs4P_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @531, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4Q_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5771)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5771, !noundef !15
  %.not4.i.not = icmp eq i64 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5771
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5771
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e)
  %i.f = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5771, !noundef !15 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !5771, !noundef !15 ; 3 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = and i64 %i.h, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5771
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !5771
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.f, %bb.d ]
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs4S_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs4S_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs4T_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4W_NtCs8frGy5WneL6_4fish3astNtB6_15TokenBackgroundNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @532, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4X_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @533, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4X_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @533, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 1, 15) i8 @_RNvXs4Y_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_5Token10token_type(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs4Y_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @534, i64 2 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs4Y_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs4Y_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @535, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4Z_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5774)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5774, !noundef !15
  %.not4.i.not = icmp eq i64 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5774
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5774
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e)
  %i.f = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5774, !noundef !15 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !5774, !noundef !15 ; 3 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = and i64 %i.h, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5774
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !5774
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.f, %bb.d ]
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @534, i64 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4a_NtCs8frGy5WneL6_4fish3astNtB6_12CaseItemListNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @537, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @536)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4b_NtCs8frGy5WneL6_4fish3astNtB6_18VariableAssignmentNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4b_NtCs8frGy5WneL6_4fish3astNtB6_18VariableAssignmentNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 4 dereferenceable(12) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 3, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 4 ptr @_RNvXs4c_NtCs8frGy5WneL6_4fish3astNtB6_18VariableAssignmentNtB6_8Castable4cast(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  call void %i.c(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0) #28
  %i.d = load i64, ptr %i.a, align 8, !range !32, !noundef !15
  %i.e = icmp eq i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15, !align !34
  %.sroa.0.0 = select i1 %i.e, ptr %i.g, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs4d_NtCs8frGy5WneL6_4fish3astNtB6_18VariableAssignmentNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs4d_NtCs8frGy5WneL6_4fish3astNtB6_18VariableAssignmentNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(12) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs4e_NtCs8frGy5WneL6_4fish3astNtB6_18VariableAssignmentNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4h_NtCs8frGy5WneL6_4fish3astNtB6_18VariableAssignmentNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @538)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4i_NtCs8frGy5WneL6_4fish3astNtB6_13MaybeNewlinesNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 33, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4i_NtCs8frGy5WneL6_4fish3astNtB6_13MaybeNewlinesNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 4 dereferenceable(12) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 33, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 4 ptr @_RNvXs4j_NtCs8frGy5WneL6_4fish3astNtB6_13MaybeNewlinesNtB6_8Castable4cast(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  call void %i.c(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0) #28
  %i.d = load i64, ptr %i.a, align 8, !range !32, !noundef !15
  %i.e = icmp eq i64 %i.d, 33
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15, !align !34
  %.sroa.0.0 = select i1 %i.e, ptr %i.g, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs4k_NtCs8frGy5WneL6_4fish3astNtB6_13MaybeNewlinesNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs4k_NtCs8frGy5WneL6_4fish3astNtB6_13MaybeNewlinesNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(12) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs4l_NtCs8frGy5WneL6_4fish3astNtB6_13MaybeNewlinesNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4o_NtCs8frGy5WneL6_4fish3astNtB6_13MaybeNewlinesNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @538)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4p_NtCs8frGy5WneL6_4fish3astNtB6_8ArgumentNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 35, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4p_NtCs8frGy5WneL6_4fish3astNtB6_8ArgumentNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 4 dereferenceable(12) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 35, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 4 ptr @_RNvXs4q_NtCs8frGy5WneL6_4fish3astNtB6_8ArgumentNtB6_8Castable4cast(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  call void %i.c(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0) #28
  %i.d = load i64, ptr %i.a, align 8, !range !32, !noundef !15
  %i.e = icmp eq i64 %i.d, 35
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15, !align !34
  %.sroa.0.0 = select i1 %i.e, ptr %i.g, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs4r_NtCs8frGy5WneL6_4fish3astNtB6_8ArgumentNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs4r_NtCs8frGy5WneL6_4fish3astNtB6_8ArgumentNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(12) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs4s_NtCs8frGy5WneL6_4fish3astNtB6_8ArgumentNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4v_NtCs8frGy5WneL6_4fish3astNtB6_8ArgumentNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @538)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4w_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @541, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4w_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @541, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 1, 15) i8 @_RNvXs4x_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_5Token10token_type(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs4x_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @139, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs4x_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs4x_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @542, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4y_NtCs8frGy5WneL6_4fish3astNtB6_6SemiNlNtB6_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5777)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5777, !noundef !15
  %.not4.i.not = icmp eq i64 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5777
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5777
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e)
  %i.f = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5777, !noundef !15 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !5777, !noundef !15 ; 3 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = and i64 %i.h, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5777
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !5777
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.f, %bb.d ]
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @139, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs51_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs51_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs52_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs55_NtCs8frGy5WneL6_4fish3astNtB6_16TokenConjunctionNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @543, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs56_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @544, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs56_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @544, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 1, 15) i8 @_RNvXs57_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_5Token10token_type(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs57_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @545, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs57_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs57_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @546, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs58_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5780)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5780, !noundef !15
  %.not4.i.not = icmp eq i64 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5780
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5780
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e)
  %i.f = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5780, !noundef !15 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !5780, !noundef !15 ; 3 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = and i64 %i.h, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5780
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !5780
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.f, %bb.d ]
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @545, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5B_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs5B_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs5C_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5F_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5G_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @224, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5G_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @224, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs5H_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5H_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @548, i64 3 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5H_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @549, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs5H_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5I_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs5I_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs5J_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5M_NtCs8frGy5WneL6_4fish3astNtB6_27DecoratedStatementDecoratorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 27, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5N_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @553, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5N_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @553, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs5O_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5O_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @554, i64 2 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5O_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @555, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs5O_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5P_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs5P_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs5Q_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5T_NtCs8frGy5WneL6_4fish3astNtB6_23JobConjunctionDecoratorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @556, i64 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5U_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @557, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5U_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @557, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs5V_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5V_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @164, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5V_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @558, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs5V_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5W_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs5W_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs5X_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5_NtCs8frGy5WneL6_4fish3astNtB5_11RedirectionNtB5_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5783)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5783, !noundef !15
  %.not4.i.not = icmp eq i64 %i.c, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5783
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5783
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.d)
  %i.e = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5783, !noundef !15 ; 3 uses
  %i.f = load i64, ptr %i.b, align 8, !alias.scope !5783, !noundef !15 ; 3 uses
  %i.g = add i64 %i.f, %i.e                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = and i64 %i.g, 1
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5783
  %i.l = icmp eq i64 %i.f, -1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i64 %i.f, 1
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !5783
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.n = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.e, %bb.d ]
  %i.o = and i64 %i.n, 1
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 81
  %i.r = load i8, ptr %i.q, align 1, !range !19, !noundef !15
  %i.s = icmp eq i8 %i.r, 6
  ret i1 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5a_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs5a_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs5b_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5e_NtCs8frGy5WneL6_4fish3astNtB6_9TokenPipeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @561, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5f_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @562, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5f_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @562, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 1, 15) i8 @_RNvXs5g_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_5Token10token_type(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5g_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @163, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs5g_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5g_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @563, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5h_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5786)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5786, !noundef !15
  %.not4.i.not = icmp eq i64 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5786
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5786
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e)
  %i.f = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5786, !noundef !15 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !5786, !noundef !15 ; 3 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = and i64 %i.h, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5786
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !5786
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.f, %bb.d ]
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5j_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs5j_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs5k_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5n_NtCs8frGy5WneL6_4fish3astNtB6_14TokenLeftBraceNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @564, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5o_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @565, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5o_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @565, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 1, 15) i8 @_RNvXs5p_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_5Token10token_type(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5p_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @566, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs5p_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5p_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @567, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5q_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5789)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5789, !noundef !15
  %.not4.i.not = icmp eq i64 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5789
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5789
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e)
  %i.f = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5789, !noundef !15 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !5789, !noundef !15 ; 3 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = and i64 %i.h, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5789
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !5789
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.f, %bb.d ]
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @566, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs5s_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs5s_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs5t_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5w_NtCs8frGy5WneL6_4fish3astNtB6_15TokenRightBraceNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @568, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @526, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @523)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5x_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @569, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs5x_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @569, ptr %i.b, align 8
  store i64 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 1, 15) i8 @_RNvXs5y_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_5Token10token_type(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !19, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5y_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_5Token14allowed_tokens(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @570, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs5y_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_5Token14token_type_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs5y_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_5Token7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @571, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs5z_NtCs8frGy5WneL6_4fish3astNtB6_16TokenRedirectionNtB6_10CheckParse13can_be_parsed(ptr noalias nofree noundef align 8 dereferenceable(232) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5792)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5792, !noundef !15
  %.not4.i.not = icmp eq i64 %i.d, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %.not4.i.not, label %.lr.ph.i, label %.preheader.._crit_edge_crit_edge.i

.preheader.._crit_edge_crit_edge.i:               ; preds = %bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5792
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5792
  call fastcc void @_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream13next_from_tok(ptr noalias nofree noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e)
  %i.f = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5792, !noundef !15 ; 3 uses
  %i.g = load i64, ptr %i.c, align 8, !alias.scope !5792, !noundef !15 ; 3 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #20
  unreachable

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = and i64 %i.h, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5792
  %i.m = icmp eq i64 %i.g, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.g, 1
  store i64 %i.n, ptr %i.c, align 8, !alias.scope !5792
  br label %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit: ; preds = %.preheader.._crit_edge_crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.f, %bb.d ]
  %i.p = and i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 81
  %i.s = load i8, ptr %i.r, align 1, !range !19, !noundef !15
  store i8 %i.s, ptr %i.b, align 1
  %i.t = call noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish15parse_constants14ParseTokenTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @570, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs60_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordBeginNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @572, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs61_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @573, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs61_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @573, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs62_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs62_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @163, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs62_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @574, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs62_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs63_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs63_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs64_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs67_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordCaseNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @575, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs68_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @576, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs68_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @576, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs69_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs69_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @570, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs69_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @577, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs69_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6A_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @578, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6A_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @578, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs6B_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs6B_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @579, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6B_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @580, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs6B_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6C_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6C_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6D_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6G_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordIfNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @581, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6H_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @582, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6H_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @582, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs6I_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs6I_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @583, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6I_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @584, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs6I_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6J_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6J_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6K_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6N_NtCs8frGy5WneL6_4fish3astNtB6_9KeywordInNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @585, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6O_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @586, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6O_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @586, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs6P_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs6P_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @587, i64 2 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6P_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @588, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs6P_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6Q_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6Q_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6R_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6U_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordNotNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6V_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @590, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6V_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @590, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs6W_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs6W_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @591, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6W_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @592, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs6W_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6X_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6X_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6Y_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6a_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6a_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6b_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6e_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordElseNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @593, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6f_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @594, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6f_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @594, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs6g_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs6g_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @144, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6g_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @595, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs6g_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6h_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6h_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6i_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6l_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordEndNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @596, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6m_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @597, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6m_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @597, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs6n_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs6n_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @139, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6n_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @598, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs6n_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6o_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6o_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6p_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6s_NtCs8frGy5WneL6_4fish3astNtB6_10KeywordForNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @599, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6t_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @600, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs6t_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @600, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs6u_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs6u_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @6, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs6u_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @601, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs6u_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs6v_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs6v_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs6w_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6z_NtCs8frGy5WneL6_4fish3astNtB6_15KeywordFunctionNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @602, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs71_NtCs8frGy5WneL6_4fish3astNtB6_13KeywordSwitchNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @603, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs72_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @604, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs72_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @604, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs73_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs73_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @605, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs73_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @606, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs73_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs74_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs74_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs75_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs78_NtCs8frGy5WneL6_4fish3astNtB6_11KeywordTimeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @607, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs79_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @608, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs79_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 4 dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @608, ptr %i.b, align 8
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCs8frGy5WneL6_4fish3astNtB5_21ArgumentOrRedirectionNtB5_8Acceptor6accept(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !25, !noundef !15
  %i.b = trunc nuw i32 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !15, !nonnull !15
  tail call void %i.f(ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @473) #28
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !15, !nonnull !15
  tail call void %i.i(ptr noundef nonnull %1, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) @76) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXs7a_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_7Keyword11keyword_mut(ptr noalias nofree noundef readnone align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs7a_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_7Keyword16allowed_keywords(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @609, i64 1 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs7a_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_7Keyword7as_leaf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @610, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef range(i8 0, 19) i8 @_RNvXs7a_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_7Keyword7keyword(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !range !23, !noundef !15
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXs7b_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_4Leaf5range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 4 ptr @_RNvXs7b_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_4Leaf9range_mut(ptr noalias nofree noundef readnone returned align 4 captures(ret: address, provenance) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs7c_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtB6_8Acceptor6accept(ptr noalias nofree readonly align 4 captures(none) %0, ptr nofree nonnull readnone captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7f_NtCs8frGy5WneL6_4fish3astNtB6_12KeywordWhileNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @611, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @525, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @522, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @550)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7g_NtCs8frGy5WneL6_4fish3astNtB6_20BlockStatementHeaderNtB6_4Node4kind(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 10, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs7g_NtCs8frGy5WneL6_4fish3astNtB6_20BlockStatementHeaderNtB6_4Node8kind_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(192) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  store i64 10, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs7h_NtCs8frGy5WneL6_4fish3astNtB6_20BlockStatementHeaderNtB6_8Castable4cast(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  call void %i.c(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %0) #28
  %i.d = load i64, ptr %i.a, align 8, !range !32, !noundef !15
  %i.e = icmp eq i64 %i.d, 10
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15, !align !30
  %.sroa.0.0 = select i1 %i.e, ptr %i.g, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7i_NtCs8frGy5WneL6_4fish3astNtB6_20BlockStatementHeaderNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i32, ptr %0, align 8, !range !33, !noundef !15 ; 3 uses
  %i.f = icmp ne i32 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -2
  %.inv = icmp samesign ult i32 %i.e, 2
  %narrow = select i1 %.inv, i32 2, i32 %i.g
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.h, ptr %i.d, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @613, i64 noundef 5, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @612)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.c, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @615, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @614)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @617, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @616)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.a, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @618)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsA_NtCs8frGy5WneL6_4fish3astNtB5_18SourceRangeVisitorNtB5_11NodeVisitor5visit(ptr noalias nofree noundef align 4 dereferenceable(12) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !15, !nonnull !15
  %i.d = tail call { ptr, ptr } %i.c(ptr noundef nonnull %1) #28 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !15, !nonnull !15
  call void %i.h(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %i.e) #28
  %i.i = load i32, ptr %i.a, align 4, !range !25, !noundef !15
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !15, !nonnull !15
  tail call void %i.l(ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @620) #28
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = load i32, ptr %i.m, align 4, !noundef !15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i32, ptr %i.o, align 4, !noundef !15 ; 3 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.r, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noundef !15 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.f, %bb.h
  %.sink6 = phi i32 [ %i.x, %bb.h ], [ %i.n, %bb.f ]
  %.sink = phi i32 [ %i.y, %bb.h ], [ %i.p, %bb.f ]
  store i32 %.sink6, ptr %0, align 4
  store i32 %.sink, ptr %i.s, align 4
  br label %bb.g

end_hunk_0
