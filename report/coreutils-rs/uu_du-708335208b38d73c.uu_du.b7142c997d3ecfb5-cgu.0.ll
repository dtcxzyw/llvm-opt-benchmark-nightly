Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_du-708335208b38d73c.uu_du.b7142c997d3ecfb5-cgu.0?download=true
inline.NumInlined: 1742
inline.NumDeleted: 893
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvCsfIwuYbgPzJV_5uu_du16parse_time_style:bb.a
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #25
  %.sroa.02.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCs2vKOLqTMYjT_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 10) #25
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !8
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx131, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 4 uses
  %.not.i = icmp samesign ult i64 %.sroa.10.0.copyload, 6
  br i1 %.not.i, label %.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit: ; preds = %bb.d
  %i.f = load i32, ptr %.sroa.6.0.copyload, align 1
  %i.g = xor i32 1769172848, %i.f
  %i.h = getelementptr i8, ptr %.sroa.6.0.copyload, i64 4
  %i.i = load i16, ptr %i.h, align 1
  %i.j = zext i16 %i.i to i32
  %i.k = xor i32 11640, %i.j
  %i.l = or i32 %i.g, %i.k
  %i.m = icmp ne i32 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %bcmp.i.i.fr = freeze i32 %i.n
  %i.o = icmp eq i32 %bcmp.i.i.fr, 0
  %i.p = add nsw i64 %.sroa.10.0.copyload, -6
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 6
  br i1 %i.o, label %.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit85

.thread:                                          ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit, %bb.d
  %i.r = phi i64 [ %.sroa.10.0.copyload, %bb.d ], [ %i.p, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit ] ; 2 uses
  %i.s = phi ptr [ %.sroa.6.0.copyload, %bb.d ], [ %i.q, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit ]
  %.not.i82 = icmp eq i64 %i.r, 0
  br i1 %.not.i82, label %.thread207, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit85

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit85: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit, %.thread
  %i.t = phi ptr [ %i.s, %.thread ], [ %.sroa.6.0.copyload, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit ] ; 6 uses
  %i.u = phi i64 [ %i.r, %.thread ], [ %.sroa.10.0.copyload, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit ] ; 7 uses
  %rhsc = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %rhsc, 43
  br i1 %i.v, label %.lr.ph.split.i.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit

.lr.ph.split.i.i:                                 ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit85, %.lr.ph.split.i.i.backedge
  %i.w = phi i64 [ %i.al, %.lr.ph.split.i.i.backedge ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit85 ] ; 5 uses
  %i.x = sub nuw i64 %i.u, %i.w                   ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.z = icmp samesign ult i64 %i.x, 16
  br i1 %i.z, label %.preheader.i.i.i, label %bb.e

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i
  %i.aa = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef range(i64 0, -9223372036854775808) %i.x) #25, !noalias !1342
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.x, %bb.f ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.f ], [ 1, %.lr.ph.i.i.i ]
  %i.ab = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.ac = insertvalue { i64, i64 } %i.ab, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.f
  %.sroa.01.05.i.i.i = phi i64 [ %i.ag, %bb.f ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.05.i.i.i
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !1343, !noalias !1342, !noundef !8
  %i.af = icmp eq i8 %i.ae, 10
  br i1 %i.af, label %._crit_edge.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ag, %i.x
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.e
  %.merged.i.i.i = phi { i64, i64 } [ %i.ac, %._crit_edge.i.i.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.ah = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit

bb.g:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i
  %i.aj = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.ak = add i64 %i.w, 1
  %i.al = add i64 %i.ak, %i.aj                    ; 2 uses
  %.not12.i.i = icmp ugt i64 %i.al, %i.u          ; 2 uses
  %i.am = add i64 %i.w, %i.aj
  %or.cond.i.i.not = icmp ult i64 %i.am, %i.u
  br i1 %or.cond.i.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not12.i.i, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit, label %.lr.ph.split.i.i.backedge

.lr.ph.split.i.i.backedge:                        ; preds = %bb.h, %bb.i
  br label %.lr.ph.split.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = add i64 %i.w, %i.aj                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.an
  %lhsc = load i8, ptr %i.ao, align 1
  %i.ap = icmp eq i8 %lhsc, 10                    ; 2 uses
  %brmerge = or i1 %i.ap, %.not12.i.i
  br i1 %brmerge, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit.split.loop.exit, label %.lr.ph.split.i.i.backedge

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit.split.loop.exit, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i, %bb.h, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit85
  %.sroa.8.1 = phi i64 [ %i.u, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit85 ], [ %.mux.le, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit.split.loop.exit ], [ %i.u, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i ], [ %i.u, %bb.h ] ; 7 uses
  %i.aq = icmp eq i64 %.sroa.8.1, 6
  br i1 %i.aq, label %bb.k, label %.split66

.split66:                                         ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit
  %.not.i87 = icmp slt i64 %.sroa.8.1, 0
  br i1 %.not.i87, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit, label %bb.j, !prof !1344

bb.j:                                             ; preds = %.split66
  %i.ar = icmp eq i64 %.sroa.8.1, 0
  br i1 %i.ar, label %.thread207, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.j
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1345
  %i.as = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.8.1, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1345 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit, label %bb.o

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit.split.loop.exit: ; preds = %bb.i
  %.mux.le = select i1 %i.ap, i64 %i.an, i64 %i.u
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit

bb.k:                                             ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalcE4nextCsfIwuYbgPzJV_5uu_du.exit
  %i.au = load i32, ptr %i.t, align 1
  %i.av = xor i32 %i.au, 1633906540
  %i.aw = getelementptr i8, ptr %i.t, i64 4
  %i.ax = load i16, ptr %i.aw, align 1
  %i.ay = zext i16 %i.ax to i32
  %i.az = xor i32 %i.ay, 25964
  %i.ba = or i32 %i.av, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %.split

.split:                                           ; preds = %bb.k
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1346
  %i.be = tail call noundef dereferenceable_or_null(6) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 6, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1346 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsfIwuYbgPzJV_5uu_du.exit103, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1347
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsfIwuYbgPzJV_5uu_du.exit103

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, %.split66, %.split
  %.sroa.6145.0 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 1, %.split ], [ 0, %.split66 ]
  %.sroa.14.0 = phi i64 [ %.sroa.8.1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 6, %.split ], [ undef, %.split66 ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.6145.0, i64 %.sroa.14.0) #30
  unreachable

.thread207:                                       ; preds = %.thread, %bb.j, %bb.o
  %i.bh = phi ptr [ %.sroa.14.0.ph.in, %bb.o ], [ inttoptr (i64 1 to ptr), %bb.j ], [ inttoptr (i64 1 to ptr), %.thread ]
  %.sroa.6145.0.ph213 = phi i64 [ %.sroa.8.1, %bb.o ], [ 0, %bb.j ], [ 0, %.thread ] ; 2 uses
  %i.bi = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.bi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit95, label %bb.n

bb.n:                                             ; preds = %.thread207
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1348
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit95

bb.o:                                             ; preds = %.split, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.14.0.ph.in = phi ptr [ %i.as, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ %i.be, %.split ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.14.0.ph.in, ptr nonnull align 1 %i.t, i64 %.sroa.8.1, i1 false)
  br label %.thread207

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit95: ; preds = %bb.n, %.thread207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit95, %bb.b
  %.sroa.7.sroa.5.0 = phi i64 [ %.sroa.7.sroa.5.0.copyload, %bb.b ], [ %.sroa.6145.0.ph213, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit95 ] ; 4 uses
  %.sroa.7.sroa.0.0 = phi ptr [ %.sroa.7.sroa.0.0.copyload, %bb.b ], [ %i.bh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit95 ] ; 11 uses
  %.sroa.02.0 = phi i64 [ %.sroa.02.0.copyload, %bb.b ], [ %.sroa.6145.0.ph213, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit95 ] ; 3 uses
  switch i64 %.sroa.7.sroa.5.0, label %2 [
    i64 8, label %bb.t
    i64 3, label %bb.z
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.thread: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i98 = load i64, ptr %i.bj, align 8, !range !15, !alias.scope !1349, !noundef !8 ; 2 uses
  %i.bk = icmp sgt i64 %.val.i98, 0
  br i1 %i.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.sink.split.i99, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsfIwuYbgPzJV_5uu_du.exit103

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.sink.split.i99: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i101 = load ptr, ptr %i.bl, align 8, !alias.scope !1349, !nonnull !8, !noundef !8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i101, i64 noundef %.val.i98, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1349
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsfIwuYbgPzJV_5uu_du.exit103

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsfIwuYbgPzJV_5uu_du.exit103: ; preds = %bb.l, %bb.m, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.sink.split.i99, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, align 8, !nonnull !8, !noundef !8
  %i.bn = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, i64 8), align 8, !noundef !8 ; 7 uses
  %.not.i104 = icmp slt i64 %i.bn, 0
  br i1 %.not.i104, label %bb.r, label %bb.q, !prof !13

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsfIwuYbgPzJV_5uu_du.exit103
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit107.thread219, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i105

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i105: ; preds = %bb.q
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1350
  %i.bp = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1350 ; 3 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsfIwuYbgPzJV_5uu_du.exit103, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i105
  %.sroa.4148.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i105 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsfIwuYbgPzJV_5uu_du.exit103 ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4148.0.ph, i64 %i.bn) #30
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit107.thread219: ; preds = %bb.q, %bb.s
  %i.br = phi ptr [ %i.bp, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.q ]
  store i64 %i.bn, ptr %0, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %.sroa.541.0..sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit130

bb.s:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i105
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %i.bm, i64 %i.bn, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit107.thread219

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit130: ; preds = %bb.ah, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit107.thread219
  ret void

bb.t:                                             ; preds = %bb.p
  %i.bs = load i64, ptr %.sroa.7.sroa.0.0, align 1
  %i.bt = icmp ne i64 %i.bs, 8030878204345218406
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bw = load ptr, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8FULL_ISO, align 8, !nonnull !8, !noundef !8
  %i.bx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8FULL_ISO, i64 8), align 8, !noundef !8 ; 7 uses
  %.not.i108 = icmp slt i64 %i.bx, 0
  br i1 %.not.i108, label %bb.am, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i109

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i109: ; preds = %bb.v
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1351
  %i.bz = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1351 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.am, label %bb.an

bb.w:                                             ; preds = %bb.t
  %i.cb = load i64, ptr %.sroa.7.sroa.0.0, align 1
  %i.cc = icmp ne i64 %i.cb, 8030878204261461868
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %.thread236

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, align 8, !nonnull !8, !noundef !8
  %i.cg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format8LONG_ISO, i64 8), align 8, !noundef !8 ; 7 uses
  %.not.i112 = icmp slt i64 %i.cg, 0
  br i1 %.not.i112, label %bb.ak, label %bb.y, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i113

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i113: ; preds = %bb.y
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1352
  %i.ci = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1352 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.ak, label %bb.al

bb.z:                                             ; preds = %bb.p
  %i.ck = load i16, ptr %.sroa.7.sroa.0.0, align 1
  %i.cl = xor i16 %i.ck, 29545
  %i.cm = getelementptr i8, ptr %.sroa.7.sroa.0.0, i64 2
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i16
  %i.cp = xor i16 %i.co, 111
  %i.cq = or i16 %i.cl, %i.cp
  %i.cr = icmp ne i16 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.aa, label %.thread236

.thread236:                                       ; preds = %bb.w, %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0) ]
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119

2:                                                ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0) ]
  %.not.i116 = icmp eq i64 %.sroa.7.sroa.5.0, 0
  br i1 %.not.i116, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119: ; preds = %2, %.thread236
  %rhsc275 = load i8, ptr %.sroa.7.sroa.0.0, align 1
  %i.cu = icmp eq i8 %rhsc275, 43
  br i1 %i.cu, label %bb.ad, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119.thread

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format3ISO, align 8, !nonnull !8, !noundef !8
  %i.cw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4time6format3ISO, i64 8), align 8, !noundef !8 ; 7 uses
  %.not.i120 = icmp slt i64 %i.cw, 0
  br i1 %.not.i120, label %bb.ai, label %bb.ab, !prof !13

bb.ab:                                            ; preds = %bb.aa
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i121

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i121: ; preds = %bb.ab
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1353
  %i.cy = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.cw, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1353 ; 3 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ai, label %bb.aj

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119.thread: ; preds = %2, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1354
  %i.da = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #25, !noalias !1354 ; 6 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.ac, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.ac:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119.thread
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30, !noalias !1354
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119.thread
  store i64 2, ptr %i.da, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %.sroa.02.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr %.sroa.7.sroa.0.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 %.sroa.7.sroa.5.0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @74, ptr %i.dd, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit130

bb.ad:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCsfIwuYbgPzJV_5uu_du.exit119
  %i.de = add i64 %.sroa.7.sroa.5.0, -1           ; 7 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.0.0, i64 1
  %.not.i124 = icmp slt i64 %i.de, 0
  br i1 %.not.i124, label %bb.af, label %bb.ae, !prof !13

bb.ae:                                            ; preds = %bb.ad
  %i.dg = icmp eq i64 %i.de, 0
  br i1 %i.dg, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i125

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i125: ; preds = %bb.ae
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1355
  %i.dh = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1355 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ad, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i125
  %.sroa.4164.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i125 ], [ 0, %bb.ad ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4164.0.ph, i64 %i.de) #30
  unreachable

bb.ag:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i125
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull align 1 %i.df, i64 %i.de, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255: ; preds = %bb.ag, %bb.ae, %bb.an, %bb.v, %bb.al, %bb.y, %bb.aj, %bb.ab
  %.sink301 = phi i64 [ %i.cg, %bb.al ], [ %i.cw, %bb.aj ], [ %i.bx, %bb.an ], [ %i.cw, %bb.ab ], [ %i.cg, %bb.y ], [ %i.bx, %bb.v ], [ %i.de, %bb.ae ], [ %i.de, %bb.ag ] ; 2 uses
  %.sink300 = phi ptr [ %i.ci, %bb.al ], [ %i.cy, %bb.aj ], [ %i.bz, %bb.an ], [ inttoptr (i64 1 to ptr), %bb.ab ], [ inttoptr (i64 1 to ptr), %bb.y ], [ inttoptr (i64 1 to ptr), %bb.v ], [ inttoptr (i64 1 to ptr), %bb.ae ], [ %i.dh, %bb.ag ]
  store i64 %.sink301, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink300, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink301, ptr %.sroa.547.0..sroa_idx, align 8
  %i.dj = icmp eq i64 %.sroa.02.0, 0
  br i1 %i.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit130, label %bb.ah

bb.ah:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.sroa.0.0, i64 noundef %.sroa.02.0, i64 noundef range(i64 1, -9223372036854775807) 1) #25, !noalias !1356
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsfIwuYbgPzJV_5uu_du.exit130

bb.ai:                                            ; preds = %bb.aa, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i121
  %.sroa.4160.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i121 ], [ 0, %bb.aa ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4160.0.ph, i64 %i.cw) #30
  unreachable

bb.aj:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i121
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull align 1 %i.cv, i64 %i.cw, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255

bb.ak:                                            ; preds = %bb.x, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i113
  %.sroa.4156.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i113 ], [ 0, %bb.x ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4156.0.ph, i64 %i.cg) #30
  unreachable

bb.al:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i113
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 1 %i.cf, i64 %i.cg, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255

bb.am:                                            ; preds = %bb.u, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i109
  %.sroa.4152.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i109 ], [ 0, %bb.u ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4152.0.ph, i64 %i.bx) #30
  unreachable

bb.an:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i109
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.bw, i64 %i.bx, i1 false)
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfIwuYbgPzJV_5uu_du.exit123.thread255
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsfIwuYbgPzJV_5uu_du17parse_size_format(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.4.i.i.i.i.i = alloca i64, align 8        ; 6 uses
  %.sroa.8.i.i.i.i.i = alloca i64, align 8        ; 5 uses
  %i.b = alloca [208 x i8], align 8               ; 6 uses
  %i.c = alloca [208 x i8], align 8               ; 35 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [16 x i8], align 16               ; 4 uses
  %i.y = alloca [16 x i8], align 16               ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [32 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 12 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6 = alloca i64, align 8                  ; 5 uses
  %.sroa.9 = alloca i64, align 8                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !1464, !nonnull !8, !noundef !8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1464, !noundef !8 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.ak, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i.i.i
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %.loopexit121.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i
  %.sroa.0.0917.i.i.i.i = phi ptr [ %i.an, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i ], [ %i.ai, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i.i.i = phi i64 [ %i.ao, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i.i, i64 16 ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.8.016.i.i.i.i, 1
  %i.ap = getelementptr i8, ptr %.sroa.0.0917.i.i.i.i, i64 8
  %.val7.i.i.i.i = load i64, ptr %i.ap, align 8, !noalias !1465, !noundef !8
  %i.aq = icmp eq i64 %.val7.i.i.i.i, 10
  br i1 %i.aq, label %.split.i.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i.i, align 8, !noalias !1465, !nonnull !8, !noundef !8 ; 2 uses
  %i.ar = load i64, ptr %.val.i.i.i.i, align 1
  %i.as = xor i64 %i.ar, 7598466935557155938
  %i.at = getelementptr i8, ptr %.val.i.i.i.i, i64 8
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i64
  %i.aw = xor i64 %i.av, 25978
  %i.ax = or i64 %i.as, %i.aw
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bb = icmp eq ptr %i.an, %i.al
  br i1 %i.bb, label %.loopexit121.i, label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %.split.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !1464, !noundef !8 ; 2 uses
  %i.be = icmp ult i64 %.sroa.8.016.i.i.i.i, %i.bd
  br i1 %i.be, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i.i, i64 noundef %i.bd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #29, !noalias !1465
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !1464, !nonnull !8, !noundef !8
  %i.bh = getelementptr inbounds nuw [104 x i8], ptr %i.bg, i64 %.sroa.8.016.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1466
  store i128 53410479646238849826493945191968316847, ptr %i.x, align 16, !noalias !1466
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.x) #25, !noalias !1466
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1466
  %.sroa.013.0.copyload.i.i.i = load i128, ptr %i.y, align 16, !noalias !1466 ; 3 uses
  %i.bi = icmp eq i128 %.sroa.013.0.copyload.i.i.i, 53410479646238849826493945191968316847
  br i1 %i.bi, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1466
  %i.bj = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.bh) #25, !noalias !1467 ; 3 uses
end_hunk_0
