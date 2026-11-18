Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.06?download=true
inline.NumInlined: 6037
inline.NumDeleted: 2216
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs13_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solveNtB6_10GoalSourceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt:bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @667, i64 noundef 12)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @668, i64 noundef 14)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @669, i64 noundef 24)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @670, i64 noundef 15)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @672, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @671)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %i.j, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_Cs1bZVCNcVUvD_12thread_localINtB5_11ThreadLocalINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEENtNtNtBV_3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(512) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12232 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.backedge
  %.sroa.0.0.idx22 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.add, %.backedge ] ; 2 uses
  %.sroa.7.021 = phi i64 [ 0, %bb.a ], [ %i.a, %.backedge ] ; 4 uses
  %.sroa.0.0.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx22
  %.sroa.0.0.add = add nuw nsw i64 %.sroa.0.0.idx22, 8 ; 2 uses
  %i.a = add nuw nsw i64 %.sroa.7.021, 1
  %i.b = load ptr, ptr %.sroa.0.0.ptr, align 8, !noundef !245 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.backedge, label %bb.d

bb.c:                                             ; preds = %.backedge
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = shl nuw i64 1, %.sroa.7.021              ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.010.i.i ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i8, ptr %i.g, align 1, !range !247, !alias.scope !12233, !noundef !245
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEECs8K4cjrcxBsw_6hir_ty.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9ContextIdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEECs8K4cjrcxBsw_6hir_ty.exit.i.i unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.f, %i.d
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i64 %.sroa.0.1.i.i59, 1      ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.d
  br i1 %i.o, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEECs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.q = icmp eq i64 %i.f, %i.d
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.h
  %.sroa.0.1.i.i59 = phi i64 [ %i.n, %bb.h ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.b, i64 %.sroa.0.1.i.i59
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(40) %i.r) #35
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

._crit_edge:                                      ; preds = %bb.h, %.body.i.i
  %i.t = shl nuw i64 40, %.sroa.7.021
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef 8) #40
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %i.u = shl nuw i64 40, %.sroa.7.021
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #40
  br label %.backedge

.backedge:                                        ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtCs1bZVCNcVUvD_12thread_local5EntryINtNtB4_4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEEEECs8K4cjrcxBsw_6hir_ty.exit, %bb.b
  %i.v = icmp eq i64 %.sroa.0.0.add, 504
  br i1 %i.v, label %bb.c, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i32, i32 } @_RNvXs1_CskGak5u691mU_8petgraphTmmEINtB5_16IntoWeightedEdgeuE18into_weighted_edgeCs8K4cjrcxBsw_6hir_ty(i32 noundef %0, i32 noundef %1) unnamed_addr #12 personality ptr @rust_eh_personality !guid !12234 {
bb.a:
  %i.a = insertvalue { i32, i32 } poison, i32 %0, 0
  %i.b = insertvalue { i32, i32 } %i.a, i32 %1, 1
  ret { i32, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs474hSbRjvii_8arrayvec6errorsINtB5_13CapacityErrorNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !12235 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @674, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !245, !noundef !245
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !245, !align !246, !noundef !245
  %i.e = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @675, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs474hSbRjvii_8arrayvec6errorsINtB5_13CapacityErrorNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !12236 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @674, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !245, !noundef !245
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !245, !align !246, !noundef !245
  %i.e = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @675, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtCs474hSbRjvii_8arrayvec6errorsINtB5_13CapacityErrorRSNtNtCs8K4cjrcxBsw_6hir_ty2db11AnonConstIdENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB12_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !guid !12237 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @674, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !245, !noundef !245
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !245, !align !246, !noundef !245
  %i.e = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @675, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB5_16StoredGenericArgNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr returned %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality !guid !12238 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = ptrtoint ptr %.0.val to i64
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %bb.m
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -2    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.g = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE14offset_of_dataBT_(ptr noundef nonnull %i.f)
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 2 uses
  store ptr %i.i, ptr %i.c, align 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE9clone_arcB12_.exit, !prof !252

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %common.resume unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.j, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.l, %bb.e ], [ %i.aa, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE9clone_arcB12_.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %.0.val)
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %.0.val, i64 %i.o ; 2 uses
  store ptr %i.p, ptr %i.b, align 8
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.i, label %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit, !prof !252

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %.0.val, i64 -1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE14offset_of_dataBT_(ptr noundef nonnull %i.u)
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 %i.w ; 2 uses
  store ptr %i.x, ptr %i.a, align 8
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.n, label %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE9clone_arcB12_.exit, !prof !252

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #38
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %common.resume unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #34
  unreachable

_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE9clone_arcB12_.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE9clone_arcB12_.exit, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE9clone_arcB12_.exit, %_RNvMs3_NtCs50pZefIA5Ye_8triomphe10arc_borrowINtB5_9ArcBorrowNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6region14RegionInternedE9clone_arcB12_.exit
  ret ptr %.0.val
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution5probeNtB5_18ProbeForNameChoiceNtB5_11ProbeChoice19consider_candidates(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %1, ptr noundef nonnull %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !12267 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [88 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 4                 ; 5 uses
  %i.o = alloca [12 x i8], align 4                ; 4 uses
  %i.p = alloca [12 x i8], align 4                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 13 uses
  %i.s = alloca [24 x i8], align 8                ; 12 uses
  %i.t = alloca [32 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 11 uses
  %i.v = alloca [12 x i8], align 4                ; 4 uses
  %i.w = alloca [12 x i8], align 4                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.14.i = alloca [20 x i8], align 4         ; 2 uses
  %i.z = alloca [12 x i8], align 4                ; 4 uses
  %i.aa = alloca [12 x i8], align 4               ; 7 uses
  %i.ab = alloca [12 x i8], align 4               ; 4 uses
  %i.ac = alloca [12 x i8], align 4               ; 7 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.950 = alloca [32 x i8], align 8          ; 5 uses
  %.sroa.1557 = alloca [12 x i8], align 8         ; 5 uses
  %i.af = alloca [8 x i8], align 8                ; 2 uses
  store ptr %2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !245 ; 4 uses
  %i.ai = icmp ult i64 %i.ah, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.ah, 1
  br i1 %i.aj, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !245, !noundef !245 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val = load ptr, ptr %i.am, align 8, !nonnull !245, !noundef !245 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !12269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !12269
  %i.an = load ptr, ptr %i.al, align 8, !alias.scope !12268, !nonnull !245, !align !246, !noundef !245
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ab, ptr noundef nonnull align 8 dereferenceable(12) %i.ao, i64 12, i1 false), !noalias !12269
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 6 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !12269, !nonnull !245, !align !246, !noundef !245 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !12269, !nonnull !245, !noundef !245
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !noalias !12269, !nonnull !245, !align !246, !noundef !245
  invoke void @_RNvMNtCs8K4cjrcxBsw_6hir_ty17method_resolutionNtB2_11CandidateId9container(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.ac, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ab, ptr noundef nonnull %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.au)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !12269
  %i.av = load i32, ptr %i.ac, align 4, !range !283, !noalias !12269, !noundef !245
  %i.aw = icmp eq i32 %i.av, 3
  br i1 %i.aw, label %.lr.ph, label %bb.c

.lr.ph:                                           ; preds = %.noexc
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !range !253, !noalias !12269, !noundef !245 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !noalias !12269, !noundef !245 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !12269
  %.idx = shl nuw nsw i64 %i.ah, 3
  %i.bb = getelementptr i8, ptr %i.al, i64 %.idx
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.0.i297 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br label %bb.e

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !12269
  br label %.loopexit97

bb.d:                                             ; preds = %bb.f
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i298, i64 8 ; 2 uses
end_hunk_0
