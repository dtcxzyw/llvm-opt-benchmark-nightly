Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.00?download=true
inline.NumInlined: 5110
inline.NumDeleted: 426
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumUnrolled: 125
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXsq_NtCs8frGy5WneL6_4fish3astNtB5_11KeywordTimeNtB5_10CheckParse13can_be_parsed:bb.a
  store i64 %i.ae, ptr %i.d, align 8, !alias.scope !5556
  %.not.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.not.i, label %.lr.ph.i4, label %._crit_edge.i

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #20
  unreachable

_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit7: ; preds = %._crit_edge.i
  %i.af = and i64 %i.v, 1
  %i.ag = xor i64 %i.af, 1
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !range !19, !noundef !15
  %i.ak = icmp eq i8 %i.aj, 2
  br i1 %i.ak, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit7, %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit ], [ %i.ao, %bb.m ], [ true, %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit7 ]
  ret i1 %.sroa.0.0

bb.m:                                             ; preds = %_RNvMsB_NtCs8frGy5WneL6_4fish3astNtB5_11TokenStream4peek.exit7
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  %i.am = load i8, ptr %i.al, align 1, !range !17, !noundef !15
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = xor i1 %i.an, true
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 41175768021673107) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [224 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast12ElseifClauseINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 57646075230342349) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast15JobContinuationNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast15JobContinuationINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast18VariableAssignmentNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast18VariableAssignmentINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast21ArgumentOrRedirectionINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 64051194700380388) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [144 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast26JobConjunctionContinuationINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast8AndorJobNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 57646075230342349) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [160 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast8AndorJobINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast8ArgumentNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast8ArgumentINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCs3oUPovFnLWP_4core3fmtSNtNtCs8frGy5WneL6_4fish3ast8CaseItemNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8frGy5WneL6_4fish3ast8CaseItemINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsu_NtCs8frGy5WneL6_4fish3astNtB5_20BlockStatementHeaderNtB5_8Acceptor6accept(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(192) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !33, !noundef !15 ; 3 uses
  %i.b = icmp ne i32 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -2
  %.inv = icmp samesign ult i32 %i.a, 2
  %narrow = select i1 %.inv, i32 2, i32 %i.c
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c
  %.sroa.5.0 = phi ptr [ @29, %bb.c ], [ @32, %bb.d ], [ @38, %bb.e ], [ @35, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %0, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !15, !nonnull !15
  tail call void %i.h(ptr noundef nonnull %1, ptr noundef nonnull %.sroa.0.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %.sroa.5.0) #28
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @677, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @678, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @676)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXsx_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.b = load i64, ptr %0, align 8, !range !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15
  %i.e = icmp eq i64 %.promoted, 0
  br i1 %i.e, label %_RINvNvMNtCs3oUPovFnLWP_4core5sliceSp7reverse7revswapNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEBS_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, 0
  br i1 %i.f, label %_RINvNvMNtCs3oUPovFnLWP_4core5sliceSp7reverse7revswapNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEBS_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.h, %bb.b ], [ %.promoted, %bb.a ] ; 8 uses
  %i.h = add nsw i64 %i.g, -1                     ; 5 uses
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp samesign ult i64 %i.h, %i.b
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %i.g, 384307168202282327
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.h ; 4 uses
  %.sroa.08.0.copyload = load i64, ptr %i.k, align 8
  %i.l = trunc nuw i64 %.sroa.08.0.copyload to i1
  br i1 %i.l, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryE8push_mutBJ_.exit

_RINvNvMNtCs3oUPovFnLWP_4core5sliceSp7reverse7revswapNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEBS_.exit: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEB14_.exit.i, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ undef, %bb.a ], [ %.sroa.510.0.copyload.le, %bb.c ], [ %.sroa.510.0.copyload.le, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEB14_.exit.i ], [ undef, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.49.0.copyload.le, %bb.c ], [ %.sroa.49.0.copyload.le, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEB14_.exit.i ], [ null, %bb.b ]
  %i.m = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.n = insertvalue { ptr, ptr } %i.m, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.n

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryE8push_mutBJ_.exit: ; preds = %.lr.ph
  %.sroa.49.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.49.0.copyload.le = load ptr, ptr %.sroa.49.0..sroa_idx.le, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.510.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.sroa.510.0.copyload.le = load ptr, ptr %.sroa.510.0..sroa_idx.le, align 8, !nonnull !15, !noundef !15 ; 4 uses
  store i64 1, ptr %i.k, align 8
  store ptr %.sroa.49.0.copyload.le, ptr %.sroa.49.0..sroa_idx.le, align 8
  store ptr %.sroa.510.0.copyload.le, ptr %.sroa.510.0..sroa_idx.le, align 8
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !5559
  %i.o = icmp samesign ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.510.0.copyload.le, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !15, !nonnull !15
  tail call void %i.q(ptr noundef nonnull %.sroa.49.0.copyload.le, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @679) #28
  %i.r = load i64, ptr %i.a, align 8, !noundef !15 ; 5 uses
  %i.s = icmp ugt i64 %i.g, %i.r
  br i1 %i.s, label %bb.e, label %bb.c, !prof !18

bb.c:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryE8push_mutBJ_.exit
  %i.t = load ptr, ptr %i.c, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.u = sub nuw i64 %i.r, %i.g
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.g
  %i.w = lshr i64 %i.u, 1                         ; 2 uses
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_RINvNvMNtCs3oUPovFnLWP_4core5sliceSp7reverse7revswapNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEBS_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.r
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEB14_.exit.i, %.lr.ph.preheader.i
  %.sroa.0.017.i = phi i64 [ %i.ac, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEB14_.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.y = xor i64 %.sroa.0.017.i, -1
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.sroa.0.017.i
  %i.aa = getelementptr [24 x i8], ptr %i.x, i64 %i.y
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8frGy5WneL6_4fish(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa, i64 noundef 3)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEB14_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEB14_.exit.i: ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i64 %.sroa.0.017.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.w
  br i1 %exitcond.not.i, label %_RINvNvMNtCs3oUPovFnLWP_4core5sliceSp7reverse7revswapNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryEBS_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryE8push_mutBJ_.exit
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.r, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @680) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsy_NtCs8frGy5WneL6_4fish3astNtB5_9TraversalNtB5_11NodeVisitor5visit(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5563, !noundef !15 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !alias.scope !5563, !noundef !15
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryE8push_mutBJ_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #22, !noalias !5564
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryE8push_mutBJ_.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish3ast14TraversalEntryE8push_mutBJ_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5563, !nonnull !15, !noundef !15
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b ; 3 uses
  store i64 0, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !5563
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtBa_11EscapeDebugNtBa_10CharsUtf32E3new0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTcEE9call_onceCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4), (12, 14)) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5571)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5572)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5571
  switch i32 %1, label %bb.b [
    i32 34, label %bb.h
    i32 39, label %bb.i
    i32 92, label %bb.c
    i32 10, label %bb.d
    i32 9, label %bb.e
    i32 13, label %bb.f
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -32
  %or.cond.i.i = icmp ult i32 %i.b, 95
  %i.c = and i32 %1, 2097150
  %switch.i.i = icmp eq i32 %i.c, 65438
  %or.cond103.i.i = or i1 %or.cond.i.i, %switch.i.i
  br i1 %or.cond103.i.i, label %bb.j, label %bb.k

bb.c:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !5573
  %.sroa.060.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 92, ptr %.sroa.060.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !5573
  %.sroa.060.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.060.sroa.5.0..sroa_idx.i.i, align 2, !alias.scope !5573
  br label %_RNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB7_11EscapeDebugNtB7_10CharsUtf32E3new0Cs8frGy5WneL6_4fish.exit

bb.d:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !5573
  %.sroa.049.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 110, ptr %.sroa.049.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !5573
  %.sroa.049.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.049.sroa.5.0..sroa_idx.i.i, align 2, !alias.scope !5573
  br label %_RNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB7_11EscapeDebugNtB7_10CharsUtf32E3new0Cs8frGy5WneL6_4fish.exit

bb.e:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !5573
  %.sroa.038.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 116, ptr %.sroa.038.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !5573
  %.sroa.038.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.038.sroa.5.0..sroa_idx.i.i, align 2, !alias.scope !5573
  br label %_RNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB7_11EscapeDebugNtB7_10CharsUtf32E3new0Cs8frGy5WneL6_4fish.exit

bb.f:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !5573
  %.sroa.027.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 114, ptr %.sroa.027.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !5573
  %.sroa.027.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.027.sroa.5.0..sroa_idx.i.i, align 2, !alias.scope !5573
  br label %_RNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB7_11EscapeDebugNtB7_10CharsUtf32E3new0Cs8frGy5WneL6_4fish.exit

bb.g:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !5573
  %.sroa.016.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 48, ptr %.sroa.016.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !5573
  %.sroa.016.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.016.sroa.5.0..sroa_idx.i.i, align 2, !alias.scope !5573
  br label %_RNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB7_11EscapeDebugNtB7_10CharsUtf32E3new0Cs8frGy5WneL6_4fish.exit

bb.h:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !5573
  %.sroa.071.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 34, ptr %.sroa.071.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !5573
  %.sroa.071.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.071.sroa.5.0..sroa_idx.i.i, align 2, !alias.scope !5573
  br label %_RNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB7_11EscapeDebugNtB7_10CharsUtf32E3new0Cs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %bb.a
  store i8 92, ptr %0, align 4, !alias.scope !5573
  %.sroa.082.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 39, ptr %.sroa.082.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !5573
  %.sroa.082.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i64 0, ptr %.sroa.082.sroa.5.0..sroa_idx.i.i, align 2, !alias.scope !5573
  br label %_RNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB7_11EscapeDebugNtB7_10CharsUtf32E3new0Cs8frGy5WneL6_4fish.exit

bb.j:                                             ; preds = %bb.b
  store i32 %1, ptr %0, align 4, !alias.scope !5573
  br label %_RNCNvMsn_NtNtCslLGyqsphxMB_10widestring6utfstr4iterINtB7_11EscapeDebugNtB7_10CharsUtf32E3new0Cs8frGy5WneL6_4fish.exit

bb.k:                                             ; preds = %bb.b
  %i.d = insertelement <4 x i32> poison, i32 %1, i64 0
  %i.e = shufflevector <4 x i32> %i.d, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.f = add nsw <4 x i32> %i.e, <i32 0, i32 -127, i32 -57344, i32 -983040>
  %i.g = icmp ult <4 x i32> %i.f, <i32 32, i32 33, i32 6400, i32 65534>
  %i.h = bitcast <4 x i1> %i.g to i4
  %.not = icmp eq i4 %i.h, 0
  br i1 %.not, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.i = add nsw i32 %1, -1048576
  %or.cond5.i.i = icmp ult i32 %i.i, 65534
  %i.j = icmp eq i32 %1, 32
  %or.cond8.i.i = or i1 %i.j, %or.cond5.i.i
  br i1 %or.cond8.i.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.k = icmp samesign ult i32 %1, 133
  br i1 %i.k, label %.thread108.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.l = tail call fastcc noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space6lookup(i32 noundef range(i32 0, 1114112) %1) #28, !noalias !5573
  br i1 %i.l, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.m = icmp samesign ugt i32 %1, 767
  br i1 %i.m, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.n = icmp samesign ugt i32 %1, 172
  br i1 %i.n, label %.thread107.i.i, label %.thread108.i.i

bb.q:                                             ; preds = %bb.o
  %i.o = tail call noundef zeroext i1 @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data15grapheme_extend11lookup_slow(i32 noundef range(i32 0, 1114112) %1) #22, !noalias !5573
  br i1 %i.o, label %bb.t, label %.thread107.i.i
end_hunk_0
