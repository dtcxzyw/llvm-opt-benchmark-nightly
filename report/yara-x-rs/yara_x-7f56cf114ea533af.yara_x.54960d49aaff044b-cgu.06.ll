Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder4feed:bb.a
bb.c:                                             ; preds = %bb.a, %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  switch i8 %2, label %bb.h [
    i8 -1, label %bb.d
    i8 0, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  switch i8 %1, label %bb.e [
    i8 32, label %bb.g
    i8 -112, label %bb.g
    i8 -52, label %bb.g
    i8 -1, label %bb.g
    i8 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = and i8 %1, -33
  %i.l = add i8 %i.k, -65
  %or.cond25.i = icmp ult i8 %i.l, 26
  %spec.select.i = select i1 %or.cond25.i, i32 18, i32 20
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.c
  %.sroa.0.0.i = phi i32 [ %spec.select.i, %bb.e ], [ %i.ah, %bb.h ], [ 12, %bb.d ], [ -13, %bb.c ], [ 6, %bb.f ], [ 12, %bb.d ], [ 12, %bb.d ], [ 12, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2502
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2502, !noundef !9
  store i64 %i.o, ptr %i.a, align 8, !noalias !2502
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %1, ptr %i.p, align 8, !noalias !2502
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %2, ptr %i.q, align 1, !noalias !2502
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %.sroa.0.0.i, ptr %i.r, align 4, !noalias !2502
  %i.s = call noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEE13push_back_mutCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2502
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !alias.scope !2502, !noundef !9
  %i.v = add i32 %i.u, %.sroa.0.0.i
  store i32 %i.v, ptr %i.t, align 8, !alias.scope !2502
  %i.w = load i64, ptr %i.n, align 8, !alias.scope !2502, !noundef !9
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.n, align 8, !alias.scope !2502
  %i.y = load i64, ptr %i.c, align 8, !alias.scope !2502, !noundef !9
  %i.z = load i64, ptr %i.e, align 8, !alias.scope !2502, !noundef !9
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.i, label %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder4push.exit

bb.h:                                             ; preds = %bb.c
  %i.ab = xor i8 %2, -1
  %i.ac = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ab)
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = tail call range(i8 1, 9) i8 @llvm.ctpop.i8(i8 %2)
  %i.af = shl nuw nsw i8 %i.ae, 1
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = sub nsw i32 %i.ag, %i.ad
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.ai = tail call fastcc noundef i32 @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder7quality(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !alias.scope !2502, !noundef !9
  %i.al = icmp sgt i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.j, label %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder4push.exit

bb.j:                                             ; preds = %bb.i
  store i32 %i.ai, ptr %i.aj, align 4, !alias.scope !2502
  %i.am = load i64, ptr %i.c, align 8, !alias.scope !2502, !noundef !9 ; 2 uses
  %.not21.i = icmp eq i64 %i.am, 0
  br i1 %.not21.i, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #46
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !2502, !noundef !9 ; 3 uses
  %i.ap = load i64, ptr %i.m, align 8, !range !14, !alias.scope !2502, !noundef !9 ; 4 uses
  %.not22.i = icmp ult i64 %i.ao, %i.ap
  %i.aq = select i1 %.not22.i, i64 0, i64 %i.ap
  %.sroa.012.0.i = sub nuw i64 %i.ao, %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2502, !nonnull !9, !noundef !9 ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.sroa.012.0.i
  %i.au = load i64, ptr %i.at, align 8, !noundef !9
  %i.av = add i64 %i.am, -1
  %i.aw = add i64 %i.av, %i.ao                    ; 2 uses
  %.not24.i = icmp ult i64 %i.aw, %i.ap
  %i.ax = select i1 %.not24.i, i64 0, i64 %i.ap
  %.sroa.013.0.i = sub nuw i64 %i.aw, %i.ax
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %.sroa.013.0.i
  %i.az = load i64, ptr %i.ay, align 8, !noundef !9
  %i.ba = add i64 %i.az, 1
  store i64 1, ptr %0, align 8, !alias.scope !2502
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2502
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ba, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2502
  br label %_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder4push.exit

_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder4push.exit: ; preds = %bb.g, %bb.i, %bb.l
  ret void

bb.m:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !noundef !9
  %i.bf = sub i32 %i.be, %i.bc
  store i32 %i.bf, ptr %i.bd, align 8
  br label %bb.c

bb.n:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #46
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder7quality(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [9 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.o, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit18

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit18: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2514
  call void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull %i.j, i64 noundef 2048)
  %i.k = load ptr, ptr %i.d, align 8, !noalias !2514, !noundef !9 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit18
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.04.0.copyload.i = load ptr, ptr %i.l, align 8, !noalias !2514 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !2514, !noundef !9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.07.0.copyload.i = load ptr, ptr %i.o, align 8, !noalias !2514 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.59.sroa.0.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !2514
  %.not15.i = icmp eq ptr %.sroa.04.0.copyload.i, null
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit18
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.p, align 8, !noalias !2514, !nonnull !9, !noundef !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2514
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge.i, %bb.c
  %.sroa.59.sroa.0.0.copyload.sink.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.c ], [ %.sroa.59.sroa.0.0.copyload.i, %._crit_edge.i ]
  %.sroa.07.0.copyload.sink31.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.c ], [ %.sroa.07.0.copyload.i, %._crit_edge.i ] ; 2 uses
  %i.q = xor i64 %.sroa.59.sroa.0.0.copyload.sink.i, -1
  %i.r = load i64, ptr %.sroa.07.0.copyload.sink31.i, align 8, !noundef !9
  %i.s = and i64 %i.r, %i.q
  store i64 %i.s, ptr %.sroa.07.0.copyload.sink31.i, align 8
  br label %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5.sroa.0.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2514
  %i.t = xor i64 %.sroa.5.sroa.0.0.copyload.i, -1
  %i.u = load i64, ptr %.sroa.04.0.copyload.i, align 8, !noundef !9
  %i.v = and i64 %i.u, %i.t
  store i64 %i.v, ptr %.sroa.04.0.copyload.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.w = icmp eq i64 %i.n, 0
  br i1 %i.w, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.e
  %.idx.i = shl i64 %i.n, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %.idx.i, i1 false), !alias.scope !2515
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.e
  %.not16.i = icmp eq ptr %.sroa.07.0.copyload.i, null
  br i1 %.not16.i, label %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit, label %.sink.split.i

_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit: ; preds = %.sink.split.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEE4iterCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.sroa.7.0.copyload = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.9.sroa.0.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.9.sroa.5.0.copyload = load ptr, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.outer

.outer:                                           ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit, %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit
  %.sroa.0.sroa.7.0.ph = phi ptr [ %.sroa.0.sroa.7.1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.0.sroa.7.0.copyload, %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit ]
  %.sroa.0.sroa.0.0.ph = phi ptr [ %i.aa, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.0.sroa.0.0.copyload, %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit ]
  %.sroa.9.sroa.5.0.ph = phi ptr [ %.sroa.9.sroa.5.1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.9.sroa.5.0.copyload, %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit ]
  %.sroa.9.sroa.0.0.ph = phi ptr [ %.sroa.9.sroa.0.1, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit ], [ %.sroa.9.sroa.0.0.copyload, %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit ]
  %.sroa.04.0.ph = phi i32 [ %i.bg, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit ], [ 0, %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit ] ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %.outer
  %.sroa.0.sroa.7.0 = phi ptr [ %.sroa.0.sroa.7.0.ph, %.outer ], [ %.sroa.0.sroa.7.1, %.backedge ] ; 3 uses
  %.sroa.0.sroa.0.0 = phi ptr [ %.sroa.0.sroa.0.0.ph, %.outer ], [ %i.aa, %.backedge ] ; 3 uses
  %.sroa.9.sroa.5.0 = phi ptr [ %.sroa.9.sroa.5.0.ph, %.outer ], [ %.sroa.9.sroa.5.1, %.backedge ] ; 3 uses
  %.sroa.9.sroa.0.0 = phi ptr [ %.sroa.9.sroa.0.0.ph, %.outer ], [ %.sroa.9.sroa.0.1, %.backedge ] ; 3 uses
  %i.y = icmp eq ptr %.sroa.0.sroa.0.0, %.sroa.0.sroa.7.0
  br i1 %i.y, label %bb.g, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq ptr %.sroa.9.sroa.0.0, %.sroa.9.sroa.5.0
  br i1 %i.z, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit

_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.sroa.7.1 = phi ptr [ %.sroa.9.sroa.5.0, %bb.g ], [ %.sroa.0.sroa.7.0, %bb.f ] ; 2 uses
  %.sroa.9.sroa.5.1 = phi ptr [ %.sroa.0.sroa.7.0, %bb.g ], [ %.sroa.9.sroa.5.0, %bb.f ] ; 2 uses
  %.sroa.9.sroa.0.1 = phi ptr [ %.sroa.0.sroa.0.0, %bb.g ], [ %.sroa.9.sroa.0.0, %bb.f ] ; 2 uses
  %.sink6.i = phi ptr [ %.sroa.9.sroa.0.0, %bb.g ], [ %.sroa.0.sroa.0.0, %bb.f ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sink6.i, null
  br i1 %.not, label %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !9
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %bb.p, label %.backedge

_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %bb.g, %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load i32, ptr %i.ae, align 8, !noundef !9 ; 3 uses
  %i.ag = icmp eq i32 %.sroa.04.0.ph, 1
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread
  %i.ah = load i64, ptr %i.g, align 8, !noundef !9
  %.not15 = icmp eq i64 %i.ah, 0
  br i1 %.not15, label %bb.k, label %bb.l, !prof !11

bb.j:                                             ; preds = %_RNvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterTjhhlEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit.thread
  %i.ai = shl i32 %.sroa.04.0.ph, 1
  %i.aj = add i32 %i.af, %i.ai
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #46
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !noundef !9 ; 2 uses
  %i.am = load i64, ptr %i.f, align 8, !range !14, !noundef !9 ; 2 uses
  %.not16 = icmp ult i64 %i.al, %i.am
  %i.an = select i1 %.not16, i64 0, i64 %i.am
  %.sroa.012.0 = sub nuw i64 %i.al, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !9, !noundef !9
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.sroa.012.0
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !noundef !9
  switch i8 %i.as, label %bb.m [
    i8 0, label %bb.n
    i8 32, label %bb.n
    i8 -112, label %bb.n
    i8 -52, label %bb.n
    i8 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.at = add i32 %i.af, 2
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  %i.au = add i32 %i.af, -5
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.j, %bb.n, %bb.m
  %.sroa.0.0 = phi i32 [ %i.aj, %bb.j ], [ %i.at, %bb.m ], [ %i.au, %bb.n ], [ -2147483648, %bb.a ]
  ret i32 %.sroa.0.0

bb.p:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %.sink6.i, i64 8
  %i.aw = load i8, ptr %i.av, align 8, !noundef !9 ; 2 uses
  %i.ax = zext i8 %i.aw to i64                    ; 3 uses
  %i.ay = lshr i64 %i.ax, 6                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2516
  store i64 %i.ay, ptr %i.c, align 8, !noalias !2516
  %i.az = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79), !noalias !2517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2516
  %.val.i = load i64, ptr %i.az, align 8, !noalias !2517, !noundef !9
  %i.ba = and i64 %i.ax, 63
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = and i64 %.val.i, %i.bb
  %cond = icmp eq i64 %i.bc, 0
  br i1 %cond, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit, label %.backedge

.backedge:                                        ; preds = %bb.p, %bb.h
  br label %bb.f

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQNtNtCscjxkGEBy879_6bitvec5slice8BitSliceINtNtNtBM_3ptr4span12BitSpanErrorjEE6unwrapCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.p
  call void @_RINvMs4_NtCscjxkGEBy879_6bitvec5sliceNtB6_8BitSlice16assert_in_boundsINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef 2048, i64 noundef range(i64 -2147483648, 2147483648) %i.ax, i64 noundef 0, i64 noundef 256)
  %i.bd = and i8 %i.aw, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2518
  store i64 %i.ay, ptr %i.b, align 8, !noalias !2518
  %i.be = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @79)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2518
  store ptr %i.be, ptr %i.a, align 8, !noalias !2518
  store i8 %i.bd, ptr %i.x, align 8, !noalias !2518
  %i.bf = call noundef zeroext i1 @_RNvMs3_NtNtCscjxkGEBy879_6bitvec3ptr6singleINtB5_6BitPtrINtNtCs3f5EAvbiDJf_3wyz4comu6FrozenNtBV_3MutEE16frozen_write_bitCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(9) %i.a, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2518
  %i.bg = add i32 %.sroa.04.0.ph, 1
  br label %.outer
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder8finalize(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !9 ; 2 uses
  %i.d = icmp ne i32 %i.c, -2147483648
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = invoke fastcc noundef i32 @_RNvMNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7qualityNtB2_14BestAtomFinder7quality(ptr noalias nofree noundef align 8 dereferenceable(112) %1)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.a, %bb.d
  %i.j = phi i32 [ %i.c, %bb.a ], [ %i.i, %bb.d ]
  %i.k = phi i64 [ %i.g, %bb.a ], [ %i.o, %bb.d ]
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %bb.e

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %bb.j, %bb.b
  %lpad.loopexit.split-lp7 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_(ptr noalias nofree noundef align 8 dereferenceable(112) %1) #42
          to label %common.resume unwind label %bb.l

bb.d:                                             ; preds = %bb.b
  store i32 %i.i, ptr %i.b, align 4
  %i.o = load i64, ptr %i.f, align 8, !noundef !9 ; 2 uses
  store i64 1, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c

bb.e:                                             ; preds = %.lr.ph, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEE9pop_frontCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load i32, ptr %i.b, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.p = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.j, %bb.c ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.p, ptr %i.q, align 8
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.f ], [ %lpad.loopexit.split-lp7, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality14BestAtomFinderEBJ_.exit: ; preds = %._crit_edge
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjhhlEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  ret void

bb.h:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.a, align 8, !range !13, !noundef !9
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.j, !prof !10

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.m, align 4, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = load i32, ptr %i.n, align 8, !noundef !9
  %i.x = sub i32 %i.w, %i.v
  store i32 %i.x, ptr %i.n, align 8
  %i.y = load i64, ptr %i.f, align 8, !noundef !9
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge.loopexit, label %bb.e

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #41
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  unreachable

end_hunk_0
