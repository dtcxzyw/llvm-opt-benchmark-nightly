inline.NumInlined: 5509
inline.NumDeleted: 2264
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEEECs8K4cjrcxBsw_6hir_ty:bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackeduEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #44
  resume { ptr, i32 } %i.c

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #44
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 8, !range !269, !noundef !5 ; 2 uses
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEBF_.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEBF_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts11StoredConstEBH_.exit.i.i, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  switch i32 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEBF_.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !276, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !276
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noalias !276, !noundef !5
  store ptr %.val1.i.i, ptr %i.b, align 8, !noalias !276
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !276
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1x_5LocalEEEE10drop_innerB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !276
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEBF_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !276, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !276
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !276, !noundef !5
  store ptr %.val.i.i, ptr %i.a, align 8, !noalias !276
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.l, align 8, !noalias !276
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtB7_6header30HeaderSliceWithLengthProtecteduINtNtCs8K4cjrcxBsw_6hir_ty3mir14ProjectionElemINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1x_5LocalEEEE10drop_innerB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !276
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEBF_.exit

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts13ConstInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts11StoredConstEBH_.exit.i.i unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEBF_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyEBH_.exit.i.i unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts11StoredConstEBH_.exit.i.i: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandEBF_.exit

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyEBH_.exit.i.i: ; preds = %bb.g
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !190, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span5InnerECs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span5InnerECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span5InnerECs8K4cjrcxBsw_6hir_ty.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !292, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !292
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span5InnerECs8K4cjrcxBsw_6hir_ty.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #43
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span5InnerECs8K4cjrcxBsw_6hir_ty.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyEEB13_(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEEB13_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !190, !noundef !5
  %cond = icmp eq i64 %i.a, 0
  br i1 %cond, label %bb.b, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit: ; preds = %bb.a, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEj4_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty5infer6coerce10CoerceManyEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.b = load i8, ptr %i.a, align 1, !range !115, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEECs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsECs8K4cjrcxBsw_6hir_ty.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !293, !noundef !5 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsECs8K4cjrcxBsw_6hir_ty.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !293, !nonnull !5, !noundef !5
  %i.f = shl nuw nsw i64 %.val1.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef 4) #44, !noalias !293
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !296, !nonnull !5, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !296, !noundef !5 ; 6 uses
  %cond = icmp eq i64 %i.j, 0
  br i1 %cond, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.m, %i.j
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsECs8K4cjrcxBsw_6hir_ty.exit, %bb.d
  %.sroa.0.0.i.i1 = phi i64 [ %i.m, %bb.d ], [ 0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsECs8K4cjrcxBsw_6hir_ty.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.sroa.0.0.i.i1
  %i.m = add nuw i64 %.sroa.0.0.i.i1, 1           ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(72) %i.l)
          to label %bb.d unwind label %bb.f, !noalias !296, !inline_history !299

bb.e:                                             ; preds = %.lr.ph3
  %i.n = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.j
  br i1 %i.o, label %.body.i, label %.lr.ph3

bb.f:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.m, %i.j
  br i1 %i.q, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i2 = phi i64 [ %i.n, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(72) %i.r) #39
          to label %bb.e unwind label %bb.g, !noalias !296, !inline_history !299

bb.g:                                             ; preds = %.lr.ph3
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !296, !inline_history !299
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.f
  %i.t = mul nuw nsw i64 %i.j, 72
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef 8) #44, !noalias !296, !inline_history !300
  resume { ptr, i32 } %i.p

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.d
  %i.u = mul nuw nsw i64 %i.j, 72
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef 8) #44, !noalias !296, !inline_history !300
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEECs8K4cjrcxBsw_6hir_ty.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints23RegionConstraintStorageEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints23RegionConstraintStorageEBJ_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB1g_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB1g_.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB2y_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB1g_.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints20RegionConstraintDataEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #39
          to label %bb.g unwind label %bb.n

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB2y_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB1g_.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints20RegionConstraintDataEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i unwind label %bb.n

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB2y_.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vec8IndexVecNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints18RegionVariableInfoEEB2y_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit6.i unwind label %bb.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i: ; preds = %bb.j, %bb.g
  %.pn2.i = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn.i, %bb.g ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit6.i: ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit8.i unwind label %bb.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i: ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i
  %.pn4.i = phi { ptr, i32 } [ %i.o, %bb.k ], [ %.pn2.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsciM7tI7r4rL_3ena5unify16UnificationTableINtNtBE_11backing_vec7InPlaceNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key12RegionVidKeyINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtBE_8VarValueB1P_EEuEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #39
          to label %common.resume.i unwind label %bb.n

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit6.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit8.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit6.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key12RegionVidKeyEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints23RegionConstraintStorageEBJ_.exit unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit8.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key12RegionVidKeyEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume.i:                                  ; preds = %bb.l, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.q, %bb.l ], [ %.pn4.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit7.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit.i, %bb.g, %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints23RegionConstraintStorageEBJ_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB1E_.exit8.i
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCsciM7tI7r4rL_3ena5unify8VarValueNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9unify_key12RegionVidKeyEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor5PlaceEEB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !59, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor5PlaceEBL_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyEBH_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #39
          to label %common.resume.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyEBH_.exit.i: ; preds = %bb.c
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor5PlaceEBL_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty8StoredTyEBH_.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBW_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

common.resume.i:                                  ; preds = %bb.e, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEEB1f_:bb.a

bb.b:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEBF_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.d, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEBF_.exit7.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.1.i2
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE10drop_innerBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEBF_.exit7.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph3
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEBF_.exit7.i, %bb.b
  %i.j = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef 8) #44
  resume { ptr, i32 } %i.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEBG_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEBF_.exit.i
  %i.k = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef 8) #44
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBM_.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCs8K4cjrcxBsw_6hir_ty5infer10AdjustmentEBG_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.0.010.i = phi i64 [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.010.i
  %i.h = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val7.i = load ptr, ptr %i.g, align 8, !alias.scope !310, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = ptrtoint ptr %.val7.i to i64
  %i.j = and i64 %i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr i8, ptr %.val7.i, i64 -1   ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.k)
          to label %.noexc.i unwind label %bb.e, !noalias !307

.noexc.i:                                         ; preds = %bb.b
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !313
  store ptr %i.n, ptr %i.b, align 8, !noalias !313
  %i.o = load atomic i64, ptr %i.n acquire, align 8, !noalias !313
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.c, label %.noexc8.i, !prof !11

bb.c:                                             ; preds = %.noexc.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc8.i unwind label %bb.e, !noalias !307

.noexc8.i:                                        ; preds = %bb.c, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !313
  store ptr %i.n, ptr %i.a, align 8, !noalias !313
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc9.i unwind label %bb.e, !noalias !307

.noexc9.i:                                        ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !313
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %.noexc9.i, %.lr.ph.i
  %i.q = icmp eq i64 %i.h, %i.e
  br i1 %i.q, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph
  %i.r = add i64 %.sroa.0.1.i10, 1                ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.e
  br i1 %i.s, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.noexc8.i, %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.h, %i.e
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i10 = phi i64 [ %i.r, %bb.d ], [ %i.h, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.1.i10
  %.val.i = load ptr, ptr %i.v, align 8, !alias.scope !310, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty(ptr nonnull %.val.i) #39
          to label %bb.d unwind label %bb.f, !noalias !307

bb.f:                                             ; preds = %.lr.ph
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !noalias !307
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit.i
  %i.x = shl nuw nsw i64 %i.e, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef 8) #44
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def3hir14RecordFieldPatECs8K4cjrcxBsw_6hir_ty.exit
  ret void

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %i.y = shl nuw nsw i64 %i.e, 4
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef 8) #44
  resume { ptr, i32 } %i.t
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtCsileJQcQObtj_7hir_def3hir9StatementEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCsileJQcQObtj_7hir_def3hir9StatementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.0.014.i = phi i64 [ %i.f, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %.sroa.0.014.i ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.0.014.i, 1        ; 2 uses
  %.val8.i = load i32, ptr %i.e, align 8, !range !319, !alias.scope !316, !noundef !5
  %i.g = getelementptr i8, ptr %i.e, i64 8
  %.val9.i = load ptr, ptr %i.g, align 8, !alias.scope !316 ; 2 uses
  %switch.i.i = icmp ne i32 %.val8.i, 3
  %.not.i.i.i = icmp eq ptr %.val9.i, null
  %or.cond.i.i = select i1 %switch.i.i, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef 36, i64 noundef 4) #44, !noalias !316
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.h = icmp eq i64 %i.f, %i.c
  br i1 %i.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit.i
  %i.i = shl nuw nsw i64 %i.c, 5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #44
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCsileJQcQObtj_7hir_def3hir9StatementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtCsileJQcQObtj_7hir_def3hir9StatementENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtCsileJQcQObtj_7hir_def3hir9StatementECs8K4cjrcxBsw_6hir_ty.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = shl nuw nsw i64 %.val1, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 4) #44
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i5
  %i.f = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !320

bb.c:                                             ; preds = %.lr.ph7
  %i.g = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(72) %i.k) #39
          to label %bb.c unwind label %bb.e, !inline_history !320

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41, !inline_history !320
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef 8) #44
  resume { ptr, i32 } %i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef 8) #44
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def10expr_store4path21AssociatedTypeBindingECs8K4cjrcxBsw_6hir_ty.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundEECs8K4cjrcxBsw_6hir_ty(ptr %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.0.08.i = phi i64 [ %i.c, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.08.i ; 3 uses
  %i.c = add nuw nsw i64 %.sroa.0.08.i, 1         ; 4 uses
  %i.d = load i8, ptr %i.b, align 8, !range !321, !alias.scope !322, !noundef !5
  switch i8 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i [
    i8 1, label %bb.b
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !327, !nonnull !5, !noundef !5
  %i.g = icmp eq ptr %i.f, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.c, !prof !87

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCs33K2ylI4knu_10hir_expand4name4NameECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !332, !nonnull !5, !noundef !5
  %i.j = icmp eq ptr %i.i, @_RNvCsbdtVtHYmo6x_8thin_vec12EMPTY_HEADER
  br i1 %i.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.e, !prof !87

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNvXs6_CsbdtVtHYmo6x_8thin_vecINtB8_7ThinVecpENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop18drop_non_singletonNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9UseArgRefEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #43
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.c, %.8.val
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph
  %i.l = add i64 %.sroa.0.1.i5, 1                 ; 2 uses
  %i.m = icmp eq i64 %i.l, %.8.val
  br i1 %i.m, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.c, %.8.val
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %.sroa.0.1.i5 = phi i64 [ %i.l, %bb.f ], [ %i.c, %bb.g ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.1.i5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(16) %i.p) #39
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit.i
  %i.r = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 8) #44
  br label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4

_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref9TypeBoundECs8K4cjrcxBsw_6hir_ty.exit
  ret void

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.s = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef 8) #44
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %cond = icmp eq i64 %i.e, 0
  br i1 %cond, label %_RNvXs8_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSTINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandEENtNtNtBO_3ops4drop4Drop4dropCs8K4cjrcxBsw_6hir_ty.exit4, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandEECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %i.f = icmp eq i64 %i.h, %i.e
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandEECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandEECs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.0.0.i17 = phi i64 [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandEECs8K4cjrcxBsw_6hir_ty.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.sroa.0.0.i17 ; 3 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i17, 1        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !343, !noundef !5 ; 2 uses
  %i.i = ptrtoint ptr %.val.i.i to i64
  %i.j = and i64 %i.i, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr i8, ptr %.val.i.i, i64 -1  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.k)
          to label %.noexc.i.i unwind label %bb.d, !noalias !340

.noexc.i.i:                                       ; preds = %bb.b
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !344
  store ptr %i.n, ptr %i.b, align 8, !noalias !344
  %i.o = load atomic i64, ptr %i.n acquire, align 8, !noalias !347
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.c, label %.noexc1.i.i, !prof !11

bb.c:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %.noexc1.i.i unwind label %bb.d, !noalias !340

.noexc1.i.i:                                      ; preds = %bb.c, %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !344
  store ptr %i.n, ptr %i.a, align 8, !noalias !344
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc2.i.i unwind label %bb.d, !noalias !340

.noexc2.i.i:                                      ; preds = %.noexc1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !344
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8K4cjrcxBsw_6hir_ty.exit.i.i

bb.d:                                             ; preds = %.noexc1.i.i, %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir10AsmOperandECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #39
          to label %.body.i unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %.noexc2.i.i, %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def3hir10AsmOperandECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameENtNtCsileJQcQObtj_7hir_def3hir10AsmOperandEECs8K4cjrcxBsw_6hir_ty.exit.i unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.f:                                             ; preds = %.lr.ph19
  %i.u = add i64 %.sroa.0.1.i18, 1                ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.e
  br i1 %i.v, label %.body, label %.lr.ph19

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEECs8K4cjrcxBsw_6hir_ty.exit.i.i
  %i.w = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortTooENvYBW_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty:bb.a
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.df, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTooENvYB13_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.021.0 = phi i8 [ %i.bw, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTooENvYB13_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTooENvYB13_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTooENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.val14.i = load i128, ptr %i.p, align 16, !alias.scope !955, !noalias !958, !noundef !5 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 48
  %.val15.i = load i128, ptr %i.q, align 16, !alias.scope !955, !noalias !958 ; 3 uses
  %.val16.i = load i128, ptr %i.n, align 16, !alias.scope !955, !noalias !958, !noundef !5 ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 16
  %.val17.i = load i128, ptr %i.r, align 16, !alias.scope !955, !noalias !958
  %i.s = icmp eq i128 %.val14.i, %.val16.i
  %i.t = icmp ult i128 %.val14.i, %.val16.i
  %i.u = icmp ult i128 %.val15.i, %.val17.i
  %.sroa.0.0.i.i.i = select i1 %i.s, i1 %i.u, i1 %i.t ; 2 uses
  %.not40.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %.sroa.0.0.i.i.i, label %.preheader.i, label %.preheader29.i

.preheader29.i:                                   ; preds = %bb.k
  br i1 %.not40.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not40.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph35.i

.lr.ph.i:                                         ; preds = %.preheader29.i, %bb.l
  %.val13.i = phi i128 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader29.i ]
  %.val12.i = phi i128 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader29.i ] ; 2 uses
  %.sroa.01.0.i31.i = phi i64 [ %i.aa, %bb.l ], [ 2, %.preheader29.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.0.i31.i ; 2 uses
  %.val10.i = load i128, ptr %i.v, align 16, !alias.scope !955, !noalias !958, !noundef !5 ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %.val11.i = load i128, ptr %i.w, align 16, !alias.scope !955, !noalias !958 ; 2 uses
  %i.x = icmp eq i128 %.val10.i, %.val12.i
  %i.y = icmp ult i128 %.val10.i, %.val12.i
  %i.z = icmp ult i128 %.val11.i, %.val13.i
  %.sroa.0.0.i.i18.i = select i1 %i.x, i1 %i.z, i1 %i.y
  br i1 %.sroa.0.0.i.i18.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTooENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw nsw i64 %.sroa.01.0.i31.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTooENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph.i

.lr.ph35.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i128 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ]
  %.val8.i = phi i128 [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i34.i = phi i64 [ %i.ag, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.01.1.i34.i ; 2 uses
  %.val.i = load i128, ptr %i.ab, align 16, !alias.scope !955, !noalias !958, !noundef !5 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %.val7.i = load i128, ptr %i.ac, align 16, !alias.scope !955, !noalias !958 ; 2 uses
  %i.ad = icmp eq i128 %.val.i, %.val8.i
  %i.ae = icmp ult i128 %.val.i, %.val8.i
  %i.af = icmp ult i128 %.val7.i, %.val9.i
  %.sroa.0.0.i.i19.i = select i1 %i.ad, i1 %i.af, i1 %i.ae
  br i1 %.sroa.0.0.i.i19.i, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTooENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i

bb.m:                                             ; preds = %.lr.ph35.i
  %i.ag = add nuw nsw i64 %.sroa.01.1.i34.i, 1    ; 2 uses
  %exitcond43.not.i = icmp eq i64 %i.ag, %i.m
  br i1 %exitcond43.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTooENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph35.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTooENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph35.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i34.i, %.lr.ph35.i ], [ %.sroa.01.0.i31.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ah = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ah)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTooENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i
  br i1 %.sroa.0.0.i.i.i, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 %.sroa.01.0)
  %i.ai = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTooENvYB13_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.p:                                             ; preds = %bb.i
  %..i20.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTooENvYB15_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.n, i64 noundef %..i20.i, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #43
  %i.aj = shl nuw nsw i64 %..i20.i, 1
  %i.ak = or disjoint i64 %i.aj, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTooENvYB13_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.bn, %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.al = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 3 uses
  %i.an = getelementptr [32 x i8], ptr %i.aw, i64 %i.al ; 3 uses
  %i.ao = load i128, ptr %i.am, align 16, !alias.scope !961, !noalias !966, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i128, ptr %i.ap, align 16, !alias.scope !961, !noalias !966, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.am, ptr noundef nonnull align 16 dereferenceable(32) %i.an, i64 32, i1 false), !alias.scope !968, !noalias !958
  store i128 %i.ao, ptr %i.an, align 16, !alias.scope !969, !noalias !970
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i128 %i.aq, ptr %i.ar, align 16, !alias.scope !969, !noalias !970
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa, %.preheader29.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i26.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader29.i ], [ %.sroa.0.0.i586569.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i586569.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader ]
  %i.as = shl nuw nsw i64 %.sroa.0.0.i26.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTooENvYB13_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.q:                                             ; preds = %bb.n
  %i.au = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.q
  %i.av = phi i64 [ %i.au, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i586569.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.0.i586569.i ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.ax = icmp eq i64 %i.av, 1
  br i1 %i.ax, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.av, 9223372036854775806
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.bn, %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i ]
  %i.ay = xor i64 %.sroa.0.016.i.i.i, -1
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 3 uses
  %i.ba = getelementptr [32 x i8], ptr %i.aw, i64 %i.ay ; 3 uses
  %i.bb = load i128, ptr %i.az, align 16, !alias.scope !961, !noalias !966, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = load i128, ptr %i.bc, align 16, !alias.scope !961, !noalias !966, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.az, ptr noundef nonnull align 16 dereferenceable(32) %i.ba, i64 32, i1 false), !alias.scope !968, !noalias !958
  store i128 %i.bb, ptr %i.ba, align 16, !alias.scope !969, !noalias !970
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i128 %i.bd, ptr %i.be, align 16, !alias.scope !969, !noalias !970
  %i.bf = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32 ; 2 uses
  %i.bi = getelementptr [32 x i8], ptr %i.aw, i64 %i.bf ; 3 uses
  %i.bj = load i128, ptr %i.bh, align 16, !alias.scope !961, !noalias !966, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bl = load i128, ptr %i.bk, align 16, !alias.scope !961, !noalias !966, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bh, ptr noundef nonnull align 16 dereferenceable(32) %i.bi, i64 32, i1 false), !alias.scope !968, !noalias !958
  store i128 %i.bj, ptr %i.bi, align 16, !alias.scope !969, !noalias !970
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i128 %i.bl, ptr %i.bm, align 16, !alias.scope !969, !noalias !970
  %i.bn = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runTooENvYB13_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.at, %_RNvMNtCshzWfHUSfYae_4core5sliceSTooE7reverseCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %i.ak, %bb.p ], [ %i.ai, %bb.o ] ; 2 uses
  %i.bo = lshr i64 %.sroa.023.0, 1
  %i.bp = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bq = sub nsw i64 %factor, %i.bo
  %i.br = add nuw nsw i64 %i.bp, %factor
  %i.bs = mul i64 %i.bq, %.sroa.0.0
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bu, i1 false)
  %i.bw = trunc nuw nsw i64 %i.bv to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.02.136 = phi i64 [ %i.bx, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bx = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bz, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.cb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bx
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !5 ; 3 uses
  %i.ce = lshr i64 %i.cd, 1                       ; 5 uses
  %i.cf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.cg = add nuw i64 %i.ce, %i.cf                ; 5 uses
  %i.ch = sub i64 %.sroa.09.0, %i.cg
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ch ; 3 uses
  %i.cj = icmp samesign ugt i64 %i.cg, %3
  %i.ck = trunc i64 %.sroa.023.135 to i1
  %i.cl = or i64 %i.cd, %.sroa.023.135
  %i.cm = trunc i64 %i.cl to i1
  %or.cond3.i = or i1 %i.cj, %i.cm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = trunc i64 %i.cd to i1
  br i1 %i.cn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.co = shl nuw nsw i64 %i.cg, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ck, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cp = or i64 %i.ce, 1
  %i.cq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTooENvYB15_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.ci, i64 noundef range(i64 0, 288230376151711744) %i.ce, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #43
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.ce
  %i.cv = or i64 %i.cf, 1
  %i.cw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTooENvYB15_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.cu, i64 noundef range(i64 0, 288230376151711744) %i.cf, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #43
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergeTooENvYBX_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.ci, i64 noundef range(i64 0, 288230376151711744) %i.cg, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.ce, ptr noalias nofree noundef nonnull %5)
  %i.da = shl nuw nsw i64 %i.cg, 1
  %i.db = or disjoint i64 %i.da, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergeTooENvYB16_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.db, %bb.x ], [ %i.co, %bb.t ] ; 2 uses
  %i.dc = icmp ugt i64 %i.bx, 1
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dd = add i64 %.sroa.02.1.lcssa, 1
  %i.de = lshr i64 %.sroa.018.0, 1
  %i.df = add nuw i64 %i.de, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.dg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.dg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = or i64 %1, 1
  %i.di = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortTooENvYB15_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.dl, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull %5) #43
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift4sortnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cm, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ck, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.021.0 = phi i8 [ %i.bd, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runnNvYnNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val10.i = load i128, ptr %i.p, align 16, !alias.scope !973, !noalias !978, !noundef !5 ; 3 uses
  %.val11.i = load i128, ptr %i.n, align 16, !alias.scope !982, !noalias !983, !noundef !5
  %i.q = icmp slt i128 %.val10.i, %.val11.i       ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.q, label %.preheader.i, label %.preheader21.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i128 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.t, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %.val8.i = load i128, ptr %i.r, align 16, !alias.scope !973, !noalias !978, !noundef !5 ; 2 uses
  %i.s = icmp slt i128 %.val8.i, %.val9.i
  br i1 %i.s, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runnNvYnNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.t = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.t, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runnNvYnNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i128 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.w, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %.val.i = load i128, ptr %i.u, align 16, !alias.scope !973, !noalias !978, !noundef !5 ; 2 uses
  %i.v = icmp slt i128 %.val.i, %.val7.i
  br i1 %i.v, label %bb.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runnNvYnNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.w = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.w, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runnNvYnNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph27.i

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runnNvYnNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph27.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.x = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.x)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runnNvYnNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.i
  br i1 %i.q, label %bb.q, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.y = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #43
  %i.z = shl nuw nsw i64 %..i12.i, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader

_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.au, %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ab = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.ad = getelementptr [16 x i8], ptr %i.aj, i64 %i.ab ; 2 uses
  %i.ae = load i128, ptr %i.ac, align 16, !alias.scope !984, !noalias !989, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ac, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !991, !noalias !992
  store i128 %i.ae, ptr %i.ad, align 16, !alias.scope !993, !noalias !994
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i

_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader, %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa, %.preheader21.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i465357.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i465357.i, %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.q:                                             ; preds = %bb.n
  %i.ah = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %.not.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.q
  %i.ai = phi i64 [ %i.ah, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i465357.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i465357.i ; 3 uses
  %xtraiter = and i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.ai, 9223372036854775806
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.au, %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i ]
  %i.al = xor i64 %.sroa.0.016.i.i.i, -1
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %i.ao = load i128, ptr %i.am, align 16, !alias.scope !984, !noalias !989, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.am, ptr noundef nonnull align 16 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !991, !noalias !992
  store i128 %i.ao, ptr %i.an, align 16, !alias.scope !993, !noalias !994
  %i.ap = xor i64 %.sroa.0.016.i.i.i, -2
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr [16 x i8], ptr %i.aj, i64 %i.ap ; 2 uses
  %i.at = load i128, ptr %i.ar, align 16, !alias.scope !984, !noalias !989, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.as, i64 16, i1 false), !alias.scope !991, !noalias !992
  store i128 %i.at, ptr %i.as, align 16, !alias.scope !993, !noalias !994
  %i.au = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i.loopexit.unr-lcssa, label %_RNvMNtCshzWfHUSfYae_4core5sliceSn12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.i

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift10create_runnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCshzWfHUSfYae_4core5sliceSn7reverseCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %i.aa, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %i.av = lshr i64 %.sroa.023.0, 1
  %i.aw = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.ax = sub nsw i64 %factor, %i.av
  %i.ay = add nuw nsw i64 %i.aw, %factor
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = xor i64 %i.ba, %i.az
  %i.bc = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 false)
  %i.bd = trunc nuw nsw i64 %i.bc to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %.sroa.02.136 = phi i64 [ %i.be, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.be = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bg, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bi, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.be
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !5 ; 3 uses
  %i.bl = lshr i64 %i.bk, 1                       ; 5 uses
  %i.bm = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bn = add nuw i64 %i.bl, %i.bm                ; 5 uses
  %i.bo = sub i64 %.sroa.09.0, %i.bn
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bo ; 3 uses
  %i.bq = icmp samesign ugt i64 %i.bn, %3
  %i.br = trunc i64 %.sroa.023.135 to i1
  %i.bs = or i64 %i.bk, %.sroa.023.135
  %i.bt = trunc i64 %i.bs to i1
  %or.cond3.i = or i1 %i.bq, %i.bt
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = trunc i64 %i.bk to i1
  br i1 %i.bu, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bv = shl nuw nsw i64 %i.bn, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.br, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bw = or i64 %i.bl, 1
  %i.bx = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 1
  %i.ca = xor i32 %i.bz, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.bp, i64 noundef range(i64 0, 576460752303423488) %i.bl, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ca, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #43
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bl
  %i.cc = or i64 %i.bm, 1
  %i.cd = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.cb, i64 noundef range(i64 0, 576460752303423488) %i.bm, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cg, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #43
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5merge5mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %i.bp, i64 noundef range(i64 0, 576460752303423488) %i.bn, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.bl, ptr noalias nofree noundef nonnull %5)
  %i.ch = shl nuw nsw i64 %i.bn, 1
  %i.ci = or disjoint i64 %i.ch, 1
  br label %_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable5drift13logical_mergenNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ci, %bb.x ], [ %i.bv, %bb.t ] ; 2 uses
  %i.cj = icmp ugt i64 %i.be, 1
  br i1 %i.cj, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ck = add i64 %.sroa.02.1.lcssa, 1
  %i.cl = lshr i64 %.sroa.018.0, 1
  %i.cm = add nuw i64 %i.cl, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cn = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cn, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = or i64 %1, 1
  %i.cp = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = xor i32 %i.cr, 126
  tail call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6stable9quicksort9quicksortnNvYnNtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 16 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cs, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #43
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_elemINtNtCshzWfHUSfYae_4core6option6OptionNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i32 noundef range(i32 0, 2) %1, i32 %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %3, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
  %i.c = load i64, ptr %i.a, align 8, !range !303, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !997, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #40
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.j = icmp ule i64 %3, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core6option6OptionNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEE11extend_withCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %3, i32 noundef %1, i32 %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir13UniverseIndexEEECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #39
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8K4cjrcxBsw_6hir_ty.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #41
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsbSS6DM8SDEO_5alloc3vec14spec_from_elemINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs8K4cjrcxBsw_6hir_ty3mir7OperandENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !303, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !997, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #40
          to label %.noexc3 unwind label %bb.h

.noexc3:                                          ; preds = %bb.b
  unreachable
end_hunk_2
begin_hunk_3_@_RNvXsl_NtNtCsjJXvCMGntp8_6syntax3ast9operatorsNtB5_8BinaryOpNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt:bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.n, ptr %i.a, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1341, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1337, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1660)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.o, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtNtCs8K4cjrcxBsw_6hir_ty5lower11diagnosticsNtB5_24IncorrectGenericsLenKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !97, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 14, i64 9
  %.1 = select i1 %i.b, ptr @1662, ptr @1661
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_5PlaceNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1672, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @586, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @769, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @590, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1670, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1673, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1671)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_Cs8K4cjrcxBsw_6hir_tyNtB5_4SpanNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i32, ptr %0, align 4, !range !747, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  switch i32 %i.e, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1404, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @833)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1405, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @980)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1674, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1400)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1675, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @736)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1676, i64 noundef 5)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.k, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs8K4cjrcxBsw_6hir_ty5inferNtB5_11BindingModeNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1678, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1677, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @817)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -2, 4) i8 @_RNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path4PathNtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(192) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 4 uses
  %i.f = alloca [16 x i8], align 4                ; 4 uses
  %i.g = alloca [16 x i8], align 4                ; 4 uses
  %i.h = alloca [16 x i8], align 4                ; 8 uses
  %i.i = alloca [16 x i8], align 4                ; 8 uses
  %i.j = alloca [16 x i8], align 4                ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %i.m = alloca [16 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 10 uses
  %i.o = alloca [4 x i8], align 4                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.6208 = alloca i64, align 8               ; 8 uses
  %.sroa.10 = alloca i64, align 8                 ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [96 x i8], align 8                ; 13 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %i.u = alloca [96 x i8], align 8                ; 15 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 7 uses
  %i.x = alloca [4 x i8], align 4                 ; 5 uses
  %i.y = load i32, ptr %0, align 8, !range !710, !noundef !5 ; 2 uses
  switch i32 %i.y, label %default.unreachable480 [
    i32 1, label %bb.c
    i32 0, label %bb.b
    i32 2, label %.thread215
  ]

default.unreachable480:                           ; preds = %._crit_edge409, %bb.ay, %bb.aq, %._crit_edge411, %bb.ah, %.thread215, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %.thread215

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !range !102, !noundef !5
  %i.af = trunc nuw i32 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  br i1 %i.af, label %bb.d, label %.thread215

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i32 %i.ak, ptr %i.x, align 4
  %i.al = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1680, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not159 = icmp eq i8 %i.al, -2
  br i1 %.not159, label %bb.e, label %bb.m

.thread215:                                       ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.03.0219 = phi ptr [ %i.ab, %bb.b ], [ %i.ai, %bb.c ], [ @1679, %bb.a ] ; 4 uses
  %i.am = load i8, ptr %.sroa.03.0219, align 4, !range !321, !noundef !5
  switch i8 %i.am, label %default.unreachable480 [
    i8 0, label %.loopexit236
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %.loopexit236
    i8 4, label %bb.p
  ]

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  %i.an = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not160 = icmp eq i8 %i.an, -2
  br i1 %.not160, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.ao = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1681, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not161 = icmp eq i8 %i.ao, -2
  br i1 %.not161, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.loopexit236

.loopexit236:                                     ; preds = %.lr.ph605, %.preheader.preheader550, %bb.o, %bb.q, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197, %bb.g, %.thread215, %.thread215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path8segments(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  call void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_12PathSegments4iter(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !10370)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !10373, !nonnull !5, !noundef !5 ; 3 uses
  %.promoted.i = load ptr, ptr %i.ap, align 8, !alias.scope !10373 ; 3 uses
  %.promoted14.i = load i64, ptr %i.u, align 8, !alias.scope !10370 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !10370
  %.fr28.i = freeze i64 %i.aw                     ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.fr28.i, 40 ; 2 uses
  %i.ax = icmp eq i64 %.fr28.i, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !10370, !nonnull !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.val.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !10370 ; 2 uses
  %.promoted15.i = load ptr, ptr %i.as, align 8, !alias.scope !10370 ; 4 uses
  %.promoted20.i = load ptr, ptr %i.at, align 8, !alias.scope !10370 ; 4 uses
  %.promoted21.i = load ptr, ptr %i.au, align 8, !alias.scope !10370 ; 4 uses
  %.promoted22.i = load ptr, ptr %i.ay, align 8, !alias.scope !10370 ; 4 uses
  %i.bc = icmp eq ptr %.promoted.i, %i.ar         ; 2 uses
  br i1 %i.ax, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader: ; preds = %.loopexit236
  br i1 %i.bc, label %.loopexit233, label %.lr.ph

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader: ; preds = %.loopexit236
  br i1 %i.bc, label %.loopexit233, label %.lr.ph314

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i: ; preds = %bb.i
  %i.bd = icmp eq ptr %i.bm, %i.ar
  br i1 %i.bd, label %.loopexit233, label %.lr.ph314

.lr.ph314:                                        ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i
  %i.be = phi ptr [ %i.bm, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ]
  %i.bf = phi i64 [ %i.ch, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted14.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 3 uses
  %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313 = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i18.us.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted15.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 9 uses
  %i.bg = phi ptr [ %i.cg, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted20.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 7 uses
  %i.bh = phi ptr [ %i.cf, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted21.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 7 uses
  %spec.select.i8.i.i.i.i.i.i.i25.us.i312 = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i24.us.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted22.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 7 uses
  %i.bi = phi ptr [ %i.ce, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted15.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 3 uses
  %i.bj = phi ptr [ %i.cd, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted21.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 5 uses
  %i.bk = phi ptr [ %i.cc, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted20.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 6 uses
  %spec.select.i8.i.i.i.i.i.i.i.us.i304310 = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i.us.i306, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted22.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 4 uses
  %i.bl = phi i64 [ %i.cb, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i ], [ %.promoted14.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %.not.i.i.i.i.us.i = icmp eq i64 %i.bf, 2
  br i1 %.not.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph314
  %i.bn = trunc nuw i64 %i.bf to i1
  %.not.i.us.peel.i.i.i.i.i.i.i.us.i = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, null ; 2 uses
  br i1 %i.bn, label %.split.us.preheader.i.i.i.i.i.i.i.us.i, label %.split.i.i.i.i.i.i.i.us.i

.split.i.i.i.i.i.i.i.us.i:                        ; preds = %bb.h
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i.us.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i, label %.sink.split.i.i.i.i.i.i.i.i.us.i

.sink.split.i.i.i.i.i.i.i.i.us.i:                 ; preds = %.split.i.i.i.i.i.i.i.us.i
  %i.bo = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, %i.bg
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, i64 40 ; 2 uses
  br i1 %i.bo, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i

.split.us.preheader.i.i.i.i.i.i.i.us.i:           ; preds = %bb.h
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i.us.i, label %select.unfold.us.peel.i.i.i.i.i.i.i.us.i, label %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i

.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i:         ; preds = %.split.us.preheader.i.i.i.i.i.i.i.us.i
  %i.bq = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, %i.bg
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, i64 40 ; 2 uses
  br i1 %i.bq, label %select.unfold.us.peel.i.i.i.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i

select.unfold.us.peel.i.i.i.i.i.i.i.us.i:         ; preds = %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i, %.split.us.preheader.i.i.i.i.i.i.i.us.i
  %i.bs = phi ptr [ null, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bi, %.split.us.preheader.i.i.i.i.i.i.i.us.i ]
  %.not4.us.peel.i.i.i.i.i.i.i.us.i = icmp eq ptr %i.bh, null
  br i1 %.not4.us.peel.i.i.i.i.i.i.i.us.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i, label %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i

.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i:       ; preds = %select.unfold.us.peel.i.i.i.i.i.i.i.us.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i: ; preds = %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i, %.sink.split.i.i.i.i.i.i.i.i.us.i, %.split.i.i.i.i.i.i.i.us.i
  %i.bu = phi ptr [ %i.bk, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bk, %.split.i.i.i.i.i.i.i.us.i ], [ %i.bt, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ %i.bk, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 3 uses
  %i.bv = phi ptr [ %i.bj, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bj, %.split.i.i.i.i.i.i.i.us.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 3 uses
  %i.bw = phi ptr [ null, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bi, %.split.i.i.i.i.i.i.i.us.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ %i.bs, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 3 uses
  %i.bx = phi ptr [ %i.bh, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bh, %.split.i.i.i.i.i.i.i.us.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 3 uses
  %i.by = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bg, %.split.i.i.i.i.i.i.i.us.i ], [ %i.bt, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.us.i ], [ %i.bg, %select.unfold.us.peel.i.i.i.i.i.i.i.us.i ] ; 3 uses
  %.not.i6.i.i.i.i.i.i.i.us.i = icmp eq ptr %spec.select.i8.i.i.i.i.i.i.i25.us.i312, null
  br i1 %.not.i6.i.i.i.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i, label %.sink.split.i7.i.i.i.i.i.i.i.us.i

.sink.split.i7.i.i.i.i.i.i.i.us.i:                ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i
  %i.bz = icmp eq ptr %spec.select.i8.i.i.i.i.i.i.i25.us.i312, %i.ba
  %i.ca = getelementptr inbounds nuw i8, ptr %spec.select.i8.i.i.i.i.i.i.i25.us.i312, i64 40 ; 2 uses
  br i1 %i.bz, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i: ; preds = %.sink.split.i7.i.i.i.i.i.i.i.us.i
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i, %.sink.split.i7.i.i.i.i.i.i.i.us.i, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i, %.sink.split.i.i.i.i.i.i.i.i.us.i, %.lr.ph314
  %i.cb = phi i64 [ %i.bl, %.lr.ph314 ], [ %i.bl, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bl, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bl, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ 2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ] ; 2 uses
  %spec.select.i8.i.i.i.i.i.i.i.us.i306 = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i.us.i304310, %.lr.ph314 ], [ %spec.select.i8.i.i.i.i.i.i.i.us.i304310, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %spec.select.i8.i.i.i.i.i.i.i.us.i304310, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.ca, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ %spec.select.i8.i.i.i.i.i.i.i.us.i304310, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ] ; 2 uses
  %i.cc = phi ptr [ %i.bk, %.lr.ph314 ], [ %i.bk, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bk, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bu, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ %i.bu, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bu, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ] ; 2 uses
  %i.cd = phi ptr [ %i.bj, %.lr.ph314 ], [ %i.bj, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bj, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bv, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ %i.bv, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bv, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ] ; 2 uses
  %i.ce = phi ptr [ %i.bi, %.lr.ph314 ], [ %i.bp, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.br, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bw, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ %i.bw, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bw, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ] ; 2 uses
  %spec.select.i8.i.i.i.i.i.i.i24.us.i = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i25.us.i312, %.lr.ph314 ], [ %spec.select.i8.i.i.i.i.i.i.i25.us.i312, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.us.i312, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.ca, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ]
  %i.cf = phi ptr [ %i.bh, %.lr.ph314 ], [ %i.bh, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bh, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bx, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ %i.bx, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.bx, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ]
  %i.cg = phi ptr [ %i.bg, %.lr.ph314 ], [ %i.bg, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.bg, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.by, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ %i.by, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ %i.by, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ]
  %spec.select.i.us.peel27.i.i.i.i.i.i.i18.us.i = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, %.lr.ph314 ], [ %i.bp, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %i.br, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ null, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ]
  %i.ch = phi i64 [ 2, %.lr.ph314 ], [ 0, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ 1, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %i.bf, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ 2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ]
  %.sroa.0.0.i.i.i.i.us.i = phi ptr [ null, %.lr.ph314 ], [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, %.sink.split.i.i.i.i.i.i.i.i.us.i ], [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.us.i313, %.sink.split.i.us.peel.i.i.i.i.i.i.i.us.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.us.i312, %.sink.split.i7.i.i.i.i.i.i.i.us.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.us.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.us.i ] ; 2 uses
  %.not.i1.i.i.i.us.i = icmp eq ptr %.sroa.0.0.i.i.i.i.us.i, null
  %spec.select.i.i.i.i.us.i = select i1 %.not.i1.i.i.i.us.i, ptr %.val.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.us.i ; 3 uses
  %.not7.i.i.us.i = icmp eq ptr %spec.select.i.i.i.i.us.i, null
  br i1 %.not7.i.i.us.i, label %.loopexit233, label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10380)
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.us.i, i64 33
  %i.cj = load i8, ptr %i.ci, align 1, !range !115, !alias.scope !10383, !noalias !10386, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !10388)
  call void @llvm.experimental.noalias.scope.decl(metadata !10391)
  %i.ck = and i8 %i.cj, 1
  %or.cond.not.i.us.i = icmp eq i8 %i.ck, 0
  br i1 %or.cond.not.i.us.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i, label %.split27.us.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i: ; preds = %bb.k
  %i.cl = icmp eq ptr %i.cu, %i.ar
  br i1 %i.cl, label %.loopexit233, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i
  %i.cm = phi ptr [ %i.cu, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ]
  %i.cn = phi i64 [ %i.do, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted14.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 3 uses
  %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283 = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i18.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted15.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 8 uses
  %i.co = phi ptr [ %i.dn, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted20.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 8 uses
  %i.cp = phi ptr [ %i.dm, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted21.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 9 uses
  %spec.select.i8.i.i.i.i.i.i.i25.i282 = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i24.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted22.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 8 uses
  %i.cq = phi ptr [ %i.dl, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted15.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 3 uses
  %i.cr = phi ptr [ %i.dk, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted21.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 5 uses
  %i.cs = phi ptr [ %i.dj, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted20.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 6 uses
  %spec.select.i8.i.i.i.i.i.i.i.i275281 = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i.i277, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted22.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 5 uses
  %i.ct = phi i64 [ %i.di, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i ], [ %.promoted14.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader ] ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cn, 2
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.cv = trunc nuw i64 %i.cn to i1
  %.not.i.us.peel.i.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283, null ; 2 uses
  br i1 %i.cv, label %.split.us.preheader.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i

.split.us.preheader.i.i.i.i.i.i.i.i:              ; preds = %bb.j
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i.i, label %select.unfold.us.peel.i.i.i.i.i.i.i.i, label %.sink.split.i.us.peel.i.i.i.i.i.i.i.i

.sink.split.i.us.peel.i.i.i.i.i.i.i.i:            ; preds = %.split.us.preheader.i.i.i.i.i.i.i.i
  %i.cw = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283, i64 40 ; 2 uses
  br i1 %i.cw, label %select.unfold.us.peel.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

select.unfold.us.peel.i.i.i.i.i.i.i.i:            ; preds = %.sink.split.i.us.peel.i.i.i.i.i.i.i.i, %.split.us.preheader.i.i.i.i.i.i.i.i
  %i.cy = phi ptr [ null, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.cq, %.split.us.preheader.i.i.i.i.i.i.i.i ]
  %.not4.us.peel.i.i.i.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not4.us.peel.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i, label %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i

.sink.split.i.us.peel26.i.i.i.i.i.i.i.i:          ; preds = %select.unfold.us.peel.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.i.i.i.i.i.i.i.i ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.j
  br i1 %.not.i.us.peel.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i:                    ; preds = %.split.i.i.i.i.i.i.i.i
  %i.db = icmp eq ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283, %i.co
  %i.dc = getelementptr inbounds nuw i8, ptr %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283, i64 40 ; 2 uses
  br i1 %i.db, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i, %select.unfold.us.peel.i.i.i.i.i.i.i.i
  %i.dd = phi ptr [ %i.cr, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cr, %.split.i.i.i.i.i.i.i.i ], [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.de = phi ptr [ null, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cq, %.split.i.i.i.i.i.i.i.i ], [ %i.cy, %select.unfold.us.peel.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.df = phi ptr [ %i.cp, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cp, %.split.i.i.i.i.i.i.i.i ], [ null, %select.unfold.us.peel.i.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i6.i.i.i.i.i.i.i.i = icmp eq ptr %spec.select.i8.i.i.i.i.i.i.i25.i282, null
  br i1 %.not.i6.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i, label %.sink.split.i7.i.i.i.i.i.i.i.i

.sink.split.i7.i.i.i.i.i.i.i.i:                   ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i
  %i.dg = icmp eq ptr %spec.select.i8.i.i.i.i.i.i.i25.i282, %i.ba
  %i.dh = getelementptr inbounds nuw i8, ptr %spec.select.i8.i.i.i.i.i.i.i25.i282, i64 40 ; 2 uses
  br i1 %i.dg, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i: ; preds = %.sink.split.i7.i.i.i.i.i.i.i.i
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i, %.sink.split.i7.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i, %.lr.ph
  %i.di = phi i64 [ %i.ct, %.lr.ph ], [ %i.ct, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %i.ct, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.ct, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.ct, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ] ; 2 uses
  %spec.select.i8.i.i.i.i.i.i.i.i277 = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i.i275281, %.lr.ph ], [ %i.dh, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i.i275281, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i.i275281, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i.i275281, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i.i275281, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ] ; 2 uses
  %i.dj = phi ptr [ %i.cs, %.lr.ph ], [ %i.cs, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %i.cs, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.cz, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.cs, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.cs, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ %i.cs, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ] ; 2 uses
  %i.dk = phi ptr [ %i.cr, %.lr.ph ], [ %i.dd, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %i.cr, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.cr, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.dd, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ %i.dd, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ] ; 2 uses
  %i.dl = phi ptr [ %i.cq, %.lr.ph ], [ %i.de, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %i.cx, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.da, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.dc, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.de, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ %i.de, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ] ; 2 uses
  %spec.select.i8.i.i.i.i.i.i.i24.i = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i25.i282, %.lr.ph ], [ %i.dh, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.i282, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.i282, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %spec.select.i8.i.i.i.i.i.i.i25.i282, %.sink.split.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ]
  %i.dm = phi ptr [ %i.cp, %.lr.ph ], [ %i.df, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %i.cp, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.cp, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.df, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ %i.df, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ]
  %i.dn = phi ptr [ %i.co, %.lr.ph ], [ %i.co, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %i.co, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.cz, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.co, %.sink.split.i.i.i.i.i.i.i.i.i ], [ %i.co, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ %i.co, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ]
  %spec.select.i.us.peel27.i.i.i.i.i.i.i18.i = phi ptr [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283, %.lr.ph ], [ null, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %i.cx, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.da, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %i.dc, %.sink.split.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ]
  %i.do = phi i64 [ 2, %.lr.ph ], [ %i.cn, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ 1, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ 1, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ 0, %.sink.split.i.i.i.i.i.i.i.i.i ], [ 2, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ null, %.lr.ph ], [ %spec.select.i8.i.i.i.i.i.i.i25.i282, %.sink.split.i7.i.i.i.i.i.i.i.i ], [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283, %.sink.split.i.us.peel.i.i.i.i.i.i.i.i ], [ %i.cp, %.sink.split.i.us.peel26.i.i.i.i.i.i.i.i ], [ %spec.select.i.us.peel27.i.i.i.i.i.i.i19.i283, %.sink.split.i.i.i.i.i.i.i.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSINtB11_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtB5_8FuseImplBY_E4nextCs8K4cjrcxBsw_6hir_ty.exit.thread.i.i.i.i.i.i.i.i ], [ null, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBe_6option8IntoIterRSINtB14_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i.i ] ; 2 uses
  %.not.i1.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  %spec.select.i.i.i.i.i = select i1 %.not.i1.i.i.i.i, ptr %.val.i.i.i.i, ptr %.sroa.0.0.i.i.i.i.i ; 3 uses
  %.not7.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i, null
  br i1 %.not7.i.i.i, label %.loopexit233, label %bb.k

bb.k:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10380)
  %i.dp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 33
  %i.dq = load i8, ptr %i.dp, align 1, !range !115, !alias.scope !10383, !noalias !10386, !noundef !5
  call void @llvm.experimental.noalias.scope.decl(metadata !10388)
  call void @llvm.experimental.noalias.scope.decl(metadata !10391)
  %i.dr = and i8 %i.dq, 1
  %or.cond.not.i.i = icmp eq i8 %i.dr, 0
  br i1 %or.cond.not.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i, label %.split27.us.i

.split27.us.i:                                    ; preds = %bb.k, %bb.i
  %storemerge336 = phi ptr [ %i.bm, %bb.i ], [ %i.cu, %bb.k ]
  %storemerge335 = phi ptr [ %i.ce, %bb.i ], [ %i.dl, %bb.k ]
  %storemerge334 = phi ptr [ %i.cd, %bb.i ], [ %i.dk, %bb.k ]
  %storemerge333 = phi ptr [ %i.cc, %bb.i ], [ %i.dj, %bb.k ]
  %storemerge332 = phi ptr [ %spec.select.i8.i.i.i.i.i.i.i.us.i306, %bb.i ], [ %spec.select.i8.i.i.i.i.i.i.i.i277, %bb.k ]
  %storemerge331 = phi i64 [ %i.cb, %bb.i ], [ %i.di, %bb.k ]
  %.us-phi.i = phi ptr [ %spec.select.i.i.i.i.us.i, %bb.i ], [ %spec.select.i.i.i.i.i, %bb.k ] ; 2 uses
  store ptr %storemerge336, ptr %i.ap, align 8
  store ptr %storemerge335, ptr %i.as, align 8
  store ptr %storemerge334, ptr %i.au, align 8
  store ptr %storemerge333, ptr %i.at, align 8
  store ptr %storemerge332, ptr %i.ay, align 8
  store i64 %storemerge331, ptr %i.u, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !10394, !noalias !10370, !noundef !5
  %.not4.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not4.i.i.i.i, label %bb.l, label %bb.af

bb.l:                                             ; preds = %.split27.us.i
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #42, !noalias !10395
  unreachable

bb.m:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.0.0 = phi i8 [ %i.an, %bb.e ], [ %i.al, %bb.d ], [ %i.ao, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.loopexit237

bb.n:                                             ; preds = %.thread215
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.0219, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !noundef !5 ; 3 uses
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.q, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.n
  %i.dx = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1684, ptr noundef nonnull inttoptr (i64 11 to ptr)) ; 2 uses
  %.not157.peel = icmp eq i8 %i.dx, -2
  br i1 %.not157.peel, label %.preheader.preheader550, label %.loopexit237

.preheader.preheader550:                          ; preds = %.preheader.preheader
  %exitcond.not603 = icmp eq i8 %i.dv, 1
  br i1 %exitcond.not603, label %.loopexit236, label %bb.s

bb.o:                                             ; preds = %.thread215
  %i.dy = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1685, ptr noundef nonnull inttoptr (i64 11 to ptr)) ; 2 uses
  %.not154 = icmp eq i8 %i.dy, -2
  br i1 %.not154, label %.loopexit236, label %.loopexit237

bb.p:                                             ; preds = %.thread215
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.03.0219, i64 4
  %i.ea = load i32, ptr %i.dz, align 4, !range !1668, !noundef !5
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.03.0219, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !noundef !5
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !5, !noundef !5
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eg = load ptr, ptr %i.ef, align 8, !nonnull !5, !align !61, !noundef !5
  %i.eh = tail call noundef nonnull align 8 ptr @_RINvMs5_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB8_5Crate10extra_dataDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_EB17_(i32 noundef %i.ea, i32 noundef %i.ec, ptr noundef nonnull %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.eg) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !noundef !5
  %.not = icmp eq ptr %i.ej, null
  br i1 %.not, label %bb.u, label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ek = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1682, ptr noundef nonnull inttoptr (i64 9 to ptr)) ; 2 uses
  %.not158 = icmp eq i8 %i.ek, -2
  br i1 %.not158, label %.loopexit236, label %.loopexit237

.lr.ph605:                                        ; preds = %bb.r
  %i.el = add nuw i8 %.sroa.0120.0605, 1          ; 2 uses
  %.not155 = icmp eq i8 %i.el, %i.dv
  br i1 %.not155, label %.loopexit236, label %bb.s, !llvm.loop !10396

bb.r:                                             ; preds = %bb.s
  %i.em = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1684, ptr noundef nonnull inttoptr (i64 11 to ptr)) ; 2 uses
  %.not157 = icmp eq i8 %i.em, -2
  br i1 %.not157, label %.lr.ph605, label %.loopexit237, !llvm.loop !10396

bb.s:                                             ; preds = %.preheader.preheader550, %.lr.ph605
  %.sroa.0120.0605 = phi i8 [ %i.el, %.lr.ph605 ], [ 1, %.preheader.preheader550 ]
  %i.en = tail call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1683, ptr noundef nonnull inttoptr (i64 5 to ptr)) ; 2 uses
  %.not156 = icmp eq i8 %i.en, -2
  br i1 %.not156, label %bb.r, label %.loopexit237

bb.t:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ep = tail call noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eo)
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.t
  %storemerge = phi ptr [ %i.ep, %bb.t ], [ @_RNvNvNtNtCs39E2wp1vf7X_6intern6symbol7symbols12dollar_crate10SYMBOL_STR, %bb.p ]
  store ptr %storemerge, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.w, ptr %i.v, align 8
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs5_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4125.0..sroa_idx, align 8
  %i.eq = invoke noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1686, ptr noundef nonnull %i.v)
          to label %bb.w unwind label %bb.v       ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.er = landingpad { ptr, i32 }
          cleanup
  %.val194 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty(ptr nonnull %.val194) #39
          to label %bb.cx unwind label %bb.cw

bb.w:                                             ; preds = %bb.u
  %.not153 = icmp eq i8 %i.eq, -2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.val = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.es = ptrtoint ptr %.val to i64
  %i.et = and i64 %i.es, 1
  %.not.i.i.i196 = icmp eq i64 %i.et, 0           ; 2 uses
  br i1 %.not153, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not.i.i.i196, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr i8, ptr %.val, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eu) ]
  %i.ev = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.eu)
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %i.eu, i64 %i.ew ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ex, ptr %i.d, align 8
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8
  %i.ez = icmp eq i64 %i.ey, 2
  br i1 %i.ez, label %bb.z, label %bb.aa, !prof !11

bb.z:                                             ; preds = %bb.y
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ex, ptr %i.c, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.x, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit237

bb.ab:                                            ; preds = %bb.w
  br i1 %.not.i.i.i196, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fa = getelementptr i8, ptr %.val, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  %i.fb = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.fa)
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 %i.fc ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.fd, ptr %i.b, align 8
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8
  %i.ff = icmp eq i64 %i.fe, 2
  br i1 %i.ff, label %bb.ad, label %bb.ae, !prof !11

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.fd, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECs8K4cjrcxBsw_6hir_ty.exit197: ; preds = %bb.ab, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit236

bb.af:                                            ; preds = %.split27.us.i
  %i.fg = load ptr, ptr %.us-phi.i, align 8, !alias.scope !10394, !noalias !10370, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.fh = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1680, ptr noundef nonnull inttoptr (i64 3 to ptr)) ; 2 uses
  %.not163 = icmp eq i8 %i.fh, -2
  br i1 %.not163, label %bb.ah, label %.loopexit237

.loopexit233:                                     ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterRSINtB1q_6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEEEINtNtNtB8_7sources6repeat6RepeatRB1N_EENtNtNtB8_6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.i.i.us.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.i.preheader, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldTRNtNtCs33K2ylI4knu_10hir_expand4name4NameRINtNtBa_6option6OptionNtNtNtCsileJQcQObtj_7hir_def10expr_store4path11GenericArgsEENtB24_11PathSegmentuINtNtNtBa_3ops12control_flow11ControlFlowRNtB24_10GenericArgENCNvMs0_B24_NtB24_12PathSegments4iter0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB30_B3Z_NCNvXsr_NtCs8K4cjrcxBsw_6hir_ty7displayNtB24_4PathNtB65_29HirDisplayWithExpressionStore7hir_fmts_0E0E0B67_.exit.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.loopexit233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMNtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB2_4Path8segments(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0)
  call void @_RNvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store4pathNtB5_12PathSegments4iter(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r)
  %.sroa.044.sroa.0.0.copyload = load i64, ptr %i.s, align 8
  %.sroa.044.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.044.sroa.2.0.copyload = load ptr, ptr %.sroa.044.sroa.2.0..sroa_idx, align 8
  %.sroa.044.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.044.sroa.3.0.copyload = load i64, ptr %.sroa.044.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.044.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.044.sroa.4.0.copyload = load ptr, ptr %.sroa.044.sroa.4.0..sroa_idx, align 8
  %.sroa.044.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.044.sroa.5.0.copyload = load ptr, ptr %.sroa.044.sroa.5.0..sroa_idx, align 8
  %.sroa.044.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.044.sroa.6.0.copyload = load ptr, ptr %.sroa.044.sroa.6.0..sroa_idx, align 8
  %.sroa.044.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.044.sroa.7.0.copyload = load ptr, ptr %.sroa.044.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.044.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.044.sroa.8.0.copyload = load ptr, ptr %.sroa.044.sroa.8.0..sroa_idx, align 8
  %.sroa.044.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.044.sroa.9.0.copyload = load ptr, ptr %.sroa.044.sroa.9.0..sroa_idx, align 8
  %.sroa.044.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.044.sroa.10.0.copyload = load ptr, ptr %.sroa.044.sroa.10.0..sroa_idx, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.idx.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.sroa.044.sroa.3.0.copyload, 40
  %i.fi = icmp eq i64 %.sroa.044.sroa.3.0.copyload, 0
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !5 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fq = load i64, ptr %i.fp, align 8            ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !5 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !10397)
  %i.fw = load i32, ptr %i.fg, align 4, !range !710, !alias.scope !10397, !noalias !10400, !noundef !5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  switch i32 %i.fw, label %default.unreachable480 [
    i32 0, label %bb.ai
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.fy = call noundef i8 @_RNvXsn_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fx, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit

bb.aj:                                            ; preds = %bb.ah
  %i.fz = call noundef i8 @_RNvXsm_NtCs8K4cjrcxBsw_6hir_ty7displayINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref11LifetimeRefENtB5_29HirDisplayWithExpressionStore7hir_fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fx, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %3)
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit

bb.ak:                                            ; preds = %bb.ah
  %i.ga = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1707, ptr noundef nonnull inttoptr (i64 13 to ptr)), !noalias !10404
  br label %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit

_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit: ; preds = %bb.ai, %bb.aj, %bb.ak
  %.sroa.0.0.i198 = phi i8 [ %i.fy, %bb.ai ], [ %i.fz, %bb.aj ], [ %i.ga, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not164 = icmp eq i8 %.sroa.0.0.i198, -2
  br i1 %.not164, label %bb.al, label %.loopexit237

bb.al:                                            ; preds = %_RNvXss_NtCs8K4cjrcxBsw_6hir_ty7displayNtNtNtCsileJQcQObtj_7hir_def10expr_store4path10GenericArgNtB5_29HirDisplayWithExpressionStore7hir_fmt.exit
  %i.gb = call noundef i8 @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty7displayNtB5_12HirFormatter9write_fmt(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull @1687, ptr noundef nonnull inttoptr (i64 9 to ptr)) ; 2 uses
  %.not165 = icmp eq i8 %i.gb, -2
  br i1 %.not165, label %bb.ag, label %.loopexit237

bb.am:                                            ; preds = %bb.az, %bb.ag
  %.sroa.22204.0 = phi i64 [ 0, %bb.ag ], [ %.sroa.22204.1, %bb.az ] ; 4 uses
  %.sroa.19.0 = phi ptr [ %.sroa.044.sroa.9.0.copyload, %bb.ag ], [ %.sroa.19.1, %bb.az ] ; 5 uses
  %.sroa.15.0 = phi ptr [ %.sroa.044.sroa.6.0.copyload, %bb.ag ], [ %.sroa.15.3, %bb.az ] ; 9 uses
  %.sroa.13.0 = phi ptr [ %.sroa.044.sroa.5.0.copyload, %bb.ag ], [ %.sroa.13.3, %bb.az ] ; 7 uses
  %.sroa.9.0 = phi ptr [ %.sroa.044.sroa.4.0.copyload, %bb.ag ], [ %.sroa.9.4, %bb.az ] ; 7 uses
  %.sroa.6.0 = phi ptr [ %.sroa.044.sroa.2.0.copyload, %bb.ag ], [ %.sroa.6.3, %bb.az ] ; 9 uses
  %.sroa.0203.0 = phi i64 [ %.sroa.044.sroa.0.0.copyload, %bb.ag ], [ %.sroa.0203.2, %bb.az ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6208)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
end_hunk_3
