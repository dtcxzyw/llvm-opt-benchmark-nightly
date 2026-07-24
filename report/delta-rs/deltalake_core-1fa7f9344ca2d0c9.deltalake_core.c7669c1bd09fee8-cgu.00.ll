inline.NumInlined: 17049
inline.NumDeleted: 6599
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val3.i.i.i = phi i64 [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %n.vec, %middle.block ], [ %i.z, %.lr.ph.i.i.i ]
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 7                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.f = load i64, ptr %i.a, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = icmp eq ptr %1, %2
  br i1 %i.n, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.o = sub i64 %i.b, %i.c
  %i.p = add i64 %i.o, -128                       ; 2 uses
  %i.q = lshr i64 %i.p, 7
  %i.r = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 384
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.r, 288230376151711740       ; 5 uses
  %i.s = shl i64 %n.vec, 7
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %pointer.phi = phi ptr [ %1, %vector.ph ], [ %ptr.ind, %vector.body ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <2 x i64> <i64 0, i64 128> ; 2 uses
  %step.add8 = getelementptr i8, <2 x ptr> %vector.gep, i64 256
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x ptr> %vector.gep, ptr %i.u, align 8, !noalias !39243
  store <2 x ptr> %step.add8, ptr %i.v, align 8, !noalias !39243
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !39249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.preheader9

.lr.ph.i.i.i.preheader9:                          ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.0.06.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.t, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader9, %.lr.ph.i.i.i
  %i.x = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader9 ] ; 2 uses
  %.sroa.0.06.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %.sroa.0.06.i.i.i.ph, %.lr.ph.i.i.i.preheader9 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.x
  store ptr %.sroa.0.06.i.i.i, ptr %i.y, align 8, !noalias !39243
  %i.z = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 128 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %2
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !39250

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %middle.block, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val3.i.i.i = phi i64 [ 0, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %n.vec, %middle.block ], [ %i.z, %.lr.ph.i.i.i ]
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val3.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecbEINtB4_18SpecFromIterNestedbINtNtB6_5drain5DrainbEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !79, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.l = load i64, ptr %i.c, align 8, !range !79, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !107, !noundef !8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f, !prof !84

bb.d:                                             ; preds = %.noexc
  %i.q = load i64, ptr %i.p, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #27
          to label %.noexc3 unwind label %bb.r

.noexc3:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #27
          to label %bb.q unwind label %bb.r

bb.f:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.o, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !39251)
  call void @llvm.experimental.noalias.scope.decl(metadata !39254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39257
  invoke void @_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.g unwind label %bb.l, !noalias !39260

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !79, !noalias !39257, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !39257 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39257
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.h, label %bb.j, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.y, %i.o
  br i1 %i.aa, label %bb.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.y, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i unwind label %bb.l

._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i: ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.u, align 8, !alias.scope !39260, !noalias !39261
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !39260, !noalias !39261
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %bb.k unwind label %bb.l, !noalias !39260

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i, %bb.h
  %i.ab = phi ptr [ %.pre, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i ], [ %i.r, %bb.h ] ; 8 uses
  %i.ac = phi i64 [ %.pre.i.i, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i ], [ 0, %bb.h ] ; 8 uses
  %i.ad = ptrtoaddr ptr %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !39260
  call void @llvm.experimental.noalias.scope.decl(metadata !39262)
  call void @llvm.experimental.noalias.scope.decl(metadata !39265)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.a, align 8, !alias.scope !39268, !noalias !39271, !nonnull !8, !noundef !8 ; 9 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = load ptr, ptr %i.ae, align 8, !alias.scope !39268, !noalias !39271, !nonnull !8, !noundef !8 ; 3 uses
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %2 = ptrtoint ptr %i.ah to i64                  ; 3 uses
  %3 = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %2, %3                          ; 7 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ak = add i64 %i.ac, %i.ad
  %i.al = sub i64 %i.ag, %i.ak
  %diff.check = icmp ugt i64 %i.al, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aj, 24
  %n.vec = and i64 %i.aj, -32                     ; 5 uses
  %i.am = add i64 %i.ac, %n.vec                   ; 2 uses
  %i.an = getelementptr i8, ptr %i.af, i64 %n.vec ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ab, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39274)
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !39276
  %wide.load19 = load <16 x i8>, ptr %i.ap, align 1, !noalias !39276
  %i.aq = getelementptr i8, ptr %i.ao, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store <16 x i8> %wide.load, ptr %i.aq, align 1, !noalias !39277
  store <16 x i8> %wide.load19, ptr %i.ar, align 1, !noalias !39277
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !39282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !39283

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.aj, -8                    ; 4 uses
  %i.at = add i64 %i.ac, %n.vec22                 ; 2 uses
  %i.au = getelementptr i8, ptr %i.af, i64 %n.vec22 ; 2 uses
  %i.av = getelementptr i8, ptr %i.ab, i64 %i.ac
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %i.af, i64 %index23
  call void @llvm.experimental.noalias.scope.decl(metadata !39274)
  %wide.load25 = load <8 x i8>, ptr %next.gep24, align 1, !noalias !39276
  %i.aw = getelementptr i8, ptr %i.av, i64 %index23
  store <8 x i8> %wide.load25, ptr %i.aw, align 1, !noalias !39277
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.ax = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.aj, %n.vec22
  br i1 %cmp.n27, label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %i.am, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ] ; 2 uses
  %.ph30 = phi ptr [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.an, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 3 uses
  %.ph3033 = ptrtoint ptr %.ph30 to i64           ; 2 uses
  %i.ay = sub i64 %2, %.ph3033
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.az = phi i64 [ %i.be, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.ba = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.prol ], [ %.ph30, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !39274)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.ba, align 1, !range !5531, !noalias !39276, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.az
  store i8 %i.bc, ptr %i.bd, align 1, !noalias !39277
  %i.be = add i64 %i.az, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !39285

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa32.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.prol ]
  %.lcssa31.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.prol ]
  %.unr34 = phi ptr [ %.ph30, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.prol ]
  %i.bf = sub i64 %.ph3033, %2
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bh = phi i64 [ %i.by, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bi = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.unr34, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39274)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bi, align 1, !range !5531, !noalias !39276, !noundef !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bh
  store i8 %i.bk, ptr %i.bl, align 1, !noalias !39277
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bn = load i8, ptr %i.bj, align 1, !range !5531, !noalias !39286, !noundef !8
  %i.bo = getelementptr i8, ptr %i.ab, i64 %i.bh
  %i.bp = getelementptr i8, ptr %i.bo, i64 1
  store i8 %i.bn, ptr %i.bp, align 1, !noalias !39277
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.br = load i8, ptr %i.bm, align 1, !range !5531, !noalias !39288, !noundef !8
  %i.bs = getelementptr i8, ptr %i.ab, i64 %i.bh
  %i.bt = getelementptr i8, ptr %i.bs, i64 2
  store i8 %i.br, ptr %i.bt, align 1, !noalias !39277
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 3 uses
  %i.bv = load i8, ptr %i.bq, align 1, !range !5531, !noalias !39290, !noundef !8
  %i.bw = getelementptr i8, ptr %i.ab, i64 %i.bh
  %i.bx = getelementptr i8, ptr %i.bw, i64 3
  store i8 %i.bv, ptr %i.bx, align 1, !noalias !39277
  %i.by = add i64 %i.bh, 4                        ; 2 uses
  %i.bz = icmp eq ptr %i.bu, %i.ah
  br i1 %i.bz, label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !39292

_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa17 = phi ptr [ %i.au, %vec.epilog.middle.block ], [ %i.an, %middle.block ], [ %.lcssa32.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i.i ]
  %.lcssa = phi i64 [ %i.at, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %.lcssa31.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.by, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa17, ptr %i.a, align 8, !alias.scope !39293, !noalias !39271
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val7.i.i.i.i = phi i64 [ %i.ac, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.lcssa, %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i ]
  store i64 %.val7.i.i.i.i, ptr %i.u, align 8, !alias.scope !39260, !noalias !39294
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %lpad.thr_comm.i.i, %bb.l ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p

bb.o:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %bb.r, %.body
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %bb.e
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cd, %bb.r ]
  resume { ptr, i32 } %.pn9

bb.r:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.a
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecdEINtB4_18SpecFromIterNesteddINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EE9from_iterB2X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !alias.scope !38839, !noalias !38842, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load i64, ptr %i.e, align 8, !alias.scope !38842, !noalias !38839, !noundef !8
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3, i64 %.val) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.f = load i64, ptr %i.b, align 8, !range !79, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !107, !noundef !8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_.exit.i, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #27
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = icmp ule i64 %spec.select.i.i, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.i, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39295
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !39295
  store ptr %i.o, ptr %i.a, align 8, !noalias !39295
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !39295
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB49_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecdEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39295
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecdEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EE9from_iterB2X_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !alias.scope !38839, !noalias !38842, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load i64, ptr %i.e, align 8, !alias.scope !38842, !noalias !38839, !noundef !8
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val3, i64 %.val) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
end_hunk_0
