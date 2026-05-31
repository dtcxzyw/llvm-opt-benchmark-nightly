inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RINvXss_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB6_17PageEncodingStatsNtNtBa_14parquet_thrift11WriteThrift12write_thriftQQINtNtB8_6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  br i1 %.not54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.641.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.344.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.641.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %0, align 8
  %.sroa.243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.k, ptr %.sroa.243.0..sroa_idx, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs14_NtCs4tdlwR1I4n2_7parquet14parquet_thriftlNtB7_16WriteThriftField18write_thrift_fieldQQINtNtNtB9_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i16 noundef 3, i16 noundef %i.k)
  %i.l = load i64, ptr %i.a, align 8, !range !4928, !noundef !12 ; 2 uses
  %.not55 = icmp eq i64 %i.l, 8
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.549.0.copyload = load i16, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.353.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.650.0..sroa_idx, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.l, ptr %0, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.549.0.copyload, ptr %.sroa.252.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvMsm_NtCs4tdlwR1I4n2_7parquet14parquet_thriftINtB5_27ThriftCompactOutputProtocolQQINtNtNtB7_4file6writer12TrackedWriteQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEE10write_byteCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %2, i8 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6reduceNvNtBV_7expr_fn3andECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7089)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !7089, !noalias !7092, !nonnull !12, !noundef !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !7089, !noalias !7092, !nonnull !12, !noundef !12 ; 4 uses
  %i.g = icmp eq ptr %i.f, %i.d
  br i1 %i.g, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %i.h, ptr %i.e, align 8, !alias.scope !7089, !noalias !7092
  %.sroa.0.0.copyload3 = load i64, ptr %i.f, align 16, !noalias !7089 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload3, 37
  br i1 %.not, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.57.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx4, i64 104, i1 false)
  store i64 %.sroa.0.0.copyload3, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldBX_NvNtB11_7expr_fn3andECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit
  store i64 37, ptr %0, align 16
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.thread
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvYINtNtNtCsbvkFyIu7lgC_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB12_4find5checkReQNtB8_10IsNotEmptyE0INtNtNtBa_3ops12control_flow11ControlFlowB2d_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %.promoted = load i8, ptr %i.a, align 1, !alias.scope !7094
  %.promoted20 = load i64, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.b, align 8, !nonnull !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i8, ptr %i.g, align 8, !range !208
  %i.i = trunc nuw i8 %i.h to i1
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  %.promoted23 = load ptr, ptr %i.c, align 8
  %.promoted27 = load i64, ptr %i.f, align 8
  br label %bb.b

bb.b:                                             ; preds = %select.unfold, %bb.a
  %.lcssa1730 = phi i64 [ %.lcssa1728, %select.unfold ], [ %.promoted27, %bb.a ] ; 2 uses
  %.lcssa1926 = phi ptr [ %.lcssa1924, %select.unfold ], [ %.promoted23, %bb.a ] ; 3 uses
  %.pre.i.i.i22 = phi i64 [ %.pre.i.i.i21, %select.unfold ], [ %.promoted20, %bb.a ] ; 4 uses
  %i.j = phi i8 [ %i.bt, %select.unfold ], [ %.promoted, %bb.a ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7100)
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7104)
  %i.l = icmp eq ptr %.lcssa1926, %i.e
  br i1 %i.l, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.l
  %i.m = phi i64 [ %i.bb, %bb.l ], [ %.lcssa1730, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %i.ax, %bb.l ], [ %.lcssa1926, %bb.c ] ; 6 uses
  %i.o = ptrtoint ptr %i.n to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7113)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.n, align 1, !noalias !7116, !noundef !12 ; 5 uses
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %bb.d, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = and i8 %i.q, 31
  %i.t = zext nneg i8 %i.s to i32                 ; 3 uses
  %i.u = icmp ne ptr %i.p, %i.e
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 3 uses
  %i.w = load i8, ptr %i.p, align 1, !noalias !7116, !noundef !12
  %i.x = shl nuw nsw i32 %i.t, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32                 ; 2 uses
  %i.aa = or disjoint i32 %i.x, %i.z
  %i.ab = icmp samesign ugt i8 %i.q, -33
  br i1 %i.ab, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = zext nneg i8 %i.q to i32
  br label %bb.e

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i
  %i.ad = icmp ne ptr %i.v, %i.e
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 3 ; 3 uses
  %i.af = load i8, ptr %i.v, align 1, !noalias !7116, !noundef !12
  %i.ag = shl nuw nsw i32 %i.z, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai            ; 2 uses
  %i.ak = shl nuw nsw i32 %i.t, 12
  %i.al = or disjoint i32 %i.aj, %i.ak
  %i.am = icmp samesign ugt i8 %i.q, -17
  br i1 %i.am, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i, label %bb.e

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i
  %i.an = icmp ne ptr %i.ae, %i.e
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ap = load i8, ptr %i.ae, align 1, !noalias !7116, !noundef !12
  %i.aq = shl nuw nsw i32 %i.t, 18
  %i.ar = and i32 %i.aq, 1835008
  %i.as = shl nuw nsw i32 %i.aj, 6
  %i.at = and i8 %i.ap, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = or disjoint i32 %i.av, %i.ar
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i
  %i.ax = phi ptr [ %i.ae, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i ], [ %i.p, %bb.d ] ; 7 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.al, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i ], [ %i.aw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i ], [ %i.aa, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i ], [ %i.ac, %bb.d ] ; 8 uses
  %i.ay = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.az, %i.o
  %i.bb = add i64 %i.ba, %i.m                     ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.f [
    i32 32, label %bb.m
    i32 13, label %bb.m
    i32 12, label %bb.m
    i32 11, label %bb.m
    i32 10, label %bb.m
    i32 9, label %bb.m
  ]

bb.f:                                             ; preds = %bb.e
  %i.bc = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 127
  br i1 %i.bc, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.bd = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.bd, label %bb.l [
    i32 0, label %bb.j
    i32 22, label %bb.h
    i32 32, label %bb.k
    i32 48, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.be = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5760
  %i.bf = zext i1 %i.be to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bg = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12288
  %i.bh = zext i1 %i.bg to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.bi = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !7120, !noundef !12
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.bm = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !7120, !noundef !12
  %i.bq = lshr i8 %i.bp, 1
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bh, %bb.i ], [ %i.bl, %bb.j ], [ %i.bf, %bb.h ], [ %i.bq, %bb.k ]
  %i.br = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.g, %bb.f
  %i.bs = icmp eq ptr %i.ax, %i.e
  br i1 %i.bs, label %._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i: ; preds = %bb.l
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !7121, !noalias !7122
  store i64 %i.bb, ptr %i.f, align 8, !alias.scope !7123, !noalias !7122
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.m:                                             ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  store ptr %i.ax, ptr %i.c, align 8, !alias.scope !7121, !noalias !7122
  store i64 %i.bb, ptr %i.f, align 8, !alias.scope !7123, !noalias !7122
  store i64 %i.bb, ptr %0, align 8, !alias.scope !7094
  br label %select.unfold

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i, %bb.c
  %.lcssa1729 = phi i64 [ %i.bb, %._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i ], [ %.lcssa1730, %bb.c ]
  %.lcssa1925 = phi ptr [ %i.ax, %._RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.loopexit_crit_edge.i.i.i.i ], [ %.lcssa1926, %bb.c ]
  store i8 1, ptr %i.a, align 1, !alias.scope !7124
  %.not.i.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i.i.i22
  %or.cond.not.i.i.i = select i1 %i.i, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %.loopexit

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.m
  %.lcssa1728 = phi i64 [ %i.bb, %bb.m ], [ %.lcssa1729, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.lcssa1924 = phi ptr [ %i.ax, %bb.m ], [ %.lcssa1925, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pre.i.i.i21 = phi i64 [ %i.bb, %bb.m ], [ %.pre.i.i.i22, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.bt = phi i8 [ 0, %bb.m ], [ 1, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.pn31 = phi i64 [ %i.m, %bb.m ], [ %.pre2.i.i.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.4.1.i.i = sub nuw i64 %.pn31, %.pre.i.i.i22 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i, label %bb.b, label %bb.n

bb.n:                                             ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pre.i.i.i22
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.b, %bb.n
  %.sroa.3.0 = phi i64 [ %.sroa.4.1.i.i, %bb.n ], [ undef, %bb.b ], [ undef, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.1.i.i, %bb.n ], [ null, %bb.b ], [ null, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  %i.bu = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bv = insertvalue { ptr, i64 } %i.bu, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bv
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENtNtNtBa_6traits8iterator8Iterator7collectINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetB1n_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7127
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @37), !noalias !7127 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @39, i64 32, i1 false), !noalias !7127
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !7127
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.d, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !7127
  invoke void @_RINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2p_8adapters6cloned6ClonedINtNtNtB2r_5slice4iter4IterBO_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtNtB1U_5slice4iter4IterB14_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b, !noalias !7127

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjyY8HP3IvQ6_12object_store4path4PathuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.c, !noalias !7127

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !7127
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.e

_RINvXs7_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3setINtB6_7HashSetNtNtCsjyY8HP3IvQ6_12object_store4path4PathEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB1S_8adapters6cloned6ClonedINtNtNtB1U_5slice4iter4IterB14_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7127
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtCsbpG6u9KFjWn_8indexmap3set4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB2B_10SimplifierNtNtB1N_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0ENtNtNtBa_6traits8iterator8Iterator6reduceNvNtB1N_7expr_fn3andECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 16              ; 5 uses
  %i.b = alloca [224 x i8], align 16              ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %i.d = alloca [112 x i8], align 16              ; 6 uses
  %i.e = alloca [112 x i8], align 16              ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [112 x i8], align 16              ; 9 uses
  %.sroa.6.i.i.i = alloca [104 x i8], align 8     ; 5 uses
  %i.h = alloca [112 x i8], align 16              ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7130)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !7130, !noalias !7133 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7135
  invoke void @_RNvXs9_NtNtCsbpG6u9KFjWn_8indexmap3set4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc unwind label %.body.thread22.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 16, !range !7143, !noalias !7135, !noundef !12
  %.not12.i.i.i = icmp eq i64 %i.j, 37
  br i1 %.not12.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.g, ptr noundef nonnull align 16 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !7135
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !7144)
  call void @llvm.experimental.noalias.scope.decl(metadata !7147)
  %i.m = load ptr, ptr %i.k, align 8, !noalias !7149, !nonnull !12, !noundef !12
  %i.n = load i64, ptr %i.l, align 8, !noalias !7149, !noundef !12
  %i.o = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_13SliceContains14slice_containsCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.m, i64 noundef %i.n)
          to label %bb.d unwind label %bb.c, !noalias !7154

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.g) #52
          to label %.body.thread unwind label %bb.e, !noalias !7154

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i: ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.g)
          to label %.noexc3 unwind label %.body.thread22.loopexit

.noexc3:                                          ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7135
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !7154
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.d
  %.sroa.06.0.copyload.i.i.i = load i64, ptr %i.g, align 16, !alias.scope !7155, !noalias !7135 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.6.0..sroa_idx.i.i.i, i64 104, i1 false), !alias.scope !7155, !noalias !7135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7135
  %.not.i.i.i.i = icmp eq i64 %.sroa.06.0.copyload.i.i.i, 37
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.noexc3
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7135
  invoke void @_RNvXs9_NtNtCsbpG6u9KFjWn_8indexmap3set4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc4 unwind label %.body.thread22.loopexit

.noexc4:                                          ; preds = %bb.f
  %i.r = load i64, ptr %i.h, align 16, !range !7143, !noalias !7135, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.r, 37
  br i1 %.not.i.i.i, label %.loopexit, label %bb.b

.body.thread22.loopexit:                          ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB24_10SimplifierNtNtB1g_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups_0E0Cs14kWLkQVSKO_14deltalake_core.exit.thread.i.i.i, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvMNtCs14kWLkQVSKO_14deltalake_core10test_utilsNtB2_10TestTables7as_path:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10695
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !10692, !noalias !10694, !nonnull !12, !noundef !12
  store ptr %i.r, ptr %i.c, align 8, !noalias !10695
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @417, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @512) #50
          to label %bb.h unwind label %bb.g, !noalias !10695

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #52
          to label %.body.i unwind label %bb.i, !noalias !10695

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10695
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.h, i64 56, i1 false), !alias.scope !10696, !noalias !10686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10686
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std7process7CommandECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(200) %i.g)
          to label %bb.l unwind label %bb.bb, !noalias !10686

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.thread31.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10686
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !10686
  call void @llvm.experimental.noalias.scope.decl(metadata !10697)
  call void @llvm.experimental.noalias.scope.decl(metadata !10700)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10702
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10700, !noalias !10703, !nonnull !12, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !10700, !noalias !10703, !noundef !12 ; 2 uses
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %i.y)
          to label %bb.n unwind label %bb.m, !noalias !10702

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #52
          to label %.thread31.i unwind label %bb.o, !noalias !10703

bb.n:                                             ; preds = %bb.l
  %i.aa = load i64, ptr %i.a, align 8, !range !49, !noalias !10702, !noundef !12
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.p, label %.thread39.i

.thread39.i:                                      ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !alias.scope !10704, !noalias !10686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10686
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10703
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ae = load <2 x i64>, ptr %i.ad, align 8, !noalias !10702
  %i.af = load i64, ptr %i.ad, align 8, !noalias !10702
  %.sroa.022.0.copyload.i = load i64, ptr %i.e, align 8, !noalias !10703 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !10686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10686
  call void @llvm.experimental.noalias.scope.decl(metadata !10705)
  call void @llvm.experimental.noalias.scope.decl(metadata !10708)
  %.not.i.i = icmp eq i64 %.sroa.022.0.copyload.i, -9223372036854775808
  br i1 %.not.i.i, label %bb.u, label %bb.q, !prof !10710

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10711
  store i64 %.sroa.022.0.copyload.i, ptr %i.b, align 8, !noalias !10713
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, i64 16, i1 false), !noalias !10713
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x i64> %i.ae, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !10713
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @411, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @419, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @513) #50
          to label %bb.s unwind label %bb.r, !noalias !10714

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string13FromUtf8ErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #52
          to label %.thread31.i unwind label %bb.t, !noalias !10714

bb.s:                                             ; preds = %bb.q
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10714
  unreachable

bb.u:                                             ; preds = %bb.p, %.thread39.i
  %.sroa.6.sroa.6.0.i = phi i64 [ %i.af, %bb.p ], [ %i.y, %.thread39.i ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, i64 16, i1 false), !alias.scope !10715, !noalias !10716
  %.sroa.6.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.6.sroa.6.0..sroa_idx.i, align 8, !alias.scope !10715, !noalias !10716
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !10686, !nonnull !12, !noundef !12 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !10717)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.6.sroa.6.0.i ; 6 uses
  %i.al = icmp samesign eq i64 %.sroa.6.sroa.6.0.i, 0
  br i1 %i.al, label %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.u, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  %i.am = phi i64 [ %i.cb, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ 0, %bb.u ] ; 4 uses
  %i.an = phi ptr [ %i.bx, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ], [ %i.aj, %bb.u ] ; 6 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  %i.aq = load i8, ptr %i.an, align 1, !alias.scope !10717, !noalias !10720, !noundef !12 ; 5 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %bb.v, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.as = and i8 %i.aq, 31
  %i.at = zext nneg i8 %i.as to i32               ; 3 uses
  %i.au = icmp ne ptr %i.ap, %i.ak
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 3 uses
  %i.aw = load i8, ptr %i.ap, align 1, !alias.scope !10717, !noalias !10720, !noundef !12
  %i.ax = shl nuw nsw i32 %i.at, 6
  %i.ay = and i8 %i.aw, 63
  %i.az = zext nneg i8 %i.ay to i32               ; 2 uses
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = icmp samesign ugt i8 %i.aq, -33
  br i1 %i.bb, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = zext nneg i8 %i.aq to i32
  br label %bb.w

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i
  %i.bd = icmp ne ptr %i.av, %i.ak
  call void @llvm.assume(i1 %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 3 ; 3 uses
  %i.bf = load i8, ptr %i.av, align 1, !alias.scope !10717, !noalias !10720, !noundef !12
  %i.bg = shl nuw nsw i32 %i.az, 6
  %i.bh = and i8 %i.bf, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi            ; 2 uses
  %i.bk = shl nuw nsw i32 %i.at, 12
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = icmp samesign ugt i8 %i.aq, -17
  br i1 %i.bm, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i, label %bb.w

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i
  %i.bn = icmp ne ptr %i.be, %i.ak
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bp = load i8, ptr %i.be, align 1, !alias.scope !10717, !noalias !10720, !noundef !12
  %i.bq = shl nuw nsw i32 %i.at, 18
  %i.br = and i32 %i.bq, 1835008
  %i.bs = shl nuw nsw i32 %i.bj, 6
  %i.bt = and i8 %i.bp, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = or disjoint i32 %i.bs, %i.bu
  %i.bw = or disjoint i32 %i.bv, %i.br
  br label %bb.w

bb.w:                                             ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i, %bb.v, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i
  %i.bx = phi ptr [ %i.be, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i ], [ %i.bo, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i ], [ %i.av, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i ], [ %i.ap, %bb.v ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.bl, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.i.i.i.i ], [ %i.bw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.i.i.i.i ], [ %i.ba, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.i.i.i.i ], [ %i.bc, %bb.v ] ; 8 uses
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.by)
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.bz, %i.ao
  %i.cb = add i64 %i.ca, %i.am                    ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.x [
    i32 32, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
    i32 13, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
    i32 12, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
    i32 11, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
    i32 10, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
    i32 9, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i
  ]

bb.x:                                             ; preds = %bb.w
  %i.cc = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 127
  br i1 %i.cc, label %bb.y, label %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.cd = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.cd, label %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i [
    i32 0, label %bb.ab
    i32 22, label %bb.z
    i32 32, label %bb.ac
    i32 48, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y
  %i.ce = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 5760
  %i.cf = zext i1 %i.ce to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cg = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 12288
  %i.ch = zext i1 %i.cg to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.y
  %i.ci = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !10734, !noundef !12
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.y
  %i.cm = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !10734, !noundef !12
  %i.cq = lshr i8 %i.cp, 1
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i

_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ch, %bb.aa ], [ %i.cl, %bb.ab ], [ %i.cf, %bb.z ], [ %i.cq, %bb.ac ]
  %i.cr = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.cr, label %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, label %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w, %bb.w
  %i.cs = icmp eq ptr %i.bx, %i.ak
  br i1 %i.cs, label %.loopexit.i, label %.lr.ph.i.i.i.i

_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i, %bb.y, %bb.x, %bb.u
  %.sroa.4.021.i.i = phi ptr [ %i.aj, %bb.u ], [ %i.bx, %bb.x ], [ %i.bx, %bb.y ], [ %i.bx, %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.14.019.i.i = phi i64 [ 0, %bb.u ], [ %i.cb, %bb.x ], [ %i.cb, %bb.y ], [ %i.cb, %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.u ], [ %i.am, %bb.x ], [ %i.am, %bb.y ], [ %i.am, %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i ] ; 3 uses
  %i.ct = icmp eq ptr %.sroa.4.021.i.i, %i.ak
  br i1 %i.ct, label %.loopexit.i, label %.lr.ph.i.i5.i.i

.lr.ph.i.i5.i.i:                                  ; preds = %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.an
  %i.cu = phi ptr [ %i.ee, %bb.an ], [ %i.ak, %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -1 ; 3 uses
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !10717, !noalias !10735, !noundef !12 ; 3 uses
  %i.cx = icmp sgt i8 %i.cw, -1
  br i1 %i.cx, label %bb.ad, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i.i.i.i.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i5.i.i
  %i.cy = icmp ne ptr %.sroa.4.021.i.i, %i.cv
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 -2 ; 3 uses
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !10717, !noalias !10735, !noundef !12 ; 3 uses
  %i.db = and i8 %i.da, 31
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = icmp slt i8 %i.da, -64
  br i1 %i.dd, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i.i.i.i.i, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i5.i.i
  %i.de = zext nneg i8 %i.cw to i32
  br label %bb.ag

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i.i.i.i.i
  %i.df = icmp ne ptr %.sroa.4.021.i.i, %i.cz
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds i8, ptr %i.cu, i64 -3 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !10717, !noalias !10735, !noundef !12 ; 3 uses
  %i.di = and i8 %i.dh, 15
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = icmp slt i8 %i.dh, -64
  br i1 %i.dk, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i.i.i.i.i, label %bb.af

bb.ae:                                            ; preds = %bb.af, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i.i.i.i.i
  %i.dl = phi ptr [ %i.dz, %bb.af ], [ %i.cz, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i.i = phi i32 [ %i.ed, %bb.af ], [ %i.dc, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit17.i.i.i.i.i.i.i ]
  %i.dm = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i.i, 6
  %i.dn = and i8 %i.cw, 63
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dm, %i.do
  br label %bb.ag

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i.i.i.i.i
  %i.dq = icmp ne ptr %.sroa.4.021.i.i, %i.dg
  call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !alias.scope !10717, !noalias !10735, !noundef !12
  %i.dt = and i8 %i.ds, 7
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 6
  %i.dw = and i8 %i.dh, 63
  %i.dx = zext nneg i8 %i.dw to i32
  %i.dy = or disjoint i32 %i.dv, %i.dx
  br label %bb.af

bb.af:                                            ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i.i.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i.i.i.i.i
  %i.dz = phi ptr [ %i.dr, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i.i.i.i.i ], [ %i.dg, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i.i = phi i32 [ %i.dy, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit21.i.i.i.i.i.i.i ], [ %i.dj, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs14kWLkQVSKO_14deltalake_core.exit19.i.i.i.i.i.i.i ]
  %i.ea = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i.i, 6
  %i.eb = and i8 %i.da, 63
  %i.ec = zext nneg i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.ea, %i.ec
  br label %bb.ae

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.ee = phi ptr [ %i.cv, %bb.ad ], [ %i.dl, %bb.ae ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i.i.i = phi i32 [ %i.de, %bb.ad ], [ %i.dp, %bb.ae ] ; 8 uses
  %i.ef = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ef)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, label %bb.ah [
    i32 32, label %bb.an
    i32 13, label %bb.an
    i32 12, label %bb.an
    i32 11, label %bb.an
    i32 10, label %bb.an
    i32 9, label %bb.an
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.eg = icmp samesign ugt i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 127
  br i1 %i.eg, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.eh = lshr i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 8
  switch i32 %i.eh, label %bb.ao [
    i32 0, label %bb.al
    i32 22, label %bb.aj
    i32 32, label %bb.am
    i32 48, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ei = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 5760
  %i.ej = zext i1 %i.ei to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i7.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.ek = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 12288
  %i.el = zext i1 %i.ek to i8
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i7.i.i

bb.al:                                            ; preds = %bb.ai
  %i.em = and i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 255
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !10749, !noundef !12
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i7.i.i

bb.am:                                            ; preds = %bb.ai
  %i.eq = and i32 %.sroa.4.1.i.ph.i.i.i.i.i.i, 255
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCsbvkFyIu7lgC_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !noalias !10749, !noundef !12
  %i.eu = lshr i8 %i.et, 1
  br label %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i7.i.i

_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i7.i.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.sroa.0.0.i.i.i.i.i.i.i8.i.i = phi i8 [ %i.el, %bb.ak ], [ %i.ep, %bb.al ], [ %i.ej, %bb.aj ], [ %i.eu, %bb.am ]
  %i.ev = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i8.i.i to i1
  br i1 %i.ev, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i7.i.i, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag
  %i.ew = icmp eq ptr %.sroa.4.021.i.i, %i.ee
  br i1 %i.ew, label %.loopexit.i, label %.lr.ph.i.i5.i.i

bb.ao:                                            ; preds = %_RNvXs3_NtNtCsbvkFyIu7lgC_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs14kWLkQVSKO_14deltalake_core.exit.i.i.i7.i.i, %bb.ai, %bb.ah
  %i.ex = ptrtoint ptr %i.cu to i64
  %i.ey = ptrtoint ptr %.sroa.4.021.i.i to i64
  %i.ez = sub i64 %.sroa.14.019.i.i, %i.ey
  %i.fa = add i64 %i.ez, %i.ex
  br label %.loopexit.i

bb.ap:                                            ; preds = %bb.ar, %.loopexit.i
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #52
          to label %.thread31.i unwind label %bb.ba, !noalias !10686

.loopexit.i:                                      ; preds = %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i, %bb.an, %bb.ao, %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.0.046.i.i = phi i64 [ %.sroa.0.0.i.i, %bb.ao ], [ %.sroa.0.0.i.i, %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.0.0.i.i, %bb.an ], [ 0, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ] ; 3 uses
  %.sroa.02.1.i.i = phi i64 [ %i.fa, %bb.ao ], [ %.sroa.14.019.i.i, %_RNvXso_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.sroa.14.019.i.i, %bb.an ], [ 0, %_RNvXs8_NtNtCsbvkFyIu7lgC_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i ] ; 2 uses
  %i.fc = sub nuw i64 %.sroa.02.1.i.i, %.sroa.0.046.i.i ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.0.046.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10686
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.fc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aq unwind label %bb.ap, !noalias !10686

bb.aq:                                            ; preds = %.loopexit.i
  %i.fe = load i64, ptr %i.d, align 8, !range !49, !noalias !10686, !noundef !12
  %i.ff = trunc nuw i64 %i.fe to i1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !range !50, !noalias !10686, !noundef !12 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ff, label %bb.ar, label %bb.as, !prof !51

bb.ar:                                            ; preds = %bb.aq
  %i.fj = load i64, ptr %i.fi, align 8, !noalias !10686
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.fh, i64 %i.fj) #50
          to label %bb.az unwind label %bb.ap, !noalias !10686

bb.as:                                            ; preds = %bb.aq
  %i.fk = load ptr, ptr %i.fi, align 8, !noalias !10686, !nonnull !12, !noundef !12 ; 3 uses
  %i.fl = icmp ule i64 %i.fc, %i.fh
  call void @llvm.assume(i1 %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10686
  %.not.i = icmp eq i64 %.sroa.02.1.i.i, %.sroa.0.046.i.i
  br i1 %.not.i, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.aw, %bb.as
  store i64 %i.fh, ptr %i.j, align 8, !alias.scope !10686
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.fk, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !10686
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.fc, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !10686
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.au, !noalias !10686

bb.au:                                            ; preds = %bb.at
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.thread31.i unwind label %bb.av, !noalias !10686

bb.av:                                            ; preds = %bb.au
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10686
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.k, !noalias !10686

bb.aw:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull align 1 %i.fd, i64 %i.fc, i1 false), !noalias !10686
  br label %bb.at

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10686
  %i.fo = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %_RNvNtCs14kWLkQVSKO_14deltalake_core10test_utils13find_git_root.exit unwind label %bb.ax, !noalias !10686

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fo)
          to label %common.resume unwind label %bb.ay, !noalias !10686

bb.ay:                                            ; preds = %bb.ax
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10686
  unreachable

common.resume:                                    ; preds = %bb.bc, %.body, %bb.bs, %.body.i, %bb.ax, %.thread31.i
  %common.resume.op = phi { ptr, i32 } [ %i.gi, %bb.bs ], [ %eh.lpad-body.i, %.body.i ], [ %i.fp, %bb.ax ], [ %.pn27.i, %.thread31.i ], [ %eh.lpad-body, %.body ], [ %i.fu, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

bb.az:                                            ; preds = %bb.ar
  unreachable

bb.ba:                                            ; preds = %bb.bb, %.thread31.i, %bb.ap, %.body.i
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53, !noalias !10686
  unreachable

.thread31.i:                                      ; preds = %bb.bb, %bb.au, %bb.ap, %bb.r, %bb.m, %bb.k
  %.pn27.i = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.ft, %bb.bb ], [ %i.u, %bb.k ], [ %i.z, %bb.m ], [ %i.fb, %bb.ap ], [ %i.fm, %bb.au ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fs) #52
          to label %common.resume unwind label %bb.ba, !noalias !10686

bb.bb:                                            ; preds = %bb.j
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #52
          to label %.thread31.i unwind label %bb.ba, !noalias !10686

_RNvNtCs14kWLkQVSKO_14deltalake_core10test_utils13find_git_root.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fo), !noalias !10686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10686
  invoke void @_RINvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB7_4Path4joinReECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fk, i64 noundef %i.fc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @401, i64 noundef 22)
          to label %bb.bd unwind label %bb.bc

bb.bc:                                            ; preds = %_RNvNtCs14kWLkQVSKO_14deltalake_core10test_utils13find_git_root.exit
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #52
          to label %common.resume unwind label %bb.bv

bb.bd:                                            ; preds = %_RNvNtCs14kWLkQVSKO_14deltalake_core10test_utils13find_git_root.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.bd
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.bg

bb.bg:                                            ; preds = %.invoke, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.bq
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.be, %bb.bg
  %eh.lpad-body = phi { ptr, i32 } [ %i.fx, %bb.bg ], [ %i.fv, %bb.be ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #52
          to label %common.resume unwind label %bb.bv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fy = load i64, ptr %1, align 8, !range !10685, !noundef !12 ; 2 uses
  %i.fz = xor i64 %i.fy, -9223372036854775808
  %i.ga = icmp slt i64 %i.fy, 0
  %i.gb = select i1 %i.ga, i64 %i.fz, i64 9
  switch i64 %i.gb, label %bb.bh [
end_hunk_1
begin_hunk_2_@_RNvXs6_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp
declare noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_8DropViewNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXs7_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_17DropCatalogSchemaNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_14CreateFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288), ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(288)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 3) i8 @_RNvXsb_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DropFunctionNtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementENtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast12JsonPathElemNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 28120036697727976), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 28120036697727976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 104811045873349726), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 104811045873349726)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef range(i64 0, 82351536043346213), ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance), i64 noundef range(i64 0, 82351536043346213)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15InterpolateExprNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23529010298098918), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23529010298098918)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query18XmlPassingArgumentNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23058430092136940), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 23058430092136940)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 3) i8 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core5slice3cmphNtB5_15SlicePartialOrd15partial_compareCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies10ConstraintINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtCseo6ZV82fEK1_3url3UrlINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtNtBa_5slice4iter4IterB14_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence5class16EquivalenceClassENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr16PhysicalSortExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EuENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtB6_5Debug3fmtBE_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBG_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapRNtNtCs6Po7BT7Nknu_5alloc6string6StringBO_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter15SplitTerminatorReENCNvMNtCsjyY8HP3IvQ6_12object_store4pathNtB1F_4Path12prefix_match0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBN_B2F_5count0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(128), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB6_9into_iter8IntoIterRB13_EEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCs5wg436RVUAP_24datafusion_physical_plan5emptyNtB5_9EmptyExecNtNtB7_14execution_plan13ExecutionPlan17with_new_children(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan24check_default_invariantsNtNtB4_5empty9EmptyExecECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(368), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr20OrderingRequirementsENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownNtB5_17FilterDescription15all_unsupported(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB5_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB7_14execution_plan13ExecutionPlanEL_EE6if_allCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecbEINtNtB6_14spec_from_iter12SpecFromIterbINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENCNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB4c_14execution_plan13ExecutionPlan32benefits_from_input_partitioning0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7inspect7InspectINtNtB2x_10filter_map9FilterMapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB6_6string6StringB1d_ENCNvYNtB1f_15GetSchemaLeavesNtB1f_15SchemaTransform19recurse_into_struct0ENCB55_s_0EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs3LITIwzqf1g_4uuid2v4NtB4_4Uuid6new_v4(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 1 captures(none) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan24check_default_invariantsNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecEB1u_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecbEINtNtB6_14spec_from_iter12SpecFromIterbINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtCshCk07IZuEAL_24datafusion_physical_expr12partitioning12DistributionENCNvYNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan32benefits_from_input_partitioning0EE9from_iterB4e_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source27TableProviderFilterPushDownNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef range(i8 0, 3), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtCs8ulvy0Wg6Ot_12delta_kernel5utilsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB7_6schema8DataTypeEBG_EINtB5_6CowExtBF_E17map_owned_or_elseNtB1i_7MapTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB1i_15SchemaTransform16recurse_into_map0EB2J_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema8DataTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_9ArrayTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB1f_15SchemaTransform18recurse_into_array0EB2F_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7inspect7InspectINtNtB2x_10filter_map9FilterMapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB6_6string6StringB1d_ENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB1f_15SchemaTransform19recurse_into_struct0ENCB55_s_0EE9from_iterB5g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema13PrimitiveTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNvYB2i_INtNtCsbvkFyIu7lgC_4core7convert4FromB1d_E4fromECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema9ArrayTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNvYB2d_INtNtCsbvkFyIu7lgC_4core7convert4FromB1d_E4fromECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema10StructTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNvYB2f_INtNtCsbvkFyIu7lgC_4core7convert4FromB1d_E4fromECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema7MapTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNvYB2b_INtNtCsbvkFyIu7lgC_4core7convert4FromB1d_E4fromECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema10StructTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext18BaseStatsTransformNtB1f_15SchemaTransform9transform0EB2H_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7inspect7InspectINtNtB2x_10filter_map9FilterMapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB6_6string6StringB1d_ENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext20MinMaxStatsTransformNtB1f_15SchemaTransform19recurse_into_struct0ENCB55_s_0EE9from_iterB5g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema8DataTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_11StructFieldNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext20MinMaxStatsTransformNtB1f_15SchemaTransform25recurse_into_struct_field0EB2I_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtCs8ulvy0Wg6Ot_12delta_kernel5utilsTINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB7_6schema8DataTypeEBG_EINtB5_6CowExtBF_E17map_owned_or_elseNtB1i_7MapTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtB1i_15SchemaTransform16recurse_into_map0EB2J_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema8DataTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_9ArrayTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtB1f_15SchemaTransform18recurse_into_array0EB2F_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecINtNtB6_6borrow3CowNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7inspect7InspectINtNtB2x_10filter_map9FilterMapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtB6_6string6StringB1d_ENCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtB1f_15SchemaTransform19recurse_into_struct0ENCB55_s_0EE9from_iterB5g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtCs8ulvy0Wg6Ot_12delta_kernel5utilsINtNtCs6Po7BT7Nknu_5alloc6borrow3CowNtNtB5_6schema10StructTypeEINtB3_6CowExtB1d_E17map_owned_or_elseNtB1f_8DataTypeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5arrow10engine_ext23NullCountStatsTransformNtB1f_15SchemaTransform9transform0EB2H_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #48

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #49

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #45

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #44

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #44

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #44

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #34 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #36 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #40 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #42 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #43 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #44 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #45 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #46 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #47 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #48 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #49 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #50 = { noreturn }
attributes #51 = { nounwind }
attributes #52 = { cold }
attributes #53 = { cold noreturn nounwind }
attributes #54 = { noinline }
attributes #55 = { inlinehint }
attributes #56 = { noinline noreturn }
attributes #57 = { "function-inline-cost-multiplier"="2" }
attributes #58 = { inlinehint "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{!4, !6, !8, !9, !11}
!4 = distinct !{!4, !5, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!5 = distinct !{!5, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core"}
!6 = distinct !{!6, !7, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next: argument 0"}
!7 = distinct !{!7, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next"}
!8 = distinct !{!8, !7, !"_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next: argument 1"}
!9 = distinct !{!9, !10, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core: argument 0"}
!10 = distinct !{!10, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core"}
!11 = distinct !{!11, !10, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCs14kWLkQVSKO_14deltalake_core: argument 1"}
!12 = !{}
!13 = !{!14, !16, !18, !19, !21}
!14 = distinct !{!14, !15, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!15 = distinct !{!15, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core"}
!16 = distinct !{!16, !17, !"_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back: argument 0"}
!17 = distinct !{!17, !"_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back"}
!18 = distinct !{!18, !17, !"_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back: argument 1"}
!19 = distinct !{!19, !20, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core: argument 0"}
!20 = distinct !{!20, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core"}
!21 = distinct !{!21, !20, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core: argument 1"}
!22 = !{!23, !25, !27, !28, !30}
!23 = distinct !{!23, !24, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!24 = distinct !{!24, !"_RINvNtNtCsbvkFyIu7lgC_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs14kWLkQVSKO_14deltalake_core"}
!25 = distinct !{!25, !26, !"_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back: argument 0"}
!26 = distinct !{!26, !"_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back"}
!27 = distinct !{!27, !26, !"_RNvXs0_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back: argument 1"}
!28 = distinct !{!28, !29, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core: argument 0"}
!29 = distinct !{!29, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core"}
!30 = distinct !{!30, !29, !"_RNvYNtNtNtCsbvkFyIu7lgC_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCs14kWLkQVSKO_14deltalake_core: argument 1"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of: argument 0"}
!33 = distinct !{!33, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str7patterncNtB5_7Pattern12is_suffix_of"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw: argument 0"}
!36 = distinct !{!36, !"_RNvNtNtCsbvkFyIu7lgC_4core4char7methods15encode_utf8_raw"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39 = distinct !{!39, !"_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvXs2_NtCs6Po7BT7Nknu_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 0"}
!42 = distinct !{!42, !"_RNvXs2_NtCs6Po7BT7Nknu_5alloc3streNtNtB7_6borrow7ToOwned8to_owned"}
!43 = !{!44, !46, !41, !47, !38, !48}
!44 = distinct !{!44, !45, !"_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 0"}
!45 = distinct !{!45, !"_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core"}
!46 = distinct !{!46, !45, !"_RINvXs_NvMNtCs6Po7BT7Nknu_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core: argument 1"}
!47 = distinct !{!47, !42, !"_RNvXs2_NtCs6Po7BT7Nknu_5alloc3streNtNtB7_6borrow7ToOwned8to_owned: argument 1"}
!48 = distinct !{!48, !39, !"_RNvYNvYeNtNtCs6Po7BT7Nknu_5alloc6borrow7ToOwned8to_ownedINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTReEE9call_onceCs14kWLkQVSKO_14deltalake_core: argument 1"}
!49 = !{i64 0, i64 2}
!50 = !{i64 0, i64 -9223372036854775807}
!51 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!52 = !{!44, !41, !38}
!53 = !{!41, !38}
!54 = !{!47, !48}
!55 = !{i64 0, i64 -9223372036854775710}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs8CRAYtH5WmW_12futures_util6stream4once4OnceINtNtNtBL_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE3newB3z_: argument 0"}
!58 = distinct !{!58, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs8CRAYtH5WmW_12futures_util6stream4once4OnceINtNtNtBL_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE3newB3z_"}
!59 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEBO_: argument 0"}
!62 = distinct !{!62, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEBO_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!65 = distinct !{!65, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!68 = distinct !{!68, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!69 = !{!67, !64, !61}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs8CRAYtH5WmW_12futures_util6stream4once4OnceINtNtNtBL_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE3newB3z_: argument 0"}
!72 = distinct !{!72, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtCs8CRAYtH5WmW_12futures_util6stream4once4OnceINtNtNtBL_6future5ready5ReadyINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEE3newB3z_"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16ScanRowOutStreamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3c_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBP_6errors15DeltaTableErrorENtNtB3c_6marker4SendEL_EENCINvMBL_NtBL_8Snapshot10files_fromINtNtNtB4_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE0EEE3newBP_: argument 0"}
!75 = distinct !{!75, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16ScanRowOutStreamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinIBv_DNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB3c_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtBP_6errors15DeltaTableErrorENtNtB3c_6marker4SendEL_EENCINvMBL_NtBL_8Snapshot10files_fromINtNtNtB4_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEE0EEE3newBP_"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEBO_: argument 0"}
!78 = distinct !{!78, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scan4ScanEBO_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!81 = distinct !{!81, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanEECs14kWLkQVSKO_14deltalake_core"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!84 = distinct !{!84, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan4ScanENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!85 = !{!83, !80, !77}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!88 = distinct !{!88, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core"}
!89 = !{!90, !92, !87}
!90 = distinct !{!90, !91, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!91 = distinct !{!91, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!92 = distinct !{!92, !93, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!93 = distinct !{!93, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!96 = distinct !{!96, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEECs14kWLkQVSKO_14deltalake_core"}
!97 = !{!98, !100, !95}
!98 = distinct !{!98, !99, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!99 = distinct !{!99, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!100 = distinct !{!100, !101, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!101 = distinct !{!101, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEECs14kWLkQVSKO_14deltalake_core"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIB1F_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE10initializeNCINvB18_11get_or_initNCNvB3f_18logstore_factories0E0zE0EB3j_: argument 0"}
!104 = distinct !{!104, !"_RINvMs0_NtNtCs2pqxYH9ZEk8_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCs3JXekYNd0JR_7dashmap7DashMapNtCseo6ZV82fEK1_3url3UrlIB1F_DNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEEE10initializeNCINvB18_11get_or_initNCNvB3f_18logstore_factories0E0zE0EB3j_"}
!105 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!106 = !{!107}
end_hunk_2
