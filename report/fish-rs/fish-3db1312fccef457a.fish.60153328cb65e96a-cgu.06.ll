Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.06?download=true
inline.NumInlined: 2315
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser6lineno:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !3790, !noundef !10 ; 3 uses
  %i.f = icmp ult i64 %i.e, 9223372036854775807
  br i1 %i.f, label %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1a_3ast11JobPipelineEEE6borrowB1a_.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #41
  unreachable

_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1a_3ast11JobPipelineEEE6borrowB1a_.exit: ; preds = %bb.a
  %i.g = add nuw nsw i64 %i.e, 1
  store i64 %i.g, ptr %i.d, align 8, !noalias !3790
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !10
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1a_3ast11JobPipelineEEE6borrowB1a_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.j = invoke noundef i32 @_RNvMs5_NtCs8frGy5WneL6_4fish10parse_treeINtB5_7NodeRefNtNtB7_3ast11JobPipelineE17lineno_with_cacheB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.f

bb.d:                                             ; preds = %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1a_3ast11JobPipelineEEE6borrowB1a_.exit, %bb.e
  %i.k = phi i64 [ %i.l, %bb.e ], [ %i.e, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1a_3ast11JobPipelineEEE6borrowB1a_.exit ]
  %.sroa.0.0 = phi i32 [ %i.j, %bb.e ], [ 0, %_RNvMst_NtCs3oUPovFnLWP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCs8frGy5WneL6_4fish10parse_tree7NodeRefNtNtB1a_3ast11JobPipelineEEE6borrowB1a_.exit ]
  store i64 %i.k, ptr %i.d, align 8
  ret i32 %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %i.d, align 8
  %i.l = add i64 %.pre, -1
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load i64, ptr %i.d, align 8, !noundef !10
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.d, align 8
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser7context(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 16), (32, 64)) %0, ptr noalias nofree noundef align 8 dereferenceable(432) %1) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 524288, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @226, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser7job_add(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.i, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3801)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !3801
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !3801, !noundef !10 ; 5 uses
  %i.h = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !15, !alias.scope !3801, !noundef !10
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8grow_oneB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3801, !nonnull !10, !noundef !10 ; 3 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.j, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load i64, ptr %1, align 8, !noalias !3802, !noundef !10
  %i.o = add i64 %i.n, -1                         ; 2 uses
  store i64 %i.o, ptr %1, align 8, !noalias !3802
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #40
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.r = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.l, i64 %i.r, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 45, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #43
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.d
  store ptr %1, ptr %i.l, align 8
  %i.t = add nuw nsw i64 %i.g, 1
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !3801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.i
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit: ; preds = %bb.f, %bb.e, %bb.l, %bb.m
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.u, %bb.m ], [ %i.m, %bb.e ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body3

bb.l:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load i64, ptr %1, align 8, !noalias !3803, !noundef !10
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %1, align 8, !noalias !3803
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #40
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 5) i8 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser7set_one(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i32 %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.510.0.insert.ext = zext nneg i8 %i.b to i32
  %.sroa.510.0.insert.shift = shl nuw nsw i32 %.sroa.510.0.insert.ext, 24
  %i.d = and i32 %3, 16777215
  %.sroa.08.0.insert.insert = or disjoint i32 %.sroa.510.0.insert.shift, %i.d
  %i.e = tail call noundef i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7set_one(ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %.sroa.08.0.insert.insert, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %4)
  ret i8 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 5) i8 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser7set_var(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i32 %3, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.b = load i8, ptr %i.a, align 1, !range !19, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.sroa.510.0.insert.ext = zext nneg i8 %i.b to i32
  %.sroa.510.0.insert.shift = shl nuw nsw i32 %.sroa.510.0.insert.ext, 24
  %i.d = and i32 %3, 16777215
  %.sroa.08.0.insert.insert = or disjoint i32 %.sroa.510.0.insert.shift, %i.d
  %i.e = tail call noundef i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack3set(ptr noundef nonnull align 8 %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %.sroa.08.0.insert.insert, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %4)
  ret i8 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser8is_block(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !10 ; 2 uses
  %.not.not.not.i.not.not.not3.not = icmp eq i64 %i.d, 0
  br i1 %.not.not.not.i.not.not.not3.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1o_8iterator8Iterator3any5checkRBJ_NCNvMs5_BL_NtBL_6Parser8is_block0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBN_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs8frGy5WneL6_4fish6parser5BlockNCNvMs5_B1e_NtB1e_6Parser8is_block0E0B1g_.exit.i
  %i.f = phi ptr [ %i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs8frGy5WneL6_4fish6parser5BlockNCNvMs5_B1e_NtB1e_6Parser8is_block0E0B1g_.exit.i ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %.val.i = load i8, ptr %i.g, align 8, !range !39, !noalias !3806, !noundef !10 ; 2 uses
  %i.h = icmp ne i8 %.val.i, 5
  tail call void @llvm.assume(i1 %i.h)
  switch i8 %.val.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1o_8iterator8Iterator3any5checkRBJ_NCNvMs5_BL_NtBL_6Parser8is_block0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBN_.exit [
    i8 8, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs8frGy5WneL6_4fish6parser5BlockNCNvMs5_B1e_NtB1e_6Parser8is_block0E0B1g_.exit.i
    i8 7, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs8frGy5WneL6_4fish6parser5BlockNCNvMs5_B1e_NtB1e_6Parser8is_block0E0B1g_.exit.i
    i8 13, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs8frGy5WneL6_4fish6parser5BlockNCNvMs5_B1e_NtB1e_6Parser8is_block0E0B1g_.exit.i
  ]

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs8frGy5WneL6_4fish6parser5BlockNCNvMs5_B1e_NtB1e_6Parser8is_block0E0B1g_.exit.i: ; preds = %bb.b, %bb.b, %bb.b
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 -40 ; 2 uses
  %.not.not.not.i.not.not.not.not = icmp eq ptr %i.b, %i.i
  br i1 %.not.not.not.i.not.not.not.not, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1o_8iterator8Iterator3any5checkRBJ_NCNvMs5_BL_NtBL_6Parser8is_block0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBN_.exit, label %bb.b

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterNtNtCs8frGy5WneL6_4fish6parser5BlockENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtB1o_8iterator8Iterator3any5checkRBJ_NCNvMs5_BL_NtBL_6Parser8is_block0E0INtNtNtBa_3ops12control_flow11ControlFlowuEEBN_.exit: ; preds = %bb.b, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs8frGy5WneL6_4fish6parser5BlockNCNvMs5_B1e_NtB1e_6Parser8is_block0E0B1g_.exit.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3any5checkRNtNtCs8frGy5WneL6_4fish6parser5BlockNCNvMs5_B1e_NtB1e_6Parser8is_block0E0B1g_.exit.i ], [ true, %bb.b ]
  ret i1 %.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser9eval_with(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(432) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %5, i8 noundef range(i8 0, 14) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.c unwind label %bb.b

.body32:                                          ; preds = %bb.ad, %bb.l, %bb.m, %bb.g, %bb.b, %.body
  %.pn20 = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.z, %bb.l ], [ %.pn18, %.body ], [ %i.bd, %bb.ad ], [ %i.n, %bb.b ], [ %i.z, %bb.m ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #38
          to label %common.resume unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i31, %bb.o, %bb.k, %bb.d, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body32

bb.c:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.b, align 8, !range !26, !noundef !10
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !40, !noundef !10 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.s, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #43
          to label %bb.ah unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = icmp ule i64 %3, %i.r
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw nsw i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull align 4 %2, i64 %i.w, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body32

bb.h:                                             ; preds = %bb.e, %bb.f
  store i64 %i.r, ptr %i.j, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.u, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %3, ptr %.sroa.66.0..sroa_idx, align 8
  %i.y = invoke noundef ptr @_RNvNtCs8frGy5WneL6_4fish10parse_tree12parse_source(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i48 0, ptr noalias nofree noundef nonnull align 8 dereferenceable_or_null(24) %i.k)
          to label %bb.i unwind label %bb.g       ; 4 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not16 = icmp eq ptr %i.y, null
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.y, ptr %i.i, align 8
  invoke void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser18eval_parsed_source(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %5, i8 noundef %6)
          to label %bb.n unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser13get_backtrace(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.s unwind label %bb.b

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !3818
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %.body32

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #40
          to label %.body32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.j
  %i.ac = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !3819
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_.exit24

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #40
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_.exit24 unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_.exit24: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit37 unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_.exit24
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %.body32, %bb.af, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.af ], [ %i.ae, %bb.p ], [ %.pn20, %.body32 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorEEB1c_.exit37: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_.exit24, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit35
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish15parse_constants10ParseErrorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.t, %.body32, %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit, %bb.x, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #39
  unreachable

.body:                                            ; preds = %bb.z, %bb.r, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit
  %.pn18 = phi { ptr, i32 } [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit ], [ %i.as, %bb.x ], [ %i.ag, %bb.r ], [ %i.at, %bb.z ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #38
          to label %.body32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.ab, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser17set_last_statuses.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !10, !noundef !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !10
  store i64 1, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ak, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @_RINvNtCs1HV6ixfL8cZ_11fish_printf11printf_impl14sprintf_localeNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @229, i64 noundef 3, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @122, ptr noalias nofree noundef nonnull align 8 %i.d, i64 noundef 1)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1HV6ixfL8cZ_11fish_printf3arg3ArgECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueANtNtCs1HV6ixfL8cZ_11fish_printf3arg3Argj1_ECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !3820)
  %i.am = load i8, ptr %i.e, align 8, !range !19, !alias.scope !3820, !noalias !3821, !noundef !10
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.v, label %.noexc26.preheader, !prof !27

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3822
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !range !41, !alias.scope !3820, !noalias !3821, !noundef !10
  store i8 %i.ap, ptr %i.a, align 1, !noalias !3822
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #41
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_21get_function_handlers0EENtNtNtB8_6traits8iterator8Iterator4nextB2p_:bb.a

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.thread.i.i, %.lr.ph.i.i
  %i.h = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.thread.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.h, align 8, !noalias !5490, !nonnull !10, !noundef !10 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noalias !5490, !noundef !10
  %i.m = icmp eq i64 %i.l, %i.f
  br i1 %i.m, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.thread.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.i.i: ; preds = %bb.b
  %i.n = load ptr, ptr %.val.i.i.i, align 8, !noalias !5490, !nonnull !10, !align !28, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !5490, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.n, i64 %i.g), !noalias !5490
  %i.q = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.q, label %bb.c, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.thread.i.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.thread.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.i.i, %bb.b
  %i.r = icmp eq ptr %i.i, %i.b
  br i1 %i.r, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB22_21get_function_handlers0ENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit.thread5, label %bb.b

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB22_21get_function_handlers0ENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit.thread5: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.thread.i.i
  store ptr %i.i, ptr %0, align 8, !alias.scope !5488, !noalias !5487
  br label %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs8frGy5WneL6_4fish5event21get_function_handlers0INtB7_5FnMutTRRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtBS_12EventHandlerEEE8call_mutBU_.exit.i.i
  store ptr %i.i, ptr %0, align 8, !alias.scope !5488, !noalias !5487
  %i.s = atomicrmw add ptr %i.j, i64 1 monotonic, align 8
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_RNvXsu_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBK_.exit: ; preds = %bb.a, %bb.c, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB22_21get_function_handlers0ENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit.thread5
  %.sroa.0.0 = phi ptr [ %i.j, %bb.c ], [ null, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB22_21get_function_handlers0ENtNtNtB9_6traits8iterator8Iterator4nextB24_.exit.thread5 ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish5event12EventHandlerEENCNvB2n_21get_function_handlers0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  store i64 0, ptr %0, align 8, !alias.scope !5493
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !5493
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !5493
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcDNtNtCs8frGy5WneL6_4fish2io6IoDataEL_EEENtNtNtB8_6traits8iterator8Iterator9size_hintB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 4                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !5496
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !5496
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !5496
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish6screen15HighlightedCharEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !5499
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !5499
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !5499
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs8frGy5WneL6_4fish6screen4LineEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 40                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !5502
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !5502
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !5502
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !5505
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !5505
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !5505
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4ItercEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !10, !noundef !10
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 2                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !5508
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !5508
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !5508
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iter4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5512)
  %i.a = tail call noundef i64 @_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits10exact_size17ExactSizeIterator3lenCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !noalias !5512 ; 2 uses
  store i64 %i.a, ptr %0, align 8, !alias.scope !5512, !noalias !5513
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !5512, !noalias !5513
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.a, ptr %i.c, align 8, !alias.scope !5512, !noalias !5513
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtB8_6traits8iterator8Iterator4nextB2Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsG_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_4IterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0        ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map4KeysNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEENtNtNtB8_6traits8iterator8Iterator9size_hintB2Q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  store i64 %.val, ptr %0, align 8, !alias.scope !5516
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.b, align 8, !alias.scope !5516
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val, ptr %i.c, align 8, !alias.scope !5516
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCs3oUPovFnLWP_4core5slice3cmpNtNtCs8frGy5WneL6_4fish6parser9BlockTypeNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5520)
  %.val1.i.i = load i8, ptr %0, align 1, !range !39, !alias.scope !5520, !noalias !5521 ; 4 uses
  %3 = icmp ne i8 %.val1.i.i, 5
  %4 = icmp samesign ugt i8 %.val1.i.i, 1
  %5 = select i1 %4, i8 %.val1.i.i, i8 5
  %.not.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish6parser9BlockTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2m_13SliceContains14slice_contains0EBU_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @llvm.assume(i1 %3)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.b = phi ptr [ %i.g, %bb.b ], [ %1, %.lr.ph.i ] ; 2 uses
  %.val2.i = load i8, ptr %i.b, align 1, !range !39, !noalias !5522, !noundef !10 ; 4 uses
  %i.c = icmp ne i8 %.val2.i, 5
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ugt i8 %.val2.i, 1         ; 2 uses
  %narrow.i.i.i = select i1 %i.d, i8 %.val2.i, i8 5
  %i.e = icmp eq i8 %narrow.i.i.i, %5
  %i.f = icmp eq i8 %.val2.i, %.val1.i.i
  %spec.select.i.i.i = or i1 %i.d, %i.f
  %or.cond.i = and i1 %spec.select.i.i.i, %i.e    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not6.i = icmp eq ptr %i.g, %i.a
  %or.cond = select i1 %or.cond.i, i1 true, i1 %.not6.i
  br i1 %or.cond, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish6parser9BlockTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2m_13SliceContains14slice_contains0EBU_.exit, label %bb.b

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs8frGy5WneL6_4fish6parser9BlockTypeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB2m_13SliceContains14slice_contains0EBU_.exit: ; preds = %bb.b, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ %or.cond.i, %bb.b ]
  ret i1 %.lcssa.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @567, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @568, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @566)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB5_9BufWriterQNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCs8frGy5WneL6_4fish.exit:
  %i.a = tail call noundef ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterQNtNtCsaL1QbXo9JQH_3std2fs4FileEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !19, !noalias !5527, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs8frGy5WneL6_4fish.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs8frGy5WneL6_4fish(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs8frGy5WneL6_4fish.exit

_RNCNKNvNvMNtNtCsaL1QbXo9JQH_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0Cs8frGy5WneL6_4fish.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1i_6option6OptionQIB1X_NtBa_8ThreadIdEEEE9call_onceBe_(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !19, !noalias !5532, !noundef !10
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0Bb_.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdzE16get_or_init_slowNvNvNvB1g_9thread_id9THREAD_ID27___rust_std_internal_init_fnEB1k_(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) %0)
  br label %_RNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0Bb_.exit

_RNCNKNvNvNtNtCs8frGy5WneL6_4fish7threads7threads9thread_id9THREAD_ID0s_0Bb_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast11BeginHeaderNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast11JobPipelineNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast11RedirectionNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast12KeywordBeginNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast13MaybeNewlinesNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast14BraceStatementNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 64
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast14JobConjunctionNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 160
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast6SemiNlNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast7JobListNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvYNtNtCs8frGy5WneL6_4fish3ast9StatementNtB4_4Node16self_memory_sizeB6_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  ret i64 48
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCsaL1QbXo9JQH_3std2fsNtB6_11OpenOptions4openRNtNtB8_4path7PathBufECs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs3oUPovFnLWP_4core6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEE10initializeNCINvB2_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss0_0E0zEB31_(ptr noundef nonnull align 8) unnamed_addr #23

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #24

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE10initializeNCINvB2_11get_or_initNvMs1G_BV_BT_3newE0zECs8frGy5WneL6_4fish(ptr noundef nonnull align 8) unnamed_addr #23

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs8frGy5WneL6_4fish(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #23

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocols0E0zEB1y_(ptr noundef nonnull align 4) unnamed_addr #23

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff24initialize_tty_protocolss_0E0zEB1y_(ptr noundef nonnull align 4) unnamed_addr #23

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff35maybe_set_kitty_keyboard_capability0E0zEB1y_(ptr noundef nonnull align 4) unnamed_addr #23

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockbE10initializeNCINvB2_11get_or_initNCNvNtCs8frGy5WneL6_4fish11tty_handoff38maybe_set_scroll_content_up_capability0E0zEB1y_(ptr noundef nonnull align 4) unnamed_addr #23

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs8frGy5WneL6_4fish(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #25

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdzE16get_or_init_slowNvNvNvB1g_9thread_id9THREAD_ID27___rust_std_internal_init_fnEB1k_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(16)) unnamed_addr #25

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs5_BR_NtBR_6Parser14eval_file_wstr0EBT_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBT_15parse_executionNtB1N_16ExecutionContext9run_1_job0EBT_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMNtBT_15parse_executionNtB1N_16ExecutionContext9run_1_jobs1_0EBT_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs8_NtBT_8completeNtB1Q_9Completer18complete_from_args0EBT_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMs8_NtNtBT_6reader6readerNtB1Q_6Reader8readline0EBT_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMse_NtNtBT_6reader6readerNtB1Q_6Reader11exec_prompt0EBT_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs4_Cs5UXtnEuoeIl_11fish_commonINtB6_10ScopedCellNtNtCs8frGy5WneL6_4fish6parser10ScopedDataE10scoped_modNCNvMse_NtNtBT_6reader6readerNtB1Q_6Reader11exec_prompts_0EBT_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

end_hunk_1
