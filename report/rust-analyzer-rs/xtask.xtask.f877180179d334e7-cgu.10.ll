Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.10?download=true
inline.NumInlined: 548
inline.NumDeleted: 235
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCslkzCjlEuW1f_5xtask:bb.a
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #29
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #29
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !26
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  br i1 %2, label %bb.g, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %bb.h

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCslkzCjlEuW1f_5xtask4distNtB4_6Target3get(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.36 = alloca [16 x i8], align 8           ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 11 uses
  %i.m = alloca [24 x i8], align 8                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvNtCslkzCjlEuW1f_5xtask4util13detect_target(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull align 8 %3)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !6 ; 4 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.e, %bb.a
  %i.v = phi i64 [ %i.ak, %bb.e ], [ 0, %bb.a ]   ; 4 uses
  %i.w = sub nuw i64 %i.u, %i.v                   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  %i.y = icmp samesign ult i64 %i.w, 16
  br i1 %i.y, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i
  %i.z = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef range(i64 0, -9223372036854775808) %i.w)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.w, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.aa = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ab = insertvalue { i64, i64 } %i.aa, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.af, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.05.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !932, !noalias !933, !noundef !6
  %i.ae = icmp eq i8 %i.ad, 46
  br i1 %i.ae, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.af = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.af, %i.w
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.b, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.ab, %._crit_edge.i.i.i ], [ %i.z, %bb.b ] ; 2 uses
  %i.ag = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  %i.ai = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.aj = add i64 %i.v, 1
  %i.ak = add i64 %i.aj, %i.ai                    ; 4 uses
  %.not12.i.i = icmp ugt i64 %i.ak, %i.u
  %i.al = add i64 %i.ai, %i.v                     ; 9 uses
  %or.cond.i.not.i = icmp ult i64 %i.al, %i.u
  br i1 %or.cond.i.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  br i1 %.not12.i.i, label %bb.j, label %.lr.ph.split.i.i

bb.f:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.al
  %lhsc.i = load i8, ptr %i.am, align 1, !alias.scope !934
  %i.an = icmp eq i8 %lhsc.i, 46
  br i1 %i.an, label %bb.g, label %bb.e

.body83.thread.a:                                 ; preds = %bb.aw, %bb.ax, %.body83, %bb.bi
  %.pn54 = phi { ptr, i32 } [ %.pn51.pn141, %bb.bi ], [ %.pn51, %.body83 ], [ %i.cr, %bb.ax ], [ %i.cr, %bb.aw ] ; 2 uses
  br i1 %.sroa.08.1, label %.thread, label %common.resume

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.l
  %lpad.loopexit.split-lp168 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = sub nuw i64 %i.u, %i.ak                 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.not.i = icmp slt i64 %i.al, 0
  br i1 %.not.i, label %bb.l, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp eq i64 %i.al, 0
  br i1 %i.aq, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread120, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !935
  %i.ar = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.al, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !935 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.l, label %bb.o

bb.j:                                             ; preds = %bb.e, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit61.thread131, %bb.j
  %.sroa.3.sroa.2.0 = phi i64 [ %i.ao, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit61.thread131 ], [ undef, %bb.j ]
  %.sroa.3.sroa.0.0 = phi ptr [ %i.ay, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit61.thread131 ], [ undef, %bb.j ]
  %.sroa.08.1 = phi i1 [ true, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit61.thread131 ], [ false, %bb.j ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.ao, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit61.thread131 ], [ -1, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.3.sroa.0.0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.3.sroa.2.0, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 6)
          to label %bb.s unwind label %.body83.thread151

bb.l:                                             ; preds = %bb.g, %bb.i
  %.sroa.4.0.ph = phi i64 [ 1, %bb.i ], [ 0, %bb.g ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.al) #30
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread120: ; preds = %bb.h, %bb.o
  %i.at = phi ptr [ %i.ar, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.h ]
  store i64 %i.al, ptr %i.n, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.at, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.al, ptr %.sroa.6.0..sroa_idx, align 8
  %.not.i59 = icmp slt i64 %i.ao, 0
  br i1 %.not.i59, label %bb.q, label %bb.m, !prof !26

bb.m:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread120
  %i.au = icmp eq i64 %i.ao, 0
  br i1 %i.au, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit61.thread131, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !936
  %i.av = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ao, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !936 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.s, i64 %i.al, i1 false)
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread120

bb.p:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #31
          to label %.thread unwind label %bb.bf

bb.q:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread120, %bb.n
  %.sroa.498.0.ph = phi i64 [ 1, %bb.n ], [ 0, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit.thread120 ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.498.0.ph, i64 %i.ao) #30
          to label %bb.bh unwind label %bb.p

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit61.thread131: ; preds = %bb.m, %bb.r
  %i.ay = phi ptr [ %i.av, %bb.r ], [ inttoptr (i64 1 to ptr), %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.k

bb.r:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 1 %i.ap, i64 %i.ao, i1 false)
  br label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask.exit61.thread131

.body83:                                          ; preds = %.body67
  br i1 %cond, label %.body83.thread.a, label %.thread137

.body83.thread151:                                ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.thread137

bb.s:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !6
  invoke void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinRNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.w ], [ %i.be, %bb.u ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #31
          to label %.thread137 unwind label %bb.bf

bb.u:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !6, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !6
  invoke void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 7)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #31
          to label %bb.t unwind label %bb.bf

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !937 ; 2 uses
  %i.bl = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.bl, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val3.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !938, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !939
  br label %.body

bb.aa:                                            ; preds = %bb.x
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !937 ; 2 uses
  %i.bm = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val1.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !938, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !940
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit

.body:                                            ; preds = %bb.y, %bb.z
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #31
          to label %.body67 unwind label %bb.bf

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.ab, %bb.aa
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i62 = load i64, ptr %i.j, align 8, !alias.scope !941 ; 2 uses
  %i.bo = icmp eq i64 %.val2.i.i.i.i62, 0
  br i1 %i.bo, label %.body67, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val3.i.i.i.i63 = load ptr, ptr %i.ba, align 8, !alias.scope !942, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i63, i64 noundef %.val2.i.i.i.i62, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !943
  br label %.body67

bb.ae:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit
  %.val.i.i.i.i65 = load i64, ptr %i.j, align 8, !alias.scope !941 ; 2 uses
  %i.bp = icmp eq i64 %.val.i.i.i.i65, 0
  br i1 %i.bp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit69, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val1.i.i.i.i66 = load ptr, ptr %i.ba, align 8, !alias.scope !942, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i66, i64 noundef %.val.i.i.i.i65, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !944
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit69

.body67:                                          ; preds = %bb.as, %bb.at, %bb.ad, %bb.ac, %bb.ag, %bb.bg, %bb.am, %.body
  %.pn51 = phi { ptr, i32 } [ %i.bk, %.body ], [ %.pn49, %bb.bg ], [ %i.cg, %bb.am ], [ %i.bn, %bb.ac ], [ %i.bn, %bb.ad ], [ %i.bq, %bb.ag ], [ %i.co, %bb.at ], [ %i.co, %bb.as ] ; 2 uses
  %cond = phi i1 [ false, %.body ], [ false, %bb.bg ], [ false, %bb.am ], [ false, %bb.ac ], [ false, %bb.ad ], [ false, %bb.ag ], [ true, %bb.at ], [ true, %bb.as ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #31
          to label %.body83 unwind label %bb.bf

bb.ag:                                            ; preds = %bb.ak, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit69
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body67

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit69: ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !6
  %i.bv = invoke fastcc noundef zeroext i1 @_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bs, i64 noundef %i.bu)
          to label %bb.ah unwind label %bb.ag

bb.ah:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit69
  br i1 %i.bv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !945
  %i.bw = call noundef dereferenceable_or_null(4) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !945 ; 4 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah, %bb.an
  %.sroa.425.0 = phi i64 [ 4, %bb.an ], [ 0, %bb.ah ] ; 2 uses
  %.sroa.3.0 = phi ptr [ %i.bw, %bb.an ], [ inttoptr (i64 1 to ptr), %bb.ah ]
  %.sroa.04.0 = phi i64 [ %.sroa.04.0.copyload5, %bb.an ], [ -1, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.425.0, ptr %i.i, align 8
  %.sroa.3.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %.sroa.3.0, ptr %.sroa.3.0..sroa_idx22, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.425.0, ptr %.sroa.425.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.04.0, ptr %i.h, align 8
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !6, !noundef !6
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @39, ptr noundef nonnull %i.c)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit unwind label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #30
          to label %bb.bh unwind label %bb.ag

bb.al:                                            ; preds = %bb.ai
  store i32 1702389038, ptr %i.bw, align 1
  store i64 4, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 4, ptr %.sroa.617.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !6, !noundef !6
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !6
  invoke void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinReECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.cf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 17)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #31
          to label %.body67 unwind label %bb.bf

bb.an:                                            ; preds = %bb.al
  %.sroa.04.0.copyload5 = load i64, ptr %i.f, align 8
  %.sroa.36.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36.0..sroa_idx7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aj

bb.ao:                                            ; preds = %bb.ar, %bb.ap
  %.pn49 = phi { ptr, i32 } [ %i.cj, %bb.ar ], [ %i.ch, %bb.ap ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscAsMj0W7j8b_3std4path7PathBufEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #31
          to label %bb.bg unwind label %bb.bf

bb.ap:                                            ; preds = %bb.aj, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RINvMs16_NtCscAsMj0W7j8b_3std4pathNtB7_4Path4joinNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.aq unwind label %bb.ap

bb.aq:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.p, ptr %i.a, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.ci, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.441.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @40, ptr noundef nonnull %i.a)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit74 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #31
          to label %bb.ao unwind label %bb.bf

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit74: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.au unwind label %bb.as

bb.as:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit74
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.i, align 8, !alias.scope !946 ; 2 uses
  %i.cp = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cp, label %.body67, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.val3.i.i = load ptr, ptr %.sroa.3.0..sroa_idx22, align 8, !alias.scope !947, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !948
  br label %.body67

bb.au:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslkzCjlEuW1f_5xtask.exit74
  %.val.i.i = load i64, ptr %i.i, align 8, !alias.scope !946 ; 2 uses
  %i.cq = icmp eq i64 %.val.i.i, 0
  br i1 %i.cq, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val1.i.i = load ptr, ptr %.sroa.3.0..sroa_idx22, align 8, !alias.scope !947, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !949
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit: ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.ay unwind label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i78 = load i64, ptr %i.l, align 8, !alias.scope !950 ; 2 uses
  %i.cs = icmp eq i64 %.val2.i.i.i.i78, 0
  br i1 %i.cs, label %.body83.thread.a, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.val3.i.i.i.i79 = load ptr, ptr %i.by, align 8, !alias.scope !951, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i79, i64 noundef %.val2.i.i.i.i78, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !952
  br label %.body83.thread.a

bb.ay:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit
  %.val.i.i.i.i81 = load i64, ptr %i.l, align 8, !alias.scope !950 ; 2 uses
  %i.ct = icmp eq i64 %.val.i.i.i.i81, 0
  br i1 %i.ct, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit85, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.val1.i.i.i.i82 = load ptr, ptr %i.by, align 8, !alias.scope !951, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i82, i64 noundef %.val.i.i.i.i81, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !953
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit85

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit85: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %.sroa.08.1, label %bb.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit91

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit91: ; preds = %bb.be, %bb.bd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

bb.ba:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std4path7PathBufECslkzCjlEuW1f_5xtask.exit85
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.bd unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i86 = load i64, ptr %i.q, align 8, !alias.scope !954 ; 2 uses
  %i.cv = icmp eq i64 %.val2.i.i86, 0
  br i1 %i.cv, label %common.resume, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val3.i.i87 = load ptr, ptr %i.r, align 8, !alias.scope !955, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i87, i64 noundef %.val2.i.i86, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !956
  br label %common.resume

bb.bd:                                            ; preds = %bb.ba
  %.val.i.i89 = load i64, ptr %i.q, align 8, !alias.scope !954 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i89, 0
  br i1 %i.cw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit91, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %.val1.i.i90 = load ptr, ptr %i.r, align 8, !alias.scope !955, !nonnull !6, !noundef !6
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i90, i64 noundef %.val.i.i89, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !957
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit91

common.resume:                                    ; preds = %.body83.thread.a, %.thread, %bb.bb, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.bb ], [ %i.cu, %bb.bc ], [ %.pn54109, %.thread ], [ %.pn54, %.body83.thread.a ]
  resume { ptr, i32 } %common.resume.op

bb.bf:                                            ; preds = %.thread, %bb.bi, %.thread137, %bb.bg, %bb.ar, %bb.ao, %bb.am, %.body67, %.body, %bb.w, %bb.t, %bb.p
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bg:                                            ; preds = %bb.ao
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #31
          to label %.body67 unwind label %bb.bf

bb.bh:                                            ; preds = %bb.ak, %bb.q, %bb.l
  unreachable

.thread137:                                       ; preds = %.body83.thread151, %bb.t, %.body83
  %.pn51.pn141 = phi { ptr, i32 } [ %.pn51, %.body83 ], [ %.pn, %bb.t ], [ %i.az, %.body83.thread151 ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #31
          to label %bb.bi unwind label %bb.bf

bb.bi:                                            ; preds = %.thread137
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #31
          to label %.body83.thread.a unwind label %bb.bf

.thread:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %.body83.thread.a
  %.pn54109 = phi { ptr, i32 } [ %.pn54, %.body83.thread.a ], [ %i.ax, %bb.p ], [ %lpad.loopexit.split-lp168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #31
          to label %common.resume unwind label %bb.bf
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs8yNfvVM1dno_3zip5writeINtB5_16GenericZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEE19prepare_next_writerCslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(120) %1, i16 noundef range(i16 0, 3) %2, i16 %3, i64 noundef range(i64 0, 2) %4, i64 %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull ptr @_RINvMNtNtCsbSS6DM8SDEO_5alloc2io5errorNtNtNtCshzWfHUSfYae_4core2io5error5Error3newReECscAsMj0W7j8b_3std(i8 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 28) #32
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  switch i16 %2, label %default.unreachable51 [
    i16 0, label %bb.e
    i16 1, label %bb.f
    i16 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.h, %bb.i, %bb.n, %bb.m, %bb.l, %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void

default.unreachable51:                            ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.h, label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.e = trunc nuw i64 %4 to i1
  %. = select i1 %i.e, i64 %5, i64 6              ; 2 uses
  %i.f = add i64 %., -10
  %or.cond = icmp ult i64 %i.f, -9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br i1 %or.cond, label %bb.l, label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.g = icmp eq i16 %3, 99
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.g, label %bb.m, label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @43, ptr %i.i, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.e
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @44, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @44, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 29, ptr %i.k, align 8
  store i64 -9223372036854775806, ptr %i.a, align 8
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs8yNfvVM1dno_3zip6result8ZipErrorECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.l = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #29 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.k, label %_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #30
  unreachable

_RNvNtCsbSS6DM8SDEO_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.j
  %i.n = trunc nuw nsw i64 %. to i32
  store i32 %i.n, ptr %i.l, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @45, ptr %i.p, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 ptrtoint (ptr @44 to i64), ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.548.0..sroa_idx, align 8
  br label %bb.d

bb.m:                                             ; preds = %bb.g
  store ptr @46, ptr %.sroa.432.0..sroa_idx, align 8
  store i64 66, ptr %.sroa.533.0..sroa_idx, align 8
  br label %bb.d

bb.n:                                             ; preds = %bb.g
  store ptr @47, ptr %.sroa.432.0..sroa_idx, align 8
  store i64 23, ptr %.sroa.533.0..sroa_idx, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs8yNfvVM1dno_3zip5writeINtB5_16GenericZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEE6unwrapCslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !17
  %.not = icmp eq i64 %i.d, -1
  %or.cond = select i1 %i.b, i1 %.not, i1 false, !prof !28
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull inttoptr (i64 115 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #30
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %1, align 8, !range !18, !noundef !6
  %i.h = icmp eq i64 %i.g, -9223372036854775807
  br i1 %i.h, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.c, align 8, !range !17, !noundef !6
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8yNfvVM1dno_3zip5write16GenericZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(120) %1) #31
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.i, %bb.g, %bb.f
  resume { ptr, i32 } %i.f

bb.i:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8yNfvVM1dno_3zip5write14MaybeEncryptedINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c) #31
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsd_NtCs8yNfvVM1dno_3zip5writeINtB5_16GenericZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEE9get_plainCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef readonly align 8 captures(ret: address, provenance) dereferenceable(120) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !17
  %.not = icmp eq i64 %i.d, -1
  %or.cond = select i1 %i.b, i1 %.not, i1 false, !prof !28
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @48, ptr noundef nonnull inttoptr (i64 115 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsd_NtCs8yNfvVM1dno_3zip5writeINtB5_16GenericZipWriterINtNtNtNtCsbSS6DM8SDEO_5alloc2io8buffered9bufwriter9BufWriterNtNtCscAsMj0W7j8b_3std2fs4FileEE9switch_toCslkzCjlEuW1f_5xtask(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(120) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [24 x i8], align 8            ; 4 uses
  %.sroa.429 = alloca [88 x i8], align 8          ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.414 = alloca [56 x i8], align 8          ; 3 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [120 x i8], align 8               ; 9 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.6.sroa.0.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
end_hunk_0
