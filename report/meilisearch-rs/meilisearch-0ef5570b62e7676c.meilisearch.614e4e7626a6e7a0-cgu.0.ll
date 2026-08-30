Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch-0ef5570b62e7676c.meilisearch.614e4e7626a6e7a0-cgu.0?download=true
inline.NumInlined: 17146
inline.NumDeleted: 6832
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 290
begin_hunk_0_@"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h4191e58517461e8bE":bb.a
  %.not3.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not3.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !32547, !nonnull !27, !noundef !27 ; 2 uses
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.d
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.n, i64 %i.l
  %i.q = mul i64 %i.h, 88
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !32547
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !32547
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit"

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !32547, !nonnull !27, !noundef !27 ; 2 uses
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.s, i64 %i.a
  %i.u = mul i64 %i.i, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !32547
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17h71ce2d579b8d8c32E.exit": ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(408) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hbde4888c4ecb5a86E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.14.i.i.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %.sroa.4.i.i.i.i.i.i.i = alloca [7 x i8], align 1 ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0.i.i.i = alloca [32 x i8], align 8      ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.9.i.i = alloca [55 x i8], align 1        ; 4 uses
  %.sroa.11.i.i = alloca [72 x i8], align 8       ; 4 uses
  %.sroa.12.i.i = alloca [48 x i8], align 8       ; 4 uses
  %.sroa.13.i.i = alloca [48 x i8], align 8       ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = load ptr, ptr %0, align 8, !nonnull !27, !noundef !27 ; 40 uses
  %i.r = load i64, ptr %i.q, align 8, !noundef !27
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !27
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32550)
  %i.x = tail call { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef 408), !noalias !32550 ; 2 uses
  %i.y = tail call { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef 408), !noalias !32550 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.y, 1       ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = inttoptr i64 %i.z to ptr
  br label %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !32550
  %i.ad = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.z) #38, !noalias !32550
  br label %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i"

"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i": ; preds = %bb.e, %bb.d
  %.sroa.07.0.i.i.i.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.ad, %bb.e ] ; 21 uses
  %i.ae = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i, null
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i"
  %i.af = extractvalue { i64, i64 } %i.x, 1
  %i.ag = extractvalue { i64, i64 } %i.x, 0
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.ag, i64 noundef %i.af) #43, !noalias !32550
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.ah = tail call { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef 408), !noalias !32553 ; 2 uses
  %i.ai = tail call { i64, i64 } @_ZN5alloc2rc32rc_inner_layout_for_value_layout17h80dde0a26a8e6a8eE(i64 noundef 8, i64 noundef 408), !noalias !32553 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0      ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.ai, 1      ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = inttoptr i64 %i.aj to ptr
  br label %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !32553
  %i.an = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) %i.aj) #38, !noalias !32553
  br label %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10"

"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10": ; preds = %bb.i, %bb.h
  %.sroa.07.0.i.i.i.i.i.i11 = phi ptr [ %i.am, %bb.h ], [ %i.an, %bb.i ] ; 6 uses
  %i.ao = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i11, null
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10"
  %i.ap = extractvalue { i64, i64 } %i.ah, 1
  %i.aq = extractvalue { i64, i64 } %i.ah, 0
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %i.aq, i64 noundef %i.ap) #43, !noalias !32553
  unreachable

bb.k:                                             ; preds = %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i10"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i.i11, align 8, !noalias !32553
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i11, i64 8
  store i64 1, ptr %i.ar, align 8, !noalias !32553
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i11, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %i.at, ptr noundef nonnull align 8 dereferenceable(408) %i.as, i64 408, i1 false)
  %i.au = load <2 x i64>, ptr %i.q, align 8
  %i.av = add <2 x i64> %i.au, splat (i64 -1)
  store <2 x i64> %i.av, ptr %i.q, align 8
  store ptr %.sroa.07.0.i.i.i.i.i.i11, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b, %"_ZN4core3ptr66drop_in_place$LT$alloc..rc..Rc$LT$actix_cors..inner..Inner$GT$$GT$17h20cd1a0b316407b2E.exit"
  %i.aw = phi ptr [ %.sroa.07.0.i.i.i.i.i.i11, %bb.k ], [ %i.q, %bb.b ], [ %.sroa.3.0.copyload, %"_ZN4core3ptr66drop_in_place$LT$alloc..rc..Rc$LT$actix_cors..inner..Inner$GT$$GT$17h20cd1a0b316407b2E.exit" ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  ret ptr %i.ax

bb.m:                                             ; preds = %.thread, %.thread24
  %.pn5 = phi { ptr, i32 } [ %eh.lpad-body27, %.thread24 ], [ %i.nm, %.thread ]
  resume { ptr, i32 } %.pn5

bb.n:                                             ; preds = %.thread24
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

.thread28:                                        ; preds = %bb.t, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread24

bb.o:                                             ; preds = %"_ZN5alloc2rc27UniqueRcUninit$LT$T$C$A$GT$3new28_$u7b$$u7b$closure$u7d$$u7d$17h603d89d7eb50e097E.exit.i.i.i"
  store i64 1, ptr %.sroa.07.0.i.i.i.i.i.i, align 8, !noalias !32550
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.az, align 8, !noalias !32550
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %.sroa.07.0.i.i.i.i.i.i, ptr %i.ba, align 8, !alias.scope !32550
  store i64 8, ptr %i.p, align 8, !alias.scope !32550
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 408, ptr %i.bb, align 8, !alias.scope !32550
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store i8 1, ptr %i.bc, align 8, !alias.scope !32550
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i.i.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !32556, !noundef !27 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32559)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !alias.scope !32559, !noalias !32562 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32564)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 208
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !32567, !noalias !32568, !noundef !27 ; 6 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32570
  %i.bl = add i64 %i.bj, 1                        ; 2 uses
  %i.bm = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bl, i64 40) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.s, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
  %i.bo = extractvalue { i64, i1 } %i.bm, 0
  %i.bp = add nuw i64 %i.bo, 8
  %i.bq = and i64 %i.bp, -16                      ; 3 uses
  %i.br = add i64 %i.bj, 17                       ; 2 uses
  %i.bs = add i64 %i.bq, %i.br                    ; 4 uses
  %i.bt = icmp ult i64 %i.bs, %i.bq
  %i.bu = icmp ugt i64 %i.bs, 9223372036854775792
  %or.cond.i.i.i.i.i.i.i = or i1 %i.bt, %i.bu
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.s, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", !prof !3798

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.r
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !32571
  %i.bv = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !32571 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bx = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %.noexc13 unwind label %.thread28

bb.t:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.by = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.bs)
          to label %.noexc13 unwind label %.thread28

.noexc13:                                         ; preds = %bb.t, %bb.s
  %.pn.i.i.i.i.i.i = phi { i64, i64 } [ %i.bx, %bb.s ], [ %i.by, %bb.t ] ; 2 uses
  %.sroa.7.0.ph.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i.i.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i.i.i.i, 1
  %.pre.i.i.i.i.i = add i64 %.sroa.7.0.ph.i.i.i.i.i.i, 17
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i"

bb.u:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bq
  %i.ca = icmp ult i64 %i.bj, 8
  %i.cb = lshr i64 %i.bl, 3
  %i.cc = mul nuw nsw i64 %i.cb, 7
  %.sroa.02.0.i.i.i.i.i.i.i = select i1 %i.ca, i64 %i.bj, i64 %i.cc
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i": ; preds = %bb.u, %.noexc13
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i.i, %.noexc13 ], [ %i.br, %bb.u ]
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i.i.i.i, %.noexc13 ], [ %.sroa.02.0.i.i.i.i.i.i.i, %bb.u ]
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i, %.noexc13 ], [ %i.bj, %bb.u ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi ptr [ null, %.noexc13 ], [ %i.bz, %bb.u ] ; 4 uses
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.d, align 8, !noalias !32570
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32570
  %.sroa.52.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.7.0.i.i.i.i.i, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32570
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !32570
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32579)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i.i.i.i, ptr nonnull align 1 %i.bf, i64 %.pre-phi.i.i.i.i.i, i1 false), !noalias !32582
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !32585, !noalias !32586, !noundef !27 ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i"
  %.val13.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !32587
  %i.cg = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ch = bitcast <16 x i1> %i.cg to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ck = ptrtoint ptr %i.bf to i64
  br label %bb.w

bb.v:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr305drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..value..HeaderValue$C$$LP$$RP$$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$http..header..value..HeaderValue$C$$LP$$RP$$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h1546868492289ad0E"(i64 %.sroa.015.029.i.i.i.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.d) #44
          to label %.body.i.i.i.i.i unwind label %bb.y, !noalias !32590

bb.w:                                             ; preds = %bb.x, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.015.029.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i ], [ %i.do, %bb.x ]
  %.sroa.016.028.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.016.1.i.i.i.i.i.i.i, %bb.x ] ; 2 uses
  %.sroa.6.027.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.1.i.i.i.i.i.i.i, %bb.x ] ; 2 uses
  %.sroa.817.026.i.i.i.i.i.i.i = phi i16 [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %i.df, %bb.x ] ; 2 uses
  %.sroa.1018.025.i.i.i.i.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dd, %bb.x ]
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.817.026.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cm = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.027.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.cn = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.016.028.i.i.i.i.i.i.i, %bb.w ]
  %.val911.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.cm, align 16, !noalias !32591
  %i.co = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -640 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.co to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.w
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.027.i.i.i.i.i.i.i, %bb.w ], [ %i.cq, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.016.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.016.028.i.i.i.i.i.i.i, %bb.w ], [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.817.026.i.i.i.i.i.i.i, %bb.w ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.cr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds [40 x i8], ptr %.sroa.016.1.i.i.i.i.i.i.i, i64 %i.ct ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32582
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -40
  call void @llvm.experimental.noalias.scope.decl(metadata !32594)
  call void @llvm.experimental.noalias.scope.decl(metadata !32597)
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !32600, !nonnull !27, !align !148, !noundef !27
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !32600, !nonnull !27, !noundef !27
  %i.cy = getelementptr inbounds i8, ptr %i.cu, i64 -16
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 -32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !32600, !noundef !27
  %i.db = getelementptr inbounds i8, ptr %i.cu, i64 -24
  %i.dc = load i64, ptr %i.db, align 8, !noalias !32600, !noundef !27
  invoke void %i.cx(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noundef nonnull align 8 %i.cy, ptr noundef %i.da, i64 noundef %i.dc)
          to label %bb.x unwind label %bb.v, !noalias !32582, !inline_history !32601

bb.x:                                             ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.dd = add i64 %.sroa.1018.025.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.de = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.df = and i16 %i.de, %.lcssa.i.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.dh = load i8, ptr %i.dg, align 8, !range !188, !noalias !32600, !noundef !27
  store i8 %i.dh, ptr %i.cj, align 8, !alias.scope !32602, !noalias !32582
  %i.di = ptrtoint ptr %i.cu to i64
  %i.dj = sub i64 %i.ck, %i.di
  %i.dk = sdiv exact i64 %i.dj, 40                ; 2 uses
  %i.dl = sub nsw i64 0, %i.dk
  %i.dm = getelementptr inbounds [40 x i8], ptr %.sroa.0.0.i.i.i.i.i, i64 %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !32582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32582
  %i.do = add nsw i64 %i.dk, 1
  %i.dp = icmp eq i64 %i.dd, 0
  br i1 %i.dp, label %.loopexit.i.i.i.i.i, label %bb.w

bb.y:                                             ; preds = %bb.v
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !32582
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.v
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$http..header..value..HeaderValue$C$$LP$$RP$$RP$$GT$$GT$17h1f7484bdb0a9366bE"(ptr noalias noundef align 8 dereferenceable(32) %i.d) #44
          to label %.thread24 unwind label %bb.z, !noalias !32570

.loopexit.i.i.i.i.i:                              ; preds = %bb.x, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h6700b5d354c7fe64E.exit.i.i.i.i.i"
  %i.dr = getelementptr inbounds nuw i8, ptr %i.q, i64 216
  %i.ds = load i64, ptr %i.dr, align 8, !alias.scope !32585, !noalias !32586, !noundef !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32570
  br label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i"

bb.z:                                             ; preds = %.body.i.i.i.i.i
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !32570
  unreachable

.body.i.i.i:                                      ; preds = %.body55.i.i.i, %.body.i.i26.i.i.i
  %.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i.i, %.body55.i.i.i ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i26.i.i.i ] ; 3 uses
  %i.du = icmp eq ptr %.sroa.01.0.i.i, null
  %i.dv = icmp eq i64 %.sroa.63.0.i.i, 0
  %or.cond.i.i = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond.i.i, label %.thread24, label %bb.aa

bb.aa:                                            ; preds = %.body.i.i.i
  %i.dw = icmp eq i64 %.sroa.77.0.i.i, 0
  br i1 %i.dw, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h53186841662ae735E.exit.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val13.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %.sroa.01.0.i.i, align 16, !noalias !32603
  %i.dx = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i, i64 16
  %i.dz = bitcast <16 x i1> %i.dx to i16
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc.i.i, %bb.ab
  %.sroa.06.017.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i, %bb.ab ], [ %.sroa.06.1.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dy, %bb.ab ], [ %.sroa.6.1.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.dz, %bb.ab ], [ %i.eu, %.noexc.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.77.0.i.i, %bb.ab ], [ %i.es, %.noexc.i.i ]
  %.not13.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hb9065f228c071afeE.exit.i.i.i.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i, %bb.ac ] ; 2 uses
  %i.eb = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i, %bb.ac ]
  %.val911.i.i.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ea, align 16, !noalias !32622
  %i.ec = icmp sgt <16 x i8> %.val911.i.i.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 -640 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ec to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hb9065f228c071afeE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hb9065f228c071afeE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ac
  %.sroa.6.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %.cast.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ef = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.eg = zext nneg i16 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds [40 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i.i.i.i, i64 %i.eh ; 4 uses
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -40
  call void @llvm.experimental.noalias.scope.decl(metadata !32625), !noalias !32556
  call void @llvm.experimental.noalias.scope.decl(metadata !32628), !noalias !32556
  call void @llvm.experimental.noalias.scope.decl(metadata !32631), !noalias !32556
  call void @llvm.experimental.noalias.scope.decl(metadata !32634), !noalias !32556
  %i.ek = load ptr, ptr %i.ej, align 8, !alias.scope !32637, !noalias !32638, !nonnull !27, !align !148, !noundef !27
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = load ptr, ptr %i.el, align 8, !noalias !32639, !nonnull !27, !noundef !27
  %i.en = getelementptr inbounds i8, ptr %i.ei, i64 -16
  %i.eo = getelementptr inbounds i8, ptr %i.ei, i64 -32
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !32637, !noalias !32638, !noundef !27
  %i.eq = getelementptr inbounds i8, ptr %i.ei, i64 -24
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !32637, !noalias !32638, !noundef !27
  invoke void %i.em(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef %i.ep, i64 noundef %i.er)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !32640

.noexc.i.i:                                       ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hb9065f228c071afeE.exit.i.i.i.i.i.i.i.i.i.i"
  %i.es = add i64 %.sroa.108.014.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.et = add i16 %.lcssa.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.eu = and i16 %i.et, %.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.ev = icmp eq i64 %i.es, 0
  br i1 %i.ev, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h53186841662ae735E.exit.i.i.i.i.i.i.i.i.i, label %bb.ac

_ZN9hashbrown3raw13RawTableInner13drop_elements17h53186841662ae735E.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i, %bb.aa
  %i.ew = mul i64 %.sroa.63.0.i.i, 40
  %i.ex = icmp slt i64 %.sroa.63.0.i.i, 461168601842738790
  call void @llvm.assume(i1 %i.ex), !noalias !32556
  %i.ey = and i64 %i.ew, -16                      ; 2 uses
  %i.ez = add i64 %i.ey, 48                       ; 2 uses
  %i.fa = add nsw i64 %.sroa.63.0.i.i, 17
  %i.fb = add i64 %i.fa, %i.ez                    ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hbde4888c4ecb5a86E":bb.a
    i64 -9223372036854775807, label %.thread.i.i.i.i.i
    i64 0, label %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfb3c81a101d72cf2E.exit.thread.i.i.i.i.i.i"
  ], !prof !32655

bb.ae:                                            ; preds = %.noexc.i.i.i.i.i
  %i.fy = extractvalue { i64, i64 } %i.fw, 1
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef range(i64 0, -9223372036854775806) %i.fx, i64 noundef %i.fy) #43
          to label %.noexc3.i.i.i.i.i unwind label %bb.ar, !noalias !32647

.noexc3.i.i.i.i.i:                                ; preds = %bb.ae
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfb3c81a101d72cf2E.exit.thread.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @218, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2177) #43
          to label %.noexc4.i.i.i.i.i unwind label %bb.ar, !noalias !32647

.noexc4.i.i.i.i.i:                                ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfb3c81a101d72cf2E.exit.thread.i.i.i.i.i.i"
  unreachable

.thread.i.i.i.i.i:                                ; preds = %.noexc.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load i64, ptr %i.fq, align 8, !alias.scope !32656, !noalias !32659
  %.pre.i.fr.i.i.i.i.i = freeze i64 %.pre.i.i.i.i.i.i ; 2 uses
  %.pre69.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.pre.i.fr.i.i.i.i.i, i64 4) ; 2 uses
  %i.fz = icmp ugt i64 %.pre.i.fr.i.i.i.i.i, 4    ; 2 uses
  %.pre.i.i27.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !32656, !noalias !32659
  %spec.select.i.i.i.i = select i1 %i.fz, ptr %.pre.i.i27.i.i.i, ptr %i.b
  %spec.select1.i.i.i.i = select i1 %i.fz, ptr %i.fr, ptr %i.fq ; 3 uses
  %.pre.i.i.i.i = load i64, ptr %spec.select1.i.i.i.i, align 8, !alias.scope !32652, !noalias !32647 ; 3 uses
  %i.ga = icmp ult i64 %.pre.i.i.i.i, %.pre69.i.i.i.i.i.i
  br i1 %i.ga, label %.lr.ph.i.i.preheader.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %.thread.i.i.i.i.i, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i"
  %i.gb = phi ptr [ %spec.select1.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.fq, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i" ] ; 2 uses
  %.sink.i.pre-phi.i2024.i16.i.i.i.i = phi i64 [ %.pre69.i.i.i.i.i.i, %.thread.i.i.i.i.i ], [ 4, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i" ] ; 2 uses
  %i.gc = phi ptr [ %spec.select.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.b, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i" ]
  %i.gd = phi i64 [ %.pre.i.i.i.i, %.thread.i.i.i.i.i ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h390d35e8f9c826cfE.exit.i.i.i" ]
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.ap, %.thread.i.i.i.i.i
  %i.ge = phi ptr [ %spec.select1.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.gb, %bb.ap ]
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sink11.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.hi, %bb.ap ] ; 2 uses
  %storemerge.lcssa.i.i.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sink.i.pre-phi.i2024.i16.i.i.i.i, %bb.ap ]
  store i64 %storemerge.lcssa.i.i.i.i.i.i, ptr %i.ge, align 8, !alias.scope !32652, !noalias !32647
  %i.gf = icmp eq ptr %.sroa.0.0.lcssa.i.i.i.i.i.i, %i.fp
  br i1 %i.gf, label %.loopexit.i.i.i, label %.lr.ph63.i.i.i.i.i.i

.lr.ph63.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.ah

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.ap, %.lr.ph.i.i.preheader.i.i.i.i
  %storemerge59.i.i.i.i.i.i = phi i64 [ %i.hk, %bb.ap ], [ %i.gd, %.lr.ph.i.i.preheader.i.i.i.i ] ; 3 uses
  %.sroa.0.058.i.i.i.i.i.i = phi ptr [ %i.hi, %bb.ap ], [ %.sink11.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.gh = icmp eq ptr %.sroa.0.058.i.i.i.i.i.i, %i.fp
  br i1 %i.gh, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gi = load <2 x ptr>, ptr %.sroa.0.058.i.i.i.i.i.i, align 8, !noalias !32661
  %.val.i18.i.i.i.i.i.i = load ptr, ptr %.sroa.0.058.i.i.i.i.i.i, align 8, !noalias !32661, !nonnull !27, !noundef !27 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i18.i.i.i.i.i.i, align 8, !noalias !32661, !noundef !27 ; 2 uses
  %i.gj = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.gj)
  %i.gk = add i64 %.val.i.i.i.i.i.i.i.i.i.i, 1    ; 2 uses
  store i64 %i.gk, ptr %.val.i18.i.i.i.i.i.i, align 8, !noalias !32661
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.ag, label %bb.ap, !prof !29

bb.ag:                                            ; preds = %bb.af
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he327c214cffa231dE.exit.i.i.i.i.i.i", %.lr.ph63.i.i.i.i.i.i
  %.sroa.038.061.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i.i.i, %.lr.ph63.i.i.i.i.i.i ], [ %i.gm, %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he327c214cffa231dE.exit.i.i.i.i.i.i" ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.038.061.i.i.i.i.i.i, i64 16 ; 2 uses
  %.val.i20.i.i.i.i.i.i = load ptr, ptr %.sroa.038.061.i.i.i.i.i.i, align 8, !noalias !32664, !nonnull !27, !noundef !27 ; 6 uses
  %i.gn = getelementptr i8, ptr %.sroa.038.061.i.i.i.i.i.i, i64 8
  %.val3.i21.i.i.i.i.i.i = load ptr, ptr %i.gn, align 8, !noalias !32664, !nonnull !27, !align !148, !noundef !27 ; 2 uses
  %.val.i.i.i.i22.i.i.i.i.i.i = load i64, ptr %.val.i20.i.i.i.i.i.i, align 8, !noalias !32664, !noundef !27 ; 2 uses
  %i.go = icmp ne i64 %.val.i.i.i.i22.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.go)
  %i.gp = add i64 %.val.i.i.i.i22.i.i.i.i.i.i, 1  ; 2 uses
  store i64 %i.gp, ptr %.val.i20.i.i.i.i.i.i, align 8, !noalias !32664
  %i.gq = icmp eq i64 %i.gp, 0
  br i1 %i.gq, label %bb.ai, label %bb.aj, !prof !29

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !32667)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32670
  store ptr %.val.i20.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !32671
  store ptr %.val3.i21.i.i.i.i.i.i, ptr %i.gg, align 8, !noalias !32671
  %i.gr = load i64, ptr %i.fq, align 8, !alias.scope !32673, !noalias !32676, !noundef !27 ; 2 uses
  %i.gs = icmp ugt i64 %i.gr, 4                   ; 2 uses
  %i.gt = load ptr, ptr %i.b, align 8, !alias.scope !32673, !noalias !32676, !nonnull !27
  %.sink10.i.i.i.i.i.i.i.i = select i1 %i.gs, ptr %i.gt, ptr %i.b
  %.sink9.i.i.i.i.i.i.i.i = select i1 %i.gs, ptr %i.fr, ptr %i.fq ; 2 uses
  %.sink.i.i26.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gr, i64 4)
  %i.gu = load i64, ptr %.sink9.i.i.i.i.i.i.i.i, align 8, !alias.scope !32678, !noalias !32679, !noundef !27 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, %.sink.i.i26.i.i.i.i.i.i
  br i1 %i.gv, label %bb.am, label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he327c214cffa231dE.exit.i.i.i.i.i.i", !prof !29

bb.ak:                                            ; preds = %bb.am
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gx = load i64, ptr %.val.i20.i.i.i.i.i.i, align 8, !noalias !32680, !noundef !27
  %i.gy = add i64 %i.gx, -1                       ; 2 uses
  store i64 %i.gy, ptr %.val.i20.i.i.i.i.i.i, align 8, !noalias !32680
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.al, label %.body.i.i26.i.i.i

bb.al:                                            ; preds = %bb.ak
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h19da5e9673857ad5E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %.body.i.i26.i.i.i unwind label %bb.ao, !noalias !32687

bb.am:                                            ; preds = %bb.aj
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17h7285d29bfcc6520dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %bb.an unwind label %bb.ak, !noalias !32647

bb.an:                                            ; preds = %bb.am
  %i.ha = load ptr, ptr %i.b, align 8, !alias.scope !32678, !noalias !32679, !nonnull !27, !noundef !27
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.fr, align 8, !alias.scope !32678, !noalias !32679
  br label %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he327c214cffa231dE.exit.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.al
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !32687
  unreachable

"_ZN8smallvec17SmallVec$LT$A$GT$4push17he327c214cffa231dE.exit.i.i.i.i.i.i": ; preds = %bb.an, %bb.aj
  %i.hc = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.an ], [ %i.gu, %bb.aj ]
  %.sroa.01.0.i.i.i.i.i.i.i = phi ptr [ %i.fr, %bb.an ], [ %.sink9.i.i.i.i.i.i.i.i, %bb.aj ] ; 2 uses
  %.sroa.0.0.i27.i.i.i.i.i.i = phi ptr [ %i.ha, %bb.an ], [ %.sink10.i.i.i.i.i.i.i.i, %bb.aj ]
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i27.i.i.i.i.i.i, i64 %i.hc ; 2 uses
  store ptr %.val.i20.i.i.i.i.i.i, ptr %i.hd, align 8, !noalias !32647
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %.val3.i21.i.i.i.i.i.i, ptr %i.he, align 8, !noalias !32647
  %i.hf = load i64, ptr %.sroa.01.0.i.i.i.i.i.i.i, align 8, !alias.scope !32678, !noalias !32679, !noundef !27
  %i.hg = add i64 %i.hf, 1
  store i64 %i.hg, ptr %.sroa.01.0.i.i.i.i.i.i.i, align 8, !alias.scope !32678, !noalias !32679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32670
  %i.hh = icmp eq ptr %i.gm, %i.fp
  br i1 %i.hh, label %.loopexit.i.i.i, label %bb.ah

bb.ap:                                            ; preds = %bb.af
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %storemerge59.i.i.i.i.i.i
  store <2 x ptr> %i.gi, ptr %i.hj, align 8, !noalias !32647
  %i.hk = add i64 %storemerge59.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.hk, %.sink.i.pre-phi.i2024.i16.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  store i64 %storemerge59.i.i.i.i.i.i, ptr %i.gb, align 8, !alias.scope !32652, !noalias !32647
  br label %.loopexit.i.i.i

bb.ar:                                            ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfb3c81a101d72cf2E.exit.thread.i.i.i.i.i.i", %bb.ae, %"_ZN8smallvec17SmallVec$LT$A$GT$11try_reserve17hfb3c81a101d72cf2E.exit.i.i.i.i.i.i"
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i26.i.i.i

.body.i.i26.i.i.i:                                ; preds = %bb.ar, %bb.al, %bb.ak
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.hl, %bb.ar ], [ %i.gw, %bb.al ], [ %i.gw, %bb.ak ]
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$smallvec..SmallVec$LT$$u5b$actix_cors..inner..OriginFn$u3b$$u20$4$u5d$$GT$$GT$17hcd7579b4e4add236E"(ptr noalias noundef align 8 dereferenceable(72) %i.b) #44
          to label %.body.i.i.i unwind label %bb.as, !noalias !32647

bb.as:                                            ; preds = %.body.i.i26.i.i.i
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !32647
  unreachable

.loopexit.i.i.i:                                  ; preds = %"_ZN8smallvec17SmallVec$LT$A$GT$4push17he327c214cffa231dE.exit.i.i.i.i.i.i", %bb.aq, %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !32556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !32647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32556
  %i.hn = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  call void @llvm.experimental.noalias.scope.decl(metadata !32688)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.q, i64 184
  %i.hp = load <2 x i64>, ptr %i.ho, align 8, !alias.scope !32688, !noalias !32691
  call void @llvm.experimental.noalias.scope.decl(metadata !32693)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !32696, !noalias !32697, !noundef !27 ; 4 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4182c439f47bf60aE.exit.i.i.i", label %bb.at

bb.at:                                            ; preds = %.loopexit.i.i.i
  %i.ht = add i64 %i.hr, 1
  %i.hu = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ht, i64 24) ; 2 uses
  %i.hv = extractvalue { i64, i1 } %i.hu, 1
  br i1 %i.hv, label %bb.av, label %bb.au, !prof !29

bb.au:                                            ; preds = %bb.at
  %i.hw = extractvalue { i64, i1 } %i.hu, 0
  %i.hx = add nuw i64 %i.hw, 8
  %i.hy = and i64 %i.hx, -16                      ; 3 uses
  %i.hz = add i64 %i.hr, 17                       ; 2 uses
  %i.ia = add i64 %i.hy, %i.hz                    ; 4 uses
  %i.ib = icmp ult i64 %i.ia, %i.hy
  %i.ic = icmp ugt i64 %i.ia, 9223372036854775792
  %or.cond.i.i.i.i30.i.i.i = or i1 %i.ib, %i.ic
  br i1 %or.cond.i.i.i.i30.i.i.i, label %bb.av, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i32.i.i.i", !prof !3798

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i32.i.i.i": ; preds = %bb.au
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !32699
  %i.id = call noundef ptr @mi_malloc_aligned(i64 noundef %i.ia, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !32699 ; 2 uses
  %i.ie = icmp eq ptr %i.id, null
  br i1 %i.ie, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.if = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %.noexc.i.i.i unwind label %bb.bh, !noalias !32556

bb.aw:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i32.i.i.i"
  %i.ig = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ia)
          to label %.noexc.i.i.i unwind label %bb.bh, !noalias !32556

.noexc.i.i.i:                                     ; preds = %bb.aw, %bb.av
  %.pn.i.i.i51.i.i.i = phi { i64, i64 } [ %i.if, %bb.av ], [ %i.ig, %bb.aw ]
  %.sroa.7.0.ph.i.i.i52.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i51.i.i.i, 0 ; 2 uses
  %.pre.i.i53.i.i.i = add i64 %.sroa.7.0.ph.i.i.i52.i.i.i, 17
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h47d5e66329b74cbeE.exit.i.i.i.i.i"

bb.ax:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i32.i.i.i"
  %i.ih = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hy
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h47d5e66329b74cbeE.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h47d5e66329b74cbeE.exit.i.i.i.i.i": ; preds = %bb.ax, %.noexc.i.i.i
  %.pre-phi.i.i34.i.i.i = phi i64 [ %.pre.i.i53.i.i.i, %.noexc.i.i.i ], [ %i.hz, %bb.ax ]
  %.sroa.5.0.i.i35.i.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i52.i.i.i, %.noexc.i.i.i ], [ %i.hr, %bb.ax ] ; 5 uses
  %.sroa.0.0.i.i36.i.i.i = phi ptr [ null, %.noexc.i.i.i ], [ %i.ih, %bb.ax ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32704)
  call void @llvm.experimental.noalias.scope.decl(metadata !32707)
  %i.ii = load ptr, ptr %i.hn, align 8, !alias.scope !32710, !noalias !32711, !nonnull !27, !noundef !27 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i36.i.i.i, ptr nonnull align 1 %i.ii, i64 %.pre-phi.i.i34.i.i.i, i1 false), !noalias !32714
  %i.ij = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !32710, !noalias !32711, !noundef !27 ; 3 uses
  %i.il = icmp eq i64 %i.ik, 0
  br i1 %i.il, label %.loopexit.i.i45.i.i.i, label %.lr.ph.i.i.i.i37.i.i.i

.lr.ph.i.i.i.i37.i.i.i:                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h47d5e66329b74cbeE.exit.i.i.i.i.i"
  %.val13.i.i.i.i.i38.i.i.i = load <16 x i8>, ptr %i.ii, align 16, !noalias !32715
  %i.im = icmp sgt <16 x i8> %.val13.i.i.i.i.i38.i.i.i, splat (i8 -1)
  %i.in = bitcast <16 x i1> %i.im to i16
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ip = ptrtoint ptr %i.ii to i64
  br label %bb.ba

bb.ay:                                            ; preds = %bb.be
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.015.034.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.body.i.i46.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.ay, %"_ZN4core3ptr60drop_in_place$LT$$LP$http..method..Method$C$$LP$$RP$$RP$$GT$17h2ed126f3a6d82c27E.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.01.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ir, %"_ZN4core3ptr60drop_in_place$LT$$LP$http..method..Method$C$$LP$$RP$$RP$$GT$17h2ed126f3a6d82c27E.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.ay ] ; 3 uses
  %i.ir = add nuw i64 %.sroa.0.01.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i36.i.i.i, i64 %.sroa.0.01.i.i.i.i.i.i.i.i.i
  %i.it = load i8, ptr %i.is, align 1, !noalias !32718, !noundef !27
  %i.iu = icmp sgt i8 %i.it, -1
  br i1 %i.iu, label %bb.az, label %"_ZN4core3ptr60drop_in_place$LT$$LP$http..method..Method$C$$LP$$RP$$RP$$GT$17h2ed126f3a6d82c27E.exit.i.i.i.i.i.i.i.i.i"

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.iv = sub nsw i64 0, %.sroa.0.01.i.i.i.i.i.i.i.i.i
  %i.iw = getelementptr inbounds [24 x i8], ptr %.sroa.0.0.i.i36.i.i.i, i64 %i.iv ; 3 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 -24
  call void @llvm.experimental.noalias.scope.decl(metadata !32719), !noalias !32707
  call void @llvm.experimental.noalias.scope.decl(metadata !32722), !noalias !32707
  call void @llvm.experimental.noalias.scope.decl(metadata !32725), !noalias !32707
  %i.iy = load i8, ptr %i.ix, align 8, !range !1063, !alias.scope !32728, !noalias !32718, !noundef !27
  %switch.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.iy, 10
  %i.iz = getelementptr inbounds i8, ptr %i.iw, i64 -8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.iz, align 8, !alias.scope !32728, !noalias !32718
  %i.ja = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %switch.i.i.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.ja
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr60drop_in_place$LT$$LP$http..method..Method$C$$LP$$RP$$RP$$GT$17h2ed126f3a6d82c27E.exit.i.i.i.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.az
  %i.jb = getelementptr inbounds i8, ptr %i.iw, i64 -16
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.jb, align 8, !alias.scope !32728, !noalias !32718, !nonnull !27, !noundef !27
  call void @mi_free(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i) #38, !noalias !32729
  br label %"_ZN4core3ptr60drop_in_place$LT$$LP$http..method..Method$C$$LP$$RP$$RP$$GT$17h2ed126f3a6d82c27E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr60drop_in_place$LT$$LP$http..method..Method$C$$LP$$RP$$RP$$GT$17h2ed126f3a6d82c27E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.az, %.lr.ph.i.i.i.i.i.i.i.i.i
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ir, %.sroa.015.034.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.body.i.i46.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.bf, %.lr.ph.i.i.i.i37.i.i.i
  %.sroa.015.034.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i37.i.i.i ], [ %i.kc, %bb.bf ] ; 2 uses
  %.sroa.016.033.i.i.i.i.i.i.i = phi ptr [ %i.ii, %.lr.ph.i.i.i.i37.i.i.i ], [ %.sroa.016.1.i.i.i.i42.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.6.032.i.i.i.i.i.i.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i37.i.i.i ], [ %.sroa.6.1.i.i.i.i41.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.817.031.i.i.i.i.i.i.i = phi i16 [ %i.in, %.lr.ph.i.i.i.i37.i.i.i ], [ %i.jk, %bb.bf ] ; 2 uses
  %.sroa.1018.030.i.i.i.i.i.i.i = phi i64 [ %i.ik, %.lr.ph.i.i.i.i37.i.i.i ], [ %i.jn, %bb.bf ]
  %.not13.i.i.i.i.i39.i.i.i = icmp eq i16 %.sroa.817.031.i.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i39.i.i.i, label %.lr.ph.i.i.i.i.i47.i.i.i, label %.loopexit.i.i.i.i40.i.i.i

.lr.ph.i.i.i.i.i47.i.i.i:                         ; preds = %bb.ba, %.lr.ph.i.i.i.i.i47.i.i.i
  %i.jc = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i47.i.i.i ], [ %.sroa.6.032.i.i.i.i.i.i.i, %bb.ba ] ; 2 uses
  %i.jd = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i47.i.i.i ], [ %.sroa.016.033.i.i.i.i.i.i.i, %bb.ba ]
  %.val911.i.i.i.i.i48.i.i.i = load <16 x i8>, ptr %i.jc, align 16, !noalias !32730
  %i.je = icmp sgt <16 x i8> %.val911.i.i.i.i.i48.i.i.i, splat (i8 -1)
  %i.jf = getelementptr inbounds i8, ptr %i.jd, i64 -384 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i49.i.i.i = bitcast <16 x i1> %i.je to i16 ; 2 uses
  %.not.i.i.i.i.i50.i.i.i = icmp eq i16 %.cast.i.i.i.i.i49.i.i.i, 0
  br i1 %.not.i.i.i.i.i50.i.i.i, label %.lr.ph.i.i.i.i.i47.i.i.i, label %.loopexit.i.i.i.i40.i.i.i

.loopexit.i.i.i.i40.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i47.i.i.i, %bb.ba
  %.sroa.6.1.i.i.i.i41.i.i.i = phi ptr [ %.sroa.6.032.i.i.i.i.i.i.i, %bb.ba ], [ %i.jg, %.lr.ph.i.i.i.i.i47.i.i.i ]
  %.sroa.016.1.i.i.i.i42.i.i.i = phi ptr [ %.sroa.016.033.i.i.i.i.i.i.i, %bb.ba ], [ %i.jf, %.lr.ph.i.i.i.i.i47.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i43.i.i.i = phi i16 [ %.sroa.817.031.i.i.i.i.i.i.i, %bb.ba ], [ %.cast.i.i.i.i.i49.i.i.i, %.lr.ph.i.i.i.i.i47.i.i.i ] ; 3 uses
  %i.jh = add i16 %.lcssa.i.i.i.i.i43.i.i.i, -1
  %i.ji = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i43.i.i.i, i1 true)
  %i.jj = zext nneg i16 %i.ji to i64
  %i.jk = and i16 %i.jh, %.lcssa.i.i.i.i.i43.i.i.i
  %i.jl = sub nsw i64 0, %i.jj
  %i.jm = getelementptr inbounds [24 x i8], ptr %.sroa.016.1.i.i.i.i42.i.i.i, i64 %i.jl ; 7 uses
  %i.jn = add i64 %.sroa.1018.030.i.i.i.i.i.i.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 -24
  call void @llvm.experimental.noalias.scope.decl(metadata !32733)
  call void @llvm.experimental.noalias.scope.decl(metadata !32736)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !32739)
  call void @llvm.experimental.noalias.scope.decl(metadata !32742)
  %i.jp = load i8, ptr %i.jo, align 8, !range !1063, !alias.scope !32744, !noalias !32745, !noundef !27 ; 2 uses
  switch i8 %i.jp, label %default.unreachable [
    i8 0, label %bb.bf
    i8 1, label %bb.bf
    i8 2, label %bb.bf
    i8 3, label %bb.bf
    i8 4, label %bb.bf
    i8 5, label %bb.bf
    i8 6, label %bb.bf
    i8 7, label %bb.bf
    i8 8, label %bb.bf
    i8 9, label %bb.bb
    i8 10, label %bb.bc
  ]

default.unreachable:                              ; preds = %.loopexit.i.i.i.i40.i.i.i
  unreachable

bb.bb:                                            ; preds = %.loopexit.i.i.i.i40.i.i.i
  %.sroa.14.0..sroa_idx2.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.14.0..sroa_idx2.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !alias.scope !32748, !noalias !32749
  %.sroa.143.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -16
  %.sroa.143.0.copyload5.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.143.0..sroa_idx4.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !32750, !noalias !32749
  %.sroa.15.0..sroa_idx6.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %.sroa.15.0.copyload7.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx6.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !32750, !noalias !32749
  br label %bb.bf

bb.bc:                                            ; preds = %.loopexit.i.i.i.i40.i.i.i
  %i.jq = getelementptr inbounds i8, ptr %i.jm, i64 -16
  %.val.i.i.i.i.i.i.i44.i.i.i = load ptr, ptr %i.jq, align 8, !alias.scope !32744, !noalias !32745, !nonnull !27, !align !206, !noundef !27
  %i.jr = getelementptr inbounds i8, ptr %i.jm, i64 -8
  %.val1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.jr, align 8, !alias.scope !32744, !noalias !32745, !noundef !27 ; 6 uses
  %i.js = icmp slt i64 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.js, label %bb.be, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !3798

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %i.jt = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jt, label %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h64e71f4baa1a6a26E.exit.i.i.i.i.i.i.i.i.i.i", label %bb.bd

bb.bd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !32751
  %i.ju = call noundef ptr @mi_malloc_aligned(i64 noundef %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #38, !noalias !32751 ; 2 uses
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.be, label %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h64e71f4baa1a6a26E.exit.i.i.i.i.i.i.i.i.i.i"

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.bd ], [ 0, %bb.bc ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2142) #43
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.ay, !noalias !32714

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.be
  unreachable

"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h64e71f4baa1a6a26E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.bd, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ju, %bb.bd ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i.i.i.i.i.i.i44.i.i.i, i64 %.val1.i.i.i.i.i.i.i.i.i.i, i1 false), !noalias !32759
  br label %bb.bf

bb.bf:                                            ; preds = %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h64e71f4baa1a6a26E.exit.i.i.i.i.i.i.i.i.i.i", %bb.bb, %.loopexit.i.i.i.i40.i.i.i, %.loopexit.i.i.i.i40.i.i.i, %.loopexit.i.i.i.i40.i.i.i, %.loopexit.i.i.i.i40.i.i.i, %.loopexit.i.i.i.i40.i.i.i, %.loopexit.i.i.i.i40.i.i.i, %.loopexit.i.i.i.i40.i.i.i, %.loopexit.i.i.i.i40.i.i.i, %.loopexit.i.i.i.i40.i.i.i
  %.sroa.15.0.i.i.i.i.i.i.i.i.i = phi i64 [ %.val1.i.i.i.i.i.i.i.i.i.i, %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h64e71f4baa1a6a26E.exit.i.i.i.i.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ %.sroa.15.0.copyload7.i.i.i.i.i.i.i.i.i, %bb.bb ], [ undef, %.loopexit.i.i.i.i40.i.i.i ]
  %.sroa.143.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h64e71f4baa1a6a26E.exit.i.i.i.i.i.i.i.i.i.i" ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ undef, %.loopexit.i.i.i.i40.i.i.i ], [ %.sroa.143.0.copyload5.i.i.i.i.i.i.i.i.i, %bb.bb ], [ undef, %.loopexit.i.i.i.i40.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !32760
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i.i)
  %i.jw = ptrtoint ptr %i.jm to i64
  %i.jx = sub i64 %i.ip, %i.jw
  %i.jy = sdiv exact i64 %i.jx, 24                ; 2 uses
  %i.jz = sub nsw i64 0, %i.jy
  %i.ka = getelementptr inbounds [24 x i8], ptr %.sroa.0.0.i.i36.i.i.i, i64 %i.jz ; 4 uses
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -24
  store i8 %i.jp, ptr %i.kb, align 8, !noalias !32714
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ka, i64 -23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !32714
  %.sroa.520.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ka, i64 -16
  store ptr %.sroa.143.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.520.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !32714
  %.sroa.621.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ka, i64 -8
  store i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.621.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !32714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i.i.i)
  %i.kc = add nsw i64 %i.jy, 1
  %i.kd = icmp eq i64 %i.jn, 0
  br i1 %i.kd, label %.loopexit.i.i45.i.i.i, label %bb.ba

.body.i.i46.i.i.i:                                ; preds = %"_ZN4core3ptr60drop_in_place$LT$$LP$http..method..Method$C$$LP$$RP$$RP$$GT$17h2ed126f3a6d82c27E.exit.i.i.i.i.i.i.i.i.i", %bb.ay
  %i.ke = icmp eq i64 %.sroa.5.0.i.i35.i.i.i, 0
  br i1 %i.ke, label %.body55.i.i.i, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17ha8fc6e0826e25ad0E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw13RawTableInner13drop_elements17ha8fc6e0826e25ad0E.exit.i.i.i.i.i.i.i: ; preds = %.body.i.i46.i.i.i
  %i.kf = mul i64 %.sroa.5.0.i.i35.i.i.i, 24
  %i.kg = icmp slt i64 %.sroa.5.0.i.i35.i.i.i, 768614336404564650
  call void @llvm.assume(i1 %i.kg), !noalias !32761
  %i.kh = and i64 %i.kf, -16                      ; 2 uses
  %i.ki = add i64 %i.kh, 32                       ; 2 uses
  %i.kj = add nsw i64 %.sroa.5.0.i.i35.i.i.i, 17
  %i.kk = add i64 %i.kj, %i.ki                    ; 3 uses
  %i.kl = icmp uge i64 %i.kk, %i.ki
  %i.km = icmp ult i64 %i.kk, 9223372036854775793
  call void @llvm.assume(i1 %i.kl), !noalias !32761
  call void @llvm.assume(i1 %i.km), !noalias !32761
  %i.kn = icmp eq i64 %i.kk, 0
  br i1 %i.kn, label %.body55.i.i.i, label %bb.bg

end_hunk_1
begin_hunk_2_@"_ZN82_$LT$tokio..sync..mpsc..chan..Rx$LT$T$C$S$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop28_$u7b$$u7b$closure$u7d$$u7d$18Guard$LT$T$C$S$GT$5drain17hda97621f98da7512E":bb.a
  invoke void @"_ZN94_$LT$tokio..sync..mpsc..unbounded..Semaphore$u20$as$u20$tokio..sync..mpsc..chan..Semaphore$GT$10add_permit17h97c7a284914c88dbE"(ptr noundef nonnull align 8 %i.h)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17hac547a38416d862aE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #44
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  call fastcc void @"_ZN4core3ptr122drop_in_place$LT$core..option..Option$LT$tokio..sync..mpsc..block..Read$LT$actix_server..server..ServerCommand$GT$$GT$$GT$17hac547a38416d862aE"(ptr noalias noundef align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.p:                                             ; preds = %bb.n
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45
  unreachable

bb.q:                                             ; preds = %bb.n
  resume { ptr, i32 } %i.bl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$tokio_rustls..common..SyncWriteAdapter$LT$T$GT$$u20$as$u20$std..io..Write$GT$14write_vectored17h11c1fbb7b32d197fE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !148, !noundef !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !27, !align !148, !noundef !27
  %i.b = tail call { i64, ptr } @"_ZN89_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$19poll_write_vectored17h5ccb24d75bd1f638E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 2                      ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.b, 1
  %.sroa.3.0.i = select i1 %i.d, ptr inttoptr (i64 55834574851 to ptr), ptr %i.e
  %.sroa.0.0.i = select i1 %i.d, i64 1, i64 %i.c
  %i.f = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, ptr } %i.f, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @"_ZN82_$LT$tokio_rustls..common..SyncWriteAdapter$LT$T$GT$$u20$as$u20$std..io..Write$GT$5flush17h1e808610142c8520E"(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @"_ZN82_$LT$tokio_rustls..common..SyncWriteAdapter$LT$T$GT$$u20$as$u20$std..io..Write$GT$5write17he2ca13c839c01f10E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !27, !align !148, !noundef !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !27, !align !148, !noundef !27
  %i.b = tail call { i64, ptr } @"_ZN89_$LT$tokio..net..tcp..stream..TcpStream$u20$as$u20$tokio..io..async_write..AsyncWrite$GT$10poll_write17h1c6dbcc0d5e579a4E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.b, 0        ; 2 uses
  %i.d = icmp eq i64 %i.c, 2                      ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.b, 1
  %.sroa.3.0.i = select i1 %i.d, ptr inttoptr (i64 55834574851 to ptr), ptr %i.e
  %.sroa.0.0.i = select i1 %i.d, i64 1, i64 %i.c
  %i.f = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.g = insertvalue { i64, ptr } %i.f, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN82_$LT$tracing_core..metadata..ParseLevelFilterError$u20$as$u20$core..fmt..Debug$GT$3fmt17h7900cb0e3d35399eE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2110, i64 noundef 21, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1457)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h2205a733feaf4ac1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !nonnull !27, !align !148, !noundef !27
  tail call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.d = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.g = icmp ult i64 %i.f, 6
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp samesign ugt i64 %i.f, 4
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !27, !align !206, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !27
  store i64 5, ptr %i.b, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %.sroa.7.0..sroa_idx, align 8
  %i.n = tail call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !27, !nonnull !27
  %i.s = call noundef zeroext i1 %i.r(ptr noundef align 1 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br i1 %i.s, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.i, ptr noundef nonnull align 1 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll28_$u7b$$u7b$closure$u7d$$u7d$17h7654c418e5cc800fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !nonnull !27, !align !148, !noundef !27
  tail call void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.d = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.g = icmp ult i64 %i.f, 6
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp samesign ugt i64 %i.f, 4
  br i1 %i.h, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @"_ZN83_$LT$h2..server..Handshake$LT$T$C$B$GT$$u20$as$u20$core..future..future..Future$GT$4poll10__CALLSITE17h0ae75733b897a671E", align 8, !nonnull !27, !align !148, !noundef !27 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !27, !align !206, !noundef !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !noundef !27
  store i64 5, ptr %i.b, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %.sroa.7.0..sroa_idx, align 8
  %i.n = tail call { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE() ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !27, !nonnull !27
  %i.s = call noundef zeroext i1 %i.r(ptr noundef align 1 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  br i1 %i.s, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.i, ptr noundef nonnull align 1 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha7693f0d2f1ddae7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.520.i.i.i = alloca [23 x i8], align 1    ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40249)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !40249, !noalias !40252, !noundef !27 ; 6 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false), !noalias !40249
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h652c4f2c5b658a6fE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40254
  %i.i = add i64 %i.g, 1                          ; 3 uses
  %i.j = icmp ugt i64 %i.i, 576460752303423487
  br i1 %i.j, label %bb.e, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.k = shl nuw i64 %i.i, 5                      ; 3 uses
  %i.l = add nsw i64 %i.g, 17                     ; 2 uses
  %i.m = add i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = icmp ugt i64 %i.m, 9223372036854775792
  %or.cond.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i, label %bb.e, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", !prof !3798

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !40255
  %i.p = tail call noundef ptr @mi_malloc_aligned(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 16) #38, !noalias !40255 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true), !noalias !40255
  br label %bb.g

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %i.s = tail call { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.m), !noalias !40255
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i.i = phi { i64, i64 } [ %i.s, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i = extractvalue { i64, i64 } %.pn.i.i, 1
  %.pre.i = add i64 %.sroa.7.0.ph.i.i, 17
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h0c2288a011ac5055E.exit.i"

bb.h:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.k
  %i.u = icmp ult i64 %i.g, 8
  %i.v = lshr i64 %i.i, 3
  %i.w = mul nuw nsw i64 %i.v, 7
  %.sroa.02.0.i.i.i = select i1 %i.u, i64 %i.g, i64 %i.w
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h0c2288a011ac5055E.exit.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h0c2288a011ac5055E.exit.i": ; preds = %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.g ], [ %i.l, %bb.h ]
  %.sroa.7.0.i = phi i64 [ %.sroa.12.0.ph.i.i, %bb.g ], [ %.sroa.02.0.i.i.i, %bb.h ]
  %.sroa.5.0.i = phi i64 [ %.sroa.7.0.ph.i.i, %bb.g ], [ %i.g, %bb.h ]
  %.sroa.0.0.i = phi ptr [ null, %bb.g ], [ %i.t, %bb.h ] ; 3 uses
  store ptr %.sroa.0.0.i, ptr %i.b, align 8, !noalias !40254
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !40254
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !40254
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !40254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40268)
  %i.x = load ptr, ptr %1, align 8, !alias.scope !40270, !noalias !40271, !nonnull !27, !noundef !27 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i, ptr nonnull align 1 %i.x, i64 %.pre-phi.i, i1 false), !noalias !40272
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !40270, !noalias !40271, !noundef !27 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h0c2288a011ac5055E.exit.i"
  %.val13.i.i.i.i = load <16 x i8>, ptr %i.x, align 16, !noalias !40273
  %i.ab = icmp sgt <16 x i8> %.val13.i.i.i.i, splat (i8 -1)
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.af = ptrtoint ptr %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr301drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h6328ddd4f19a7239E"(i64 %.sroa.015.032.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #44
          to label %.body.i unwind label %bb.m, !noalias !40276

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.sroa.015.032.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bh, %bb.l ]
  %.sroa.016.031.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.016.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.6.030.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.817.029.i.i.i = phi i16 [ %i.ac, %.lr.ph.i.i.i ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.1018.028.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %i.as, %bb.l ]
  %.not13.i.i.i.i = icmp eq i16 %.sroa.817.029.i.i.i, 0
  br i1 %.not13.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ah = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.sroa.6.030.i.i.i, %bb.j ] ; 2 uses
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.016.031.i.i.i, %bb.j ]
  %.val911.i.i.i.i = load <16 x i8>, ptr %i.ah, align 16, !noalias !40277
  %i.aj = icmp sgt <16 x i8> %.val911.i.i.i.i, splat (i8 -1)
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -512 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.aj to i16 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.j
  %.sroa.6.1.i.i.i = phi ptr [ %.sroa.6.030.i.i.i, %bb.j ], [ %i.al, %.lr.ph.i.i.i.i ]
  %.sroa.016.1.i.i.i = phi ptr [ %.sroa.016.031.i.i.i, %bb.j ], [ %i.ak, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.817.029.i.i.i, %bb.j ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.am = add i16 %.lcssa.i.i.i.i, -1
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = and i16 %i.am, %.lcssa.i.i.i.i
  %i.aq = sub nsw i64 0, %i.ao
  %i.ar = getelementptr inbounds [32 x i8], ptr %.sroa.016.1.i.i.i, i64 %i.aq ; 5 uses
  %i.as = add i64 %.sroa.1018.028.i.i.i, -1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.520.i.i.i)
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40280
  %i.au = load ptr, ptr %i.at, align 8, !noalias !40283, !noundef !27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !noalias !40283, !nonnull !27, !noundef !27
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.ax = getelementptr inbounds i8, ptr %i.ar, i64 -24
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !40283, !noundef !27
  %i.az = getelementptr inbounds i8, ptr %i.ar, i64 -16
  %i.ba = load i64, ptr %i.az, align 8, !noalias !40283, !noundef !27
  invoke void %i.av(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.aw, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %.noexc.i.i.i unwind label %bb.i, !noalias !40272, !inline_history !40286

.noexc.i.i.i:                                     ; preds = %bb.k
  %.sroa.07.0.copyload.i.i.i.i.i = load ptr, ptr %i.a, align 8, !noalias !40283
  br label %bb.l

bb.l:                                             ; preds = %.noexc.i.i.i, %.loopexit.i.i.i
  %.sink.i.i.i.i = phi ptr [ %i.a, %.noexc.i.i.i ], [ %i.at, %.loopexit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i.i.i.i, %.noexc.i.i.i ], [ null, %.loopexit.i.i.i ]
  %.sroa.48.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i.i.i, i64 8
  %.sroa.48.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.48.0..sroa_idx.i.i.i.i.i, align 8, !noalias !40283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.520.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %i.ae, i64 23, i1 false), !noalias !40272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40280
  %i.bb = ptrtoint ptr %i.ar to i64
  %i.bc = sub i64 %i.af, %i.bb
  %i.bd = ashr exact i64 %i.bc, 5                 ; 2 uses
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -32
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %i.bg, align 8, !noalias !40272
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.bf, i64 -24
  store i8 %.sroa.48.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !40272
  %.sroa.520.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.bf, i64 -23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.520.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.520.i.i.i, i64 23, i1 false), !noalias !40272
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520.i.i.i)
  %i.bh = add nsw i64 %i.bd, 1
  %i.bi = icmp eq i64 %i.as, 0
  br i1 %i.bi, label %.loopexit.i, label %bb.j

bb.m:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !40272
  unreachable

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @"_ZN4core3ptr102drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$$LP$$RP$$RP$$GT$$GT$17h9820eef315d924a8E"(ptr noalias noundef align 8 dereferenceable(32) %i.b) #44
          to label %bb.o unwind label %bb.n, !noalias !40254

.loopexit.i:                                      ; preds = %bb.l, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17h0c2288a011ac5055E.exit.i"
  store i64 %i.z, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !40287, !noalias !40276
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !40270, !noalias !40271, !noundef !27
  store i64 %i.bl, ptr %.sroa.52.0..sroa_idx.i, align 8, !alias.scope !40287, !noalias !40276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !40249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40254
  br label %"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h652c4f2c5b658a6fE.exit"

bb.n:                                             ; preds = %.body.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #45, !noalias !40254
  unreachable

bb.o:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.ag

"_ZN76_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h652c4f2c5b658a6fE.exit": ; preds = %bb.b, %.loopexit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x i64> %i.e, ptr %i.bn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN85_$LT$std..io..buffered..linewriter..LineWriter$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h432a855af1aeb3fbE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = tail call { i64, i64 } @_ZN4core5slice6memchr7memrchr17h0c3e43ac4b055a3eE(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.b, 1
  %i.f = add i64 %i.e, 1                          ; 8 uses
  %.not23.i = icmp ugt i64 %i.f, %2
  br i1 %.not23.i, label %bb.g, label %bb.h, !prof !29

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !40288, !noundef !27 ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.thread.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !40288, !nonnull !27, !noundef !27
  %i.k = getelementptr i8, ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !noundef !27
  %i.n = icmp eq i8 %i.m, 10
  br i1 %i.n, label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.i", label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.thread.i"

"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.i": ; preds = %bb.d
  %i.o = tail call fastcc noundef ptr @"_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$9flush_buf17h46a828ed9086e951E"(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit._ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.thread_crit_edge.i", label %"_ZN93_$LT$std..io..buffered..linewritershim..LineWriterShim$LT$W$GT$$u20$as$u20$std..io..Write$GT$9write_all17h481b5a4b801d14e6E.exit"

"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit._ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.thread_crit_edge.i": ; preds = %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.i"
  %.pre.i = load i64, ptr %i.g, align 8, !noalias !40288
  br label %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.thread.i"

"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.thread.i": ; preds = %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit._ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.thread_crit_edge.i", %bb.d, %bb.c
  %i.p = phi i64 [ %.pre.i, %"_ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit._ZN3std2io8buffered14linewritershim23LineWriterShim$LT$W$GT$23flush_if_completed_line17h93077345572cb2d1E.exit.thread_crit_edge.i" ], [ %i.h, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.q = load i64, ptr %0, align 8, !range !28, !noalias !40288, !noundef !27
  %i.r = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = sub nsw i64 %i.q, %i.p
end_hunk_2
