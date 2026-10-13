Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.13?download=true
inline.NumInlined: 2010
inline.NumDeleted: 1053
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB6_8Iterator4folduNCINvNvB2p_8for_each4callB1q_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3l_3VecB1q_E14extend_trustedBQ_E0E0EB1w_:bb.a
  %i.b = load i8, ptr %i.a, align 8, !range !29, !alias.scope !559, !noalias !560, !noundef !12 ; 2 uses
  %.not.i22.i.i = icmp eq i8 %i.b, 2
  br i1 %.not.i22.i.i, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1q_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3I_3VecB1q_E14extend_trustedBQ_E0E0EB1w_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.promoted.i.i = load i64, ptr %0, align 8, !alias.scope !561, !noalias !560
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %.sroa.6.sroa.0.0.copyload.i.i.i = load i24, ptr %.sroa.6.0..sroa_idx.i.i.i, align 1, !alias.scope !561, !noalias !560
  %i.c = zext i24 %.sroa.6.sroa.0.0.copyload.i.i.i to i32
  %i.d = add i64 %.promoted.i.i, -1               ; 7 uses
  %.not17.i.i10.i = icmp eq i64 %i.d, 0
  br i1 %.not17.i.i10.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.i
  %.val.i.i.i = load i32, ptr %i.a, align 8, !alias.scope !559, !noalias !560 ; 3 uses
  %.sroa.015.0.extract.trunc.i.i.i = trunc i32 %.val.i.i.i to i8 ; 2 uses
  %.not.i.i = icmp eq i8 %.sroa.015.0.extract.trunc.i.i.i, 2
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB2M_17NeverShortCircuituE10wrap_mut_2uBZ_NCINvNvB1Y_8for_each4callBZ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4q_3VecBZ_E14extend_trustedQB3_E0E0E0B37_EB15_.exit.loopexit.i, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %min.iters.check = icmp ult i64 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader3, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.preheader
  %n.vec = and i64 %i.d, -8                       ; 3 uses
  %i.e = and i64 %i.d, 7
  %i.f = add i64 %.sroa.4.0.copyload.i, %n.vec    ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.val.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.g = getelementptr [4 x i8], ptr %.sroa.6.0.copyload.i, i64 %.sroa.4.0.copyload.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.h, align 1, !noalias !562
  store <4 x i32> %broadcast.splat, ptr %i.i, align 1, !noalias !562
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !554

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %..thread_crit_edge.i, label %.lr.ph.split.i.preheader3

.lr.ph.split.i.preheader3:                        ; preds = %.lr.ph.split.i.preheader, %middle.block
  %.ph = phi i64 [ %i.d, %.lr.ph.split.i.preheader ], [ %i.e, %middle.block ]
  %.ph4 = phi i64 [ %.sroa.4.0.copyload.i, %.lr.ph.split.i.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph.split.i

..thread_crit_edge.i:                             ; preds = %.lr.ph.split.i, %middle.block
  %.lcssa = phi i64 [ %i.f, %middle.block ], [ %i.p, %.lr.ph.split.i ]
  store i64 1, ptr %0, align 8, !alias.scope !559, !noalias !560
  br label %.thread.i

.thread.i:                                        ; preds = %..thread_crit_edge.i, %.lr.ph.i.i
  %.lcssa8.i = phi i64 [ %.lcssa, %..thread_crit_edge.i ], [ %.sroa.4.0.copyload.i, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i = phi i8 [ %.sroa.015.0.extract.trunc.i.i.i, %..thread_crit_edge.i ], [ %i.b, %.lr.ph.i.i ]
  store i8 2, ptr %i.a, align 8, !alias.scope !559, !noalias !560
  %.sroa.0.0.insert.ext.i.i3.i = zext i8 %.lcssa.i to i32
  %.sroa.5.0.insert.shift.i.i4.i = shl nuw i32 %i.c, 8
  %.sroa.0.0.insert.insert.i.i5.i = or disjoint i32 %.sroa.5.0.insert.shift.i.i4.i, %.sroa.0.0.insert.ext.i.i3.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload.i, i64 %.lcssa8.i
  store i32 %.sroa.0.0.insert.insert.i.i5.i, ptr %i.k, align 1, !noalias !562
  %i.l = add i64 %.lcssa8.i, 1
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1q_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3I_3VecB1q_E14extend_trustedBQ_E0E0EB1w_.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader3, %.lr.ph.split.i
  %i.m = phi i64 [ %i.q, %.lr.ph.split.i ], [ %.ph, %.lr.ph.split.i.preheader3 ]
  %i.n = phi i64 [ %i.p, %.lr.ph.split.i ], [ %.ph4, %.lr.ph.split.i.preheader3 ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload.i, i64 %i.n
  store i32 %.val.i.i.i, ptr %i.o, align 1, !noalias !562
  %i.p = add i64 %i.n, 1                          ; 2 uses
  %i.q = add i64 %i.m, -1                         ; 2 uses
  %.not17.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not17.i.i.i, label %..thread_crit_edge.i, label %.lr.ph.split.i, !llvm.loop !555

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB2M_17NeverShortCircuituE10wrap_mut_2uBZ_NCINvNvB1Y_8for_each4callBZ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4q_3VecBZ_E14extend_trustedQB3_E0E0E0B37_EB15_.exit.loopexit.i: ; preds = %.lr.ph.i
  store i64 %i.d, ptr %0, align 8, !alias.scope !559, !noalias !560
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1q_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3I_3VecB1q_E14extend_trustedBQ_E0E0EB1w_.exit

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callB1q_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3I_3VecB1q_E14extend_trustedBQ_E0E0EB1w_.exit: ; preds = %bb.a, %.thread.i, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB2M_17NeverShortCircuituE10wrap_mut_2uBZ_NCINvNvB1Y_8for_each4callBZ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4q_3VecBZ_E14extend_trustedQB3_E0E0E0B37_EB15_.exit.loopexit.i
  %.val15.i.i = phi i64 [ %i.l, %.thread.i ], [ %.sroa.4.0.copyload.i, %bb.a ], [ %.sroa.4.0.copyload.i, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvMNtNtBc_3ops9try_traitINtB2M_17NeverShortCircuituE10wrap_mut_2uBZ_NCINvNvB1Y_8for_each4callBZ_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4q_3VecBZ_E14extend_trustedQB3_E0E0E0B37_EB15_.exit.loopexit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val15.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !563
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtBW_6copied6CopiedINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess_0ENtB6_8Iterator4folduNCINvNvB3P_8for_each4callNtNtB29_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5c_3VecB4y_E14extend_trustedBQ_E0E0EB2Z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !596, !noalias !597 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !596, !noalias !597 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !596, !noalias !597
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !600, !noalias !601, !nonnull !12, !noundef !12 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !600, !noalias !601 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i.i.i.i, %i.c
  br i1 %i.d, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtBW_6copied6CopiedINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess_0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callNtNtB29_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5z_3VecB4V_E14extend_trustedBQ_E0E0EB2Z_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.val4.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %.lr.ph.i.i.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.g = phi ptr [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.h, %bb.f ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !600, !noalias !601
  %.val7.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !602, !nonnull !12, !align !32, !noundef !12
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val8.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !602, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !603
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val8.i.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !602

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.j = load i64, ptr %i.a, align 8, !range !27, !noalias !603, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = load i64, ptr %i.e, align 8, !range !28, !noalias !603, !noundef !12 ; 3 uses
  br i1 %i.k, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %.noexc.i.i.i.i
  %i.m = load i64, ptr %i.f, align 8, !noalias !603
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.m) #53
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !602

.noexc9.i.i.i.i:                                  ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %.noexc.i.i.i.i
  %i.n = load ptr, ptr %i.f, align 8, !noalias !603, !nonnull !12, !noundef !12 ; 2 uses
  %i.o = icmp ule i64 %.val8.i.i.i.i, %i.l
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !603
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 %.val8.i.i.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr nonnull readonly align 4 %.val7.i.i.i.i, i64 %i.p, i1 false), !noalias !604
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload.i.i, i64 %.val4.i.i.i.i ; 3 uses
  store i64 %i.l, ptr %i.q, align 8, !noalias !605
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.n, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !605
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.val8.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !605
  %i.r = add i64 %.val4.i.i.i.i, 1                ; 2 uses
  %i.s = icmp eq ptr %i.h, %i.c
  br i1 %i.s, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtBW_6copied6CopiedINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess_0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callNtNtB29_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5z_3VecB4V_E14extend_trustedBQ_E0E0EB2Z_.exit, label %bb.b

.loopexit.i.i.i.i:                                ; preds = %bb.b
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.c
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val4.i.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !602
  resume { ptr, i32 } %lpad.phi.i.i.i.i

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtBW_6copied6CopiedINtNtNtBc_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENCNvNtNtCs8frGy5WneL6_4fish8builtins3set14new_var_valuess_0ENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callNtNtB29_9utfstring11Utf32StringNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB5z_3VecB4V_E14extend_trustedBQ_E0E0EB2Z_.exit: ; preds = %bb.f, %bb.a
  %.val6.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i, %bb.a ], [ %i.r, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val6.i.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !602
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_8Iterator4folduNCINvNvB1R_8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2K_3VechE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !633, !noalias !634 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !633, !noalias !634 ; 8 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !633, !noalias !634 ; 8 uses
  %.sroa.6.0.copyload.i.i6 = ptrtoaddr ptr %.sroa.6.0.copyload.i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !636, !noalias !637, !nonnull !12, !noundef !12 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !636, !noalias !637 ; 8 uses
  %.promoted.i.i.i7 = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i.i.i, %i.b
  br i1 %i.c, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VechE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.b to i64                ; 3 uses
  %i.e = sub i64 %i.d, %.promoted.i.i.i7          ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = add i64 %.sroa.4.0.copyload.i.i, %.sroa.6.0.copyload.i.i6
  %i.g = sub i64 %.promoted.i.i.i7, %i.f
  %diff.check = icmp ugt i64 %i.g, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.h = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 5 uses
  %i.i = add i64 %.sroa.4.0.copyload.i.i, %n.vec  ; 2 uses
  %i.j = getelementptr i8, ptr %.promoted.i.i.i, i64 %n.vec ; 2 uses
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.promoted.i.i.i, i64 %index ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !638
  %wide.load9 = load <16 x i8>, ptr %i.l, align 1, !noalias !638
  %i.m = getelementptr i8, ptr %i.k, i64 %index   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <16 x i8> %wide.load, ptr %i.m, align 1, !noalias !639
  store <16 x i8> %wide.load9, ptr %i.n, align 1, !noalias !639
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !625

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !640

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec11 = and i64 %i.e, -8                     ; 4 uses
  %i.p = add i64 %.sroa.4.0.copyload.i.i, %n.vec11 ; 2 uses
  %i.q = getelementptr i8, ptr %.promoted.i.i.i, i64 %n.vec11 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.6.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 3 uses
  %next.gep13 = getelementptr i8, ptr %.promoted.i.i.i, i64 %index12
  %wide.load14 = load <8 x i8>, ptr %next.gep13, align 1, !noalias !638
  %i.s = getelementptr i8, ptr %i.r, i64 %index12
  store <8 x i8> %wide.load14, ptr %i.s, align 1, !noalias !639
  %index.next15 = add nuw i64 %index12, 8         ; 2 uses
  %i.t = icmp eq i64 %index.next15, %n.vec11
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !626

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %i.e, %n.vec11
  br i1 %cmp.n16, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload.i.i, %iter.check ], [ %.sroa.4.0.copyload.i.i, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 2 uses
  %.ph19 = phi ptr [ %.promoted.i.i.i, %iter.check ], [ %.promoted.i.i.i, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 3 uses
  %.ph1922 = ptrtoaddr ptr %.ph19 to i64          ; 2 uses
  %i.u = sub i64 %i.d, %.ph1922
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %i.v = phi i64 [ %i.z, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.w = phi ptr [ %i.x, %.lr.ph.i.i.i.prol ], [ %.ph19, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  %.val7.i.i.i.prol = load i8, ptr %i.w, align 1, !noalias !638, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.v
  store i8 %.val7.i.i.i.prol, ptr %i.y, align 1, !noalias !639
  %i.z = add i64 %i.v, 1                          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !627

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa21.unr.a = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.prol ]
  %.unr23 = phi ptr [ %.ph19, %.lr.ph.i.i.i.preheader ], [ %i.x, %.lr.ph.i.i.i.prol ]
  %i.aa = sub i64 %.ph1922, %i.d
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ac = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.ad = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.unr23, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.val7.i.i.i = load i8, ptr %i.ad, align 1, !noalias !638, !noundef !12
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.ac
  store i8 %.val7.i.i.i, ptr %i.af, align 1, !noalias !639
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %.val7.i.i.i.1 = load i8, ptr %i.ae, align 1, !noalias !638, !noundef !12
  %i.ah = getelementptr i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.ac
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  store i8 %.val7.i.i.i.1, ptr %i.ai, align 1, !noalias !639
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %.val7.i.i.i.2 = load i8, ptr %i.ag, align 1, !noalias !638, !noundef !12
  %i.ak = getelementptr i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.ac
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i8 %.val7.i.i.i.2, ptr %i.al, align 1, !noalias !639
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 3 uses
  %.val7.i.i.i.3 = load i8, ptr %i.aj, align 1, !noalias !638, !noundef !12
  %i.an = getelementptr i8, ptr %.sroa.6.0.copyload.i.i, i64 %i.ac
  %i.ao = getelementptr i8, ptr %i.an, i64 3
  store i8 %.val7.i.i.i.3, ptr %i.ao, align 1, !noalias !639
  %i.ap = add i64 %i.ac, 4                        ; 2 uses
  %i.aq = icmp eq ptr %i.am, %i.b
  br i1 %i.aq, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !628

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa5 = phi ptr [ %i.q, %vec.epilog.middle.block ], [ %i.j, %middle.block ], [ %.lcssa21.unr.a, %.lr.ph.i.i.i.prol.loopexit ], [ %i.am, %.lr.ph.i.i.i ]
  %.lcssa = phi i64 [ %i.p, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa20.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ap, %.lr.ph.i.i.i ]
  store ptr %.lcssa5, ptr %0, align 8, !alias.scope !636, !noalias !637
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VechE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VechE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %._crit_edge.i.i.i
  %.val6.i.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val6.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !638
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_8Iterator8try_foldjNCINvNvXs0_NtBW_10take_whileINtB2q_9TakeWhileppEB1R_8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3p_B3m_10wrap_mut_2jhNCNvYIB2I_BQ_B45_EB1R_5count0E0E0INtNtB3r_12control_flow11ControlFlowB3m_jEEB4d_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias nofree noundef writeonly captures(none) dereferenceable(1) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !align !13, !noundef !12 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !657, !noalias !658, !nonnull !12, !noundef !12 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !657, !noalias !658 ; 5 uses
  %i.c = icmp eq ptr %.promoted.i.i.i, %i.b
  br i1 %i.c, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs0_NtBW_10take_whileINtB2E_9TakeWhileppENtB6_8Iterator8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3N_B3K_10wrap_mut_2jhNCNvYIB2W_BQ_B4t_EB3f_5count0E0E0INtNtB3P_12control_flow11ControlFlowB3K_jEEB4B_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %.promoted27.i.i.i = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.d = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %i.e = add i64 %1, %i.d
  %i.f = sub i64 %i.e, %.promoted27.i.i.i
  %i.g = sub i64 %i.d, %.promoted27.i.i.i
  %scevgep28.i.i.i = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.g
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.01.019.i.i.i = phi i64 [ %i.l, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i ], [ %1, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.h = phi ptr [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i ], [ %.promoted.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  %.val9.i.i.i = load i8, ptr %i.h, align 1, !noalias !659, !noundef !12
  %.not.i.i.i.i.i = icmp eq i8 %.val9.i.i.i, 92
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq i64 %.sroa.01.019.i.i.i, -1
  br i1 %i.j, label %bb.c, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = sub i64 0, %1
  %scevgep.i.i.i = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.k
  store ptr %scevgep.i.i.i, ptr %.val, align 8, !alias.scope !657, !noalias !658
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #54, !noalias !659
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i: ; preds = %bb.b
  %i.l = add nuw i64 %.sroa.01.019.i.i.i, 1
  %i.m = icmp eq ptr %i.i, %i.b
  br i1 %i.m, label %..loopexit_crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.i, ptr %.val, align 8, !alias.scope !657, !noalias !658
  store i8 1, ptr %3, align 1, !alias.scope !658, !noalias !660
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs0_NtBW_10take_whileINtB2E_9TakeWhileppENtB6_8Iterator8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3N_B3K_10wrap_mut_2jhNCNvYIB2W_BQ_B4t_EB3f_5count0E0E0INtNtB3P_12control_flow11ControlFlowB3K_jEEB4B_.exit

..loopexit_crit_edge.i.i.i:                       ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1a_9try_trait17NeverShortCircuitjEjENCINvNvXs0_NtB6_10take_whileINtB2B_9TakeWhileppENtNtNtB8_6traits8iterator8Iterator8try_fold5checkhjB1K_NCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB1N_B1K_10wrap_mut_2jhNCNvYIB2T_QINtB4_6CopiedINtNtNtBa_5slice4iter4IterhEEB45_EB3c_5count0E0E0E0B4d_.exit.i.i.i
  store ptr %scevgep28.i.i.i, ptr %.val, align 8, !alias.scope !657, !noalias !658
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs0_NtBW_10take_whileINtB2E_9TakeWhileppENtB6_8Iterator8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3N_B3K_10wrap_mut_2jhNCNvYIB2W_BQ_B4t_EB3f_5count0E0E0INtNtB3P_12control_flow11ControlFlowB3K_jEEB4B_.exit

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs0_NtBW_10take_whileINtB2E_9TakeWhileppENtB6_8Iterator8try_fold5checkhjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_00NCINvMB3N_B3K_10wrap_mut_2jhNCNvYIB2W_BQ_B4t_EB3f_5count0E0E0INtNtB3P_12control_flow11ControlFlowB3K_jEEB4B_.exit: ; preds = %bb.a, %bb.d, %..loopexit_crit_edge.i.i.i
  %.sroa.01.018.i.i.i = phi i64 [ %.sroa.01.019.i.i.i, %bb.d ], [ %i.f, %..loopexit_crit_edge.i.i.i ], [ %1, %bb.a ]
  %.sroa.0.0.i.i.i = phi i64 [ 1, %bb.d ], [ 0, %..loopexit_crit_edge.i.i.i ], [ 0, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i.i.i, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.01.018.i.i.i, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItermEENtB6_8Iterator4folduNCINvNvB1R_8for_each4callmNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB2K_3VecmE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !alias.scope !686, !noalias !687 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !686, !noalias !687 ; 6 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !686, !noalias !687 ; 3 uses
  %.sroa.6.0.copyload.i.i6 = ptrtoaddr ptr %.sroa.6.0.copyload.i.i to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !689, !noalias !690, !nonnull !12, !noundef !12 ; 3 uses
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !689, !noalias !690 ; 6 uses
  %.promoted.i.i.i7 = ptrtoaddr ptr %.promoted.i.i.i to i64 ; 2 uses
  %i.c = icmp eq ptr %.promoted.i.i.i, %i.b
  br i1 %i.c, label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItermEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callmNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VecmE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.d = ptrtoaddr ptr %i.b to i64
  %i.e = add i64 %i.d, -4
  %i.f = sub i64 %i.e, %.promoted.i.i.i7          ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader10, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.i = shl i64 %.sroa.4.0.copyload.i.i, 2
  %i.j = add i64 %i.i, %.sroa.6.0.copyload.i.i6
  %i.k = sub i64 %.promoted.i.i.i7, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 9223372036854775800      ; 4 uses
  %i.l = add i64 %.sroa.4.0.copyload.i.i, %n.vec  ; 2 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.m ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.6.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.promoted.i.i.i, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !noalias !691
  %wide.load8 = load <4 x i32>, ptr %i.q, align 4, !noalias !691
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> %wide.load, ptr %i.r, align 4, !noalias !692
  store <4 x i32> %wide.load8, ptr %i.s, align 4, !noalias !692
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !680

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader10

.lr.ph.i.i.i.preheader10:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload.i.i, %vector.memcheck ], [ %.sroa.4.0.copyload.i.i, %.lr.ph.i.i.i.preheader ], [ %i.l, %middle.block ]
  %.ph11 = phi ptr [ %.promoted.i.i.i, %vector.memcheck ], [ %.promoted.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader10, %.lr.ph.i.i.i
  %i.u = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader10 ] ; 2 uses
  %i.v = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.ph11, %.lr.ph.i.i.i.preheader10 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 3 uses
  %.val7.i.i.i = load i32, ptr %i.v, align 4, !noalias !691, !noundef !12
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload.i.i, i64 %i.u
  store i32 %.val7.i.i.i, ptr %i.x, align 4, !noalias !692
  %i.y = add i64 %i.u, 1                          ; 2 uses
  %i.z = icmp eq ptr %i.w, %i.b
  br i1 %i.z, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !681

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa5 = phi ptr [ %i.n, %middle.block ], [ %i.w, %.lr.ph.i.i.i ]
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.y, %.lr.ph.i.i.i ]
  store ptr %.lcssa5, ptr %0, align 8, !alias.scope !689, !noalias !690
  br label %_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItermEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callmNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VecmE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit

_RINvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits8iteratorQINtNtNtBa_8adapters6copied6CopiedINtNtNtBc_5slice4iter4ItermEENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callmNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB37_3VecmE14extend_trustedBQ_E0E0ECs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %._crit_edge.i.i.i
  %.val6.i.i.i = phi i64 [ %.lcssa, %._crit_edge.i.i.i ], [ %.sroa.4.0.copyload.i.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val6.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !691
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1x_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENvMs0_NtB1D_8completeNtB4E_10Completion15from_completionENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5t_8for_each4callB4T_NCINvMsk_NtB3P_3vecINtB6J_3VecB4T_E14extend_trustedBN_E0E0EB1D_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !alias.scope !724 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !724 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !724
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1t_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB31_9utfstring11Utf32StringNtNtB1z_8complete10CompletionuNvMs0_B5W_B5U_15from_completionNCINvNvB4u_8for_each4callB5U_NCINvMsk_NtB3L_3vecINtB7v_3VecB5U_E14extend_trustedIBO_BN_B6o_EE0E0E0EB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.val10.i.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.b ], [ %i.u, %bb.f ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.f ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i.i.i ; 2 uses
  %.val15.i.i.i = load ptr, ptr %i.k, align 8, !noalias !725, !nonnull !12, !align !32, !noundef !12
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val16.i.i.i = load i64, ptr %i.l, align 8, !noalias !725, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !726
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 2305843009213693952) %.val16.i.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !725

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !range !27, !noalias !726, !noundef !12
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = load i64, ptr %i.i, align 8, !range !28, !noalias !726, !noundef !12 ; 3 uses
  br i1 %i.n, label %bb.d, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i.i, !prof !16

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.p = load i64, ptr %i.j, align 8, !noalias !726
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.p) #53
          to label %.noexc17.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !725

.noexc17.i.i.i:                                   ; preds = %bb.d
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.q = load ptr, ptr %i.j, align 8, !noalias !726, !nonnull !12, !noundef !12 ; 2 uses
  %i.r = icmp ule i64 %.val16.i.i.i, %i.o
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !726
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.val16.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i.i
  %i.s = shl nuw nsw i64 %.val16.i.i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull readonly align 4 %.val15.i.i.i, i64 %i.s, i1 false), !noalias !727
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i: ; preds = %bb.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !728
  store i64 %i.o, ptr %i.a, align 8, !noalias !729
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !729
  store i64 %.val16.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !noalias !729
  invoke void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion15from_completion(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.f unwind label %.loopexit.i.i.i, !noalias !725

bb.f:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !728
  %i.t = getelementptr inbounds nuw [56 x i8], ptr %.sroa.8.0.copyload.i.i, i64 %.val10.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !730
  %i.u = add i64 %.val10.i.i.i, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !728
  %i.v = add nuw i64 %.sroa.01.0.i.i.i, 1         ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.h
  br i1 %i.w, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1t_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB31_9utfstring11Utf32StringNtNtB1z_8complete10CompletionuNvMs0_B5W_B5U_15from_completionNCINvNvB4u_8for_each4callB5U_NCINvMsk_NtB3L_3vecINtB7v_3VecB5U_E14extend_trustedIBO_BN_B6o_EE0E0E0EB1z_.exit, label %bb.c

.loopexit.i.i.i:                                  ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtBZ_9utfstring11Utf32StringuNvYBV_NtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedNCIB2_B1F_NtNtCs8frGy5WneL6_4fish8complete10CompletionuNvMs0_B3e_B3c_15from_completionNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3c_NCINvMsk_NtB2k_3vecINtB5w_3VecB3c_E14extend_trustedINtB4_3MapIB6d_IB6d_INtNtNtBa_5slice4iter4IterNtNtNtNtB3g_8builtins6shared4misc11BuiltinDataENCNvB6Y_17builtin_get_names0EB2a_EB3V_EE0E0E0E0B3g_.exit.i.i.i.i, %bb.c
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp.i.i.i:                         ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !725
  resume { ptr, i32 } %lpad.phi.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc11BuiltinDataENCNvB1t_17builtin_get_names0ENvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtNtCs1xwejQucwHj_5alloc6borrow7ToOwned8to_ownedENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtB31_9utfstring11Utf32StringNtNtB1z_8complete10CompletionuNvMs0_B5W_B5U_15from_completionNCINvNvB4u_8for_each4callB5U_NCINvMsk_NtB3L_3vecINtB7v_3VecB5U_E14extend_trustedIBO_BN_B6o_EE0E0E0EB1z_.exit: ; preds = %bb.f, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.6.0.copyload.i.i, %bb.a ], [ %i.u, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i.i, align 8, !noalias !725
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1v_8wildcard8expanderNtB2f_16WildCardExpander3new0ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3i_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB41_E6extendBX_E0ENtNtB5L_8iterator8Iterator4folduNCINvNvB6u_8for_each4callTB41_uENCINvXs1i_NtB3k_3mapINtB7G_7HashMapB41_uB4S_EIB5H_B7p_E6extendBN_E0E0EB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1r_8wildcard8expanderNtB2b_16WildCardExpander3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringTB40_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB58_7HashSetB40_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB39_7collect6ExtendB40_E6extendBN_E0NCINvNvB35_8for_each4callB4R_NCINvXs1i_NtB5a_3mapINtB81_7HashMapB40_uB5V_EIB6K_B4R_E6extendIBO_BN_B4Z_EE0E0E0EB1r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 56
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.01.0.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !743
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g)
  %i.h = call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !744 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !743
  %i.i = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.f
  br i1 %i.j, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1r_8wildcard8expanderNtB2b_16WildCardExpander3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringTB40_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB58_7HashSetB40_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB39_7collect6ExtendB40_E6extendBN_E0NCINvNvB35_8for_each4callB4R_NCINvXs1i_NtB5a_3mapINtB81_7HashMapB40_uB5V_EIB6K_B4R_E6extendIBO_BN_B4Z_EE0E0E0EB1r_.exit, label %bb.c

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB1r_8wildcard8expanderNtB2b_16WildCardExpander3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringTB40_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB58_7HashSetB40_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB39_7collect6ExtendB40_E6extendBN_E0NCINvNvB35_8for_each4callB4R_NCINvXs1i_NtB5a_3mapINtB81_7HashMapB40_uB5V_EIB6K_B4R_E6extendIBO_BN_B4Z_EE0E0E0EB1r_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i32 } @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10take_while9TakeWhileINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockEENCNvMs5_B29_NtB29_6Parser17get_function_names0_0ENCB2L_s1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTRB27_lEB4L_uINtNtNtBc_3ops12control_flow11ControlFlowB4L_ENCB2L_s2_0NCINvNvB3H_4find5checkB4L_NCINvNvXs0_NtB8_10skip_whileINtB6t_9SkipWhileppEB3H_4next5checkB4L_NCB2L_s3_0E0E0E0B4Y_EB2b_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
