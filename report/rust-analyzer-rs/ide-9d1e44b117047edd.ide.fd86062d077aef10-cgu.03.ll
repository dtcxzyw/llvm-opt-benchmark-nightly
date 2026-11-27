Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.03?download=true
inline.NumInlined: 2470
inline.NumDeleted: 1160
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvNtCslLuZgPVt6hg_3ide9runnables31runnable_mod_outline_definition0INtB7_5FnMutTNtCs8Xq8PKFYOms_3hir6ModuleEE8call_mutBU_:bb.a
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !5519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5519
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 1610612768, ptr %i.q, align 8, !noalias !5519
  store ptr %i.e, ptr %i.d, align 8, !noalias !5519
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @25, ptr %i.r, align 8, !noalias !5519
  %i.s = invoke noundef zeroext i1 @_RNvXs6_NtCs33K2ylI4knu_10hir_expand4nameNtB5_7DisplayNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.f, !noalias !5520

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #52
          to label %..body_crit_edge.i.i unwind label %bb.i, !noalias !5520

..body_crit_edge.i.i:                             ; preds = %bb.f
  %.val1.pre.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5521, !noalias !5518
  br label %.body.i.i

bb.g:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.h, label %bb.j, !prof !29

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #57
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !5520

.noexc.i.i.i:                                     ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !5520
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !5522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5518
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5521, !noalias !5518, !nonnull !23, !noundef !23 ; 2 uses
  %i.v = ptrtoint ptr %.val.i.i to i64
  %i.w = and i64 %i.v, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %.val.i.i, i64 -9  ; 5 uses
  %.not1.i.i.i.i.i = icmp eq ptr %i.x, null
  %.not.i.i.i.i.i = or i1 %.not1.i.i.i.i.i, %.not.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_RNCNCNvNtCslLuZgPVt6hg_3ide9runnables31runnable_mod_outline_definition00B7_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5523
  store ptr %i.x, ptr %i.c, align 8, !noalias !5523
  %i.y = load atomic i64, ptr %i.x acquire, align 8, !noalias !5523
  %i.z = icmp eq i64 %i.y, 2
  br i1 %i.z, label %bb.l, label %bb.m, !prof !29

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c), !noalias !5523
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5523
  store ptr %i.x, ptr %i.b, align 8, !noalias !5523
  %i.aa = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !5524
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMs6_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE9drop_slowCs39E2wp1vf7X_6intern(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #55, !noalias !5523
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5523
  br label %_RNCNCNvNtCslLuZgPVt6hg_3ide9runnables31runnable_mod_outline_definition00B7_.exit.i

bb.o:                                             ; preds = %.body.i.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #53, !noalias !5518
  unreachable

bb.p:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCNCNvNtCslLuZgPVt6hg_3ide9runnables31runnable_mod_outline_definition00B7_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs50pZefIA5Ye_8triomphe3arc3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNCNvNtCslLuZgPVt6hg_3ide9runnables31runnable_mod_outline_definition0B5_.exit

bb.q:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !5517
  br label %_RNCNvNtCslLuZgPVt6hg_3ide9runnables31runnable_mod_outline_definition0B5_.exit

_RNCNvNtCslLuZgPVt6hg_3ide9runnables31runnable_mod_outline_definition0B5_.exit: ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide9runnables31runnable_mod_outline_definition00B7_.exit.i, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB6_5Debug3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !5530 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !23, !align !45, !noundef !23
  %.val = load ptr, ptr %i.b, align 8, !nonnull !23, !noundef !23
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5531
  store ptr %i.c, ptr %i.a, align 8, !noalias !5531
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @167)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5531
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCslLuZgPVt6hg_3ide9runnables6TestIdNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !5534 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !23, !align !45, !noundef !23 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5535)
  %i.b = load i64, ptr %i.a, align 8, !range !41, !alias.scope !5535, !noundef !23
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5535, !nonnull !23, !noundef !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5535, !noundef !23
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCshzWfHUSfYae_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !5535
  br label %_RNvXNtCslLuZgPVt6hg_3ide9runnablesNtB2_6TestIdNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = tail call noundef zeroext i1 @_RNvXsg_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXNtCslLuZgPVt6hg_3ide9runnablesNtB2_6TestIdNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit

_RNvXNtCslLuZgPVt6hg_3ide9runnablesNtB2_6TestIdNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCslLuZgPVt6hg_3ide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #22 !guid !5537 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c) #54, !inline_history !5536 ; 2 uses
  %i.e = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.e, %2
  %or.cond.not = select i1 %i.d, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.d, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #12 !guid !5538 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXsC_NtCslLuZgPVt6hg_3ide17navigation_targetNtB5_16NavigationTargetNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c) #54 ; 2 uses
  %i.e = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp ne i64 %i.e, %2
  %or.cond.not = select i1 %i.d, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %i.d, %.lr.ph ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCslLuZgPVt6hg_3ide5hover11HoverActionINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 !guid !5566 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7
  %.sroa.01.012 = phi i64 [ %i.ex, %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %.sroa.01.012 ; 27 uses
  %i.c = getelementptr inbounds nuw [152 x i8], ptr %1, i64 %.sroa.01.012 ; 27 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5570)
  %i.d = load i64, ptr %i.b, align 8, !range !51, !alias.scope !5571, !noundef !23 ; 3 uses
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !range !51, !alias.scope !5572, !noundef !23 ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 4)
  %i.h = icmp eq i64 %i.e, %i.g
  br i1 %i.h, label %bb.b, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i64 %i.e, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
  ]

default.unreachable:                              ; preds = %bb.f, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i64 %i.f, 5
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5574)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.k = load i8, ptr %i.j, align 8, !range !47, !alias.scope !5575, !noundef !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.m = load i8, ptr %i.l, align 8, !range !47, !alias.scope !5576, !noundef !23
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.q = tail call fastcc noundef zeroext i1 @_RNvXsC_NtCslLuZgPVt6hg_3ide17navigation_targetNtB5_16NavigationTargetNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.p) #54
  br i1 %i.q, label %bb.e, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5578)
  %i.r = icmp eq i64 %i.d, %i.f
  br i1 %i.r, label %bb.f, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.f:                                             ; preds = %bb.e
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.k
    i64 3, label %bb.n
    i64 4, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !5579, !noundef !23 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !5580, !noundef !23
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %.split.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split.i.i.i:                                     ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !5580, !nonnull !23, !noundef !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !5579, !nonnull !23, !noundef !23
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.aa, ptr nonnull %i.y, i64 %i.t), !noalias !5581
  %i.ab = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ab, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5583)
  %i.ae = load i64, ptr %i.ac, align 8, !range !41, !alias.scope !5584, !noundef !23 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !range !41, !alias.scope !5585, !noundef !23
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ah = trunc nuw i64 %i.ae to i1
  br i1 %i.ah, label %bb.j, label %.split6.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !5584, !noundef !23 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !5585, !noundef !23
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %.split8.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split6.i.i.i:                                    ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ap = tail call noundef zeroext i1 @_RNvXs3_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao)
  br i1 %i.ap, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split8.i.i.i:                                    ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !5585, !nonnull !23, !noundef !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !5584, !nonnull !23, !noundef !23
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.at, ptr nonnull %i.ar, i64 %i.aj), !noalias !5586
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.au, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.k:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5588)
  %i.ax = load i64, ptr %i.av, align 8, !range !41, !alias.scope !5589, !noundef !23 ; 2 uses
  %i.ay = load i64, ptr %i.aw, align 8, !range !41, !alias.scope !5590, !noundef !23
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.l, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ba = trunc nuw i64 %i.ax to i1
  br i1 %i.ba, label %bb.m, label %.split7.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !5589, !noundef !23 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !5590, !noundef !23
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %.split10.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split7.i.i.i:                                    ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bi = tail call noundef zeroext i1 @_RNvXs3_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
  br i1 %i.bi, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split10.i.i.i:                                   ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !5590, !nonnull !23, !noundef !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !5589, !nonnull !23, !noundef !23
  %bcmp.i4.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bm, ptr nonnull %i.bk, i64 %i.bc), !noalias !5591
  %i.bn = icmp eq i32 %bcmp.i4.i.i.i.i, 0
  br i1 %i.bn, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.n:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5593)
  %i.bq = load i64, ptr %i.bo, align 8, !range !41, !alias.scope !5594, !noundef !23 ; 2 uses
  %i.br = load i64, ptr %i.bp, align 8, !range !41, !alias.scope !5595, !noundef !23
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bt = trunc nuw i64 %i.bq to i1
  br i1 %i.bt, label %bb.p, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !5594, !noundef !23 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !5595, !noundef !23
  %i.by = icmp eq i64 %i.bv, %i.bx
  br i1 %i.by, label %.split9.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split9.i.i.i:                                    ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !5595, !nonnull !23, !noundef !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !5594, !nonnull !23, !noundef !23
  %bcmp.i7.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.cc, ptr nonnull %i.ca, i64 %i.bv), !noalias !5596
  %i.cd = icmp eq i32 %bcmp.i7.i.i.i.i, 0
  br i1 %i.cd, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.cg = tail call noundef zeroext i1 @_RNvXs3_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf)
  br i1 %i.cg, label %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i: ; preds = %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, %.split9.i.i.i, %.split10.i.i.i, %.split7.i.i.i, %.split8.i.i.i, %.split6.i.i.i, %.split.i.i.i, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !range !40, !alias.scope !5575, !noundef !23
  %.not.i.i.i = icmp eq i64 %i.ci, -1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !40, !alias.scope !5576, !noundef !23
  %i.cl = icmp eq i64 %i.ck, -1                   ; 2 uses
  br i1 %.not.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i
  br i1 %i.cl, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.split11.i.i.i

bb.r:                                             ; preds = %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.thread4.i.i.i
  br i1 %i.cl, label %bb.s, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split11.i.i.i:                                   ; preds = %bb.q
  %i.cm = tail call fastcc noundef zeroext i1 @_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #54
  br i1 %i.cm, label %bb.s, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.s:                                             ; preds = %.split11.i.i.i, %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 145
  %i.co = load i8, ptr %i.cn, align 1, !range !47, !alias.scope !5575, !noundef !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 145
  %i.cq = load i8, ptr %i.cp, align 1, !range !47, !alias.scope !5576, !noundef !23
  %i.cr = icmp eq i8 %i.co, %i.cq
  br i1 %i.cr, label %bb.t, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  %i.ct = load i8, ptr %i.cs, align 2, !range !47, !alias.scope !5575, !noundef !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 146
  %i.cv = load i8, ptr %i.cu, align 2, !range !47, !alias.scope !5576, !noundef !23
  %i.cw = icmp eq i8 %i.ct, %i.cv
  br i1 %i.cw, label %.split72, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split72:                                         ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 147
  %i.cy = load i8, ptr %i.cx, align 1, !range !47, !alias.scope !5575, !noundef !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 147
  %i.da = load i8, ptr %i.cz, align 1, !range !47, !alias.scope !5576, !noundef !23
  %i.db = icmp eq i8 %i.cy, %i.da
  br i1 %i.db, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.u:                                             ; preds = %bb.b
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !alias.scope !5571, !noundef !23
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.df = load i32, ptr %i.de, align 8, !alias.scope !5572, !noundef !23
  %i.dg = icmp eq i32 %i.dd, %i.df
  br i1 %i.dg, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.v:                                             ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.di = load i32, ptr %i.dh, align 8, !alias.scope !5571, !noundef !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !alias.scope !5572, !noundef !23
  %i.dl = icmp eq i32 %i.di, %i.dk
  br i1 %i.dl, label %.split, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.w:                                             ; preds = %bb.b
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !5571, !noundef !23 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !5572, !noundef !23
  %i.dq = icmp eq i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.x, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split:                                           ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ds = load i32, ptr %i.dr, align 4, !alias.scope !5571, !noundef !23
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !alias.scope !5572, !noundef !23
  %i.dv = icmp eq i32 %i.ds, %i.du
  br i1 %i.dv, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !5572, !nonnull !23, !noundef !23
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !5571, !nonnull !23, !noundef !23
  %i.ea = icmp eq i64 %i.dn, 0
  br i1 %i.ea, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7, label %.lr.ph.i.i.i

bb.y:                                             ; preds = %_RNvYNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i
  %i.eb = add nuw i64 %.sroa.01.06.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.eb, %i.dn
  br i1 %exitcond.not.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x, %bb.y
  %.sroa.01.06.i.i.i = phi i64 [ %i.eb, %bb.y ], [ 0, %bb.x ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [104 x i8], ptr %i.dz, i64 %.sroa.01.06.i.i.i ; 3 uses
  %i.ed = getelementptr inbounds nuw [104 x i8], ptr %i.dx, i64 %.sroa.01.06.i.i.i ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5600)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !5601, !noalias !5602, !noundef !23 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !5603, !noalias !5602, !noundef !23
  %i.ei = icmp eq i64 %i.ef, %i.eh
  br i1 %i.ei, label %bb.z, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !5603, !noalias !5602, !nonnull !23, !noundef !23
  %i.el = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !5601, !noalias !5602, !nonnull !23, !noundef !23
  %bcmp.i.i.i3.i.i = tail call i32 @bcmp(ptr nonnull %i.em, ptr nonnull %i.ek, i64 %i.ef), !noalias !5604
  %i.en = icmp eq i32 %bcmp.i.i.i3.i.i, 0
  br i1 %i.en, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i: ; preds = %bb.z
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.eq = tail call fastcc noundef zeroext i1 @_RNvXsC_NtCslLuZgPVt6hg_3ide17navigation_targetNtB5_16NavigationTargetNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ep) #54, !noalias !5602
  br i1 %i.eq, label %bb.y, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit: ; preds = %bb.u
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.es = load i32, ptr %i.er, align 4, !alias.scope !5571, !noundef !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.eu = load i32, ptr %i.et, align 4, !alias.scope !5572, !noundef !23
  %i.ev = icmp eq i32 %i.es, %i.eu
  br i1 %i.ev, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7, %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, %bb.w, %.lr.ph, %bb.u, %bb.k, %bb.v, %bb.r, %bb.q, %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i, %bb.d, %bb.c, %bb.t, %bb.s, %.split11.i.i.i, %.split.i.i.i, %.split6.i.i.i, %.split7.i.i.i, %.split8.i.i.i, %.split9.i.i.i, %.split10.i.i.i, %bb.e, %bb.g, %bb.j, %bb.m, %bb.p, %bb.n, %bb.h, %.split, %.split72, %_RNvYNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i, %.lr.ph.i.i.i, %bb.z, %bb.a
  %i.ew = phi i1 [ false, %_RNvYNtNtCslLuZgPVt6hg_3ide5hover17HoverGotoTypeDataNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.i.i.i ], [ true, %bb.a ], [ false, %bb.z ], [ false, %.lr.ph.i.i.i ], [ false, %bb.n ], [ false, %bb.h ], [ true, %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7 ], [ false, %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit ], [ false, %bb.w ], [ false, %.lr.ph ], [ false, %bb.u ], [ false, %bb.k ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.q ], [ false, %_RNvXsk_NtCslLuZgPVt6hg_3ide9runnablesNtB5_12RunnableKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.t ], [ false, %bb.s ], [ false, %.split11.i.i.i ], [ false, %.split.i.i.i ], [ false, %.split6.i.i.i ], [ false, %.split7.i.i.i ], [ false, %.split8.i.i.i ], [ false, %.split9.i.i.i ], [ false, %.split10.i.i.i ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.m ], [ false, %.split72 ], [ false, %.split ], [ false, %bb.p ]
  ret i1 %i.ew

_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread7: ; preds = %bb.y, %.split72, %.split, %bb.x, %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.ex = add nuw i64 %.sroa.01.012, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %2
  br i1 %exitcond.not, label %_RNvYNtNtCslLuZgPVt6hg_3ide5hover11HoverActionNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #23 !guid !5611 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.06 ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.06 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5615)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !5616, !noundef !23 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5617, !noundef !23
  %i.i = icmp eq i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5617, !nonnull !23, !noundef !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5616, !nonnull !23, !noundef !23
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.m, ptr nonnull %i.k, i64 %i.f), !noalias !5618
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, label %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.p = load i8, ptr %i.o, align 8, !range !56, !alias.scope !5616, !noundef !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !56, !alias.scope !5617, !noundef !23
  %.not = icmp eq i8 %i.p, %i.r
  br i1 %.not, label %bb.b, label %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread: ; preds = %bb.b, %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit, %.lr.ph, %bb.c, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.c ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCslLuZgPVt6hg_3ide7moniker17MonikerDescriptorNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCshzWfHUSfYae_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #24 personality ptr @rust_eh_personality !guid !5627 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !23
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !23 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !5628
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !5628
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !5628, !noundef !23
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit

_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !23
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
end_hunk_0
