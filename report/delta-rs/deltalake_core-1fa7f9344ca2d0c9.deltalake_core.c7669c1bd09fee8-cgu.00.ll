inline.NumInlined: 17049
inline.NumDeleted: 6599
begin_hunk_0_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalEINtB4_18SpecFromIterNestedB13_INtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterB14_EE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.o = add i64 %i.b, -128
  %i.p = sub i64 %i.o, %i.c                       ; 2 uses
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
  store <2 x ptr> %vector.gep, ptr %i.u, align 8, !noalias !39236
  store <2 x ptr> %step.add8, ptr %i.v, align 8, !noalias !39236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 512
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !39242

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
  store ptr %.sroa.0.06.i.i.i, ptr %i.y, align 8, !noalias !39236
  %i.z = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i, i64 128 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %2
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !39243

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
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecbEINtB4_18SpecFromIterNestedbINtNtB6_5drain5DrainbEE9from_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.experimental.noalias.scope.decl(metadata !39244)
  call void @llvm.experimental.noalias.scope.decl(metadata !39247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39250
  invoke void @_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.g unwind label %bb.l, !noalias !39253

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !79, !noalias !39250, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !39250 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39250
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.h, label %bb.j, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.y, %i.o
  br i1 %i.aa, label %bb.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !84

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.y, i64 noundef 1, i64 noundef 1)
          to label %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i unwind label %bb.l

._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i: ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.u, align 8, !alias.scope !39253, !noalias !39254
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !39253, !noalias !39254
  br label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %bb.k unwind label %bb.l, !noalias !39253

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i, %bb.h
  %i.ab = phi ptr [ %.pre, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i ], [ %i.r, %bb.h ] ; 8 uses
  %i.ac = phi i64 [ %.pre.i.i, %._RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit_crit_edge.i.i ], [ 0, %bb.h ] ; 8 uses
  %i.ad = ptrtoaddr ptr %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !39253
  call void @llvm.experimental.noalias.scope.decl(metadata !39255)
  call void @llvm.experimental.noalias.scope.decl(metadata !39258)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.a, align 8, !alias.scope !39261, !noalias !39264, !nonnull !8, !noundef !8 ; 9 uses
  %i.ag = ptrtoaddr ptr %i.af to i64
  %i.ah = load ptr, ptr %i.ae, align 8, !alias.scope !39261, !noalias !39264, !nonnull !8, !noundef !8 ; 3 uses
  %i.ai = icmp eq ptr %i.af, %i.ah
  br i1 %i.ai, label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.aj = ptrtoint ptr %i.ah to i64               ; 3 uses
  %i.ak = ptrtoint ptr %i.af to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.am = add i64 %i.ac, %i.ad
  %i.an = sub i64 %i.am, %i.ag
  %diff.check = icmp ult i64 %i.an, 32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check18 = icmp ult i64 %i.al, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 24
  %n.vec = and i64 %i.al, -32                     ; 5 uses
  %i.ao = add i64 %i.ac, %n.vec                   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.af, i64 %n.vec ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ab, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39267)
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !39269
  %wide.load19 = load <16 x i8>, ptr %i.ar, align 1, !noalias !39269
  %i.as = getelementptr i8, ptr %i.aq, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load, ptr %i.as, align 1, !noalias !39270
  store <16 x i8> %wide.load19, ptr %i.at, align 1, !noalias !39270
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !39275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !39276

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.al, -8                    ; 4 uses
  %i.av = add i64 %i.ac, %n.vec22                 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.af, i64 %n.vec22 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ab, i64 %i.ac
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 3 uses
  %next.gep24 = getelementptr i8, ptr %i.af, i64 %index23
  call void @llvm.experimental.noalias.scope.decl(metadata !39267)
  %wide.load25 = load <8 x i8>, ptr %next.gep24, align 1, !noalias !39269
  %i.ay = getelementptr i8, ptr %i.ax, i64 %index23
  store <8 x i8> %wide.load25, ptr %i.ay, align 1, !noalias !39270
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.az = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39277

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.al, %n.vec22
  br i1 %cmp.n27, label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %i.ao, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 2 uses
  %.ph30 = phi ptr [ %i.af, %iter.check ], [ %i.af, %vector.memcheck ], [ %i.ap, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ] ; 3 uses
  %.ph3033 = ptrtoint ptr %.ph30 to i64           ; 2 uses
  %i.ba = sub i64 %i.aj, %.ph3033
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.bb = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.bc = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.prol ], [ %.ph30, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !39267)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1 ; 3 uses
  %i.be = load i8, ptr %i.bc, align 1, !range !5519, !noalias !39269, !noundef !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bb
  store i8 %i.be, ptr %i.bf, align 1, !noalias !39270
  %i.bg = add i64 %i.bb, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !39278

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa32.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.prol ]
  %.lcssa31.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %.unr34 = phi ptr [ %.ph30, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.prol ]
  %i.bh = sub i64 %.ph3033, %i.aj
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bj = phi i64 [ %i.ca, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bk = phi ptr [ %i.bw, %.lr.ph.i.i.i.i ], [ %.unr34, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39267)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bk, align 1, !range !5519, !noalias !39269, !noundef !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bj
  store i8 %i.bm, ptr %i.bn, align 1, !noalias !39270
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bp = load i8, ptr %i.bl, align 1, !range !5519, !noalias !39279, !noundef !8
  %i.bq = getelementptr i8, ptr %i.ab, i64 %i.bj
  %i.br = getelementptr i8, ptr %i.bq, i64 1
  store i8 %i.bp, ptr %i.br, align 1, !noalias !39270
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = load i8, ptr %i.bo, align 1, !range !5519, !noalias !39281, !noundef !8
  %i.bu = getelementptr i8, ptr %i.ab, i64 %i.bj
  %i.bv = getelementptr i8, ptr %i.bu, i64 2
  store i8 %i.bt, ptr %i.bv, align 1, !noalias !39270
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bx = load i8, ptr %i.bs, align 1, !range !5519, !noalias !39283, !noundef !8
  %i.by = getelementptr i8, ptr %i.ab, i64 %i.bj
  %i.bz = getelementptr i8, ptr %i.by, i64 3
  store i8 %i.bx, ptr %i.bz, align 1, !noalias !39270
  %i.ca = add i64 %i.bj, 4                        ; 2 uses
  %i.cb = icmp eq ptr %i.bw, %i.ah
  br i1 %i.cb, label %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !39285

_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa17 = phi ptr [ %i.aw, %vec.epilog.middle.block ], [ %i.ap, %middle.block ], [ %.lcssa32.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.bw, %.lr.ph.i.i.i.i ]
  %.lcssa = phi i64 [ %i.av, %vec.epilog.middle.block ], [ %i.ao, %middle.block ], [ %.lcssa31.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ca, %.lr.ph.i.i.i.i ]
  store ptr %.lcssa17, ptr %i.a, align 8, !alias.scope !39286, !noalias !39264
  br label %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val7.i.i.i.i = phi i64 [ %i.ac, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecbE7reserveCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.lcssa, %_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core.exit.loopexit.i.i.i ]
  store i64 %.val7.i.i.i.i, ptr %i.u, align 8, !alias.scope !39253, !noalias !39287
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.cd, %bb.n ], [ %lpad.thr_comm.i.i, %bb.l ]
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p

bb.o:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %bb.r, %.body
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.q:                                             ; preds = %bb.e
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.r, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cf, %bb.r ]
  resume { ptr, i32 } %.pn9

bb.r:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecdEINtB4_18SpecFromIterNesteddINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EE9from_iterB2X_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i64, ptr %i.d, align 8, !alias.scope !38832, !noalias !38835, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load i64, ptr %i.e, align 8, !alias.scope !38835, !noalias !38832, !noundef !8
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39288
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.l, ptr %i.p, align 8, !noalias !39288
  store ptr %i.o, ptr %i.a, align 8, !noalias !39288
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.q, align 8, !noalias !39288
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2W_8for_each4calldNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB49_3VecdE14extend_trustedBN_E0E0EB1z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecdEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39288
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
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecfEINtB4_18SpecFromIterNestedfINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EE9from_iterB2X_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!39076 = distinct !{!39076, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39077 = distinct !{!39077, !39078, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39078 = distinct !{!39078, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core"}
!39079 = !{!39050, !39051, !39036, !39039, !39030, !39033, !39023, !39025, !39026, !39028, !39008, !39011, !39003, !39006}
!39080 = !{!39081, !39083, !39085, !39087, !39047, !39044}
!39081 = distinct !{!39081, !39082, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_ENtNtNtBb_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39082 = distinct !{!39082, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_ENtNtNtBb_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39083 = distinct !{!39083, !39084, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39084 = distinct !{!39084, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_EECs14kWLkQVSKO_14deltalake_core"}
!39085 = distinct !{!39085, !39086, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39086 = distinct !{!39086, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39087 = distinct !{!39087, !39088, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39088 = distinct !{!39088, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core"}
!39089 = !{!39090}
!39090 = distinct !{!39090, !39091, !"_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!39091 = distinct !{!39091, !"_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Cs14kWLkQVSKO_14deltalake_core"}
!39092 = !{!39093}
!39093 = distinct !{!39093, !39094, !"_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39094 = distinct !{!39094, !"_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs14kWLkQVSKO_14deltalake_core"}
!39095 = !{!39093, !39096, !39097, !39090, !39036, !39039, !39030, !39033, !39023, !39025, !39026, !39028, !39008, !39011, !39003, !39006}
!39096 = distinct !{!39096, !39094, !"_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39097 = distinct !{!39097, !39091, !"_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39098 = !{!39099}
!39099 = distinct !{!39099, !39100, !"_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39100 = distinct !{!39100, !"_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECs14kWLkQVSKO_14deltalake_core"}
!39101 = !{!39102}
!39102 = distinct !{!39102, !39100, !"_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39103 = !{!39099, !39093, !39090}
!39104 = !{!39102, !39096, !39097, !39036, !39039, !39030, !39033, !39023, !39025, !39026, !39028, !39008, !39011, !39003, !39006}
!39105 = !{!39106}
!39106 = distinct !{!39106, !39107, !"_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtNtBe_3ops9try_traitINtB31_17NeverShortCircuituE10wrap_mut_2uB1X_QNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB1X_E14extend_trustedINtNtNtB4j_8adapters7flatten7FlattenINtNtB5j_9into_iter8IntoIterAB1X_j2_EEE0E0E0B3m_E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39107 = distinct !{!39107, !"_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtNtBe_3ops9try_traitINtB31_17NeverShortCircuituE10wrap_mut_2uB1X_QNCINvNvNtNtNtNtBe_4iter6traits8iterator8Iterator8for_each4callB1X_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB5j_3VecB1X_E14extend_trustedINtNtNtB4j_8adapters7flatten7FlattenINtNtB5j_9into_iter8IntoIterAB1X_j2_EEE0E0E0B3m_E0Cs14kWLkQVSKO_14deltalake_core"}
!39108 = !{!39106, !39102}
!39109 = !{!39099, !39093, !39096, !39097, !39090, !39036, !39039, !39030, !39033, !39023, !39025, !39026, !39028, !39008, !39011, !39003, !39006}
!39110 = !{!39111, !39113, !39106, !39099, !39102, !39093, !39096, !39097, !39090, !39036, !39039, !39030, !39033, !39023, !39025, !39026, !39028, !39008, !39011, !39003, !39006}
!39111 = distinct !{!39111, !39112, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCINvNvNtNtNtNtBc_4iter6traits8iterator8Iterator8for_each4callB1n_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3k_3VecB1n_E14extend_trustedINtNtNtB2k_8adapters7flatten7FlattenINtNtB3k_9into_iter8IntoIterAB1n_j2_EEE0E0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39112 = distinct !{!39112, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCINvNvNtNtNtNtBc_4iter6traits8iterator8Iterator8for_each4callB1n_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3k_3VecB1n_E14extend_trustedINtNtNtB2k_8adapters7flatten7FlattenINtNtB3k_9into_iter8IntoIterAB1n_j2_EEE0E0E0Cs14kWLkQVSKO_14deltalake_core"}
!39113 = distinct !{!39113, !39112, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuituE10wrap_mut_2uNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprQNCINvNvNtNtNtNtBc_4iter6traits8iterator8Iterator8for_each4callB1n_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3k_3VecB1n_E14extend_trustedINtNtNtB2k_8adapters7flatten7FlattenINtNtB3k_9into_iter8IntoIterAB1n_j2_EEE0E0E0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!39114 = !{!39106, !39099, !39036, !39030, !39033, !39023, !39025, !39026, !39028, !39011, !39006}
!39115 = !{!39116, !39118, !39120, !39122, !39093, !39090}
!39116 = distinct !{!39116, !39117, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_ENtNtNtBb_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39117 = distinct !{!39117, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_ENtNtNtBb_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39118 = distinct !{!39118, !39119, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39119 = distinct !{!39119, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_EECs14kWLkQVSKO_14deltalake_core"}
!39120 = distinct !{!39120, !39121, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39121 = distinct !{!39121, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39122 = distinct !{!39122, !39123, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39123 = distinct !{!39123, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core"}
!39124 = !{!39096, !39097, !39036, !39039, !39030, !39033, !39023, !39025, !39026, !39028, !39008, !39011, !39003, !39006}
!39125 = !{!39036, !39030, !39033, !39023, !39025, !39026, !39028, !39008, !39011, !39003, !39006}
!39126 = !{!39127, !39129, !39131, !39133, !39093, !39090}
!39127 = distinct !{!39127, !39128, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_ENtNtNtBb_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39128 = distinct !{!39128, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_ENtNtNtBb_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39129 = distinct !{!39129, !39130, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39130 = distinct !{!39130, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_EECs14kWLkQVSKO_14deltalake_core"}
!39131 = distinct !{!39131, !39132, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39132 = distinct !{!39132, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39133 = distinct !{!39133, !39134, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39134 = distinct !{!39134, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core"}
!39135 = !{!39033, !39023, !39025, !39026, !39028, !39011, !39006}
!39136 = !{!39137, !39139, !39036, !39030}
!39137 = distinct !{!39137, !39138, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39138 = distinct !{!39138, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EEECs14kWLkQVSKO_14deltalake_core"}
!39139 = distinct !{!39139, !39140, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39140 = distinct !{!39140, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EEECs14kWLkQVSKO_14deltalake_core"}
!39141 = !{!39142, !39144, !39146, !39148, !39036, !39030}
!39142 = distinct !{!39142, !39143, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_ENtNtNtBb_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39143 = distinct !{!39143, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_ENtNtNtBb_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39144 = distinct !{!39144, !39145, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39145 = distinct !{!39145, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_EECs14kWLkQVSKO_14deltalake_core"}
!39146 = distinct !{!39146, !39147, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39147 = distinct !{!39147, !"_RNvXs4_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtB9_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39148 = distinct !{!39148, !39149, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39149 = distinct !{!39149, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EECs14kWLkQVSKO_14deltalake_core"}
!39150 = !{!39151}
!39151 = distinct !{!39151, !39152, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBV_7scalars6ScalarEINtNtB8_5boxed3BoxDINtNtNtB2h_3ops8function2FnTB3n_EEp6OutputBT_EL_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39152 = distinct !{!39152, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBV_7scalars6ScalarEINtNtB8_5boxed3BoxDINtNtNtB2h_3ops8function2FnTB3n_EEp6OutputBT_EL_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39153 = !{!39154}
!39154 = distinct !{!39154, !39152, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBV_7scalars6ScalarEINtNtB8_5boxed3BoxDINtNtNtB2h_3ops8function2FnTB3n_EEp6OutputBT_EL_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39155 = !{!39156}
!39156 = distinct !{!39156, !39157, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBI_7scalars6ScalarEINtNtB8_5boxed3BoxDINtNtNtB1Z_3ops8function2FnTB35_EEp6OutputBG_EL_EEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39157 = distinct !{!39157, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBI_7scalars6ScalarEINtNtB8_5boxed3BoxDINtNtNtB1Z_3ops8function2FnTB35_EEp6OutputBG_EL_EEECs14kWLkQVSKO_14deltalake_core"}
!39158 = !{!39159}
!39159 = distinct !{!39159, !39157, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtBI_7scalars6ScalarEINtNtB8_5boxed3BoxDINtNtNtB1Z_3ops8function2FnTB35_EEp6OutputBG_EL_EEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39160 = !{!39159, !39154}
!39161 = !{!39156, !39151}
!39162 = !{!39156, !39159, !39151, !39154}
!39163 = !{!39164, !39166, !39167, !39169}
!39164 = distinct !{!39164, !39165, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EEB3o_: argument 0"}
!39165 = distinct !{!39165, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EEB3o_"}
!39166 = distinct !{!39166, !39165, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EEB3o_: argument 1"}
!39167 = distinct !{!39167, !39168, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EE11spec_extendB3G_: argument 0"}
!39168 = distinct !{!39168, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EE11spec_extendB3G_"}
!39169 = distinct !{!39169, !39168, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation24make_fields_non_nullables_0EE11spec_extendB3G_: argument 1"}
!39170 = !{!39171, !39173, !39174, !39176}
!39171 = distinct !{!39171, !39172, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EEB3o_: argument 0"}
!39172 = distinct !{!39172, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EEB3o_"}
!39173 = distinct !{!39173, !39172, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EEB3o_: argument 1"}
!39174 = distinct !{!39174, !39175, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EE11spec_extendB3G_: argument 0"}
!39175 = distinct !{!39175, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EE11spec_extendB3G_"}
!39176 = distinct !{!39176, !39175, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursive0EE11spec_extendB3G_: argument 1"}
!39177 = !{!39178, !39180, !39181, !39183}
!39178 = distinct !{!39178, !39179, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EEB3o_: argument 0"}
!39179 = distinct !{!39179, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EEB3o_"}
!39180 = distinct !{!39180, !39179, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1O_5slice4iter4IterINtNtB8_4sync3ArcBG_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EEB3o_: argument 1"}
!39181 = distinct !{!39181, !39182, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EE11spec_extendB3G_: argument 0"}
!39182 = distinct !{!39182, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EE11spec_extendB3G_"}
!39183 = distinct !{!39183, !39182, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterINtNtB8_4sync3ArcBT_EENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validation34make_fields_non_nullable_recursives_0EE11spec_extendB3G_: argument 1"}
!39184 = !{!39185, !39187, !39188, !39190}
!39185 = distinct !{!39185, !39186, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EEB3B_: argument 0"}
!39186 = distinct !{!39186, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EEB3B_"}
!39187 = distinct !{!39187, !39186, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EEB3B_: argument 1"}
!39188 = distinct !{!39188, !39189, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EE11spec_extendB3T_: argument 0"}
!39189 = distinct !{!39189, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EE11spec_extendB3T_"}
!39190 = distinct !{!39190, !39189, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2j_5slice4iter4IterNtNtB8_6string6StringENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider28partitioned_file_from_action0EE11spec_extendB3T_: argument 1"}
!39191 = !{!39192}
!39192 = distinct !{!39192, !39193, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB29_5chain5ChainINtNtNtB2d_5slice4iter4IterBT_EB3j_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39193 = distinct !{!39193, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB29_5chain5ChainINtNtNtB2d_5slice4iter4IterBT_EB3j_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39194 = !{!39195}
!39195 = distinct !{!39195, !39196, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB1R_5chain5ChainINtNtNtB1V_5slice4iter4IterBG_EB31_EEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39196 = distinct !{!39196, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB1R_5chain5ChainINtNtNtB1V_5slice4iter4IterBG_EB31_EEECs14kWLkQVSKO_14deltalake_core"}
!39197 = !{!39195, !39198, !39192, !39199}
!39198 = distinct !{!39198, !39196, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB1R_5chain5ChainINtNtNtB1V_5slice4iter4IterBG_EB31_EEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39199 = distinct !{!39199, !39193, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB29_5chain5ChainINtNtNtB2d_5slice4iter4IterBT_EB3j_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39200 = !{!39195, !39192}
!39201 = !{!39198, !39199}
!39202 = !{!39203, !39205, !39195, !39198, !39192, !39199}
!39203 = distinct !{!39203, !39204, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEB1h_EENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3t_3VecB1H_E14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39204 = distinct !{!39204, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEB1h_EENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3t_3VecB1H_E14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core"}
!39205 = distinct !{!39205, !39204, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEB1h_EENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3t_3VecB1H_E14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39206 = !{!39203, !39195, !39198, !39192, !39199}
!39207 = !{!39208}
!39208 = distinct !{!39208, !39209, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBT_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39209 = distinct !{!39209, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBT_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39210 = !{!39211}
!39211 = distinct !{!39211, !39212, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBG_EEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39212 = distinct !{!39212, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBG_EEECs14kWLkQVSKO_14deltalake_core"}
!39213 = !{!39211, !39214, !39208, !39215}
!39214 = distinct !{!39214, !39212, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBG_EEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39215 = distinct !{!39215, !39209, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6copied6CopiedINtNtCs2TwJzntlzha_11flatbuffers6vector10VectorIterBT_EEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39216 = !{!39211, !39208}
!39217 = !{!39214, !39215}
!39218 = !{!39219, !39221}
!39219 = distinct !{!39219, !39220, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3r_14LogDataHandler10pick_statss_0EEB3x_: argument 0"}
!39220 = distinct !{!39220, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3r_14LogDataHandler10pick_statss_0EEB3x_"}
!39221 = distinct !{!39221, !39222, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB8_4sync3ArcBU_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3J_14LogDataHandler10pick_statss_0EE11spec_extendB3P_: argument 0"}
!39222 = distinct !{!39222, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB8_4sync3ArcBU_EENCNvMNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3J_14LogDataHandler10pick_statss_0EE11spec_extendB3P_"}
!39223 = !{!39224, !39226}
!39224 = distinct !{!39224, !39225, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EEB3z_: argument 0"}
!39225 = distinct !{!39225, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_E14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1S_5slice4iter4IterINtNtB8_4sync3ArcBH_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3t_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EEB3z_"}
!39226 = distinct !{!39226, !39227, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB8_4sync3ArcBU_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3L_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EE11spec_extendB3R_: argument 0"}
!39227 = distinct !{!39227, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecRDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EINtB4_10SpecExtendBT_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2a_5slice4iter4IterINtNtB8_4sync3ArcBU_EENCNvXs_NtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_data10datafusionNtB3L_14LogDataHandlerNtNtCsjhHCjzi9uUI_17datafusion_common7pruning17PruningStatistics10row_countss_0EE11spec_extendB3R_"}
!39228 = !{!39229, !39231, !39232}
!39229 = distinct !{!39229, !39230, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39230 = distinct !{!39230, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core"}
!39231 = distinct !{!39231, !39230, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!39232 = distinct !{!39232, !39233, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2x_3VecRBQ_E14extend_trustedBF_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39233 = distinct !{!39233, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2x_3VecRBQ_E14extend_trustedBF_E0ECs14kWLkQVSKO_14deltalake_core"}
!39234 = distinct !{!39234, !15341, !15342}
!39235 = distinct !{!39235, !15342, !15341}
!39236 = !{!39237, !39239, !39240}
!39237 = distinct !{!39237, !39238, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39238 = distinct !{!39238, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core"}
!39239 = distinct !{!39239, !39238, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecRNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterBJ_EE0Cs14kWLkQVSKO_14deltalake_core: argument 1"}
!39240 = distinct !{!39240, !39241, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecRBQ_E14extend_trustedBF_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39241 = distinct !{!39241, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs90oH6M0AZ2B_22datafusion_expr_common19interval_arithmetic8IntervalENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2Y_3VecRBQ_E14extend_trustedBF_E0ECs14kWLkQVSKO_14deltalake_core"}
!39242 = distinct !{!39242, !15341, !15342}
!39243 = distinct !{!39243, !15342, !15341}
!39244 = !{!39245}
!39245 = distinct !{!39245, !39246, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecbEINtB4_10SpecExtendbINtNtB6_5drain5DrainbEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39246 = distinct !{!39246, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecbEINtB4_10SpecExtendbINtNtB6_5drain5DrainbEE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39247 = !{!39248}
!39248 = distinct !{!39248, !39249, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39249 = distinct !{!39249, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core"}
!39250 = !{!39248, !39251, !39245, !39252}
!39251 = distinct !{!39251, !39249, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecbE14extend_trustedINtNtB6_5drain5DrainbEECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39252 = distinct !{!39252, !39246, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecbEINtB4_10SpecExtendbINtNtB6_5drain5DrainbEE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39253 = !{!39248, !39245}
!39254 = !{!39251, !39252}
!39255 = !{!39256}
!39256 = distinct !{!39256, !39257, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39257 = distinct !{!39257, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core"}
!39258 = !{!39259}
!39259 = distinct !{!39259, !39260, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39260 = distinct !{!39260, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core"}
!39261 = !{!39262, !39259, !39256}
!39262 = distinct !{!39262, !39263, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:pre.rot"}
!39263 = distinct !{!39263, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core"}
!39264 = !{!39265, !39266, !39248, !39251, !39245, !39252}
!39265 = distinct !{!39265, !39260, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvBM_8for_each4callbNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39266 = distinct !{!39266, !39257, !"_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec5drain5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvMsj_B8_INtB8_3VecbE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39267 = !{!39268}
!39268 = distinct !{!39268, !39263, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39269 = !{!39268, !39259, !39265, !39256, !39266}
!39270 = !{!39271, !39273, !39259, !39265, !39256, !39266}
!39271 = distinct !{!39271, !39272, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecbE14extend_trustedINtNtB8_5drain5DrainbEE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39272 = distinct !{!39272, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecbE14extend_trustedINtNtB8_5drain5DrainbEE0Cs14kWLkQVSKO_14deltalake_core"}
!39273 = distinct !{!39273, !39274, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1p_3VecbE14extend_trustedINtNtB1p_5drain5DrainbEE0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39274 = distinct !{!39274, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callbNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1p_3VecbE14extend_trustedINtNtB1p_5drain5DrainbEE0E0Cs14kWLkQVSKO_14deltalake_core"}
!39275 = distinct !{!39275, !15341, !15342}
!39276 = !{!"branch_weights", i32 8, i32 24}
!39277 = distinct !{!39277, !15341, !15342}
!39278 = distinct !{!39278, !18}
!39279 = !{!39280, !39259, !39265, !39256, !39266}
!39280 = distinct !{!39280, !39263, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:It1"}
!39281 = !{!39282, !39259, !39265, !39256, !39266}
!39282 = distinct !{!39282, !39263, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:It2"}
!39283 = !{!39284, !39259, !39265, !39256, !39266}
!39284 = distinct !{!39284, !39263, !"_RNvXs3_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainbENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0:It3"}
!39285 = distinct !{!39285, !15341}
!39286 = !{!39268, !39259, !39256}
!39287 = !{!39259, !39265, !39256, !39266, !39251, !39252}
!39288 = !{!39289, !39291, !39292, !39294}
!39289 = distinct !{!39289, !39290, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_: argument 0"}
!39290 = distinct !{!39290, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_"}
!39291 = distinct !{!39291, !39290, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecdE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EEB2p_: argument 1"}
!39292 = distinct !{!39292, !39293, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecdEINtB4_10SpecExtenddINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EE11spec_extendB2F_: argument 0"}
!39293 = distinct !{!39293, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecdEINtB4_10SpecExtenddINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EE11spec_extendB2F_"}
!39294 = distinct !{!39294, !39293, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecdEINtB4_10SpecExtenddINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays9_0EE11spec_extendB2F_: argument 1"}
!39295 = !{!39296, !39298, !39299, !39301}
!39296 = distinct !{!39296, !39297, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecfE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EEB2p_: argument 0"}
!39297 = distinct !{!39297, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecfE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EEB2p_"}
!39298 = distinct !{!39298, !39297, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecfE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EEB2p_: argument 1"}
!39299 = distinct !{!39299, !39300, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EE11spec_extendB2F_: argument 0"}
!39300 = distinct !{!39300, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EE11spec_extendB2F_"}
!39301 = distinct !{!39301, !39300, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecfEINtB4_10SpecExtendfINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays6_0EE11spec_extendB2F_: argument 1"}
!39302 = !{!39303, !39305, !39306, !39308}
!39303 = distinct !{!39303, !39304, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39304 = distinct !{!39304, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core"}
!39305 = distinct !{!39305, !39304, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EECs14kWLkQVSKO_14deltalake_core: argument 1"}
!39306 = distinct !{!39306, !39307, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39307 = distinct !{!39307, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCs14kWLkQVSKO_14deltalake_core"}
!39308 = distinct !{!39308, !39307, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VechEINtB4_10SpecExtendhINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE11spec_extendCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39309 = !{!39310, !39312, !39314, !39316}
!39310 = distinct !{!39310, !39311, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEE0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39311 = distinct !{!39311, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecjE14extend_trustedINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEE0Cs14kWLkQVSKO_14deltalake_core"}
!39312 = distinct !{!39312, !39313, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBe_3ops5range5RangejEE0E0Cs14kWLkQVSKO_14deltalake_core: argument 0"}
!39313 = distinct !{!39313, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4calljNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1p_3VecjE14extend_trustedINtNtNtBe_3ops5range5RangejEE0E0Cs14kWLkQVSKO_14deltalake_core"}
!39314 = distinct !{!39314, !39315, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB24_3VecjE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39315 = distinct !{!39315, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvBL_8for_each4calljNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB24_3VecjE14extend_trustedB3_E0E0ECs14kWLkQVSKO_14deltalake_core"}
!39316 = distinct !{!39316, !39317, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1I_3VecjE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39317 = distinct !{!39317, !"_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB1I_3VecjE14extend_trustedB3_E0ECs14kWLkQVSKO_14deltalake_core"}
!39318 = distinct !{!39318, !15341, !15342}
!39319 = distinct !{!39319, !15342, !15341}
!39320 = !{!39321, !39323}
!39321 = distinct !{!39321, !39322, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39322 = distinct !{!39322, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39323 = distinct !{!39323, !39324, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_: argument 1"}
!39324 = distinct !{!39324, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_"}
!39325 = !{!39326, !39327}
!39326 = distinct !{!39326, !39322, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39327 = distinct !{!39327, !39324, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_: argument 0"}
!39328 = !{!39329}
!39329 = distinct !{!39329, !39330, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!39330 = distinct !{!39330, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le"}
!39331 = !{!39332}
!39332 = distinct !{!39332, !39330, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!39333 = !{!39329, !39321, !39323}
!39334 = !{!39332, !39326, !39327}
!39335 = !{!39332, !39321, !39323}
!39336 = !{!39329, !39326, !39327}
!39337 = !{!"branch_weights", !"expected", i32 4292820, i32 2143190828}
!39338 = !{!39339}
!39339 = distinct !{!39339, !39340, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EE11spec_extendB2P_: argument 0"}
!39340 = distinct !{!39340, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EE11spec_extendB2P_"}
!39341 = !{!39342}
!39342 = distinct !{!39342, !39340, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EE11spec_extendB2P_: argument 1"}
!39343 = !{!39344}
!39344 = distinct !{!39344, !39345, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_: argument 0"}
!39345 = distinct !{!39345, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_"}
!39346 = !{!39347}
!39347 = distinct !{!39347, !39345, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0EEB2z_: argument 1"}
!39348 = !{!39349}
!39349 = distinct !{!39349, !39350, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le: argument 0"}
!39350 = distinct !{!39350, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le"}
!39351 = !{!39352}
!39352 = distinct !{!39352, !39350, !"_RNvXsU_NtNtCsbvkFyIu7lgC_4core3cmp5implsjNtB7_10PartialOrd2le: argument 1"}
!39353 = !{!39349, !39354, !39356, !39347, !39342}
!39354 = distinct !{!39354, !39355, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39355 = distinct !{!39355, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39356 = distinct !{!39356, !39357, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_: argument 1"}
!39357 = distinct !{!39357, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_"}
!39358 = !{!39352, !39359, !39360, !39344, !39339}
!39359 = distinct !{!39359, !39355, !"_RNvXsd_NtNtCsbvkFyIu7lgC_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivejENtNtNtB7_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39360 = distinct !{!39360, !39357, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range14RangeInclusivejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize6zorder10zorder_keys_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1I_: argument 0"}
!39361 = !{!39352, !39354, !39356, !39347, !39342}
!39362 = !{!39349, !39359, !39360, !39344, !39339}
!39363 = !{!"branch_weights", !"expected", i32 4299269, i32 2143184379}
!39364 = !{!39344, !39339}
!39365 = !{!39347, !39342}
!39366 = !{!39344, !39347, !39339, !39342}
!39367 = !{!39368, !39370, !39371, !39373}
!39368 = distinct !{!39368, !39369, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_: argument 0"}
!39369 = distinct !{!39369, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_"}
!39370 = distinct !{!39370, !39369, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VeclE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EEB2p_: argument 1"}
!39371 = distinct !{!39371, !39372, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EE11spec_extendB2F_: argument 0"}
!39372 = distinct !{!39372, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EE11spec_extendB2F_"}
!39373 = distinct !{!39373, !39372, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VeclEINtB4_10SpecExtendlINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays0_0EE11spec_extendB2F_: argument 1"}
!39374 = !{!39375, !39377, !39378, !39380}
!39375 = distinct !{!39375, !39376, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_: argument 0"}
!39376 = distinct !{!39376, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_"}
!39377 = distinct !{!39377, !39376, !"_RINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB17_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EEB2p_: argument 1"}
!39378 = distinct !{!39378, !39379, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EE11spec_extendB2F_: argument 0"}
!39379 = distinct !{!39379, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EE11spec_extendB2F_"}
!39380 = distinct !{!39380, !39379, !"_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecxEINtB4_10SpecExtendxINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1n_3ops5range5RangejENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10test_utils9factories4data21generate_random_arrays3_0EE11spec_extendB2F_: argument 1"}
!39381 = !{!39382}
!39382 = distinct !{!39382, !39383, !"_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6cloned6ClonedINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEB2c_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3A_: argument 0"}
!39383 = distinct !{!39383, !"_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain17and_then_or_clearINtNtB4_6cloned6ClonedINtNtB4_6filter6FilterINtNtNtB8_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEB2c_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB3A_"}
!39384 = !{!39385}
!39385 = distinct !{!39385, !39386, !"_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2f_5ChainINtNtB2h_6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB5_5slice4iter4IterBI_ENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB2h_3map3MapIB3G_NtNtBN_6string6StringENCB4b_s_0EENtNtNtB2j_6traits8iterator8Iterator4next0EB4f_: argument 0"}
!39386 = distinct !{!39386, !"_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2f_5ChainINtNtB2h_6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB5_5slice4iter4IterBI_ENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB2h_3map3MapIB3G_NtNtBN_6string6StringENCB4b_s_0EENtNtNtB2j_6traits8iterator8Iterator4next0EB4f_"}
!39387 = !{!39388}
!39388 = distinct !{!39388, !39386, !"_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2f_5ChainINtNtB2h_6cloned6ClonedINtNtB2h_6filter6FilterINtNtNtB5_5slice4iter4IterBI_ENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB2h_3map3MapIB3G_NtNtBN_6string6StringENCB4b_s_0EENtNtNtB2j_6traits8iterator8Iterator4next0EB4f_: argument 0:thread"}
!39389 = !{!39390}
!39390 = distinct !{!39390, !39391, !"_RNCNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB6_5ChainINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB8_3map3MapIB1K_NtNtB2e_6string6StringENCB3t_s_0EENtNtNtBa_6traits8iterator8Iterator4next0B3x_: argument 0"}
!39391 = distinct !{!39391, !"_RNCNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB6_5ChainINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schema0EEINtNtB8_3map3MapIB1K_NtNtB2e_6string6StringENCB3t_s_0EENtNtNtBa_6traits8iterator8Iterator4next0B3x_"}
!39392 = !{!39390, !39385}
!39393 = !{!39394}
!39394 = distinct !{!39394, !39395, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schemas_0ENtNtNtB9_6traits8iterator8Iterator4nextB25_: argument 0"}
!39395 = distinct !{!39395, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENCNvNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion13__arrow_schemas_0ENtNtNtB9_6traits8iterator8Iterator4nextB25_"}
!39396 = !{!39397, !39394, !39390, !39385}
!39397 = distinct !{!39397, !39398, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39398 = distinct !{!39398, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core"}
!39399 = !{!39394, !39390, !39385}
!39400 = !{!39401}
!39401 = distinct !{!39401, !39402, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtBM_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39402 = distinct !{!39402, !"_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultRNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtBM_5error10ArrowErrorE6unwrapCs14kWLkQVSKO_14deltalake_core"}
!39403 = !{!39401, !39394, !39390, !39385}
!39404 = !{!39405}
!39405 = distinct !{!39405, !39406, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!39406 = distinct !{!39406, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!39407 = !{!39408}
!39408 = distinct !{!39408, !39406, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!39409 = !{!39405, !39408, !39394, !39390, !39385}
!39410 = !{!39405, !39394, !39390, !39385}
!39411 = !{!39408, !39394, !39390, !39385}
!39412 = !{!39413, !39394, !39390, !39385}
!39413 = distinct !{!39413, !39414, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39414 = distinct !{!39414, !"_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEE3newCs14kWLkQVSKO_14deltalake_core"}
!39415 = !{!39416}
!39416 = distinct !{!39416, !39417, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39417 = distinct !{!39417, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core"}
!39418 = !{!39419, !39421, !39416, !39385}
!39419 = distinct !{!39419, !39420, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39420 = distinct !{!39420, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39421 = distinct !{!39421, !39422, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39422 = distinct !{!39422, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core"}
!39423 = !{!39424}
!39424 = distinct !{!39424, !39425, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39425 = distinct !{!39425, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core"}
!39426 = !{!39427, !39429, !39424, !39385}
!39427 = distinct !{!39427, !39428, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39428 = distinct !{!39428, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!39429 = distinct !{!39429, !39430, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!39430 = distinct !{!39430, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core"}
!39431 = !{!39432, !39434, !39436}
!39432 = distinct !{!39432, !39433, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39433 = distinct !{!39433, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39434 = distinct !{!39434, !39435, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39435 = distinct !{!39435, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39436 = distinct !{!39436, !39437, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEBP_EINtB5_6ExtendTB1m_B1m_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39437 = distinct !{!39437, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEBP_EINtB5_6ExtendTB1m_B1m_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39438 = !{!39439, !39441, !39436}
!39439 = distinct !{!39439, !39440, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39440 = distinct !{!39440, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39441 = distinct !{!39441, !39442, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39442 = distinct !{!39442, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39443 = !{!39444, !39446, !39448}
!39444 = distinct !{!39444, !39445, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39445 = distinct !{!39445, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39446 = distinct !{!39446, !39447, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39447 = distinct !{!39447, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39448 = distinct !{!39448, !39449, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEIBQ_IB1n_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEINtB5_6ExtendTB1m_B2y_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39449 = distinct !{!39449, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6option6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEIBQ_IB1n_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEEINtB5_6ExtendTB1m_B2y_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39450 = !{!39451, !39453, !39448}
!39451 = distinct !{!39451, !39452, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39452 = distinct !{!39452, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39453 = distinct !{!39453, !39454, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39454 = distinct !{!39454, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions9PredicateEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39455 = !{!39456, !39458, !39460}
!39456 = distinct !{!39456, !39457, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_EINtB5_7ZipImplBW_BW_E9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39457 = distinct !{!39457, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_EINtB5_7ZipImplBW_BW_E9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39458 = distinct !{!39458, !39459, !"_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB4_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBV_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39459 = distinct !{!39459, !"_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB4_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBV_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39460 = distinct !{!39460, !39461, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1c_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB33_18LogicalPlanBuilder13join_detailedB20_B20_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 1"}
!39461 = distinct !{!39461, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1c_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB33_18LogicalPlanBuilder13join_detailedB20_B20_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core"}
!39462 = !{!39463, !39464, !39465}
!39463 = distinct !{!39463, !39457, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_EINtB5_7ZipImplBW_BW_E9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39464 = distinct !{!39464, !39459, !"_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB4_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBV_ENtNtNtB8_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39465 = distinct !{!39465, !39461, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtB7_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1c_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB33_18LogicalPlanBuilder13join_detailedB20_B20_E0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39466 = !{!39467, !39469, !39471}
!39467 = distinct !{!39467, !39468, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1k_5error15DataFusionErrorEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39468 = distinct !{!39468, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1k_5error15DataFusionErrorEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39469 = distinct !{!39469, !39470, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39470 = distinct !{!39470, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39471 = distinct !{!39471, !39472, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1M_5error15DataFusionErrorEEBP_EINtB5_6ExtendTB1m_B1m_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39472 = distinct !{!39472, !"_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBb_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1M_5error15DataFusionErrorEEBP_EINtB5_6ExtendTB1m_B1m_EE14extend_reserveCs14kWLkQVSKO_14deltalake_core"}
!39473 = !{!39474, !39476, !39471}
!39474 = distinct !{!39474, !39475, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1k_5error15DataFusionErrorEE7reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
!39475 = distinct !{!39475, !"_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1k_5error15DataFusionErrorEE7reserveCs14kWLkQVSKO_14deltalake_core"}
!39476 = distinct !{!39476, !39477, !"_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1l_5error15DataFusionErrorEEINtNtNtNtBK_4iter6traits7collect6ExtendBF_E14extend_reserveCs14kWLkQVSKO_14deltalake_core: argument 0"}
end_hunk_1
