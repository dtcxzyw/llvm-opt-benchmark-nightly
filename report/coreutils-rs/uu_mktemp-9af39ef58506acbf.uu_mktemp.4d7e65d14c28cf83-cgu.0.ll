inline.NumInlined: 572
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvCs6EuPS8vUgp3_9uu_mktemp8dry_exec:bb.a
bb.u:                                             ; preds = %.lr.ph
  %i.fs = or disjoint i8 %i.fj, 48
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.ft = add nuw nsw i8 %i.fj, 87
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.fu = add nuw nsw i8 %i.fj, 29
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.04.0 = phi i8 [ %i.fs, %bb.u ], [ %i.ft, %bb.v ], [ %i.fu, %bb.w ]
  store i8 %.sroa.04.0, ptr %.sroa.0.0101, align 1
  %i.fv = icmp eq ptr %i.fh, %i.er
  br i1 %i.fv, label %._crit_edge, label %.lr.ph, !llvm.loop !981
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB5_6Params4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 15 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.p = load i8, ptr %i.o, align 1, !range !320, !noundef !4
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.u) #23
  %i.v = load i64, ptr %i.d, align 8, !range !290, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa) #23
  %i.ab = load i64, ptr %i.m, align 8, !range !226, !noundef !4
  %.not133 = icmp eq i64 %i.ab, -1
  br i1 %.not133, label %bb.n, label %bb.m

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !982
  %i.ac = tail call noundef dereferenceable_or_null(31) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 31, i64 noundef range(i64 1, 9) 1) #23, !noalias !982 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.j, label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.i = icmp slt i64 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !437

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit180.thread342, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.f
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !985
  %i.aj = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ah, i64 noundef range(i64 1, 9) 1) #23, !noalias !985 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4304.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.e ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4304.0.ph, i64 %i.ah) #26
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit180.thread342: ; preds = %bb.f, %bb.h
  %i.al = phi ptr [ %i.aj, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ]
  store i64 %i.ah, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.al, ptr %.sroa.4.0..sroa_idx48, align 8
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.ah, ptr %.sroa.649.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.af, i64 %i.ah, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit180.thread342

bb.i:                                             ; preds = %bb.r, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit180.thread342
  %.val152 = phi ptr [ %i.y, %bb.r ], [ %i.s, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit180.thread342 ] ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i64, ptr %i.am, align 8, !range !226, !noundef !4 ; 3 uses
  %.not135 = icmp eq i64 %i.an, -1                ; 3 uses
  br i1 %.not135, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert391 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.pre392 = load i64, ptr %.phi.trans.insert391, align 8
  br label %bb.s

bb.j:                                             ; preds = %bb.d
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 31) #26
  unreachable

bb.k:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.ac, ptr noundef nonnull align 1 dereferenceable(31) @52, i64 31, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.ao, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 31, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ac, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 31, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.x, %bb.w, %bb.k
  %.val150396 = phi ptr [ %.val152, %bb.x ], [ %.val152, %bb.w ], [ %i.s, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.aq = load i64, ptr %i.ap, align 8, !range !226, !alias.scope !988, !noundef !4 ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %bb.l, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECs6EuPS8vUgp3_9uu_mktemp.exit

bb.l:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i = load ptr, ptr %i.as, align 8, !alias.scope !988, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.aq, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !991
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECs6EuPS8vUgp3_9uu_mktemp.exit

bb.m:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  br label %bb.r

bb.n:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4 ; 7 uses
  %.not.i181 = icmp slt i64 %i.aw, 0
  br i1 %.not.i181, label %bb.p, label %bb.o, !prof !437

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit184.thread353, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i182

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i182: ; preds = %bb.o
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !994
  %i.ay = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.aw, i64 noundef range(i64 1, 9) 1) #23, !noalias !994 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.n, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i182
  %.sroa.4297.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i182 ], [ 0, %bb.n ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4297.0.ph, i64 %i.aw) #26
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit184.thread353: ; preds = %bb.o, %bb.q
  %i.ba = phi ptr [ %i.ay, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.o ]
  store i64 %i.aw, ptr %i.n, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ba, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.aw, ptr %.sroa.637.0..sroa_idx, align 8
  br label %bb.r

bb.q:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i182
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.au, i64 %i.aw, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit184.thread353

bb.r:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit184.thread353, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.i

bb.s:                                             ; preds = %._crit_edge, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit
  %i.bb = phi i64 [ %.pre392, %._crit_edge ], [ %i.bt, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit ] ; 12 uses
  %i.bc = phi ptr [ %.pre, %._crit_edge ], [ %i.bv, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit ] ; 18 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb ; 5 uses
  %i.bg = icmp samesign eq i64 %i.bb, 0
  br i1 %i.bg, label %.loopexit, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph
  %i.bh = icmp eq ptr %i.bc, %i.bj
  br i1 %i.bh, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.sroa.03.0.i.i434 = phi i64 [ %i.bk, %bb.t ], [ %i.bb, %bb.s ] ; 9 uses
  %i.bi = phi ptr [ %i.bj, %bb.t ], [ %i.bf, %bb.s ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -1 ; 3 uses
  %i.bk = add i64 %.sroa.03.0.i.i434, -1          ; 5 uses
  %.val.i.i = load i8, ptr %i.bj, align 1, !alias.scope !997, !noalias !1000, !noundef !4
  %i.bl = icmp eq i8 %.val.i.i, 88
  br i1 %i.bl, label %.split.i, label %bb.t

.split.i:                                         ; preds = %.lr.ph
  %i.bm = icmp ult i64 %i.bk, %i.bb
  tail call void @llvm.assume(i1 %i.bm)
  %.not.i185436 = icmp eq i64 %i.bk, 0
  br i1 %.not.i185436, label %._crit_edge439, label %.lr.ph438

bb.u:                                             ; preds = %.lr.ph438
  %2 = add i64 %.sroa.03.0.i437, -1               ; 3 uses
  %.not.i185 = icmp eq i64 %2, 0
  br i1 %.not.i185, label %._crit_edge439, label %.lr.ph438

.lr.ph438:                                        ; preds = %.split.i, %bb.u
  %.sroa.03.0.i437 = phi i64 [ %2, %bb.u ], [ %i.bk, %.split.i ] ; 3 uses
  %3 = getelementptr i8, ptr %i.bc, i64 %.sroa.03.0.i437
  %i.bn = getelementptr i8, ptr %3, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !alias.scope !997, !noalias !1004, !noundef !4
  %i.bp = icmp eq i8 %i.bo, 88
  br i1 %i.bp, label %bb.u, label %._crit_edge439

._crit_edge439:                                   ; preds = %bb.u, %.lr.ph438, %.split.i
  %.sroa.03.0.i.lcssa = phi i64 [ %i.bk, %.split.i ], [ %2, %bb.u ], [ %.sroa.03.0.i437, %.lr.ph438 ] ; 17 uses
  %i.bq = sub i64 %.sroa.03.0.i.i434, %.sroa.03.0.i.lcssa ; 2 uses
  %i.br = icmp ugt i64 %i.bq, 2
  br i1 %i.br, label %_RNvCs6EuPS8vUgp3_9uu_mktemp32find_last_contiguous_block_of_xs.exit, label %.loopexit

bb.v:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 3 uses
  %.not.i187 = icmp eq i64 %i.bt, 0
  br i1 %.not.i187, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.bt
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  %rhsc = load i8, ptr %i.bx, align 1
  %i.by = icmp eq i8 %rhsc, 88
  br i1 %i.by, label %bb.s, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit.thread

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit.thread: ; preds = %bb.v, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.44.0..sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) #23
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.bz, align 8
  br label %bb.w

bb.w:                                             ; preds = %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECs6EuPS8vUgp3_9uu_mktemp.exit, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit.thread
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %.val.i.i188 = load i64, ptr %i.n, align 8, !range !40, !alias.scope !1011, !noundef !4 ; 2 uses
  %i.ca = icmp eq i64 %.val.i.i188, 0
  br i1 %i.ca, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !1011, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i188, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1011
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit

_RNvCs6EuPS8vUgp3_9uu_mktemp32find_last_contiguous_block_of_xs.exit: ; preds = %._crit_edge439
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0265.0.copyload = load i64, ptr %i.cc, align 8 ; 9 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 10 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8 ; 5 uses
  %.not137 = icmp eq i64 %.sroa.0265.0.copyload, -1 ; 2 uses
  br i1 %.not137, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.y

.loopexit:                                        ; preds = %bb.t, %bb.s, %._crit_edge439
  br i1 %.not135, label %bb.cv, label %bb.ch

bb.y:                                             ; preds = %_RNvCs6EuPS8vUgp3_9uu_mktemp32find_last_contiguous_block_of_xs.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0.copyload) ]
  %i.cd = icmp eq i64 %.sroa.17.0.copyload, 0
  br i1 %i.cd, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.y
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !1012
  %i.ce = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.17.0.copyload, i64 noundef range(i64 1, 9) 1) #23, !noalias !1012 ; 3 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.sroa.17.0.copyload) #26, !noalias !1020
  unreachable

bb.aa:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %.sroa.12.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.17.0.copyload, i1 false), !noalias !1021
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %_RNvCs6EuPS8vUgp3_9uu_mktemp32find_last_contiguous_block_of_xs.exit, %bb.aa, %bb.y
  %.sroa.19.0 = phi i64 [ 0, %bb.y ], [ %.sroa.17.0.copyload, %bb.aa ], [ 0, %_RNvCs6EuPS8vUgp3_9uu_mktemp32find_last_contiguous_block_of_xs.exit ] ; 11 uses
  %.sroa.11.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.y ], [ %i.ce, %bb.aa ], [ inttoptr (i64 1 to ptr), %_RNvCs6EuPS8vUgp3_9uu_mktemp32find_last_contiguous_block_of_xs.exit ] ; 7 uses
  %i.cg = icmp eq i64 %.sroa.03.0.i.lcssa, 0
  br i1 %i.cg, label %.thread425, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit
  %.not.i189 = icmp ult i64 %.sroa.03.0.i.lcssa, %i.bb
  br i1 %.not.i189, label %bb.ac, label %.split.i190

.split.i190:                                      ; preds = %bb.ab
  %i.ch = icmp eq i64 %.sroa.03.0.i.lcssa, %i.bb
  br i1 %i.ch, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.03.0.i.lcssa
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !1022, !noundef !4
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %.split.i190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.11.0, i64 noundef %.sroa.19.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %.sroa.03.0.i.lcssa) #23
  br i1 %i.q, label %bb.af, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

.thread425:                                       ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.11.0, i64 noundef %.sroa.19.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %.sroa.03.0.i.lcssa) #23
  br label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

bb.ae:                                            ; preds = %bb.ac, %.split.i190
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.bb, i64 noundef 0, i64 noundef %.sroa.03.0.i.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #24
  unreachable

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread: ; preds = %bb.ag, %.thread425, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, %bb.ad
  br i1 %.not137, label %bb.ah, label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.cl = icmp samesign ult i64 %.sroa.03.0.i.lcssa, 16
  br i1 %i.cl, label %.lr.ph.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ag
  %.sroa.01.05.i.i = phi i64 [ %i.cp, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.01.05.i.i
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !1025, !noundef !4
  %i.co = icmp eq i8 %i.cn, 47
  br i1 %i.co, label %.critedge149, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.cp = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cp, %.sroa.03.0.i.lcssa
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.af
  %i.cq = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef range(i64 0, -9223372036854775808) %.sroa.03.0.i.lcssa) #23
  %i.cr = extractvalue { i64, i64 } %i.cq, 0
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %.critedge149, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

bb.ah:                                            ; preds = %bb.ai, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !4 ; 3 uses
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cw) #23
  %i.cx = load i64, ptr %i.k, align 8, !range !226, !noundef !4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %.not.i192 = icmp eq i64 %i.db, 0
  br i1 %.not.i192, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195: ; preds = %bb.ah
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 -1
  %rhsc384 = load i8, ptr %i.dd, align 1
  %i.de = icmp eq i8 %rhsc384, 47
  br i1 %i.de, label %bb.aj, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread

bb.ai:                                            ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  %i.df = tail call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %.sroa.03.0.i.lcssa) #23
  br i1 %i.df, label %.critedge149, label %bb.ah

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread: ; preds = %bb.ah, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195
  %.not.i196 = icmp samesign ult i64 %.sroa.03.0.i.lcssa, 2
  br i1 %.not.i196, label %bb.ak, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit199

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit199: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread
  %i.dg = getelementptr i8, ptr %i.bc, i64 %.sroa.03.0.i.lcssa ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -2
  %i.di = load i16, ptr %i.dh, align 1
  %i.dj = icmp ne i16 11823, %i.di
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203, label %.thread

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit199
  %i.dm = add i64 %.sroa.03.0.i.lcssa, -1         ; 2 uses
  %i.dn = getelementptr i8, ptr %i.dg, i64 -1
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !1030, !noundef !4
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %select.unfold, label %.split126

bb.aj:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %bb.ax

bb.ak:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread
  %i.dq = icmp eq i64 %.sroa.03.0.i.lcssa, 1
  br i1 %i.dq, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %lhsc = load i8, ptr %i.bc, align 1
  %i.dr = icmp eq i8 %lhsc, 46
  br i1 %i.dr, label %select.unfold, label %.thread

.thread:                                          ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit199, %bb.ak, %bb.al
  %i.ds = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cw) #23 ; 2 uses
  %i.dt = extractvalue { ptr, i64 } %i.ds, 0      ; 2 uses
  %.not141 = icmp eq ptr %i.dt, null
  br i1 %.not141, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread
  %i.du = extractvalue { ptr, i64 } %i.ds, 1
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef %i.du) #23
  br label %bb.ao

bb.an:                                            ; preds = %.thread
  store i64 0, ptr %i.j, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.598.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dv = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %i.cw) #23 ; 2 uses
  %i.dw = extractvalue { ptr, i64 } %i.dv, 0      ; 2 uses
  %.not142 = icmp eq ptr %i.dw, null
  br i1 %.not142, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dx = extractvalue { ptr, i64 } %i.dv, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef %i.dx) #23
  %i.dy = load i64, ptr %i.i, align 8, !range !226, !noundef !4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8            ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ec = load i64, ptr %i.eb, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ec, i64 noundef 1, i64 noundef 1) #23
  %i.ed = load i64, ptr %i.c, align 8, !range !290, !noundef !4
  %i.ee = trunc nuw i64 %i.ed to i1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !291, !noundef !4 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ee, label %bb.aq, label %bb.ar, !prof !366

bb.aq:                                            ; preds = %bb.ap
  %i.ei = load i64, ptr %i.eh, align 8
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.eg, i64 %i.ei) #26
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ej = load ptr, ptr %i.eh, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ek = icmp ule i64 %i.ec, %i.eg
  tail call void @llvm.assume(i1 %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not144 = icmp eq i64 %i.ec, 0
  br i1 %.not144, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.au, %bb.ar
  %i.el = icmp sgt i64 %i.dy, 0
  br i1 %i.el, label %bb.at, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ea) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ea, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1033
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ax

bb.au:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr nonnull align 1 %i.ea, i64 %i.ec, i1 false)
  br label %bb.as

select.unfold:                                    ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203, %bb.al
  %.ph = phi i64 [ 0, %bb.al ], [ %i.dm, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203 ]
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.11.0, i64 noundef %.sroa.19.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %.ph) #23
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !1038
  %i.em = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #23, !noalias !1038 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.av, label %bb.aw

.split126:                                        ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %.sroa.03.0.i.lcssa, i64 noundef 0, i64 noundef %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #24
  unreachable

bb.av:                                            ; preds = %select.unfold
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #26
  unreachable

bb.aw:                                            ; preds = %select.unfold
  store i8 46, ptr %i.em, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit, %bb.ao, %bb.aw, %bb.aj
  %.sroa.0.0.i194370 = phi i1 [ true, %bb.aj ], [ false, %bb.aw ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit ], [ false, %bb.ao ] ; 2 uses
  %.sroa.066.1 = phi i64 [ 0, %bb.aj ], [ 1, %bb.aw ], [ %i.eg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.570.1 = phi ptr [ inttoptr (i64 1 to ptr), %bb.aj ], [ %i.em, %bb.aw ], [ %i.ej, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit ], [ inttoptr (i64 1 to ptr), %bb.ao ] ; 2 uses
  %.sroa.677.1 = phi i64 [ 0, %bb.aj ], [ 1, %bb.aw ], [ %i.ec, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit ], [ 0, %bb.ao ]
  %i.eo = icmp sgt i64 %i.cx, 0
  br i1 %i.eo, label %bb.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1041
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.0279.0.copyload = load i64, ptr %i.j, align 8 ; 3 uses
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6281.0.copyload = load ptr, ptr %.sroa.6281.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7284.0.copyload = load i64, ptr %.sroa.7284.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not135, label %_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6.sroa.5.0.copyload = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1046
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload) ]
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.sroa.0.0.copyload, i64 noundef %.sroa.6.sroa.5.0.copyload) #23, !noalias !1046
  %i.ep = load i64, ptr %i.b, align 8, !range !226, !noalias !1046, !noundef !4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !1046 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noalias !1046 ; 7 uses
  %.not.i.i211 = icmp slt i64 %i.et, 0
  br i1 %.not.i.i211, label %bb.bb, label %bb.ba, !prof !437

bb.ba:                                            ; preds = %bb.az
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ba
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !1050
  %i.ev = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.et, i64 noundef range(i64 1, 9) 1) #23, !noalias !1050 ; 3 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.az
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.az ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.et) #26, !noalias !1046
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i: ; preds = %bb.be, %bb.ba
  %i.ex = phi ptr [ %i.ev, %bb.be ], [ inttoptr (i64 1 to ptr), %bb.ba ] ; 2 uses
  %i.ey = icmp sgt i64 %i.ep, 0
  br i1 %i.ey, label %bb.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i

bb.bc:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.er, i64 noundef %i.ep, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1053
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i: ; preds = %bb.bc, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1046
  %i.ez = icmp eq i64 %i.an, 0
  br i1 %i.ez, label %_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1058
  br label %_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit

bb.be:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr nonnull align 1 %i.er, i64 %i.et, i1 false), !noalias !1046
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i

_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210, %bb.bd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i
  %.sink432 = phi i64 [ %i.et, %bb.bd ], [ %i.et, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210 ] ; 2 uses
  %.sink431 = phi ptr [ %i.ex, %bb.bd ], [ %i.ex, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i ], [ inttoptr (i64 1 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210 ]
  store i64 %.sink432, ptr %i.h, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sink431, ptr %.sroa.4110.0..sroa_idx, align 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sink432, ptr %.sroa.5111.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fa = load i64, ptr %i.be, align 8, !noundef !4 ; 5 uses
  %i.fb = icmp eq i64 %.sroa.03.0.i.i434, 0
  br i1 %i.fb, label %.split128, label %bb.bf

end_hunk_0
