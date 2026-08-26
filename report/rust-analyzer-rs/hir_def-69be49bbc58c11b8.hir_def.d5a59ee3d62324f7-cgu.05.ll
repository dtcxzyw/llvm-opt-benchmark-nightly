Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.05?download=true
inline.NumInlined: 4400
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector28with_fresh_binding_expr_rootNCNvMs2_B6_BO_15lower_const_arg0EBa_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !917, !noalias !922, !noundef !4 ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 1                   ; 2 uses
  %i.aq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !917, !noalias !922, !nonnull !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sink10.i.i = select i1 %i.ap, ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i
  %.sink9.i.i = select i1 %i.ap, ptr %i.ar, ptr %i.an ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.as = load i64, ptr %.sink9.i.i, align 8, !alias.scope !925, !noalias !926, !noundef !4 ; 2 uses
  %i.at = icmp eq i64 %i.as, %.sink.i.i
  br i1 %i.at, label %.noexc2, label %bb.i, !prof !486

.noexc2:                                          ; preds = %bb.h
  call void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i)
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !925, !noalias !926, !nonnull !4, !noundef !4
  %.pre.i = load i64, ptr %i.ar, align 8, !alias.scope !925, !noalias !926
  br label %bb.i

bb.i:                                             ; preds = %.noexc2, %bb.h
  %i.av = phi i64 [ %.pre.i, %.noexc2 ], [ %i.as, %bb.h ]
  %.sroa.01.0.i = phi ptr [ %i.ar, %.noexc2 ], [ %.sink9.i.i, %bb.h ] ; 2 uses
  %.sroa.0.0.i1 = phi ptr [ %i.au, %.noexc2 ], [ %.sink10.i.i, %bb.h ]
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i1, i64 %i.av ; 4 uses
  store i32 %i.l, ptr %i.aw, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i32 %i.ae, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %i.ai, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.am, ptr %.sroa.6.0..sroa_idx, align 4
  %i.ax = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !925, !noalias !926, !noundef !4
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %.sroa.01.0.i, align 8, !alias.scope !925, !noalias !926
  br label %_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector14with_expr_rootNCINvB2_28with_fresh_binding_expr_rootNCNvMs2_B6_BO_15lower_const_arg0E0EBa_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit: ; preds = %.thread16, %bb.j, %.thread
  %.pn.i15 = phi { ptr, i32 } [ %i.y, %.thread ], [ %eh.lpad-body19, %.thread16 ], [ %eh.lpad-body19, %bb.j ]
  resume { ptr, i32 } %.pn.i15

.thread16:                                        ; preds = %bb.d, %.thread20
  %eh.lpad-body19 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread20 ], [ %i.u, %bb.d ] ; 2 uses
  %i.az = load i64, ptr %i.c, align 8, !range !532, !alias.scope !927, !noundef !4
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit, label %bb.j

bb.j:                                             ; preds = %.thread16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !inline_history !930
  unreachable

_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector14with_expr_rootNCINvB2_28with_fresh_binding_expr_rootNCNvMs2_B6_BO_15lower_const_arg0E0EBa_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit4, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !888
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvMs8_NtCshzWfHUSfYae_4core3anyNtB6_6TypeId2ofNtNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtBS_13ExprCollector39get_constrained_lifetimes_if_type_alias25get_constrained_lifetimesEBW_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @17, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RINvNtCshzWfHUSfYae_4core3any9type_nameNtNvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtBJ_13ExprCollector39get_constrained_lifetimes_if_type_alias25get_constrained_lifetimesEBN_() unnamed_addr #2 {
bb.a:
  ret { ptr, i64 } { ptr @18, i64 113 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtCs4dcH4YgJDq_2tt4iter9TtElementj4_ECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !931)
  %i.a = load i64, ptr %0, align 8, !range !711, !alias.scope !934, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i

bb.a:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i32, ptr %i.c, align 8, !range !937, !alias.scope !934, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !934
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i.i, ptr %.val1.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i unwind label %.lr.ph14.i.preheader, !noalias !931

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.a, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !range !711, !alias.scope !934, !noundef !4
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i.1 = load i32, ptr %i.h, align 8, !range !937, !alias.scope !934, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i.1 = load ptr, ptr %i.i, align 8, !alias.scope !934
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i.i.1, ptr %.val1.i.i.1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1 unwind label %.lr.ph14.i.preheader, !noalias !931

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1: ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !range !711, !alias.scope !934, !noundef !4
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i.i.2 = load i32, ptr %i.m, align 8, !range !937, !alias.scope !934, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i.i.2 = load ptr, ptr %i.n, align 8, !alias.scope !934
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i.i.2, ptr %.val1.i.i.2)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2 unwind label %.lr.ph14.i.preheader, !noalias !931

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load i64, ptr %i.o, align 8, !range !711, !alias.scope !934, !noundef !4
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.3

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val.i.i.3 = load i32, ptr %i.r, align 8, !range !937, !alias.scope !934, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1.i.i.3 = load ptr, ptr %i.s, align 8, !alias.scope !934
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i.i.3, ptr %.val1.i.i.3), !noalias !931
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.3

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.3: ; preds = %bb.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2
  ret void

.lr.ph14.i.preheader:                             ; preds = %bb.a, %bb.b, %bb.c
  %.lcssa.ph = phi i64 [ 3, %bb.c ], [ 2, %bb.b ], [ 1, %bb.a ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %.lr.ph14.i.preheader, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i
  %.sroa.0.112.i = phi i64 [ %i.u, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i ], [ %.lcssa.ph, %.lr.ph14.i.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.0.112.i ; 3 uses
  %i.u = add nuw nsw i64 %.sroa.0.112.i, 1        ; 2 uses
  %i.v = load i64, ptr %i.t, align 8, !range !711, !alias.scope !938, !noundef !4
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i

bb.e:                                             ; preds = %.lr.ph14.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i7.i = load i32, ptr %i.x, align 8, !range !937, !alias.scope !938, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val1.i8.i = load ptr, ptr %i.y, align 8, !alias.scope !938
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i7.i, ptr %.val1.i8.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i unwind label %bb.f, !noalias !931

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i: ; preds = %bb.e, %.lr.ph14.i
  %i.z = icmp eq i64 %i.u, 4
  br i1 %i.z, label %._crit_edge15.i, label %.lr.ph14.i

._crit_edge15.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !931
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundj1_EBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = load i8, ptr %0, align 8, !range !941, !alias.scope !942, !noundef !4
  switch i8 %i.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i [
    i8 1, label %bb.a
    i8 3, label %bb.c
  ]

bb.a:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !947, !nonnull !4, !noundef !4
  %i.d = icmp eq ptr %i.c, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i, label %bb.b, !prof !550

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !952, !nonnull !4, !noundef !4
  %i.g = icmp eq ptr %i.f, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i, label %bb.d, !prof !550

bb.d:                                             ; preds = %bb.c
  tail call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i: ; preds = %bb.d, %bb.b, %bb.c, %bb.a, %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def3hir3PatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def3hir3PatEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir3PatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsileJQcQObtj_7hir_def3hir5LabelEEB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def3hir5LabelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def3hir5LabelEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir5LabelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def3hir5LabelEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def3hir5LabelEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def3hir5LabelEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir5LabelENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtCsileJQcQObtj_7hir_def3hir7BindingEEB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsileJQcQObtj_7hir_def3hir7BindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def3hir7BindingEEB1c_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir7BindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def3hir7BindingEEB1j_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsileJQcQObtj_7hir_def3hir7BindingEEB1j_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsileJQcQObtj_7hir_def3hir7BindingEEB1c_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def3hir7BindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEEB1e_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEEB1l_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEEB1l_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEEB1e_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefEEB1e_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefEEB1l_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefEEB1l_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefEEB1e_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsbq3eHDLgq0Z_8la_arena5ArenaNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEB1e_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEB1l_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEB1l_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEEB1e_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjJXvCMGntp8_6syntax5ParseNtNtNtNtBE_3ast9generated5nodes10MacroStmtsEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  invoke void @_RNvXs4_CsjJXvCMGntp8_6syntaxINtB5_5ParseNtNtNtNtB5_3ast9generated5nodes10MacroStmtsENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.c, align 8, !noundef !4
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsileJQcQObtj_7hir_def(ptr %.val2) #39
          to label %bb.f unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsileJQcQObtj_7hir_def.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  store ptr %.val, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  %i.i = atomicrmw sub ptr %.val, i64 1 release, align 8, !noalias !963
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsileJQcQObtj_7hir_def.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !963, !nonnull !4, !noundef !4
  %i.l = load atomic i64, ptr %i.k acquire, align 8, !noalias !963 ; 0 uses
  invoke void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsileJQcQObtj_7hir_def.exit.i unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.e, %bb.d
end_hunk_0
