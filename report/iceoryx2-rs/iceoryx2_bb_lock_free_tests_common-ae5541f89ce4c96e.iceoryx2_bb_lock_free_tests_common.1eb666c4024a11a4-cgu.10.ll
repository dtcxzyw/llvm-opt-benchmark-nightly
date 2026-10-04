Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_lock_free_tests_common-ae5541f89ce4c96e.iceoryx2_bb_lock_free_tests_common.1eb666c4024a11a4-cgu.10?download=true
inline.NumInlined: 156
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_elemINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic8TestTypeENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1M_:bb.a
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.015.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.q, %._crit_edge.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.015.i.epil = phi ptr [ %i.r, %.lr.ph.i.epil ], [ %.sroa.0.015.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0.015.i.epil, ptr noundef nonnull readonly align 8 dereferenceable(256) %1, i64 256, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.epil, i64 256 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %.lr.ph.i.epil, !llvm.loop !179

._crit_edge.thread.i:                             ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %._crit_edge.i
  %.sroa.0.0.lcssa22.i = phi ptr [ %i.h, %._crit_edge.i ], [ %i.q, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.r, %.lr.ph.i.epil ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0.0.lcssa22.i, ptr noundef nonnull readonly align 8 dereferenceable(256) %1, i64 256, i1 false)
  br label %_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic8TestTypeEE11extend_withB1G_.exit

_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitNtNtNtCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common20mpmc_container_tests7generic8TestTypeEE11extend_withB1G_.exit: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNtNtCsbqH9stoieM8_5alloc3vec14spec_from_elemINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8) #15
  %i.b = load i64, ptr %i.a, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !10, !noundef !9 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #16
  unreachable

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9 ; 5 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = icmp ugt i64 %2, 1
  br i1 %i.j, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i
  %i.k = add i64 %2, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %2, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader2, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.k, -4                       ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l     ; 2 uses
  %i.n = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8
  store <2 x i64> %broadcast.splat, ptr %i.p, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i, label %.lr.ph.i.preheader2

.lr.ph.i.preheader2:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.016.i.ph = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.m, %middle.block ]
  %.sroa.03.015.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE11extend_withCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader2, %.lr.ph.i
  %.sroa.0.016.i = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.0.016.i.ph, %.lr.ph.i.preheader2 ] ; 2 uses
  %.sroa.03.015.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.sroa.03.015.i.ph, %.lr.ph.i.preheader2 ]
  %i.r = add nuw i64 %.sroa.03.015.i, 1           ; 2 uses
  store i64 %1, ptr %.sroa.0.016.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 8 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i, !llvm.loop !181

._crit_edge.thread.i:                             ; preds = %.lr.ph.i, %middle.block, %._crit_edge.i
  %.sroa.0.0.lcssa23.i = phi ptr [ %i.h, %._crit_edge.i ], [ %i.m, %middle.block ], [ %i.s, %.lr.ph.i ]
  store i64 %1, ptr %.sroa.0.0.lcssa23.i, align 8
  br label %_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE11extend_withCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit

_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecINtNtNtCs8Chj7Szqq0n_4core3mem12maybe_uninit11MaybeUninitjEE11extend_withCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXsd_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3setINtB6_8BTreeSetjEINtNtNtNtCs8Chj7Szqq0n_4core4iter6traits7collect12FromIteratorjE9from_iterINtNtNtB1h_8adapters6copied6CopiedINtNtNtB1j_5slice4iter4IterjEEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f                   ; 6 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !230
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8) #15, !noalias !230
  %i.i = load i64, ptr %i.c, align 8, !range !8, !noalias !230, !noundef !9
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !10, !noalias !230, !noundef !9 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecjE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i.i.i.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !noalias !230
  tail call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #16, !noalias !230
  unreachable

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecjE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !noalias !230, !nonnull !9, !noundef !9 ; 19 uses
  %i.p = icmp ule i64 %i.h, %i.l
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !230
  %i.q = icmp eq ptr %1, %2
  br i1 %i.q, label %bb.f, label %.preheader.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecjE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i.i.i.i
  %i.r = ptrtoaddr ptr %i.o to i64
  %min.iters.check = icmp ult i64 %i.g, 64
  %i.s = sub i64 %i.f, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.h, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %i.t, align 8, !noalias !231
  %wide.load24 = load <2 x i64>, ptr %i.u, align 8, !noalias !231
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %wide.load, ptr %i.v, align 8, !noalias !232
  store <2 x i64> %wide.load24, ptr %i.w, align 8, !noalias !232
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.i.i.i.i.i.i.preheader25

.preheader.i.i.i.i.i.i.preheader25:               ; preds = %.preheader.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.prol:                      ; preds = %.preheader.i.i.i.i.i.i.preheader25, %.preheader.i.i.i.i.i.i.prol
  %i.y = phi i64 [ %i.ab, %.preheader.i.i.i.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.i.i.i.preheader25 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.preheader25 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %.val11.i.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.z, align 8, !noalias !231, !noundef !9
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.y
  store i64 %.val11.i.i.i.i.i.i.i.i.i.prol, ptr %i.aa, align 8, !noalias !232
  %i.ab = add nuw i64 %i.y, 1                     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.prol, !llvm.loop !207

.preheader.i.i.i.i.i.i.prol.loopexit:             ; preds = %.preheader.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.preheader25
  %.unr = phi i64 [ %.ph, %.preheader.i.i.i.i.i.i.preheader25 ], [ %i.ab, %.preheader.i.i.i.i.i.i.prol ]
  %i.ac = sub nsw i64 %.ph, %i.h
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.loopexit, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i
  %i.ae = phi i64 [ %i.aq, %.preheader.i.i.i.i.i.i ], [ %.unr, %.preheader.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ae
  %.val11.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !noalias !231, !noundef !9
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ae
  store i64 %.val11.i.i.i.i.i.i.i.i.i, ptr %i.ag, align 8, !noalias !232
  %i.ah = add nuw i64 %i.ae, 1                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ah
  %.val11.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.ai, align 8, !noalias !231, !noundef !9
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ah
  store i64 %.val11.i.i.i.i.i.i.i.i.i.1, ptr %i.aj, align 8, !noalias !232
  %i.ak = add nuw i64 %i.ae, 2                    ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ak
  %.val11.i.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.al, align 8, !noalias !231, !noundef !9
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ak
  store i64 %.val11.i.i.i.i.i.i.i.i.i.2, ptr %i.am, align 8, !noalias !232
  %i.an = add nuw i64 %i.ae, 3                    ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %.val11.i.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.ao, align 8, !noalias !231, !noundef !9
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.an
  store i64 %.val11.i.i.i.i.i.i.i.i.i.3, ptr %i.ap, align 8, !noalias !232
  %i.aq = add nuw i64 %i.ae, 4                    ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.h
  br i1 %i.ar, label %.loopexit, label %.preheader.i.i.i.i.i.i, !llvm.loop !208

.loopexit:                                        ; preds = %.preheader.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i, %middle.block
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !230
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !230
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !230
  %i.as = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i64 %i.g, 16
  br i1 %i.at, label %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, label %bb.c, !prof !233

bb.c:                                             ; preds = %.loopexit
  %i.au = icmp samesign ult i64 %i.g, 168
  br i1 %i.au, label %bb.e, label %bb.d, !prof !233

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtNtNtCs8Chj7Szqq0n_4core5slice4sort6stable14driftsort_mainjNvYjNtNtB8_3cmp10PartialOrd2ltINtNtCsbqH9stoieM8_5alloc3vec3VecjEECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef range(i64 1, 1152921504606846976) %i.h, ptr noalias nofree noundef nonnull %i.a) #18
  br label %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit

bb.e:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  %.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i, %bb.e
  %.sroa.0.04.i.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i ], [ %.sroa.0.01.i.i, %bb.e ] ; 4 uses
  %.pn3.i.i = phi ptr [ %.sroa.0.04.i.i, %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i ], [ %i.o, %bb.e ] ; 3 uses
  %.val8.i.i.i = load i64, ptr %.sroa.0.04.i.i, align 8, !alias.scope !234, !noalias !235, !noundef !9 ; 3 uses
  %.val9.i.i.i = load i64, ptr %.pn3.i.i, align 8, !alias.scope !236, !noalias !237, !noundef !9 ; 2 uses
  %i.aw = icmp ult i64 %.val8.i.i.i, %.val9.i.i.i
  br i1 %i.aw, label %.preheader.i.i.preheader, label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i

.preheader.i.i.preheader:                         ; preds = %.lr.ph.i.i
  store i64 %.val9.i.i.i, ptr %.sroa.0.04.i.i, align 8, !alias.scope !238
  %i.ax = icmp eq ptr %.pn3.i.i, %i.o
  br i1 %i.ax, label %._crit_edge, label %.lr.ph

.preheader.i.i:                                   ; preds = %.lr.ph
  store i64 %.val7.i.i.i, ptr %.sroa.0.0.i.i.i22, align 8, !alias.scope !238
  %i.ay = icmp eq ptr %i.az, %i.o
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.i.i.i22 = phi ptr [ %i.az, %.preheader.i.i ], [ %.pn3.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i22, i64 -8 ; 3 uses
  %.val7.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !236, !noalias !237, !noundef !9 ; 2 uses
  %i.ba = icmp ult i64 %.val8.i.i.i, %.val7.i.i.i
  br i1 %i.ba, label %.preheader.i.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i.i, %.lr.ph, %.preheader.i.i.preheader
  %.sroa.0.0.i.lcssa.i.i = phi ptr [ %i.o, %.preheader.i.i.preheader ], [ %i.o, %.preheader.i.i ], [ %.sroa.0.0.i.i.i22, %.lr.ph ]
  store i64 %.val8.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i, align 8, !alias.scope !238, !noalias !239
  br label %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i

_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i: ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.i.i, %i.av
  br i1 %.not.i.i, label %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.loopexit, label %.lr.ph.i.i

_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.loopexit: ; preds = %_RINvNtNtNtNtCs8Chj7Szqq0n_4core5slice4sort6shared9smallsort11insert_tailjNvYjNtNtBa_3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i
  %.sroa.010.0.copyload.pre = load i64, ptr %i.d, align 8
  %.sroa.411.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %.sroa.512.0.copyload.pre = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8
  br label %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit

_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.loopexit, %.loopexit, %bb.d
  %.sroa.512.0.copyload = phi i64 [ %.sroa.512.0.copyload.pre, %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.loopexit ], [ %i.h, %.loopexit ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.411.0.copyload = phi ptr [ %.sroa.411.0.copyload.pre, %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.loopexit ], [ %i.o, %.loopexit ], [ %i.o, %bb.d ] ; 3 uses
  %.sroa.010.0.copyload = phi i64 [ %.sroa.010.0.copyload.pre, %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.loopexit ], [ %i.l, %.loopexit ], [ %i.l, %bb.d ]
  %i.bb = icmp ult i64 %.sroa.512.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.411.0.copyload, i64 %.sroa.512.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !240
  store ptr %.sroa.411.0.copyload, ptr %i.b, align 8, !alias.scope !241, !noalias !242
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.411.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !241, !noalias !242
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.010.0.copyload, ptr %.sroa.5.0..sroa_idx13, align 8, !alias.scope !241, !noalias !242
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.bc, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !241, !noalias !242
  call void @_RINvMsi_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB6_8BTreeMapjNtNtB8_7set_val9SetValZSTE27bulk_build_from_sorted_iterINtNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map3MapINtNtNtBc_3vec9into_iter8IntoIterjENCINvMse_NtB8_3setINtB3y_8BTreeSetjE16from_sorted_iterB2Q_E0EECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) #15, !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !240
  br label %bb.g

bb.f:                                             ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VecjE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit.i.i.i.i.i.i
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !230
  %.sroa.4.0..sroa_idx.i.i.i.i14 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i.i14, align 8, !alias.scope !230
  %.sroa.5.0..sroa_idx.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx.i.i.i.i15, align 8, !alias.scope !230
  store ptr null, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #15
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbqH9stoieM8_5alloc5slice11stable_sortjNvYjNtNtCs8Chj7Szqq0n_4core3cmp10PartialOrd2ltECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE11extend_withCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !248, !noundef !9 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !18, !alias.scope !248, !noundef !9
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbqH9stoieM8_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 4) #15
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit

_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.i = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 4 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.j, i64 %i.m     ; 2 uses
  %i.o = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.q, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %.lr.ph.preheader25

.lr.ph.preheader25:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.016.ph = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  %.sroa.03.015.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.n, %middle.block ], [ %i.v, %.lr.ph ]
  %i.s = add i64 %i.f, %1
  %i.t = add i64 %i.s, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCsbqH9stoieM8_5alloc3vecINtB4_3VeclE7reserveCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %.lr.ph
  %.sroa.0.016 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.0.016.ph, %.lr.ph.preheader25 ] ; 2 uses
  %.sroa.03.015 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.03.015.ph, %.lr.ph.preheader25 ]
  %i.u = add nuw i64 %.sroa.03.015, 1             ; 2 uses
  store i32 %2, ptr %.sroa.0.016, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 4 ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %1
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !247

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa23 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa22 = phi i64 [ %i.t, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  store i32 %2, ptr %.sroa.0.0.lcssa23, align 4
  %i.w = add i64 %storemerge.lcssa22, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge13 = phi i64 [ %i.w, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge13, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecyE11extend_withCs2DtSBlS0wts_34iceoryx2_bb_lock_free_tests_common(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !253, !noundef !9 ; 3 uses
end_hunk_0
