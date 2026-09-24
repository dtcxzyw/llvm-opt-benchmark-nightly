Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.05?download=true
inline.NumInlined: 4400
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector28with_fresh_binding_expr_rootNCNvMs2_B6_BO_15lower_const_arg0EBa_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !958, !noalias !959, !noundef !8 ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 1                   ; 2 uses
  %i.aq = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !958, !noalias !959, !nonnull !8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.sink10.i.i = select i1 %i.ap, ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i
  %.sink9.i.i = select i1 %i.ap, ptr %i.ar, ptr %i.an ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.as = load i64, ptr %.sink9.i.i, align 8, !alias.scope !960, !noalias !961, !noundef !8 ; 2 uses
  %i.at = icmp eq i64 %i.as, %.sink.i.i
  br i1 %i.at, label %.noexc2, label %bb.i, !prof !15

.noexc2:                                          ; preds = %bb.h
  call void @_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_E21reserve_one_uncheckedBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i)
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !960, !noalias !961, !nonnull !8, !noundef !8
  %.pre.i = load i64, ptr %i.ar, align 8, !alias.scope !960, !noalias !961
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
  %i.ax = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !960, !noalias !961, !noundef !8
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %.sroa.01.0.i, align 8, !alias.scope !960, !noalias !961
  br label %_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector14with_expr_rootNCINvB2_28with_fresh_binding_expr_rootNCNvMs2_B6_BO_15lower_const_arg0E0EBa_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit: ; preds = %.thread16, %bb.j, %.thread
  %.pn.i15 = phi { ptr, i32 } [ %i.y, %.thread ], [ %eh.lpad-body19, %.thread16 ], [ %eh.lpad-body19, %bb.j ]
  resume { ptr, i32 } %.pn.i15

.thread16:                                        ; preds = %bb.d, %.thread20
  %eh.lpad-body19 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread20 ], [ %i.u, %bb.d ] ; 2 uses
  %i.az = load i64, ptr %i.c, align 8, !range !16, !alias.scope !962, !noundef !8
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit, label %bb.j

bb.j:                                             ; preds = %.thread16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !inline_history !945
  unreachable

_RINvMs3_NtNtCsileJQcQObtj_7hir_def10expr_store5lowerNtB6_13ExprCollector14with_expr_rootNCINvB2_28with_fresh_binding_expr_rootNCNvMs2_B6_BO_15lower_const_arg0E0EBa_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsjpcu9PwIgok_8smallvec8SmallVecANtNtCsileJQcQObtj_7hir_def10expr_store8ExprRootj1_EEEB1B_.exit4, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !947
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.a = load i64, ptr %0, align 8, !range !21, !alias.scope !970, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i

bb.a:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load i32, ptr %i.c, align 8, !range !28, !alias.scope !970, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !970
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i.i, ptr %.val1.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i unwind label %.lr.ph14.i.preheader, !noalias !969

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.a, %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !range !21, !alias.scope !970, !noundef !8
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i.1 = load i32, ptr %i.h, align 8, !range !28, !alias.scope !970, !noundef !8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i.1 = load ptr, ptr %i.i, align 8, !alias.scope !970
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i.i.1, ptr %.val1.i.i.1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1 unwind label %.lr.ph14.i.preheader, !noalias !969

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1: ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !970, !noundef !8
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i.i.2 = load i32, ptr %i.m, align 8, !range !28, !alias.scope !970, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i.i.2 = load ptr, ptr %i.n, align 8, !alias.scope !970
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i.i.2, ptr %.val1.i.i.2)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2 unwind label %.lr.ph14.i.preheader, !noalias !969

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2: ; preds = %bb.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load i64, ptr %i.o, align 8, !range !21, !alias.scope !970, !noundef !8
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.3

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit.i.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val.i.i.3 = load i32, ptr %i.r, align 8, !range !28, !alias.scope !970, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1.i.i.3 = load ptr, ptr %i.s, align 8, !alias.scope !970
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i.i.3, ptr %.val1.i.i.3), !noalias !969
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
  %i.v = load i64, ptr %i.t, align 8, !range !21, !alias.scope !971, !noundef !8
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i

bb.e:                                             ; preds = %.lr.ph14.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val.i7.i = load i32, ptr %i.x, align 8, !range !28, !alias.scope !971, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val1.i8.i = load ptr, ptr %i.y, align 8, !alias.scope !971
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafECsileJQcQObtj_7hir_def(i32 %.val.i7.i, ptr %.val1.i8.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i unwind label %bb.f, !noalias !969

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i: ; preds = %bb.e, %.lr.ph14.i
  %i.z = icmp eq i64 %i.u, 4
  br i1 %i.z, label %._crit_edge15.i, label %.lr.ph14.i

._crit_edge15.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4dcH4YgJDq_2tt4iter9TtElementECsileJQcQObtj_7hir_def.exit10.i
  resume { ptr, i32 } %lpad.thr_comm

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !969
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueANtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundj1_EBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = load i8, ptr %0, align 8, !range !29, !alias.scope !984, !noundef !8
  switch i8 %i.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i [
    i8 1, label %bb.a
    i8 3, label %bb.c
  ]

bb.a:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !985, !nonnull !8, !noundef !8
  %i.d = icmp eq ptr %i.c, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #37
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !986, !nonnull !8, !noundef !8
  %i.g = icmp eq ptr %i.f, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i, label %bb.d, !prof !18

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
  %.val2 = load ptr, ptr %i.c, align 8, !noundef !8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsileJQcQObtj_7hir_def(ptr %.val2) #39
          to label %bb.f unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.d, align 8, !noundef !8 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEECsileJQcQObtj_7hir_def.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !8
  store ptr %.val, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.i = atomicrmw sub ptr %.val, i64 1 release, align 8, !noalias !997
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsileJQcQObtj_7hir_def.exit.i

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.a, align 8, !alias.scope !997, !nonnull !8, !noundef !8
  %i.l = load atomic i64, ptr %i.k acquire, align 8, !noalias !997 ; 0 uses
  invoke void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green4node13GreenNodeHeadSNtB10_10GreenChildEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsileJQcQObtj_7hir_def.exit.i unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.e, %bb.d
end_hunk_0
begin_hunk_1_@_RNvNtNtCsileJQcQObtj_7hir_def10expr_store5lower14lower_function:bb.a
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit197: ; preds = %bb.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit159, %bb.cm
  %.sroa.031.0314320 = phi ptr [ @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols4Item10SYMBOL_STR, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit159 ], [ %.sroa.031.0314319, %bb.cl ], [ %.sroa.031.0314319, %bb.cm ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.y, i64 33
  store i8 2, ptr %i.fx, align 1
  %i.fy = invoke { ptr, i64 } @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath8segments(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar)
          to label %bb.cp unwind label %bb.fc

bb.co:                                            ; preds = %bb.cq
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.cp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit197
  %i.ga = extractvalue { ptr, i64 } %i.fy, 1
  %i.gb = add i64 %i.ga, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.gb, 0
  br i1 %.not.i, label %bb.cq, label %_RNvMNtNtNtCshzWfHUSfYae_4core4iter7sources8repeat_nINtB2_12RepeatNInnerINtNtB8_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEE3newB1z_.exit

bb.cq:                                            ; preds = %bb.cp
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.y)
          to label %_RNvMNtNtNtCshzWfHUSfYae_4core4iter7sources8repeat_nINtB2_12RepeatNInnerINtNtB8_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEE3newB1z_.exit unwind label %bb.co

_RNvMNtNtNtCshzWfHUSfYae_4core4iter7sources8repeat_nINtB2_12RepeatNInnerINtNtB8_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEE3newB1z_.exit: ; preds = %bb.cp, %bb.cq
  %.sroa.5270.0 = phi i8 [ -1, %bb.cq ], [ 2, %bb.cp ]
  store i64 %i.gb, ptr %i.z, align 8
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 41
  store i8 %.sroa.5270.0, ptr %.sroa.5270.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB18_4iter7sources8repeat_n7RepeatNB13_EE9from_iterB1L_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.z)
          to label %bb.cr unwind label %bb.cn

bb.cr:                                            ; preds = %_RNvMNtNtNtCshzWfHUSfYae_4core4iter7sources8repeat_nINtB2_12RepeatNInnerINtNtB8_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEE3newB1z_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.x, i64 33
  store i8 2, ptr %i.gc, align 1
  %i.gd = trunc nuw i32 %.sroa.0.0 to i1
  br i1 %i.gd, label %bb.cx, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !7119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7119
  invoke void @_RNvMs2_NtNtCsileJQcQObtj_7hir_def3hir8type_refNtB5_7TypeRef4unit(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g)
          to label %.noexc200 unwind label %bb.cw

.noexc200:                                        ; preds = %bb.cs
  %i.ge = getelementptr inbounds nuw i8, ptr %i.az, i64 200 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.az, i64 216 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !7120, !noalias !7121, !noundef !8 ; 5 uses
  %i.gh = icmp ult i64 %i.gg, 384307168202282326
  call void @llvm.assume(i1 %i.gh)
  %i.gi = load i64, ptr %i.ge, align 8, !range !13, !alias.scope !7122, !noalias !7123, !noundef !8
  %i.gj = icmp eq i64 %i.gg, %i.gi
  br i1 %i.gj, label %bb.ct, label %_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5lower14lower_functions0_0B7_.exit

bb.ct:                                            ; preds = %.noexc200
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ge)
          to label %_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5lower14lower_functions0_0B7_.exit unwind label %bb.cu, !noalias !7123

bb.cu:                                            ; preds = %bb.ct
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #39
          to label %.body201 unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5lower14lower_functions0_0B7_.exit: ; preds = %.noexc200, %bb.ct
  %i.gm = trunc i64 %i.gg to i32
  %i.gn = getelementptr inbounds nuw i8, ptr %i.az, i64 208
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !7122, !noalias !7123, !nonnull !8, !noundef !8
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %i.gg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.gq = add nuw nsw i64 %i.gg, 1
  store i64 %i.gq, ptr %i.gf, align 8, !alias.scope !7122, !noalias !7123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7119
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cs
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body201

.body201:                                         ; preds = %bb.cu, %bb.cw
  %eh.lpad-body202 = phi { ptr, i32 } [ %i.gr, %bb.cw ], [ %i.gk, %bb.cu ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEB13_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.x) #39
          to label %bb.db unwind label %bb.bd

bb.cx:                                            ; preds = %_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5lower14lower_functions0_0B7_.exit, %bb.cr
  %.sroa.08.0 = phi i32 [ %.sroa.5.0, %bb.cr ], [ %i.gm, %_RNCNvNtNtCsileJQcQObtj_7hir_def10expr_store5lower14lower_functions0_0B7_.exit ]
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i32 1, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %.sroa.08.0, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %.sroa.031.0314320, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7124
  %i.gs = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, 585) 72, i64 noundef range(i64 4, 9) 8) #31, !noalias !7124 ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.cy, label %bb.dd, !prof !24

bb.cy:                                            ; preds = %bb.cx
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #40
          to label %.noexc203 unwind label %bb.cz

.noexc203:                                        ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(72) %i.v)
          to label %.thread341 unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.db:                                            ; preds = %.body201
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr nonnull %.sroa.031.0314320) #39
          to label %.thread341 unwind label %bb.bd

bb.dc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEEB1h_.exit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit195.thread349

bb.dd:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gs, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr inttoptr (i64 4 to ptr), ptr %i.u, align 8, !alias.scope !7125
  %i.gx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.gx, align 8, !alias.scope !7125
  %i.gy = getelementptr inbounds nuw i8, ptr %i.u, i64 33
  store i8 0, ptr %i.gy, align 1, !alias.scope !7125
  %i.gz = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gz, align 8, !alias.scope !7125
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.ha, align 8, !alias.scope !7125
  %i.hb = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i8 0, ptr %i.hb, align 8, !alias.scope !7125
  store ptr inttoptr (i64 4 to ptr), ptr %i.w, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.gs, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 1, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.713.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i8 0, ptr %.sroa.713.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 33
  store i8 0, ptr %.sroa.814.0..sroa_idx, align 1
  %i.hc = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !7126, !noalias !7127, !noundef !8 ; 3 uses
  %i.he = load i64, ptr %i.aa, align 8, !range !13, !alias.scope !7126, !noalias !7127, !noundef !8
  %i.hf = icmp eq i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.de, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEEB1h_.exit

bb.de:                                            ; preds = %bb.dd
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEE8grow_oneB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEEB1h_.exit unwind label %bb.df, !noalias !7127

bb.df:                                            ; preds = %bb.de
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEB13_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.w) #39
          to label %.body206 unwind label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !7127
  unreachable

.body206:                                         ; preds = %bb.df
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEEB1h_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.gz) #39
          to label %.thread341 unwind label %bb.bd

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEEB1h_.exit: ; preds = %bb.dd, %bb.de
  %i.hi = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !7126, !noalias !7127, !nonnull !8, !noundef !8
  %i.hk = getelementptr inbounds nuw [40 x i8], ptr %i.hj, i64 %i.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hk, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  %i.hl = add i64 %i.hd, 1
  store i64 %i.hl, ptr %i.hc, align 8, !alias.scope !7126, !noalias !7127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path15from_known_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.dh unwind label %bb.dc

bb.dh:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEEB1h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.az, i64 200 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.az, i64 216 ; 4 uses
  %i.ho = load i64, ptr %i.hn, align 8, !alias.scope !7128, !noalias !7129, !noundef !8 ; 5 uses
  %i.hp = icmp ult i64 %i.ho, 384307168202282326
  call void @llvm.assume(i1 %i.hp)
  %i.hq = load i64, ptr %i.hm, align 8, !range !13, !alias.scope !7130, !noalias !7131, !noundef !8
  %i.hr = icmp eq i64 %i.ho, %i.hq
  br i1 %i.hr, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %bb.dl unwind label %bb.dj, !noalias !7131

bb.dj:                                            ; preds = %bb.di
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECsileJQcQObtj_7hir_def.exit195.thread349 unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ht = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.dl:                                            ; preds = %bb.dh, %bb.di
  %i.hu = trunc i64 %i.ho to i32
  %i.hv = getelementptr inbounds nuw i8, ptr %i.az, i64 208 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !7130, !noalias !7131, !nonnull !8, !noundef !8
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.hw, i64 %i.ho
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.hy = add nuw nsw i64 %i.ho, 1
  store i64 %i.hy, ptr %i.hn, align 8, !alias.scope !7130, !noalias !7131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i8 0, ptr %i.o, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store i8 0, ptr %.sroa.416.0..sroa_idx, align 1
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.hu, ptr %.sroa.518.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7132
  %i.hz = invoke noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE13with_capacityBM_(i64 noundef 0)
          to label %bb.dm unwind label %bb.ee, !noalias !7132

bb.dm:                                            ; preds = %bb.dl
  store i64 %i.hz, ptr %i.f, align 8, !noalias !7132
  call void @llvm.experimental.noalias.scope.decl(metadata !7133)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7134
  store i64 0, ptr %i.e, align 8, !alias.scope !7135, !noalias !7136
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !alias.scope !7135, !noalias !7136
  %.sroa.56.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE7reserveBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 1)
          to label %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit.i.i unwind label %.thread29.i.i, !noalias !7137

.thread29.i.i:                                    ; preds = %bb.dm
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %.thread25.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i: ; preds = %bb.eb, %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !7134
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !7138, !noalias !7139, !noundef !8 ; 2 uses
  %i.id = load i64, ptr %i.c, align 8, !alias.scope !7138, !noalias !7139, !noundef !8 ; 2 uses
  %.not.i.i1040.i.i = icmp eq i64 %i.ic, %i.id
  br i1 %.not.i.i1040.i.i, label %.loopexit, label %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.lr.ph.i.i

_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.lr.ph.i.i: ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.720.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %.sroa.720.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.experimental.noalias.scope.decl(metadata !7140)
  call void @llvm.experimental.noalias.scope.decl(metadata !7141)
  store i64 1, ptr %i.c, align 8, !alias.scope !7138, !noalias !7142
  %i.if = icmp eq i64 %i.id, 0
  call void @llvm.assume(i1 %i.if)
  %.sroa.018.0.copyload19.i14.i = load i8, ptr %i.ie, align 8, !alias.scope !7143, !noalias !7134 ; 2 uses
  %.not7.i15.i = icmp eq i8 %.sroa.018.0.copyload19.i14.i, -1
  br i1 %.not7.i15.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.thread.i.i, label %.lr.ph.i

_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit.i.i: ; preds = %bb.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !7144)
  call void @llvm.experimental.noalias.scope.decl(metadata !7145)
  store i64 1, ptr %i.e, align 8, !alias.scope !7146, !noalias !7147
  %.sroa.015.0.copyload16.i.i = load i8, ptr %.sroa.56.0..sroa_idx.i.i.i, align 8, !alias.scope !7148, !noalias !7134 ; 2 uses
  %.not6.i.i = icmp eq i8 %.sroa.015.0.copyload16.i.i, -1
  br i1 %.not6.i.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit.thread.i.i, label %bb.dn

bb.dn:                                            ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit.i.i
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7134
  store i8 %.sroa.015.0.copyload16.i.i, ptr %i.d, align 8, !noalias !7134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.416.0..sroa_idx, i64 15, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !7149)
  %i.ig = load ptr, ptr %i.f, align 8, !alias.scope !7150, !noalias !7151, !nonnull !8, !noundef !8
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !7152, !noundef !8 ; 2 uses
  %i.ii = invoke noundef ptr @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE8data_rawBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.eb unwind label %bb.do, !noalias !7151

bb.do:                                            ; preds = %bb.dn
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #39
          to label %.thread25.i.i unwind label %bb.dp, !noalias !7137

bb.dp:                                            ; preds = %bb.do
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38, !noalias !7137
  unreachable

bb.dq:                                            ; preds = %.lr.ph.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_EEB1b_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #39
          to label %.body.i215 unwind label %bb.ea, !noalias !7137

_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.i.i: ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !7153)
  call void @llvm.experimental.noalias.scope.decl(metadata !7154)
  store i64 1, ptr %i.c, align 8, !alias.scope !7138, !noalias !7155
  %i.im = icmp eq i64 %i.jh, 0
  call void @llvm.assume(i1 %i.im)
  %.sroa.018.0.copyload19.i.i = load i8, ptr %i.ie, align 8, !alias.scope !7156, !noalias !7134 ; 2 uses
  %.not7.i.i = icmp eq i8 %.sroa.018.0.copyload19.i.i, -1
  br i1 %.not7.i.i, label %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.thread.i.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.lr.ph.i.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.i.i
  %.sroa.018.0.copyload19.i16.i = phi i8 [ %.sroa.018.0.copyload19.i.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.i.i ], [ %.sroa.018.0.copyload19.i14.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7134
  store i8 %.sroa.018.0.copyload19.i16.i, ptr %i.b, align 8, !noalias !7134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.720.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.720.0..sroa_idx21.i.i, i64 15, i1 false), !noalias !7134
  invoke void @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundE4pushBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %bb.dz unwind label %bb.dq, !noalias !7137

_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.thread.i.i: ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.i.i, %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.lr.ph.i.i
  %.lcssa11.i = phi i64 [ %i.ic, %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.lr.ph.i.i ], [ %i.jg, %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.i.i ] ; 2 uses
  %i.in = icmp eq i64 %.lcssa11.i, 1
  br i1 %i.in, label %.loopexit, label %bb.dr

bb.dr:                                            ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5array4iterINtB5_8IntoIterNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBY_.exit11.thread.i.i
  %i.io = add i64 %.lcssa11.i, -1                 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i.i.i.i.i.i.i.i.i, %bb.dr
  %.sroa.0.08.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ir, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.dr ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [16 x i8], ptr %i.ip, i64 %.sroa.0.08.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ir = add nuw nsw i64 %.sroa.0.08.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.is = load i8, ptr %i.iq, align 8, !range !29, !alias.scope !7157, !noalias !7134, !noundef !8
  switch i8 %i.is, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i.i.i.i.i.i.i.i.i [
    i8 1, label %bb.ds
    i8 3, label %bb.du
  ]

bb.ds:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !alias.scope !7158, !noalias !7134, !nonnull !8, !noundef !8
  %i.iv = icmp eq ptr %i.iu, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.iv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i.i.i.i.i.i.i.i.i, label %bb.dt, !prof !18

bb.dt:                                            ; preds = %bb.ds
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.it) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.dx, !noalias !7137

bb.du:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !7159, !noalias !7134, !nonnull !8, !noundef !8
  %i.iy = icmp eq ptr %i.ix, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.iy, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i.i.i.i.i.i.i.i.i, label %bb.dv, !prof !18

bb.dv:                                            ; preds = %bb.du
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iw) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEBH_.exit.i.i.i.i.i.i.i.i.i unwind label %bb.dx, !noalias !7137

end_hunk_1
